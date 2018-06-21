.class public final Lcom/android/server/AppOpsServiceState$Callback;
.super Ljava/lang/Object;
.source "AppOpsServiceState.java"

# interfaces
.implements Landroid/os/IBinder$DeathRecipient;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/AppOpsServiceState;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "Callback"
.end annotation


# instance fields
.field final mCallback:Lcom/android/internal/app/IOpsCallback;

.field volatile mUnLink:Z

.field final mUserId:I

.field final synthetic this$0:Lcom/android/server/AppOpsServiceState;


# direct methods
.method public constructor <init>(Lcom/android/server/AppOpsServiceState;Lcom/android/internal/app/IOpsCallback;I)V
    .locals 3
    .param p1, "this$0"    # Lcom/android/server/AppOpsServiceState;
    .param p2, "callback"    # Lcom/android/internal/app/IOpsCallback;
    .param p3, "userId"    # I

    .prologue
    .line 299
    iput-object p1, p0, Lcom/android/server/AppOpsServiceState$Callback;->this$0:Lcom/android/server/AppOpsServiceState;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 300
    iput-object p2, p0, Lcom/android/server/AppOpsServiceState$Callback;->mCallback:Lcom/android/internal/app/IOpsCallback;

    .line 301
    iput p3, p0, Lcom/android/server/AppOpsServiceState$Callback;->mUserId:I

    .line 303
    :try_start_0
    iget-object v1, p0, Lcom/android/server/AppOpsServiceState$Callback;->mCallback:Lcom/android/internal/app/IOpsCallback;

    invoke-interface {v1}, Lcom/android/internal/app/IOpsCallback;->asBinder()Landroid/os/IBinder;

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {v1, p0, v2}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V

    .line 304
    const-string/jumbo v1, "AppOpsServiceState"

    const-string/jumbo v2, "linkToDeath"

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 299
    :goto_0
    return-void

    .line 305
    :catch_0
    move-exception v0

    .local v0, "e":Landroid/os/RemoteException;
    goto :goto_0
.end method


# virtual methods
.method public binderDied()V
    .locals 3

    .prologue
    .line 322
    invoke-virtual {p0}, Lcom/android/server/AppOpsServiceState$Callback;->unlinkToDeath()V

    .line 323
    iget-object v0, p0, Lcom/android/server/AppOpsServiceState$Callback;->this$0:Lcom/android/server/AppOpsServiceState;

    iget v1, p0, Lcom/android/server/AppOpsServiceState$Callback;->mUserId:I

    invoke-static {v0, v1}, Lcom/android/server/AppOpsServiceState;->-wrap0(Lcom/android/server/AppOpsServiceState;I)V

    .line 324
    const-string/jumbo v0, "AppOpsServiceState"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "binderDied mUserId : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/server/AppOpsServiceState$Callback;->mUserId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 321
    return-void
.end method

.method public unlinkToDeath()V
    .locals 3

    .prologue
    .line 310
    iget-boolean v1, p0, Lcom/android/server/AppOpsServiceState$Callback;->mUnLink:Z

    if-eqz v1, :cond_0

    .line 311
    return-void

    .line 314
    :cond_0
    const/4 v1, 0x1

    :try_start_0
    iput-boolean v1, p0, Lcom/android/server/AppOpsServiceState$Callback;->mUnLink:Z

    .line 315
    iget-object v1, p0, Lcom/android/server/AppOpsServiceState$Callback;->mCallback:Lcom/android/internal/app/IOpsCallback;

    invoke-interface {v1}, Lcom/android/internal/app/IOpsCallback;->asBinder()Landroid/os/IBinder;

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {v1, p0, v2}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 309
    :goto_0
    return-void

    .line 316
    :catch_0
    move-exception v0

    .local v0, "e":Ljava/lang/Exception;
    goto :goto_0
.end method
