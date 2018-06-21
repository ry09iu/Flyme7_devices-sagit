.class Lcom/android/server/display/DisplayFeatureManager$1;
.super Ljava/lang/Object;
.source "DisplayFeatureManager.java"

# interfaces
.implements Landroid/os/IBinder$DeathRecipient;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/display/DisplayFeatureManager;->initServiceDeathRecipient()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/display/DisplayFeatureManager;


# direct methods
.method constructor <init>(Lcom/android/server/display/DisplayFeatureManager;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/display/DisplayFeatureManager;

    .prologue
    .line 121
    iput-object p1, p0, Lcom/android/server/display/DisplayFeatureManager$1;->this$0:Lcom/android/server/display/DisplayFeatureManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public binderDied()V
    .locals 3

    .prologue
    .line 124
    iget-object v0, p0, Lcom/android/server/display/DisplayFeatureManager$1;->this$0:Lcom/android/server/display/DisplayFeatureManager;

    invoke-static {v0}, Lcom/android/server/display/DisplayFeatureManager;->-get1(Lcom/android/server/display/DisplayFeatureManager;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 125
    :try_start_0
    invoke-static {}, Lcom/android/server/display/DisplayFeatureManager;->-get0()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v2, "binder service binderDied!"

    invoke-static {v0, v2}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 126
    iget-object v0, p0, Lcom/android/server/display/DisplayFeatureManager$1;->this$0:Lcom/android/server/display/DisplayFeatureManager;

    const/4 v2, 0x0

    invoke-static {v0, v2}, Lcom/android/server/display/DisplayFeatureManager;->-set0(Lcom/android/server/display/DisplayFeatureManager;Lcom/android/server/display/DisplayFeatureServiceProxy;)Lcom/android/server/display/DisplayFeatureServiceProxy;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    .line 123
    return-void

    .line 124
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method
