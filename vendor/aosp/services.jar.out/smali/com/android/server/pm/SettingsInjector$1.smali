.class final Lcom/android/server/pm/SettingsInjector$1;
.super Ljava/lang/Object;
.source "SettingsInjector.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/pm/SettingsInjector;->noftifyFirstLaunch(Lcom/android/server/pm/PackageManagerService;Lcom/android/server/pm/PackageSetting;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$pkgSetting:Lcom/android/server/pm/PackageSetting;

.field final synthetic val$userId:I


# direct methods
.method constructor <init>(Lcom/android/server/pm/PackageSetting;I)V
    .locals 0
    .param p1, "val$pkgSetting"    # Lcom/android/server/pm/PackageSetting;
    .param p2, "val$userId"    # I

    .prologue
    .line 96
    iput-object p1, p0, Lcom/android/server/pm/SettingsInjector$1;->val$pkgSetting:Lcom/android/server/pm/PackageSetting;

    iput p2, p0, Lcom/android/server/pm/SettingsInjector$1;->val$userId:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 100
    :try_start_0
    invoke-static {}, Lcom/android/server/pm/SettingsInjector;->-get0()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "notify first launch"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 101
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v2, "miui.intent.action.PACKAGE_FIRST_LAUNCH"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 102
    .local v0, "intent":Landroid/content/Intent;
    const-string/jumbo v2, "package"

    iget-object v3, p0, Lcom/android/server/pm/SettingsInjector$1;->val$pkgSetting:Lcom/android/server/pm/PackageSetting;

    iget-object v3, v3, Lcom/android/server/pm/PackageSetting;->name:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 103
    iget-object v2, p0, Lcom/android/server/pm/SettingsInjector$1;->val$pkgSetting:Lcom/android/server/pm/PackageSetting;

    iget-object v2, v2, Lcom/android/server/pm/PackageSetting;->installerPackageName:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 104
    const-string/jumbo v2, "installer"

    iget-object v3, p0, Lcom/android/server/pm/SettingsInjector$1;->val$pkgSetting:Lcom/android/server/pm/PackageSetting;

    iget-object v3, v3, Lcom/android/server/pm/PackageSetting;->installerPackageName:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 106
    :cond_0
    const-string/jumbo v2, "userId"

    iget v3, p0, Lcom/android/server/pm/SettingsInjector$1;->val$userId:I

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 107
    const-string/jumbo v2, "miui.permission.USE_INTERNAL_GENERAL_API"

    invoke-static {v0, v2}, Lcom/android/server/pm/IActivityManagerCompat;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 98
    .end local v0    # "intent":Landroid/content/Intent;
    :goto_0
    return-void

    .line 108
    :catch_0
    move-exception v1

    .line 109
    .local v1, "t":Ljava/lang/Throwable;
    invoke-static {}, Lcom/android/server/pm/SettingsInjector;->-get0()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "notify first launch exception"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method
