.class final Lcom/android/server/power/ShutdownThreadInjector$1;
.super Ljava/lang/Object;
.source "ShutdownThreadInjector.java"

# interfaces
.implements Landroid/media/MediaPlayer$OnCompletionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/power/ShutdownThreadInjector;->playShutdownMusicImpl(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$actionDoneSync:Ljava/lang/Object;


# direct methods
.method constructor <init>(Ljava/lang/Object;)V
    .locals 0
    .param p1, "val$actionDoneSync"    # Ljava/lang/Object;

    .prologue
    .line 138
    iput-object p1, p0, Lcom/android/server/power/ShutdownThreadInjector$1;->val$actionDoneSync:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCompletion(Landroid/media/MediaPlayer;)V
    .locals 2
    .param p1, "mp"    # Landroid/media/MediaPlayer;

    .prologue
    .line 141
    iget-object v1, p0, Lcom/android/server/power/ShutdownThreadInjector$1;->val$actionDoneSync:Ljava/lang/Object;

    monitor-enter v1

    .line 142
    const/4 v0, 0x0

    :try_start_0
    invoke-static {v0}, Lcom/android/server/power/ShutdownThreadInjector;->-set0(Z)Z

    .line 143
    iget-object v0, p0, Lcom/android/server/power/ShutdownThreadInjector$1;->val$actionDoneSync:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    .line 140
    return-void

    .line 141
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method
