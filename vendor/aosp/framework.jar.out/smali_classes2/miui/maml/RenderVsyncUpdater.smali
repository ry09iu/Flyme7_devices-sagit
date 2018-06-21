.class public abstract Lmiui/maml/RenderVsyncUpdater;
.super Ljava/lang/Object;
.source "RenderVsyncUpdater.java"

# interfaces
.implements Lmiui/maml/RendererController$ISelfUpdateRenderable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmiui/maml/RenderVsyncUpdater$1;,
        Lmiui/maml/RenderVsyncUpdater$FrameDisplayEventReceiver;
    }
.end annotation


# instance fields
.field private mAutoCleanup:Z

.field private mCreateTime:J

.field private mDelay:J

.field private mDisplayEventReceiver:Lmiui/maml/RenderVsyncUpdater$FrameDisplayEventReceiver;

.field private mHandler:Landroid/os/Handler;

.field protected mLastUpdateTime:J

.field protected mNextUpdateInterval:J

.field private mPaused:Z

.field protected mPendingRender:Z

.field private mRoot:Lmiui/maml/ScreenElementRoot;

.field private mRunUpdater:Ljava/lang/Runnable;

.field private mStarted:Z

.field private mVsyncLeft:I


# direct methods
.method static synthetic -get0(Lmiui/maml/RenderVsyncUpdater;)Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Lmiui/maml/RenderVsyncUpdater;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic -get1(Lmiui/maml/RenderVsyncUpdater;)I
    .locals 1

    iget v0, p0, Lmiui/maml/RenderVsyncUpdater;->mVsyncLeft:I

    return v0
.end method

.method static synthetic -set0(Lmiui/maml/RenderVsyncUpdater;Z)Z
    .locals 0

    iput-boolean p1, p0, Lmiui/maml/RenderVsyncUpdater;->mStarted:Z

    return p1
.end method

.method static synthetic -set1(Lmiui/maml/RenderVsyncUpdater;I)I
    .locals 0

    iput p1, p0, Lmiui/maml/RenderVsyncUpdater;->mVsyncLeft:I

    return p1
.end method

.method static synthetic -wrap0(Lmiui/maml/RenderVsyncUpdater;)V
    .locals 0

    invoke-direct {p0}, Lmiui/maml/RenderVsyncUpdater;->doRunUpdater()V

    return-void
.end method

.method static synthetic -wrap1(Lmiui/maml/RenderVsyncUpdater;)V
    .locals 0

    invoke-direct {p0}, Lmiui/maml/RenderVsyncUpdater;->scheduleFrame()V

    return-void
.end method

.method public constructor <init>(Lmiui/maml/ScreenElementRoot;Landroid/os/Handler;)V
    .locals 1
    .param p1, "root"    # Lmiui/maml/ScreenElementRoot;
    .param p2, "h"    # Landroid/os/Handler;

    .prologue
    .line 29
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lmiui/maml/RenderVsyncUpdater;-><init>(Lmiui/maml/ScreenElementRoot;Landroid/os/Handler;Z)V

    .line 28
    return-void
.end method

.method public constructor <init>(Lmiui/maml/ScreenElementRoot;Landroid/os/Handler;Z)V
    .locals 2
    .param p1, "root"    # Lmiui/maml/ScreenElementRoot;
    .param p2, "h"    # Landroid/os/Handler;
    .param p3, "autoCleanup"    # Z

    .prologue
    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 60
    new-instance v0, Lmiui/maml/RenderVsyncUpdater$1;

    invoke-direct {v0, p0}, Lmiui/maml/RenderVsyncUpdater$1;-><init>(Lmiui/maml/RenderVsyncUpdater;)V

    iput-object v0, p0, Lmiui/maml/RenderVsyncUpdater;->mRunUpdater:Ljava/lang/Runnable;

    .line 33
    iput-object p1, p0, Lmiui/maml/RenderVsyncUpdater;->mRoot:Lmiui/maml/ScreenElementRoot;

    .line 34
    iput-object p2, p0, Lmiui/maml/RenderVsyncUpdater;->mHandler:Landroid/os/Handler;

    .line 35
    iput-boolean p3, p0, Lmiui/maml/RenderVsyncUpdater;->mAutoCleanup:Z

    .line 36
    new-instance v0, Lmiui/maml/RenderVsyncUpdater$FrameDisplayEventReceiver;

    invoke-virtual {p2}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lmiui/maml/RenderVsyncUpdater$FrameDisplayEventReceiver;-><init>(Lmiui/maml/RenderVsyncUpdater;Landroid/os/Looper;)V

    iput-object v0, p0, Lmiui/maml/RenderVsyncUpdater;->mDisplayEventReceiver:Lmiui/maml/RenderVsyncUpdater$FrameDisplayEventReceiver;

    .line 32
    return-void
.end method

