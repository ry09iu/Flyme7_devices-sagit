.class Lmiui/maml/NotifierManager$BroadcastNotifier$1;
.super Landroid/content/BroadcastReceiver;
.source "NotifierManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiui/maml/NotifierManager$BroadcastNotifier;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lmiui/maml/NotifierManager$BroadcastNotifier;


# direct methods
.method constructor <init>(Lmiui/maml/NotifierManager$BroadcastNotifier;)V
    .locals 0
    .param p1, "this$1"    # Lmiui/maml/NotifierManager$BroadcastNotifier;

    .prologue
    .line 322
    iput-object p1, p0, Lmiui/maml/NotifierManager$BroadcastNotifier$1;->this$1:Lmiui/maml/NotifierManager$BroadcastNotifier;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 325
    invoke-static {}, Lmiui/maml/NotifierManager;->-get0()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 326
    const-string/jumbo v0, "NotifierManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onNotify: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lmiui/maml/NotifierManager$BroadcastNotifier$1;->this$1:Lmiui/maml/NotifierManager$BroadcastNotifier;

    invoke-virtual {v2}, Lmiui/maml/NotifierManager$BroadcastNotifier;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 328
    :cond_0
    iget-object v0, p0, Lmiui/maml/NotifierManager$BroadcastNotifier$1;->this$1:Lmiui/maml/NotifierManager$BroadcastNotifier;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, p2, v1}, Lmiui/maml/NotifierManager$BroadcastNotifier;->onNotify(Landroid/content/Context;Landroid/content/Intent;Ljava/lang/Object;)V

    .line 324
    return-void
.end method
