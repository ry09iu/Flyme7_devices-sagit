.class Lcom/android/stk/ToneDialog$2;
.super Landroid/content/BroadcastReceiver;
.source "ToneDialog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/stk/ToneDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/stk/ToneDialog;


# direct methods
.method constructor <init>(Lcom/android/stk/ToneDialog;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/stk/ToneDialog;

    .prologue
    .line 115
    iput-object p1, p0, Lcom/android/stk/ToneDialog$2;->this$0:Lcom/android/stk/ToneDialog;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 120
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "org.codeaurora.intent.action.stk.finish_activity"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 121
    const-string/jumbo v0, "Finishing Tone dialog activity"

    invoke-static {p0, v0}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 122
    iget-object v0, p0, Lcom/android/stk/ToneDialog$2;->this$0:Lcom/android/stk/ToneDialog;

    invoke-virtual {v0}, Lcom/android/stk/ToneDialog;->finish()V

    .line 117
    :cond_0
    return-void
.end method
