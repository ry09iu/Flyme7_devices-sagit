.class Lcom/android/server/notification/NotificationManagerService$7;
.super Lcom/android/server/notification/ZenModeHelper$Callback;
.source "NotificationManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/notification/NotificationManagerService;->onStart()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/notification/NotificationManagerService;


# direct methods
.method constructor <init>(Lcom/android/server/notification/NotificationManagerService;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/notification/NotificationManagerService;

    .prologue
    .line 979
    iput-object p1, p0, Lcom/android/server/notification/NotificationManagerService$7;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-direct {p0}, Lcom/android/server/notification/ZenModeHelper$Callback;-><init>()V

    return-void
.end method


# virtual methods
.method public onConfigChanged()V
    .locals 1

    .prologue
    .line 982
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService$7;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-virtual {v0}, Lcom/android/server/notification/NotificationManagerService;->savePolicyFile()V

    .line 981
    return-void
.end method

.method onPolicyChanged()V
    .locals 2

    .prologue
    .line 999
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService$7;->this$0:Lcom/android/server/notification/NotificationManagerService;

    const-string/jumbo v1, "android.app.action.NOTIFICATION_POLICY_CHANGED"

    invoke-static {v0, v1}, Lcom/android/server/notification/NotificationManagerService;->-wrap32(Lcom/android/server/notification/NotificationManagerService;Ljava/lang/String;)V

    .line 998
    return-void
.end method

.method onZenModeChanged()V
    .locals 4

    .prologue
    .line 987
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService$7;->this$0:Lcom/android/server/notification/NotificationManagerService;

    const-string/jumbo v1, "android.app.action.INTERRUPTION_FILTER_CHANGED"

    invoke-static {v0, v1}, Lcom/android/server/notification/NotificationManagerService;->-wrap32(Lcom/android/server/notification/NotificationManagerService;Ljava/lang/String;)V

    .line 988
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService$7;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-virtual {v0}, Lcom/android/server/notification/NotificationManagerService;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 989
    new-instance v1, Landroid/content/Intent;

    const-string/jumbo v2, "android.app.action.INTERRUPTION_FILTER_CHANGED_INTERNAL"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 990
    const/high16 v2, 0x4000000

    .line 989
    invoke-virtual {v1, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    move-result-object v1

    .line 991
    sget-object v2, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    const-string/jumbo v3, "android.permission.MANAGE_NOTIFICATIONS"

    .line 988
    invoke-virtual {v0, v1, v2, v3}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;Ljava/lang/String;)V

    .line 992
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService$7;->this$0:Lcom/android/server/notification/NotificationManagerService;

    iget-object v1, v0, Lcom/android/server/notification/NotificationManagerService;->mNotificationList:Ljava/util/ArrayList;

    monitor-enter v1

    .line 993
    :try_start_0
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService$7;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-static {v0}, Lcom/android/server/notification/NotificationManagerService;->-wrap34(Lcom/android/server/notification/NotificationManagerService;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    .line 986
    return-void

    .line 992
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method
