.class Lcom/android/server/WatchdogInjector;
.super Ljava/lang/Object;
.source "WatchdogInjector.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "WatchdogInjector"

.field private static mMonitorThreads:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 15
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/android/server/WatchdogInjector;->mMonitorThreads:Ljava/util/ArrayList;

    .line 17
    sget-object v0, Lcom/android/server/WatchdogInjector;->mMonitorThreads:Ljava/util/ArrayList;

    const-string/jumbo v1, "ActivityManager"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 18
    sget-object v0, Lcom/android/server/WatchdogInjector;->mMonitorThreads:Ljava/util/ArrayList;

    const-string/jumbo v1, "PowerManagerService"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 19
    sget-object v0, Lcom/android/server/WatchdogInjector;->mMonitorThreads:Ljava/util/ArrayList;

    const-string/jumbo v1, "miui.fg"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 11
    return-void
.end method

.method constructor <init>()V
    .locals 0

    .prologue
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static needMonitorThread(Ljava/lang/String;)Z
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 56
    sget-object v0, Lcom/android/server/WatchdogInjector;->mMonitorThreads:Ljava/util/ArrayList;

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 57
    const/4 v0, 0x1

    return v0

    .line 59
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public static onWatchdog(Lcom/android/server/Watchdog;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;Ljava/io/File;)V
    .locals 14
    .param p0, "watchdog"    # Lcom/android/server/Watchdog;
    .param p1, "pid"    # I
    .param p2, "processName"    # Ljava/lang/String;
    .param p3, "packageName"    # Ljava/lang/String;
    .param p4, "subject"    # Ljava/lang/String;
    .param p6, "trace"    # Ljava/io/File;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/server/Watchdog;",
            "I",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/Watchdog$HandlerChecker;",
            ">;",
            "Ljava/io/File;",
            ")V"
        }
    .end annotation

    .prologue
    .line 24
    .local p5, "handlerCheckers":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/Watchdog$HandlerChecker;>;"
    new-instance v5, Lmiui/mqsas/sdk/event/WatchdogEvent;

    invoke-direct {v5}, Lmiui/mqsas/sdk/event/WatchdogEvent;-><init>()V

    .line 25
    .local v5, "event":Lmiui/mqsas/sdk/event/WatchdogEvent;
    const/16 v10, 0x80

    new-array v2, v10, [Ljava/lang/String;

    .line 26
    .local v2, "descriptions":[Ljava/lang/String;
    const/16 v10, 0x80

    new-array v9, v10, [Ljava/lang/String;

    .line 28
    .local v9, "stackTraces":[Ljava/lang/String;
    :try_start_0
    monitor-enter p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 29
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_0
    :try_start_1
    invoke-virtual/range {p5 .. p5}, Ljava/util/ArrayList;->size()I

    move-result v10

    if-ge v6, v10, :cond_1

    .line 30
    move-object/from16 v0, p5

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/android/server/Watchdog$HandlerChecker;

    invoke-virtual {v10}, Lcom/android/server/Watchdog$HandlerChecker;->describeBlockedStateLocked()Ljava/lang/String;

    move-result-object v10

    aput-object v10, v2, v6

    .line 32
    move-object/from16 v0, p5

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/android/server/Watchdog$HandlerChecker;

    invoke-virtual {v10}, Lcom/android/server/Watchdog$HandlerChecker;->getThread()Ljava/lang/Thread;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/Thread;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v8

    .line 33
    .local v8, "st":[Ljava/lang/StackTraceElement;
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    .line 34
    .local v7, "line":Ljava/lang/StringBuilder;
    const/4 v10, 0x0

    array-length v11, v8

    :goto_1
    if-ge v10, v11, :cond_0

    aget-object v4, v8, v10

    .line 35
    .local v4, "element":Ljava/lang/StackTraceElement;
    const-string/jumbo v12, "    at "

    invoke-virtual {v7, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string/jumbo v13, "\n"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 34
    add-int/lit8 v10, v10, 0x1

    goto :goto_1

    .line 37
    .end local v4    # "element":Ljava/lang/StackTraceElement;
    :cond_0
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    aput-object v10, v9, v6
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 29
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .end local v7    # "line":Ljava/lang/StringBuilder;
    .end local v8    # "st":[Ljava/lang/StackTraceElement;
    :cond_1
    :try_start_2
    monitor-exit p0
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 45
    .end local v6    # "i":I
    :goto_2
    invoke-virtual {v5, p1}, Lmiui/mqsas/sdk/event/WatchdogEvent;->setPid(I)V

    .line 46
    move-object/from16 v0, p2

    invoke-virtual {v5, v0}, Lmiui/mqsas/sdk/event/WatchdogEvent;->setProcessName(Ljava/lang/String;)V

    .line 47
    move-object/from16 v0, p3

    invoke-virtual {v5, v0}, Lmiui/mqsas/sdk/event/WatchdogEvent;->setPackageName(Ljava/lang/String;)V

    .line 48
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    invoke-virtual {v5, v10, v11}, Lmiui/mqsas/sdk/event/WatchdogEvent;->setTimeStamp(J)V

    .line 49
    const/4 v10, 0x1

    invoke-virtual {v5, v10}, Lmiui/mqsas/sdk/event/WatchdogEvent;->setSystem(Z)V

    .line 50
    invoke-virtual {v5, v2}, Lmiui/mqsas/sdk/event/WatchdogEvent;->setCheckers([Ljava/lang/String;)V

    .line 51
    invoke-virtual {v5, v9}, Lmiui/mqsas/sdk/event/WatchdogEvent;->setStackTraces([Ljava/lang/String;)V

    .line 52
    invoke-static {}, Lmiui/mqsas/sdk/MQSEventManagerDelegate;->getInstance()Lmiui/mqsas/sdk/MQSEventManagerDelegate;

    move-result-object v10

    invoke-virtual {v10, v5}, Lmiui/mqsas/sdk/MQSEventManagerDelegate;->reportWatchdogEvent(Lmiui/mqsas/sdk/event/WatchdogEvent;)V

    .line 23
    return-void

    .line 28
    .restart local v6    # "i":I
    :catchall_0
    move-exception v10

    :try_start_3
    monitor-exit p0

    throw v10
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    .line 41
    .end local v6    # "i":I
    :catch_0
    move-exception v3

    .local v3, "e":Ljava/lang/Exception;
    goto :goto_2
.end method
