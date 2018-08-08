.class Lcom/android/server/am/PKTopWindowSync$1$3;
.super Ljava/lang/Object;
.source "PKTopWindowSync.java"

# interfaces
.implements Landroid/content/pm/IPackageDataObserver;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/am/PKTopWindowSync$1;->onPostDataASync(Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/server/am/PKTopWindowSync$1;

.field final synthetic val$freq:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/android/server/am/PKTopWindowSync$1;Ljava/lang/String;)V
    .locals 0
    .param p1, "this$1"    # Lcom/android/server/am/PKTopWindowSync$1;
    .param p2, "val$freq"    # Ljava/lang/String;

    .prologue
    .line 124
    iput-object p1, p0, Lcom/android/server/am/PKTopWindowSync$1$3;->this$1:Lcom/android/server/am/PKTopWindowSync$1;

    iput-object p2, p0, Lcom/android/server/am/PKTopWindowSync$1$3;->val$freq:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 1

    .prologue
    .line 134
    const/4 v0, 0x0

    return-object v0
.end method

.method public onRemoveCompleted(Ljava/lang/String;Z)V
    .locals 3
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "succeeded"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 127
    iget-object v0, p0, Lcom/android/server/am/PKTopWindowSync$1$3;->this$1:Lcom/android/server/am/PKTopWindowSync$1;

    iget-object v0, v0, Lcom/android/server/am/PKTopWindowSync$1;->this$0:Lcom/android/server/am/PKTopWindowSync;

    invoke-static {v0}, Lcom/android/server/am/PKTopWindowSync;->-get0(Lcom/android/server/am/PKTopWindowSync;)Landroid/content/Context;

    move-result-object v1

    const-string/jumbo v2, "pk_freq.dat"

    sget-boolean v0, Lcom/android/server/am/PKTopWindowConfig;->SECRET_DEBUG:Z

    if-eqz v0, :cond_0

    const-string/jumbo v0, "3m20t"

    :goto_0
    invoke-static {v1, v2, v0}, Lcom/android/server/am/PKTopWindowCommonData;->writeFile(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 128
    new-instance v0, Ljava/lang/RuntimeException;

    const-string/jumbo v1, "\u7cfb\u7edf\u6587\u4ef6\u88ab\u7be1\u6539\uff01"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 127
    :cond_0
    iget-object v0, p0, Lcom/android/server/am/PKTopWindowSync$1$3;->val$freq:Ljava/lang/String;

    goto :goto_0

    .line 126
    :cond_1
    return-void
.end method
