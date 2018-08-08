.class Lcom/android/server/am/PKTopWindowEvent$2;
.super Landroid/view/OrientationEventListener;
.source "PKTopWindowEvent.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/am/PKTopWindowEvent;-><init>(Landroid/content/Context;Landroid/os/Handler;Landroid/content/ComponentName;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private final mDefaultDisplay:Landroid/view/Display;

.field private mLastKnownOrientation:I

.field private mLastKnownRotation:I

.field final synthetic this$0:Lcom/android/server/am/PKTopWindowEvent;


# direct methods
.method constructor <init>(Lcom/android/server/am/PKTopWindowEvent;Landroid/content/Context;I)V
    .locals 3
    .param p1, "this$0"    # Lcom/android/server/am/PKTopWindowEvent;
    .param p2, "$anonymous0"    # Landroid/content/Context;
    .param p3, "$anonymous1"    # I

    .prologue
    const/4 v2, -0x1

    .line 136
    iput-object p1, p0, Lcom/android/server/am/PKTopWindowEvent$2;->this$0:Lcom/android/server/am/PKTopWindowEvent;

    invoke-direct {p0, p2, p3}, Landroid/view/OrientationEventListener;-><init>(Landroid/content/Context;I)V

    .line 137
    iget-object v0, p0, Lcom/android/server/am/PKTopWindowEvent$2;->this$0:Lcom/android/server/am/PKTopWindowEvent;

    invoke-static {v0}, Lcom/android/server/am/PKTopWindowEvent;->-get1(Lcom/android/server/am/PKTopWindowEvent;)Landroid/content/Context;

    move-result-object v0

    const-string/jumbo v1, "window"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/am/PKTopWindowEvent$2;->mDefaultDisplay:Landroid/view/Display;

    .line 139
    iput v2, p0, Lcom/android/server/am/PKTopWindowEvent$2;->mLastKnownRotation:I

    .line 141
    iput v2, p0, Lcom/android/server/am/PKTopWindowEvent$2;->mLastKnownOrientation:I

    .line 136
    return-void
.end method


# virtual methods
.method public onOrientationChanged(I)V
    .locals 4
    .param p1, "orientation"    # I

    .prologue
    .line 145
    const/4 v1, -0x1

    if-ne p1, v1, :cond_0

    .line 146
    return-void

    .line 148
    :cond_0
    const-string/jumbo v1, "PKTopWindowEvent"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "orientation: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/server/am/PKTopWindowConfig$Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 149
    iget-object v1, p0, Lcom/android/server/am/PKTopWindowEvent$2;->mDefaultDisplay:Landroid/view/Display;

    invoke-virtual {v1}, Landroid/view/Display;->getRotation()I

    move-result v0

    .line 150
    .local v0, "rotation":I
    iget v1, p0, Lcom/android/server/am/PKTopWindowEvent$2;->mLastKnownRotation:I

    if-eq v1, v0, :cond_1

    iget v1, p0, Lcom/android/server/am/PKTopWindowEvent$2;->mLastKnownOrientation:I

    if-eq v1, p1, :cond_1

    .line 151
    iput v0, p0, Lcom/android/server/am/PKTopWindowEvent$2;->mLastKnownRotation:I

    .line 152
    iput p1, p0, Lcom/android/server/am/PKTopWindowEvent$2;->mLastKnownOrientation:I

    .line 153
    packed-switch v0, :pswitch_data_0

    .line 144
    :cond_1
    :goto_0
    return-void

    .line 156
    :pswitch_0
    const-string/jumbo v1, "PKTopWindowEvent"

    const-string/jumbo v2, "\u7ad6\u5c4f\u53ef\u4ee5\u663e\u793a\u5e7f\u544a"

    invoke-static {v1, v2}, Lcom/android/server/am/PKTopWindowConfig$Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 160
    :pswitch_1
    iget-object v1, p0, Lcom/android/server/am/PKTopWindowEvent$2;->this$0:Lcom/android/server/am/PKTopWindowEvent;

    invoke-static {v1}, Lcom/android/server/am/PKTopWindowEvent;->-get2(Lcom/android/server/am/PKTopWindowEvent;)Landroid/os/Handler;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/am/PKTopWindowEvent$2;->this$0:Lcom/android/server/am/PKTopWindowEvent;

    invoke-static {v2}, Lcom/android/server/am/PKTopWindowEvent;->-get2(Lcom/android/server/am/PKTopWindowEvent;)Landroid/os/Handler;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 161
    const-string/jumbo v1, "PKTopWindowEvent"

    const-string/jumbo v2, "\u6a2a\u5c4f\u79fb\u9664\u5e7f\u544a"

    invoke-static {v1, v2}, Lcom/android/server/am/PKTopWindowConfig$Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 153
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