.method private checkDelay()J
    .locals 8

    .prologue
    const-wide/16 v2, 0x0

    .line 94
    iget-wide v4, p0, Lmiui/maml/RenderVsyncUpdater;->mDelay:J

    cmp-long v4, v4, v2

    if-gtz v4, :cond_0

    .line 95
    return-wide v2

    .line 97
    :cond_0
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    iget-wide v6, p0, Lmiui/maml/RenderVsyncUpdater;->mCreateTime:J

    sub-long v0, v4, v6

    .line 98
    .local v0, "elapsed":J
    iget-wide v4, p0, Lmiui/maml/RenderVsyncUpdater;->mDelay:J

    cmp-long v4, v0, v4

    if-gez v4, :cond_1

    iget-wide v2, p0, Lmiui/maml/RenderVsyncUpdater;->mDelay:J

    sub-long/2addr v2, v0

    :cond_1
    return-wide v2
.end method

.method private doRunUpdater()V
    .locals 2

    .prologue
    .line 81
    iget v0, p0, Lmiui/maml/RenderVsyncUpdater;->mVsyncLeft:I

    if-lez v0, :cond_0

    .line 82
    iget-object v0, p0, Lmiui/maml/RenderVsyncUpdater;->mDisplayEventReceiver:Lmiui/maml/RenderVsyncUpdater$FrameDisplayEventReceiver;

    invoke-virtual {v0}, Lmiui/maml/RenderVsyncUpdater$FrameDisplayEventReceiver;->scheduleVsync()V

    .line 80
    :goto_0
    return-void

    .line 84
    :cond_0
    iget-object v0, p0, Lmiui/maml/RenderVsyncUpdater;->mHandler:Landroid/os/Handler;

    new-instance v1, Lmiui/maml/RenderVsyncUpdater$2;

    invoke-direct {v1, p0}, Lmiui/maml/RenderVsyncUpdater$2;-><init>(Lmiui/maml/RenderVsyncUpdater;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method

.method private scheduleFrame()V
    .locals 6

    .prologue
    .line 146
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    .line 148
    .local v0, "currentTime":J
    iget-object v2, p0, Lmiui/maml/RenderVsyncUpdater;->mRoot:Lmiui/maml/ScreenElementRoot;

    invoke-virtual {v2, v0, v1}, Lmiui/maml/ScreenElementRoot;->update(J)J

    move-result-wide v2

    iput-wide v2, p0, Lmiui/maml/RenderVsyncUpdater;->mNextUpdateInterval:J

    .line 149
    iget-wide v2, p0, Lmiui/maml/RenderVsyncUpdater;->mNextUpdateInterval:J

    const-wide/16 v4, 0x10

    div-long/2addr v2, v4

    long-to-int v2, v2

    iput v2, p0, Lmiui/maml/RenderVsyncUpdater;->mVsyncLeft:I

    .line 150
    iget v2, p0, Lmiui/maml/RenderVsyncUpdater;->mVsyncLeft:I

    if-lez v2, :cond_0

    .line 151
    iget v2, p0, Lmiui/maml/RenderVsyncUpdater;->mVsyncLeft:I

    add-int/lit8 v2, v2, -0x1

    iput v2, p0, Lmiui/maml/RenderVsyncUpdater;->mVsyncLeft:I

    .line 145
    :cond_0
    return-void
.end method


# virtual methods
.method public cleanUp()V
    .locals 1

    .prologue
    .line 116
    const/4 v0, 0x1

    iput-boolean v0, p0, Lmiui/maml/RenderVsyncUpdater;->mPaused:Z

    .line 117
    iget-object v0, p0, Lmiui/maml/RenderVsyncUpdater;->mRoot:Lmiui/maml/ScreenElementRoot;

    invoke-virtual {v0}, Lmiui/maml/ScreenElementRoot;->selfFinish()V

    .line 115
    return-void
.end method

.method public final doRender()V
    .locals 1

    .prologue
    .line 54
    const/4 v0, 0x1

    iput-boolean v0, p0, Lmiui/maml/RenderVsyncUpdater;->mPendingRender:Z

    .line 55
    invoke-virtual {p0}, Lmiui/maml/RenderVsyncUpdater;->doRenderImp()V

    .line 53
    return-void
.end method

.method protected abstract doRenderImp()V
.end method

.method public doneRender()V
    .locals 1

    .prologue
    .line 112
    const/4 v0, 0x0

    iput-boolean v0, p0, Lmiui/maml/RenderVsyncUpdater;->mPendingRender:Z

    .line 111
    return-void
.end method

.method protected finalize()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 139
    iget-boolean v0, p0, Lmiui/maml/RenderVsyncUpdater;->mAutoCleanup:Z

    if-eqz v0, :cond_0

    .line 140
    invoke-virtual {p0}, Lmiui/maml/RenderVsyncUpdater;->cleanUp()V

    .line 142
    :cond_0
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 138
    return-void
.end method

.method public init()V
    .locals 1

    .prologue
    .line 132
    const/4 v0, 0x0

    iput-boolean v0, p0, Lmiui/maml/RenderVsyncUpdater;->mPaused:Z

    .line 133
    iget-object v0, p0, Lmiui/maml/RenderVsyncUpdater;->mRoot:Lmiui/maml/ScreenElementRoot;

    invoke-virtual {v0, p0}, Lmiui/maml/ScreenElementRoot;->setRenderControllerRenderable(Lmiui/maml/RendererController$IRenderable;)V

    .line 134
    iget-object v0, p0, Lmiui/maml/RenderVsyncUpdater;->mRoot:Lmiui/maml/ScreenElementRoot;

    invoke-virtual {v0}, Lmiui/maml/ScreenElementRoot;->selfInit()V

    .line 131
    return-void
.end method

.method public isStarted()Z
    .locals 1

    .prologue
    .line 103
    iget-boolean v0, p0, Lmiui/maml/RenderVsyncUpdater;->mStarted:Z

    return v0
.end method

.method public onPause()V
    .locals 1

    .prologue
    .line 121
    iget-object v0, p0, Lmiui/maml/RenderVsyncUpdater;->mRoot:Lmiui/maml/ScreenElementRoot;

    invoke-virtual {v0}, Lmiui/maml/ScreenElementRoot;->selfPause()V

    .line 122
    const/4 v0, 0x1

    iput-boolean v0, p0, Lmiui/maml/RenderVsyncUpdater;->mPaused:Z

    .line 120
    return-void
.end method

.method public onResume()V
    .locals 1

    .prologue
    .line 126
    const/4 v0, 0x0

    iput-boolean v0, p0, Lmiui/maml/RenderVsyncUpdater;->mPaused:Z

    .line 127
    iget-object v0, p0, Lmiui/maml/RenderVsyncUpdater;->mRoot:Lmiui/maml/ScreenElementRoot;

    invoke-virtual {v0}, Lmiui/maml/ScreenElementRoot;->selfResume()V

    .line 128
    invoke-virtual {p0}, Lmiui/maml/RenderVsyncUpdater;->runUpdater()V

    .line 125
    return-void
.end method

.method public runUpdater()V
    .locals 4

    .prologue
    .line 69
    invoke-direct {p0}, Lmiui/maml/RenderVsyncUpdater;->checkDelay()J

    move-result-wide v0

    .line 70
    .local v0, "delayToRun":J
    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-lez v2, :cond_1

    .line 71
    iget-object v2, p0, Lmiui/maml/RenderVsyncUpdater;->mHandler:Landroid/os/Handler;

    iget-object v3, p0, Lmiui/maml/RenderVsyncUpdater;->mRunUpdater:Ljava/lang/Runnable;

    invoke-virtual {v2, v3}, Landroid/os/Handler;->hasCallbacks(Ljava/lang/Runnable;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 72
    iget-object v2, p0, Lmiui/maml/RenderVsyncUpdater;->mHandler:Landroid/os/Handler;

    iget-object v3, p0, Lmiui/maml/RenderVsyncUpdater;->mRunUpdater:Ljava/lang/Runnable;

    invoke-virtual {v2, v3, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 68
    :cond_0
    :goto_0
    return-void

    .line 75
    :cond_1
    invoke-direct {p0}, Lmiui/maml/RenderVsyncUpdater;->doRunUpdater()V

    .line 76
    const/4 v2, 0x1

    iput-boolean v2, p0, Lmiui/maml/RenderVsyncUpdater;->mStarted:Z

    goto :goto_0
.end method

.method public setAutoCleanup(Z)V
    .locals 0
    .param p1, "autoCleanup"    # Z

    .prologue
    .line 48
    iput-boolean p1, p0, Lmiui/maml/RenderVsyncUpdater;->mAutoCleanup:Z

    .line 47
    return-void
.end method

.method public setStartDelay(JJ)V
    .locals 5
    .param p1, "create"    # J
    .param p3, "delay"    # J

    .prologue
    .line 40
    iput-wide p1, p0, Lmiui/maml/RenderVsyncUpdater;->mCreateTime:J

    .line 41
    iput-wide p3, p0, Lmiui/maml/RenderVsyncUpdater;->mDelay:J

    .line 42
    iget-wide v0, p0, Lmiui/maml/RenderVsyncUpdater;->mDelay:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-gtz v0, :cond_0

    .line 43
    const/4 v0, 0x1

    iput-boolean v0, p0, Lmiui/maml/RenderVsyncUpdater;->mStarted:Z

    .line 39
    :cond_0
    return-void
.end method

.method public triggerUpdate()V
    .locals 0

    .prologue
    .line 108
    invoke-virtual {p0}, Lmiui/maml/RenderVsyncUpdater;->runUpdater()V

    .line 107
    return-void
.end method
