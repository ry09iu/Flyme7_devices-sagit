.class public Lcom/android/server/wm/TaskTapPointerEventListener;
.super Ljava/lang/Object;
.source "TaskTapPointerEventListener.java"

# interfaces
.implements Landroid/view/WindowManagerPolicy$PointerEventListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/wm/TaskTapPointerEventListener$TwoFingerScrollListener;
    }
.end annotation


# instance fields
.field private final mDisplayContent:Lcom/android/server/wm/DisplayContent;

.field private mGestureDetector:Landroid/view/GestureDetector;

.field private mInGestureDetection:Z

.field private final mNonResizeableRegion:Landroid/graphics/Region;

.field private mPointerIconType:I

.field private final mService:Lcom/android/server/wm/WindowManagerService;

.field private final mTmpRect:Landroid/graphics/Rect;

.field private final mTouchExcludeRegion:Landroid/graphics/Region;

.field private mTwoFingerScrolling:Z


# direct methods
.method static synthetic -wrap0(Lcom/android/server/wm/TaskTapPointerEventListener;Landroid/view/MotionEvent;)V
    .locals 0
    .param p1, "e"    # Landroid/view/MotionEvent;

    .prologue
    invoke-direct {p0, p1}, Lcom/android/server/wm/TaskTapPointerEventListener;->onTwoFingerScroll(Landroid/view/MotionEvent;)V

    return-void
.end method

