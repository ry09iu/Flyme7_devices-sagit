.class Lcom/android/server/pm/PackageDexOptimizerManager$DexOptHandler;
.super Landroid/os/Handler;
.source "PackageDexOptimizerManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/pm/PackageDexOptimizerManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "DexOptHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/pm/PackageDexOptimizerManager;


# direct methods
.method constructor <init>(Lcom/android/server/pm/PackageDexOptimizerManager;Landroid/os/Looper;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/pm/PackageDexOptimizerManager;
    .param p2, "looper"    # Landroid/os/Looper;

    .prologue
    .line 241
    iput-object p1, p0, Lcom/android/server/pm/PackageDexOptimizerManager$DexOptHandler;->this$0:Lcom/android/server/pm/PackageDexOptimizerManager;

    .line 242
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 241
    return-void
.end method

.method private performDexOptInBackground(Lcom/android/server/pm/PackageDexOptimizerManager$AppDexoptInfo;)V
    .locals 11
    .param p1, "info"    # Lcom/android/server/pm/PackageDexOptimizerManager$AppDexoptInfo;

    .prologue
    .line 276
    iget-object v7, p0, Lcom/android/server/pm/PackageDexOptimizerManager$DexOptHandler;->this$0:Lcom/android/server/pm/PackageDexOptimizerManager;

    iget-object v8, v7, Lcom/android/server/pm/PackageDexOptimizerManager;->mPendingDexOpt:Landroid/util/ArraySet;

    monitor-enter v8

    .line 277
    :try_start_0
    iget-object v7, p0, Lcom/android/server/pm/PackageDexOptimizerManager$DexOptHandler;->this$0:Lcom/android/server/pm/PackageDexOptimizerManager;

    iget-object v7, v7, Lcom/android/server/pm/PackageDexOptimizerManager;->mPendingDexOpt:Landroid/util/ArraySet;

    iget-object v9, p1, Lcom/android/server/pm/PackageDexOptimizerManager$AppDexoptInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v7, v9}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v7

    if-nez v7, :cond_0

    monitor-exit v8

    .line 278
    return-void

    :cond_0
    monitor-exit v8

    .line 282
    const-string/jumbo v7, "package"

    invoke-static {v7}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v5

    check-cast v5, Lcom/android/server/pm/PackageManagerService;

    .line 284
    .local v5, "pms":Lcom/android/server/pm/PackageManagerService;
    const-string/jumbo v7, "PackageDexOptimizerManager"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "PerformDexOpt for "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p1, Lcom/android/server/pm/PackageDexOptimizerManager$AppDexoptInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 285
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 287
    .local v0, "callingId":J
    const/high16 v4, -0x80000000

    .line 289
    .local v4, "installFlags":I
    :try_start_1
    invoke-static {}, Lcom/android/server/pm/PackageDexOptimizerManager;->-get0()Ljava/lang/reflect/Method;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result-object v7

    if-eqz v7, :cond_1

    .line 292
    :try_start_2
    invoke-static {}, Lcom/android/server/pm/PackageDexOptimizerManager;->-get0()Ljava/lang/reflect/Method;

    move-result-object v7

    const/4 v8, 0x4

    new-array v8, v8, [Ljava/lang/Object;

    .line 293
    iget-object v9, p1, Lcom/android/server/pm/PackageDexOptimizerManager$AppDexoptInfo;->packageName:Ljava/lang/String;

    const/4 v10, 0x0

    aput-object v9, v8, v10

    const/4 v9, 0x0

    const/4 v10, 0x1

    aput-object v9, v8, v10

    const/4 v9, 0x1

    invoke-static {v9}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v9

    const/4 v10, 0x2

    aput-object v9, v8, v10

    const/high16 v9, -0x80000000

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    const/4 v10, 0x3

    aput-object v9, v8, v10

    .line 292
    invoke-virtual {v7, v5, v8}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Boolean;
    :try_end_2
    .catch Ljava/lang/IllegalArgumentException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 301
    .local v6, "ret":Ljava/lang/Boolean;
    :goto_0
    if-eqz v6, :cond_2

    :try_start_3
    invoke-virtual {v6}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v7

    if-eqz v7, :cond_2

    .line 302
    const/4 v7, 0x1

    iput v7, p1, Lcom/android/server/pm/PackageDexOptimizerManager$AppDexoptInfo;->returnCode:I
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 311
    .end local v6    # "ret":Ljava/lang/Boolean;
    :cond_1
    :goto_1
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 314
    :goto_2
    iget-object v7, p0, Lcom/android/server/pm/PackageDexOptimizerManager$DexOptHandler;->this$0:Lcom/android/server/pm/PackageDexOptimizerManager;

    iget-object v8, v7, Lcom/android/server/pm/PackageDexOptimizerManager;->mPendingDexOpt:Landroid/util/ArraySet;

    monitor-enter v8

    .line 315
    :try_start_4
    iget-object v7, p0, Lcom/android/server/pm/PackageDexOptimizerManager$DexOptHandler;->this$0:Lcom/android/server/pm/PackageDexOptimizerManager;

    iget-object v7, v7, Lcom/android/server/pm/PackageDexOptimizerManager;->mPendingDexOpt:Landroid/util/ArraySet;

    iget-object v9, p1, Lcom/android/server/pm/PackageDexOptimizerManager$AppDexoptInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v7, v9}, Landroid/util/ArraySet;->remove(Ljava/lang/Object;)Z
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    monitor-exit v8

    .line 275
    return-void

    .line 276
    .end local v0    # "callingId":J
    .end local v4    # "installFlags":I
    .end local v5    # "pms":Lcom/android/server/pm/PackageManagerService;
    :catchall_0
    move-exception v7

    monitor-exit v8

    throw v7

    .line 295
    .restart local v0    # "callingId":J
    .restart local v4    # "installFlags":I
    .restart local v5    # "pms":Lcom/android/server/pm/PackageManagerService;
    :catch_0
    move-exception v3

    .line 296
    .local v3, "e":Ljava/lang/IllegalArgumentException;
    :try_start_5
    const-string/jumbo v7, "PackageDexOptimizerManager"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "IllegalArgumentException: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 297
    invoke-static {}, Lcom/android/server/pm/PackageDexOptimizerManager;->-get0()Ljava/lang/reflect/Method;

    move-result-object v7

    const/4 v8, 0x3

    new-array v8, v8, [Ljava/lang/Object;

    .line 298
    iget-object v9, p1, Lcom/android/server/pm/PackageDexOptimizerManager$AppDexoptInfo;->packageName:Ljava/lang/String;

    const/4 v10, 0x0

    aput-object v9, v8, v10

    const/4 v9, 0x0

    const/4 v10, 0x1

    aput-object v9, v8, v10

    const/4 v9, 0x1

    invoke-static {v9}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v9

    const/4 v10, 0x2

    aput-object v9, v8, v10

    .line 297
    invoke-virtual {v7, v5, v8}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Boolean;

    .restart local v6    # "ret":Ljava/lang/Boolean;
    goto :goto_0

    .line 304
    .end local v3    # "e":Ljava/lang/IllegalArgumentException;
    :cond_2
    const/4 v7, -0x1

    iput v7, p1, Lcom/android/server/pm/PackageDexOptimizerManager$AppDexoptInfo;->returnCode:I
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_1
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    goto :goto_1

    .line 307
    .end local v6    # "ret":Ljava/lang/Boolean;
    :catch_1
    move-exception v2

    .line 308
    .local v2, "e":Ljava/lang/Exception;
    const/4 v7, -0x1

    :try_start_6
    iput v7, p1, Lcom/android/server/pm/PackageDexOptimizerManager$AppDexoptInfo;->returnCode:I

    .line 309
    const-string/jumbo v7, "PackageDexOptimizerManager"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "Exception "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .line 311
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_2

    .line 310
    .end local v2    # "e":Ljava/lang/Exception;
    :catchall_1
    move-exception v7

    .line 311
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 310
    throw v7

    .line 314
    :catchall_2
    move-exception v7

    monitor-exit v8

    throw v7
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 5
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 246
    iget v2, p1, Landroid/os/Message;->what:I

    packed-switch v2, :pswitch_data_0

    .line 245
    :cond_0
    :goto_0
    return-void

    .line 248
    :pswitch_0
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Lcom/android/server/pm/PackageDexOptimizerManager$AppDexoptInfo;

    .line 250
    .local v1, "info":Lcom/android/server/pm/PackageDexOptimizerManager$AppDexoptInfo;
    iget-object v2, v1, Lcom/android/server/pm/PackageDexOptimizerManager$AppDexoptInfo;->observer:Lmiui/os/IMiuiDexoptObserver;

    if-eqz v2, :cond_1

    .line 252
    :try_start_0
    iget-object v2, v1, Lcom/android/server/pm/PackageDexOptimizerManager$AppDexoptInfo;->observer:Lmiui/os/IMiuiDexoptObserver;

    iget-object v3, v1, Lcom/android/server/pm/PackageDexOptimizerManager$AppDexoptInfo;->packageName:Ljava/lang/String;

    invoke-interface {v2, v3}, Lmiui/os/IMiuiDexoptObserver;->onStart(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1

    .line 258
    :cond_1
    :goto_1
    invoke-direct {p0, v1}, Lcom/android/server/pm/PackageDexOptimizerManager$DexOptHandler;->performDexOptInBackground(Lcom/android/server/pm/PackageDexOptimizerManager$AppDexoptInfo;)V

    .line 260
    iget-object v2, v1, Lcom/android/server/pm/PackageDexOptimizerManager$AppDexoptInfo;->observer:Lmiui/os/IMiuiDexoptObserver;

    if-eqz v2, :cond_0

    .line 262
    :try_start_1
    iget-object v2, v1, Lcom/android/server/pm/PackageDexOptimizerManager$AppDexoptInfo;->observer:Lmiui/os/IMiuiDexoptObserver;

    iget-object v3, v1, Lcom/android/server/pm/PackageDexOptimizerManager$AppDexoptInfo;->packageName:Ljava/lang/String;

    iget v4, v1, Lcom/android/server/pm/PackageDexOptimizerManager$AppDexoptInfo;->returnCode:I

    invoke-interface {v2, v3, v4}, Lmiui/os/IMiuiDexoptObserver;->onFinished(Ljava/lang/String;I)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 263
    :catch_0
    move-exception v0

    .local v0, "e":Landroid/os/RemoteException;
    goto :goto_0

    .line 253
    .end local v0    # "e":Landroid/os/RemoteException;
    :catch_1
    move-exception v0

    .restart local v0    # "e":Landroid/os/RemoteException;
    goto :goto_1

    .line 246
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method
