.class Lcom/android/server/job/JobServiceContext$JobServiceHandler;
.super Landroid/os/Handler;
.source "JobServiceContext.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/job/JobServiceContext;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "JobServiceHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/job/JobServiceContext;


# direct methods
.method constructor <init>(Lcom/android/server/job/JobServiceContext;Landroid/os/Looper;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/job/JobServiceContext;
    .param p2, "looper"    # Landroid/os/Looper;

    .prologue
    .line 373
    iput-object p1, p0, Lcom/android/server/job/JobServiceContext$JobServiceHandler;->this$0:Lcom/android/server/job/JobServiceContext;

    .line 374
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 373
    return-void
.end method

.method private closeAndCleanupJobH(Z)V
    .locals 8
    .param p1, "reschedule"    # Z

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x4

    .line 611
    iget-object v2, p0, Lcom/android/server/job/JobServiceContext$JobServiceHandler;->this$0:Lcom/android/server/job/JobServiceContext;

    invoke-static {v2}, Lcom/android/server/job/JobServiceContext;->-get6(Lcom/android/server/job/JobServiceContext;)Ljava/lang/Object;

    move-result-object v3

    monitor-enter v3

    .line 612
    :try_start_0
    iget-object v2, p0, Lcom/android/server/job/JobServiceContext$JobServiceHandler;->this$0:Lcom/android/server/job/JobServiceContext;

    iget v2, v2, Lcom/android/server/job/JobServiceContext;->mVerb:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-ne v2, v6, :cond_0

    monitor-exit v3

    .line 613
    return-void

    .line 615
    :cond_0
    :try_start_1
    iget-object v2, p0, Lcom/android/server/job/JobServiceContext$JobServiceHandler;->this$0:Lcom/android/server/job/JobServiceContext;

    invoke-static {v2}, Lcom/android/server/job/JobServiceContext;->-get8(Lcom/android/server/job/JobServiceContext;)Lcom/android/server/job/controllers/JobStatus;

    move-result-object v0

    .line 616
    .local v0, "completedJob":Lcom/android/server/job/controllers/JobStatus;
    iget-object v2, p0, Lcom/android/server/job/JobServiceContext$JobServiceHandler;->this$0:Lcom/android/server/job/JobServiceContext;

    invoke-static {v2}, Lcom/android/server/job/JobServiceContext;->-get5(Lcom/android/server/job/JobServiceContext;)Lcom/android/server/job/JobPackageTracker;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/android/server/job/JobPackageTracker;->noteInactive(Lcom/android/server/job/controllers/JobStatus;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 618
    :try_start_2
    iget-object v2, p0, Lcom/android/server/job/JobServiceContext$JobServiceHandler;->this$0:Lcom/android/server/job/JobServiceContext;

    invoke-static {v2}, Lcom/android/server/job/JobServiceContext;->-get1(Lcom/android/server/job/JobServiceContext;)Lcom/android/internal/app/IBatteryStats;

    move-result-object v2

    iget-object v4, p0, Lcom/android/server/job/JobServiceContext$JobServiceHandler;->this$0:Lcom/android/server/job/JobServiceContext;

    invoke-static {v4}, Lcom/android/server/job/JobServiceContext;->-get8(Lcom/android/server/job/JobServiceContext;)Lcom/android/server/job/controllers/JobStatus;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/server/job/controllers/JobStatus;->getBatteryName()Ljava/lang/String;

    move-result-object v4

    .line 619
    iget-object v5, p0, Lcom/android/server/job/JobServiceContext$JobServiceHandler;->this$0:Lcom/android/server/job/JobServiceContext;

    invoke-static {v5}, Lcom/android/server/job/JobServiceContext;->-get8(Lcom/android/server/job/JobServiceContext;)Lcom/android/server/job/controllers/JobStatus;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/server/job/controllers/JobStatus;->getSourceUid()I

    move-result v5

    .line 618
    invoke-interface {v2, v4, v5}, Lcom/android/internal/app/IBatteryStats;->noteJobFinish(Ljava/lang/String;I)V
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 623
    :goto_0
    :try_start_3
    iget-object v2, p0, Lcom/android/server/job/JobServiceContext$JobServiceHandler;->this$0:Lcom/android/server/job/JobServiceContext;

    invoke-static {v2}, Lcom/android/server/job/JobServiceContext;->-get9(Lcom/android/server/job/JobServiceContext;)Landroid/os/PowerManager$WakeLock;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 624
    iget-object v2, p0, Lcom/android/server/job/JobServiceContext$JobServiceHandler;->this$0:Lcom/android/server/job/JobServiceContext;

    invoke-static {v2}, Lcom/android/server/job/JobServiceContext;->-get9(Lcom/android/server/job/JobServiceContext;)Landroid/os/PowerManager$WakeLock;

    move-result-object v2

    invoke-virtual {v2}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 626
    :cond_1
    iget-object v2, p0, Lcom/android/server/job/JobServiceContext$JobServiceHandler;->this$0:Lcom/android/server/job/JobServiceContext;

    invoke-static {v2}, Lcom/android/server/job/JobServiceContext;->-get4(Lcom/android/server/job/JobServiceContext;)Landroid/content/Context;

    move-result-object v2

    iget-object v4, p0, Lcom/android/server/job/JobServiceContext$JobServiceHandler;->this$0:Lcom/android/server/job/JobServiceContext;

    invoke-virtual {v2, v4}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    .line 627
    iget-object v2, p0, Lcom/android/server/job/JobServiceContext$JobServiceHandler;->this$0:Lcom/android/server/job/JobServiceContext;

    const/4 v4, 0x0

    invoke-static {v2, v4}, Lcom/android/server/job/JobServiceContext;->-set4(Lcom/android/server/job/JobServiceContext;Landroid/os/PowerManager$WakeLock;)Landroid/os/PowerManager$WakeLock;

    .line 628
    iget-object v2, p0, Lcom/android/server/job/JobServiceContext$JobServiceHandler;->this$0:Lcom/android/server/job/JobServiceContext;

    const/4 v4, 0x0

    invoke-static {v2, v4}, Lcom/android/server/job/JobServiceContext;->-set3(Lcom/android/server/job/JobServiceContext;Lcom/android/server/job/controllers/JobStatus;)Lcom/android/server/job/controllers/JobStatus;

    .line 629
    iget-object v2, p0, Lcom/android/server/job/JobServiceContext$JobServiceHandler;->this$0:Lcom/android/server/job/JobServiceContext;

    const/4 v4, 0x0

    invoke-static {v2, v4}, Lcom/android/server/job/JobServiceContext;->-set1(Lcom/android/server/job/JobServiceContext;Landroid/app/job/JobParameters;)Landroid/app/job/JobParameters;

    .line 630
    iget-object v2, p0, Lcom/android/server/job/JobServiceContext$JobServiceHandler;->this$0:Lcom/android/server/job/JobServiceContext;

    const/4 v4, 0x4

    iput v4, v2, Lcom/android/server/job/JobServiceContext;->mVerb:I

    .line 631
    iget-object v2, p0, Lcom/android/server/job/JobServiceContext$JobServiceHandler;->this$0:Lcom/android/server/job/JobServiceContext;

    invoke-static {v2}, Lcom/android/server/job/JobServiceContext;->-get2(Lcom/android/server/job/JobServiceContext;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v2

    const/4 v4, 0x0

    invoke-virtual {v2, v4}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 632
    iget-object v2, p0, Lcom/android/server/job/JobServiceContext$JobServiceHandler;->this$0:Lcom/android/server/job/JobServiceContext;

    const/4 v4, 0x0

    iput-object v4, v2, Lcom/android/server/job/JobServiceContext;->service:Landroid/app/job/IJobService;

    .line 633
    iget-object v2, p0, Lcom/android/server/job/JobServiceContext$JobServiceHandler;->this$0:Lcom/android/server/job/JobServiceContext;

    const/4 v4, 0x1

    invoke-static {v2, v4}, Lcom/android/server/job/JobServiceContext;->-set0(Lcom/android/server/job/JobServiceContext;Z)Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    monitor-exit v3

    .line 635
    iget-object v2, p0, Lcom/android/server/job/JobServiceContext$JobServiceHandler;->this$0:Lcom/android/server/job/JobServiceContext;

    invoke-static {v2}, Lcom/android/server/job/JobServiceContext;->-wrap0(Lcom/android/server/job/JobServiceContext;)V

    .line 636
    invoke-virtual {p0, v7}, Lcom/android/server/job/JobServiceContext$JobServiceHandler;->removeMessages(I)V

    .line 637
    const/4 v2, 0x2

    invoke-virtual {p0, v2}, Lcom/android/server/job/JobServiceContext$JobServiceHandler;->removeMessages(I)V

    .line 638
    const/4 v2, 0x3

    invoke-virtual {p0, v2}, Lcom/android/server/job/JobServiceContext$JobServiceHandler;->removeMessages(I)V

    .line 639
    invoke-virtual {p0, v6}, Lcom/android/server/job/JobServiceContext$JobServiceHandler;->removeMessages(I)V

    .line 640
    iget-object v2, p0, Lcom/android/server/job/JobServiceContext$JobServiceHandler;->this$0:Lcom/android/server/job/JobServiceContext;

    invoke-static {v2}, Lcom/android/server/job/JobServiceContext;->-get3(Lcom/android/server/job/JobServiceContext;)Lcom/android/server/job/JobCompletedListener;

    move-result-object v2

    invoke-interface {v2, v0, p1}, Lcom/android/server/job/JobCompletedListener;->onJobCompleted(Lcom/android/server/job/controllers/JobStatus;Z)V

    .line 609
    return-void

    .line 611
    .end local v0    # "completedJob":Lcom/android/server/job/controllers/JobStatus;
    :catchall_0
    move-exception v2

    monitor-exit v3

    throw v2

    .line 620
    .restart local v0    # "completedJob":Lcom/android/server/job/controllers/JobStatus;
    :catch_0
    move-exception v1

    .local v1, "e":Landroid/os/RemoteException;
    goto :goto_0
.end method

.method private handleCancelH()V
    .locals 3

    .prologue
    const/4 v1, 0x1

    .line 525
    iget-object v0, p0, Lcom/android/server/job/JobServiceContext$JobServiceHandler;->this$0:Lcom/android/server/job/JobServiceContext;

    iget v0, v0, Lcom/android/server/job/JobServiceContext;->mVerb:I

    packed-switch v0, :pswitch_data_0

    .line 541
    const-string/jumbo v0, "JobServiceContext"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Cancelling a job without a valid verb: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/job/JobServiceContext$JobServiceHandler;->this$0:Lcom/android/server/job/JobServiceContext;

    iget v2, v2, Lcom/android/server/job/JobServiceContext;->mVerb:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 520
    :goto_0
    :pswitch_0
    return-void

    .line 528
    :pswitch_1
    iget-object v0, p0, Lcom/android/server/job/JobServiceContext$JobServiceHandler;->this$0:Lcom/android/server/job/JobServiceContext;

    invoke-static {v0}, Lcom/android/server/job/JobServiceContext;->-get2(Lcom/android/server/job/JobServiceContext;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    goto :goto_0

    .line 531
    :pswitch_2
    invoke-virtual {p0, v1}, Lcom/android/server/job/JobServiceContext$JobServiceHandler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 533
    return-void

    .line 535
    :cond_0
    invoke-direct {p0}, Lcom/android/server/job/JobServiceContext$JobServiceHandler;->sendStopMessageH()V

    goto :goto_0

    .line 525
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_1
        :pswitch_2
        :pswitch_0
    .end packed-switch
.end method

.method private handleFinishedH(Z)V
    .locals 4
    .param p1, "reschedule"    # Z

    .prologue
    .line 499
    iget-object v0, p0, Lcom/android/server/job/JobServiceContext$JobServiceHandler;->this$0:Lcom/android/server/job/JobServiceContext;

    iget v0, v0, Lcom/android/server/job/JobServiceContext;->mVerb:I

    packed-switch v0, :pswitch_data_0

    .line 505
    const-string/jumbo v0, "JobServiceContext"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Got an execution complete message for a job that wasn\'t beingexecuted. Was "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 506
    invoke-static {}, Lcom/android/server/job/JobServiceContext;->-get0()[Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/job/JobServiceContext$JobServiceHandler;->this$0:Lcom/android/server/job/JobServiceContext;

    iget v3, v3, Lcom/android/server/job/JobServiceContext;->mVerb:I

    aget-object v2, v2, v3

    .line 505
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 506
    const-string/jumbo v2, "."

    .line 505
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 498
    :goto_0
    return-void

    .line 502
    :pswitch_0
    invoke-direct {p0, p1}, Lcom/android/server/job/JobServiceContext$JobServiceHandler;->closeAndCleanupJobH(Z)V

    goto :goto_0

    .line 499
    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method private handleOpTimeoutH()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 548
    iget-object v0, p0, Lcom/android/server/job/JobServiceContext$JobServiceHandler;->this$0:Lcom/android/server/job/JobServiceContext;

    iget v0, v0, Lcom/android/server/job/JobServiceContext;->mVerb:I

    packed-switch v0, :pswitch_data_0

    .line 576
    const-string/jumbo v0, "JobServiceContext"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Handling timeout for an invalid job state: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 577
    iget-object v2, p0, Lcom/android/server/job/JobServiceContext$JobServiceHandler;->this$0:Lcom/android/server/job/JobServiceContext;

    invoke-static {v2}, Lcom/android/server/job/JobServiceContext;->-get8(Lcom/android/server/job/JobServiceContext;)Lcom/android/server/job/controllers/JobStatus;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/server/job/controllers/JobStatus;->toShortString()Ljava/lang/String;

    move-result-object v2

    .line 576
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 577
    const-string/jumbo v2, ", dropping."

    .line 576
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 578
    invoke-direct {p0, v3}, Lcom/android/server/job/JobServiceContext$JobServiceHandler;->closeAndCleanupJobH(Z)V

    .line 547
    :goto_0
    return-void

    .line 550
    :pswitch_0
    const-string/jumbo v0, "JobServiceContext"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Time-out while trying to bind "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/job/JobServiceContext$JobServiceHandler;->this$0:Lcom/android/server/job/JobServiceContext;

    invoke-static {v2}, Lcom/android/server/job/JobServiceContext;->-get8(Lcom/android/server/job/JobServiceContext;)Lcom/android/server/job/controllers/JobStatus;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/server/job/controllers/JobStatus;->toShortString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 551
    const-string/jumbo v2, ", dropping."

    .line 550
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 552
    invoke-direct {p0, v3}, Lcom/android/server/job/JobServiceContext$JobServiceHandler;->closeAndCleanupJobH(Z)V

    goto :goto_0

    .line 558
    :pswitch_1
    const-string/jumbo v0, "JobServiceContext"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "No response from client for onStartJob \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 559
    iget-object v2, p0, Lcom/android/server/job/JobServiceContext$JobServiceHandler;->this$0:Lcom/android/server/job/JobServiceContext;

    invoke-static {v2}, Lcom/android/server/job/JobServiceContext;->-get8(Lcom/android/server/job/JobServiceContext;)Lcom/android/server/job/controllers/JobStatus;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/server/job/controllers/JobStatus;->toShortString()Ljava/lang/String;

    move-result-object v2

    .line 558
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 560
    invoke-direct {p0, v3}, Lcom/android/server/job/JobServiceContext$JobServiceHandler;->closeAndCleanupJobH(Z)V

    goto :goto_0

    .line 564
    :pswitch_2
    const-string/jumbo v0, "JobServiceContext"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "No response from client for onStopJob, \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 565
    iget-object v2, p0, Lcom/android/server/job/JobServiceContext$JobServiceHandler;->this$0:Lcom/android/server/job/JobServiceContext;

    invoke-static {v2}, Lcom/android/server/job/JobServiceContext;->-get8(Lcom/android/server/job/JobServiceContext;)Lcom/android/server/job/controllers/JobStatus;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/server/job/controllers/JobStatus;->toShortString()Ljava/lang/String;

    move-result-object v2

    .line 564
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 566
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/server/job/JobServiceContext$JobServiceHandler;->closeAndCleanupJobH(Z)V

    goto :goto_0

    .line 570
    :pswitch_3
    const-string/jumbo v0, "JobServiceContext"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Client timed out while executing (no jobFinished received). sending onStop. "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 571
    iget-object v2, p0, Lcom/android/server/job/JobServiceContext$JobServiceHandler;->this$0:Lcom/android/server/job/JobServiceContext;

    invoke-static {v2}, Lcom/android/server/job/JobServiceContext;->-get8(Lcom/android/server/job/JobServiceContext;)Lcom/android/server/job/controllers/JobStatus;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/server/job/controllers/JobStatus;->toShortString()Ljava/lang/String;

    move-result-object v2

    .line 570
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 572
    iget-object v0, p0, Lcom/android/server/job/JobServiceContext$JobServiceHandler;->this$0:Lcom/android/server/job/JobServiceContext;

    invoke-static {v0}, Lcom/android/server/job/JobServiceContext;->-get7(Lcom/android/server/job/JobServiceContext;)Landroid/app/job/JobParameters;

    move-result-object v0

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/app/job/JobParameters;->setStopReason(I)V

    .line 573
    invoke-direct {p0}, Lcom/android/server/job/JobServiceContext$JobServiceHandler;->sendStopMessageH()V

    goto/16 :goto_0

    .line 548
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_3
        :pswitch_2
    .end packed-switch
.end method

.method private handleServiceBoundH()V
    .locals 6

    .prologue
    const/4 v2, 0x1

    const/4 v5, 0x0

    .line 435
    iget-object v1, p0, Lcom/android/server/job/JobServiceContext$JobServiceHandler;->this$0:Lcom/android/server/job/JobServiceContext;

    iget v1, v1, Lcom/android/server/job/JobServiceContext;->mVerb:I

    if-eqz v1, :cond_0

    .line 436
    const-string/jumbo v1, "JobServiceContext"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Sending onStartJob for a job that isn\'t pending. "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 437
    invoke-static {}, Lcom/android/server/job/JobServiceContext;->-get0()[Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/android/server/job/JobServiceContext$JobServiceHandler;->this$0:Lcom/android/server/job/JobServiceContext;

    iget v4, v4, Lcom/android/server/job/JobServiceContext;->mVerb:I

    aget-object v3, v3, v4

    .line 436
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 438
    invoke-direct {p0, v5}, Lcom/android/server/job/JobServiceContext$JobServiceHandler;->closeAndCleanupJobH(Z)V

    .line 439
    return-void

    .line 441
    :cond_0
    iget-object v1, p0, Lcom/android/server/job/JobServiceContext$JobServiceHandler;->this$0:Lcom/android/server/job/JobServiceContext;

    invoke-static {v1}, Lcom/android/server/job/JobServiceContext;->-get2(Lcom/android/server/job/JobServiceContext;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 446
    invoke-direct {p0, v2}, Lcom/android/server/job/JobServiceContext$JobServiceHandler;->closeAndCleanupJobH(Z)V

    .line 447
    return-void

    .line 450
    :cond_1
    :try_start_0
    iget-object v1, p0, Lcom/android/server/job/JobServiceContext$JobServiceHandler;->this$0:Lcom/android/server/job/JobServiceContext;

    const/4 v2, 0x1

    iput v2, v1, Lcom/android/server/job/JobServiceContext;->mVerb:I

    .line 451
    iget-object v1, p0, Lcom/android/server/job/JobServiceContext$JobServiceHandler;->this$0:Lcom/android/server/job/JobServiceContext;

    invoke-static {v1}, Lcom/android/server/job/JobServiceContext;->-wrap1(Lcom/android/server/job/JobServiceContext;)V

    .line 452
    iget-object v1, p0, Lcom/android/server/job/JobServiceContext$JobServiceHandler;->this$0:Lcom/android/server/job/JobServiceContext;

    iget-object v1, v1, Lcom/android/server/job/JobServiceContext;->service:Landroid/app/job/IJobService;

    iget-object v2, p0, Lcom/android/server/job/JobServiceContext$JobServiceHandler;->this$0:Lcom/android/server/job/JobServiceContext;

    invoke-static {v2}, Lcom/android/server/job/JobServiceContext;->-get7(Lcom/android/server/job/JobServiceContext;)Landroid/app/job/JobParameters;

    move-result-object v2

    invoke-interface {v1, v2}, Landroid/app/job/IJobService;->startJob(Landroid/app/job/JobParameters;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 431
    :goto_0
    return-void

    .line 453
    :catch_0
    move-exception v0

    .line 454
    .local v0, "e":Landroid/os/RemoteException;
    const-string/jumbo v1, "JobServiceContext"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Error sending onStart message to \'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 455
    iget-object v3, p0, Lcom/android/server/job/JobServiceContext$JobServiceHandler;->this$0:Lcom/android/server/job/JobServiceContext;

    invoke-static {v3}, Lcom/android/server/job/JobServiceContext;->-get8(Lcom/android/server/job/JobServiceContext;)Lcom/android/server/job/controllers/JobStatus;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/server/job/controllers/JobStatus;->getServiceComponent()Landroid/content/ComponentName;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/ComponentName;->getShortClassName()Ljava/lang/String;

    move-result-object v3

    .line 454
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 455
    const-string/jumbo v3, "\' "

    .line 454
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method private handleStartedH(Z)V
    .locals 4
    .param p1, "workOngoing"    # Z

    .prologue
    .line 467
    iget-object v0, p0, Lcom/android/server/job/JobServiceContext$JobServiceHandler;->this$0:Lcom/android/server/job/JobServiceContext;

    iget v0, v0, Lcom/android/server/job/JobServiceContext;->mVerb:I

    packed-switch v0, :pswitch_data_0

    .line 486
    const-string/jumbo v0, "JobServiceContext"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Handling started job but job wasn\'t starting! Was "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 487
    invoke-static {}, Lcom/android/server/job/JobServiceContext;->-get0()[Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/job/JobServiceContext$JobServiceHandler;->this$0:Lcom/android/server/job/JobServiceContext;

    iget v3, v3, Lcom/android/server/job/JobServiceContext;->mVerb:I

    aget-object v2, v2, v3

    .line 486
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 487
    const-string/jumbo v2, "."

    .line 486
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 488
    return-void

    .line 469
    :pswitch_0
    iget-object v0, p0, Lcom/android/server/job/JobServiceContext$JobServiceHandler;->this$0:Lcom/android/server/job/JobServiceContext;

    const/4 v1, 0x2

    iput v1, v0, Lcom/android/server/job/JobServiceContext;->mVerb:I

    .line 470
    if-nez p1, :cond_0

    .line 472
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/server/job/JobServiceContext$JobServiceHandler;->handleFinishedH(Z)V

    .line 473
    return-void

    .line 475
    :cond_0
    iget-object v0, p0, Lcom/android/server/job/JobServiceContext$JobServiceHandler;->this$0:Lcom/android/server/job/JobServiceContext;

    invoke-static {v0}, Lcom/android/server/job/JobServiceContext;->-get2(Lcom/android/server/job/JobServiceContext;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 480
    invoke-direct {p0}, Lcom/android/server/job/JobServiceContext$JobServiceHandler;->handleCancelH()V

    .line 481
    return-void

    .line 483
    :cond_1
    iget-object v0, p0, Lcom/android/server/job/JobServiceContext$JobServiceHandler;->this$0:Lcom/android/server/job/JobServiceContext;

    invoke-static {v0}, Lcom/android/server/job/JobServiceContext;->-wrap1(Lcom/android/server/job/JobServiceContext;)V

    .line 466
    return-void

    .line 467
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method private sendStopMessageH()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 587
    iget-object v1, p0, Lcom/android/server/job/JobServiceContext$JobServiceHandler;->this$0:Lcom/android/server/job/JobServiceContext;

    invoke-static {v1}, Lcom/android/server/job/JobServiceContext;->-wrap0(Lcom/android/server/job/JobServiceContext;)V

    .line 588
    iget-object v1, p0, Lcom/android/server/job/JobServiceContext$JobServiceHandler;->this$0:Lcom/android/server/job/JobServiceContext;

    iget v1, v1, Lcom/android/server/job/JobServiceContext;->mVerb:I

    const/4 v2, 0x2

    if-eq v1, v2, :cond_0

    .line 589
    const-string/jumbo v1, "JobServiceContext"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Sending onStopJob for a job that isn\'t started. "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/job/JobServiceContext$JobServiceHandler;->this$0:Lcom/android/server/job/JobServiceContext;

    invoke-static {v3}, Lcom/android/server/job/JobServiceContext;->-get8(Lcom/android/server/job/JobServiceContext;)Lcom/android/server/job/controllers/JobStatus;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 590
    invoke-direct {p0, v4}, Lcom/android/server/job/JobServiceContext$JobServiceHandler;->closeAndCleanupJobH(Z)V

    .line 591
    return-void

    .line 594
    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/android/server/job/JobServiceContext$JobServiceHandler;->this$0:Lcom/android/server/job/JobServiceContext;

    const/4 v2, 0x3

    iput v2, v1, Lcom/android/server/job/JobServiceContext;->mVerb:I

    .line 595
    iget-object v1, p0, Lcom/android/server/job/JobServiceContext$JobServiceHandler;->this$0:Lcom/android/server/job/JobServiceContext;

    invoke-static {v1}, Lcom/android/server/job/JobServiceContext;->-wrap1(Lcom/android/server/job/JobServiceContext;)V

    .line 596
    iget-object v1, p0, Lcom/android/server/job/JobServiceContext$JobServiceHandler;->this$0:Lcom/android/server/job/JobServiceContext;

    iget-object v1, v1, Lcom/android/server/job/JobServiceContext;->service:Landroid/app/job/IJobService;

    iget-object v2, p0, Lcom/android/server/job/JobServiceContext$JobServiceHandler;->this$0:Lcom/android/server/job/JobServiceContext;

    invoke-static {v2}, Lcom/android/server/job/JobServiceContext;->-get7(Lcom/android/server/job/JobServiceContext;)Landroid/app/job/JobParameters;

    move-result-object v2

    invoke-interface {v1, v2}, Landroid/app/job/IJobService;->stopJob(Landroid/app/job/JobParameters;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 586
    :goto_0
    return-void

    .line 597
    :catch_0
    move-exception v0

    .line 598
    .local v0, "e":Landroid/os/RemoteException;
    const-string/jumbo v1, "JobServiceContext"

    const-string/jumbo v2, "Error sending onStopJob to client."

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 599
    invoke-direct {p0, v4}, Lcom/android/server/job/JobServiceContext$JobServiceHandler;->closeAndCleanupJobH(Z)V

    goto :goto_0
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 5
    .param p1, "message"    # Landroid/os/Message;

    .prologue
    const/4 v4, 0x2

    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 379
    iget v3, p1, Landroid/os/Message;->what:I

    packed-switch v3, :pswitch_data_0

    .line 426
    const-string/jumbo v2, "JobServiceContext"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Unrecognised message: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 378
    :cond_0
    :goto_0
    return-void

    .line 381
    :pswitch_0
    iget-object v2, p0, Lcom/android/server/job/JobServiceContext$JobServiceHandler;->this$0:Lcom/android/server/job/JobServiceContext;

    invoke-static {v2}, Lcom/android/server/job/JobServiceContext;->-wrap0(Lcom/android/server/job/JobServiceContext;)V

    .line 382
    invoke-direct {p0}, Lcom/android/server/job/JobServiceContext$JobServiceHandler;->handleServiceBoundH()V

    goto :goto_0

    .line 389
    :pswitch_1
    iget-object v3, p0, Lcom/android/server/job/JobServiceContext$JobServiceHandler;->this$0:Lcom/android/server/job/JobServiceContext;

    invoke-static {v3}, Lcom/android/server/job/JobServiceContext;->-wrap0(Lcom/android/server/job/JobServiceContext;)V

    .line 391
    iget-object v3, p0, Lcom/android/server/job/JobServiceContext$JobServiceHandler;->this$0:Lcom/android/server/job/JobServiceContext;

    iget v3, v3, Lcom/android/server/job/JobServiceContext;->mVerb:I

    if-ne v3, v1, :cond_2

    .line 392
    iget v3, p1, Landroid/os/Message;->arg2:I

    if-ne v3, v1, :cond_1

    .line 393
    .local v1, "workOngoing":Z
    :goto_1
    invoke-direct {p0, v1}, Lcom/android/server/job/JobServiceContext$JobServiceHandler;->handleStartedH(Z)V

    goto :goto_0

    .end local v1    # "workOngoing":Z
    :cond_1
    move v1, v2

    .line 392
    goto :goto_1

    .line 394
    :cond_2
    iget-object v3, p0, Lcom/android/server/job/JobServiceContext$JobServiceHandler;->this$0:Lcom/android/server/job/JobServiceContext;

    iget v3, v3, Lcom/android/server/job/JobServiceContext;->mVerb:I

    if-eq v3, v4, :cond_3

    .line 395
    iget-object v3, p0, Lcom/android/server/job/JobServiceContext$JobServiceHandler;->this$0:Lcom/android/server/job/JobServiceContext;

    iget v3, v3, Lcom/android/server/job/JobServiceContext;->mVerb:I

    const/4 v4, 0x3

    if-ne v3, v4, :cond_0

    .line 396
    :cond_3
    iget v3, p1, Landroid/os/Message;->arg2:I

    if-ne v3, v1, :cond_4

    move v0, v1

    .line 397
    .local v0, "reschedule":Z
    :goto_2
    invoke-direct {p0, v0}, Lcom/android/server/job/JobServiceContext$JobServiceHandler;->handleFinishedH(Z)V

    goto :goto_0

    .end local v0    # "reschedule":Z
    :cond_4
    move v0, v2

    .line 396
    goto :goto_2

    .line 405
    :pswitch_2
    iget-object v2, p0, Lcom/android/server/job/JobServiceContext$JobServiceHandler;->this$0:Lcom/android/server/job/JobServiceContext;

    iget v2, v2, Lcom/android/server/job/JobServiceContext;->mVerb:I

    const/4 v3, 0x4

    if-ne v2, v3, :cond_5

    .line 410
    return-void

    .line 412
    :cond_5
    iget-object v2, p0, Lcom/android/server/job/JobServiceContext$JobServiceHandler;->this$0:Lcom/android/server/job/JobServiceContext;

    invoke-static {v2}, Lcom/android/server/job/JobServiceContext;->-get7(Lcom/android/server/job/JobServiceContext;)Landroid/app/job/JobParameters;

    move-result-object v2

    iget v3, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v2, v3}, Landroid/app/job/JobParameters;->setStopReason(I)V

    .line 413
    iget v2, p1, Landroid/os/Message;->arg1:I

    if-ne v2, v4, :cond_6

    .line 414
    iget-object v3, p0, Lcom/android/server/job/JobServiceContext$JobServiceHandler;->this$0:Lcom/android/server/job/JobServiceContext;

    iget-object v2, p0, Lcom/android/server/job/JobServiceContext$JobServiceHandler;->this$0:Lcom/android/server/job/JobServiceContext;

    invoke-static {v2}, Lcom/android/server/job/JobServiceContext;->-get8(Lcom/android/server/job/JobServiceContext;)Lcom/android/server/job/controllers/JobStatus;

    move-result-object v2

    if-eqz v2, :cond_7

    iget-object v2, p0, Lcom/android/server/job/JobServiceContext$JobServiceHandler;->this$0:Lcom/android/server/job/JobServiceContext;

    invoke-static {v2}, Lcom/android/server/job/JobServiceContext;->-get8(Lcom/android/server/job/JobServiceContext;)Lcom/android/server/job/controllers/JobStatus;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/server/job/controllers/JobStatus;->getUid()I

    move-result v2

    :goto_3
    invoke-static {v3, v2}, Lcom/android/server/job/JobServiceContext;->-set2(Lcom/android/server/job/JobServiceContext;I)I

    .line 417
    :cond_6
    invoke-direct {p0}, Lcom/android/server/job/JobServiceContext$JobServiceHandler;->handleCancelH()V

    goto :goto_0

    .line 415
    :cond_7
    const/4 v2, -0x1

    goto :goto_3

    .line 420
    :pswitch_3
    invoke-direct {p0}, Lcom/android/server/job/JobServiceContext$JobServiceHandler;->handleOpTimeoutH()V

    goto :goto_0

    .line 423
    :pswitch_4
    invoke-direct {p0, v1}, Lcom/android/server/job/JobServiceContext$JobServiceHandler;->closeAndCleanupJobH(Z)V

    goto :goto_0

    .line 379
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_4
    .end packed-switch
.end method
