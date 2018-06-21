.class final Lcom/android/server/am/ActivityManagerServiceInjector$MiuiActivityController$H;
.super Landroid/os/Handler;
.source "ActivityManagerServiceInjector.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/am/ActivityManagerServiceInjector$MiuiActivityController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "H"
.end annotation


# static fields
.field static final ACTIVITY_DESTROYED:I = 0x5

.field static final ACTIVITY_IDLE:I = 0x1

.field static final ACTIVITY_PAUSED:I = 0x3

.field static final ACTIVITY_RESUMED:I = 0x2

.field static final ACTIVITY_STOPPED:I = 0x4


# instance fields
.field final synthetic this$1:Lcom/android/server/am/ActivityManagerServiceInjector$MiuiActivityController;


# direct methods
.method public constructor <init>(Lcom/android/server/am/ActivityManagerServiceInjector$MiuiActivityController;Landroid/os/Looper;)V
    .locals 2
    .param p1, "this$1"    # Lcom/android/server/am/ActivityManagerServiceInjector$MiuiActivityController;
    .param p2, "looper"    # Landroid/os/Looper;

    .prologue
    .line 523
    iput-object p1, p0, Lcom/android/server/am/ActivityManagerServiceInjector$MiuiActivityController$H;->this$1:Lcom/android/server/am/ActivityManagerServiceInjector$MiuiActivityController;

    .line 524
    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-direct {p0, p2, v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;Z)V

    .line 523
    return-void
.end method

