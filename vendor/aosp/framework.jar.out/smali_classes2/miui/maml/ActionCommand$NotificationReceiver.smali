.class abstract Lmiui/maml/ActionCommand$NotificationReceiver;
.super Lmiui/maml/ActionCommand$StatefulActionCommand;
.source "ActionCommand.java"

# interfaces
.implements Lmiui/maml/NotifierManager$OnNotifyListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiui/maml/ActionCommand;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x40a
    name = "NotificationReceiver"
.end annotation


# instance fields
.field private mNotifierManager:Lmiui/maml/NotifierManager;

.field private mType:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lmiui/maml/elements/ScreenElement;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "screenElement"    # Lmiui/maml/elements/ScreenElement;
    .param p2, "stateName"    # Ljava/lang/String;
    .param p3, "type"    # Ljava/lang/String;

    .prologue
    .line 95
    invoke-direct {p0, p1, p2}, Lmiui/maml/ActionCommand$StatefulActionCommand;-><init>(Lmiui/maml/elements/ScreenElement;Ljava/lang/String;)V

    .line 96
    iput-object p3, p0, Lmiui/maml/ActionCommand$NotificationReceiver;->mType:Ljava/lang/String;

    .line 97
    invoke-virtual {p0}, Lmiui/maml/ActionCommand$NotificationReceiver;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lmiui/maml/NotifierManager;->getInstance(Landroid/content/Context;)Lmiui/maml/NotifierManager;

    move-result-object v0

    iput-object v0, p0, Lmiui/maml/ActionCommand$NotificationReceiver;->mNotifierManager:Lmiui/maml/NotifierManager;

    .line 94
    return-void
.end method


# virtual methods
.method protected asyncUpdate()V
    .locals 2

    .prologue
    .line 106
    invoke-static {}, Lmiui/maml/ActionCommand;->-get0()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lmiui/maml/ActionCommand$NotificationReceiver$1;

    invoke-direct {v1, p0}, Lmiui/maml/ActionCommand$NotificationReceiver$1;-><init>(Lmiui/maml/ActionCommand$NotificationReceiver;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 105
    return-void
.end method

.method public finish()V
    .locals 2

    .prologue
    .line 133
    iget-object v0, p0, Lmiui/maml/ActionCommand$NotificationReceiver;->mNotifierManager:Lmiui/maml/NotifierManager;

    iget-object v1, p0, Lmiui/maml/ActionCommand$NotificationReceiver;->mType:Ljava/lang/String;

    invoke-virtual {v0, v1, p0}, Lmiui/maml/NotifierManager;->releaseNotifier(Ljava/lang/String;Lmiui/maml/NotifierManager$OnNotifyListener;)V

    .line 132
    return-void
.end method

.method public init()V
    .locals 2

    .prologue
    .line 116
    invoke-virtual {p0}, Lmiui/maml/ActionCommand$NotificationReceiver;->update()V

    .line 117
    iget-object v0, p0, Lmiui/maml/ActionCommand$NotificationReceiver;->mNotifierManager:Lmiui/maml/NotifierManager;

    iget-object v1, p0, Lmiui/maml/ActionCommand$NotificationReceiver;->mType:Ljava/lang/String;

    invoke-virtual {v0, v1, p0}, Lmiui/maml/NotifierManager;->acquireNotifier(Ljava/lang/String;Lmiui/maml/NotifierManager$OnNotifyListener;)V

    .line 115
    return-void
.end method

.method public onNotify(Landroid/content/Context;Landroid/content/Intent;Ljava/lang/Object;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;
    .param p3, "o"    # Ljava/lang/Object;

    .prologue
    .line 102
    invoke-virtual {p0}, Lmiui/maml/ActionCommand$NotificationReceiver;->asyncUpdate()V

    .line 101
    return-void
.end method

.method public pause()V
    .locals 2

    .prologue
    .line 122
    iget-object v0, p0, Lmiui/maml/ActionCommand$NotificationReceiver;->mNotifierManager:Lmiui/maml/NotifierManager;

    iget-object v1, p0, Lmiui/maml/ActionCommand$NotificationReceiver;->mType:Ljava/lang/String;

    invoke-virtual {v0, v1, p0}, Lmiui/maml/NotifierManager;->pause(Ljava/lang/String;Lmiui/maml/NotifierManager$OnNotifyListener;)V

    .line 121
    return-void
.end method

.method public resume()V
    .locals 2

    .prologue
    .line 127
    invoke-virtual {p0}, Lmiui/maml/ActionCommand$NotificationReceiver;->update()V

    .line 128
    iget-object v0, p0, Lmiui/maml/ActionCommand$NotificationReceiver;->mNotifierManager:Lmiui/maml/NotifierManager;

    iget-object v1, p0, Lmiui/maml/ActionCommand$NotificationReceiver;->mType:Ljava/lang/String;

    invoke-virtual {v0, v1, p0}, Lmiui/maml/NotifierManager;->resume(Ljava/lang/String;Lmiui/maml/NotifierManager$OnNotifyListener;)V

    .line 126
    return-void
.end method

.method protected abstract update()V
.end method
