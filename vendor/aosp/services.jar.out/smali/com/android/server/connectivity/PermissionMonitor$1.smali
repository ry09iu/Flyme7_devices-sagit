.class Lcom/android/server/connectivity/PermissionMonitor$1;
.super Landroid/content/BroadcastReceiver;
.source "PermissionMonitor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/connectivity/PermissionMonitor;-><init>(Landroid/content/Context;Landroid/os/INetworkManagementService;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/connectivity/PermissionMonitor;


# direct methods
.method constructor <init>(Lcom/android/server/connectivity/PermissionMonitor;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/connectivity/PermissionMonitor;

    .prologue
    .line 75
    iput-object p1, p0, Lcom/android/server/connectivity/PermissionMonitor$1;->this$0:Lcom/android/server/connectivity/PermissionMonitor;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 8
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 78
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 79
    .local v0, "action":Ljava/lang/String;
    const-string/jumbo v6, "android.intent.extra.user_handle"

    const/16 v7, -0x2710

    invoke-virtual {p2, v6, v7}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v5

    .line 80
    .local v5, "user":I
    const-string/jumbo v6, "android.intent.extra.UID"

    const/4 v7, -0x1

    invoke-virtual {p2, v6, v7}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    .line 81
    .local v3, "appUid":I
    invoke-virtual {p2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v1

    .line 82
    .local v1, "appData":Landroid/net/Uri;
    if-eqz v1, :cond_1

    invoke-virtual {v1}, Landroid/net/Uri;->getSchemeSpecificPart()Ljava/lang/String;

    move-result-object v2

    .line 84
    :goto_0
    const-string/jumbo v6, "android.intent.extra.REMOVED_FOR_ALL_USERS"

    const/4 v7, 0x0

    .line 83
    invoke-virtual {p2, v6, v7}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v4

    .line 86
    .local v4, "removedForAllUsers":Z
    const-string/jumbo v6, "android.intent.action.USER_ADDED"

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 87
    iget-object v6, p0, Lcom/android/server/connectivity/PermissionMonitor$1;->this$0:Lcom/android/server/connectivity/PermissionMonitor;

    invoke-static {v6, v5}, Lcom/android/server/connectivity/PermissionMonitor;->-wrap2(Lcom/android/server/connectivity/PermissionMonitor;I)V

    .line 77
    :cond_0
    :goto_1
    return-void

    .line 82
    .end local v4    # "removedForAllUsers":Z
    :cond_1
    const/4 v2, 0x0

    .local v2, "appName":Ljava/lang/String;
    goto :goto_0

    .line 88
    .end local v2    # "appName":Ljava/lang/String;
    .restart local v4    # "removedForAllUsers":Z
    :cond_2
    const-string/jumbo v6, "android.intent.action.USER_REMOVED"

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 89
    iget-object v6, p0, Lcom/android/server/connectivity/PermissionMonitor$1;->this$0:Lcom/android/server/connectivity/PermissionMonitor;

    invoke-static {v6, v5}, Lcom/android/server/connectivity/PermissionMonitor;->-wrap3(Lcom/android/server/connectivity/PermissionMonitor;I)V

    goto :goto_1

    .line 90
    :cond_3
    const-string/jumbo v6, "android.intent.action.PACKAGE_ADDED"

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_4

    .line 91
    iget-object v6, p0, Lcom/android/server/connectivity/PermissionMonitor$1;->this$0:Lcom/android/server/connectivity/PermissionMonitor;

    invoke-static {v6, v2, v3, v5}, Lcom/android/server/connectivity/PermissionMonitor;->-wrap0(Lcom/android/server/connectivity/PermissionMonitor;Ljava/lang/String;II)V

    goto :goto_1

    .line 92
    :cond_4
    const-string/jumbo v6, "android.intent.action.PACKAGE_REMOVED"

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 93
    iget-object v6, p0, Lcom/android/server/connectivity/PermissionMonitor$1;->this$0:Lcom/android/server/connectivity/PermissionMonitor;

    invoke-static {v6, v3, v4, v5}, Lcom/android/server/connectivity/PermissionMonitor;->-wrap1(Lcom/android/server/connectivity/PermissionMonitor;IZI)V

    goto :goto_1
.end method