.method private canDispatchNow(Lcom/android/server/am/ActivityRecord;Landroid/content/Intent;)Z
    .locals 12
    .param p1, "record"    # Lcom/android/server/am/ActivityRecord;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v11, 0x0

    const/4 v10, 0x1

    .line 589
    if-eqz p1, :cond_c

    if-eqz p2, :cond_c

    .line 590
    const-string/jumbo v7, "packages"

    invoke-virtual {p2, v7}, Landroid/content/Intent;->getStringArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v5

    .line 591
    .local v5, "packages":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    const-string/jumbo v7, "activities"

    invoke-virtual {p2, v7}, Landroid/content/Intent;->getParcelableArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    .line 592
    .local v0, "activities":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/ComponentName;>;"
    if-eqz v5, :cond_0

    invoke-virtual {v5}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v7

    if-eqz v7, :cond_3

    :cond_0
    const/4 v4, 0x0

    .line 593
    .local v4, "needFilterPackage":Z
    :goto_0
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v7

    if-eqz v7, :cond_4

    :cond_1
    const/4 v3, 0x0

    .line 594
    .local v3, "needFilterActivity":Z
    :goto_1
    if-nez v4, :cond_2

    if-eqz v3, :cond_5

    .line 597
    :cond_2
    if-eqz v4, :cond_8

    .line 598
    iget-object v7, p1, Lcom/android/server/am/ActivityRecord;->packageName:Ljava/lang/String;

    invoke-virtual {v5, v7}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_6

    .line 599
    return v10

    .line 592
    .end local v3    # "needFilterActivity":Z
    .end local v4    # "needFilterPackage":Z
    :cond_3
    const/4 v4, 0x1

    .restart local v4    # "needFilterPackage":Z
    goto :goto_0

    .line 593
    :cond_4
    const/4 v3, 0x1

    .restart local v3    # "needFilterActivity":Z
    goto :goto_1

    .line 595
    :cond_5
    return v10

    .line 601
    :cond_6
    const-string/jumbo v7, "MiuiLog-ActivityObserver:"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "The package "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p1, Lcom/android/server/am/ActivityRecord;->packageName:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, " is not matched"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/android/server/am/ActivityManagerServiceInjector$MiuiActivityController;->logMessage(Ljava/lang/String;Ljava/lang/String;)V

    .line 606
    :goto_2
    if-eqz v3, :cond_b

    .line 607
    iget-object v6, p1, Lcom/android/server/am/ActivityRecord;->realActivity:Landroid/content/ComponentName;

    .line 608
    .local v6, "realActivity":Landroid/content/ComponentName;
    if-eqz v6, :cond_a

    .line 609
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "activity$iterator":Ljava/util/Iterator;
    :cond_7
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_9

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/ComponentName;

    .line 610
    .local v1, "activity":Landroid/content/ComponentName;
    invoke-virtual {v6, v1}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_7

    .line 611
    return v10

    .line 604
    .end local v1    # "activity":Landroid/content/ComponentName;
    .end local v2    # "activity$iterator":Ljava/util/Iterator;
    .end local v6    # "realActivity":Landroid/content/ComponentName;
    :cond_8
    const-string/jumbo v7, "MiuiLog-ActivityObserver:"

    const-string/jumbo v8, "Don\'t need to check package"

    invoke-static {v7, v8}, Lcom/android/server/am/ActivityManagerServiceInjector$MiuiActivityController;->logMessage(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    .line 614
    .restart local v2    # "activity$iterator":Ljava/util/Iterator;
    .restart local v6    # "realActivity":Landroid/content/ComponentName;
    :cond_9
    const-string/jumbo v7, "MiuiLog-ActivityObserver:"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "The activity "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, " is not matched"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/android/server/am/ActivityManagerServiceInjector$MiuiActivityController;->logMessage(Ljava/lang/String;Ljava/lang/String;)V

    .line 622
    .end local v2    # "activity$iterator":Ljava/util/Iterator;
    .end local v6    # "realActivity":Landroid/content/ComponentName;
    :goto_3
    return v11

    .line 617
    .restart local v6    # "realActivity":Landroid/content/ComponentName;
    :cond_a
    const-string/jumbo v7, "MiuiLog-ActivityObserver:"

    const-string/jumbo v8, "The realActivity is null"

    invoke-static {v7, v8}, Lcom/android/server/am/ActivityManagerServiceInjector$MiuiActivityController;->logMessage(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3

    .line 620
    .end local v6    # "realActivity":Landroid/content/ComponentName;
    :cond_b
    const-string/jumbo v7, "MiuiLog-ActivityObserver:"

    const-string/jumbo v8, "Don\'t need to check activity"

    invoke-static {v7, v8}, Lcom/android/server/am/ActivityManagerServiceInjector$MiuiActivityController;->logMessage(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3

    .line 626
    .end local v0    # "activities":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/ComponentName;>;"
    .end local v3    # "needFilterActivity":Z
    .end local v4    # "needFilterPackage":Z
    .end local v5    # "packages":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :cond_c
    const-string/jumbo v7, "MiuiLog-ActivityObserver:"

    const-string/jumbo v8, "Record or intent is null"

    invoke-static {v7, v8}, Lcom/android/server/am/ActivityManagerServiceInjector$MiuiActivityController;->logMessage(Ljava/lang/String;Ljava/lang/String;)V

    .line 627
    return v11
.end method

.method private dispatchEvent(ILandroid/app/IMiuiActivityObserver;Lcom/android/server/am/ActivityRecord;)V
    .locals 2
    .param p1, "event"    # I
    .param p2, "observer"    # Landroid/app/IMiuiActivityObserver;
    .param p3, "record"    # Lcom/android/server/am/ActivityRecord;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 632
    iget-object v1, p0, Lcom/android/server/am/ActivityManagerServiceInjector$MiuiActivityController$H;->this$1:Lcom/android/server/am/ActivityManagerServiceInjector$MiuiActivityController;

    invoke-static {v1}, Lcom/android/server/am/ActivityManagerServiceInjector$MiuiActivityController;->-get2(Lcom/android/server/am/ActivityManagerServiceInjector$MiuiActivityController;)Landroid/content/Intent;

    move-result-object v0

    .line 633
    .local v0, "intent":Landroid/content/Intent;
    iget-object v1, p3, Lcom/android/server/am/ActivityRecord;->realActivity:Landroid/content/ComponentName;

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 634
    packed-switch p1, :pswitch_data_0

    .line 631
    :goto_0
    return-void

    .line 636
    :pswitch_0
    invoke-interface {p2, v0}, Landroid/app/IMiuiActivityObserver;->activityIdle(Landroid/content/Intent;)V

    goto :goto_0

    .line 639
    :pswitch_1
    invoke-interface {p2, v0}, Landroid/app/IMiuiActivityObserver;->activityResumed(Landroid/content/Intent;)V

    goto :goto_0

    .line 642
    :pswitch_2
    invoke-interface {p2, v0}, Landroid/app/IMiuiActivityObserver;->activityPaused(Landroid/content/Intent;)V

    goto :goto_0

    .line 645
    :pswitch_3
    invoke-interface {p2, v0}, Landroid/app/IMiuiActivityObserver;->activityStopped(Landroid/content/Intent;)V

    goto :goto_0

    .line 648
    :pswitch_4
    invoke-interface {p2, v0}, Landroid/app/IMiuiActivityObserver;->activityDestroyed(Landroid/content/Intent;)V

    goto :goto_0

    .line 634
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method


# virtual methods
.method codeToString(I)Ljava/lang/String;
    .locals 1
    .param p1, "code"    # I

    .prologue
    .line 528
    invoke-static {}, Lcom/android/server/am/ActivityManagerServiceInjector$MiuiActivityController;->-get0()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 529
    packed-switch p1, :pswitch_data_0

    .line 537
    :cond_0
    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 530
    :pswitch_0
    const-string/jumbo v0, "ACTIVITY_IDLE"

    return-object v0

    .line 531
    :pswitch_1
    const-string/jumbo v0, "ACTIVITY_RESUMED"

    return-object v0

    .line 532
    :pswitch_2
    const-string/jumbo v0, "ACTIVITY_PAUSED"

    return-object v0

    .line 533
    :pswitch_3
    const-string/jumbo v0, "ACTIVITY_STOPPED"

    return-object v0

    .line 534
    :pswitch_4
    const-string/jumbo v0, "ACTIVITY_DESTROYED"

    return-object v0

    .line 529
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method public handleMessage(Landroid/os/Message;)V
    .locals 11
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 542
    iget v6, p1, Landroid/os/Message;->what:I

    .line 543
    .local v6, "what":I
    packed-switch v6, :pswitch_data_0

    .line 541
    :cond_0
    :goto_0
    return-void

    .line 549
    :pswitch_0
    iget-object v7, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    if-eqz v7, :cond_0

    iget-object v7, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    instance-of v7, v7, Lcom/android/server/am/ActivityRecord;

    if-eqz v7, :cond_0

    .line 550
    iget-object v8, p0, Lcom/android/server/am/ActivityManagerServiceInjector$MiuiActivityController$H;->this$1:Lcom/android/server/am/ActivityManagerServiceInjector$MiuiActivityController;

    monitor-enter v8

    .line 551
    :try_start_0
    iget-object v7, p0, Lcom/android/server/am/ActivityManagerServiceInjector$MiuiActivityController$H;->this$1:Lcom/android/server/am/ActivityManagerServiceInjector$MiuiActivityController;

    invoke-static {v7}, Lcom/android/server/am/ActivityManagerServiceInjector$MiuiActivityController;->-get1(Lcom/android/server/am/ActivityManagerServiceInjector$MiuiActivityController;)Landroid/os/RemoteCallbackList;

    move-result-object v7

    invoke-virtual {v7}, Landroid/os/RemoteCallbackList;->beginBroadcast()I

    move-result v3

    .line 552
    .local v3, "i":I
    :cond_1
    :goto_1
    if-lez v3, :cond_4

    .line 553
    add-int/lit8 v3, v3, -0x1

    .line 554
    iget-object v7, p0, Lcom/android/server/am/ActivityManagerServiceInjector$MiuiActivityController$H;->this$1:Lcom/android/server/am/ActivityManagerServiceInjector$MiuiActivityController;

    invoke-static {v7}, Lcom/android/server/am/ActivityManagerServiceInjector$MiuiActivityController;->-get1(Lcom/android/server/am/ActivityManagerServiceInjector$MiuiActivityController;)Landroid/os/RemoteCallbackList;

    move-result-object v7

    invoke-virtual {v7, v3}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v4

    check-cast v4, Landroid/app/IMiuiActivityObserver;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 555
    .local v4, "observer":Landroid/app/IMiuiActivityObserver;
    if-eqz v4, :cond_1

    .line 557
    :try_start_1
    iget-object v5, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v5, Lcom/android/server/am/ActivityRecord;

    .line 558
    .local v5, "record":Lcom/android/server/am/ActivityRecord;
    iget-object v7, p0, Lcom/android/server/am/ActivityManagerServiceInjector$MiuiActivityController$H;->this$1:Lcom/android/server/am/ActivityManagerServiceInjector$MiuiActivityController;

    invoke-static {v7}, Lcom/android/server/am/ActivityManagerServiceInjector$MiuiActivityController;->-get1(Lcom/android/server/am/ActivityManagerServiceInjector$MiuiActivityController;)Landroid/os/RemoteCallbackList;

    move-result-object v7

    invoke-virtual {v7, v3}, Landroid/os/RemoteCallbackList;->getBroadcastCookie(I)Ljava/lang/Object;

    move-result-object v0

    .line 559
    .local v0, "cookie":Ljava/lang/Object;
    if-eqz v0, :cond_3

    instance-of v7, v0, Landroid/content/Intent;

    if-eqz v7, :cond_3

    .line 560
    check-cast v0, Landroid/content/Intent;

    .end local v0    # "cookie":Ljava/lang/Object;
    invoke-direct {p0, v5, v0}, Lcom/android/server/am/ActivityManagerServiceInjector$MiuiActivityController$H;->canDispatchNow(Lcom/android/server/am/ActivityRecord;Landroid/content/Intent;)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 561
    invoke-direct {p0, v6, v4, v5}, Lcom/android/server/am/ActivityManagerServiceInjector$MiuiActivityController$H;->dispatchEvent(ILandroid/app/IMiuiActivityObserver;Lcom/android/server/am/ActivityRecord;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 569
    .end local v5    # "record":Lcom/android/server/am/ActivityRecord;
    :catch_0
    move-exception v1

    .line 570
    .local v1, "e":Landroid/os/RemoteException;
    :try_start_2
    const-string/jumbo v7, "MiuiActivityController"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "MiuiLog-ActivityObserver: There was something wrong : "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v1}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v7, v9}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1

    .line 550
    .end local v1    # "e":Landroid/os/RemoteException;
    .end local v3    # "i":I
    .end local v4    # "observer":Landroid/app/IMiuiActivityObserver;
    :catchall_0
    move-exception v7

    monitor-exit v8

    throw v7

    .line 563
    .restart local v3    # "i":I
    .restart local v4    # "observer":Landroid/app/IMiuiActivityObserver;
    .restart local v5    # "record":Lcom/android/server/am/ActivityRecord;
    :cond_2
    :try_start_3
    const-string/jumbo v7, "MiuiLog-ActivityObserver:"

    const-string/jumbo v9, " No need to dispatch the event, ignore it!"

    invoke-static {v7, v9}, Lcom/android/server/am/ActivityManagerServiceInjector$MiuiActivityController;->logMessage(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_1

    .line 571
    .end local v5    # "record":Lcom/android/server/am/ActivityRecord;
    :catch_1
    move-exception v2

    .line 572
    .local v2, "e":Ljava/lang/Exception;
    :try_start_4
    const-string/jumbo v7, "MiuiActivityController"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "MiuiLog-ActivityObserver: There was something wrong : "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v7, v9}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_1

    .line 567
    .end local v2    # "e":Ljava/lang/Exception;
    .restart local v0    # "cookie":Ljava/lang/Object;
    .restart local v5    # "record":Lcom/android/server/am/ActivityRecord;
    :cond_3
    :try_start_5
    invoke-direct {p0, v6, v4, v5}, Lcom/android/server/am/ActivityManagerServiceInjector$MiuiActivityController$H;->dispatchEvent(ILandroid/app/IMiuiActivityObserver;Lcom/android/server/am/ActivityRecord;)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_5} :catch_0
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_1
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto/16 :goto_1

    .line 576
    .end local v0    # "cookie":Ljava/lang/Object;
    .end local v4    # "observer":Landroid/app/IMiuiActivityObserver;
    .end local v5    # "record":Lcom/android/server/am/ActivityRecord;
    :cond_4
    :try_start_6
    iget-object v7, p0, Lcom/android/server/am/ActivityManagerServiceInjector$MiuiActivityController$H;->this$1:Lcom/android/server/am/ActivityManagerServiceInjector$MiuiActivityController;

    invoke-static {v7}, Lcom/android/server/am/ActivityManagerServiceInjector$MiuiActivityController;->-get1(Lcom/android/server/am/ActivityManagerServiceInjector$MiuiActivityController;)Landroid/os/RemoteCallbackList;

    move-result-object v7

    invoke-virtual {v7}, Landroid/os/RemoteCallbackList;->finishBroadcast()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    monitor-exit v8

    goto/16 :goto_0

    .line 543
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method
