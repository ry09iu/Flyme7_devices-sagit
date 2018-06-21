.class final Landroid/view/ViewRootImpl$SyntheticJoystickHandler;
.super Landroid/os/Handler;
.source "ViewRootImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/view/ViewRootImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "SyntheticJoystickHandler"
.end annotation


# static fields
.field private static final MSG_ENQUEUE_X_AXIS_KEY_REPEAT:I = 0x1

.field private static final MSG_ENQUEUE_Y_AXIS_KEY_REPEAT:I = 0x2

.field private static final TAG:Ljava/lang/String; = "SyntheticJoystickHandler"


# instance fields
.field private mLastXDirection:I

.field private mLastXKeyCode:I

.field private mLastYDirection:I

.field private mLastYKeyCode:I

.field final synthetic this$0:Landroid/view/ViewRootImpl;


# direct methods
.method static synthetic -wrap0(Landroid/view/ViewRootImpl$SyntheticJoystickHandler;Landroid/view/MotionEvent;)V
    .locals 0
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    invoke-direct {p0, p1}, Landroid/view/ViewRootImpl$SyntheticJoystickHandler;->cancel(Landroid/view/MotionEvent;)V

    return-void
.end method

.method public constructor <init>(Landroid/view/ViewRootImpl;)V
    .locals 1
    .param p1, "this$0"    # Landroid/view/ViewRootImpl;

    .prologue
    .line 4983
    iput-object p1, p0, Landroid/view/ViewRootImpl$SyntheticJoystickHandler;->this$0:Landroid/view/ViewRootImpl;

    .line 4984
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Landroid/os/Handler;-><init>(Z)V

    .line 4983
    return-void
.end method

.method private cancel(Landroid/view/MotionEvent;)V
    .locals 1
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 5020
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/view/ViewRootImpl$SyntheticJoystickHandler;->removeMessages(I)V

    .line 5021
    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Landroid/view/ViewRootImpl$SyntheticJoystickHandler;->removeMessages(I)V

    .line 5022
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroid/view/ViewRootImpl$SyntheticJoystickHandler;->update(Landroid/view/MotionEvent;Z)V

    .line 5019
    return-void
.end method