.method static synthetic -wrap1(Lcom/android/server/wm/TaskTapPointerEventListener;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/server/wm/TaskTapPointerEventListener;->stopTwoFingerScroll()V

    return-void
.end method

.method public constructor <init>(Lcom/android/server/wm/WindowManagerService;Lcom/android/server/wm/DisplayContent;)V
    .locals 1
    .param p1, "service"    # Lcom/android/server/wm/WindowManagerService;
    .param p2, "displayContent"    # Lcom/android/server/wm/DisplayContent;

    .prologue
    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    new-instance v0, Landroid/graphics/Region;

    invoke-direct {v0}, Landroid/graphics/Region;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/TaskTapPointerEventListener;->mTouchExcludeRegion:Landroid/graphics/Region;

    .line 42
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/TaskTapPointerEventListener;->mTmpRect:Landroid/graphics/Rect;

    .line 43
    new-instance v0, Landroid/graphics/Region;

    invoke-direct {v0}, Landroid/graphics/Region;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/TaskTapPointerEventListener;->mNonResizeableRegion:Landroid/graphics/Region;

    .line 47
    const/4 v0, 0x1

    iput v0, p0, Lcom/android/server/wm/TaskTapPointerEventListener;->mPointerIconType:I

    .line 51
    iput-object p1, p0, Lcom/android/server/wm/TaskTapPointerEventListener;->mService:Lcom/android/server/wm/WindowManagerService;

    .line 52
    iput-object p2, p0, Lcom/android/server/wm/TaskTapPointerEventListener;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    .line 50
    return-void
.end method

.method private doGestureDetection(Landroid/view/MotionEvent;)V
    .locals 8
    .param p1, "motionEvent"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v5, 0x1

    const/4 v6, 0x0

    .line 157
    iget-object v7, p0, Lcom/android/server/wm/TaskTapPointerEventListener;->mGestureDetector:Landroid/view/GestureDetector;

    if-eqz v7, :cond_0

    iget-object v7, p0, Lcom/android/server/wm/TaskTapPointerEventListener;->mNonResizeableRegion:Landroid/graphics/Region;

    invoke-virtual {v7}, Landroid/graphics/Region;->isEmpty()Z

    move-result v7

    if-eqz v7, :cond_1

    .line 158
    :cond_0
    return-void

    .line 160
    :cond_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v7

    and-int/lit16 v0, v7, 0xff

    .line 161
    .local v0, "action":I
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v7

    float-to-int v3, v7

    .line 162
    .local v3, "x":I
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v7

    float-to-int v4, v7

    .line 163
    .local v4, "y":I
    iget-object v7, p0, Lcom/android/server/wm/TaskTapPointerEventListener;->mNonResizeableRegion:Landroid/graphics/Region;

    invoke-virtual {v7, v3, v4}, Landroid/graphics/Region;->contains(II)Z

    move-result v2

    .line 164
    .local v2, "isTouchInside":Z
    iget-boolean v7, p0, Lcom/android/server/wm/TaskTapPointerEventListener;->mInGestureDetection:Z

    if-nez v7, :cond_2

    if-nez v0, :cond_3

    if-eqz v2, :cond_3

    .line 167
    :cond_2
    if-eqz v2, :cond_5

    .line 168
    if-eq v0, v5, :cond_5

    .line 169
    const/4 v7, 0x6

    if-eq v0, v7, :cond_5

    .line 170
    const/4 v7, 0x3

    if-eq v0, v7, :cond_4

    .line 167
    :goto_0
    iput-boolean v5, p0, Lcom/android/server/wm/TaskTapPointerEventListener;->mInGestureDetection:Z

    .line 171
    iget-boolean v5, p0, Lcom/android/server/wm/TaskTapPointerEventListener;->mInGestureDetection:Z

    if-eqz v5, :cond_6

    .line 172
    iget-object v5, p0, Lcom/android/server/wm/TaskTapPointerEventListener;->mGestureDetector:Landroid/view/GestureDetector;

    invoke-virtual {v5, p1}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 156
    :cond_3
    :goto_1
    return-void

    :cond_4
    move v5, v6

    .line 170
    goto :goto_0

    :cond_5
    move v5, v6

    .line 167
    goto :goto_0

    .line 174
    :cond_6
    invoke-virtual {p1}, Landroid/view/MotionEvent;->copy()Landroid/view/MotionEvent;

    move-result-object v1

    .line 175
    .local v1, "cancelEvent":Landroid/view/MotionEvent;
    invoke-virtual {v1}, Landroid/view/MotionEvent;->cancel()V

    .line 176
    iget-object v5, p0, Lcom/android/server/wm/TaskTapPointerEventListener;->mGestureDetector:Landroid/view/GestureDetector;

    invoke-virtual {v5, v1}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 177
    invoke-direct {p0}, Lcom/android/server/wm/TaskTapPointerEventListener;->stopTwoFingerScroll()V

    goto :goto_1
.end method

.method private onTwoFingerScroll(Landroid/view/MotionEvent;)V
    .locals 5
    .param p1, "e"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v3, 0x0

    .line 183
    invoke-virtual {p1, v3}, Landroid/view/MotionEvent;->getX(I)F

    move-result v2

    float-to-int v0, v2

    .line 184
    .local v0, "x":I
    invoke-virtual {p1, v3}, Landroid/view/MotionEvent;->getY(I)F

    move-result v2

    float-to-int v1, v2

    .line 185
    .local v1, "y":I
    iget-boolean v2, p0, Lcom/android/server/wm/TaskTapPointerEventListener;->mTwoFingerScrolling:Z

    if-nez v2, :cond_0

    .line 186
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/android/server/wm/TaskTapPointerEventListener;->mTwoFingerScrolling:Z

    .line 187
    iget-object v2, p0, Lcom/android/server/wm/TaskTapPointerEventListener;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v2, v2, Lcom/android/server/wm/WindowManagerService;->mH:Lcom/android/server/wm/WindowManagerService$H;

    .line 188
    iget-object v3, p0, Lcom/android/server/wm/TaskTapPointerEventListener;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    const/16 v4, 0x2c

    .line 187
    invoke-virtual {v2, v4, v0, v1, v3}, Lcom/android/server/wm/WindowManagerService$H;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v2}, Landroid/os/Message;->sendToTarget()V

    .line 182
    :cond_0
    return-void
.end method

.method private stopTwoFingerScroll()V
    .locals 2

    .prologue
    .line 193
    iget-boolean v0, p0, Lcom/android/server/wm/TaskTapPointerEventListener;->mTwoFingerScrolling:Z

    if-eqz v0, :cond_0

    .line 194
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/wm/TaskTapPointerEventListener;->mTwoFingerScrolling:Z

    .line 195
    iget-object v0, p0, Lcom/android/server/wm/TaskTapPointerEventListener;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mH:Lcom/android/server/wm/WindowManagerService$H;

    const/16 v1, 0x28

    invoke-virtual {v0, v1}, Lcom/android/server/wm/WindowManagerService$H;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 192
    :cond_0
    return-void
.end method


