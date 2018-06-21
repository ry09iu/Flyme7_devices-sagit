.class public Lcom/android/server/am/JobServiceContextInjectorCompat;
.super Ljava/lang/Object;
.source "JobServiceContextInjectorCompat.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static cancelJob(II)V
    .locals 2
    .param p0, "uid"    # I
    .param p1, "jobId"    # I

    .prologue
    .line 10
    const-class v1, Lcom/android/server/job/JobSchedulerInternal;

    invoke-static {v1}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/job/JobSchedulerInternal;

    .line 11
    .local v0, "jobScheduler":Lcom/android/server/job/JobSchedulerInternal;
    if-eqz v0, :cond_0

    .line 12
    invoke-interface {v0, p0, p1}, Lcom/android/server/job/JobSchedulerInternal;->cancelJob(II)V

    .line 9
    :cond_0
    return-void
.end method
