.class Lcom/android/server/HandyMode$RotationWatcher;
.super Landroid/view/IRotationWatcher$Stub;
.source "HandyMode.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/HandyMode;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "RotationWatcher"
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 113
    invoke-direct {p0}, Landroid/view/IRotationWatcher$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public onRotationChanged(I)V
    .locals 2
    .param p1, "rotation"    # I

    .prologue
    .line 115
    invoke-static {}, Lmiui/util/HandyModeUtils;->isFeatureVisible()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 116
    :cond_0
    if-eqz p1, :cond_1

    invoke-static {}, Lcom/android/server/HandyMode;->-get0()I

    move-result v0

    if-eqz v0, :cond_1

    .line 117
    sget-object v0, Lcom/android/server/HandyMode;->sHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/server/HandyMode$RotationWatcher$1;

    invoke-direct {v1, p0}, Lcom/android/server/HandyMode$RotationWatcher$1;-><init>(Lcom/android/server/HandyMode$RotationWatcher;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 114
    :cond_1
    return-void
.end method