# virtual methods
.method init()V
    .locals 4

    .prologue
    .line 59
    new-instance v0, Landroid/view/GestureDetector;

    .line 60
    iget-object v1, p0, Lcom/android/server/wm/TaskTapPointerEventListener;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v1, v1, Lcom/android/server/wm/WindowManagerService;->mContext:Landroid/content/Context;

    new-instance v2, Lcom/android/server/wm/TaskTapPointerEventListener$TwoFingerScrollListener;

    const/4 v3, 0x0

    invoke-direct {v2, p0, v3}, Lcom/android/server/wm/TaskTapPointerEventListener$TwoFingerScrollListener;-><init>(Lcom/android/server/wm/TaskTapPointerEventListener;Lcom/android/server/wm/TaskTapPointerEventListener$TwoFingerScrollListener;)V

    iget-object v3, p0, Lcom/android/server/wm/TaskTapPointerEventListener;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v3, v3, Lcom/android/server/wm/WindowManagerService;->mH:Lcom/android/server/wm/WindowManagerService$H;

    .line 59
    invoke-direct {v0, v1, v2, v3}, Landroid/view/GestureDetector;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/server/wm/TaskTapPointerEventListener;->mGestureDetector:Landroid/view/GestureDetector;

    .line 58
    return-void
.end method

