.class final Lcom/android/server/am/ActivityManagerServiceInjector$1;
.super Ljava/lang/Object;
.source "ActivityManagerServiceInjector.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/am/ActivityManagerServiceInjector;->showSwitchingDialog(Lcom/android/server/am/ActivityManagerService;ILandroid/os/Handler;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$ams:Lcom/android/server/am/ActivityManagerService;

.field final synthetic val$mTargetUserId:I


# direct methods
.method constructor <init>(Lcom/android/server/am/ActivityManagerService;I)V
    .locals 0
    .param p1, "val$ams"    # Lcom/android/server/am/ActivityManagerService;
    .param p2, "val$mTargetUserId"    # I

    .prologue
    .line 425
    iput-object p1, p0, Lcom/android/server/am/ActivityManagerServiceInjector$1;->val$ams:Lcom/android/server/am/ActivityManagerService;

    iput p2, p0, Lcom/android/server/am/ActivityManagerServiceInjector$1;->val$mTargetUserId:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 427
    iget-object v2, p0, Lcom/android/server/am/ActivityManagerServiceInjector$1;->val$ams:Lcom/android/server/am/ActivityManagerService;

    iget-object v2, v2, Lcom/android/server/am/ActivityManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    .line 428
    const-string/jumbo v3, "second_user_id"

    const/16 v4, -0x2710

    .line 427
    invoke-static {v2, v3, v4, v5}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v1

    .line 429
    .local v1, "secondSpaceId":I
    iget-object v2, p0, Lcom/android/server/am/ActivityManagerServiceInjector$1;->val$ams:Lcom/android/server/am/ActivityManagerService;

    iget-object v2, v2, Lcom/android/server/am/ActivityManagerService;->mUserController:Lcom/android/server/am/UserController;

    invoke-virtual {v2}, Lcom/android/server/am/UserController;->getCurrentUserIdLocked()I

    move-result v0

    .line 430
    .local v0, "mCurrentUserId":I
    iget v2, p0, Lcom/android/server/am/ActivityManagerServiceInjector$1;->val$mTargetUserId:I

    if-ne v2, v1, :cond_1

    if-nez v0, :cond_1

    .line 432
    :cond_0
    new-instance v2, Lcom/android/server/am/SecondSpaceSwitchingDialog;

    iget-object v3, p0, Lcom/android/server/am/ActivityManagerServiceInjector$1;->val$ams:Lcom/android/server/am/ActivityManagerService;

    iget-object v4, p0, Lcom/android/server/am/ActivityManagerServiceInjector$1;->val$ams:Lcom/android/server/am/ActivityManagerService;

    iget-object v4, v4, Lcom/android/server/am/ActivityManagerService;->mContext:Landroid/content/Context;

    iget v5, p0, Lcom/android/server/am/ActivityManagerServiceInjector$1;->val$mTargetUserId:I

    invoke-direct {v2, v3, v4, v5}, Lcom/android/server/am/SecondSpaceSwitchingDialog;-><init>(Lcom/android/server/am/ActivityManagerService;Landroid/content/Context;I)V

    invoke-virtual {v2}, Lcom/android/server/am/SecondSpaceSwitchingDialog;->show()V

    .line 426
    :goto_0
    return-void

    .line 431
    :cond_1
    if-ne v0, v1, :cond_2

    iget v2, p0, Lcom/android/server/am/ActivityManagerServiceInjector$1;->val$mTargetUserId:I

    if-eqz v2, :cond_0

    .line 434
    :cond_2
    new-instance v2, Lcom/android/server/am/MiuiUserSwitchingDialog;

    iget-object v3, p0, Lcom/android/server/am/ActivityManagerServiceInjector$1;->val$ams:Lcom/android/server/am/ActivityManagerService;

    iget-object v4, p0, Lcom/android/server/am/ActivityManagerServiceInjector$1;->val$ams:Lcom/android/server/am/ActivityManagerService;

    iget-object v4, v4, Lcom/android/server/am/ActivityManagerService;->mContext:Landroid/content/Context;

    iget v5, p0, Lcom/android/server/am/ActivityManagerServiceInjector$1;->val$mTargetUserId:I

    invoke-direct {v2, v3, v4, v5}, Lcom/android/server/am/MiuiUserSwitchingDialog;-><init>(Lcom/android/server/am/ActivityManagerService;Landroid/content/Context;I)V

    invoke-virtual {v2}, Lcom/android/server/am/MiuiUserSwitchingDialog;->show()V

    goto :goto_0
.end method
