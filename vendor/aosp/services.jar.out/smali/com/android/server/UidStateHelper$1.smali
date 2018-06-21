.class Lcom/android/server/UidStateHelper$1;
.super Landroid/app/IProcessObserver$Stub;
.source "UidStateHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/UidStateHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/UidStateHelper;


# direct methods
.method constructor <init>(Lcom/android/server/UidStateHelper;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/UidStateHelper;

    .prologue
    .line 161
    iput-object p1, p0, Lcom/android/server/UidStateHelper$1;->this$0:Lcom/android/server/UidStateHelper;

    invoke-direct {p0}, Landroid/app/IProcessObserver$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public onForegroundActivitiesChanged(IIZ)V
    .locals 0
    .param p1, "pid"    # I
    .param p2, "uid"    # I
    .param p3, "foregroundActivities"    # Z

    .prologue
    .line 163
    return-void
.end method

.method public onProcessDied(II)V
    .locals 4
    .param p1, "pid"    # I
    .param p2, "uid"    # I

    .prologue
    .line 187
    invoke-static {}, Lcom/android/server/UidStateHelper;->-get0()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 188
    invoke-static {}, Lcom/android/server/UidStateHelper;->-get1()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "process died:["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ","

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "]"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 190
    :cond_0
    iget-object v1, p0, Lcom/android/server/UidStateHelper$1;->this$0:Lcom/android/server/UidStateHelper;

    invoke-static {v1}, Lcom/android/server/UidStateHelper;->-get2(Lcom/android/server/UidStateHelper;)Ljava/lang/Object;

    move-result-object v2

    monitor-enter v2

    .line 192
    :try_start_0
    iget-object v1, p0, Lcom/android/server/UidStateHelper$1;->this$0:Lcom/android/server/UidStateHelper;

    invoke-static {v1}, Lcom/android/server/UidStateHelper;->-get3(Lcom/android/server/UidStateHelper;)Landroid/util/SparseArray;

    move-result-object v1

    invoke-virtual {v1, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/SparseIntArray;

    .line 193
    .local v0, "pidState":Landroid/util/SparseIntArray;
    if-eqz v0, :cond_2

    .line 194
    invoke-virtual {v0, p1}, Landroid/util/SparseIntArray;->delete(I)V

    .line 195
    invoke-virtual {v0}, Landroid/util/SparseIntArray;->size()I

    move-result v1

    if-gtz v1, :cond_1

    .line 196
    iget-object v1, p0, Lcom/android/server/UidStateHelper$1;->this$0:Lcom/android/server/UidStateHelper;

    invoke-static {v1}, Lcom/android/server/UidStateHelper;->-get3(Lcom/android/server/UidStateHelper;)Landroid/util/SparseArray;

    move-result-object v1

    invoke-virtual {v1, p2}, Landroid/util/SparseArray;->remove(I)V

    .line 198
    :cond_1
    iget-object v1, p0, Lcom/android/server/UidStateHelper$1;->this$0:Lcom/android/server/UidStateHelper;

    invoke-static {v1, p2}, Lcom/android/server/UidStateHelper;->-wrap0(Lcom/android/server/UidStateHelper;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_2
    monitor-exit v2

    .line 186
    return-void

    .line 190
    .end local v0    # "pidState":Landroid/util/SparseIntArray;
    :catchall_0
    move-exception v1

    monitor-exit v2

    throw v1
.end method

.method public onProcessStateChanged(III)V
    .locals 4
    .param p1, "pid"    # I
    .param p2, "uid"    # I
    .param p3, "procState"    # I

    .prologue
    .line 167
    invoke-static {}, Lcom/android/server/UidStateHelper;->-get0()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 168
    invoke-static {}, Lcom/android/server/UidStateHelper;->-get1()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "process state changed:["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ","

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ","

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "]"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 171
    :cond_0
    iget-object v1, p0, Lcom/android/server/UidStateHelper$1;->this$0:Lcom/android/server/UidStateHelper;

    invoke-static {v1}, Lcom/android/server/UidStateHelper;->-get2(Lcom/android/server/UidStateHelper;)Ljava/lang/Object;

    move-result-object v2

    monitor-enter v2

    .line 176
    :try_start_0
    iget-object v1, p0, Lcom/android/server/UidStateHelper$1;->this$0:Lcom/android/server/UidStateHelper;

    invoke-static {v1}, Lcom/android/server/UidStateHelper;->-get3(Lcom/android/server/UidStateHelper;)Landroid/util/SparseArray;

    move-result-object v1

    invoke-virtual {v1, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/SparseIntArray;

    .line 177
    .local v0, "pidState":Landroid/util/SparseIntArray;
    if-nez v0, :cond_1

    .line 178
    new-instance v0, Landroid/util/SparseIntArray;

    .end local v0    # "pidState":Landroid/util/SparseIntArray;
    const/4 v1, 0x2

    invoke-direct {v0, v1}, Landroid/util/SparseIntArray;-><init>(I)V

    .line 179
    .restart local v0    # "pidState":Landroid/util/SparseIntArray;
    iget-object v1, p0, Lcom/android/server/UidStateHelper$1;->this$0:Lcom/android/server/UidStateHelper;

    invoke-static {v1}, Lcom/android/server/UidStateHelper;->-get3(Lcom/android/server/UidStateHelper;)Landroid/util/SparseArray;

    move-result-object v1

    invoke-virtual {v1, p2, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 181
    :cond_1
    invoke-virtual {v0, p1, p3}, Landroid/util/SparseIntArray;->put(II)V

    .line 182
    iget-object v1, p0, Lcom/android/server/UidStateHelper$1;->this$0:Lcom/android/server/UidStateHelper;

    invoke-static {v1, p2}, Lcom/android/server/UidStateHelper;->-wrap0(Lcom/android/server/UidStateHelper;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v2

    .line 166
    return-void

    .line 171
    .end local v0    # "pidState":Landroid/util/SparseIntArray;
    :catchall_0
    move-exception v1

    monitor-exit v2

    throw v1
.end method
