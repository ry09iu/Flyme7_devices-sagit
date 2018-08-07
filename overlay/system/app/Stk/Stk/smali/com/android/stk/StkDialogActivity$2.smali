.class Lcom/android/stk/StkDialogActivity$2;
.super Landroid/content/BroadcastReceiver;
.source "StkDialogActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/stk/StkDialogActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/stk/StkDialogActivity;


# direct methods
.method constructor <init>(Lcom/android/stk/StkDialogActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/stk/StkDialogActivity;

    .prologue
    .line 405
    iput-object p1, p0, Lcom/android/stk/StkDialogActivity$2;->this$0:Lcom/android/stk/StkDialogActivity;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v5, 0x0

    .line 407
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 408
    .local v0, "action":Ljava/lang/String;
    const-string/jumbo v2, "SLOT_ID"

    const/4 v3, 0x0

    invoke-virtual {p2, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    .line 410
    .local v1, "slotID":I
    if-eqz v0, :cond_0

    iget-object v2, p0, Lcom/android/stk/StkDialogActivity$2;->this$0:Lcom/android/stk/StkDialogActivity;

    invoke-static {v2}, Lcom/android/stk/StkDialogActivity;->-get2(Lcom/android/stk/StkDialogActivity;)I

    move-result v2

    if-eq v1, v2, :cond_1

    :cond_0
    return-void

    .line 411
    :cond_1
    invoke-static {}, Lcom/android/stk/StkDialogActivity;->-get0()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "onReceive, action="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ", sim id: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 412
    const-string/jumbo v2, "com.android.stk.DIALOG_ALARM_TIMEOUT"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 414
    iget-object v2, p0, Lcom/android/stk/StkDialogActivity$2;->this$0:Lcom/android/stk/StkDialogActivity;

    invoke-static {v2}, Lcom/android/stk/StkDialogActivity;->-get1(Lcom/android/stk/StkDialogActivity;)Landroid/app/AlertDialog;

    move-result-object v2

    if-eqz v2, :cond_2

    .line 415
    iget-object v2, p0, Lcom/android/stk/StkDialogActivity$2;->this$0:Lcom/android/stk/StkDialogActivity;

    invoke-static {v2}, Lcom/android/stk/StkDialogActivity;->-get1(Lcom/android/stk/StkDialogActivity;)Landroid/app/AlertDialog;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/AlertDialog;->dismiss()V

    .line 416
    iget-object v2, p0, Lcom/android/stk/StkDialogActivity$2;->this$0:Lcom/android/stk/StkDialogActivity;

    invoke-static {v2, v5}, Lcom/android/stk/StkDialogActivity;->-set0(Lcom/android/stk/StkDialogActivity;Landroid/app/AlertDialog;)Landroid/app/AlertDialog;

    .line 419
    :cond_2
    invoke-static {}, Lcom/android/stk/StkDialogActivity;->-get0()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "ALARM_TIMEOUT rcvd"

    invoke-static {v2, v3}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 420
    iget-object v2, p0, Lcom/android/stk/StkDialogActivity$2;->this$0:Lcom/android/stk/StkDialogActivity;

    invoke-static {v2, v5}, Lcom/android/stk/StkDialogActivity;->-set1(Lcom/android/stk/StkDialogActivity;Landroid/app/PendingIntent;)Landroid/app/PendingIntent;

    .line 421
    iget-object v2, p0, Lcom/android/stk/StkDialogActivity$2;->this$0:Lcom/android/stk/StkDialogActivity;

    const/16 v3, 0x14

    invoke-static {v2, v3}, Lcom/android/stk/StkDialogActivity;->-wrap2(Lcom/android/stk/StkDialogActivity;I)V

    .line 422
    iget-object v2, p0, Lcom/android/stk/StkDialogActivity$2;->this$0:Lcom/android/stk/StkDialogActivity;

    invoke-virtual {v2}, Lcom/android/stk/StkDialogActivity;->finish()V

    .line 406
    :cond_3
    return-void
.end method
