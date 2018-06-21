.class public Lcom/android/server/am/UnsupportedDisplaySizeDialog;
.super Ljava/lang/Object;
.source "UnsupportedDisplaySizeDialog.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/am/UnsupportedDisplaySizeDialog$-void__init__com_android_server_am_ActivityManagerService_service_android_content_Context_context_android_content_pm_ApplicationInfo_appInfo_LambdaImpl0;
    }
.end annotation


# instance fields
.field private final mDialog:Lmiui/app/AlertDialog;

.field private final mPackageName:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/android/server/am/ActivityManagerService;Landroid/content/Context;Landroid/content/pm/ApplicationInfo;)V
    .locals 9
    .param p1, "service"    # Lcom/android/server/am/ActivityManagerService;
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "appInfo"    # Landroid/content/pm/ApplicationInfo;

    .prologue
    const/4 v8, 0x1

    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    iget-object v5, p3, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    iput-object v5, p0, Lcom/android/server/am/UnsupportedDisplaySizeDialog;->mPackageName:Ljava/lang/String;

    .line 39
    invoke-virtual {p2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    .line 40
    .local v3, "pm":Landroid/content/pm/PackageManager;
    invoke-virtual {p3, v3}, Landroid/content/pm/ApplicationInfo;->loadSafeLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v1

    .line 41
    .local v1, "label":Ljava/lang/CharSequence;
    new-array v5, v8, [Ljava/lang/Object;

    .line 42
    const/4 v6, 0x0

    aput-object v1, v5, v6

    const v6, 0x10403bd

    .line 41
    invoke-virtual {p2, v6, v5}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 44
    .local v2, "message":Ljava/lang/CharSequence;
    new-instance v5, Lmiui/app/AlertDialog$Builder;

    invoke-direct {v5, p2}, Lmiui/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 45
    const v6, 0x104000a

    const/4 v7, 0x0

    .line 44
    invoke-virtual {v5, v6, v7}, Lmiui/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lmiui/app/AlertDialog$Builder;

    move-result-object v5

    invoke-virtual {v5, v2}, Lmiui/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Lmiui/app/AlertDialog$Builder;

    move-result-object v5

    .line 47
    const v6, 0x1090116

    .line 44
    invoke-virtual {v5, v6}, Lmiui/app/AlertDialog$Builder;->setView(I)Lmiui/app/AlertDialog$Builder;

    move-result-object v5

    invoke-virtual {v5}, Lmiui/app/AlertDialog$Builder;->create()Lmiui/app/AlertDialog;

    move-result-object v5

    iput-object v5, p0, Lcom/android/server/am/UnsupportedDisplaySizeDialog;->mDialog:Lmiui/app/AlertDialog;

    .line 51
    iget-object v5, p0, Lcom/android/server/am/UnsupportedDisplaySizeDialog;->mDialog:Lmiui/app/AlertDialog;

    invoke-virtual {v5}, Lmiui/app/AlertDialog;->create()V

    .line 53
    iget-object v5, p0, Lcom/android/server/am/UnsupportedDisplaySizeDialog;->mDialog:Lmiui/app/AlertDialog;

    invoke-virtual {v5}, Lmiui/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v4

    .line 54
    .local v4, "window":Landroid/view/Window;
    const/16 v5, 0x7d2

    invoke-virtual {v4, v5}, Landroid/view/Window;->setType(I)V

    .line 57
    invoke-virtual {v4}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v5

    const-string/jumbo v6, "UnsupportedDisplaySizeDialog"

    invoke-virtual {v5, v6}, Landroid/view/WindowManager$LayoutParams;->setTitle(Ljava/lang/CharSequence;)V

    .line 59
    iget-object v5, p0, Lcom/android/server/am/UnsupportedDisplaySizeDialog;->mDialog:Lmiui/app/AlertDialog;

    const v6, 0x102033c

    invoke-virtual {v5, v6}, Lmiui/app/AlertDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    .line 60
    .local v0, "alwaysShow":Landroid/widget/CheckBox;
    invoke-virtual {v0, v8}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 61
    new-instance v5, Lcom/android/server/am/UnsupportedDisplaySizeDialog$-void__init__com_android_server_am_ActivityManagerService_service_android_content_Context_context_android_content_pm_ApplicationInfo_appInfo_LambdaImpl0;

    invoke-direct {v5, p0, p1}, Lcom/android/server/am/UnsupportedDisplaySizeDialog$-void__init__com_android_server_am_ActivityManagerService_service_android_content_Context_context_android_content_pm_ApplicationInfo_appInfo_LambdaImpl0;-><init>(Lcom/android/server/am/UnsupportedDisplaySizeDialog;Lcom/android/server/am/ActivityManagerService;)V

    invoke-virtual {v0, v5}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 36
    return-void
.end method


# virtual methods
.method synthetic -com_android_server_am_UnsupportedDisplaySizeDialog_lambda$1(Lcom/android/server/am/ActivityManagerService;Landroid/widget/CompoundButton;Z)V
    .locals 2
    .param p1, "service"    # Lcom/android/server/am/ActivityManagerService;
    .param p2, "buttonView"    # Landroid/widget/CompoundButton;
    .param p3, "isChecked"    # Z

    .prologue
    .line 62
    monitor-enter p1

    :try_start_0
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V

    .line 63
    iget-object v0, p1, Lcom/android/server/am/ActivityManagerService;->mCompatModePackages:Lcom/android/server/am/CompatModePackages;

    .line 64
    iget-object v1, p0, Lcom/android/server/am/UnsupportedDisplaySizeDialog;->mPackageName:Ljava/lang/String;

    .line 63
    invoke-virtual {v0, v1, p3}, Lcom/android/server/am/CompatModePackages;->setPackageNotifyUnsupportedZoomLocked(Ljava/lang/String;Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p1

    .line 62
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    .line 0
    return-void

    .line 62
    :catchall_0
    move-exception v0

    monitor-exit p1

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    throw v0
.end method

.method public dismiss()V
    .locals 1

    .prologue
    .line 78
    iget-object v0, p0, Lcom/android/server/am/UnsupportedDisplaySizeDialog;->mDialog:Lmiui/app/AlertDialog;

    invoke-virtual {v0}, Lmiui/app/AlertDialog;->dismiss()V

    .line 77
    return-void
.end method

.method public getPackageName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 70
    iget-object v0, p0, Lcom/android/server/am/UnsupportedDisplaySizeDialog;->mPackageName:Ljava/lang/String;

    return-object v0
.end method

.method public show()V
    .locals 1

    .prologue
    .line 74
    iget-object v0, p0, Lcom/android/server/am/UnsupportedDisplaySizeDialog;->mDialog:Lmiui/app/AlertDialog;

    invoke-virtual {v0}, Lmiui/app/AlertDialog;->show()V

    .line 73
    return-void
.end method
