.class public Lcom/android/server/LocationManagerServiceInjector;
.super Ljava/lang/Object;
.source "LocationManagerServiceInjector.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/LocationManagerServiceInjector$1;
    }
.end annotation


# static fields
.field private static TAG:Ljava/lang/String;

.field private static mLastProviderRequest:Lcom/android/internal/location/ProviderRequest;

.field private static mMetok:Lcom/android/server/location/MetokProxy;

.field private static final sBackupGpsListeners:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/location/IGnssStatusListener;",
            ">;>;>;"
        }
    .end annotation
.end field

.field private static final sBackupReceivers:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Object;",
            "Lcom/android/server/LocationManagerService$Receiver;",
            ">;"
        }
    .end annotation
.end field

.field private static sContext:Landroid/content/Context;

.field private static final sGpsStatusListeners:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/location/IGnssStatusListener;",
            ">;>;>;"
        }
    .end annotation
.end field

.field private static sGpsStatusProviderRef:Landroid/location/IGnssStatusProvider;

.field private static sLocationManagerService:Lcom/android/server/LocationManagerService;

.field private static sLock:Ljava/lang/Object;

.field private static sPolicyListener:Landroid/location/ILocationPolicyListener;

.field private static sPolicyManager:Landroid/location/ILocationPolicyManager;

.field private static sRealProviders:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/android/server/location/LocationProviderInterface;",
            ">;"
        }
    .end annotation
.end field

.field private static sReceivers:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Object;",
            "Lcom/android/server/LocationManagerService$Receiver;",
            ">;"
        }
    .end annotation
.end field

.field private static sRestrictBackgroundAll:Z

.field private static final sUidRules:Landroid/util/SparseIntArray;


# direct methods
.method static synthetic -get0()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/android/server/LocationManagerServiceInjector;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic -get1()Ljava/lang/Object;
    .locals 1

    sget-object v0, Lcom/android/server/LocationManagerServiceInjector;->sLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic -get2()Landroid/util/SparseIntArray;
    .locals 1

    sget-object v0, Lcom/android/server/LocationManagerServiceInjector;->sUidRules:Landroid/util/SparseIntArray;

    return-object v0
.end method

.method static synthetic -set0(Z)Z
    .locals 0

    sput-boolean p0, Lcom/android/server/LocationManagerServiceInjector;->sRestrictBackgroundAll:Z

    return p0
.end method

