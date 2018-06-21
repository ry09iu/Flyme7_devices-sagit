.class Landroid/service/securespaces/SecureSpacesService$1;
.super Landroid/content/BroadcastReceiver;
.source "SecureSpacesService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/service/securespaces/SecureSpacesService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/service/securespaces/SecureSpacesService;


# direct methods
.method constructor <init>(Landroid/service/securespaces/SecureSpacesService;)V
    .locals 0
    .param p1, "this$0"    # Landroid/service/securespaces/SecureSpacesService;

    .prologue
    .line 116
    iput-object p1, p0, Landroid/service/securespaces/SecureSpacesService$1;->this$0:Landroid/service/securespaces/SecureSpacesService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 120
    const-string/jumbo v1, "android.intent.extra.user_handle"

    const/4 v2, -0x1

    invoke-virtual {p2, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 121
    .local v0, "id":I
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "android.intent.action.USER_REMOVED"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 122
    iget-object v1, p0, Landroid/service/securespaces/SecureSpacesService$1;->this$0:Landroid/service/securespaces/SecureSpacesService;

    invoke-static {v1, v0}, Landroid/service/securespaces/SecureSpacesService;->-wrap0(Landroid/service/securespaces/SecureSpacesService;I)V

    .line 119
    :cond_0
    return-void
.end method
