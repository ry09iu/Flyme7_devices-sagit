.class Landroid/support/v4/media/MediaBrowserServiceCompat$MediaBrowserServiceImplApi21$1;
.super Ljava/lang/Object;
.source "MediaBrowserServiceCompat.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/support/v4/media/MediaBrowserServiceCompat$MediaBrowserServiceImplApi21;->notifyChildrenChanged(Ljava/lang/String;Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Landroid/support/v4/media/MediaBrowserServiceCompat$MediaBrowserServiceImplApi21;

.field final synthetic val$options:Landroid/os/Bundle;

.field final synthetic val$parentId:Ljava/lang/String;


# direct methods
.method constructor <init>(Landroid/support/v4/media/MediaBrowserServiceCompat$MediaBrowserServiceImplApi21;Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 0
    .param p1, "this$1"    # Landroid/support/v4/media/MediaBrowserServiceCompat$MediaBrowserServiceImplApi21;
    .param p2, "val$parentId"    # Ljava/lang/String;
    .param p3, "val$options"    # Landroid/os/Bundle;

    .prologue
    .line 237
    iput-object p1, p0, Landroid/support/v4/media/MediaBrowserServiceCompat$MediaBrowserServiceImplApi21$1;->this$1:Landroid/support/v4/media/MediaBrowserServiceCompat$MediaBrowserServiceImplApi21;

    iput-object p2, p0, Landroid/support/v4/media/MediaBrowserServiceCompat$MediaBrowserServiceImplApi21$1;->val$parentId:Ljava/lang/String;

    iput-object p3, p0, Landroid/support/v4/media/MediaBrowserServiceCompat$MediaBrowserServiceImplApi21$1;->val$options:Landroid/os/Bundle;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 9

    .prologue
    .line 240
    iget-object v6, p0, Landroid/support/v4/media/MediaBrowserServiceCompat$MediaBrowserServiceImplApi21$1;->this$1:Landroid/support/v4/media/MediaBrowserServiceCompat$MediaBrowserServiceImplApi21;

    iget-object v6, v6, Landroid/support/v4/media/MediaBrowserServiceCompat$MediaBrowserServiceImplApi21;->this$0:Landroid/support/v4/media/MediaBrowserServiceCompat;

    iget-object v6, v6, Landroid/support/v4/media/MediaBrowserServiceCompat;->mConnections:Landroid/support/v4/util/ArrayMap;

    invoke-virtual {v6}, Landroid/support/v4/util/ArrayMap;->keySet()Ljava/util/Set;

    move-result-object v6

    invoke-interface {v6}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "binder$iterator":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/IBinder;

    .line 241
    .local v0, "binder":Landroid/os/IBinder;
    iget-object v6, p0, Landroid/support/v4/media/MediaBrowserServiceCompat$MediaBrowserServiceImplApi21$1;->this$1:Landroid/support/v4/media/MediaBrowserServiceCompat$MediaBrowserServiceImplApi21;

    iget-object v6, v6, Landroid/support/v4/media/MediaBrowserServiceCompat$MediaBrowserServiceImplApi21;->this$0:Landroid/support/v4/media/MediaBrowserServiceCompat;

    iget-object v6, v6, Landroid/support/v4/media/MediaBrowserServiceCompat;->mConnections:Landroid/support/v4/util/ArrayMap;

    invoke-virtual {v6, v0}, Landroid/support/v4/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/support/v4/media/MediaBrowserServiceCompat$ConnectionRecord;

    .line 243
    .local v5, "connection":Landroid/support/v4/media/MediaBrowserServiceCompat$ConnectionRecord;
    iget-object v6, v5, Landroid/support/v4/media/MediaBrowserServiceCompat$ConnectionRecord;->subscriptions:Ljava/util/HashMap;

    iget-object v7, p0, Landroid/support/v4/media/MediaBrowserServiceCompat$MediaBrowserServiceImplApi21$1;->val$parentId:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    .line 244
    .local v4, "callbackList":Ljava/util/List;, "Ljava/util/List<Landroid/support/v4/util/Pair<Landroid/os/IBinder;Landroid/os/Bundle;>;>;"
    if-eqz v4, :cond_0

    .line 245
    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "callback$iterator":Ljava/util/Iterator;
    :cond_1
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/support/v4/util/Pair;

    .line 247
    .local v2, "callback":Landroid/support/v4/util/Pair;, "Landroid/support/v4/util/Pair<Landroid/os/IBinder;Landroid/os/Bundle;>;"
    iget-object v7, p0, Landroid/support/v4/media/MediaBrowserServiceCompat$MediaBrowserServiceImplApi21$1;->val$options:Landroid/os/Bundle;

    iget-object v6, v2, Landroid/support/v4/util/Pair;->second:Ljava/lang/Object;

    check-cast v6, Landroid/os/Bundle;

    .line 246
    invoke-static {v7, v6}, Landroid/support/v4/media/MediaBrowserCompatUtils;->hasDuplicatedItems(Landroid/os/Bundle;Landroid/os/Bundle;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 248
    iget-object v6, p0, Landroid/support/v4/media/MediaBrowserServiceCompat$MediaBrowserServiceImplApi21$1;->this$1:Landroid/support/v4/media/MediaBrowserServiceCompat$MediaBrowserServiceImplApi21;

    iget-object v7, v6, Landroid/support/v4/media/MediaBrowserServiceCompat$MediaBrowserServiceImplApi21;->this$0:Landroid/support/v4/media/MediaBrowserServiceCompat;

    iget-object v8, p0, Landroid/support/v4/media/MediaBrowserServiceCompat$MediaBrowserServiceImplApi21$1;->val$parentId:Ljava/lang/String;

    iget-object v6, v2, Landroid/support/v4/util/Pair;->second:Ljava/lang/Object;

    check-cast v6, Landroid/os/Bundle;

    invoke-virtual {v7, v8, v5, v6}, Landroid/support/v4/media/MediaBrowserServiceCompat;->performLoadChildren(Ljava/lang/String;Landroid/support/v4/media/MediaBrowserServiceCompat$ConnectionRecord;Landroid/os/Bundle;)V

    goto :goto_0

    .line 239
    .end local v0    # "binder":Landroid/os/IBinder;
    .end local v2    # "callback":Landroid/support/v4/util/Pair;, "Landroid/support/v4/util/Pair<Landroid/os/IBinder;Landroid/os/Bundle;>;"
    .end local v3    # "callback$iterator":Ljava/util/Iterator;
    .end local v4    # "callbackList":Ljava/util/List;, "Ljava/util/List<Landroid/support/v4/util/Pair<Landroid/os/IBinder;Landroid/os/Bundle;>;>;"
    .end local v5    # "connection":Landroid/support/v4/media/MediaBrowserServiceCompat$ConnectionRecord;
    :cond_2
    return-void
.end method
