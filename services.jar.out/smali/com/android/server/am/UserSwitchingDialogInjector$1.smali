.class final Lcom/android/server/am/UserSwitchingDialogInjector$1;
.super Ljava/lang/Object;
.source "UserSwitchingDialogInjector.java"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnWindowShownListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/am/UserSwitchingDialogInjector;->switchUser(Landroid/os/Handler;Lcom/android/server/am/BaseUserSwitchingDialog;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$dialog:Lcom/android/server/am/BaseUserSwitchingDialog;


# direct methods
.method constructor <init>(Lcom/android/server/am/BaseUserSwitchingDialog;)V
    .locals 0
    .param p1, "val$dialog"    # Lcom/android/server/am/BaseUserSwitchingDialog;

    .prologue
    .line 16
    iput-object p1, p0, Lcom/android/server/am/UserSwitchingDialogInjector$1;->val$dialog:Lcom/android/server/am/BaseUserSwitchingDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onWindowShown()V
    .locals 1

    .prologue
    .line 19
    iget-object v0, p0, Lcom/android/server/am/UserSwitchingDialogInjector$1;->val$dialog:Lcom/android/server/am/BaseUserSwitchingDialog;

    invoke-virtual {v0}, Lcom/android/server/am/BaseUserSwitchingDialog;->startUser()V

    .line 18
    return-void
.end method
