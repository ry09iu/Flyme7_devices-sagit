.class Lcom/miui/server/MiuiCompatModePackages$1;
.super Landroid/content/BroadcastReceiver;
.source "MiuiCompatModePackages.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/server/MiuiCompatModePackages;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/server/MiuiCompatModePackages;


# direct methods
.method constructor <init>(Lcom/miui/server/MiuiCompatModePackages;)V
    .locals 0
    .param p1, "this$0"    # Lcom/miui/server/MiuiCompatModePackages;

    .prologue
    .line 203
    iput-object p1, p0, Lcom/miui/server/MiuiCompatModePackages$1;->this$0:Lcom/miui/server/MiuiCompatModePackages;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 206
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 207
    .local v0, "action":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v1

    .line 208
    .local v1, "data":Landroid/net/Uri;
    if-eqz v1, :cond_0

    .line 209
    invoke-virtual {v1}, Landroid/net/Uri;->getSchemeSpecificPart()Ljava/lang/String;

    move-result-object v2

    .line 210
    .local v2, "pkg":Ljava/lang/String;
    if-eqz v2, :cond_0

    .line 211
    const-string/jumbo v3, "android.intent.action.PACKAGE_ADDED"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 212
    iget-object v3, p0, Lcom/miui/server/MiuiCompatModePackages$1;->this$0:Lcom/miui/server/MiuiCompatModePackages;

    invoke-static {v3, v2}, Lcom/miui/server/MiuiCompatModePackages;->-wrap6(Lcom/miui/server/MiuiCompatModePackages;Ljava/lang/String;)V

    .line 205
    .end local v2    # "pkg":Ljava/lang/String;
    :cond_0
    :goto_0
    return-void

    .line 213
    .restart local v2    # "pkg":Ljava/lang/String;
    :cond_1
    const-string/jumbo v3, "android.intent.action.PACKAGE_REMOVED"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 214
    const-string/jumbo v3, "android.intent.extra.REPLACING"

    const/4 v4, 0x0

    invoke-virtual {p2, v3, v4}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v3

    if-nez v3, :cond_0

    .line 215
    iget-object v3, p0, Lcom/miui/server/MiuiCompatModePackages$1;->this$0:Lcom/miui/server/MiuiCompatModePackages;

    invoke-static {v3, v2}, Lcom/miui/server/MiuiCompatModePackages;->-wrap4(Lcom/miui/server/MiuiCompatModePackages;Ljava/lang/String;)V

    goto :goto_0
.end method
