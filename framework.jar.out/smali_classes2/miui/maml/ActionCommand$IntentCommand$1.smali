.class Lmiui/maml/ActionCommand$IntentCommand$1;
.super Landroid/content/pm/IPackageInstallObserver$Stub;
.source "ActionCommand.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lmiui/maml/ActionCommand$IntentCommand;->doPerform()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lmiui/maml/ActionCommand$IntentCommand;

.field final synthetic val$bd:Landroid/os/Bundle;


# direct methods
.method constructor <init>(Lmiui/maml/ActionCommand$IntentCommand;Landroid/os/Bundle;)V
    .locals 0
    .param p1, "this$1"    # Lmiui/maml/ActionCommand$IntentCommand;
    .param p2, "val$bd"    # Landroid/os/Bundle;

    .prologue
    .line 1004
    iput-object p1, p0, Lmiui/maml/ActionCommand$IntentCommand$1;->this$1:Lmiui/maml/ActionCommand$IntentCommand;

    iput-object p2, p0, Lmiui/maml/ActionCommand$IntentCommand$1;->val$bd:Landroid/os/Bundle;

    invoke-direct {p0}, Landroid/content/pm/IPackageInstallObserver$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public packageInstalled(Ljava/lang/String;I)V
    .locals 3
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "code"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1007
    iget-object v0, p0, Lmiui/maml/ActionCommand$IntentCommand$1;->this$1:Lmiui/maml/ActionCommand$IntentCommand;

    invoke-virtual {v0}, Lmiui/maml/ActionCommand$IntentCommand;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lmiui/maml/ActionCommand$IntentCommand$1;->this$1:Lmiui/maml/ActionCommand$IntentCommand;

    invoke-static {v1}, Lmiui/maml/ActionCommand$IntentCommand;->-get0(Lmiui/maml/ActionCommand$IntentCommand;)Landroid/content/Intent;

    move-result-object v1

    iget-object v2, p0, Lmiui/maml/ActionCommand$IntentCommand$1;->val$bd:Landroid/os/Bundle;

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->startActivity(Landroid/content/Intent;Landroid/os/Bundle;)V

    .line 1006
    return-void
.end method
