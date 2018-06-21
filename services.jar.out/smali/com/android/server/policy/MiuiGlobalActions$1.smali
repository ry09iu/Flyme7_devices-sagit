.class Lcom/android/server/policy/MiuiGlobalActions$1;
.super Ljava/lang/Object;
.source "MiuiGlobalActions.java"

# interfaces
.implements Lmiui/maml/ScreenElementRoot$OnExternCommandListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/policy/MiuiGlobalActions;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/policy/MiuiGlobalActions;


# direct methods
.method constructor <init>(Lcom/android/server/policy/MiuiGlobalActions;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/policy/MiuiGlobalActions;

    .prologue
    .line 113
    iput-object p1, p0, Lcom/android/server/policy/MiuiGlobalActions$1;->this$0:Lcom/android/server/policy/MiuiGlobalActions;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCommand(Ljava/lang/String;Ljava/lang/Double;Ljava/lang/String;)V
    .locals 5
    .param p1, "command"    # Ljava/lang/String;
    .param p2, "para1"    # Ljava/lang/Double;
    .param p3, "para2"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    .line 116
    const-string/jumbo v1, "airplane"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 117
    iget-object v1, p0, Lcom/android/server/policy/MiuiGlobalActions$1;->this$0:Lcom/android/server/policy/MiuiGlobalActions;

    const/16 v2, 0x9

    invoke-static {v1, v2}, Lcom/android/server/policy/MiuiGlobalActions;->-wrap1(Lcom/android/server/policy/MiuiGlobalActions;I)V

    .line 115
    :cond_0
    :goto_0
    return-void

    .line 118
    :cond_1
    const-string/jumbo v1, "silent"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 119
    iget-object v1, p0, Lcom/android/server/policy/MiuiGlobalActions$1;->this$0:Lcom/android/server/policy/MiuiGlobalActions;

    const/4 v2, 0x5

    invoke-static {v1, v2}, Lcom/android/server/policy/MiuiGlobalActions;->-wrap1(Lcom/android/server/policy/MiuiGlobalActions;I)V

    goto :goto_0

    .line 120
    :cond_2
    const-string/jumbo v1, "reboot"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 122
    :try_start_0
    invoke-static {}, Lcom/android/server/policy/MiuiGlobalActions;->-wrap0()Landroid/os/IPowerManager;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-interface {v1, v2, v3, v4}, Landroid/os/IPowerManager;->reboot(ZLjava/lang/String;Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 123
    :catch_0
    move-exception v0

    .local v0, "e":Landroid/os/RemoteException;
    goto :goto_0

    .line 125
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_3
    const-string/jumbo v1, "shutdown"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 126
    new-instance v1, Lcom/android/server/policy/MiuiGlobalActions$1$1;

    const-string/jumbo v2, "ShutdownThread"

    invoke-direct {v1, p0, v2}, Lcom/android/server/policy/MiuiGlobalActions$1$1;-><init>(Lcom/android/server/policy/MiuiGlobalActions$1;Ljava/lang/String;)V

    invoke-virtual {v1}, Lcom/android/server/policy/MiuiGlobalActions$1$1;->start()V

    goto :goto_0

    .line 135
    :cond_4
    const-string/jumbo v1, "dismiss"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 136
    iget-object v1, p0, Lcom/android/server/policy/MiuiGlobalActions$1;->this$0:Lcom/android/server/policy/MiuiGlobalActions;

    invoke-static {v1}, Lcom/android/server/policy/MiuiGlobalActions;->-get0(Lcom/android/server/policy/MiuiGlobalActions;)Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_0
.end method
