.class Lcom/android/server/policy/MiuiGlobalActions$1$1;
.super Ljava/lang/Thread;
.source "MiuiGlobalActions.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/policy/MiuiGlobalActions$1;->onCommand(Ljava/lang/String;Ljava/lang/Double;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/server/policy/MiuiGlobalActions$1;


# direct methods
.method constructor <init>(Lcom/android/server/policy/MiuiGlobalActions$1;Ljava/lang/String;)V
    .locals 0
    .param p1, "this$1"    # Lcom/android/server/policy/MiuiGlobalActions$1;
    .param p2, "$anonymous0"    # Ljava/lang/String;

    .prologue
    .line 126
    iput-object p1, p0, Lcom/android/server/policy/MiuiGlobalActions$1$1;->this$1:Lcom/android/server/policy/MiuiGlobalActions$1;

    invoke-direct {p0, p2}, Ljava/lang/Thread;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    .line 130
    :try_start_0
    invoke-static {}, Lcom/android/server/policy/MiuiGlobalActions;->-wrap0()Landroid/os/IPowerManager;

    move-result-object v1

    const-string/jumbo v2, "userrequested"

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-interface {v1, v3, v2, v4}, Landroid/os/IPowerManager;->shutdown(ZLjava/lang/String;Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 128
    :goto_0
    return-void

    .line 131
    :catch_0
    move-exception v0

    .local v0, "e":Landroid/os/RemoteException;
    goto :goto_0
.end method
