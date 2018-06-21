.class Lcom/miui/server/SecurityManagerService$SecurityWriteHandler;
.super Landroid/os/Handler;
.source "SecurityManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/server/SecurityManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "SecurityWriteHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/server/SecurityManagerService;


# direct methods
.method constructor <init>(Lcom/miui/server/SecurityManagerService;Landroid/os/Looper;)V
    .locals 0
    .param p1, "this$0"    # Lcom/miui/server/SecurityManagerService;
    .param p2, "looper"    # Landroid/os/Looper;

    .prologue
    .line 244
    iput-object p1, p0, Lcom/miui/server/SecurityManagerService$SecurityWriteHandler;->this$0:Lcom/miui/server/SecurityManagerService;

    .line 245
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 244
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 11
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const/16 v10, 0xa

    const/4 v5, 0x0

    .line 249
    iget v4, p1, Landroid/os/Message;->what:I

    packed-switch v4, :pswitch_data_0

    .line 248
    :goto_0
    return-void

    .line 252
    :pswitch_0
    invoke-static {v5}, Landroid/os/Process;->setThreadPriority(I)V

    .line 253
    iget-object v4, p0, Lcom/miui/server/SecurityManagerService$SecurityWriteHandler;->this$0:Lcom/miui/server/SecurityManagerService;

    invoke-static {v4}, Lcom/miui/server/SecurityManagerService;->-get1(Lcom/miui/server/SecurityManagerService;)Lcom/android/internal/os/AtomicFile;

    move-result-object v5

    monitor-enter v5

    .line 254
    const/4 v4, 0x1

    :try_start_0
    invoke-virtual {p0, v4}, Lcom/miui/server/SecurityManagerService$SecurityWriteHandler;->removeMessages(I)V

    .line 255
    iget-object v4, p0, Lcom/miui/server/SecurityManagerService$SecurityWriteHandler;->this$0:Lcom/miui/server/SecurityManagerService;

    invoke-static {v4}, Lcom/miui/server/SecurityManagerService;->-wrap10(Lcom/miui/server/SecurityManagerService;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v5

    .line 257
    invoke-static {v10}, Landroid/os/Process;->setThreadPriority(I)V

    goto :goto_0

    .line 253
    :catchall_0
    move-exception v4

    monitor-exit v5

    throw v4

    .line 261
    :pswitch_1
    invoke-static {v5}, Landroid/os/Process;->setThreadPriority(I)V

    .line 262
    iget-object v4, p0, Lcom/miui/server/SecurityManagerService$SecurityWriteHandler;->this$0:Lcom/miui/server/SecurityManagerService;

    invoke-static {v4}, Lcom/miui/server/SecurityManagerService;->-get3(Lcom/miui/server/SecurityManagerService;)Ljava/util/HashMap;

    move-result-object v5

    monitor-enter v5

    .line 263
    const/4 v4, 0x2

    :try_start_1
    invoke-virtual {p0, v4}, Lcom/miui/server/SecurityManagerService$SecurityWriteHandler;->removeMessages(I)V

    .line 264
    iget-object v4, p0, Lcom/miui/server/SecurityManagerService$SecurityWriteHandler;->this$0:Lcom/miui/server/SecurityManagerService;

    invoke-static {v4}, Lcom/miui/server/SecurityManagerService;->-wrap11(Lcom/miui/server/SecurityManagerService;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    monitor-exit v5

    .line 266
    invoke-static {v10}, Landroid/os/Process;->setThreadPriority(I)V

    goto :goto_0

    .line 262
    :catchall_1
    move-exception v4

    monitor-exit v5

    throw v4

    .line 270
    :pswitch_2
    invoke-static {v5}, Landroid/os/Process;->setThreadPriority(I)V

    .line 271
    iget-object v4, p0, Lcom/miui/server/SecurityManagerService$SecurityWriteHandler;->this$0:Lcom/miui/server/SecurityManagerService;

    invoke-static {v4}, Lcom/miui/server/SecurityManagerService;->-get3(Lcom/miui/server/SecurityManagerService;)Ljava/util/HashMap;

    move-result-object v5

    monitor-enter v5

    .line 272
    const/4 v4, 0x3

    :try_start_2
    invoke-virtual {p0, v4}, Lcom/miui/server/SecurityManagerService$SecurityWriteHandler;->removeMessages(I)V

    .line 273
    const-string/jumbo v4, "vendor"

    const/4 v6, 0x3

    invoke-static {v4, v6}, Lmiui/util/FeatureParser;->hasFeature(Ljava/lang/String;I)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 274
    const-string/jumbo v4, "vendor"

    invoke-static {v4}, Lmiui/util/FeatureParser;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 275
    .local v3, "vendor":Ljava/lang/String;
    iget-object v4, p0, Lcom/miui/server/SecurityManagerService$SecurityWriteHandler;->this$0:Lcom/miui/server/SecurityManagerService;

    invoke-static {v4}, Lcom/miui/server/SecurityManagerService;->-get0(Lcom/miui/server/SecurityManagerService;)Landroid/content/Context;

    move-result-object v4

    iget-object v6, p0, Lcom/miui/server/SecurityManagerService$SecurityWriteHandler;->this$0:Lcom/miui/server/SecurityManagerService;

    invoke-static {v6}, Lcom/miui/server/SecurityManagerService;->-get2(Lcom/miui/server/SecurityManagerService;)J

    move-result-wide v6

    invoke-static {v4, v3, v6, v7}, Lmiui/security/SecurityManagerCompat;->writeBootTime(Landroid/content/Context;Ljava/lang/String;J)V

    .line 276
    const-string/jumbo v4, "SecurityManagerService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "Wake up time updated "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/miui/server/SecurityManagerService$SecurityWriteHandler;->this$0:Lcom/miui/server/SecurityManagerService;

    invoke-static {v7}, Lcom/miui/server/SecurityManagerService;->-get2(Lcom/miui/server/SecurityManagerService;)J

    move-result-wide v8

    invoke-virtual {v6, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .end local v3    # "vendor":Ljava/lang/String;
    :goto_1
    monitor-exit v5

    .line 281
    invoke-static {v10}, Landroid/os/Process;->setThreadPriority(I)V

    goto/16 :goto_0

    .line 278
    :cond_0
    :try_start_3
    const-string/jumbo v4, "SecurityManagerService"

    const-string/jumbo v6, "There is no corresponding feature!"

    invoke-static {v4, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    goto :goto_1

    .line 271
    :catchall_2
    move-exception v4

    monitor-exit v5

    throw v4

    .line 284
    :pswitch_3
    iget-object v5, p0, Lcom/miui/server/SecurityManagerService$SecurityWriteHandler;->this$0:Lcom/miui/server/SecurityManagerService;

    monitor-enter v5

    .line 285
    :try_start_4
    iget v1, p1, Landroid/os/Message;->arg1:I

    .line 286
    .local v1, "userId":I
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    .line 287
    .local v0, "packageName":Ljava/lang/String;
    iget-object v4, p0, Lcom/miui/server/SecurityManagerService$SecurityWriteHandler;->this$0:Lcom/miui/server/SecurityManagerService;

    invoke-static {v4, v1}, Lcom/miui/server/SecurityManagerService;->-wrap3(Lcom/miui/server/SecurityManagerService;I)Lcom/miui/server/SecurityManagerService$UserState;

    move-result-object v2

    .line 288
    .local v2, "userState":Lcom/miui/server/SecurityManagerService$UserState;
    iget-object v4, v2, Lcom/miui/server/SecurityManagerService$UserState;->mAccessControlCanceled:Landroid/util/ArraySet;

    invoke-virtual {v4, v0}, Landroid/util/ArraySet;->remove(Ljava/lang/Object;)Z
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_3

    monitor-exit v5

    goto/16 :goto_0

    .line 284
    .end local v0    # "packageName":Ljava/lang/String;
    .end local v1    # "userId":I
    .end local v2    # "userState":Lcom/miui/server/SecurityManagerService$UserState;
    :catchall_3
    move-exception v4

    monitor-exit v5

    throw v4

    .line 249
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method
