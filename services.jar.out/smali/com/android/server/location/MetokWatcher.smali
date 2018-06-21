.class public Lcom/android/server/location/MetokWatcher;
.super Ljava/lang/Object;
.source "MetokWatcher.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/location/MetokWatcher$1;
    }
.end annotation


# static fields
.field private static final D:Z = false

.field public static final EXTRA_SERVICE_IS_MULTIUSER:Ljava/lang/String; = "serviceIsMultiuser"

.field public static final EXTRA_SERVICE_VERSION:Ljava/lang/String; = "serviceVersion"

.field public static final SERVICE_PACKAGE_NAME:Ljava/lang/String; = "com.xiaomi.metok"

.field private static final TAG:Ljava/lang/String; = "MetokWatcher"


# instance fields
.field private final mAction:Ljava/lang/String;

.field private mBoundComponent:Landroid/content/ComponentName;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "mLock"
    .end annotation
.end field

.field private mBoundPackageName:Ljava/lang/String;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "mLock"
    .end annotation
.end field

.field private mBoundService:Landroid/os/IBinder;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "mLock"
    .end annotation
.end field

.field private mBoundUserId:I
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "mLock"
    .end annotation
.end field

.field private mBoundVersion:I
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "mLock"
    .end annotation
.end field

.field private final mContext:Landroid/content/Context;

.field private mCurrentUserId:I
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "mLock"
    .end annotation
.end field

.field private final mHandler:Landroid/os/Handler;

.field private final mLock:Ljava/lang/Object;

.field private final mNewServiceWork:Ljava/lang/Runnable;

.field private final mPackageMonitor:Lcom/android/internal/content/PackageMonitor;

.field private final mPm:Landroid/content/pm/PackageManager;

.field private final mServicePackageName:Ljava/lang/String;


