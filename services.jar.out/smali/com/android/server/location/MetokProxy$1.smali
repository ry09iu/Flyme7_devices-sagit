.class Lcom/android/server/location/MetokProxy$1;
.super Ljava/lang/Object;
.source "MetokProxy.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/location/MetokProxy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/location/MetokProxy;


# direct methods
.method constructor <init>(Lcom/android/server/location/MetokProxy;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/location/MetokProxy;

    .prologue
    .line 151
    iput-object p1, p0, Lcom/android/server/location/MetokProxy$1;->this$0:Lcom/android/server/location/MetokProxy;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 10

    .prologue
    .line 154
    invoke-static {}, Lcom/android/server/location/MetokProxy;->-get0()Z

    move-result v7

    if-eqz v7, :cond_0

    const-string/jumbo v7, "MetokProxy"

    const-string/jumbo v8, "applying state to connected service"

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 157
    :cond_0
    const/4 v3, 0x0

    .line 161
    .local v3, "properties":Lcom/android/internal/location/ProviderProperties;
    iget-object v7, p0, Lcom/android/server/location/MetokProxy$1;->this$0:Lcom/android/server/location/MetokProxy;

    invoke-static {v7}, Lcom/android/server/location/MetokProxy;->-get2(Lcom/android/server/location/MetokProxy;)Ljava/lang/Object;

    move-result-object v8

    monitor-enter v8

    .line 162
    :try_start_0
    iget-object v7, p0, Lcom/android/server/location/MetokProxy$1;->this$0:Lcom/android/server/location/MetokProxy;

    invoke-static {v7}, Lcom/android/server/location/MetokProxy;->-get1(Lcom/android/server/location/MetokProxy;)Z

    move-result v2

    .line 163
    .local v2, "enabled":Z
    iget-object v7, p0, Lcom/android/server/location/MetokProxy$1;->this$0:Lcom/android/server/location/MetokProxy;

    invoke-static {v7}, Lcom/android/server/location/MetokProxy;->-get3(Lcom/android/server/location/MetokProxy;)Lcom/android/internal/location/ProviderRequest;

    move-result-object v4

    .line 164
    .local v4, "request":Lcom/android/internal/location/ProviderRequest;
    iget-object v7, p0, Lcom/android/server/location/MetokProxy$1;->this$0:Lcom/android/server/location/MetokProxy;

    invoke-static {v7}, Lcom/android/server/location/MetokProxy;->-get5(Lcom/android/server/location/MetokProxy;)Landroid/os/WorkSource;

    move-result-object v6

    .line 165
    .local v6, "source":Landroid/os/WorkSource;
    iget-object v7, p0, Lcom/android/server/location/MetokProxy$1;->this$0:Lcom/android/server/location/MetokProxy;

    invoke-static {v7}, Lcom/android/server/location/MetokProxy;->-wrap0(Lcom/android/server/location/MetokProxy;)Lcom/android/internal/location/ILocationProvider;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v5

    .local v5, "service":Lcom/android/internal/location/ILocationProvider;
    monitor-exit v8

    .line 168
    if-nez v5, :cond_1

    return-void

    .line 161
    .end local v2    # "enabled":Z
    .end local v4    # "request":Lcom/android/internal/location/ProviderRequest;
    .end local v5    # "service":Lcom/android/internal/location/ILocationProvider;
    .end local v6    # "source":Landroid/os/WorkSource;
    :catchall_0
    move-exception v7

    monitor-exit v8

    throw v7

    .line 172
    .restart local v2    # "enabled":Z
    .restart local v4    # "request":Lcom/android/internal/location/ProviderRequest;
    .restart local v5    # "service":Lcom/android/internal/location/ILocationProvider;
    .restart local v6    # "source":Landroid/os/WorkSource;
    :cond_1
    :try_start_1
    invoke-interface {v5}, Lcom/android/internal/location/ILocationProvider;->getProperties()Lcom/android/internal/location/ProviderProperties;

    move-result-object v3

    .line 173
    .local v3, "properties":Lcom/android/internal/location/ProviderProperties;
    if-nez v3, :cond_2

    .line 174
    const-string/jumbo v7, "MetokProxy"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v9, p0, Lcom/android/server/location/MetokProxy$1;->this$0:Lcom/android/server/location/MetokProxy;

    invoke-static {v9}, Lcom/android/server/location/MetokProxy;->-get4(Lcom/android/server/location/MetokProxy;)Lcom/android/server/location/MetokWatcher;

    move-result-object v9

    invoke-virtual {v9}, Lcom/android/server/location/MetokWatcher;->getPackageName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    .line 175
    const-string/jumbo v9, " has invalid locatino provider properties"

    .line 174
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 179
    :cond_2
    if-eqz v2, :cond_3

    .line 180
    invoke-interface {v5}, Lcom/android/internal/location/ILocationProvider;->enable()V

    .line 181
    if-eqz v4, :cond_3

    .line 182
    invoke-interface {v5, v4, v6}, Lcom/android/internal/location/ILocationProvider;->setRequest(Lcom/android/internal/location/ProviderRequest;Landroid/os/WorkSource;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 192
    .end local v3    # "properties":Lcom/android/internal/location/ProviderProperties;
    :cond_3
    :goto_0
    iget-object v7, p0, Lcom/android/server/location/MetokProxy$1;->this$0:Lcom/android/server/location/MetokProxy;

    invoke-static {v7}, Lcom/android/server/location/MetokProxy;->-get2(Lcom/android/server/location/MetokProxy;)Ljava/lang/Object;

    move-result-object v8

    monitor-enter v8

    .line 193
    :try_start_2
    iget-object v7, p0, Lcom/android/server/location/MetokProxy$1;->this$0:Lcom/android/server/location/MetokProxy;

    invoke-static {v7, v3}, Lcom/android/server/location/MetokProxy;->-set0(Lcom/android/server/location/MetokProxy;Lcom/android/internal/location/ProviderProperties;)Lcom/android/internal/location/ProviderProperties;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    monitor-exit v8

    .line 153
    return-void

    .line 187
    :catch_0
    move-exception v1

    .line 189
    .local v1, "e":Ljava/lang/Exception;
    const-string/jumbo v7, "MetokProxy"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "Exception from "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Lcom/android/server/location/MetokProxy$1;->this$0:Lcom/android/server/location/MetokProxy;

    invoke-static {v9}, Lcom/android/server/location/MetokProxy;->-get4(Lcom/android/server/location/MetokProxy;)Lcom/android/server/location/MetokWatcher;

    move-result-object v9

    invoke-virtual {v9}, Lcom/android/server/location/MetokWatcher;->getPackageName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 185
    .end local v1    # "e":Ljava/lang/Exception;
    :catch_1
    move-exception v0

    .line 186
    .local v0, "e":Landroid/os/RemoteException;
    const-string/jumbo v7, "MetokProxy"

    invoke-static {v7, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 192
    .end local v0    # "e":Landroid/os/RemoteException;
    :catchall_1
    move-exception v7

    monitor-exit v8

    throw v7
.end method
