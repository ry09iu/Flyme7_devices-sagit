.class public Lcom/android/commands/pm/PmInjector$InstallObserver;
.super Landroid/os/IMessenger$Stub;
.source "PmInjector.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/commands/pm/PmInjector;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "InstallObserver"
.end annotation


# instance fields
.field finished:Z

.field msg:Ljava/lang/String;

.field result:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 97
    invoke-direct {p0}, Landroid/os/IMessenger$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public send(Landroid/os/Message;)V
    .locals 2
    .param p1, "message"    # Landroid/os/Message;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 104
    monitor-enter p0

    .line 105
    const/4 v1, 0x1

    :try_start_0
    iput-boolean v1, p0, Lcom/android/commands/pm/PmInjector$InstallObserver;->finished:Z

    .line 106
    iget v1, p1, Landroid/os/Message;->what:I

    iput v1, p0, Lcom/android/commands/pm/PmInjector$InstallObserver;->result:I

    .line 107
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v0

    .line 108
    .local v0, "data":Landroid/os/Bundle;
    if-eqz v0, :cond_0

    .line 109
    const-string/jumbo v1, "msg"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/commands/pm/PmInjector$InstallObserver;->msg:Ljava/lang/String;

    .line 111
    :cond_0
    invoke-virtual {p0}, Lcom/android/commands/pm/PmInjector$InstallObserver;->notifyAll()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    .line 103
    return-void

    .line 104
    .end local v0    # "data":Landroid/os/Bundle;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method
