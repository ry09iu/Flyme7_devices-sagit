.class public final Lcom/miui/server/MiuiCompatModePackages;
.super Ljava/lang/Object;
.source "MiuiCompatModePackages.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/server/MiuiCompatModePackages$1;,
        Lcom/miui/server/MiuiCompatModePackages$AppLaunchObserver;,
        Lcom/miui/server/MiuiCompatModePackages$CompatHandler;
    }
.end annotation


# static fields
.field private static final ATTR_CONFIG_NOTIFY_SUGGEST_APPS:Ljava/lang/String; = "notifySuggestApps"

.field private static final MSG_DONT_SHOW_AGAIN:I = 0x69

.field private static final MSG_ON_APP_LAUNCH:I = 0x68

.field private static final MSG_READ:I = 0x65

.field private static final MSG_REGISTER_OBSERVER:I = 0x66

.field private static final MSG_UNREGISTER_OBSERVER:I = 0x67

.field private static final MSG_WRITE:I = 0x64

.field private static final TAG:Ljava/lang/String; = "MiuiCompatModePackages"

.field private static final TAG_NAME_CONFIG:Ljava/lang/String; = "config"


# instance fields
.field private mAlertDialog:Lmiui/app/AlertDialog;

.field private mBroadcastReceiver:Landroid/content/BroadcastReceiver;

.field private final mContext:Landroid/content/Context;

.field private mDefaultAspect:F

.field private final mDefaultType:Ljava/util/HashMap;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "mLock"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final mFile:Landroid/util/AtomicFile;

.field private final mHandler:Lcom/miui/server/MiuiCompatModePackages$CompatHandler;

.field private final mLock:Ljava/lang/Object;

.field private mNotifySuggestApps:Z

.field private final mPackages:Ljava/util/HashMap;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "mLock"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mProcessObserver:Landroid/app/IMiuiProcessObserver;

.field private final mRestrictList:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final mSuggestList:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static synthetic -get0(Lcom/miui/server/MiuiCompatModePackages;)Lmiui/app/AlertDialog;
    .locals 1

    iget-object v0, p0, Lcom/miui/server/MiuiCompatModePackages;->mAlertDialog:Lmiui/app/AlertDialog;

    return-object v0
.end method

.method static synthetic -get1(Lcom/miui/server/MiuiCompatModePackages;)Lcom/miui/server/MiuiCompatModePackages$CompatHandler;
    .locals 1

    iget-object v0, p0, Lcom/miui/server/MiuiCompatModePackages;->mHandler:Lcom/miui/server/MiuiCompatModePackages$CompatHandler;

    return-object v0
.end method

.method static synthetic -set0(Lcom/miui/server/MiuiCompatModePackages;Lmiui/app/AlertDialog;)Lmiui/app/AlertDialog;
    .locals 0

    iput-object p1, p0, Lcom/miui/server/MiuiCompatModePackages;->mAlertDialog:Lmiui/app/AlertDialog;

    return-object p1
.end method

.method static synthetic -wrap0(Lcom/miui/server/MiuiCompatModePackages;)V
    .locals 0

    invoke-direct {p0}, Lcom/miui/server/MiuiCompatModePackages;->gotoMaxAspectSettings()V

    return-void
.end method

.method static synthetic -wrap1(Lcom/miui/server/MiuiCompatModePackages;)V
    .locals 0

    invoke-direct {p0}, Lcom/miui/server/MiuiCompatModePackages;->handleDontShowAgain()V

    return-void
.end method

