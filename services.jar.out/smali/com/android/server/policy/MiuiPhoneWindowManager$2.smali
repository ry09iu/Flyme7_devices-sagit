.class Lcom/android/server/policy/MiuiPhoneWindowManager$2;
.super Ljava/lang/Object;
.source "MiuiPhoneWindowManager.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/policy/MiuiPhoneWindowManager;->bringUpActionChooseDlg()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/policy/MiuiPhoneWindowManager;


# direct methods
.method constructor <init>(Lcom/android/server/policy/MiuiPhoneWindowManager;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/policy/MiuiPhoneWindowManager;

    .prologue
    .line 399
    iput-object p1, p0, Lcom/android/server/policy/MiuiPhoneWindowManager$2;->this$0:Lcom/android/server/policy/MiuiPhoneWindowManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 5
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    const/4 v4, 0x0

    .line 401
    const/4 v1, -0x1

    if-ne p2, v1, :cond_1

    .line 402
    const/4 v0, 0x1

    .line 404
    .local v0, "value":I
    :goto_0
    iget-object v1, p0, Lcom/android/server/policy/MiuiPhoneWindowManager$2;->this$0:Lcom/android/server/policy/MiuiPhoneWindowManager;

    iget-object v1, v1, Lcom/android/server/policy/MiuiPhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 405
    const-string/jumbo v2, "fingerprint_nav_center_action"

    const/4 v3, -0x2

    .line 404
    invoke-static {v1, v2, v0, v3}, Landroid/provider/Settings$System;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    .line 406
    iget-object v1, p0, Lcom/android/server/policy/MiuiPhoneWindowManager$2;->this$0:Lcom/android/server/policy/MiuiPhoneWindowManager;

    invoke-static {v1}, Lcom/android/server/policy/MiuiPhoneWindowManager;->-get0(Lcom/android/server/policy/MiuiPhoneWindowManager;)Lmiui/app/AlertDialog;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 407
    iget-object v1, p0, Lcom/android/server/policy/MiuiPhoneWindowManager$2;->this$0:Lcom/android/server/policy/MiuiPhoneWindowManager;

    invoke-static {v1}, Lcom/android/server/policy/MiuiPhoneWindowManager;->-get0(Lcom/android/server/policy/MiuiPhoneWindowManager;)Lmiui/app/AlertDialog;

    move-result-object v1

    invoke-virtual {v1}, Lmiui/app/AlertDialog;->dismiss()V

    .line 408
    iget-object v1, p0, Lcom/android/server/policy/MiuiPhoneWindowManager$2;->this$0:Lcom/android/server/policy/MiuiPhoneWindowManager;

    invoke-static {v1, v4}, Lcom/android/server/policy/MiuiPhoneWindowManager;->-set0(Lcom/android/server/policy/MiuiPhoneWindowManager;Lmiui/app/AlertDialog;)Lmiui/app/AlertDialog;

    .line 400
    :cond_0
    return-void

    .line 403
    .end local v0    # "value":I
    :cond_1
    const/4 v0, 0x0

    .restart local v0    # "value":I
    goto :goto_0
.end method
