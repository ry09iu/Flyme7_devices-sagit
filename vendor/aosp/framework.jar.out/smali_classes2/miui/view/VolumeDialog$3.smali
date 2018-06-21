.class Lmiui/view/VolumeDialog$3;
.super Landroid/content/BroadcastReceiver;
.source "VolumeDialog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiui/view/VolumeDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lmiui/view/VolumeDialog;


# direct methods
.method constructor <init>(Lmiui/view/VolumeDialog;)V
    .locals 0
    .param p1, "this$0"    # Lmiui/view/VolumeDialog;

    .prologue
    .line 883
    iput-object p1, p0, Lmiui/view/VolumeDialog$3;->this$0:Lmiui/view/VolumeDialog;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 10
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    const-wide/16 v8, 0x1f4

    const/16 v5, 0xb

    const/4 v4, 0x1

    .line 885
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 886
    .local v0, "action":Ljava/lang/String;
    const-string/jumbo v3, "android.intent.action.SCREEN_OFF"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    const-string/jumbo v3, "android.intent.action.CLOSE_SYSTEM_DIALOGS"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 887
    :cond_0
    iget-object v3, p0, Lmiui/view/VolumeDialog$3;->this$0:Lmiui/view/VolumeDialog;

    invoke-virtual {v3}, Lmiui/view/VolumeDialog;->dismiss()V

    .line 884
    :cond_1
    :goto_0
    return-void

    .line 888
    :cond_2
    const-string/jumbo v3, "miui.intent.TAKE_SCREENSHOT"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 889
    const-string/jumbo v3, "IsFinished"

    invoke-virtual {p2, v3, v4}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    .line 890
    .local v1, "screenshotFinished":Z
    if-nez v1, :cond_3

    .line 891
    iget-object v3, p0, Lmiui/view/VolumeDialog$3;->this$0:Lmiui/view/VolumeDialog;

    invoke-static {v3, v4}, Lmiui/view/VolumeDialog;->-set0(Lmiui/view/VolumeDialog;Z)Z

    .line 892
    iget-object v3, p0, Lmiui/view/VolumeDialog$3;->this$0:Lmiui/view/VolumeDialog;

    invoke-static {v3}, Lmiui/view/VolumeDialog;->-get8(Lmiui/view/VolumeDialog;)Lmiui/view/VolumeDialog$H;

    move-result-object v3

    invoke-virtual {v3, v5, v8, v9}, Lmiui/view/VolumeDialog$H;->sendEmptyMessageDelayed(IJ)Z

    .line 893
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    iget-object v3, p0, Lmiui/view/VolumeDialog$3;->this$0:Lmiui/view/VolumeDialog;

    invoke-static {v3}, Lmiui/view/VolumeDialog;->-get5(Lmiui/view/VolumeDialog;)J

    move-result-wide v6

    sub-long/2addr v4, v6

    cmp-long v3, v4, v8

    if-gez v3, :cond_1

    .line 894
    iget-object v3, p0, Lmiui/view/VolumeDialog$3;->this$0:Lmiui/view/VolumeDialog;

    invoke-virtual {v3}, Lmiui/view/VolumeDialog;->dismiss()V

    goto :goto_0

    .line 897
    :cond_3
    iget-object v3, p0, Lmiui/view/VolumeDialog$3;->this$0:Lmiui/view/VolumeDialog;

    invoke-static {v3}, Lmiui/view/VolumeDialog;->-get8(Lmiui/view/VolumeDialog;)Lmiui/view/VolumeDialog$H;

    move-result-object v3

    invoke-virtual {v3, v5}, Lmiui/view/VolumeDialog$H;->removeMessages(I)V

    .line 898
    iget-object v3, p0, Lmiui/view/VolumeDialog$3;->this$0:Lmiui/view/VolumeDialog;

    const/4 v4, 0x0

    invoke-static {v3, v4}, Lmiui/view/VolumeDialog;->-set0(Lmiui/view/VolumeDialog;Z)Z

    goto :goto_0

    .line 900
    .end local v1    # "screenshotFinished":Z
    :cond_4
    const-string/jumbo v3, "android.media.STREAM_DEVICES_CHANGED_ACTION"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 901
    const-string/jumbo v3, "android.media.EXTRA_VOLUME_STREAM_TYPE"

    const/4 v4, -0x1

    invoke-virtual {p2, v3, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    .line 902
    .local v2, "stream":I
    iget-object v3, p0, Lmiui/view/VolumeDialog$3;->this$0:Lmiui/view/VolumeDialog;

    invoke-static {v3, v2}, Lmiui/view/VolumeDialog;->-wrap7(Lmiui/view/VolumeDialog;I)V

    goto :goto_0
.end method
