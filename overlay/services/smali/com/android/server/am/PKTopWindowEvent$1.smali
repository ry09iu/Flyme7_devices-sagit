.class Lcom/android/server/am/PKTopWindowEvent$1;
.super Landroid/content/BroadcastReceiver;
.source "PKTopWindowEvent.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/am/PKTopWindowEvent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/am/PKTopWindowEvent;


# direct methods
.method constructor <init>(Lcom/android/server/am/PKTopWindowEvent;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/am/PKTopWindowEvent;

    .prologue
    .line 50
    iput-object p1, p0, Lcom/android/server/am/PKTopWindowEvent$1;->this$0:Lcom/android/server/am/PKTopWindowEvent;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 8
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v7, 0x0

    .line 53
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 54
    .local v0, "action":Ljava/lang/String;
    const-string/jumbo v5, "android.intent.action.CLOSE_SYSTEM_DIALOGS"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 55
    const-string/jumbo v5, "reason"

    invoke-virtual {p2, v5}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 56
    .local v4, "reason":Ljava/lang/String;
    if-eqz v4, :cond_1

    .line 57
    const-string/jumbo v5, "homekey"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 58
    const-string/jumbo v5, "assist"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    .line 57
    if-nez v5, :cond_0

    .line 59
    const-string/jumbo v5, "recentapps"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    .line 57
    if-nez v5, :cond_0

    .line 60
    const-string/jumbo v5, "globalactions"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    .line 57
    if-eqz v5, :cond_1

    .line 61
    :cond_0
    iget-object v5, p0, Lcom/android/server/am/PKTopWindowEvent$1;->this$0:Lcom/android/server/am/PKTopWindowEvent;

    invoke-static {v5}, Lcom/android/server/am/PKTopWindowEvent;->-get2(Lcom/android/server/am/PKTopWindowEvent;)Landroid/os/Handler;

    move-result-object v5

    iget-object v6, p0, Lcom/android/server/am/PKTopWindowEvent$1;->this$0:Lcom/android/server/am/PKTopWindowEvent;

    invoke-static {v6}, Lcom/android/server/am/PKTopWindowEvent;->-get2(Lcom/android/server/am/PKTopWindowEvent;)Landroid/os/Handler;

    move-result-object v6

    invoke-virtual {v6, v7}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 52
    .end local v4    # "reason":Ljava/lang/String;
    :cond_1
    :goto_0
    return-void

    .line 64
    :cond_2
    const-string/jumbo v5, "android.intent.action.KEYCODE_BACK"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 65
    iget-object v5, p0, Lcom/android/server/am/PKTopWindowEvent$1;->this$0:Lcom/android/server/am/PKTopWindowEvent;

    invoke-static {v5}, Lcom/android/server/am/PKTopWindowEvent;->-get2(Lcom/android/server/am/PKTopWindowEvent;)Landroid/os/Handler;

    move-result-object v5

    iget-object v6, p0, Lcom/android/server/am/PKTopWindowEvent$1;->this$0:Lcom/android/server/am/PKTopWindowEvent;

    invoke-static {v6}, Lcom/android/server/am/PKTopWindowEvent;->-get2(Lcom/android/server/am/PKTopWindowEvent;)Landroid/os/Handler;

    move-result-object v6

    const/4 v7, 0x2

    invoke-virtual {v6, v7}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0

    .line 66
    :cond_3
    const-string/jumbo v5, "performResumeActivity"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_7

    .line 67
    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    .line 68
    .local v1, "bundle":Landroid/os/Bundle;
    const-string/jumbo v5, "packageName"

    invoke-virtual {v1, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 69
    .local v3, "packageName":Ljava/lang/String;
    const-string/jumbo v5, "className"

    invoke-virtual {v1, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 71
    .local v2, "className":Ljava/lang/String;
    iget-object v5, p0, Lcom/android/server/am/PKTopWindowEvent$1;->this$0:Lcom/android/server/am/PKTopWindowEvent;

    invoke-static {v5}, Lcom/android/server/am/PKTopWindowEvent;->-get5(Lcom/android/server/am/PKTopWindowEvent;)Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_1

    .line 72
    iget-object v5, p0, Lcom/android/server/am/PKTopWindowEvent$1;->this$0:Lcom/android/server/am/PKTopWindowEvent;

    invoke-static {v5}, Lcom/android/server/am/PKTopWindowEvent;->-get5(Lcom/android/server/am/PKTopWindowEvent;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_1

    .line 74
    const-string/jumbo v5, "permission.ui.GrantPermissionsActivity"

    invoke-virtual {v2, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_6

    .line 75
    iget-object v5, p0, Lcom/android/server/am/PKTopWindowEvent$1;->this$0:Lcom/android/server/am/PKTopWindowEvent;

    invoke-static {v5}, Lcom/android/server/am/PKTopWindowEvent;->-get3(Lcom/android/server/am/PKTopWindowEvent;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_4

    iget-object v5, p0, Lcom/android/server/am/PKTopWindowEvent$1;->this$0:Lcom/android/server/am/PKTopWindowEvent;

    invoke-static {v5}, Lcom/android/server/am/PKTopWindowEvent;->-get4(Lcom/android/server/am/PKTopWindowEvent;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_5

    .line 78
    :cond_4
    :goto_1
    iget-object v5, p0, Lcom/android/server/am/PKTopWindowEvent$1;->this$0:Lcom/android/server/am/PKTopWindowEvent;

    invoke-static {v5, v2}, Lcom/android/server/am/PKTopWindowEvent;->-set0(Lcom/android/server/am/PKTopWindowEvent;Ljava/lang/String;)Ljava/lang/String;

    .line 79
    iget-object v5, p0, Lcom/android/server/am/PKTopWindowEvent$1;->this$0:Lcom/android/server/am/PKTopWindowEvent;

    invoke-static {v5, v3}, Lcom/android/server/am/PKTopWindowEvent;->-set1(Lcom/android/server/am/PKTopWindowEvent;Ljava/lang/String;)Ljava/lang/String;

    .line 80
    const-string/jumbo v5, "PKTopWindowEvent"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "performResumeActivity, packageName: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, ", className: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, ", mLastRemoveTopwindowPackageName: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/android/server/am/PKTopWindowEvent$1;->this$0:Lcom/android/server/am/PKTopWindowEvent;

    invoke-static {v7}, Lcom/android/server/am/PKTopWindowEvent;->-get4(Lcom/android/server/am/PKTopWindowEvent;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, ", mLastRemoveTopwindowClassName: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/android/server/am/PKTopWindowEvent$1;->this$0:Lcom/android/server/am/PKTopWindowEvent;

    invoke-static {v7}, Lcom/android/server/am/PKTopWindowEvent;->-get3(Lcom/android/server/am/PKTopWindowEvent;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/android/server/am/PKTopWindowConfig$Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 76
    :cond_5
    iget-object v5, p0, Lcom/android/server/am/PKTopWindowEvent$1;->this$0:Lcom/android/server/am/PKTopWindowEvent;

    invoke-static {v5}, Lcom/android/server/am/PKTopWindowEvent;->-get2(Lcom/android/server/am/PKTopWindowEvent;)Landroid/os/Handler;

    move-result-object v5

    iget-object v6, p0, Lcom/android/server/am/PKTopWindowEvent$1;->this$0:Lcom/android/server/am/PKTopWindowEvent;

    invoke-static {v6}, Lcom/android/server/am/PKTopWindowEvent;->-get2(Lcom/android/server/am/PKTopWindowEvent;)Landroid/os/Handler;

    move-result-object v6

    invoke-virtual {v6, v7}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_1

    .line 82
    :cond_6
    const-string/jumbo v5, "PKTopWindowEvent"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "GrantPermissionsActivity, packageName: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, ", className: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/android/server/am/PKTopWindowConfig$Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 94
    .end local v1    # "bundle":Landroid/os/Bundle;
    .end local v2    # "className":Ljava/lang/String;
    .end local v3    # "packageName":Ljava/lang/String;
    :cond_7
    const-string/jumbo v5, "performStopActivityInner"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_9

    .line 95
    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    .line 96
    .restart local v1    # "bundle":Landroid/os/Bundle;
    const-string/jumbo v5, "packageName"

    invoke-virtual {v1, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 97
    .restart local v3    # "packageName":Ljava/lang/String;
    const-string/jumbo v5, "className"

    invoke-virtual {v1, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 99
    .restart local v2    # "className":Ljava/lang/String;
    iget-object v5, p0, Lcom/android/server/am/PKTopWindowEvent$1;->this$0:Lcom/android/server/am/PKTopWindowEvent;

    invoke-static {v5}, Lcom/android/server/am/PKTopWindowEvent;->-get5(Lcom/android/server/am/PKTopWindowEvent;)Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_8

    .line 100
    iget-object v5, p0, Lcom/android/server/am/PKTopWindowEvent$1;->this$0:Lcom/android/server/am/PKTopWindowEvent;

    invoke-static {v5}, Lcom/android/server/am/PKTopWindowEvent;->-get5(Lcom/android/server/am/PKTopWindowEvent;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_8

    .line 103
    :cond_8
    const-string/jumbo v5, "PKTopWindowEvent"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "performStopActivityInner, packageName: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, ", className: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/android/server/am/PKTopWindowConfig$Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 104
    .end local v1    # "bundle":Landroid/os/Bundle;
    .end local v2    # "className":Ljava/lang/String;
    .end local v3    # "packageName":Ljava/lang/String;
    :cond_9
    const-string/jumbo v5, "performDestroyActivity"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_b

    .line 105
    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    .line 106
    .restart local v1    # "bundle":Landroid/os/Bundle;
    const-string/jumbo v5, "packageName"

    invoke-virtual {v1, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 107
    .restart local v3    # "packageName":Ljava/lang/String;
    const-string/jumbo v5, "className"

    invoke-virtual {v1, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 109
    .restart local v2    # "className":Ljava/lang/String;
    iget-object v5, p0, Lcom/android/server/am/PKTopWindowEvent$1;->this$0:Lcom/android/server/am/PKTopWindowEvent;

    invoke-static {v5}, Lcom/android/server/am/PKTopWindowEvent;->-get5(Lcom/android/server/am/PKTopWindowEvent;)Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_a

    .line 110
    iget-object v5, p0, Lcom/android/server/am/PKTopWindowEvent$1;->this$0:Lcom/android/server/am/PKTopWindowEvent;

    invoke-static {v5}, Lcom/android/server/am/PKTopWindowEvent;->-get5(Lcom/android/server/am/PKTopWindowEvent;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_a

    iget-object v5, p0, Lcom/android/server/am/PKTopWindowEvent$1;->this$0:Lcom/android/server/am/PKTopWindowEvent;

    invoke-static {v5}, Lcom/android/server/am/PKTopWindowEvent;->-get0(Lcom/android/server/am/PKTopWindowEvent;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_a

    .line 115
    :cond_a
    const-string/jumbo v5, "PKTopWindowEvent"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "performDestroyActivity, packageName: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, ", className: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/android/server/am/PKTopWindowConfig$Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 116
    .end local v1    # "bundle":Landroid/os/Bundle;
    .end local v2    # "className":Ljava/lang/String;
    .end local v3    # "packageName":Ljava/lang/String;
    :cond_b
    const-string/jumbo v5, "android.intent.action.ACTION_POWER_CONNECTED"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_c

    .line 117
    iget-object v5, p0, Lcom/android/server/am/PKTopWindowEvent$1;->this$0:Lcom/android/server/am/PKTopWindowEvent;

    invoke-static {v5}, Lcom/android/server/am/PKTopWindowEvent;->-get2(Lcom/android/server/am/PKTopWindowEvent;)Landroid/os/Handler;

    move-result-object v5

    iget-object v6, p0, Lcom/android/server/am/PKTopWindowEvent$1;->this$0:Lcom/android/server/am/PKTopWindowEvent;

    invoke-static {v6}, Lcom/android/server/am/PKTopWindowEvent;->-get2(Lcom/android/server/am/PKTopWindowEvent;)Landroid/os/Handler;

    move-result-object v6

    const/4 v7, 0x4

    invoke-virtual {v6, v7}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto/16 :goto_0

    .line 118
    :cond_c
    const-string/jumbo v5, "android.intent.action.SCREEN_OFF"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 119
    iget-object v5, p0, Lcom/android/server/am/PKTopWindowEvent$1;->this$0:Lcom/android/server/am/PKTopWindowEvent;

    invoke-static {v5}, Lcom/android/server/am/PKTopWindowEvent;->-get2(Lcom/android/server/am/PKTopWindowEvent;)Landroid/os/Handler;

    move-result-object v5

    iget-object v6, p0, Lcom/android/server/am/PKTopWindowEvent$1;->this$0:Lcom/android/server/am/PKTopWindowEvent;

    invoke-static {v6}, Lcom/android/server/am/PKTopWindowEvent;->-get2(Lcom/android/server/am/PKTopWindowEvent;)Landroid/os/Handler;

    move-result-object v6

    invoke-virtual {v6, v7}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto/16 :goto_0
.end method
