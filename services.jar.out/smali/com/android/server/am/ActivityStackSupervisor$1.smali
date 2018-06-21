.class Lcom/android/server/am/ActivityStackSupervisor$1;
.super Ljava/lang/Object;
.source "ActivityStackSupervisor.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/am/ActivityStackSupervisor;->updateMiuiAnimationInfo(Lcom/android/server/am/ActivityRecord;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/am/ActivityStackSupervisor;

.field final synthetic val$lastComponentName:Ljava/lang/String;

.field final synthetic val$userId:I


# direct methods
.method constructor <init>(Lcom/android/server/am/ActivityStackSupervisor;Ljava/lang/String;I)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/am/ActivityStackSupervisor;
    .param p2, "val$lastComponentName"    # Ljava/lang/String;
    .param p3, "val$userId"    # I

    .prologue
    .line 4907
    iput-object p1, p0, Lcom/android/server/am/ActivityStackSupervisor$1;->this$0:Lcom/android/server/am/ActivityStackSupervisor;

    iput-object p2, p0, Lcom/android/server/am/ActivityStackSupervisor$1;->val$lastComponentName:Ljava/lang/String;

    iput p3, p0, Lcom/android/server/am/ActivityStackSupervisor$1;->val$userId:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 9

    .prologue
    .line 4912
    :try_start_0
    iget-object v0, p0, Lcom/android/server/am/ActivityStackSupervisor$1;->this$0:Lcom/android/server/am/ActivityStackSupervisor;

    invoke-static {v0}, Lcom/android/server/am/ActivityStackSupervisor;->-get6(Lcom/android/server/am/ActivityStackSupervisor;)Lcom/miui/internal/transition/IMiuiAppTransitionAnimationHelper;

    move-result-object v7

    .line 4913
    .local v7, "helper":Lcom/miui/internal/transition/IMiuiAppTransitionAnimationHelper;
    if-eqz v7, :cond_0

    .line 4915
    iget-object v0, p0, Lcom/android/server/am/ActivityStackSupervisor$1;->val$lastComponentName:Ljava/lang/String;

    iget v1, p0, Lcom/android/server/am/ActivityStackSupervisor$1;->val$userId:I

    invoke-interface {v7, v0, v1}, Lcom/miui/internal/transition/IMiuiAppTransitionAnimationHelper;->getSpec(Ljava/lang/String;I)Lcom/miui/internal/transition/MiuiAppTransitionAnimationSpec;

    move-result-object v8

    .line 4916
    .local v8, "spec":Lcom/miui/internal/transition/MiuiAppTransitionAnimationSpec;
    if-eqz v8, :cond_0

    .line 4917
    iget-object v0, p0, Lcom/android/server/am/ActivityStackSupervisor$1;->this$0:Lcom/android/server/am/ActivityStackSupervisor;

    iget-object v0, v0, Lcom/android/server/am/ActivityStackSupervisor;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    iget-object v1, v8, Lcom/miui/internal/transition/MiuiAppTransitionAnimationSpec;->mBitmap:Landroid/graphics/Bitmap;

    const/4 v2, 0x0

    const/4 v3, 0x0

    .line 4918
    const/4 v4, 0x0

    const/4 v5, 0x1

    .line 4917
    invoke-virtual/range {v0 .. v5}, Lcom/android/server/wm/WindowManagerService;->overridePendingAppTransitionThumb(Landroid/graphics/Bitmap;IILandroid/os/IRemoteCallback;Z)V

    .line 4919
    iget-object v0, p0, Lcom/android/server/am/ActivityStackSupervisor$1;->this$0:Lcom/android/server/am/ActivityStackSupervisor;

    iget-object v0, v0, Lcom/android/server/am/ActivityStackSupervisor;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    iget-object v1, v8, Lcom/miui/internal/transition/MiuiAppTransitionAnimationSpec;->mRect:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Lcom/android/server/wm/WindowManagerService;->overrideMiuiAnimationRect(Landroid/graphics/Rect;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 4909
    .end local v7    # "helper":Lcom/miui/internal/transition/IMiuiAppTransitionAnimationHelper;
    .end local v8    # "spec":Lcom/miui/internal/transition/MiuiAppTransitionAnimationSpec;
    :cond_0
    :goto_0
    return-void

    .line 4922
    :catch_0
    move-exception v6

    .line 4923
    .local v6, "e":Landroid/os/RemoteException;
    invoke-virtual {v6}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method