.method static synthetic -wrap2(Lcom/miui/server/MiuiCompatModePackages;Ljava/lang/String;)V
    .locals 0
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    invoke-direct {p0, p1}, Lcom/miui/server/MiuiCompatModePackages;->handleOnAppLaunch(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic -wrap3(Lcom/miui/server/MiuiCompatModePackages;)V
    .locals 0

    invoke-direct {p0}, Lcom/miui/server/MiuiCompatModePackages;->handleRegisterObservers()V

    return-void
.end method

.method static synthetic -wrap4(Lcom/miui/server/MiuiCompatModePackages;Ljava/lang/String;)V
    .locals 0
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    invoke-direct {p0, p1}, Lcom/miui/server/MiuiCompatModePackages;->handleRemovePackage(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic -wrap5(Lcom/miui/server/MiuiCompatModePackages;)V
    .locals 0

    invoke-direct {p0}, Lcom/miui/server/MiuiCompatModePackages;->handleUnregisterObservers()V

    return-void
.end method

.method static synthetic -wrap6(Lcom/miui/server/MiuiCompatModePackages;Ljava/lang/String;)V
    .locals 0
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    invoke-direct {p0, p1}, Lcom/miui/server/MiuiCompatModePackages;->handleUpdatePackage(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic -wrap7(Lcom/miui/server/MiuiCompatModePackages;)V
    .locals 0

    invoke-direct {p0}, Lcom/miui/server/MiuiCompatModePackages;->readPackagesConfig()V

    return-void
.end method

.method static synthetic -wrap8(Lcom/miui/server/MiuiCompatModePackages;)V
    .locals 0

    invoke-direct {p0}, Lcom/miui/server/MiuiCompatModePackages;->readSuggestApps()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 7
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 117
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 57
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/miui/server/MiuiCompatModePackages;->mLock:Ljava/lang/Object;

    .line 60
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/miui/server/MiuiCompatModePackages;->mPackages:Ljava/util/HashMap;

    .line 62
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/miui/server/MiuiCompatModePackages;->mDefaultType:Ljava/util/HashMap;

    .line 64
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/miui/server/MiuiCompatModePackages;->mSuggestList:Ljava/util/HashSet;

    .line 65
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/miui/server/MiuiCompatModePackages;->mRestrictList:Ljava/util/HashSet;

    .line 78
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/miui/server/MiuiCompatModePackages;->mNotifySuggestApps:Z

    .line 203
    new-instance v0, Lcom/miui/server/MiuiCompatModePackages$1;

    invoke-direct {v0, p0}, Lcom/miui/server/MiuiCompatModePackages$1;-><init>(Lcom/miui/server/MiuiCompatModePackages;)V

    iput-object v0, p0, Lcom/miui/server/MiuiCompatModePackages;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    .line 118
    iput-object p1, p0, Lcom/miui/server/MiuiCompatModePackages;->mContext:Landroid/content/Context;

    .line 120
    iget-object v0, p0, Lcom/miui/server/MiuiCompatModePackages;->mRestrictList:Ljava/util/HashSet;

    const-string/jumbo v1, "android.dpi.cts"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 122
    new-instance v6, Ljava/io/File;

    invoke-static {}, Landroid/os/Environment;->getDataDirectory()Ljava/io/File;

    move-result-object v0

    const-string/jumbo v1, "system"

    invoke-direct {v6, v0, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 123
    .local v6, "systemDir":Ljava/io/File;
    new-instance v0, Landroid/util/AtomicFile;

    new-instance v1, Ljava/io/File;

    const-string/jumbo v2, "miui-packages-compat.xml"

    invoke-direct {v1, v6, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-direct {v0, v1}, Landroid/util/AtomicFile;-><init>(Ljava/io/File;)V

    iput-object v0, p0, Lcom/miui/server/MiuiCompatModePackages;->mFile:Landroid/util/AtomicFile;

    .line 125
    new-instance v0, Lcom/miui/server/MiuiCompatModePackages$CompatHandler;

    invoke-static {}, Lcom/android/server/MiuiFgThread;->getHandler()Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/miui/server/MiuiCompatModePackages$CompatHandler;-><init>(Lcom/miui/server/MiuiCompatModePackages;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/miui/server/MiuiCompatModePackages;->mHandler:Lcom/miui/server/MiuiCompatModePackages$CompatHandler;

    .line 126
    iget-object v0, p0, Lcom/miui/server/MiuiCompatModePackages;->mHandler:Lcom/miui/server/MiuiCompatModePackages$CompatHandler;

    const/16 v1, 0x65

    invoke-virtual {v0, v1}, Lcom/miui/server/MiuiCompatModePackages$CompatHandler;->sendEmptyMessage(I)Z

    .line 128
    new-instance v3, Landroid/content/IntentFilter;

    invoke-direct {v3}, Landroid/content/IntentFilter;-><init>()V

    .line 129
    .local v3, "filter":Landroid/content/IntentFilter;
    const-string/jumbo v0, "android.intent.action.PACKAGE_ADDED"

    invoke-virtual {v3, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 130
    const-string/jumbo v0, "android.intent.action.PACKAGE_REMOVED"

    invoke-virtual {v3, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 131
    const-string/jumbo v0, "package"

    invoke-virtual {v3, v0}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    .line 132
    iget-object v1, p0, Lcom/miui/server/MiuiCompatModePackages;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    sget-object v2, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-static {}, Lcom/android/server/MiuiFgThread;->getHandler()Landroid/os/Handler;

    move-result-object v5

    const/4 v4, 0x0

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/content/Context;->registerReceiverAsUser(Landroid/content/BroadcastReceiver;Landroid/os/UserHandle;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 134
    iget-object v0, p0, Lcom/miui/server/MiuiCompatModePackages;->mHandler:Lcom/miui/server/MiuiCompatModePackages$CompatHandler;

    const/16 v1, 0x66

    invoke-virtual {v0, v1}, Lcom/miui/server/MiuiCompatModePackages$CompatHandler;->sendEmptyMessage(I)Z

    .line 135
    invoke-direct {p0}, Lcom/miui/server/MiuiCompatModePackages;->getDeviceAspect()F

    .line 117
    return-void
.end method

.method private createDialog()V
    .locals 3

    .prologue
    .line 467
    new-instance v0, Lmiui/app/AlertDialog$Builder;

    iget-object v1, p0, Lcom/miui/server/MiuiCompatModePackages;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lmiui/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 468
    const v1, 0x110700f2

    .line 467
    invoke-virtual {v0, v1}, Lmiui/app/AlertDialog$Builder;->setTitle(I)Lmiui/app/AlertDialog$Builder;

    move-result-object v0

    .line 469
    const v1, 0x110700f3

    .line 467
    invoke-virtual {v0, v1}, Lmiui/app/AlertDialog$Builder;->setMessage(I)Lmiui/app/AlertDialog$Builder;

    move-result-object v0

    .line 470
    iget-object v1, p0, Lcom/miui/server/MiuiCompatModePackages;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 471
    const v2, 0x110700f4

    .line 470
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    .line 467
    invoke-virtual {v0, v2, v1}, Lmiui/app/AlertDialog$Builder;->setCheckBox(ZLjava/lang/CharSequence;)Lmiui/app/AlertDialog$Builder;

    move-result-object v0

    .line 472
    new-instance v1, Lcom/miui/server/MiuiCompatModePackages$3;

    invoke-direct {v1, p0}, Lcom/miui/server/MiuiCompatModePackages$3;-><init>(Lcom/miui/server/MiuiCompatModePackages;)V

    const v2, 0x110700f5

    .line 467
    invoke-virtual {v0, v2, v1}, Lmiui/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lmiui/app/AlertDialog$Builder;

    move-result-object v0

    .line 478
    new-instance v1, Lcom/miui/server/MiuiCompatModePackages$4;

    invoke-direct {v1, p0}, Lcom/miui/server/MiuiCompatModePackages$4;-><init>(Lcom/miui/server/MiuiCompatModePackages;)V

    const v2, 0x110700f6

    .line 467
    invoke-virtual {v0, v2, v1}, Lmiui/app/AlertDialog$Builder;->setNeutralButton(ILandroid/content/DialogInterface$OnClickListener;)Lmiui/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lmiui/app/AlertDialog$Builder;->create()Lmiui/app/AlertDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/server/MiuiCompatModePackages;->mAlertDialog:Lmiui/app/AlertDialog;

    .line 487
    iget-object v0, p0, Lcom/miui/server/MiuiCompatModePackages;->mAlertDialog:Lmiui/app/AlertDialog;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lmiui/app/AlertDialog;->setCanceledOnTouchOutside(Z)V

    .line 488
    iget-object v0, p0, Lcom/miui/server/MiuiCompatModePackages;->mAlertDialog:Lmiui/app/AlertDialog;

    invoke-virtual {v0}, Lmiui/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    const/16 v1, 0x7d8

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    .line 490
    iget-object v0, p0, Lcom/miui/server/MiuiCompatModePackages;->mAlertDialog:Lmiui/app/AlertDialog;

    new-instance v1, Lcom/miui/server/MiuiCompatModePackages$5;

    invoke-direct {v1, p0}, Lcom/miui/server/MiuiCompatModePackages$5;-><init>(Lcom/miui/server/MiuiCompatModePackages;)V

    invoke-virtual {v0, v1}, Lmiui/app/AlertDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 466
    return-void
.end method

.method private getDefaultMode(Ljava/lang/String;)I
    .locals 1
    .param p1, "pkg"    # Ljava/lang/String;

    .prologue
    .line 316
    invoke-direct {p0, p1}, Lcom/miui/server/MiuiCompatModePackages;->isDefaultRestrict(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private getDeviceAspect()F
    .locals 7

    .prologue
    const/4 v4, 0x0

    .line 303
    iget v5, p0, Lcom/miui/server/MiuiCompatModePackages;->mDefaultAspect:F

    cmpg-float v5, v5, v4

    if-gtz v5, :cond_0

    .line 304
    iget-object v5, p0, Lcom/miui/server/MiuiCompatModePackages;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getDisplay()Landroid/view/Display;

    move-result-object v0

    .line 305
    .local v0, "display":Landroid/view/Display;
    new-instance v3, Landroid/graphics/Point;

    invoke-direct {v3}, Landroid/graphics/Point;-><init>()V

    .line 306
    .local v3, "point":Landroid/graphics/Point;
    invoke-virtual {v0, v3}, Landroid/view/Display;->getRealSize(Landroid/graphics/Point;)V

    .line 307
    iget v5, v3, Landroid/graphics/Point;->x:I

    iget v6, v3, Landroid/graphics/Point;->y:I

    invoke-static {v5, v6}, Ljava/lang/Math;->min(II)I

    move-result v2

    .line 308
    .local v2, "min":I
    iget v5, v3, Landroid/graphics/Point;->x:I

    iget v6, v3, Landroid/graphics/Point;->y:I

    invoke-static {v5, v6}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 309
    .local v1, "max":I
    if-nez v2, :cond_1

    .line 310
    .local v4, "ratio":F
    :goto_0
    iput v4, p0, Lcom/miui/server/MiuiCompatModePackages;->mDefaultAspect:F

    .line 312
    .end local v0    # "display":Landroid/view/Display;
    .end local v1    # "max":I
    .end local v2    # "min":I
    .end local v3    # "point":Landroid/graphics/Point;
    .end local v4    # "ratio":F
    :cond_0
    iget v5, p0, Lcom/miui/server/MiuiCompatModePackages;->mDefaultAspect:F

    return v5

    .line 309
    .restart local v0    # "display":Landroid/view/Display;
    .restart local v1    # "max":I
    .restart local v2    # "min":I
    .restart local v3    # "point":Landroid/graphics/Point;
    :cond_1
    int-to-float v5, v1

    const/high16 v6, 0x3f800000    # 1.0f

    mul-float/2addr v5, v6

    int-to-float v6, v2

    div-float v4, v5, v6

    goto :goto_0
.end method

.method private getPackageMode(Ljava/lang/String;)F
    .locals 3
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    .line 223
    const/4 v0, 0x0

    .line 224
    .local v0, "mode":Ljava/lang/Integer;
    iget-object v2, p0, Lcom/miui/server/MiuiCompatModePackages;->mLock:Ljava/lang/Object;

    monitor-enter v2

    .line 225
    :try_start_0
    iget-object v1, p0, Lcom/miui/server/MiuiCompatModePackages;->mPackages:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "mode":Ljava/lang/Integer;
    check-cast v0, Ljava/lang/Integer;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .local v0, "mode":Ljava/lang/Integer;
    monitor-exit v2

    .line 227
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    :goto_0
    int-to-float v1, v1

    return v1

    .line 224
    .end local v0    # "mode":Ljava/lang/Integer;
    :catchall_0
    move-exception v1

    monitor-exit v2

    throw v1

    .line 227
    .restart local v0    # "mode":Ljava/lang/Integer;
    :cond_0
    invoke-direct {p0, p1}, Lcom/miui/server/MiuiCompatModePackages;->getDefaultMode(Ljava/lang/String;)I

    move-result v1

    goto :goto_0
.end method

.method private gotoMaxAspectSettings()V
    .locals 4

    .prologue
    .line 506
    :try_start_0
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 507
    .local v1, "intent":Landroid/content/Intent;
    const-string/jumbo v2, "com.android.settings"

    const-string/jumbo v3, "com.android.settings.SubSettings"

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 508
    const-string/jumbo v2, ":settings:show_fragment"

    const-string/jumbo v3, "com.android.settings.MaxAspectRatioSettings"

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 509
    const/high16 v2, 0x10000000

    invoke-virtual {v1, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 511
    iget-object v2, p0, Lcom/miui/server/MiuiCompatModePackages;->mContext:Landroid/content/Context;

    sget-object v3, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    invoke-virtual {v2, v1, v3}, Landroid/content/Context;->startActivityAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 504
    .end local v1    # "intent":Landroid/content/Intent;
    :goto_0
    return-void

    .line 512
    :catch_0
    move-exception v0

    .line 513
    .local v0, "e":Ljava/lang/Exception;
    const-string/jumbo v2, "MiuiCompatModePackages"

    const-string/jumbo v3, "error when goto max aspect settings"

    invoke-static {v2, v3, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method private handleDontShowAgain()V
    .locals 2

    .prologue
    .line 499
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/miui/server/MiuiCompatModePackages;->mNotifySuggestApps:Z

    .line 500
    iget-object v0, p0, Lcom/miui/server/MiuiCompatModePackages;->mHandler:Lcom/miui/server/MiuiCompatModePackages$CompatHandler;

    const/16 v1, 0x67

    invoke-virtual {v0, v1}, Lcom/miui/server/MiuiCompatModePackages$CompatHandler;->sendEmptyMessage(I)Z

    .line 501
    iget-object v0, p0, Lcom/miui/server/MiuiCompatModePackages;->mHandler:Lcom/miui/server/MiuiCompatModePackages$CompatHandler;

    const/16 v1, 0x64

    invoke-virtual {v0, v1}, Lcom/miui/server/MiuiCompatModePackages$CompatHandler;->sendEmptyMessage(I)Z

    .line 498
    return-void
.end method

.method private handleOnAppLaunch(Ljava/lang/String;)V
    .locals 4
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    .line 452
    invoke-virtual {p0, p1}, Lcom/miui/server/MiuiCompatModePackages;->isRestrictAspect(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    invoke-virtual {p0, p1}, Lcom/miui/server/MiuiCompatModePackages;->getDefaultAspectType(Ljava/lang/String;)I

    move-result v1

    const/4 v2, 0x3

    if-ne v1, v2, :cond_1

    .line 454
    :try_start_0
    const-string/jumbo v1, "MiuiCompatModePackages"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "launching suggest app: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 455
    iget-object v1, p0, Lcom/miui/server/MiuiCompatModePackages;->mAlertDialog:Lmiui/app/AlertDialog;

    if-nez v1, :cond_0

    .line 456
    invoke-direct {p0}, Lcom/miui/server/MiuiCompatModePackages;->createDialog()V

    .line 459
    :cond_0
    iget-object v1, p0, Lcom/miui/server/MiuiCompatModePackages;->mAlertDialog:Lmiui/app/AlertDialog;

    invoke-virtual {v1}, Lmiui/app/AlertDialog;->show()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 451
    :cond_1
    :goto_0
    return-void

    .line 460
    :catch_0
    move-exception v0

    .line 461
    .local v0, "e":Ljava/lang/Exception;
    const-string/jumbo v1, "MiuiCompatModePackages"

    const-string/jumbo v2, "error showing suggest dialog"

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method private handleRegisterObservers()V
    .locals 3

    .prologue
    .line 417
    iget-boolean v1, p0, Lcom/miui/server/MiuiCompatModePackages;->mNotifySuggestApps:Z

    if-nez v1, :cond_0

    .line 418
    return-void

    .line 421
    :cond_0
    new-instance v1, Lcom/miui/server/MiuiCompatModePackages$2;

    invoke-direct {v1, p0}, Lcom/miui/server/MiuiCompatModePackages$2;-><init>(Lcom/miui/server/MiuiCompatModePackages;)V

    iput-object v1, p0, Lcom/miui/server/MiuiCompatModePackages;->mProcessObserver:Landroid/app/IMiuiProcessObserver;

    .line 430
    :try_start_0
    const-string/jumbo v1, "MiuiCompatModePackages"

    const-string/jumbo v2, "registering process observer..."

    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 431
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v1

    iget-object v2, p0, Lcom/miui/server/MiuiCompatModePackages;->mProcessObserver:Landroid/app/IMiuiProcessObserver;

    invoke-interface {v1, v2}, Landroid/app/IActivityManager;->registerProcessObserver(Landroid/app/IProcessObserver;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 416
    :goto_0
    return-void

    .line 432
    :catch_0
    move-exception v0

    .line 433
    .local v0, "e":Landroid/os/RemoteException;
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/miui/server/MiuiCompatModePackages;->mProcessObserver:Landroid/app/IMiuiProcessObserver;

    .line 434
    const-string/jumbo v1, "MiuiCompatModePackages"

    const-string/jumbo v2, "error when registering process observer"

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method private handleRemovePackage(Ljava/lang/String;)V
    .locals 0
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    .line 334
    invoke-direct {p0, p1}, Lcom/miui/server/MiuiCompatModePackages;->removePackage(Ljava/lang/String;)V

    .line 333
    return-void
.end method

.method private handleUnregisterObservers()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 439
    iget-object v1, p0, Lcom/miui/server/MiuiCompatModePackages;->mProcessObserver:Landroid/app/IMiuiProcessObserver;

    if-eqz v1, :cond_0

    .line 440
    const-string/jumbo v1, "MiuiCompatModePackages"

    const-string/jumbo v2, "unregistering process observer..."

    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 442
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v1

    iget-object v2, p0, Lcom/miui/server/MiuiCompatModePackages;->mProcessObserver:Landroid/app/IMiuiProcessObserver;

    invoke-interface {v1, v2}, Landroid/app/IActivityManager;->unregisterProcessObserver(Landroid/app/IProcessObserver;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 446
    :goto_0
    iput-object v3, p0, Lcom/miui/server/MiuiCompatModePackages;->mProcessObserver:Landroid/app/IMiuiProcessObserver;

    .line 438
    :cond_0
    return-void

    .line 443
    :catch_0
    move-exception v0

    .line 444
    .local v0, "e":Landroid/os/RemoteException;
    :try_start_1
    const-string/jumbo v1, "MiuiCompatModePackages"

    const-string/jumbo v2, "error when unregistering process observer"

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 445
    .end local v0    # "e":Landroid/os/RemoteException;
    :catchall_0
    move-exception v1

    .line 446
    iput-object v3, p0, Lcom/miui/server/MiuiCompatModePackages;->mProcessObserver:Landroid/app/IMiuiProcessObserver;

    .line 445
    throw v1
.end method

.method private handleUpdatePackage(Ljava/lang/String;)V
    .locals 5
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    .line 338
    iget-object v3, p0, Lcom/miui/server/MiuiCompatModePackages;->mLock:Ljava/lang/Object;

    monitor-enter v3

    .line 339
    :try_start_0
    iget-object v2, p0, Lcom/miui/server/MiuiCompatModePackages;->mDefaultType:Ljava/util/HashMap;

    invoke-virtual {v2, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v3

    .line 341
    invoke-direct {p0, p1}, Lcom/miui/server/MiuiCompatModePackages;->isDefaultRestrict(Ljava/lang/String;)Z

    move-result v0

    .line 342
    .local v0, "isDefaultRestrict":Z
    invoke-virtual {p0, p1}, Lcom/miui/server/MiuiCompatModePackages;->isRestrictAspect(Ljava/lang/String;)Z

    move-result v1

    .line 343
    .local v1, "isRestrict":Z
    if-eq v0, v1, :cond_0

    .line 344
    invoke-virtual {p0, p1}, Lcom/miui/server/MiuiCompatModePackages;->getDefaultAspectType(Ljava/lang/String;)I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_1

    .line 345
    :cond_0
    const-string/jumbo v2, "MiuiCompatModePackages"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "package "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " updated, removing config"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 346
    invoke-direct {p0, p1}, Lcom/miui/server/MiuiCompatModePackages;->removePackage(Ljava/lang/String;)V

    .line 337
    :cond_1
    return-void

    .line 338
    .end local v0    # "isDefaultRestrict":Z
    .end local v1    # "isRestrict":Z
    :catchall_0
    move-exception v2

    monitor-exit v3

    throw v2
.end method

.method private isDefaultRestrict(Ljava/lang/String;)Z
    .locals 3
    .param p1, "pkg"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x1

    .line 298
    invoke-virtual {p0, p1}, Lcom/miui/server/MiuiCompatModePackages;->getDefaultAspectType(Ljava/lang/String;)I

    move-result v0

    .line 299
    .local v0, "type":I
    const/4 v2, 0x4

    if-eq v0, v2, :cond_0

    const/4 v2, 0x5

    if-ne v0, v2, :cond_1

    :cond_0
    :goto_0
    return v1

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private readPackagesConfig()V
    .locals 14

    .prologue
    .line 139
    const/4 v4, 0x0

    .line 141
    .local v4, "fis":Ljava/io/FileInputStream;
    :try_start_0
    iget-object v12, p0, Lcom/miui/server/MiuiCompatModePackages;->mFile:Landroid/util/AtomicFile;

    invoke-virtual {v12}, Landroid/util/AtomicFile;->openRead()Ljava/io/FileInputStream;

    move-result-object v4

    .line 142
    .local v4, "fis":Ljava/io/FileInputStream;
    invoke-static {}, Landroid/util/Xml;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v8

    .line 143
    .local v8, "parser":Lorg/xmlpull/v1/XmlPullParser;
    sget-object v12, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v12}, Ljava/nio/charset/Charset;->name()Ljava/lang/String;

    move-result-object v12

    invoke-interface {v8, v4, v12}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/InputStream;Ljava/lang/String;)V

    .line 144
    invoke-interface {v8}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v3

    .line 145
    .local v3, "eventType":I
    :goto_0
    const/4 v12, 0x2

    if-eq v3, v12, :cond_0

    .line 146
    const/4 v12, 0x1

    if-eq v3, v12, :cond_0

    .line 147
    invoke-interface {v8}, Lorg/xmlpull/v1/XmlPullParser;->next()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-result v3

    goto :goto_0

    .line 149
    :cond_0
    const/4 v12, 0x1

    if-ne v3, v12, :cond_2

    .line 189
    if-eqz v4, :cond_1

    .line 191
    :try_start_1
    invoke-virtual {v4}, Ljava/io/FileInputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 150
    :cond_1
    :goto_1
    return-void

    .line 192
    :catch_0
    move-exception v2

    .local v2, "e1":Ljava/io/IOException;
    goto :goto_1

    .line 153
    .end local v2    # "e1":Ljava/io/IOException;
    :cond_2
    :try_start_2
    new-instance v10, Ljava/util/HashMap;

    invoke-direct {v10}, Ljava/util/HashMap;-><init>()V

    .line 154
    .local v10, "pkgs":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Integer;>;"
    invoke-interface {v8}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v11

    .line 155
    .local v11, "tagName":Ljava/lang/String;
    const-string/jumbo v12, "compat-packages"

    invoke-virtual {v12, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_6

    .line 156
    invoke-interface {v8}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v3

    .line 158
    :cond_3
    const/4 v12, 0x2

    if-ne v3, v12, :cond_5

    .line 159
    invoke-interface {v8}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v11

    .line 160
    invoke-interface {v8}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v12

    const/4 v13, 0x2

    if-ne v12, v13, :cond_5

    .line 161
    const-string/jumbo v12, "pkg"

    invoke-virtual {v12, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_8

    .line 162
    const-string/jumbo v12, "name"

    const/4 v13, 0x0

    invoke-interface {v8, v13, v12}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 163
    .local v9, "pkg":Ljava/lang/String;
    if-eqz v9, :cond_5

    .line 164
    const-string/jumbo v12, "mode"

    const/4 v13, 0x0

    invoke-interface {v8, v13, v12}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    move-result-object v5

    .line 165
    .local v5, "mode":Ljava/lang/String;
    const/4 v6, 0x0

    .line 166
    .local v6, "modeInt":I
    if-eqz v5, :cond_4

    .line 168
    :try_start_3
    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_3
    .catch Ljava/lang/NumberFormatException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    move-result v6

    .line 172
    :cond_4
    :goto_2
    :try_start_4
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    invoke-virtual {v10, v9, v12}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 180
    .end local v5    # "mode":Ljava/lang/String;
    .end local v6    # "modeInt":I
    .end local v9    # "pkg":Ljava/lang/String;
    :cond_5
    :goto_3
    invoke-interface {v8}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v3

    .line 181
    const/4 v12, 0x1

    if-ne v3, v12, :cond_3

    .line 183
    :cond_6
    iget-object v13, p0, Lcom/miui/server/MiuiCompatModePackages;->mLock:Ljava/lang/Object;

    monitor-enter v13
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 184
    :try_start_5
    iget-object v12, p0, Lcom/miui/server/MiuiCompatModePackages;->mPackages:Ljava/util/HashMap;

    invoke-virtual {v12, v10}, Ljava/util/HashMap;->putAll(Ljava/util/Map;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    :try_start_6
    monitor-exit v13
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_2
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .line 189
    if-eqz v4, :cond_7

    .line 191
    :try_start_7
    invoke-virtual {v4}, Ljava/io/FileInputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_4

    .line 138
    .end local v3    # "eventType":I
    .end local v4    # "fis":Ljava/io/FileInputStream;
    .end local v8    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .end local v10    # "pkgs":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Integer;>;"
    .end local v11    # "tagName":Ljava/lang/String;
    :cond_7
    :goto_4
    return-void

    .line 169
    .restart local v3    # "eventType":I
    .restart local v4    # "fis":Ljava/io/FileInputStream;
    .restart local v5    # "mode":Ljava/lang/String;
    .restart local v6    # "modeInt":I
    .restart local v8    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .restart local v9    # "pkg":Ljava/lang/String;
    .restart local v10    # "pkgs":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Integer;>;"
    .restart local v11    # "tagName":Ljava/lang/String;
    :catch_1
    move-exception v1

    .local v1, "e":Ljava/lang/NumberFormatException;
    goto :goto_2

    .line 174
    .end local v1    # "e":Ljava/lang/NumberFormatException;
    .end local v5    # "mode":Ljava/lang/String;
    .end local v6    # "modeInt":I
    .end local v9    # "pkg":Ljava/lang/String;
    :cond_8
    :try_start_8
    const-string/jumbo v12, "config"

    invoke-virtual {v12, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_5

    .line 175
    const-string/jumbo v12, "notifySuggestApps"

    const/4 v13, 0x0

    invoke-interface {v8, v13, v12}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 176
    .local v7, "notifySuggestApps":Ljava/lang/String;
    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v12

    iput-boolean v12, p0, Lcom/miui/server/MiuiCompatModePackages;->mNotifySuggestApps:Z
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_2
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    goto :goto_3

    .line 186
    .end local v3    # "eventType":I
    .end local v4    # "fis":Ljava/io/FileInputStream;
    .end local v7    # "notifySuggestApps":Ljava/lang/String;
    .end local v8    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .end local v10    # "pkgs":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Integer;>;"
    .end local v11    # "tagName":Ljava/lang/String;
    :catch_2
    move-exception v0

    .line 187
    .local v0, "e":Ljava/lang/Exception;
    :try_start_9
    const-string/jumbo v12, "MiuiCompatModePackages"

    const-string/jumbo v13, "Error reading compat-packages"

    invoke-static {v12, v13, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    .line 189
    if-eqz v4, :cond_7

    .line 191
    :try_start_a
    invoke-virtual {v4}, Ljava/io/FileInputStream;->close()V
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_3

    goto :goto_4

    .line 192
    :catch_3
    move-exception v2

    .restart local v2    # "e1":Ljava/io/IOException;
    goto :goto_4

    .line 183
    .end local v0    # "e":Ljava/lang/Exception;
    .end local v2    # "e1":Ljava/io/IOException;
    .restart local v3    # "eventType":I
    .restart local v4    # "fis":Ljava/io/FileInputStream;
    .restart local v8    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .restart local v10    # "pkgs":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Integer;>;"
    .restart local v11    # "tagName":Ljava/lang/String;
    :catchall_0
    move-exception v12

    :try_start_b
    monitor-exit v13

    throw v12
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_2
    .catchall {:try_start_b .. :try_end_b} :catchall_1

    .line 188
    .end local v3    # "eventType":I
    .end local v4    # "fis":Ljava/io/FileInputStream;
    .end local v8    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .end local v10    # "pkgs":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Integer;>;"
    .end local v11    # "tagName":Ljava/lang/String;
    :catchall_1
    move-exception v12

    .line 189
    if-eqz v4, :cond_9

    .line 191
    :try_start_c
    invoke-virtual {v4}, Ljava/io/FileInputStream;->close()V
    :try_end_c
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_c} :catch_5

    .line 188
    :cond_9
    :goto_5
    throw v12

    .line 192
    .restart local v3    # "eventType":I
    .restart local v4    # "fis":Ljava/io/FileInputStream;
    .restart local v8    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .restart local v10    # "pkgs":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Integer;>;"
    .restart local v11    # "tagName":Ljava/lang/String;
    :catch_4
    move-exception v2

    .restart local v2    # "e1":Ljava/io/IOException;
    goto :goto_4

    .end local v2    # "e1":Ljava/io/IOException;
    .end local v3    # "eventType":I
    .end local v4    # "fis":Ljava/io/FileInputStream;
    .end local v8    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .end local v10    # "pkgs":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Integer;>;"
    .end local v11    # "tagName":Ljava/lang/String;
    :catch_5
    move-exception v2

    .restart local v2    # "e1":Ljava/io/IOException;
    goto :goto_5
.end method

.method private readSuggestApps()V
    .locals 3

    .prologue
    .line 199
    iget-object v1, p0, Lcom/miui/server/MiuiCompatModePackages;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x1108000f

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    .line 200
    .local v0, "arr":[Ljava/lang/String;
    iget-object v1, p0, Lcom/miui/server/MiuiCompatModePackages;->mSuggestList:Ljava/util/HashSet;

    invoke-static {v1, v0}, Ljava/util/Collections;->addAll(Ljava/util/Collection;[Ljava/lang/Object;)Z

    .line 198
    return-void
.end method

.method private removePackage(Ljava/lang/String;)V
    .locals 3
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    .line 320
    const/4 v0, 0x0

    .line 321
    .local v0, "realRemove":Z
    iget-object v2, p0, Lcom/miui/server/MiuiCompatModePackages;->mLock:Ljava/lang/Object;

    monitor-enter v2

    .line 322
    :try_start_0
    iget-object v1, p0, Lcom/miui/server/MiuiCompatModePackages;->mDefaultType:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 323
    iget-object v1, p0, Lcom/miui/server/MiuiCompatModePackages;->mPackages:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 324
    iget-object v1, p0, Lcom/miui/server/MiuiCompatModePackages;->mPackages:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 325
    const/4 v0, 0x1

    :cond_0
    monitor-exit v2

    .line 328
    if-eqz v0, :cond_1

    .line 329
    invoke-direct {p0}, Lcom/miui/server/MiuiCompatModePackages;->scheduleWrite()V

    .line 319
    :cond_1
    return-void

    .line 321
    :catchall_0
    move-exception v1

    monitor-exit v2

    throw v1
.end method

.method private resolveDefaultAspectType(Ljava/lang/String;)I
    .locals 9
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 369
    iget-object v6, p0, Lcom/miui/server/MiuiCompatModePackages;->mRestrictList:Ljava/util/HashSet;

    invoke-virtual {v6, p1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 370
    const/4 v5, 0x4

    return v5

    .line 373
    :cond_0
    const/4 v0, 0x0

    .line 375
    .local v0, "ai":Landroid/content/pm/ApplicationInfo;
    :try_start_0
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v6

    const/16 v7, 0x80

    const/4 v8, 0x0

    invoke-interface {v6, p1, v7, v8}, Landroid/content/pm/IPackageManager;->getApplicationInfo(Ljava/lang/String;II)Landroid/content/pm/ApplicationInfo;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 378
    .end local v0    # "ai":Landroid/content/pm/ApplicationInfo;
    :goto_0
    if-nez v0, :cond_1

    .line 379
    return v5

    .line 381
    :cond_1
    iget-object v3, v0, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    .line 382
    .local v3, "metadata":Landroid/os/Bundle;
    const/4 v1, 0x0

    .line 383
    .local v1, "aspect":F
    if-eqz v3, :cond_2

    .line 384
    const-string/jumbo v6, "android.max_aspect"

    invoke-virtual {v3, v6}, Landroid/os/Bundle;->getFloat(Ljava/lang/String;)F

    move-result v1

    .line 386
    :cond_2
    invoke-direct {p0}, Lcom/miui/server/MiuiCompatModePackages;->getDeviceAspect()F

    move-result v6

    cmpl-float v6, v1, v6

    if-ltz v6, :cond_3

    .line 387
    return v4

    .line 389
    :cond_3
    iget v6, v0, Landroid/content/pm/ApplicationInfo;->privateFlags:I

    and-int/lit16 v6, v6, 0x800

    if-eqz v6, :cond_4

    .line 390
    .local v4, "resizeable":Z
    :goto_1
    if-eqz v4, :cond_5

    .line 391
    const/4 v5, 0x2

    return v5

    .end local v4    # "resizeable":Z
    :cond_4
    move v4, v5

    .line 389
    goto :goto_1

    .line 394
    .restart local v4    # "resizeable":Z
    :cond_5
    iget-object v5, p0, Lcom/miui/server/MiuiCompatModePackages;->mSuggestList:Ljava/util/HashSet;

    invoke-virtual {v5, p1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_6

    .line 395
    const/4 v5, 0x3

    return v5

    .line 397
    :cond_6
    const/4 v5, 0x5

    return v5

    .line 376
    .end local v1    # "aspect":F
    .end local v3    # "metadata":Landroid/os/Bundle;
    .end local v4    # "resizeable":Z
    .restart local v0    # "ai":Landroid/content/pm/ApplicationInfo;
    :catch_0
    move-exception v2

    .local v2, "e":Landroid/os/RemoteException;
    goto :goto_0
.end method

.method private scheduleWrite()V
    .locals 4

    .prologue
    const/16 v2, 0x64

    .line 231
    iget-object v1, p0, Lcom/miui/server/MiuiCompatModePackages;->mHandler:Lcom/miui/server/MiuiCompatModePackages$CompatHandler;

    invoke-virtual {v1, v2}, Lcom/miui/server/MiuiCompatModePackages$CompatHandler;->removeMessages(I)V

    .line 232
    iget-object v1, p0, Lcom/miui/server/MiuiCompatModePackages;->mHandler:Lcom/miui/server/MiuiCompatModePackages$CompatHandler;

    invoke-virtual {v1, v2}, Lcom/miui/server/MiuiCompatModePackages$CompatHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 233
    .local v0, "msg":Landroid/os/Message;
    iget-object v1, p0, Lcom/miui/server/MiuiCompatModePackages;->mHandler:Lcom/miui/server/MiuiCompatModePackages$CompatHandler;

    const-wide/16 v2, 0x2710

    invoke-virtual {v1, v0, v2, v3}, Lcom/miui/server/MiuiCompatModePackages$CompatHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 230
    return-void
.end method


# virtual methods
.method public getAspectRatio(Ljava/lang/String;)F
    .locals 1
    .param p1, "pkg"    # Ljava/lang/String;

    .prologue
    .line 351
    invoke-virtual {p0, p1}, Lcom/miui/server/MiuiCompatModePackages;->isRestrictAspect(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget v0, Lmiui/util/CustomizeUtil;->RESTRICT_ASPECT_RATIO:F

    :goto_0
    return v0

    :cond_0
    const/high16 v0, 0x40400000    # 3.0f

    goto :goto_0
.end method

.method public getDefaultAspectType(Ljava/lang/String;)I
    .locals 4
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    .line 355
    iget-object v2, p0, Lcom/miui/server/MiuiCompatModePackages;->mLock:Ljava/lang/Object;

    monitor-enter v2

    .line 356
    :try_start_0
    iget-object v1, p0, Lcom/miui/server/MiuiCompatModePackages;->mDefaultType:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 357
    iget-object v1, p0, Lcom/miui/server/MiuiCompatModePackages;->mDefaultType:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v1

    monitor-exit v2

    return v1

    :cond_0
    monitor-exit v2

    .line 361
    invoke-direct {p0, p1}, Lcom/miui/server/MiuiCompatModePackages;->resolveDefaultAspectType(Ljava/lang/String;)I

    move-result v0

    .line 362
    .local v0, "type":I
    iget-object v2, p0, Lcom/miui/server/MiuiCompatModePackages;->mLock:Ljava/lang/Object;

    monitor-enter v2

    .line 363
    :try_start_1
    iget-object v1, p0, Lcom/miui/server/MiuiCompatModePackages;->mDefaultType:Ljava/util/HashMap;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, p1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    monitor-exit v2

    .line 365
    return v0

    .line 355
    .end local v0    # "type":I
    :catchall_0
    move-exception v1

    monitor-exit v2

    throw v1

    .line 362
    .restart local v0    # "type":I
    :catchall_1
    move-exception v1

    monitor-exit v2

    throw v1
.end method

.method public isRestrictAspect(Ljava/lang/String;)Z
    .locals 2
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    .line 401
    invoke-direct {p0, p1}, Lcom/miui/server/MiuiCompatModePackages;->getPackageMode(Ljava/lang/String;)F

    move-result v0

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method saveCompatModes()V
    .locals 14

    .prologue
    const/4 v13, 0x1

    .line 237
    new-instance v8, Ljava/util/HashMap;

    invoke-direct {v8}, Ljava/util/HashMap;-><init>()V

    .line 238
    .local v8, "pkgs":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Integer;>;"
    iget-object v11, p0, Lcom/miui/server/MiuiCompatModePackages;->mLock:Ljava/lang/Object;

    monitor-enter v11

    .line 239
    :try_start_0
    iget-object v10, p0, Lcom/miui/server/MiuiCompatModePackages;->mPackages:Ljava/util/HashMap;

    invoke-virtual {v8, v10}, Ljava/util/HashMap;->putAll(Ljava/util/Map;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v11

    .line 242
    const/4 v3, 0x0

    .line 245
    .local v3, "fos":Ljava/io/FileOutputStream;
    :try_start_1
    iget-object v10, p0, Lcom/miui/server/MiuiCompatModePackages;->mFile:Landroid/util/AtomicFile;

    invoke-virtual {v10}, Landroid/util/AtomicFile;->startWrite()Ljava/io/FileOutputStream;

    move-result-object v3

    .line 246
    .local v3, "fos":Ljava/io/FileOutputStream;
    new-instance v6, Lcom/android/internal/util/FastXmlSerializer;

    invoke-direct {v6}, Lcom/android/internal/util/FastXmlSerializer;-><init>()V

    .line 247
    .local v6, "out":Lorg/xmlpull/v1/XmlSerializer;
    sget-object v10, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v10}, Ljava/nio/charset/Charset;->name()Ljava/lang/String;

    move-result-object v10

    invoke-interface {v6, v3, v10}, Lorg/xmlpull/v1/XmlSerializer;->setOutput(Ljava/io/OutputStream;Ljava/lang/String;)V

    .line 248
    const/4 v10, 0x1

    invoke-static {v10}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v10

    const/4 v11, 0x0

    invoke-interface {v6, v11, v10}, Lorg/xmlpull/v1/XmlSerializer;->startDocument(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 249
    const-string/jumbo v10, "http://xmlpull.org/v1/doc/features.html#indent-output"

    const/4 v11, 0x1

    invoke-interface {v6, v10, v11}, Lorg/xmlpull/v1/XmlSerializer;->setFeature(Ljava/lang/String;Z)V

    .line 250
    const-string/jumbo v10, "compat-packages"

    const/4 v11, 0x0

    invoke-interface {v6, v11, v10}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 253
    const-string/jumbo v10, "config"

    const/4 v11, 0x0

    invoke-interface {v6, v11, v10}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 254
    const-string/jumbo v10, "notifySuggestApps"

    iget-boolean v11, p0, Lcom/miui/server/MiuiCompatModePackages;->mNotifySuggestApps:Z

    invoke-static {v11}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v11

    const/4 v12, 0x0

    invoke-interface {v6, v12, v10, v11}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 255
    const-string/jumbo v10, "config"

    const/4 v11, 0x0

    invoke-interface {v6, v11, v10}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 257
    invoke-virtual {v8}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v10

    invoke-interface {v10}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .line 258
    .local v4, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Integer;>;>;"
    :cond_0
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_4

    .line 259
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 260
    .local v2, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Integer;>;"
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    .line 261
    .local v7, "pkg":Ljava/lang/String;
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/Integer;

    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    move-result v5

    .line 262
    .local v5, "mode":I
    if-lez v5, :cond_3

    const/4 v9, 0x1

    .line 263
    .local v9, "restrict":Z
    :goto_1
    invoke-direct {p0, v7}, Lcom/miui/server/MiuiCompatModePackages;->isDefaultRestrict(Ljava/lang/String;)Z

    move-result v10

    if-eq v9, v10, :cond_0

    .line 268
    invoke-virtual {p0, v7}, Lcom/miui/server/MiuiCompatModePackages;->getDefaultAspectType(Ljava/lang/String;)I

    move-result v10

    if-eq v10, v13, :cond_0

    .line 272
    const-string/jumbo v10, "pkg"

    const/4 v11, 0x0

    invoke-interface {v6, v11, v10}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 273
    const-string/jumbo v10, "name"

    const/4 v11, 0x0

    invoke-interface {v6, v11, v10, v7}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 274
    const-string/jumbo v10, "mode"

    invoke-static {v5}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v11

    const/4 v12, 0x0

    invoke-interface {v6, v12, v10, v11}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 275
    const-string/jumbo v10, "pkg"

    const/4 v11, 0x0

    invoke-interface {v6, v11, v10}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_0

    .line 282
    .end local v2    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Integer;>;"
    .end local v3    # "fos":Ljava/io/FileOutputStream;
    .end local v4    # "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Integer;>;>;"
    .end local v5    # "mode":I
    .end local v6    # "out":Lorg/xmlpull/v1/XmlSerializer;
    .end local v7    # "pkg":Ljava/lang/String;
    .end local v9    # "restrict":Z
    :catch_0
    move-exception v1

    .line 283
    .local v1, "e1":Ljava/lang/Exception;
    :try_start_2
    const-string/jumbo v10, "MiuiCompatModePackages"

    const-string/jumbo v11, "Error writing compat packages"

    invoke-static {v10, v11, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 284
    if-eqz v3, :cond_1

    .line 285
    iget-object v10, p0, Lcom/miui/server/MiuiCompatModePackages;->mFile:Landroid/util/AtomicFile;

    invoke-virtual {v10, v3}, Landroid/util/AtomicFile;->failWrite(Ljava/io/FileOutputStream;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 288
    :cond_1
    if-eqz v3, :cond_2

    .line 290
    :try_start_3
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2

    .line 236
    .end local v1    # "e1":Ljava/lang/Exception;
    :cond_2
    :goto_2
    return-void

    .line 238
    :catchall_0
    move-exception v10

    monitor-exit v11

    throw v10

    .line 262
    .restart local v2    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Integer;>;"
    .restart local v3    # "fos":Ljava/io/FileOutputStream;
    .restart local v4    # "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Integer;>;>;"
    .restart local v5    # "mode":I
    .restart local v6    # "out":Lorg/xmlpull/v1/XmlSerializer;
    .restart local v7    # "pkg":Ljava/lang/String;
    :cond_3
    const/4 v9, 0x0

    .restart local v9    # "restrict":Z
    goto :goto_1

    .line 278
    .end local v2    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Integer;>;"
    .end local v5    # "mode":I
    .end local v7    # "pkg":Ljava/lang/String;
    .end local v9    # "restrict":Z
    :cond_4
    :try_start_4
    const-string/jumbo v10, "compat-packages"

    const/4 v11, 0x0

    invoke-interface {v6, v11, v10}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 279
    invoke-interface {v6}, Lorg/xmlpull/v1/XmlSerializer;->endDocument()V

    .line 281
    iget-object v10, p0, Lcom/miui/server/MiuiCompatModePackages;->mFile:Landroid/util/AtomicFile;

    invoke-virtual {v10, v3}, Landroid/util/AtomicFile;->finishWrite(Ljava/io/FileOutputStream;)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 288
    if-eqz v3, :cond_2

    .line 290
    :try_start_5
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_1

    goto :goto_2

    .line 291
    :catch_1
    move-exception v0

    .local v0, "e1":Ljava/io/IOException;
    goto :goto_2

    .end local v0    # "e1":Ljava/io/IOException;
    .end local v3    # "fos":Ljava/io/FileOutputStream;
    .end local v4    # "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Integer;>;>;"
    .end local v6    # "out":Lorg/xmlpull/v1/XmlSerializer;
    .restart local v1    # "e1":Ljava/lang/Exception;
    :catch_2
    move-exception v0

    .restart local v0    # "e1":Ljava/io/IOException;
    goto :goto_2

    .line 287
    .end local v0    # "e1":Ljava/io/IOException;
    .end local v1    # "e1":Ljava/lang/Exception;
    :catchall_1
    move-exception v10

    .line 288
    if-eqz v3, :cond_5

    .line 290
    :try_start_6
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_3

    .line 287
    :cond_5
    :goto_3
    throw v10

    .line 291
    :catch_3
    move-exception v0

    .restart local v0    # "e1":Ljava/io/IOException;
    goto :goto_3
.end method

.method public setRestrictAspect(Ljava/lang/String;Z)V
    .locals 4
    .param p1, "pkg"    # Ljava/lang/String;
    .param p2, "restrict"    # Z

    .prologue
    .line 405
    invoke-virtual {p0, p1}, Lcom/miui/server/MiuiCompatModePackages;->isRestrictAspect(Ljava/lang/String;)Z

    move-result v0

    .line 407
    .local v0, "curRestrict":Z
    if-eq p2, v0, :cond_0

    .line 408
    iget-object v2, p0, Lcom/miui/server/MiuiCompatModePackages;->mLock:Ljava/lang/Object;

    monitor-enter v2

    .line 409
    :try_start_0
    iget-object v3, p0, Lcom/miui/server/MiuiCompatModePackages;->mPackages:Ljava/util/HashMap;

    if-eqz p2, :cond_1

    const/4 v1, 0x1

    :goto_0
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v3, p1, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v2

    .line 411
    invoke-direct {p0}, Lcom/miui/server/MiuiCompatModePackages;->scheduleWrite()V

    .line 412
    iget-object v1, p0, Lcom/miui/server/MiuiCompatModePackages;->mContext:Landroid/content/Context;

    const-string/jumbo v2, "activity"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/ActivityManager;

    invoke-virtual {v1, p1}, Landroid/app/ActivityManager;->forceStopPackage(Ljava/lang/String;)V

    .line 404
    :cond_0
    return-void

    .line 409
    :cond_1
    const/4 v1, 0x0

    goto :goto_0

    .line 408
    :catchall_0
    move-exception v1

    monitor-exit v2

    throw v1
.end method