.method public onPointerEvent(Landroid/view/MotionEvent;)V
    .locals 9
    .param p1, "motionEvent"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v7, 0x0

    const/4 v8, 0x1

    .line 65
    invoke-direct {p0, p1}, Lcom/android/server/wm/TaskTapPointerEventListener;->doGestureDetection(Landroid/view/MotionEvent;)V

    .line 67
    sget-boolean v6, Lcom/android/server/am/ActivityManagerService;->sIsFreqAggrBoostSet:Z

    if-eqz v6, :cond_0

    .line 68
    sget-object v6, Lcom/android/server/am/ActivityManagerService;->sFreqAggr_init:Landroid/util/BoostFramework;

    invoke-virtual {v6}, Landroid/util/BoostFramework;->perfLockRelease()I

    .line 69
    sget-object v6, Lcom/android/server/am/ActivityManagerService;->sFreqAggr:Landroid/util/BoostFramework;

    invoke-virtual {v6}, Landroid/util/BoostFramework;->perfLockRelease()I

    .line 70
    sput-boolean v7, Lcom/android/server/am/ActivityManagerService;->sIsFreqAggrBoostSet:Z

    .line 73
    :cond_0
    sget-boolean v6, Lcom/android/server/am/ActivityManagerService;->sIsLaunchBoostv2_set:Z

    if-eqz v6, :cond_1

    .line 74
    sget-object v6, Lcom/android/server/am/ActivityManagerService;->sPerfBoost_v2:Landroid/util/BoostFramework;

    invoke-virtual {v6}, Landroid/util/BoostFramework;->perfLockRelease()I

    .line 75
    sput-boolean v7, Lcom/android/server/am/ActivityManagerService;->sIsLaunchBoostv2_set:Z

    .line 78
    :cond_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    .line 79
    .local v0, "action":I
    and-int/lit16 v6, v0, 0xff

    packed-switch v6, :pswitch_data_0

    .line 64
    :cond_2
    :goto_0
    :pswitch_0
    return-void

    .line 81
    :pswitch_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v6

    float-to-int v4, v6

    .line 82
    .local v4, "x":I
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v6

    float-to-int v5, v6

    .line 84
    .local v5, "y":I
    monitor-enter p0

    .line 85
    :try_start_0
    iget-object v6, p0, Lcom/android/server/wm/TaskTapPointerEventListener;->mTouchExcludeRegion:Landroid/graphics/Region;

    invoke-virtual {v6, v4, v5}, Landroid/graphics/Region;->contains(II)Z

    move-result v6

    if-nez v6, :cond_3

    .line 86
    iget-object v6, p0, Lcom/android/server/wm/TaskTapPointerEventListener;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v6, v6, Lcom/android/server/wm/WindowManagerService;->mH:Lcom/android/server/wm/WindowManagerService$H;

    .line 87
    iget-object v7, p0, Lcom/android/server/wm/TaskTapPointerEventListener;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    .line 86
    const/16 v8, 0x1f

    invoke-virtual {v6, v8, v4, v5, v7}, Lcom/android/server/wm/WindowManagerService$H;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v6

    invoke-virtual {v6}, Landroid/os/Message;->sendToTarget()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_3
    monitor-exit p0

    goto :goto_0

    .line 84
    :catchall_0
    move-exception v6

    monitor-exit p0

    throw v6

    .line 94
    .end local v4    # "x":I
    .end local v5    # "y":I
    :pswitch_2
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v6

    const/4 v7, 0x2

    if-eq v6, v7, :cond_2

    .line 95
    invoke-direct {p0}, Lcom/android/server/wm/TaskTapPointerEventListener;->stopTwoFingerScroll()V

    goto :goto_0

    .line 101
    :pswitch_3
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v6

    float-to-int v4, v6

    .line 102
    .restart local v4    # "x":I
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v6

    float-to-int v5, v6

    .line 106
    .restart local v5    # "y":I
    iget-object v6, p0, Lcom/android/server/wm/TaskTapPointerEventListener;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v7, v6, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Ljava/util/HashMap;

    monitor-enter v7

    .line 107
    :try_start_1
    iget-object v6, p0, Lcom/android/server/wm/TaskTapPointerEventListener;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    invoke-virtual {v6, v4, v5}, Lcom/android/server/wm/DisplayContent;->findTaskForControlPoint(II)Lcom/android/server/wm/Task;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result-object v3

    .local v3, "task":Lcom/android/server/wm/Task;
    monitor-exit v7

    .line 110
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getDevice()Landroid/view/InputDevice;

    move-result-object v2

    .line 111
    .local v2, "inputDevice":Landroid/view/InputDevice;
    if-eqz v3, :cond_4

    if-nez v2, :cond_5

    .line 112
    :cond_4
    iput v8, p0, Lcom/android/server/wm/TaskTapPointerEventListener;->mPointerIconType:I

    goto :goto_0

    .line 106
    .end local v2    # "inputDevice":Landroid/view/InputDevice;
    .end local v3    # "task":Lcom/android/server/wm/Task;
    :catchall_1
    move-exception v6

    monitor-exit v7

    throw v6

    .line 115
    .restart local v2    # "inputDevice":Landroid/view/InputDevice;
    .restart local v3    # "task":Lcom/android/server/wm/Task;
    :cond_5
    iget-object v6, p0, Lcom/android/server/wm/TaskTapPointerEventListener;->mTmpRect:Landroid/graphics/Rect;

    invoke-virtual {v3, v6}, Lcom/android/server/wm/Task;->getDimBounds(Landroid/graphics/Rect;)V

    .line 116
    iget-object v6, p0, Lcom/android/server/wm/TaskTapPointerEventListener;->mTmpRect:Landroid/graphics/Rect;

    invoke-virtual {v6}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_6

    iget-object v6, p0, Lcom/android/server/wm/TaskTapPointerEventListener;->mTmpRect:Landroid/graphics/Rect;

    invoke-virtual {v6, v4, v5}, Landroid/graphics/Rect;->contains(II)Z

    move-result v6

    if-eqz v6, :cond_7

    .line 136
    :cond_6
    iput v8, p0, Lcom/android/server/wm/TaskTapPointerEventListener;->mPointerIconType:I

    goto :goto_0

    .line 117
    :cond_7
    const/16 v1, 0x3e8

    .line 118
    .local v1, "iconType":I
    iget-object v6, p0, Lcom/android/server/wm/TaskTapPointerEventListener;->mTmpRect:Landroid/graphics/Rect;

    iget v6, v6, Landroid/graphics/Rect;->left:I

    if-ge v4, v6, :cond_b

    .line 120
    iget-object v6, p0, Lcom/android/server/wm/TaskTapPointerEventListener;->mTmpRect:Landroid/graphics/Rect;

    iget v6, v6, Landroid/graphics/Rect;->top:I

    if-ge v5, v6, :cond_9

    const/16 v1, 0x3f9

    .line 131
    :cond_8
    :goto_1
    iget v6, p0, Lcom/android/server/wm/TaskTapPointerEventListener;->mPointerIconType:I

    if-eq v6, v1, :cond_2

    .line 132
    iput v1, p0, Lcom/android/server/wm/TaskTapPointerEventListener;->mPointerIconType:I

    .line 133
    invoke-virtual {v2, v1}, Landroid/view/InputDevice;->setPointerType(I)V

    goto/16 :goto_0

    .line 121
    :cond_9
    iget-object v6, p0, Lcom/android/server/wm/TaskTapPointerEventListener;->mTmpRect:Landroid/graphics/Rect;

    iget v6, v6, Landroid/graphics/Rect;->bottom:I

    if-le v5, v6, :cond_a

    const/16 v1, 0x3f8

    goto :goto_1

    .line 122
    :cond_a
    const/16 v1, 0x3f6

    goto :goto_1

    .line 123
    :cond_b
    iget-object v6, p0, Lcom/android/server/wm/TaskTapPointerEventListener;->mTmpRect:Landroid/graphics/Rect;

    iget v6, v6, Landroid/graphics/Rect;->right:I

    if-le v4, v6, :cond_e

    .line 125
    iget-object v6, p0, Lcom/android/server/wm/TaskTapPointerEventListener;->mTmpRect:Landroid/graphics/Rect;

    iget v6, v6, Landroid/graphics/Rect;->top:I

    if-ge v5, v6, :cond_c

    const/16 v1, 0x3f8

    goto :goto_1

    .line 126
    :cond_c
    iget-object v6, p0, Lcom/android/server/wm/TaskTapPointerEventListener;->mTmpRect:Landroid/graphics/Rect;

    iget v6, v6, Landroid/graphics/Rect;->bottom:I

    if-le v5, v6, :cond_d

    const/16 v1, 0x3f9

    goto :goto_1

    .line 127
    :cond_d
    const/16 v1, 0x3f6

    goto :goto_1

    .line 128
    :cond_e
    iget-object v6, p0, Lcom/android/server/wm/TaskTapPointerEventListener;->mTmpRect:Landroid/graphics/Rect;

    iget v6, v6, Landroid/graphics/Rect;->top:I

    if-lt v5, v6, :cond_f

    iget-object v6, p0, Lcom/android/server/wm/TaskTapPointerEventListener;->mTmpRect:Landroid/graphics/Rect;

    iget v6, v6, Landroid/graphics/Rect;->bottom:I

    if-le v5, v6, :cond_8

    .line 129
    :cond_f
    const/16 v1, 0x3f7

    goto :goto_1

    .line 141
    .end local v1    # "iconType":I
    .end local v2    # "inputDevice":Landroid/view/InputDevice;
    .end local v3    # "task":Lcom/android/server/wm/Task;
    .end local v4    # "x":I
    .end local v5    # "y":I
    :pswitch_4
    iput v8, p0, Lcom/android/server/wm/TaskTapPointerEventListener;->mPointerIconType:I

    .line 142
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getDevice()Landroid/view/InputDevice;

    move-result-object v2

    .line 143
    .restart local v2    # "inputDevice":Landroid/view/InputDevice;
    if-eqz v2, :cond_2

    .line 144
    const/16 v6, 0x3e8

    invoke-virtual {v2, v6}, Landroid/view/InputDevice;->setPointerType(I)V

    goto/16 :goto_0

    .line 150
    .end local v2    # "inputDevice":Landroid/view/InputDevice;
    :pswitch_5
    invoke-direct {p0}, Lcom/android/server/wm/TaskTapPointerEventListener;->stopTwoFingerScroll()V

    goto/16 :goto_0

    .line 79
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_5
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_5
        :pswitch_3
        :pswitch_0
        :pswitch_0
        :pswitch_4
    .end packed-switch
.end method

.method setTouchExcludeRegion(Landroid/graphics/Region;Landroid/graphics/Region;)V
    .locals 1
    .param p1, "newRegion"    # Landroid/graphics/Region;
    .param p2, "nonResizeableRegion"    # Landroid/graphics/Region;

    .prologue
    .line 213
    monitor-enter p0

    .line 214
    :try_start_0
    iget-object v0, p0, Lcom/android/server/wm/TaskTapPointerEventListener;->mTouchExcludeRegion:Landroid/graphics/Region;

    invoke-virtual {v0, p1}, Landroid/graphics/Region;->set(Landroid/graphics/Region;)Z

    .line 215
    iget-object v0, p0, Lcom/android/server/wm/TaskTapPointerEventListener;->mNonResizeableRegion:Landroid/graphics/Region;

    invoke-virtual {v0, p2}, Landroid/graphics/Region;->set(Landroid/graphics/Region;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    .line 212
    return-void

    .line 213
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
