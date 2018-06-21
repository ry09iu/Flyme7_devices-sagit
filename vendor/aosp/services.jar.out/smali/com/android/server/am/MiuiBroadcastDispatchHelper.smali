.class public Lcom/android/server/am/MiuiBroadcastDispatchHelper;
.super Ljava/lang/Object;
.source "MiuiBroadcastDispatchHelper.java"


# static fields
.field private static final ANDROID_VERSION_N:I = 0x18

.field private static final DEBUG_BROADCAST:Z = false

.field private static final DEBUG_BROADCAST_LIGHT:Z = false

.field static final DEFAULT_SLEEP_TIME:J = 0x5L

.field static final DISPATCH_SLEEP_TIME:J = 0x8L

.field static final HEAVY_CONSUMING_INTENT:Ljava/lang/String; = "android.net.conn.CONNECTIVITY_CHANGE"

.field static final HEAVY_CONSUMING_INTENT_SLEEP_TIME:J = 0x32L

.field static final LIMIT_DISPATCH_SLEEP_TIME:J = 0xaL

.field private static final MAX_DISPATCH_INTENT_COUNT:I = 0x3

.field static final MAX_RECEIVERS_SIZE:I = 0x1e

.field static final MIN_RECEIVERS_SIZE:I = 0x3

.field static final MSG_PROCESS_NEXT_BROADCAST_FROM_AMS:I = 0x249f1

.field static final ONE_DISPATCH_MAX_TIME:J = 0xaL

.field static final PROP_MIUI_BROADCAST_DISPATCH:Ljava/lang/String; = "persist.sys.m_b_dispatch"

.field static final SHORT_SLEEP_TIME:J = 0x3L

.field private static mInstance:Lcom/android/server/am/MiuiBroadcastDispatchHelper;


# instance fields
.field private mAddBroadcastToHistoryLocked:Ljava/lang/reflect/Method;

.field private mAms:Lcom/android/server/am/ActivityManagerService;

.field private mDeliverToRegisteredReceiverLocked:Ljava/lang/reflect/Method;

.field private mDispatchSleep:Z

.field private final mEnable:Z

.field private mHandlerThread:Lcom/android/server/ServiceThread;

.field private timeConsumingIntents:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Lcom/android/server/am/ActivityManagerService;)V
    .locals 4
    .param p1, "ams"    # Lcom/android/server/am/ActivityManagerService;

    .prologue
    const/4 v3, 0x0

    .line 58
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/MiuiBroadcastDispatchHelper;->timeConsumingIntents:Ljava/util/HashSet;

    .line 51
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/am/MiuiBroadcastDispatchHelper;->mDispatchSleep:Z

    .line 59
    iput-object p1, p0, Lcom/android/server/am/MiuiBroadcastDispatchHelper;->mAms:Lcom/android/server/am/ActivityManagerService;

    .line 61
    invoke-direct {p0}, Lcom/android/server/am/MiuiBroadcastDispatchHelper;->findDeliverToRegisteredReceiverLocked()V

    .line 62
    invoke-direct {p0}, Lcom/android/server/am/MiuiBroadcastDispatchHelper;->findAddBroadcastToHistoryLocked()V

    .line 63
    iget-object v0, p0, Lcom/android/server/am/MiuiBroadcastDispatchHelper;->mDeliverToRegisteredReceiverLocked:Ljava/lang/reflect/Method;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/am/MiuiBroadcastDispatchHelper;->mAddBroadcastToHistoryLocked:Ljava/lang/reflect/Method;

    if-nez v0, :cond_1

    .line 64
    :cond_0
    iput-boolean v3, p0, Lcom/android/server/am/MiuiBroadcastDispatchHelper;->mEnable:Z

    .line 65
    return-void

    .line 68
    :cond_1
    const-string/jumbo v0, "persist.sys.m_b_dispatch"

    invoke-static {v0, v3}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/server/am/MiuiBroadcastDispatchHelper;->mEnable:Z

    .line 69
    iget-boolean v0, p0, Lcom/android/server/am/MiuiBroadcastDispatchHelper;->mEnable:Z

    if-nez v0, :cond_2

    .line 70
    return-void

    .line 73
    :cond_2
    new-instance v0, Lcom/android/server/ServiceThread;

    const-string/jumbo v1, "BroadcastQueueInjector"

    .line 74
    const/4 v2, -0x2

    .line 73
    invoke-direct {v0, v1, v2, v3}, Lcom/android/server/ServiceThread;-><init>(Ljava/lang/String;IZ)V

    iput-object v0, p0, Lcom/android/server/am/MiuiBroadcastDispatchHelper;->mHandlerThread:Lcom/android/server/ServiceThread;

    .line 75
    iget-object v0, p0, Lcom/android/server/am/MiuiBroadcastDispatchHelper;->mHandlerThread:Lcom/android/server/ServiceThread;

    invoke-virtual {v0}, Lcom/android/server/ServiceThread;->start()V

    .line 58
    return-void
.end method