.method static synthetic -wrap0(II)V
    .locals 0
    .param p0, "uid"    # I
    .param p1, "uidRules"    # I

    .prologue
    invoke-static {p0, p1}, Lcom/android/server/LocationManagerServiceInjector;->checkCurrentLocationRequest(II)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 35
    const-string/jumbo v0, "LocationManagerInjector"

    sput-object v0, Lcom/android/server/LocationManagerServiceInjector;->TAG:Ljava/lang/String;

    .line 52
    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/server/LocationManagerServiceInjector;->sRestrictBackgroundAll:Z

    .line 59
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 58
    sput-object v0, Lcom/android/server/LocationManagerServiceInjector;->sBackupReceivers:Ljava/util/HashMap;

    .line 62
    new-instance v0, Landroid/util/SparseIntArray;

    invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V

    sput-object v0, Lcom/android/server/LocationManagerServiceInjector;->sUidRules:Landroid/util/SparseIntArray;

    .line 66
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 65
    sput-object v0, Lcom/android/server/LocationManagerServiceInjector;->sGpsStatusListeners:Ljava/util/HashMap;

    .line 70
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 69
    sput-object v0, Lcom/android/server/LocationManagerServiceInjector;->sBackupGpsListeners:Ljava/util/HashMap;

    .line 326
    new-instance v0, Lcom/android/server/LocationManagerServiceInjector$1;

    invoke-direct {v0}, Lcom/android/server/LocationManagerServiceInjector$1;-><init>()V

    sput-object v0, Lcom/android/server/LocationManagerServiceInjector;->sPolicyListener:Landroid/location/ILocationPolicyListener;

    .line 34
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static bindLocationPolicyService(Landroid/location/ILocationPolicyManager;)V
    .locals 3
    .param p0, "policyManager"    # Landroid/location/ILocationPolicyManager;

    .prologue
    .line 87
    sput-object p0, Lcom/android/server/LocationManagerServiceInjector;->sPolicyManager:Landroid/location/ILocationPolicyManager;

    .line 89
    :try_start_0
    sget-object v1, Lcom/android/server/LocationManagerServiceInjector;->sPolicyManager:Landroid/location/ILocationPolicyManager;

    sget-object v2, Lcom/android/server/LocationManagerServiceInjector;->sPolicyListener:Landroid/location/ILocationPolicyListener;

    invoke-interface {v1, v2}, Landroid/location/ILocationPolicyManager;->registerListener(Landroid/location/ILocationPolicyListener;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 86
    :goto_0
    return-void

    .line 90
    :catch_0
    move-exception v0

    .local v0, "e":Landroid/os/RemoteException;
    goto :goto_0
.end method

.method private static checkCurrentLocationRequest(II)V
    .locals 8
    .param p0, "uid"    # I
    .param p1, "uidRules"    # I

    .prologue
    .line 259
    if-eqz p1, :cond_3

    .line 260
    sget-object v6, Lcom/android/server/LocationManagerServiceInjector;->sLock:Ljava/lang/Object;

    monitor-enter v6

    .line 262
    :try_start_0
    sget-object v5, Lcom/android/server/LocationManagerServiceInjector;->sGpsStatusListeners:Ljava/util/HashMap;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/ArrayList;

    .line 263
    .local v4, "listeners":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/ref/WeakReference<Landroid/location/IGnssStatusListener;>;>;"
    if-eqz v4, :cond_2

    .line 264
    sget-object v5, Lcom/android/server/LocationManagerServiceInjector;->TAG:Ljava/lang/String;

    const-string/jumbo v7, "remove gps listener from GpsStatusProvider"

    invoke-static {v5, v7}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 265
    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "l$iterator":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/ref/WeakReference;

    .line 266
    .local v2, "l":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Landroid/location/IGnssStatusListener;>;"
    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v5

    if-eqz v5, :cond_0

    .line 268
    :try_start_1
    sget-object v7, Lcom/android/server/LocationManagerServiceInjector;->sGpsStatusProviderRef:Landroid/location/IGnssStatusProvider;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/location/IGnssStatusListener;

    invoke-interface {v7, v5}, Landroid/location/IGnssStatusProvider;->unregisterGnssStatusCallback(Landroid/location/IGnssStatusListener;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 269
    :catch_0
    move-exception v1

    .line 270
    .local v1, "e":Ljava/lang/Exception;
    :try_start_2
    sget-object v5, Lcom/android/server/LocationManagerServiceInjector;->TAG:Ljava/lang/String;

    const-string/jumbo v7, "mGpsStatusProvider.removeGpsStatusListener failed"

    invoke-static {v5, v7, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 260
    .end local v1    # "e":Ljava/lang/Exception;
    .end local v2    # "l":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Landroid/location/IGnssStatusListener;>;"
    .end local v3    # "l$iterator":Ljava/util/Iterator;
    .end local v4    # "listeners":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/ref/WeakReference<Landroid/location/IGnssStatusListener;>;>;"
    :catchall_0
    move-exception v5

    monitor-exit v6

    throw v5

    .line 273
    .restart local v3    # "l$iterator":Ljava/util/Iterator;
    .restart local v4    # "listeners":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/ref/WeakReference<Landroid/location/IGnssStatusListener;>;>;"
    :cond_1
    :try_start_3
    sget-object v5, Lcom/android/server/LocationManagerServiceInjector;->TAG:Ljava/lang/String;

    const-string/jumbo v7, "backup gps listener in mBackupGpsListeners"

    invoke-static {v5, v7}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 274
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-lez v5, :cond_2

    .line 275
    sget-object v5, Lcom/android/server/LocationManagerServiceInjector;->sBackupGpsListeners:Ljava/util/HashMap;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v5, v7, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 279
    .end local v3    # "l$iterator":Ljava/util/Iterator;
    :cond_2
    invoke-static {p0}, Lcom/android/server/LocationManagerServiceInjector;->removeAndBackupLocationRequestIfNeeded(I)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :goto_1
    monitor-exit v6

    .line 258
    return-void

    .line 283
    .end local v4    # "listeners":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/ref/WeakReference<Landroid/location/IGnssStatusListener;>;>;"
    :cond_3
    sget-object v6, Lcom/android/server/LocationManagerServiceInjector;->sLock:Ljava/lang/Object;

    monitor-enter v6

    .line 285
    :try_start_4
    sget-object v5, Lcom/android/server/LocationManagerServiceInjector;->sBackupGpsListeners:Ljava/util/HashMap;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/ArrayList;

    .line 286
    .restart local v4    # "listeners":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/ref/WeakReference<Landroid/location/IGnssStatusListener;>;>;"
    if-eqz v4, :cond_6

    .line 287
    sget-object v5, Lcom/android/server/LocationManagerServiceInjector;->TAG:Ljava/lang/String;

    const-string/jumbo v7, "add gps listener to GpsStatusProvider"

    invoke-static {v5, v7}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 288
    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .restart local v3    # "l$iterator":Ljava/util/Iterator;
    :cond_4
    :goto_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_5

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/ref/WeakReference;

    .line 289
    .restart local v2    # "l":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Landroid/location/IGnssStatusListener;>;"
    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    move-result-object v5

    if-eqz v5, :cond_4

    .line 291
    :try_start_5
    sget-object v7, Lcom/android/server/LocationManagerServiceInjector;->sGpsStatusProviderRef:Landroid/location/IGnssStatusProvider;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/location/IGnssStatusListener;

    invoke-interface {v7, v5}, Landroid/location/IGnssStatusProvider;->registerGnssStatusCallback(Landroid/location/IGnssStatusListener;)V
    :try_end_5
    .catch Landroid/os/DeadObjectException; {:try_start_5 .. :try_end_5} :catch_1
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_2
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    goto :goto_2

    .line 292
    :catch_1
    move-exception v0

    .line 293
    .local v0, "e":Landroid/os/DeadObjectException;
    :try_start_6
    sget-object v5, Lcom/android/server/LocationManagerServiceInjector;->TAG:Ljava/lang/String;

    const-string/jumbo v7, "listener already dead"

    invoke-static {v5, v7}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    goto :goto_2

    .line 283
    .end local v0    # "e":Landroid/os/DeadObjectException;
    .end local v2    # "l":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Landroid/location/IGnssStatusListener;>;"
    .end local v3    # "l$iterator":Ljava/util/Iterator;
    .end local v4    # "listeners":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/ref/WeakReference<Landroid/location/IGnssStatusListener;>;>;"
    :catchall_1
    move-exception v5

    monitor-exit v6

    throw v5

    .line 295
    .restart local v2    # "l":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Landroid/location/IGnssStatusListener;>;"
    .restart local v3    # "l$iterator":Ljava/util/Iterator;
    .restart local v4    # "listeners":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/ref/WeakReference<Landroid/location/IGnssStatusListener;>;>;"
    :catch_2
    move-exception v1

    .line 296
    .restart local v1    # "e":Ljava/lang/Exception;
    :try_start_7
    sget-object v5, Lcom/android/server/LocationManagerServiceInjector;->TAG:Ljava/lang/String;

    const-string/jumbo v7, "mGpsStatusProvider.addGpsStatusListener failed"

    invoke-static {v5, v7, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_2

    .line 299
    .end local v1    # "e":Ljava/lang/Exception;
    .end local v2    # "l":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Landroid/location/IGnssStatusListener;>;"
    :cond_5
    sget-object v5, Lcom/android/server/LocationManagerServiceInjector;->TAG:Ljava/lang/String;

    const-string/jumbo v7, "remove gps listener in mBackupGpsListeners"

    invoke-static {v5, v7}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 300
    sget-object v5, Lcom/android/server/LocationManagerServiceInjector;->sBackupGpsListeners:Ljava/util/HashMap;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 303
    .end local v3    # "l$iterator":Ljava/util/Iterator;
    :cond_6
    invoke-static {p0}, Lcom/android/server/LocationManagerServiceInjector;->restoreBlockedLocationRequestIfNeeded(I)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    goto :goto_1
.end method

.method public static checkIfRequestBlockedByPolicy(ILjava/lang/String;Landroid/location/IGnssStatusListener;)Z
    .locals 7
    .param p0, "uid"    # I
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "listener"    # Landroid/location/IGnssStatusListener;

    .prologue
    const/4 v6, 0x0

    .line 116
    invoke-static {p0}, Lcom/android/server/LocationManagerServiceInjector;->isRequestBlockedByPolicy(I)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 117
    sget-object v3, Lcom/android/server/LocationManagerServiceInjector;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " addGpsStatusListener("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, ") is blocked by policy"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 118
    const/4 v3, 0x1

    return v3

    .line 121
    :cond_0
    sget-object v4, Lcom/android/server/LocationManagerServiceInjector;->sLock:Ljava/lang/Object;

    monitor-enter v4

    .line 122
    :try_start_0
    sget-object v3, Lcom/android/server/LocationManagerServiceInjector;->sGpsStatusListeners:Ljava/util/HashMap;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/ArrayList;

    .line 123
    .local v2, "listeners":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/ref/WeakReference<Landroid/location/IGnssStatusListener;>;>;"
    if-nez v2, :cond_1

    .line 124
    new-instance v2, Ljava/util/ArrayList;

    .end local v2    # "listeners":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/ref/WeakReference<Landroid/location/IGnssStatusListener;>;>;"
    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 126
    .restart local v2    # "listeners":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/ref/WeakReference<Landroid/location/IGnssStatusListener;>;>;"
    :cond_1
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "l$iterator":Ljava/util/Iterator;
    :cond_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/ref/WeakReference;

    .line 127
    .local v0, "l":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Landroid/location/IGnssStatusListener;>;"
    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_2

    .line 128
    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/location/IGnssStatusListener;

    invoke-interface {v3}, Landroid/location/IGnssStatusListener;->asBinder()Landroid/os/IBinder;

    move-result-object v3

    invoke-interface {p2}, Landroid/location/IGnssStatusListener;->asBinder()Landroid/os/IBinder;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v3

    if-eqz v3, :cond_2

    monitor-exit v4

    .line 130
    return v6

    .line 133
    .end local v0    # "l":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Landroid/location/IGnssStatusListener;>;"
    :cond_3
    :try_start_1
    new-instance v3, Ljava/lang/ref/WeakReference;

    invoke-direct {v3, p2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 134
    sget-object v3, Lcom/android/server/LocationManagerServiceInjector;->sGpsStatusListeners:Ljava/util/HashMap;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v3, v5, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit v4

    .line 136
    return v6

    .line 121
    .end local v1    # "l$iterator":Ljava/util/Iterator;
    .end local v2    # "listeners":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/ref/WeakReference<Landroid/location/IGnssStatusListener;>;>;"
    :catchall_0
    move-exception v3

    monitor-exit v4

    throw v3
.end method

.method public static checkIfRequestBlockedByPolicy(ILjava/lang/String;Landroid/location/LocationRequest;)Z
    .locals 3
    .param p0, "uid"    # I
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "request"    # Landroid/location/LocationRequest;

    .prologue
    .line 107
    invoke-static {p0}, Lcom/android/server/LocationManagerServiceInjector;->isRequestBlockedByPolicy(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 108
    sget-object v0, Lcom/android/server/LocationManagerServiceInjector;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ") "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p2}, Landroid/location/LocationRequest;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " is blocked by policy"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 109
    const/4 v0, 0x1

    return v0

    .line 111
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public static checkWhenRemoveListenerLocked(ILandroid/location/IGnssStatusListener;)Z
    .locals 7
    .param p0, "uid"    # I
    .param p1, "listener"    # Landroid/location/IGnssStatusListener;

    .prologue
    const/4 v6, 0x0

    .line 166
    sget-object v4, Lcom/android/server/LocationManagerServiceInjector;->sGpsStatusListeners:Ljava/util/HashMap;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/ArrayList;

    .line 167
    .local v2, "listeners":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/ref/WeakReference<Landroid/location/IGnssStatusListener;>;>;"
    if-eqz v2, :cond_4

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-eqz v4, :cond_4

    .line 168
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 169
    .local v3, "tr":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/ref/WeakReference<Landroid/location/IGnssStatusListener;>;>;"
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "l$iterator":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/ref/WeakReference;

    .line 170
    .local v0, "l":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Landroid/location/IGnssStatusListener;>;"
    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v4

    if-nez v4, :cond_1

    .line 171
    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 174
    :cond_1
    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/location/IGnssStatusListener;

    invoke-interface {v4}, Landroid/location/IGnssStatusListener;->asBinder()Landroid/os/IBinder;

    move-result-object v4

    invoke-interface {p1}, Landroid/location/IGnssStatusListener;->asBinder()Landroid/os/IBinder;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 175
    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 178
    .end local v0    # "l":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Landroid/location/IGnssStatusListener;>;"
    :cond_2
    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/ref/WeakReference;

    .line 179
    .restart local v0    # "l":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Landroid/location/IGnssStatusListener;>;"
    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    goto :goto_1

    .line 181
    .end local v0    # "l":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Landroid/location/IGnssStatusListener;>;"
    :cond_3
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-nez v4, :cond_4

    .line 182
    sget-object v4, Lcom/android/server/LocationManagerServiceInjector;->sGpsStatusListeners:Ljava/util/HashMap;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 187
    .end local v1    # "l$iterator":Ljava/util/Iterator;
    .end local v3    # "tr":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/ref/WeakReference<Landroid/location/IGnssStatusListener;>;>;"
    :cond_4
    sget-object v4, Lcom/android/server/LocationManagerServiceInjector;->sBackupGpsListeners:Ljava/util/HashMap;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    if-eqz v4, :cond_5

    .line 188
    sget-object v4, Lcom/android/server/LocationManagerServiceInjector;->sBackupGpsListeners:Ljava/util/HashMap;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 189
    const/4 v4, 0x1

    return v4

    .line 192
    :cond_5
    return v6
.end method

.method public static checkWhenRemoveLocationRequestLocked(Landroid/location/ILocationListener;Landroid/app/PendingIntent;)Z
    .locals 5
    .param p0, "listener"    # Landroid/location/ILocationListener;
    .param p1, "intent"    # Landroid/app/PendingIntent;

    .prologue
    .line 142
    if-nez p1, :cond_0

    if-nez p0, :cond_0

    .line 143
    new-instance v3, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v4, "need either listener or intent"

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 144
    :cond_0
    if-eqz p1, :cond_1

    if-eqz p0, :cond_1

    .line 145
    new-instance v3, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v4, "cannot register both listener and intent"

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 146
    :cond_1
    if-eqz p1, :cond_2

    .line 147
    sget-object v3, Lcom/android/server/LocationManagerServiceInjector;->sBackupReceivers:Ljava/util/HashMap;

    invoke-virtual {v3, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/LocationManagerService$Receiver;

    .line 148
    .local v2, "receiver":Lcom/android/server/LocationManagerService$Receiver;
    move-object v1, p1

    .line 156
    .local v1, "key":Ljava/lang/Object;
    :goto_0
    if-eqz v2, :cond_3

    .line 157
    sget-object v3, Lcom/android/server/LocationManagerServiceInjector;->sBackupReceivers:Ljava/util/HashMap;

    invoke-virtual {v3, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 158
    const/4 v3, 0x1

    return v3

    .line 150
    .end local v1    # "key":Ljava/lang/Object;
    .end local v2    # "receiver":Lcom/android/server/LocationManagerService$Receiver;
    :cond_2
    invoke-interface {p0}, Landroid/location/ILocationListener;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    .line 151
    .local v0, "binder":Landroid/os/IBinder;
    sget-object v3, Lcom/android/server/LocationManagerServiceInjector;->sBackupReceivers:Ljava/util/HashMap;

    invoke-virtual {v3, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/LocationManagerService$Receiver;

    .line 152
    .restart local v2    # "receiver":Lcom/android/server/LocationManagerService$Receiver;
    move-object v1, v0

    .restart local v1    # "key":Ljava/lang/Object;
    goto :goto_0

    .line 161
    .end local v0    # "binder":Landroid/os/IBinder;
    :cond_3
    const/4 v3, 0x0

    return v3
.end method

.method public static createAndBindLP(Ljava/lang/String;Landroid/os/Handler;)V
    .locals 7
    .param p0, "action"    # Ljava/lang/String;
    .param p1, "handler"    # Landroid/os/Handler;

    .prologue
    const/4 v6, 0x0

    .line 349
    :try_start_0
    sget-object v4, Lcom/android/server/LocationManagerServiceInjector;->sContext:Landroid/content/Context;

    invoke-static {v4, p0, p1}, Lcom/android/server/location/MetokProxy;->createAndBind(Landroid/content/Context;Ljava/lang/String;Landroid/os/Handler;)Lcom/android/server/location/MetokProxy;

    move-result-object v4

    sput-object v4, Lcom/android/server/LocationManagerServiceInjector;->mMetok:Lcom/android/server/location/MetokProxy;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 355
    sget-object v4, Lcom/android/server/LocationManagerServiceInjector;->mMetok:Lcom/android/server/location/MetokProxy;

    if-eqz v4, :cond_2

    .line 356
    sget-object v4, Lcom/android/server/LocationManagerServiceInjector;->TAG:Ljava/lang/String;

    const-string/jumbo v5, "bind to metok LP"

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 357
    sget-object v4, Lcom/android/server/LocationManagerServiceInjector;->sRealProviders:Ljava/util/HashMap;

    const-string/jumbo v5, "gps"

    invoke-virtual {v4, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/location/LocationProviderInterface;

    .line 358
    .local v2, "gpsProvider":Lcom/android/server/location/LocationProviderInterface;
    if-eqz v2, :cond_0

    .line 359
    sget-object v4, Lcom/android/server/LocationManagerServiceInjector;->mMetok:Lcom/android/server/location/MetokProxy;

    invoke-virtual {v4, v2}, Lcom/android/server/location/MetokProxy;->setGpsProvider(Lcom/android/server/location/LocationProviderInterface;)V

    .line 361
    :cond_0
    sget-object v4, Lcom/android/server/LocationManagerServiceInjector;->sRealProviders:Ljava/util/HashMap;

    const-string/jumbo v5, "network"

    invoke-virtual {v4, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/location/LocationProviderInterface;

    .line 362
    .local v3, "networkProvider":Lcom/android/server/location/LocationProviderInterface;
    if-eqz v3, :cond_1

    .line 363
    sget-object v4, Lcom/android/server/LocationManagerServiceInjector;->mMetok:Lcom/android/server/location/MetokProxy;

    invoke-virtual {v4, v3}, Lcom/android/server/location/MetokProxy;->setNetworkProvider(Lcom/android/server/location/LocationProviderInterface;)V

    .line 365
    :cond_1
    sget-object v4, Lcom/android/server/LocationManagerServiceInjector;->sRealProviders:Ljava/util/HashMap;

    const-string/jumbo v5, "fused"

    invoke-virtual {v4, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/location/LocationProviderInterface;

    .line 366
    .local v1, "fusedProvider":Lcom/android/server/location/LocationProviderInterface;
    if-eqz v1, :cond_2

    .line 367
    sget-object v4, Lcom/android/server/LocationManagerServiceInjector;->mMetok:Lcom/android/server/location/MetokProxy;

    invoke-virtual {v4, v1}, Lcom/android/server/location/MetokProxy;->setFusedProvider(Lcom/android/server/location/LocationProviderInterface;)V

    .line 347
    .end local v1    # "fusedProvider":Lcom/android/server/location/LocationProviderInterface;
    .end local v2    # "gpsProvider":Lcom/android/server/location/LocationProviderInterface;
    .end local v3    # "networkProvider":Lcom/android/server/location/LocationProviderInterface;
    :cond_2
    return-void

    .line 350
    :catch_0
    move-exception v0

    .line 351
    .local v0, "e":Ljava/lang/Exception;
    sget-object v4, Lcom/android/server/LocationManagerServiceInjector;->TAG:Ljava/lang/String;

    const-string/jumbo v5, "failed to bind to metok LP"

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 352
    sput-object v6, Lcom/android/server/LocationManagerServiceInjector;->mMetok:Lcom/android/server/location/MetokProxy;

    .line 353
    return-void
.end method

.method public static dumpLp(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 1
    .param p0, "fd"    # Ljava/io/FileDescriptor;
    .param p1, "pw"    # Ljava/io/PrintWriter;
    .param p2, "args"    # [Ljava/lang/String;

    .prologue
    .line 446
    sget-object v0, Lcom/android/server/LocationManagerServiceInjector;->mMetok:Lcom/android/server/location/MetokProxy;

    if-eqz v0, :cond_0

    .line 447
    sget-object v0, Lcom/android/server/LocationManagerServiceInjector;->mMetok:Lcom/android/server/location/MetokProxy;

    invoke-virtual {v0, p0, p1, p2}, Lcom/android/server/location/MetokProxy;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    .line 445
    :cond_0
    return-void
.end method

.method static getCurrentLocationRequestUids()Ljava/util/ArrayList;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .prologue
    .line 309
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 310
    .local v0, "currentLrUids":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    sget-object v7, Lcom/android/server/LocationManagerServiceInjector;->sLock:Ljava/lang/Object;

    monitor-enter v7

    .line 312
    :try_start_0
    sget-object v6, Lcom/android/server/LocationManagerServiceInjector;->sGpsStatusListeners:Ljava/util/HashMap;

    invoke-virtual {v6}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v6

    invoke-interface {v6}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, "k$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    .line 313
    .local v3, "k":Ljava/lang/Integer;
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 310
    .end local v3    # "k":Ljava/lang/Integer;
    .end local v4    # "k$iterator":Ljava/util/Iterator;
    :catchall_0
    move-exception v6

    monitor-exit v7

    throw v6

    .line 316
    .restart local v4    # "k$iterator":Ljava/util/Iterator;
    :cond_0
    :try_start_1
    sget-object v6, Lcom/android/server/LocationManagerServiceInjector;->sReceivers:Ljava/util/HashMap;

    invoke-virtual {v6}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v6

    invoke-interface {v6}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "entry$iterator":Ljava/util/Iterator;
    :cond_1
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 317
    .local v1, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Object;Lcom/android/server/LocationManagerService$Receiver;>;"
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/LocationManagerService$Receiver;

    .line 318
    .local v5, "r":Lcom/android/server/LocationManagerService$Receiver;
    iget v6, v5, Lcom/android/server/LocationManagerService$Receiver;->mUid:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_1

    .line 319
    iget v6, v5, Lcom/android/server/LocationManagerService$Receiver;->mUid:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .end local v1    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Object;Lcom/android/server/LocationManagerService$Receiver;>;"
    .end local v5    # "r":Lcom/android/server/LocationManagerService$Receiver;
    :cond_2
    monitor-exit v7

    .line 323
    return-object v0
.end method

.method public static init(Lcom/android/server/LocationManagerService;Ljava/lang/Object;Landroid/content/Context;Ljava/util/HashMap;Ljava/util/HashMap;)V
    .locals 0
    .param p0, "lms"    # Lcom/android/server/LocationManagerService;
    .param p1, "lmsLock"    # Ljava/lang/Object;
    .param p2, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/server/LocationManagerService;",
            "Ljava/lang/Object;",
            "Landroid/content/Context;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/android/server/location/LocationProviderInterface;",
            ">;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Object;",
            "Lcom/android/server/LocationManagerService$Receiver;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 75
    .local p3, "realProviders":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Lcom/android/server/location/LocationProviderInterface;>;"
    .local p4, "allReceivers":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Object;Lcom/android/server/LocationManagerService$Receiver;>;"
    sput-object p1, Lcom/android/server/LocationManagerServiceInjector;->sLock:Ljava/lang/Object;

    .line 76
    sput-object p2, Lcom/android/server/LocationManagerServiceInjector;->sContext:Landroid/content/Context;

    .line 77
    sput-object p3, Lcom/android/server/LocationManagerServiceInjector;->sRealProviders:Ljava/util/HashMap;

    .line 78
    sput-object p4, Lcom/android/server/LocationManagerServiceInjector;->sReceivers:Ljava/util/HashMap;

    .line 79
    sput-object p0, Lcom/android/server/LocationManagerServiceInjector;->sLocationManagerService:Lcom/android/server/LocationManagerService;

    .line 74
    return-void
.end method

.method private static isRequestBlockedByPolicy(I)Z
    .locals 5
    .param p0, "uid"    # I

    .prologue
    const/4 v4, 0x0

    .line 96
    sget-object v2, Lcom/android/server/LocationManagerServiceInjector;->sLock:Ljava/lang/Object;

    monitor-enter v2

    .line 97
    :try_start_0
    sget-object v1, Lcom/android/server/LocationManagerServiceInjector;->sUidRules:Landroid/util/SparseIntArray;

    const/4 v3, 0x0

    invoke-virtual {v1, p0, v3}, Landroid/util/SparseIntArray;->get(II)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    .line 98
    .local v0, "rules":I
    if-eqz v0, :cond_0

    .line 99
    const/4 v1, 0x1

    monitor-exit v2

    return v1

    :cond_0
    monitor-exit v2

    .line 101
    return v4

    .line 96
    .end local v0    # "rules":I
    :catchall_0
    move-exception v1

    monitor-exit v2

    throw v1
.end method

.method public static locationSanitized(Landroid/location/Location;)Landroid/location/Location;
    .locals 1
    .param p0, "location"    # Landroid/location/Location;

    .prologue
    .line 439
    sget-object v0, Lcom/android/server/LocationManagerServiceInjector;->mMetok:Lcom/android/server/location/MetokProxy;

    if-eqz v0, :cond_0

    .line 440
    sget-object v0, Lcom/android/server/LocationManagerServiceInjector;->mMetok:Lcom/android/server/location/MetokProxy;

    invoke-virtual {v0, p0}, Lcom/android/server/location/MetokProxy;->locationSanitized(Landroid/location/Location;)Landroid/location/Location;

    move-result-object v0

    return-object v0

    .line 442
    :cond_0
    return-object p0
.end method

.method private static removeAndBackupLocationRequestIfNeeded(I)V
    .locals 10
    .param p0, "uid"    # I

    .prologue
    .line 196
    sget-object v7, Lcom/android/server/LocationManagerServiceInjector;->sLock:Ljava/lang/Object;

    monitor-enter v7

    .line 197
    :try_start_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 198
    .local v0, "backupList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Object;>;"
    sget-object v6, Lcom/android/server/LocationManagerServiceInjector;->sReceivers:Ljava/util/HashMap;

    invoke-virtual {v6}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v6

    invoke-interface {v6}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "entry$iterator":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 199
    .local v1, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Object;Lcom/android/server/LocationManagerService$Receiver;>;"
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/LocationManagerService$Receiver;

    .line 200
    .local v5, "r":Lcom/android/server/LocationManagerService$Receiver;
    iget v6, v5, Lcom/android/server/LocationManagerService$Receiver;->mUid:I

    if-ne v6, p0, :cond_0

    .line 201
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 196
    .end local v0    # "backupList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Object;>;"
    .end local v1    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Object;Lcom/android/server/LocationManagerService$Receiver;>;"
    .end local v2    # "entry$iterator":Ljava/util/Iterator;
    .end local v5    # "r":Lcom/android/server/LocationManagerService$Receiver;
    :catchall_0
    move-exception v6

    monitor-exit v7

    throw v6

    .line 204
    .restart local v0    # "backupList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Object;>;"
    .restart local v2    # "entry$iterator":Ljava/util/Iterator;
    :cond_1
    :try_start_1
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-lez v6, :cond_2

    .line 205
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, "o$iterator":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    .line 207
    .local v3, "o":Ljava/lang/Object;
    sget-object v8, Lcom/android/server/LocationManagerServiceInjector;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "backup receiver:"

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    sget-object v6, Lcom/android/server/LocationManagerServiceInjector;->sReceivers:Ljava/util/HashMap;

    invoke-virtual {v6, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/LocationManagerService$Receiver;

    invoke-virtual {v6}, Lcom/android/server/LocationManagerService$Receiver;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v8, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 208
    sget-object v8, Lcom/android/server/LocationManagerServiceInjector;->sBackupReceivers:Ljava/util/HashMap;

    sget-object v6, Lcom/android/server/LocationManagerServiceInjector;->sReceivers:Ljava/util/HashMap;

    invoke-virtual {v6, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/LocationManagerService$Receiver;

    invoke-virtual {v8, v3, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 209
    sget-object v8, Lcom/android/server/LocationManagerServiceInjector;->sLocationManagerService:Lcom/android/server/LocationManagerService;

    sget-object v6, Lcom/android/server/LocationManagerServiceInjector;->sReceivers:Ljava/util/HashMap;

    invoke-virtual {v6, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/LocationManagerService$Receiver;

    invoke-virtual {v8, v6}, Lcom/android/server/LocationManagerService;->removeUpdatesLocked(Lcom/android/server/LocationManagerService$Receiver;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .end local v3    # "o":Ljava/lang/Object;
    .end local v4    # "o$iterator":Ljava/util/Iterator;
    :cond_2
    monitor-exit v7

    .line 195
    return-void
.end method

.method private static restoreBlockedLocationRequestIfNeeded(I)V
    .locals 17
    .param p0, "uid"    # I

    .prologue
    .line 216
    sget-object v16, Lcom/android/server/LocationManagerServiceInjector;->sLock:Ljava/lang/Object;

    monitor-enter v16

    .line 217
    :try_start_0
    new-instance v15, Ljava/util/ArrayList;

    invoke-direct {v15}, Ljava/util/ArrayList;-><init>()V

    .line 218
    .local v15, "restoreList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Object;>;"
    sget-object v1, Lcom/android/server/LocationManagerServiceInjector;->sBackupReceivers:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v10

    .local v10, "entry$iterator":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/Map$Entry;

    .line 219
    .local v9, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Object;Lcom/android/server/LocationManagerService$Receiver;>;"
    invoke-interface {v9}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/LocationManagerService$Receiver;

    .line 220
    .local v3, "r":Lcom/android/server/LocationManagerService$Receiver;
    iget v1, v3, Lcom/android/server/LocationManagerService$Receiver;->mUid:I

    move/from16 v0, p0

    if-ne v1, v0, :cond_0

    .line 221
    invoke-interface {v9}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v15, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 216
    .end local v3    # "r":Lcom/android/server/LocationManagerService$Receiver;
    .end local v9    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Object;Lcom/android/server/LocationManagerService$Receiver;>;"
    .end local v10    # "entry$iterator":Ljava/util/Iterator;
    .end local v15    # "restoreList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Object;>;"
    :catchall_0
    move-exception v1

    monitor-exit v16

    throw v1

    .line 224
    .restart local v10    # "entry$iterator":Ljava/util/Iterator;
    .restart local v15    # "restoreList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Object;>;"
    :cond_1
    :try_start_1
    invoke-virtual {v15}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_4

    .line 225
    invoke-interface {v15}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v12

    .local v12, "o$iterator":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    .line 226
    .local v11, "o":Ljava/lang/Object;
    sget-object v1, Lcom/android/server/LocationManagerServiceInjector;->sBackupReceivers:Ljava/util/HashMap;

    invoke-virtual {v1, v11}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/LocationManagerService$Receiver;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 230
    .restart local v3    # "r":Lcom/android/server/LocationManagerService$Receiver;
    :try_start_2
    iget-object v1, v3, Lcom/android/server/LocationManagerService$Receiver;->mListener:Landroid/location/ILocationListener;

    if-eqz v1, :cond_2

    .line 231
    invoke-virtual {v3}, Lcom/android/server/LocationManagerService$Receiver;->getListener()Landroid/location/ILocationListener;

    move-result-object v1

    invoke-interface {v1}, Landroid/location/ILocationListener;->asBinder()Landroid/os/IBinder;

    move-result-object v1

    const/4 v4, 0x0

    invoke-interface {v1, v3, v4}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_2
    .catch Landroid/os/DeadObjectException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 242
    :cond_2
    :try_start_3
    iget-object v1, v3, Lcom/android/server/LocationManagerService$Receiver;->mListener:Landroid/location/ILocationListener;

    if-eqz v1, :cond_3

    .line 243
    sget-object v1, Lcom/android/server/LocationManagerServiceInjector;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "restore receiver:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 244
    sget-object v1, Lcom/android/server/LocationManagerServiceInjector;->sReceivers:Ljava/util/HashMap;

    invoke-virtual {v1, v11, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 245
    iget-object v1, v3, Lcom/android/server/LocationManagerService$Receiver;->mUpdateRecords:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v14

    .local v14, "p$iterator":Ljava/util/Iterator;
    :goto_2
    invoke-interface {v14}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v14}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/String;

    .line 246
    .local v13, "p":Ljava/lang/String;
    iget-object v1, v3, Lcom/android/server/LocationManagerService$Receiver;->mUpdateRecords:Ljava/util/HashMap;

    invoke-virtual {v1, v13}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/LocationManagerService$UpdateRecord;

    iget-object v2, v1, Lcom/android/server/LocationManagerService$UpdateRecord;->mRequest:Landroid/location/LocationRequest;

    .line 247
    .local v2, "lr":Landroid/location/LocationRequest;
    sget-object v1, Lcom/android/server/LocationManagerServiceInjector;->sLocationManagerService:Lcom/android/server/LocationManagerService;

    iget v4, v3, Lcom/android/server/LocationManagerService$Receiver;->mPid:I

    iget v5, v3, Lcom/android/server/LocationManagerService$Receiver;->mUid:I

    iget-object v6, v3, Lcom/android/server/LocationManagerService$Receiver;->mPackageName:Ljava/lang/String;

    invoke-virtual/range {v1 .. v6}, Lcom/android/server/LocationManagerService;->requestLocationUpdatesLocked(Landroid/location/LocationRequest;Lcom/android/server/LocationManagerService$Receiver;IILjava/lang/String;)V

    goto :goto_2

    .line 237
    .end local v2    # "lr":Landroid/location/LocationRequest;
    .end local v13    # "p":Ljava/lang/String;
    .end local v14    # "p$iterator":Ljava/util/Iterator;
    :catch_0
    move-exception v8

    .line 238
    .local v8, "e":Landroid/os/RemoteException;
    sget-object v1, Lcom/android/server/LocationManagerServiceInjector;->TAG:Ljava/lang/String;

    const-string/jumbo v4, "linkToDeath failed:"

    invoke-static {v1, v4, v8}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    .line 233
    .end local v8    # "e":Landroid/os/RemoteException;
    :catch_1
    move-exception v7

    .line 235
    .local v7, "e":Landroid/os/DeadObjectException;
    sget-object v1, Lcom/android/server/LocationManagerServiceInjector;->sBackupReceivers:Ljava/util/HashMap;

    invoke-virtual {v1, v11}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 252
    .end local v7    # "e":Landroid/os/DeadObjectException;
    :cond_3
    sget-object v1, Lcom/android/server/LocationManagerServiceInjector;->sBackupReceivers:Ljava/util/HashMap;

    invoke-virtual {v1, v11}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto/16 :goto_1

    .end local v3    # "r":Lcom/android/server/LocationManagerService$Receiver;
    .end local v11    # "o":Ljava/lang/Object;
    .end local v12    # "o$iterator":Ljava/util/Iterator;
    :cond_4
    monitor-exit v16

    .line 215
    return-void
.end method

.method public static takeOverLP(Ljava/lang/String;Ljava/util/ArrayList;)Ljava/util/ArrayList;
    .locals 11
    .param p0, "provider"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/LocationManagerService$UpdateRecord;",
            ">;)",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/LocationManagerService$UpdateRecord;",
            ">;"
        }
    .end annotation

    .prologue
    .line 374
    .local p1, "records":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/LocationManagerService$UpdateRecord;>;"
    sget-object v6, Lcom/android/server/LocationManagerServiceInjector;->mMetok:Lcom/android/server/location/MetokProxy;

    if-eqz v6, :cond_0

    if-nez p0, :cond_1

    .line 375
    :cond_0
    return-object p1

    .line 378
    :cond_1
    const/4 v4, 0x0

    .line 379
    .local v4, "retRecords":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/LocationManagerService$UpdateRecord;>;"
    new-instance v5, Landroid/os/WorkSource;

    invoke-direct {v5}, Landroid/os/WorkSource;-><init>()V

    .line 382
    .local v5, "worksource":Landroid/os/WorkSource;
    new-instance v1, Lcom/android/internal/location/ProviderRequest;

    invoke-direct {v1}, Lcom/android/internal/location/ProviderRequest;-><init>()V

    .line 384
    .local v1, "providerRequest":Lcom/android/internal/location/ProviderRequest;
    if-eqz p1, :cond_4

    .line 385
    new-instance v4, Ljava/util/ArrayList;

    .end local v4    # "retRecords":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/LocationManagerService$UpdateRecord;>;"
    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 386
    .local v4, "retRecords":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/LocationManagerService$UpdateRecord;>;"
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "record$iterator":Ljava/util/Iterator;
    :cond_2
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_4

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/LocationManagerService$UpdateRecord;

    .line 387
    .local v2, "record":Lcom/android/server/LocationManagerService$UpdateRecord;
    sget-object v6, Lcom/android/server/LocationManagerServiceInjector;->sLocationManagerService:Lcom/android/server/LocationManagerService;

    iget-object v7, v2, Lcom/android/server/LocationManagerService$UpdateRecord;->mReceiver:Lcom/android/server/LocationManagerService$Receiver;

    iget v7, v7, Lcom/android/server/LocationManagerService$Receiver;->mUid:I

    invoke-static {v7}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v7

    invoke-virtual {v6, v7}, Lcom/android/server/LocationManagerService;->callIsCurrentProfile(I)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 389
    sget-object v6, Lcom/android/server/LocationManagerServiceInjector;->sLocationManagerService:Lcom/android/server/LocationManagerService;

    .line 390
    iget-object v7, v2, Lcom/android/server/LocationManagerService$UpdateRecord;->mReceiver:Lcom/android/server/LocationManagerService$Receiver;

    iget v7, v7, Lcom/android/server/LocationManagerService$Receiver;->mPid:I

    .line 391
    iget-object v8, v2, Lcom/android/server/LocationManagerService$UpdateRecord;->mReceiver:Lcom/android/server/LocationManagerService$Receiver;

    iget v8, v8, Lcom/android/server/LocationManagerService$Receiver;->mUid:I

    .line 392
    iget-object v9, v2, Lcom/android/server/LocationManagerService$UpdateRecord;->mReceiver:Lcom/android/server/LocationManagerService$Receiver;

    iget-object v9, v9, Lcom/android/server/LocationManagerService$Receiver;->mPackageName:Ljava/lang/String;

    .line 393
    iget-object v10, v2, Lcom/android/server/LocationManagerService$UpdateRecord;->mReceiver:Lcom/android/server/LocationManagerService$Receiver;

    iget v10, v10, Lcom/android/server/LocationManagerService$Receiver;->mAllowedResolutionLevel:I

    .line 388
    invoke-static {v6, v7, v8, v9, v10}, Lcom/android/server/LocationManagerServiceFacade;->checkLocationAccess(Lcom/android/server/LocationManagerService;IILjava/lang/String;I)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 394
    sget-object v6, Lcom/android/server/LocationManagerServiceInjector;->mMetok:Lcom/android/server/location/MetokProxy;

    iget-object v7, v2, Lcom/android/server/LocationManagerService$UpdateRecord;->mReceiver:Lcom/android/server/LocationManagerService$Receiver;

    iget-object v7, v7, Lcom/android/server/LocationManagerService$Receiver;->mPackageName:Ljava/lang/String;

    invoke-virtual {v6, p0, v7}, Lcom/android/server/location/MetokProxy;->canTakeOver(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 395
    sget-object v6, Lcom/android/server/LocationManagerServiceInjector;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "takeover LP of "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, " from "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, v2, Lcom/android/server/LocationManagerService$UpdateRecord;->mReceiver:Lcom/android/server/LocationManagerService$Receiver;

    iget-object v8, v8, Lcom/android/server/LocationManagerService$Receiver;->mPackageName:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 396
    iget-object v0, v2, Lcom/android/server/LocationManagerService$UpdateRecord;->mRequest:Landroid/location/LocationRequest;

    .line 397
    .local v0, "locationRequest":Landroid/location/LocationRequest;
    iget-object v6, v1, Lcom/android/internal/location/ProviderRequest;->locationRequests:Ljava/util/List;

    invoke-interface {v6, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 399
    iget-object v6, v2, Lcom/android/server/LocationManagerService$UpdateRecord;->mReceiver:Lcom/android/server/LocationManagerService$Receiver;

    iget v6, v6, Lcom/android/server/LocationManagerService$Receiver;->mUid:I

    iget-object v7, v2, Lcom/android/server/LocationManagerService$UpdateRecord;->mReceiver:Lcom/android/server/LocationManagerService$Receiver;

    iget-object v7, v7, Lcom/android/server/LocationManagerService$Receiver;->mPackageName:Ljava/lang/String;

    invoke-virtual {v5, v6, v7}, Landroid/os/WorkSource;->add(ILjava/lang/String;)Z

    .line 400
    invoke-virtual {v0}, Landroid/location/LocationRequest;->getInterval()J

    move-result-wide v6

    iget-wide v8, v1, Lcom/android/internal/location/ProviderRequest;->interval:J

    cmp-long v6, v6, v8

    if-gez v6, :cond_2

    .line 401
    const/4 v6, 0x1

    iput-boolean v6, v1, Lcom/android/internal/location/ProviderRequest;->reportLocation:Z

    .line 402
    invoke-virtual {v0}, Landroid/location/LocationRequest;->getInterval()J

    move-result-wide v6

    iput-wide v6, v1, Lcom/android/internal/location/ProviderRequest;->interval:J

    goto/16 :goto_0

    .line 408
    .end local v0    # "locationRequest":Landroid/location/LocationRequest;
    :cond_3
    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 412
    .end local v2    # "record":Lcom/android/server/LocationManagerService$UpdateRecord;
    .end local v3    # "record$iterator":Ljava/util/Iterator;
    .end local v4    # "retRecords":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/LocationManagerService$UpdateRecord;>;"
    :cond_4
    sget-object v6, Lcom/android/server/LocationManagerServiceInjector;->mLastProviderRequest:Lcom/android/internal/location/ProviderRequest;

    if-nez v6, :cond_7

    .line 416
    :cond_5
    :goto_1
    sget-object v6, Lcom/android/server/LocationManagerServiceInjector;->mMetok:Lcom/android/server/location/MetokProxy;

    invoke-virtual {v6, v1, v5}, Lcom/android/server/location/MetokProxy;->setRequest(Lcom/android/internal/location/ProviderRequest;Landroid/os/WorkSource;)V

    .line 417
    sput-object v1, Lcom/android/server/LocationManagerServiceInjector;->mLastProviderRequest:Lcom/android/internal/location/ProviderRequest;

    .line 418
    sget-object v6, Lcom/android/server/LocationManagerServiceInjector;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "takeover LP : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, ": "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v1}, Lcom/android/internal/location/ProviderRequest;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 421
    :cond_6
    return-object v4

    .line 413
    :cond_7
    iget-boolean v6, v1, Lcom/android/internal/location/ProviderRequest;->reportLocation:Z

    sget-object v7, Lcom/android/server/LocationManagerServiceInjector;->mLastProviderRequest:Lcom/android/internal/location/ProviderRequest;

    iget-boolean v7, v7, Lcom/android/internal/location/ProviderRequest;->reportLocation:Z

    if-ne v6, v7, :cond_5

    .line 414
    iget-wide v6, v1, Lcom/android/internal/location/ProviderRequest;->interval:J

    sget-object v8, Lcom/android/server/LocationManagerServiceInjector;->mLastProviderRequest:Lcom/android/internal/location/ProviderRequest;

    iget-wide v8, v8, Lcom/android/internal/location/ProviderRequest;->interval:J

    cmp-long v6, v6, v8

    if-eqz v6, :cond_6

    goto :goto_1
.end method

.method public static updateGpsStatusProvider(Landroid/location/IGnssStatusProvider;)V
    .locals 0
    .param p0, "gpsStatusProvider"    # Landroid/location/IGnssStatusProvider;

    .prologue
    .line 83
    sput-object p0, Lcom/android/server/LocationManagerServiceInjector;->sGpsStatusProviderRef:Landroid/location/IGnssStatusProvider;

    .line 82
    return-void
.end method

.method public static updateLpStatus(Ljava/util/ArrayList;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/location/LocationProviderInterface;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 425
    .local p0, "providers":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/location/LocationProviderInterface;>;"
    sget-object v3, Lcom/android/server/LocationManagerServiceInjector;->mMetok:Lcom/android/server/location/MetokProxy;

    if-eqz v3, :cond_1

    .line 426
    const/4 v0, 0x0

    .line 427
    .local v0, "enable":Z
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v3

    add-int/lit8 v1, v3, -0x1

    .local v1, "i":I
    :goto_0
    if-ltz v1, :cond_0

    .line 428
    invoke-virtual {p0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/location/LocationProviderInterface;

    .line 429
    .local v2, "p":Lcom/android/server/location/LocationProviderInterface;
    invoke-interface {v2}, Lcom/android/server/location/LocationProviderInterface;->isEnabled()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 430
    const/4 v0, 0x1

    .line 434
    .end local v2    # "p":Lcom/android/server/location/LocationProviderInterface;
    :cond_0
    sget-object v3, Lcom/android/server/LocationManagerServiceInjector;->mMetok:Lcom/android/server/location/MetokProxy;

    invoke-virtual {v3, v0}, Lcom/android/server/location/MetokProxy;->updateStatus(Z)V

    .line 424
    .end local v0    # "enable":Z
    .end local v1    # "i":I
    :cond_1
    return-void

    .line 427
    .restart local v0    # "enable":Z
    .restart local v1    # "i":I
    .restart local v2    # "p":Lcom/android/server/location/LocationProviderInterface;
    :cond_2
    add-int/lit8 v1, v1, -0x1

    goto :goto_0
.end method
