.class Lcom/android/server/wm/MoveWindowService$3;
.super Ljava/lang/Object;
.source "MoveWindowService.java"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/wm/MoveWindowService;->moveWinDown(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final displayContent:Lcom/android/server/wm/DisplayContent;

.field fromY:I

.field final intEvaluator:Landroid/animation/IntEvaluator;

.field final realdh:I

.field final rotated:Z

.field final synthetic this$0:Lcom/android/server/wm/MoveWindowService;

.field toY:I


# direct methods
.method constructor <init>(Lcom/android/server/wm/MoveWindowService;)V
    .locals 4
    .param p1, "this$0"    # Lcom/android/server/wm/MoveWindowService;

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x1

    .line 122
    iput-object p1, p0, Lcom/android/server/wm/MoveWindowService$3;->this$0:Lcom/android/server/wm/MoveWindowService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 123
    new-instance v2, Landroid/animation/IntEvaluator;

    invoke-direct {v2}, Landroid/animation/IntEvaluator;-><init>()V

    iput-object v2, p0, Lcom/android/server/wm/MoveWindowService$3;->intEvaluator:Landroid/animation/IntEvaluator;

    .line 124
    iget-object v2, p0, Lcom/android/server/wm/MoveWindowService$3;->this$0:Lcom/android/server/wm/MoveWindowService;

    iget-object v2, v2, Lcom/android/server/wm/MoveWindowService;->mRealWindowManager:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v2}, Lcom/android/server/wm/WindowManagerService;->getDefaultDisplayContentLocked()Lcom/android/server/wm/DisplayContent;

    move-result-object v2

    iput-object v2, p0, Lcom/android/server/wm/MoveWindowService$3;->displayContent:Lcom/android/server/wm/DisplayContent;

    .line 125
    iget-object v2, p0, Lcom/android/server/wm/MoveWindowService$3;->this$0:Lcom/android/server/wm/MoveWindowService;

    iget-object v2, v2, Lcom/android/server/wm/MoveWindowService;->mRealWindowManager:Lcom/android/server/wm/WindowManagerService;

    iget v2, v2, Lcom/android/server/wm/WindowManagerService;->mRotation:I

    if-eq v2, v0, :cond_0

    .line 126
    iget-object v2, p0, Lcom/android/server/wm/MoveWindowService$3;->this$0:Lcom/android/server/wm/MoveWindowService;

    iget-object v2, v2, Lcom/android/server/wm/MoveWindowService;->mRealWindowManager:Lcom/android/server/wm/WindowManagerService;

    iget v2, v2, Lcom/android/server/wm/WindowManagerService;->mRotation:I

    const/4 v3, 0x3

    if-ne v2, v3, :cond_2

    .line 125
    :cond_0
    :goto_0
    iput-boolean v0, p0, Lcom/android/server/wm/MoveWindowService$3;->rotated:Z

    .line 127
    iget-boolean v0, p0, Lcom/android/server/wm/MoveWindowService$3;->rotated:Z

    if-eqz v0, :cond_3

    .line 128
    iget-object v0, p0, Lcom/android/server/wm/MoveWindowService$3;->displayContent:Lcom/android/server/wm/DisplayContent;

    iget v0, v0, Lcom/android/server/wm/DisplayContent;->mBaseDisplayWidth:I

    .line 127
    :goto_1
    iput v0, p0, Lcom/android/server/wm/MoveWindowService$3;->realdh:I

    .line 129
    iget-object v0, p0, Lcom/android/server/wm/MoveWindowService$3;->this$0:Lcom/android/server/wm/MoveWindowService;

    invoke-static {v0}, Lcom/android/server/wm/MoveWindowService;->-get0(Lcom/android/server/wm/MoveWindowService;)Lcom/android/server/wm/WindowState;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/server/wm/MoveWindowService$3;->this$0:Lcom/android/server/wm/MoveWindowService;

    invoke-static {v0}, Lcom/android/server/wm/MoveWindowService;->-get0(Lcom/android/server/wm/MoveWindowService;)Lcom/android/server/wm/WindowState;

    move-result-object v0

    iget-object v0, v0, Lcom/android/server/wm/WindowState;->mWindowStateExt:Lcom/android/server/wm/WindowStateExt;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowStateExt;->getMovedY()I

    move-result v1

    :cond_1
    iput v1, p0, Lcom/android/server/wm/MoveWindowService$3;->fromY:I

    .line 130
    iget v0, p0, Lcom/android/server/wm/MoveWindowService$3;->realdh:I

    div-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/android/server/wm/MoveWindowService$3;->toY:I

    .line 122
    return-void

    :cond_2
    move v0, v1

    .line 126
    goto :goto_0

    .line 128
    :cond_3
    iget-object v0, p0, Lcom/android/server/wm/MoveWindowService$3;->displayContent:Lcom/android/server/wm/DisplayContent;

    iget v0, v0, Lcom/android/server/wm/DisplayContent;->mBaseDisplayHeight:I

    goto :goto_1
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 5
    .param p1, "animation"    # Landroid/animation/ValueAnimator;

    .prologue
    .line 134
    iget-object v2, p0, Lcom/android/server/wm/MoveWindowService$3;->this$0:Lcom/android/server/wm/MoveWindowService;

    iget-object v3, v2, Lcom/android/server/wm/MoveWindowService;->mLock:Ljava/lang/Object;

    monitor-enter v3

    .line 135
    :try_start_0
    iget-object v2, p0, Lcom/android/server/wm/MoveWindowService$3;->this$0:Lcom/android/server/wm/MoveWindowService;

    invoke-static {v2}, Lcom/android/server/wm/MoveWindowService;->-get0(Lcom/android/server/wm/MoveWindowService;)Lcom/android/server/wm/WindowState;

    move-result-object v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/server/wm/MoveWindowService$3;->this$0:Lcom/android/server/wm/MoveWindowService;

    invoke-static {v2}, Lcom/android/server/wm/MoveWindowService;->-get0(Lcom/android/server/wm/MoveWindowService;)Lcom/android/server/wm/WindowState;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/server/wm/WindowState;->isInMovedMode()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v2

    if-eqz v2, :cond_0

    monitor-exit v3

    .line 145
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Float;

    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    move-result v0

    .line 146
    .local v0, "f":F
    iget-object v2, p0, Lcom/android/server/wm/MoveWindowService$3;->intEvaluator:Landroid/animation/IntEvaluator;

    iget v3, p0, Lcom/android/server/wm/MoveWindowService$3;->fromY:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    iget v4, p0, Lcom/android/server/wm/MoveWindowService$3;->toY:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v0, v3, v4}, Landroid/animation/IntEvaluator;->evaluate(FLjava/lang/Integer;Ljava/lang/Integer;)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 147
    .local v1, "jY":I
    iget-object v2, p0, Lcom/android/server/wm/MoveWindowService$3;->this$0:Lcom/android/server/wm/MoveWindowService;

    const/4 v3, 0x0

    invoke-static {v2, v3, v1}, Lcom/android/server/wm/MoveWindowService;->-wrap0(Lcom/android/server/wm/MoveWindowService;II)V

    .line 133
    return-void

    .line 136
    .end local v0    # "f":F
    .end local v1    # "jY":I
    :cond_0
    :try_start_1
    iget-object v2, p0, Lcom/android/server/wm/MoveWindowService$3;->this$0:Lcom/android/server/wm/MoveWindowService;

    iget-object v2, v2, Lcom/android/server/wm/MoveWindowService;->mH:Landroid/os/Handler;

    new-instance v4, Lcom/android/server/wm/MoveWindowService$3$1;

    invoke-direct {v4, p0, p1}, Lcom/android/server/wm/MoveWindowService$3$1;-><init>(Lcom/android/server/wm/MoveWindowService$3;Landroid/animation/ValueAnimator;)V

    invoke-virtual {v2, v4}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit v3

    .line 142
    return-void

    .line 134
    :catchall_0
    move-exception v2

    monitor-exit v3

    throw v2
.end method
