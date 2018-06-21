.class Lcom/android/server/policy/BaseMiuiPhoneWindowManager$11;
.super Ljava/lang/Object;
.source "BaseMiuiPhoneWindowManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->getExtraSystemUiVisibility(Landroid/view/WindowManagerPolicy$WindowState;F)I
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/policy/BaseMiuiPhoneWindowManager;

.field final synthetic val$disabledFlag:I


# direct methods
.method constructor <init>(Lcom/android/server/policy/BaseMiuiPhoneWindowManager;I)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/policy/BaseMiuiPhoneWindowManager;
    .param p2, "val$disabledFlag"    # I

    .prologue
    .line 1170
    iput-object p1, p0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager$11;->this$0:Lcom/android/server/policy/BaseMiuiPhoneWindowManager;

    iput p2, p0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager$11;->val$disabledFlag:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 1174
    :try_start_0
    iget-object v2, p0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager$11;->this$0:Lcom/android/server/policy/BaseMiuiPhoneWindowManager;

    invoke-virtual {v2}, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->getStatusBarService()Lcom/android/internal/statusbar/IStatusBarService;

    move-result-object v1

    .line 1175
    .local v1, "statusbar":Lcom/android/internal/statusbar/IStatusBarService;
    if-eqz v1, :cond_0

    .line 1176
    iget v2, p0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager$11;->val$disabledFlag:I

    iget-object v3, p0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager$11;->this$0:Lcom/android/server/policy/BaseMiuiPhoneWindowManager;

    invoke-static {v3}, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->-get12(Lcom/android/server/policy/BaseMiuiPhoneWindowManager;)Landroid/os/Binder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager$11;->this$0:Lcom/android/server/policy/BaseMiuiPhoneWindowManager;

    iget-object v4, v4, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v1, v2, v3, v4}, Lcom/android/internal/statusbar/IStatusBarService;->disable(ILandroid/os/IBinder;Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1172
    .end local v1    # "statusbar":Lcom/android/internal/statusbar/IStatusBarService;
    :cond_0
    :goto_0
    return-void

    .line 1178
    :catch_0
    move-exception v0

    .line 1180
    .local v0, "e":Landroid/os/RemoteException;
    const-string/jumbo v2, "WindowManager"

    const-string/jumbo v3, "RemoteException"

    invoke-static {v2, v3, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1181
    iget-object v2, p0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager$11;->this$0:Lcom/android/server/policy/BaseMiuiPhoneWindowManager;

    iput-object v5, v2, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->mStatusBarService:Lcom/android/internal/statusbar/IStatusBarService;

    goto :goto_0
.end method