# direct methods
.method static synthetic -get0(Lcom/android/server/location/MetokWatcher;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/server/location/MetokWatcher;->mBoundPackageName:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic -get1(Lcom/android/server/location/MetokWatcher;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/android/server/location/MetokWatcher;->mLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic -wrap0(Lcom/android/server/location/MetokWatcher;Ljava/lang/String;Z)Z
    .locals 1
    .param p1, "justCheckThisPackage"    # Ljava/lang/String;
    .param p2, "forceRebind"    # Z

    .prologue
    invoke-direct {p0, p1, p2}, Lcom/android/server/location/MetokWatcher;->bindBestPackageLocked(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Runnable;Landroid/os/Handler;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "action"    # Ljava/lang/String;
    .param p3, "newServiceWork"    # Ljava/lang/Runnable;
    .param p4, "handler"    # Landroid/os/Handler;

    .prologue
    .line 64
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Lcom/android/server/location/MetokWatcher;->mLock:Ljava/lang/Object;

    .line 51
    const/4 v1, 0x0

    iput v1, p0, Lcom/android/server/location/MetokWatcher;->mCurrentUserId:I

    .line 60
    const/high16 v1, -0x80000000

    iput v1, p0, Lcom/android/server/location/MetokWatcher;->mBoundVersion:I

    .line 62
    const/16 v1, -0x2710

    iput v1, p0, Lcom/android/server/location/MetokWatcher;->mBoundUserId:I

    .line 216
    new-instance v1, Lcom/android/server/location/MetokWatcher$1;

    invoke-direct {v1, p0}, Lcom/android/server/location/MetokWatcher$1;-><init>(Lcom/android/server/location/MetokWatcher;)V

    iput-object v1, p0, Lcom/android/server/location/MetokWatcher;->mPackageMonitor:Lcom/android/internal/content/PackageMonitor;

    .line 65
    iput-object p1, p0, Lcom/android/server/location/MetokWatcher;->mContext:Landroid/content/Context;

    .line 66
    iput-object p2, p0, Lcom/android/server/location/MetokWatcher;->mAction:Ljava/lang/String;

    .line 67
    iget-object v1, p0, Lcom/android/server/location/MetokWatcher;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/location/MetokWatcher;->mPm:Landroid/content/pm/PackageManager;

    .line 68
    iput-object p3, p0, Lcom/android/server/location/MetokWatcher;->mNewServiceWork:Ljava/lang/Runnable;

    .line 69
    iput-object p4, p0, Lcom/android/server/location/MetokWatcher;->mHandler:Landroid/os/Handler;

    .line 70
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 71
    .local v0, "resources":Landroid/content/res/Resources;
    const-string/jumbo v1, "com.xiaomi.metok"

    iput-object v1, p0, Lcom/android/server/location/MetokWatcher;->mServicePackageName:Ljava/lang/String;

    .line 64
    return-void
.end method

.method private bindBestPackageLocked(Ljava/lang/String;Z)Z
    .locals 17
    .param p1, "justCheckThisPackage"    # Ljava/lang/String;
    .param p2, "forceRebind"    # Z

    .prologue
    .line 128
    new-instance v6, Landroid/content/Intent;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/location/MetokWatcher;->mAction:Ljava/lang/String;

    invoke-direct {v6, v14}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 129
    .local v6, "intent":Landroid/content/Intent;
    if-eqz p1, :cond_0

    .line 130
    move-object/from16 v0, p1

    invoke-virtual {v6, v0}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 132
    :cond_0
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/location/MetokWatcher;->mPm:Landroid/content/pm/PackageManager;

    .line 134
    move-object/from16 v0, p0

    iget v15, v0, Lcom/android/server/location/MetokWatcher;->mCurrentUserId:I

    .line 133
    const v16, 0x10000080

    .line 132
    move/from16 v0, v16

    invoke-virtual {v14, v6, v0, v15}, Landroid/content/pm/PackageManager;->queryIntentServicesAsUser(Landroid/content/Intent;II)Ljava/util/List;

    move-result-object v11

    .line 135
    .local v11, "rInfos":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    const/high16 v4, -0x80000000

    .line 136
    .local v4, "bestVersion":I
    const/4 v2, 0x0

    .line 137
    .local v2, "bestComponent":Landroid/content/ComponentName;
    const/4 v3, 0x0

    .line 138
    .local v3, "bestIsMultiuser":Z
    if-eqz v11, :cond_3

    .line 139
    invoke-interface {v11}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v10

    .end local v2    # "bestComponent":Landroid/content/ComponentName;
    .end local v3    # "bestIsMultiuser":Z
    .local v10, "rInfo$iterator":Ljava/util/Iterator;
    :cond_1
    :goto_0
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v14

    if-eqz v14, :cond_3

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/content/pm/ResolveInfo;

    .line 141
    .local v9, "rInfo":Landroid/content/pm/ResolveInfo;
    iget-object v14, v9, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    invoke-virtual {v14}, Landroid/content/pm/ServiceInfo;->getComponentName()Landroid/content/ComponentName;

    move-result-object v5

    .line 142
    .local v5, "component":Landroid/content/ComponentName;
    invoke-virtual {v5}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v8

    .line 145
    .local v8, "packageName":Ljava/lang/String;
    const/high16 v13, -0x80000000

    .line 146
    .local v13, "version":I
    const/4 v7, 0x0

    .line 147
    .local v7, "isMultiuser":Z
    iget-object v14, v9, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v14, v14, Landroid/content/pm/ServiceInfo;->metaData:Landroid/os/Bundle;

    if-eqz v14, :cond_2

    .line 148
    iget-object v14, v9, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v14, v14, Landroid/content/pm/ServiceInfo;->metaData:Landroid/os/Bundle;

    .line 149
    const-string/jumbo v15, "serviceVersion"

    const/high16 v16, -0x80000000

    .line 148
    invoke-virtual/range {v14 .. v16}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v13

    .line 150
    iget-object v14, v9, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v14, v14, Landroid/content/pm/ServiceInfo;->metaData:Landroid/os/Bundle;

    const-string/jumbo v15, "serviceIsMultiuser"

    invoke-virtual {v14, v15}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v7

    .line 153
    .end local v7    # "isMultiuser":Z
    :cond_2
    if-le v13, v4, :cond_1

    .line 154
    move v4, v13

    .line 155
    move-object v2, v5

    .line 156
    .local v2, "bestComponent":Landroid/content/ComponentName;
    move v3, v7

    .local v3, "bestIsMultiuser":Z
    goto :goto_0

    .line 174
    .end local v2    # "bestComponent":Landroid/content/ComponentName;
    .end local v3    # "bestIsMultiuser":Z
    .end local v5    # "component":Landroid/content/ComponentName;
    .end local v8    # "packageName":Ljava/lang/String;
    .end local v9    # "rInfo":Landroid/content/pm/ResolveInfo;
    .end local v10    # "rInfo$iterator":Ljava/util/Iterator;
    .end local v13    # "version":I
    :cond_3
    if-nez v2, :cond_4

    .line 175
    const-string/jumbo v14, "MetokWatcher"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v16, "Odd, no component found for service "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/location/MetokWatcher;->mAction:Ljava/lang/String;

    move-object/from16 v16, v0

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 176
    invoke-direct/range {p0 .. p0}, Lcom/android/server/location/MetokWatcher;->unbindLocked()V

    .line 177
    const/4 v14, 0x0

    return v14

    .line 180
    :cond_4
    if-eqz v3, :cond_5

    const/4 v12, 0x0

    .line 181
    .local v12, "userId":I
    :goto_1
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/location/MetokWatcher;->mBoundComponent:Landroid/content/ComponentName;

    invoke-static {v2, v14}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_7

    .line 182
    move-object/from16 v0, p0

    iget v14, v0, Lcom/android/server/location/MetokWatcher;->mBoundVersion:I

    if-ne v4, v14, :cond_7

    move-object/from16 v0, p0

    iget v14, v0, Lcom/android/server/location/MetokWatcher;->mBoundUserId:I

    if-ne v12, v14, :cond_6

    const/4 v1, 0x1

    .line 183
    .local v1, "alreadyBound":Z
    :goto_2
    if-nez p2, :cond_8

    if-eqz v1, :cond_8

    .line 187
    :goto_3
    const/4 v14, 0x1

    return v14

    .line 180
    .end local v1    # "alreadyBound":Z
    .end local v12    # "userId":I
    :cond_5
    move-object/from16 v0, p0

    iget v12, v0, Lcom/android/server/location/MetokWatcher;->mCurrentUserId:I

    .restart local v12    # "userId":I
    goto :goto_1

    .line 182
    :cond_6
    const/4 v1, 0x0

    .restart local v1    # "alreadyBound":Z
    goto :goto_2

    .line 181
    .end local v1    # "alreadyBound":Z
    :cond_7
    const/4 v1, 0x0

    .restart local v1    # "alreadyBound":Z
    goto :goto_2

    .line 184
    :cond_8
    invoke-direct/range {p0 .. p0}, Lcom/android/server/location/MetokWatcher;->unbindLocked()V

    .line 185
    move-object/from16 v0, p0

    invoke-direct {v0, v2, v4, v12}, Lcom/android/server/location/MetokWatcher;->bindToPackageLocked(Landroid/content/ComponentName;II)V

    goto :goto_3
.end method

.method private bindToPackageLocked(Landroid/content/ComponentName;II)V
    .locals 4
    .param p1, "component"    # Landroid/content/ComponentName;
    .param p2, "version"    # I
    .param p3, "userId"    # I

    .prologue
    .line 204
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/android/server/location/MetokWatcher;->mAction:Ljava/lang/String;

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 205
    .local v0, "intent":Landroid/content/Intent;
    invoke-virtual {v0, p1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 206
    iput-object p1, p0, Lcom/android/server/location/MetokWatcher;->mBoundComponent:Landroid/content/ComponentName;

    .line 207
    invoke-virtual {p1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/location/MetokWatcher;->mBoundPackageName:Ljava/lang/String;

    .line 208
    iput p2, p0, Lcom/android/server/location/MetokWatcher;->mBoundVersion:I

    .line 209
    iput p3, p0, Lcom/android/server/location/MetokWatcher;->mBoundUserId:I

    .line 211
    iget-object v1, p0, Lcom/android/server/location/MetokWatcher;->mContext:Landroid/content/Context;

    .line 213
    new-instance v2, Landroid/os/UserHandle;

    invoke-direct {v2, p3}, Landroid/os/UserHandle;-><init>(I)V

    .line 212
    const v3, 0x40000005    # 2.0000012f

    .line 211
    invoke-virtual {v1, v0, p0, v3, v2}, Landroid/content/Context;->bindServiceAsUser(Landroid/content/Intent;Landroid/content/ServiceConnection;ILandroid/os/UserHandle;)Z

    .line 203
    return-void
.end method

.method private unbindLocked()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 192
    iget-object v0, p0, Lcom/android/server/location/MetokWatcher;->mBoundComponent:Landroid/content/ComponentName;

    .line 193
    .local v0, "component":Landroid/content/ComponentName;
    iput-object v1, p0, Lcom/android/server/location/MetokWatcher;->mBoundComponent:Landroid/content/ComponentName;

    .line 194
    iput-object v1, p0, Lcom/android/server/location/MetokWatcher;->mBoundPackageName:Ljava/lang/String;

    .line 195
    const/high16 v1, -0x80000000

    iput v1, p0, Lcom/android/server/location/MetokWatcher;->mBoundVersion:I

    .line 196
    const/16 v1, -0x2710

    iput v1, p0, Lcom/android/server/location/MetokWatcher;->mBoundUserId:I

    .line 197
    if-eqz v0, :cond_0

    .line 199
    iget-object v1, p0, Lcom/android/server/location/MetokWatcher;->mContext:Landroid/content/Context;

    invoke-virtual {v1, p0}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    .line 190
    :cond_0
    return-void
.end method


# virtual methods
.method public getBinder()Landroid/os/IBinder;
    .locals 2

    .prologue
    .line 293
    iget-object v0, p0, Lcom/android/server/location/MetokWatcher;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 294
    :try_start_0
    iget-object v1, p0, Lcom/android/server/location/MetokWatcher;->mBoundService:Landroid/os/IBinder;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    .line 293
    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public getPackageName()Ljava/lang/String;
    .locals 2

    .prologue
    .line 281
    iget-object v0, p0, Lcom/android/server/location/MetokWatcher;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 282
    :try_start_0
    iget-object v1, p0, Lcom/android/server/location/MetokWatcher;->mBoundPackageName:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    .line 281
    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public getVersion()I
    .locals 2

    .prologue
    .line 287
    iget-object v0, p0, Lcom/android/server/location/MetokWatcher;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 288
    :try_start_0
    iget v1, p0, Lcom/android/server/location/MetokWatcher;->mBoundVersion:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return v1

    .line 287
    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 4
    .param p1, "component"    # Landroid/content/ComponentName;
    .param p2, "binder"    # Landroid/os/IBinder;

    .prologue
    .line 256
    iget-object v1, p0, Lcom/android/server/location/MetokWatcher;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 257
    :try_start_0
    iget-object v0, p0, Lcom/android/server/location/MetokWatcher;->mBoundComponent:Landroid/content/ComponentName;

    invoke-virtual {p1, v0}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 259
    iput-object p2, p0, Lcom/android/server/location/MetokWatcher;->mBoundService:Landroid/os/IBinder;

    .line 260
    iget-object v0, p0, Lcom/android/server/location/MetokWatcher;->mHandler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/location/MetokWatcher;->mNewServiceWork:Ljava/lang/Runnable;

    if-eqz v0, :cond_0

    .line 261
    iget-object v0, p0, Lcom/android/server/location/MetokWatcher;->mHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/android/server/location/MetokWatcher;->mNewServiceWork:Ljava/lang/Runnable;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    :goto_0
    monitor-exit v1

    .line 255
    return-void

    .line 264
    :cond_1
    :try_start_1
    const-string/jumbo v0, "MetokWatcher"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "unexpected onServiceConnected: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 256
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 2
    .param p1, "component"    # Landroid/content/ComponentName;

    .prologue
    .line 271
    iget-object v1, p0, Lcom/android/server/location/MetokWatcher;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 274
    :try_start_0
    iget-object v0, p0, Lcom/android/server/location/MetokWatcher;->mBoundComponent:Landroid/content/ComponentName;

    invoke-virtual {p1, v0}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 275
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/location/MetokWatcher;->mBoundService:Landroid/os/IBinder;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit v1

    .line 270
    return-void

    .line 271
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public start()Z
    .locals 7

    .prologue
    const/4 v6, 0x1

    const/4 v4, 0x0

    .line 82
    iget-object v1, p0, Lcom/android/server/location/MetokWatcher;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 83
    :try_start_0
    iget-object v0, p0, Lcom/android/server/location/MetokWatcher;->mServicePackageName:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-direct {p0, v0, v2}, Lcom/android/server/location/MetokWatcher;->bindBestPackageLocked(Ljava/lang/String;Z)Z

    move-result v0

    if-nez v0, :cond_0

    .line 84
    const-string/jumbo v0, "MetokWatcher"

    const-string/jumbo v2, "failed to bind metok, when we are booting now"

    invoke-static {v0, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit v1

    .line 89
    new-instance v3, Landroid/content/IntentFilter;

    invoke-direct {v3}, Landroid/content/IntentFilter;-><init>()V

    .line 90
    .local v3, "intentFilter":Landroid/content/IntentFilter;
    const-string/jumbo v0, "android.intent.action.USER_SWITCHED"

    invoke-virtual {v3, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 91
    const-string/jumbo v0, "android.intent.action.USER_UNLOCKED"

    invoke-virtual {v3, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 92
    iget-object v0, p0, Lcom/android/server/location/MetokWatcher;->mContext:Landroid/content/Context;

    new-instance v1, Lcom/android/server/location/MetokWatcher$2;

    invoke-direct {v1, p0}, Lcom/android/server/location/MetokWatcher$2;-><init>(Lcom/android/server/location/MetokWatcher;)V

    .line 105
    sget-object v2, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    iget-object v5, p0, Lcom/android/server/location/MetokWatcher;->mHandler:Landroid/os/Handler;

    .line 92
    invoke-virtual/range {v0 .. v5}, Landroid/content/Context;->registerReceiverAsUser(Landroid/content/BroadcastReceiver;Landroid/os/UserHandle;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 108
    iget-object v0, p0, Lcom/android/server/location/MetokWatcher;->mServicePackageName:Ljava/lang/String;

    if-nez v0, :cond_1

    .line 109
    iget-object v0, p0, Lcom/android/server/location/MetokWatcher;->mPackageMonitor:Lcom/android/internal/content/PackageMonitor;

    iget-object v1, p0, Lcom/android/server/location/MetokWatcher;->mContext:Landroid/content/Context;

    sget-object v2, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v0, v1, v4, v2, v6}, Lcom/android/internal/content/PackageMonitor;->register(Landroid/content/Context;Landroid/os/Looper;Landroid/os/UserHandle;Z)V

    .line 112
    :cond_1
    return v6

    .line 82
    .end local v3    # "intentFilter":Landroid/content/IntentFilter;
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public switchUser(I)V
    .locals 3
    .param p1, "userId"    # I

    .prologue
    .line 299
    iget-object v1, p0, Lcom/android/server/location/MetokWatcher;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 300
    :try_start_0
    iput p1, p0, Lcom/android/server/location/MetokWatcher;->mCurrentUserId:I

    .line 301
    iget-object v0, p0, Lcom/android/server/location/MetokWatcher;->mServicePackageName:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-direct {p0, v0, v2}, Lcom/android/server/location/MetokWatcher;->bindBestPackageLocked(Ljava/lang/String;Z)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    .line 298
    return-void

    .line 299
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public unlockUser(I)V
    .locals 3
    .param p1, "userId"    # I

    .prologue
    .line 307
    iget-object v1, p0, Lcom/android/server/location/MetokWatcher;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 308
    :try_start_0
    iget v0, p0, Lcom/android/server/location/MetokWatcher;->mCurrentUserId:I

    if-ne p1, v0, :cond_0

    .line 309
    iget-object v0, p0, Lcom/android/server/location/MetokWatcher;->mServicePackageName:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-direct {p0, v0, v2}, Lcom/android/server/location/MetokWatcher;->bindBestPackageLocked(Ljava/lang/String;Z)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit v1

    .line 305
    return-void

    .line 307
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method
