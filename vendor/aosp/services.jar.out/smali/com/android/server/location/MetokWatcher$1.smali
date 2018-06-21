.class Lcom/android/server/location/MetokWatcher$1;
.super Lcom/android/internal/content/PackageMonitor;
.source "MetokWatcher.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/location/MetokWatcher;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/location/MetokWatcher;


# direct methods
.method constructor <init>(Lcom/android/server/location/MetokWatcher;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/location/MetokWatcher;

    .prologue
    .line 216
    iput-object p1, p0, Lcom/android/server/location/MetokWatcher$1;->this$0:Lcom/android/server/location/MetokWatcher;

    invoke-direct {p0}, Lcom/android/internal/content/PackageMonitor;-><init>()V

    return-void
.end method


# virtual methods
.method public onPackageAdded(Ljava/lang/String;I)V
    .locals 4
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "uid"    # I

    .prologue
    .line 230
    iget-object v1, p0, Lcom/android/server/location/MetokWatcher$1;->this$0:Lcom/android/server/location/MetokWatcher;

    invoke-static {v1}, Lcom/android/server/location/MetokWatcher;->-get1(Lcom/android/server/location/MetokWatcher;)Ljava/lang/Object;

    move-result-object v2

    monitor-enter v2

    .line 231
    :try_start_0
    iget-object v1, p0, Lcom/android/server/location/MetokWatcher$1;->this$0:Lcom/android/server/location/MetokWatcher;

    invoke-static {v1}, Lcom/android/server/location/MetokWatcher;->-get0(Lcom/android/server/location/MetokWatcher;)Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    .line 232
    .local v0, "forceRebind":Z
    iget-object v1, p0, Lcom/android/server/location/MetokWatcher$1;->this$0:Lcom/android/server/location/MetokWatcher;

    const/4 v3, 0x0

    invoke-static {v1, v3, v0}, Lcom/android/server/location/MetokWatcher;->-wrap0(Lcom/android/server/location/MetokWatcher;Ljava/lang/String;Z)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v2

    .line 229
    return-void

    .line 230
    .end local v0    # "forceRebind":Z
    :catchall_0
    move-exception v1

    monitor-exit v2

    throw v1
.end method

.method public onPackageChanged(Ljava/lang/String;I[Ljava/lang/String;)Z
    .locals 4
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "uid"    # I
    .param p3, "components"    # [Ljava/lang/String;

    .prologue
    .line 246
    iget-object v1, p0, Lcom/android/server/location/MetokWatcher$1;->this$0:Lcom/android/server/location/MetokWatcher;

    invoke-static {v1}, Lcom/android/server/location/MetokWatcher;->-get1(Lcom/android/server/location/MetokWatcher;)Ljava/lang/Object;

    move-result-object v2

    monitor-enter v2

    .line 247
    :try_start_0
    iget-object v1, p0, Lcom/android/server/location/MetokWatcher$1;->this$0:Lcom/android/server/location/MetokWatcher;

    invoke-static {v1}, Lcom/android/server/location/MetokWatcher;->-get0(Lcom/android/server/location/MetokWatcher;)Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    .line 248
    .local v0, "forceRebind":Z
    iget-object v1, p0, Lcom/android/server/location/MetokWatcher$1;->this$0:Lcom/android/server/location/MetokWatcher;

    const/4 v3, 0x0

    invoke-static {v1, v3, v0}, Lcom/android/server/location/MetokWatcher;->-wrap0(Lcom/android/server/location/MetokWatcher;Ljava/lang/String;Z)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v2

    .line 250
    invoke-super {p0, p1, p2, p3}, Lcom/android/internal/content/PackageMonitor;->onPackageChanged(Ljava/lang/String;I[Ljava/lang/String;)Z

    move-result v1

    return v1

    .line 246
    .end local v0    # "forceRebind":Z
    :catchall_0
    move-exception v1

    monitor-exit v2

    throw v1
.end method

.method public onPackageRemoved(Ljava/lang/String;I)V
    .locals 4
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "uid"    # I

    .prologue
    .line 238
    iget-object v1, p0, Lcom/android/server/location/MetokWatcher$1;->this$0:Lcom/android/server/location/MetokWatcher;

    invoke-static {v1}, Lcom/android/server/location/MetokWatcher;->-get1(Lcom/android/server/location/MetokWatcher;)Ljava/lang/Object;

    move-result-object v2

    monitor-enter v2

    .line 239
    :try_start_0
    iget-object v1, p0, Lcom/android/server/location/MetokWatcher$1;->this$0:Lcom/android/server/location/MetokWatcher;

    invoke-static {v1}, Lcom/android/server/location/MetokWatcher;->-get0(Lcom/android/server/location/MetokWatcher;)Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    .line 240
    .local v0, "forceRebind":Z
    iget-object v1, p0, Lcom/android/server/location/MetokWatcher$1;->this$0:Lcom/android/server/location/MetokWatcher;

    const/4 v3, 0x0

    invoke-static {v1, v3, v0}, Lcom/android/server/location/MetokWatcher;->-wrap0(Lcom/android/server/location/MetokWatcher;Ljava/lang/String;Z)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v2

    .line 237
    return-void

    .line 238
    .end local v0    # "forceRebind":Z
    :catchall_0
    move-exception v1

    monitor-exit v2

    throw v1
.end method

.method public onPackageUpdateFinished(Ljava/lang/String;I)V
    .locals 4
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "uid"    # I

    .prologue
    .line 222
    iget-object v1, p0, Lcom/android/server/location/MetokWatcher$1;->this$0:Lcom/android/server/location/MetokWatcher;

    invoke-static {v1}, Lcom/android/server/location/MetokWatcher;->-get1(Lcom/android/server/location/MetokWatcher;)Ljava/lang/Object;

    move-result-object v2

    monitor-enter v2

    .line 223
    :try_start_0
    iget-object v1, p0, Lcom/android/server/location/MetokWatcher$1;->this$0:Lcom/android/server/location/MetokWatcher;

    invoke-static {v1}, Lcom/android/server/location/MetokWatcher;->-get0(Lcom/android/server/location/MetokWatcher;)Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    .line 224
    .local v0, "forceRebind":Z
    iget-object v1, p0, Lcom/android/server/location/MetokWatcher$1;->this$0:Lcom/android/server/location/MetokWatcher;

    const/4 v3, 0x0

    invoke-static {v1, v3, v0}, Lcom/android/server/location/MetokWatcher;->-wrap0(Lcom/android/server/location/MetokWatcher;Ljava/lang/String;Z)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v2

    .line 221
    return-void

    .line 222
    .end local v0    # "forceRebind":Z
    :catchall_0
    move-exception v1

    monitor-exit v2

    throw v1
.end method
