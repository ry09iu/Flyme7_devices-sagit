.class public Lcom/android/internal/telephony/MiuiSmsQueue;
.super Ljava/lang/Object;
.source "MiuiSmsQueue.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "SMSDispatcher"


# instance fields
.field private mDispatcher:Lcom/android/internal/telephony/SMSDispatcher;

.field private mIsSynced:Z

.field private mLastTimeMills:J

.field private mQueue:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList",
            "<",
            "Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/android/internal/telephony/SMSDispatcher;)V
    .locals 4
    .param p1, "dispatcher"    # Lcom/android/internal/telephony/SMSDispatcher;

    .prologue
    const-wide/16 v2, 0x0

    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/internal/telephony/MiuiSmsQueue;->mIsSynced:Z

    .line 35
    iput-wide v2, p0, Lcom/android/internal/telephony/MiuiSmsQueue;->mLastTimeMills:J

    .line 43
    iput-object p1, p0, Lcom/android/internal/telephony/MiuiSmsQueue;->mDispatcher:Lcom/android/internal/telephony/SMSDispatcher;

    .line 44
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/MiuiSmsQueue;->mQueue:Ljava/util/LinkedList;

    .line 45
    iput-wide v2, p0, Lcom/android/internal/telephony/MiuiSmsQueue;->mLastTimeMills:J

    .line 37
    return-void
.end method


# virtual methods
.method public enableSynced(Z)V
    .locals 2
    .param p1, "value"    # Z

    .prologue
    .line 49
    iput-boolean p1, p0, Lcom/android/internal/telephony/MiuiSmsQueue;->mIsSynced:Z

    .line 50
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/internal/telephony/MiuiSmsQueue;->mLastTimeMills:J

    .line 51
    if-eqz p1, :cond_0

    .line 52
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/internal/telephony/MiuiSmsQueue;->mLastTimeMills:J

    .line 48
    :cond_0
    return-void
.end method

.method public enqueueOrSendSms(Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;)V
    .locals 10
    .param p1, "tracker"    # Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;

    .prologue
    const/4 v7, 0x1

    .line 77
    iget-object v4, p0, Lcom/android/internal/telephony/MiuiSmsQueue;->mQueue:Ljava/util/LinkedList;

    monitor-enter v4

    .line 78
    :try_start_0
    iget-object v1, p0, Lcom/android/internal/telephony/MiuiSmsQueue;->mQueue:Ljava/util/LinkedList;

    invoke-virtual {v1, p1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 79
    const-string/jumbo v1, "SMSDispatcher"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "Added message to queue. Queue size is "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/android/internal/telephony/MiuiSmsQueue;->mQueue:Ljava/util/LinkedList;

    invoke-virtual {v6}, Ljava/util/LinkedList;->size()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v1, v5}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 88
    iget-object v1, p0, Lcom/android/internal/telephony/MiuiSmsQueue;->mQueue:Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/util/LinkedList;->size()I

    move-result v1

    if-lt v1, v7, :cond_1

    .line 89
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    iget-wide v8, p0, Lcom/android/internal/telephony/MiuiSmsQueue;->mLastTimeMills:J

    sub-long v2, v6, v8

    .line 90
    .local v2, "time":J
    iget-boolean v1, p0, Lcom/android/internal/telephony/MiuiSmsQueue;->mIsSynced:Z

    if-eqz v1, :cond_0

    const-wide/16 v6, 0x2710

    cmp-long v1, v2, v6

    if-lez v1, :cond_2

    .line 91
    :cond_0
    :goto_0
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/MiuiSmsQueue;->enableSynced(Z)V

    .line 92
    iget-object v1, p0, Lcom/android/internal/telephony/MiuiSmsQueue;->mQueue:Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/util/LinkedList;->poll()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;

    .line 93
    .local v0, "first":Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;
    iget-object v1, p0, Lcom/android/internal/telephony/MiuiSmsQueue;->mDispatcher:Lcom/android/internal/telephony/SMSDispatcher;

    invoke-virtual {v1, v0}, Lcom/android/internal/telephony/SMSDispatcher;->sendSms(Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .end local v0    # "first":Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;
    .end local v2    # "time":J
    :cond_1
    monitor-exit v4

    .line 76
    return-void

    .line 90
    .restart local v2    # "time":J
    :cond_2
    const-wide/16 v6, 0x0

    cmp-long v1, v2, v6

    if-gtz v1, :cond_1

    goto :goto_0

    .line 77
    .end local v2    # "time":J
    :catchall_0
    move-exception v1

    monitor-exit v4

    throw v1
.end method

.method public processNextSms()V
    .locals 3

    .prologue
    .line 60
    iget-object v2, p0, Lcom/android/internal/telephony/MiuiSmsQueue;->mQueue:Ljava/util/LinkedList;

    monitor-enter v2

    .line 62
    :try_start_0
    iget-object v1, p0, Lcom/android/internal/telephony/MiuiSmsQueue;->mQueue:Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/util/LinkedList;->size()I

    move-result v1

    if-lez v1, :cond_0

    .line 63
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/MiuiSmsQueue;->enableSynced(Z)V

    .line 64
    iget-object v1, p0, Lcom/android/internal/telephony/MiuiSmsQueue;->mQueue:Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/util/LinkedList;->poll()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;

    .line 65
    .local v0, "tracker":Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;
    iget-object v1, p0, Lcom/android/internal/telephony/MiuiSmsQueue;->mDispatcher:Lcom/android/internal/telephony/SMSDispatcher;

    invoke-virtual {v1, v0}, Lcom/android/internal/telephony/SMSDispatcher;->sendSms(Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .end local v0    # "tracker":Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;
    :goto_0
    monitor-exit v2

    .line 59
    return-void

    .line 67
    :cond_0
    const/4 v1, 0x0

    :try_start_1
    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/MiuiSmsQueue;->enableSynced(Z)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 60
    :catchall_0
    move-exception v1

    monitor-exit v2

    throw v1
.end method