.method private addBroadcastToHistoryLocked(Lcom/android/server/am/BroadcastQueue;Lcom/android/server/am/BroadcastRecord;)V
    .locals 4
    .param p1, "queue"    # Lcom/android/server/am/BroadcastQueue;
    .param p2, "r"    # Lcom/android/server/am/BroadcastRecord;

    .prologue
    .line 253
    :try_start_0
    iget-object v1, p0, Lcom/android/server/am/MiuiBroadcastDispatchHelper;->mAddBroadcastToHistoryLocked:Ljava/lang/reflect/Method;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p2, v2, v3

    invoke-virtual {v1, p1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 251
    :goto_0
    return-void

    .line 254
    :catch_0
    move-exception v0

    .line 255
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public static addTimeConsumingIntent([Ljava/lang/String;)V
    .locals 1
    .param p0, "actions"    # [Ljava/lang/String;

    .prologue
    .line 89
    invoke-static {}, Lcom/android/server/am/MiuiBroadcastDispatchHelper;->getInstance()Lcom/android/server/am/MiuiBroadcastDispatchHelper;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 90
    invoke-static {}, Lcom/android/server/am/MiuiBroadcastDispatchHelper;->getInstance()Lcom/android/server/am/MiuiBroadcastDispatchHelper;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/server/am/MiuiBroadcastDispatchHelper;->addIntent([Ljava/lang/String;)V

    .line 88
    :cond_0
    return-void
.end method

.method public static clearTimeConsumingIntent()V
    .locals 1

    .prologue
    .line 101
    invoke-static {}, Lcom/android/server/am/MiuiBroadcastDispatchHelper;->getInstance()Lcom/android/server/am/MiuiBroadcastDispatchHelper;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 102
    invoke-static {}, Lcom/android/server/am/MiuiBroadcastDispatchHelper;->getInstance()Lcom/android/server/am/MiuiBroadcastDispatchHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/am/MiuiBroadcastDispatchHelper;->clearIntent()V

    .line 100
    :cond_0
    return-void
.end method

.method private deliverToRegisteredReceiverLocked(Lcom/android/server/am/BroadcastQueue;Lcom/android/server/am/BroadcastRecord;Lcom/android/server/am/BroadcastFilter;I)V
    .locals 5
    .param p1, "queue"    # Lcom/android/server/am/BroadcastQueue;
    .param p2, "r"    # Lcom/android/server/am/BroadcastRecord;
    .param p3, "filter"    # Lcom/android/server/am/BroadcastFilter;
    .param p4, "index"    # I

    .prologue
    .line 236
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x18

    if-lt v1, v2, :cond_0

    .line 238
    :try_start_0
    iget-object v1, p0, Lcom/android/server/am/MiuiBroadcastDispatchHelper;->mDeliverToRegisteredReceiverLocked:Ljava/lang/reflect/Method;

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p2, v2, v3

    const/4 v3, 0x1

    aput-object p3, v2, v3

    const/4 v3, 0x0

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    const/4 v4, 0x2

    aput-object v3, v2, v4

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v4, 0x3

    aput-object v3, v2, v4

    invoke-virtual {v1, p1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 235
    :goto_0
    return-void

    .line 239
    :catch_0
    move-exception v0

    .line 240
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 244
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_0
    :try_start_1
    iget-object v1, p0, Lcom/android/server/am/MiuiBroadcastDispatchHelper;->mDeliverToRegisteredReceiverLocked:Ljava/lang/reflect/Method;

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p2, v2, v3

    const/4 v3, 0x1

    aput-object p3, v2, v3

    const/4 v3, 0x0

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    const/4 v4, 0x2

    aput-object v3, v2, v4

    invoke-virtual {v1, p1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    .line 245
    :catch_1
    move-exception v0

    .line 246
    .restart local v0    # "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method private findAddBroadcastToHistoryLocked()V
    .locals 6

    .prologue
    .line 148
    :try_start_0
    const-class v1, Lcom/android/server/am/BroadcastQueue;

    .line 149
    const-string/jumbo v2, "addBroadcastToHistoryLocked"

    .line 148
    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Class;

    .line 149
    const-class v4, Lcom/android/server/am/BroadcastRecord;

    const/4 v5, 0x0

    aput-object v4, v3, v5

    .line 148
    invoke-static {v1, v2, v3}, Lmiui/util/ReflectionUtils;->findMethodExact(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/am/MiuiBroadcastDispatchHelper;->mAddBroadcastToHistoryLocked:Ljava/lang/reflect/Method;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 146
    :goto_0
    return-void

    .line 150
    :catch_0
    move-exception v0

    .line 151
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method private findDeliverToRegisteredReceiverLocked()V
    .locals 6

    .prologue
    .line 123
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x18

    if-lt v1, v2, :cond_0

    .line 126
    :try_start_0
    const-class v1, Lcom/android/server/am/BroadcastQueue;

    .line 127
    const-string/jumbo v2, "deliverToRegisteredReceiverLocked"

    .line 125
    const/4 v3, 0x4

    new-array v3, v3, [Ljava/lang/Class;

    .line 127
    const-class v4, Lcom/android/server/am/BroadcastRecord;

    const/4 v5, 0x0

    aput-object v4, v3, v5

    .line 128
    const-class v4, Lcom/android/server/am/BroadcastFilter;

    const/4 v5, 0x1

    aput-object v4, v3, v5

    .line 129
    sget-object v4, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    const/4 v5, 0x2

    aput-object v4, v3, v5

    sget-object v4, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const/4 v5, 0x3

    aput-object v4, v3, v5

    .line 125
    invoke-static {v1, v2, v3}, Lmiui/util/ReflectionUtils;->findMethodExact(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/am/MiuiBroadcastDispatchHelper;->mDeliverToRegisteredReceiverLocked:Ljava/lang/reflect/Method;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 122
    :goto_0
    return-void

    .line 130
    :catch_0
    move-exception v0

    .line 131
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 136
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_0
    :try_start_1
    const-class v1, Lcom/android/server/am/BroadcastQueue;

    .line 137
    const-string/jumbo v2, "deliverToRegisteredReceiverLocked"

    .line 135
    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/Class;

    .line 137
    const-class v4, Lcom/android/server/am/BroadcastRecord;

    const/4 v5, 0x0

    aput-object v4, v3, v5

    .line 138
    const-class v4, Lcom/android/server/am/BroadcastFilter;

    const/4 v5, 0x1

    aput-object v4, v3, v5

    .line 139
    sget-object v4, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    const/4 v5, 0x2

    aput-object v4, v3, v5

    .line 135
    invoke-static {v1, v2, v3}, Lmiui/util/ReflectionUtils;->findMethodExact(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/am/MiuiBroadcastDispatchHelper;->mDeliverToRegisteredReceiverLocked:Ljava/lang/reflect/Method;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    .line 140
    :catch_1
    move-exception v0

    .line 141
    .restart local v0    # "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public static getInstance()Lcom/android/server/am/MiuiBroadcastDispatchHelper;
    .locals 1

    .prologue
    .line 119
    sget-object v0, Lcom/android/server/am/MiuiBroadcastDispatchHelper;->mInstance:Lcom/android/server/am/MiuiBroadcastDispatchHelper;

    return-object v0
.end method

.method public static init(Lcom/android/server/am/ActivityManagerService;)V
    .locals 1
    .param p0, "ams"    # Lcom/android/server/am/ActivityManagerService;

    .prologue
    .line 79
    new-instance v0, Lcom/android/server/am/MiuiBroadcastDispatchHelper;

    invoke-direct {v0, p0}, Lcom/android/server/am/MiuiBroadcastDispatchHelper;-><init>(Lcom/android/server/am/ActivityManagerService;)V

    sput-object v0, Lcom/android/server/am/MiuiBroadcastDispatchHelper;->mInstance:Lcom/android/server/am/MiuiBroadcastDispatchHelper;

    .line 78
    return-void
.end method

.method public static onScreenOffBroadcastSend()V
    .locals 2

    .prologue
    .line 113
    invoke-static {}, Lcom/android/server/am/MiuiBroadcastDispatchHelper;->getInstance()Lcom/android/server/am/MiuiBroadcastDispatchHelper;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 114
    invoke-static {}, Lcom/android/server/am/MiuiBroadcastDispatchHelper;->getInstance()Lcom/android/server/am/MiuiBroadcastDispatchHelper;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/server/am/MiuiBroadcastDispatchHelper;->setDispatchSleep(Z)V

    .line 112
    :cond_0
    return-void
.end method

.method public static onScreenOnBroadcastDone()V
    .locals 2

    .prologue
    .line 107
    invoke-static {}, Lcom/android/server/am/MiuiBroadcastDispatchHelper;->getInstance()Lcom/android/server/am/MiuiBroadcastDispatchHelper;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 108
    invoke-static {}, Lcom/android/server/am/MiuiBroadcastDispatchHelper;->getInstance()Lcom/android/server/am/MiuiBroadcastDispatchHelper;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/server/am/MiuiBroadcastDispatchHelper;->setDispatchSleep(Z)V

    .line 106
    :cond_0
    return-void
.end method

.method public static removeTimeConsumingIntent([Ljava/lang/String;)V
    .locals 1
    .param p0, "actions"    # [Ljava/lang/String;

    .prologue
    .line 95
    invoke-static {}, Lcom/android/server/am/MiuiBroadcastDispatchHelper;->getInstance()Lcom/android/server/am/MiuiBroadcastDispatchHelper;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 96
    invoke-static {}, Lcom/android/server/am/MiuiBroadcastDispatchHelper;->getInstance()Lcom/android/server/am/MiuiBroadcastDispatchHelper;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/server/am/MiuiBroadcastDispatchHelper;->removeIntent([Ljava/lang/String;)V

    .line 94
    :cond_0
    return-void
.end method

.method public static setMiuiBroadcastDispatchEnable(Z)V
    .locals 1
    .param p0, "enable"    # Z

    .prologue
    .line 83
    invoke-static {}, Lcom/android/server/am/MiuiBroadcastDispatchHelper;->getInstance()Lcom/android/server/am/MiuiBroadcastDispatchHelper;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 84
    invoke-static {}, Lcom/android/server/am/MiuiBroadcastDispatchHelper;->getInstance()Lcom/android/server/am/MiuiBroadcastDispatchHelper;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/server/am/MiuiBroadcastDispatchHelper;->setEnable(Z)V

    .line 82
    :cond_0
    return-void
.end method

.method private shortBroadcastsDispatchLocked(Lcom/android/server/am/BroadcastQueue;Lcom/android/server/am/BroadcastRecord;)V
    .locals 6
    .param p1, "queue"    # Lcom/android/server/am/BroadcastQueue;
    .param p2, "r"    # Lcom/android/server/am/BroadcastRecord;

    .prologue
    .line 268
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    iput-wide v4, p2, Lcom/android/server/am/BroadcastRecord;->dispatchTime:J

    .line 269
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    iput-wide v4, p2, Lcom/android/server/am/BroadcastRecord;->dispatchClockTime:J

    .line 270
    iget-object v3, p2, Lcom/android/server/am/BroadcastRecord;->receivers:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v0

    .line 274
    .local v0, "N":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 275
    iget-object v3, p2, Lcom/android/server/am/BroadcastRecord;->receivers:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    .line 280
    .local v2, "target":Ljava/lang/Object;
    check-cast v2, Lcom/android/server/am/BroadcastFilter;

    .end local v2    # "target":Ljava/lang/Object;
    invoke-direct {p0, p1, p2, v2, v1}, Lcom/android/server/am/MiuiBroadcastDispatchHelper;->deliverToRegisteredReceiverLocked(Lcom/android/server/am/BroadcastQueue;Lcom/android/server/am/BroadcastRecord;Lcom/android/server/am/BroadcastFilter;I)V

    .line 274
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 282
    :cond_0
    invoke-direct {p0, p1, p2}, Lcom/android/server/am/MiuiBroadcastDispatchHelper;->addBroadcastToHistoryLocked(Lcom/android/server/am/BroadcastQueue;Lcom/android/server/am/BroadcastRecord;)V

    .line 267
    return-void
.end method

.method private sleep(J)V
    .locals 1
    .param p1, "time"    # J

    .prologue
    .line 261
    :try_start_0
    invoke-static {p1, p2}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 259
    :goto_0
    return-void

    .line 262
    :catch_0
    move-exception v0

    .line 263
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method


# virtual methods
.method public addIntent([Ljava/lang/String;)V
    .locals 5
    .param p1, "actions"    # [Ljava/lang/String;

    .prologue
    .line 200
    iget-boolean v1, p0, Lcom/android/server/am/MiuiBroadcastDispatchHelper;->mEnable:Z

    if-nez v1, :cond_0

    .line 201
    return-void

    .line 203
    :cond_0
    iget-object v2, p0, Lcom/android/server/am/MiuiBroadcastDispatchHelper;->timeConsumingIntents:Ljava/util/HashSet;

    monitor-enter v2

    .line 204
    const/4 v1, 0x0

    :try_start_0
    array-length v3, p1

    :goto_0
    if-ge v1, v3, :cond_1

    aget-object v0, p1, v1

    .line 205
    .local v0, "action":Ljava/lang/String;
    iget-object v4, p0, Lcom/android/server/am/MiuiBroadcastDispatchHelper;->timeConsumingIntents:Ljava/util/HashSet;

    invoke-virtual {v4, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 204
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .end local v0    # "action":Ljava/lang/String;
    :cond_1
    monitor-exit v2

    .line 199
    return-void

    .line 203
    :catchall_0
    move-exception v1

    monitor-exit v2

    throw v1
.end method

.method public clearIntent()V
    .locals 2

    .prologue
    .line 222
    iget-boolean v0, p0, Lcom/android/server/am/MiuiBroadcastDispatchHelper;->mEnable:Z

    if-nez v0, :cond_0

    .line 223
    return-void

    .line 225
    :cond_0
    iget-object v1, p0, Lcom/android/server/am/MiuiBroadcastDispatchHelper;->timeConsumingIntents:Ljava/util/HashSet;

    monitor-enter v1

    .line 226
    :try_start_0
    iget-object v0, p0, Lcom/android/server/am/MiuiBroadcastDispatchHelper;->timeConsumingIntents:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->clear()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    .line 221
    return-void

    .line 225
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public dispatchParallelBroadcasts(Lcom/android/server/am/BroadcastQueue;Ljava/util/ArrayList;)V
    .locals 24
    .param p1, "queue"    # Lcom/android/server/am/BroadcastQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/server/am/BroadcastQueue;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/am/BroadcastRecord;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 291
    .local p2, "parallelBroadcasts":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/BroadcastRecord;>;"
    const/4 v6, 0x0

    .line 292
    .local v6, "heavyTimeConsumingIntent":Z
    const/16 v16, 0x0

    .line 293
    .local v16, "timeConsumingIntent":Z
    const/4 v9, 0x0

    .local v9, "isNextTopApp":Z
    const/4 v8, 0x0

    .line 294
    .local v8, "isNextSystemServer":Z
    const/16 v11, -0x3e8

    .line 295
    .local v11, "notSleepUid":I
    const/4 v5, 0x0

    .line 297
    .local v5, "dispatchCount":I
    const/4 v12, 0x0

    .line 298
    .end local v6    # "heavyTimeConsumingIntent":Z
    .end local v16    # "timeConsumingIntent":Z
    :goto_0
    const/16 v17, 0x3

    move/from16 v0, v17

    if-ge v5, v0, :cond_e

    .line 299
    add-int/lit8 v5, v5, 0x1

    .line 300
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/MiuiBroadcastDispatchHelper;->mAms:Lcom/android/server/am/ActivityManagerService;

    move-object/from16 v18, v0

    monitor-enter v18

    :try_start_0
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V

    .line 301
    invoke-virtual/range {p2 .. p2}, Ljava/util/ArrayList;->size()I

    move-result v17

    if-lez v17, :cond_0

    .line 302
    const/16 v17, 0x0

    move-object/from16 v0, p2

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v17

    move-object/from16 v0, v17

    check-cast v0, Lcom/android/server/am/BroadcastRecord;

    move-object v12, v0

    .line 303
    .local v12, "r":Lcom/android/server/am/BroadcastRecord;
    iget-object v0, v12, Lcom/android/server/am/BroadcastRecord;->receivers:Ljava/util/List;

    move-object/from16 v17, v0

    invoke-interface/range {v17 .. v17}, Ljava/util/List;->size()I

    move-result v17

    const/16 v19, 0x3

    move/from16 v0, v17

    move/from16 v1, v19

    if-gt v0, v1, :cond_1

    .line 304
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v12}, Lcom/android/server/am/MiuiBroadcastDispatchHelper;->shortBroadcastsDispatchLocked(Lcom/android/server/am/BroadcastQueue;Lcom/android/server/am/BroadcastRecord;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v18

    .line 300
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    goto :goto_0

    .end local v12    # "r":Lcom/android/server/am/BroadcastRecord;
    :cond_0
    monitor-exit v18

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    .line 308
    return-void

    .restart local v12    # "r":Lcom/android/server/am/BroadcastRecord;
    :cond_1
    monitor-exit v18

    .line 300
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    .line 311
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v18

    move-wide/from16 v0, v18

    iput-wide v0, v12, Lcom/android/server/am/BroadcastRecord;->dispatchTime:J

    .line 312
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v18

    move-wide/from16 v0, v18

    iput-wide v0, v12, Lcom/android/server/am/BroadcastRecord;->dispatchClockTime:J

    .line 313
    const-string/jumbo v17, "android.net.conn.CONNECTIVITY_CHANGE"

    iget-object v0, v12, Lcom/android/server/am/BroadcastRecord;->intent:Landroid/content/Intent;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    .line 314
    .local v6, "heavyTimeConsumingIntent":Z
    if-eqz v6, :cond_6

    const/16 v16, 0x1

    .line 316
    :goto_1
    const/4 v9, 0x0

    .line 317
    const/4 v8, 0x0

    .line 318
    const/16 v11, -0x3e8

    .line 319
    iget-object v0, v12, Lcom/android/server/am/BroadcastRecord;->receivers:Ljava/util/List;

    move-object/from16 v17, v0

    invoke-interface/range {v17 .. v17}, Ljava/util/List;->size()I

    move-result v4

    .line 323
    .local v4, "N":I
    const/4 v7, 0x0

    .local v7, "i":I
    :goto_2
    if-ge v7, v4, :cond_c

    .line 324
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v14

    .line 325
    .local v14, "startTime":J
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/MiuiBroadcastDispatchHelper;->mAms:Lcom/android/server/am/ActivityManagerService;

    move-object/from16 v18, v0

    monitor-enter v18

    :try_start_1
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V

    .line 326
    iget-object v0, v12, Lcom/android/server/am/BroadcastRecord;->receivers:Ljava/util/List;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-interface {v0, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

    .line 327
    .local v13, "target":Ljava/lang/Object;
    const/4 v9, 0x0

    .line 328
    const/4 v8, 0x0

    .line 329
    add-int/lit8 v17, v4, -0x1

    move/from16 v0, v17

    if-ge v7, v0, :cond_4

    .line 330
    iget-object v0, v12, Lcom/android/server/am/BroadcastRecord;->receivers:Ljava/util/List;

    move-object/from16 v17, v0

    add-int/lit8 v19, v7, 0x1

    move-object/from16 v0, v17

    move/from16 v1, v19

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/android/server/am/BroadcastFilter;

    .line 331
    .local v10, "next":Lcom/android/server/am/BroadcastFilter;
    iget-object v0, v10, Lcom/android/server/am/BroadcastFilter;->receiverList:Lcom/android/server/am/ReceiverList;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/android/server/am/ReceiverList;->app:Lcom/android/server/am/ProcessRecord;

    move-object/from16 v17, v0

    if-eqz v17, :cond_2

    iget-object v0, v10, Lcom/android/server/am/BroadcastFilter;->receiverList:Lcom/android/server/am/ReceiverList;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/android/server/am/ReceiverList;->app:Lcom/android/server/am/ProcessRecord;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget v0, v0, Lcom/android/server/am/ProcessRecord;->curProcState:I

    move/from16 v17, v0

    .line 332
    const/16 v19, 0x2

    .line 331
    move/from16 v0, v17

    move/from16 v1, v19

    if-gt v0, v1, :cond_2

    .line 333
    const/4 v9, 0x1

    .line 335
    :cond_2
    iget-object v0, v10, Lcom/android/server/am/BroadcastFilter;->receiverList:Lcom/android/server/am/ReceiverList;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget v0, v0, Lcom/android/server/am/ReceiverList;->pid:I

    move/from16 v17, v0

    sget v19, Lcom/android/server/am/ActivityManagerService;->MY_PID:I

    move/from16 v0, v17

    move/from16 v1, v19

    if-ne v0, v1, :cond_3

    .line 336
    const/4 v8, 0x1

    .line 338
    :cond_3
    iget-object v0, v10, Lcom/android/server/am/BroadcastFilter;->receiverList:Lcom/android/server/am/ReceiverList;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget v11, v0, Lcom/android/server/am/ReceiverList;->uid:I

    .line 345
    .end local v10    # "next":Lcom/android/server/am/BroadcastFilter;
    :cond_4
    check-cast v13, Lcom/android/server/am/BroadcastFilter;

    .end local v13    # "target":Ljava/lang/Object;
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v12, v13, v7}, Lcom/android/server/am/MiuiBroadcastDispatchHelper;->deliverToRegisteredReceiverLocked(Lcom/android/server/am/BroadcastQueue;Lcom/android/server/am/BroadcastRecord;Lcom/android/server/am/BroadcastFilter;I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    monitor-exit v18

    .line 325
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    .line 347
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/server/am/MiuiBroadcastDispatchHelper;->mDispatchSleep:Z

    move/from16 v17, v0

    if-eqz v17, :cond_5

    if-nez v9, :cond_5

    if-eqz v8, :cond_7

    .line 323
    :cond_5
    :goto_3
    add-int/lit8 v7, v7, 0x1

    goto/16 :goto_2

    .line 300
    .end local v4    # "N":I
    .end local v6    # "heavyTimeConsumingIntent":Z
    .end local v7    # "i":I
    .end local v12    # "r":Lcom/android/server/am/BroadcastRecord;
    .end local v14    # "startTime":J
    :catchall_0
    move-exception v17

    monitor-exit v18

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    throw v17

    .line 314
    .restart local v6    # "heavyTimeConsumingIntent":Z
    .restart local v12    # "r":Lcom/android/server/am/BroadcastRecord;
    :cond_6
    iget-object v0, v12, Lcom/android/server/am/BroadcastRecord;->intent:Landroid/content/Intent;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/android/server/am/MiuiBroadcastDispatchHelper;->isTimeConsumingIntent(Ljava/lang/String;)Z

    move-result v16

    .local v16, "timeConsumingIntent":Z
    goto/16 :goto_1

    .line 325
    .end local v16    # "timeConsumingIntent":Z
    .restart local v4    # "N":I
    .restart local v7    # "i":I
    .restart local v14    # "startTime":J
    :catchall_1
    move-exception v17

    monitor-exit v18

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    throw v17

    .line 352
    :cond_7
    invoke-static {}, Lcom/android/server/am/MiuiSysUserServiceHelper;->isAllLimit()Z

    move-result v17

    if-eqz v17, :cond_9

    .line 353
    if-eqz v16, :cond_8

    .line 354
    const-wide/16 v18, 0x32

    move-object/from16 v0, p0

    move-wide/from16 v1, v18

    invoke-direct {v0, v1, v2}, Lcom/android/server/am/MiuiBroadcastDispatchHelper;->sleep(J)V

    goto :goto_3

    .line 356
    :cond_8
    const-wide/16 v18, 0xa

    move-object/from16 v0, p0

    move-wide/from16 v1, v18

    invoke-direct {v0, v1, v2}, Lcom/android/server/am/MiuiBroadcastDispatchHelper;->sleep(J)V

    goto :goto_3

    .line 359
    :cond_9
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v18

    sub-long v18, v18, v14

    const-wide/16 v20, 0xa

    cmp-long v17, v18, v20

    if-lez v17, :cond_a

    .line 360
    const-wide/16 v18, 0x8

    move-object/from16 v0, p0

    move-wide/from16 v1, v18

    invoke-direct {v0, v1, v2}, Lcom/android/server/am/MiuiBroadcastDispatchHelper;->sleep(J)V

    goto :goto_3

    .line 362
    :cond_a
    sub-int v17, v4, v7

    const/16 v18, 0x1e

    move/from16 v0, v17

    move/from16 v1, v18

    if-le v0, v1, :cond_b

    .line 363
    const-wide/16 v18, 0x5

    move-object/from16 v0, p0

    move-wide/from16 v1, v18

    invoke-direct {v0, v1, v2}, Lcom/android/server/am/MiuiBroadcastDispatchHelper;->sleep(J)V

    goto :goto_3

    .line 365
    :cond_b
    const-wide/16 v18, 0x3

    move-object/from16 v0, p0

    move-wide/from16 v1, v18

    invoke-direct {v0, v1, v2}, Lcom/android/server/am/MiuiBroadcastDispatchHelper;->sleep(J)V

    goto :goto_3

    .line 370
    .end local v14    # "startTime":J
    :cond_c
    if-eqz v16, :cond_d

    .line 371
    const-string/jumbo v17, "BroadcastQueueInjector"

    .line 372
    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v19, "MBDH Done with parallel broadcast ["

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/server/am/BroadcastQueue;->mQueueName:Ljava/lang/String;

    move-object/from16 v19, v0

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string/jumbo v19, "] "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v18

    .line 373
    const-string/jumbo v19, " total used : "

    .line 372
    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    .line 373
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v20

    iget-wide v0, v12, Lcom/android/server/am/BroadcastRecord;->dispatchTime:J

    move-wide/from16 v22, v0

    sub-long v20, v20, v22

    .line 372
    move-object/from16 v0, v18

    move-wide/from16 v1, v20

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    .line 371
    invoke-static/range {v17 .. v18}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 375
    :cond_d
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/MiuiBroadcastDispatchHelper;->mAms:Lcom/android/server/am/ActivityManagerService;

    move-object/from16 v18, v0

    monitor-enter v18

    :try_start_2
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V

    .line 376
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v12}, Lcom/android/server/am/MiuiBroadcastDispatchHelper;->addBroadcastToHistoryLocked(Lcom/android/server/am/BroadcastQueue;Lcom/android/server/am/BroadcastRecord;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    monitor-exit v18

    .line 375
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    goto/16 :goto_0

    :catchall_2
    move-exception v17

    monitor-exit v18

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    throw v17

    .line 382
    .end local v4    # "N":I
    .end local v6    # "heavyTimeConsumingIntent":Z
    .end local v7    # "i":I
    .end local v12    # "r":Lcom/android/server/am/BroadcastRecord;
    :cond_e
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/MiuiBroadcastDispatchHelper;->mAms:Lcom/android/server/am/ActivityManagerService;

    move-object/from16 v18, v0

    monitor-enter v18

    :try_start_3
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V

    .line 383
    invoke-virtual/range {p2 .. p2}, Ljava/util/ArrayList;->size()I

    move-result v17

    if-lez v17, :cond_f

    .line 384
    const/16 v17, 0x0

    move/from16 v0, v17

    move-object/from16 v1, p1

    iput-boolean v0, v1, Lcom/android/server/am/BroadcastQueue;->mBroadcastsScheduled:Z

    .line 385
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/am/BroadcastQueue;->scheduleBroadcastsLocked()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    :cond_f
    monitor-exit v18

    .line 382
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    .line 289
    return-void

    .line 382
    :catchall_3
    move-exception v17

    monitor-exit v18

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    throw v17
.end method

.method public dump(Ljava/io/PrintWriter;)V
    .locals 3
    .param p1, "pw"    # Ljava/io/PrintWriter;

    .prologue
    .line 391
    const-string/jumbo v1, "  MIUI ADD :  MBDH dump start : "

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 392
    const-string/jumbo v1, "  Heavy Time Consuming Intents : "

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 393
    const-string/jumbo v1, " action : "

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 394
    const-string/jumbo v1, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 395
    const-string/jumbo v1, "  Time Consuming Intents : "

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 396
    iget-object v2, p0, Lcom/android/server/am/MiuiBroadcastDispatchHelper;->timeConsumingIntents:Ljava/util/HashSet;

    monitor-enter v2

    .line 397
    :try_start_0
    iget-object v1, p0, Lcom/android/server/am/MiuiBroadcastDispatchHelper;->timeConsumingIntents:Ljava/util/HashSet;

    invoke-virtual {v1}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 398
    .local v0, "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 399
    const-string/jumbo v1, " action : "

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 400
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 396
    .end local v0    # "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    :catchall_0
    move-exception v1

    monitor-exit v2

    throw v1

    .restart local v0    # "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    :cond_0
    monitor-exit v2

    .line 403
    const-string/jumbo v1, " enable : "

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 404
    iget-boolean v1, p0, Lcom/android/server/am/MiuiBroadcastDispatchHelper;->mEnable:Z

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Z)V

    .line 405
    const-string/jumbo v1, " dispatchSleep : "

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 406
    iget-boolean v1, p0, Lcom/android/server/am/MiuiBroadcastDispatchHelper;->mDispatchSleep:Z

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Z)V

    .line 407
    const-string/jumbo v1, "  MBDH dump end !!!!"

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 390
    return-void
.end method

.method public getLooper()Landroid/os/Looper;
    .locals 1

    .prologue
    .line 231
    iget-object v0, p0, Lcom/android/server/am/MiuiBroadcastDispatchHelper;->mHandlerThread:Lcom/android/server/ServiceThread;

    invoke-virtual {v0}, Lcom/android/server/ServiceThread;->getLooper()Landroid/os/Looper;

    move-result-object v0

    return-object v0
.end method

.method public getOrderedSleepTime(Lcom/android/server/am/BroadcastRecord;)J
    .locals 4
    .param p1, "r"    # Lcom/android/server/am/BroadcastRecord;

    .prologue
    .line 187
    const-wide/16 v0, 0x5

    .line 188
    .local v0, "sleepTime":J
    iget-boolean v2, p0, Lcom/android/server/am/MiuiBroadcastDispatchHelper;->mDispatchSleep:Z

    if-eqz v2, :cond_1

    invoke-static {}, Lcom/android/server/am/MiuiSysUserServiceHelper;->isAllLimit()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 189
    const-string/jumbo v2, "android.net.conn.CONNECTIVITY_CHANGE"

    iget-object v3, p1, Lcom/android/server/am/BroadcastRecord;->intent:Landroid/content/Intent;

    invoke-virtual {v3}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 190
    iget-object v2, p1, Lcom/android/server/am/BroadcastRecord;->intent:Landroid/content/Intent;

    invoke-virtual {v2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/android/server/am/MiuiBroadcastDispatchHelper;->isTimeConsumingIntent(Ljava/lang/String;)Z

    move-result v2

    .line 189
    if-eqz v2, :cond_2

    .line 191
    :cond_0
    const-wide/16 v0, 0x32

    .line 196
    :cond_1
    :goto_0
    return-wide v0

    .line 193
    :cond_2
    const-wide/16 v0, 0xa

    goto :goto_0
.end method

.method public isEnable()Z
    .locals 1

    .prologue
    .line 159
    iget-boolean v0, p0, Lcom/android/server/am/MiuiBroadcastDispatchHelper;->mEnable:Z

    return v0
.end method

.method public isTimeConsumingIntent(Ljava/lang/String;)Z
    .locals 2
    .param p1, "action"    # Ljava/lang/String;

    .prologue
    .line 178
    iget-boolean v0, p0, Lcom/android/server/am/MiuiBroadcastDispatchHelper;->mEnable:Z

    if-nez v0, :cond_0

    .line 179
    const/4 v0, 0x0

    return v0

    .line 181
    :cond_0
    iget-object v1, p0, Lcom/android/server/am/MiuiBroadcastDispatchHelper;->timeConsumingIntents:Ljava/util/HashSet;

    monitor-enter v1

    .line 182
    :try_start_0
    iget-object v0, p0, Lcom/android/server/am/MiuiBroadcastDispatchHelper;->timeConsumingIntents:Ljava/util/HashSet;

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    monitor-exit v1

    return v0

    .line 181
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public removeIntent([Ljava/lang/String;)V
    .locals 5
    .param p1, "actions"    # [Ljava/lang/String;

    .prologue
    .line 211
    iget-boolean v1, p0, Lcom/android/server/am/MiuiBroadcastDispatchHelper;->mEnable:Z

    if-nez v1, :cond_0

    .line 212
    return-void

    .line 214
    :cond_0
    iget-object v2, p0, Lcom/android/server/am/MiuiBroadcastDispatchHelper;->timeConsumingIntents:Ljava/util/HashSet;

    monitor-enter v2

    .line 215
    const/4 v1, 0x0

    :try_start_0
    array-length v3, p1

    :goto_0
    if-ge v1, v3, :cond_1

    aget-object v0, p1, v1

    .line 216
    .local v0, "action":Ljava/lang/String;
    iget-object v4, p0, Lcom/android/server/am/MiuiBroadcastDispatchHelper;->timeConsumingIntents:Ljava/util/HashSet;

    invoke-virtual {v4, v0}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 215
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .end local v0    # "action":Ljava/lang/String;
    :cond_1
    monitor-exit v2

    .line 210
    return-void

    .line 214
    :catchall_0
    move-exception v1

    monitor-exit v2

    throw v1
.end method

.method public setDispatchSleep(Z)V
    .locals 0
    .param p1, "dispatchSleep"    # Z

    .prologue
    .line 174
    iput-boolean p1, p0, Lcom/android/server/am/MiuiBroadcastDispatchHelper;->mDispatchSleep:Z

    .line 170
    return-void
.end method

.method public setEnable(Z)V
    .locals 2
    .param p1, "enable"    # Z

    .prologue
    .line 163
    if-eqz p1, :cond_0

    .line 164
    const-string/jumbo v0, "persist.sys.m_b_dispatch"

    const-string/jumbo v1, "true"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 162
    :goto_0
    return-void

    .line 166
    :cond_0
    const-string/jumbo v0, "persist.sys.m_b_dispatch"

    const-string/jumbo v1, "false"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method