.method private joystickAxisValueToDirection(F)I
    .locals 1
    .param p1, "value"    # F

    .prologue
    .line 5093
    const/high16 v0, 0x3f000000    # 0.5f

    cmpl-float v0, p1, v0

    if-ltz v0, :cond_0

    .line 5094
    const/4 v0, 0x1

    return v0

    .line 5095
    :cond_0
    const/high16 v0, -0x41000000    # -0.5f

    cmpg-float v0, p1, v0

    if-gtz v0, :cond_1

    .line 5096
    const/4 v0, -0x1

    return v0

    .line 5098
    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method private update(Landroid/view/MotionEvent;Z)V
    .locals 31
    .param p1, "event"    # Landroid/view/MotionEvent;
    .param p2, "synthesizeNewKeys"    # Z

    .prologue
    .line 5026
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v4

    .line 5027
    .local v4, "time":J
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getMetaState()I

    move-result v11

    .line 5028
    .local v11, "metaState":I
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getDeviceId()I

    move-result v12

    .line 5029
    .local v12, "deviceId":I
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getSource()I

    move-result v15

    .line 5032
    .local v15, "source":I
    const/16 v6, 0xf

    move-object/from16 v0, p1

    invoke-virtual {v0, v6}, Landroid/view/MotionEvent;->getAxisValue(I)F

    move-result v6

    .line 5031
    move-object/from16 v0, p0

    invoke-direct {v0, v6}, Landroid/view/ViewRootImpl$SyntheticJoystickHandler;->joystickAxisValueToDirection(F)I

    move-result v16

    .line 5033
    .local v16, "xDirection":I
    if-nez v16, :cond_0

    .line 5034
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getX()F

    move-result v6

    move-object/from16 v0, p0

    invoke-direct {v0, v6}, Landroid/view/ViewRootImpl$SyntheticJoystickHandler;->joystickAxisValueToDirection(F)I

    move-result v16

    .line 5038
    :cond_0
    const/16 v6, 0x10

    move-object/from16 v0, p1

    invoke-virtual {v0, v6}, Landroid/view/MotionEvent;->getAxisValue(I)F

    move-result v6

    .line 5037
    move-object/from16 v0, p0

    invoke-direct {v0, v6}, Landroid/view/ViewRootImpl$SyntheticJoystickHandler;->joystickAxisValueToDirection(F)I

    move-result v30

    .line 5039
    .local v30, "yDirection":I
    if-nez v30, :cond_1

    .line 5040
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getY()F

    move-result v6

    move-object/from16 v0, p0

    invoke-direct {v0, v6}, Landroid/view/ViewRootImpl$SyntheticJoystickHandler;->joystickAxisValueToDirection(F)I

    move-result v30

    .line 5043
    :cond_1
    move-object/from16 v0, p0

    iget v6, v0, Landroid/view/ViewRootImpl$SyntheticJoystickHandler;->mLastXDirection:I

    move/from16 v0, v16

    if-eq v0, v6, :cond_3

    .line 5044
    move-object/from16 v0, p0

    iget v6, v0, Landroid/view/ViewRootImpl$SyntheticJoystickHandler;->mLastXKeyCode:I

    if-eqz v6, :cond_2

    .line 5045
    const/4 v6, 0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v6}, Landroid/view/ViewRootImpl$SyntheticJoystickHandler;->removeMessages(I)V

    .line 5046
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/ViewRootImpl$SyntheticJoystickHandler;->this$0:Landroid/view/ViewRootImpl;

    move-object/from16 v17, v0

    new-instance v3, Landroid/view/KeyEvent;

    .line 5047
    move-object/from16 v0, p0

    iget v9, v0, Landroid/view/ViewRootImpl$SyntheticJoystickHandler;->mLastXKeyCode:I

    const/4 v8, 0x1

    const/4 v10, 0x0

    .line 5048
    const/4 v13, 0x0

    const/16 v14, 0x400

    move-wide v6, v4

    .line 5046
    invoke-direct/range {v3 .. v15}, Landroid/view/KeyEvent;-><init>(JJIIIIIIII)V

    move-object/from16 v0, v17

    invoke-virtual {v0, v3}, Landroid/view/ViewRootImpl;->enqueueInputEvent(Landroid/view/InputEvent;)V

    .line 5049
    const/4 v6, 0x0

    move-object/from16 v0, p0

    iput v6, v0, Landroid/view/ViewRootImpl$SyntheticJoystickHandler;->mLastXKeyCode:I

    .line 5052
    :cond_2
    move/from16 v0, v16

    move-object/from16 v1, p0

    iput v0, v1, Landroid/view/ViewRootImpl$SyntheticJoystickHandler;->mLastXDirection:I

    .line 5054
    if-eqz v16, :cond_3

    if-eqz p2, :cond_3

    .line 5055
    if-lez v16, :cond_6

    .line 5056
    const/16 v6, 0x16

    .line 5055
    :goto_0
    move-object/from16 v0, p0

    iput v6, v0, Landroid/view/ViewRootImpl$SyntheticJoystickHandler;->mLastXKeyCode:I

    .line 5057
    new-instance v3, Landroid/view/KeyEvent;

    .line 5058
    move-object/from16 v0, p0

    iget v9, v0, Landroid/view/ViewRootImpl$SyntheticJoystickHandler;->mLastXKeyCode:I

    const/4 v8, 0x0

    const/4 v10, 0x0

    .line 5059
    const/4 v13, 0x0

    const/16 v14, 0x400

    move-wide v6, v4

    .line 5057
    invoke-direct/range {v3 .. v15}, Landroid/view/KeyEvent;-><init>(JJIIIIIIII)V

    .line 5060
    .local v3, "e":Landroid/view/KeyEvent;
    move-object/from16 v0, p0

    iget-object v6, v0, Landroid/view/ViewRootImpl$SyntheticJoystickHandler;->this$0:Landroid/view/ViewRootImpl;

    invoke-virtual {v6, v3}, Landroid/view/ViewRootImpl;->enqueueInputEvent(Landroid/view/InputEvent;)V

    .line 5061
    const/4 v6, 0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v6, v3}, Landroid/view/ViewRootImpl$SyntheticJoystickHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    .line 5062
    .local v2, "m":Landroid/os/Message;
    const/4 v6, 0x1

    invoke-virtual {v2, v6}, Landroid/os/Message;->setAsynchronous(Z)V

    .line 5063
    invoke-static {}, Landroid/view/ViewConfiguration;->getKeyRepeatTimeout()I

    move-result v6

    int-to-long v6, v6

    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v6, v7}, Landroid/view/ViewRootImpl$SyntheticJoystickHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 5067
    .end local v2    # "m":Landroid/os/Message;
    .end local v3    # "e":Landroid/view/KeyEvent;
    :cond_3
    move-object/from16 v0, p0

    iget v6, v0, Landroid/view/ViewRootImpl$SyntheticJoystickHandler;->mLastYDirection:I

    move/from16 v0, v30

    if-eq v0, v6, :cond_5

    .line 5068
    move-object/from16 v0, p0

    iget v6, v0, Landroid/view/ViewRootImpl$SyntheticJoystickHandler;->mLastYKeyCode:I

    if-eqz v6, :cond_4

    .line 5069
    const/4 v6, 0x2

    move-object/from16 v0, p0

    invoke-virtual {v0, v6}, Landroid/view/ViewRootImpl$SyntheticJoystickHandler;->removeMessages(I)V

    .line 5070
    move-object/from16 v0, p0

    iget-object v6, v0, Landroid/view/ViewRootImpl$SyntheticJoystickHandler;->this$0:Landroid/view/ViewRootImpl;

    new-instance v17, Landroid/view/KeyEvent;

    .line 5071
    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/ViewRootImpl$SyntheticJoystickHandler;->mLastYKeyCode:I

    move/from16 v23, v0

    const/16 v22, 0x1

    const/16 v24, 0x0

    .line 5072
    const/16 v27, 0x0

    const/16 v28, 0x400

    move-wide/from16 v18, v4

    move-wide/from16 v20, v4

    move/from16 v25, v11

    move/from16 v26, v12

    move/from16 v29, v15

    .line 5070
    invoke-direct/range {v17 .. v29}, Landroid/view/KeyEvent;-><init>(JJIIIIIIII)V

    move-object/from16 v0, v17

    invoke-virtual {v6, v0}, Landroid/view/ViewRootImpl;->enqueueInputEvent(Landroid/view/InputEvent;)V

    .line 5073
    const/4 v6, 0x0

    move-object/from16 v0, p0

    iput v6, v0, Landroid/view/ViewRootImpl$SyntheticJoystickHandler;->mLastYKeyCode:I

    .line 5076
    :cond_4
    move/from16 v0, v30

    move-object/from16 v1, p0

    iput v0, v1, Landroid/view/ViewRootImpl$SyntheticJoystickHandler;->mLastYDirection:I

    .line 5078
    if-eqz v30, :cond_5

    if-eqz p2, :cond_5

    .line 5079
    if-lez v30, :cond_7

    .line 5080
    const/16 v6, 0x14

    .line 5079
    :goto_1
    move-object/from16 v0, p0

    iput v6, v0, Landroid/view/ViewRootImpl$SyntheticJoystickHandler;->mLastYKeyCode:I

    .line 5081
    new-instance v3, Landroid/view/KeyEvent;

    .line 5082
    move-object/from16 v0, p0

    iget v9, v0, Landroid/view/ViewRootImpl$SyntheticJoystickHandler;->mLastYKeyCode:I

    const/4 v8, 0x0

    const/4 v10, 0x0

    .line 5083
    const/4 v13, 0x0

    const/16 v14, 0x400

    move-wide v6, v4

    .line 5081
    invoke-direct/range {v3 .. v15}, Landroid/view/KeyEvent;-><init>(JJIIIIIIII)V

    .line 5084
    .restart local v3    # "e":Landroid/view/KeyEvent;
    move-object/from16 v0, p0

    iget-object v6, v0, Landroid/view/ViewRootImpl$SyntheticJoystickHandler;->this$0:Landroid/view/ViewRootImpl;

    invoke-virtual {v6, v3}, Landroid/view/ViewRootImpl;->enqueueInputEvent(Landroid/view/InputEvent;)V

    .line 5085
    const/4 v6, 0x2

    move-object/from16 v0, p0

    invoke-virtual {v0, v6, v3}, Landroid/view/ViewRootImpl$SyntheticJoystickHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    .line 5086
    .restart local v2    # "m":Landroid/os/Message;
    const/4 v6, 0x1

    invoke-virtual {v2, v6}, Landroid/os/Message;->setAsynchronous(Z)V

    .line 5087
    invoke-static {}, Landroid/view/ViewConfiguration;->getKeyRepeatTimeout()I

    move-result v6

    int-to-long v6, v6

    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v6, v7}, Landroid/view/ViewRootImpl$SyntheticJoystickHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 5025
    .end local v2    # "m":Landroid/os/Message;
    .end local v3    # "e":Landroid/view/KeyEvent;
    :cond_5
    return-void

    .line 5056
    :cond_6
    const/16 v6, 0x15

    goto/16 :goto_0

    .line 5080
    :cond_7
    const/16 v6, 0x13

    goto :goto_1
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 6
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 4989
    iget v3, p1, Landroid/os/Message;->what:I

    packed-switch v3, :pswitch_data_0

    .line 4988
    :cond_0
    :goto_0
    return-void

    .line 4992
    :pswitch_0
    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Landroid/view/KeyEvent;

    .line 4994
    .local v2, "oldEvent":Landroid/view/KeyEvent;
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    .line 4995
    invoke-virtual {v2}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v3

    add-int/lit8 v3, v3, 0x1

    .line 4993
    invoke-static {v2, v4, v5, v3}, Landroid/view/KeyEvent;->changeTimeRepeat(Landroid/view/KeyEvent;JI)Landroid/view/KeyEvent;

    move-result-object v0

    .line 4996
    .local v0, "e":Landroid/view/KeyEvent;
    iget-object v3, p0, Landroid/view/ViewRootImpl$SyntheticJoystickHandler;->this$0:Landroid/view/ViewRootImpl;

    iget-object v3, v3, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-boolean v3, v3, Landroid/view/View$AttachInfo;->mHasWindowFocus:Z

    if-eqz v3, :cond_0

    .line 4997
    iget-object v3, p0, Landroid/view/ViewRootImpl$SyntheticJoystickHandler;->this$0:Landroid/view/ViewRootImpl;

    invoke-virtual {v3, v0}, Landroid/view/ViewRootImpl;->enqueueInputEvent(Landroid/view/InputEvent;)V

    .line 4998
    iget v3, p1, Landroid/os/Message;->what:I

    invoke-virtual {p0, v3, v0}, Landroid/view/ViewRootImpl$SyntheticJoystickHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    .line 4999
    .local v1, "m":Landroid/os/Message;
    const/4 v3, 0x1

    invoke-virtual {v1, v3}, Landroid/os/Message;->setAsynchronous(Z)V

    .line 5000
    invoke-static {}, Landroid/view/ViewConfiguration;->getKeyRepeatDelay()I

    move-result v3

    int-to-long v4, v3

    invoke-virtual {p0, v1, v4, v5}, Landroid/view/ViewRootImpl$SyntheticJoystickHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_0

    .line 4989
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public process(Landroid/view/MotionEvent;)V
    .locals 3
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 5007
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 5015
    iget-object v0, p0, Landroid/view/ViewRootImpl$SyntheticJoystickHandler;->this$0:Landroid/view/ViewRootImpl;

    invoke-static {v0}, Landroid/view/ViewRootImpl;->-get4(Landroid/view/ViewRootImpl;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Unexpected action: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 5006
    :goto_0
    return-void

    .line 5009
    :pswitch_0
    invoke-direct {p0, p1}, Landroid/view/ViewRootImpl$SyntheticJoystickHandler;->cancel(Landroid/view/MotionEvent;)V

    goto :goto_0

    .line 5012
    :pswitch_1
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Landroid/view/ViewRootImpl$SyntheticJoystickHandler;->update(Landroid/view/MotionEvent;Z)V

    goto :goto_0

    .line 5007
    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
