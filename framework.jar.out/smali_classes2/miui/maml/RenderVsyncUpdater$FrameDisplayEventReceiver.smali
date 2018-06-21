.class final Lmiui/maml/RenderVsyncUpdater$FrameDisplayEventReceiver;
.super Landroid/view/DisplayEventReceiver;
.source "RenderVsyncUpdater.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiui/maml/RenderVsyncUpdater;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "FrameDisplayEventReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Lmiui/maml/RenderVsyncUpdater;


# direct methods
.method public constructor <init>(Lmiui/maml/RenderVsyncUpdater;Landroid/os/Looper;)V
    .locals 0
    .param p1, "this$0"    # Lmiui/maml/RenderVsyncUpdater;
    .param p2, "looper"    # Landroid/os/Looper;

    .prologue
    .line 158
    iput-object p1, p0, Lmiui/maml/RenderVsyncUpdater$FrameDisplayEventReceiver;->this$0:Lmiui/maml/RenderVsyncUpdater;

    .line 159
    invoke-direct {p0, p2}, Landroid/view/DisplayEventReceiver;-><init>(Landroid/os/Looper;)V

    .line 158
    return-void
.end method


# virtual methods
.method public onVsync(JII)V
    .locals 5
    .param p1, "timestampNanos"    # J
    .param p3, "builtInDisplayId"    # I
    .param p4, "frame"    # I

    .prologue
    .line 164
    iget-object v1, p0, Lmiui/maml/RenderVsyncUpdater$FrameDisplayEventReceiver;->this$0:Lmiui/maml/RenderVsyncUpdater;

    invoke-static {v1}, Lmiui/maml/RenderVsyncUpdater;->-get1(Lmiui/maml/RenderVsyncUpdater;)I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-static {v1, v2}, Lmiui/maml/RenderVsyncUpdater;->-set1(Lmiui/maml/RenderVsyncUpdater;I)I

    .line 165
    iget-object v1, p0, Lmiui/maml/RenderVsyncUpdater$FrameDisplayEventReceiver;->this$0:Lmiui/maml/RenderVsyncUpdater;

    invoke-static {v1}, Lmiui/maml/RenderVsyncUpdater;->-get0(Lmiui/maml/RenderVsyncUpdater;)Landroid/os/Handler;

    move-result-object v1

    invoke-static {v1, p0}, Landroid/os/Message;->obtain(Landroid/os/Handler;Ljava/lang/Runnable;)Landroid/os/Message;

    move-result-object v0

    .line 166
    .local v0, "msg":Landroid/os/Message;
    iget-object v1, p0, Lmiui/maml/RenderVsyncUpdater$FrameDisplayEventReceiver;->this$0:Lmiui/maml/RenderVsyncUpdater;

    invoke-static {v1}, Lmiui/maml/RenderVsyncUpdater;->-get0(Lmiui/maml/RenderVsyncUpdater;)Landroid/os/Handler;

    move-result-object v1

    const-wide/32 v2, 0xf4240

    div-long v2, p1, v2

    invoke-virtual {v1, v0, v2, v3}, Landroid/os/Handler;->sendMessageAtTime(Landroid/os/Message;J)Z

    .line 163
    return-void
.end method

.method public run()V
    .locals 1

    .prologue
    .line 171
    iget-object v0, p0, Lmiui/maml/RenderVsyncUpdater$FrameDisplayEventReceiver;->this$0:Lmiui/maml/RenderVsyncUpdater;

    invoke-static {v0}, Lmiui/maml/RenderVsyncUpdater;->-get1(Lmiui/maml/RenderVsyncUpdater;)I

    move-result v0

    if-gtz v0, :cond_0

    .line 172
    iget-object v0, p0, Lmiui/maml/RenderVsyncUpdater$FrameDisplayEventReceiver;->this$0:Lmiui/maml/RenderVsyncUpdater;

    invoke-static {v0}, Lmiui/maml/RenderVsyncUpdater;->-wrap1(Lmiui/maml/RenderVsyncUpdater;)V

    .line 170
    :goto_0
    return-void

    .line 174
    :cond_0
    invoke-virtual {p0}, Lmiui/maml/RenderVsyncUpdater$FrameDisplayEventReceiver;->scheduleVsync()V

    goto :goto_0
.end method
