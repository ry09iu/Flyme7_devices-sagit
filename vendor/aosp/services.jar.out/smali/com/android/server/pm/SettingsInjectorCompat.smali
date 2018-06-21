.class public Lcom/android/server/pm/SettingsInjectorCompat;
.super Ljava/lang/Object;
.source "SettingsInjectorCompat.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static needUninstallGraphiteApp(I)Z
    .locals 4
    .param p0, "userHandle"    # I

    .prologue
    const/4 v2, 0x1

    .line 8
    invoke-static {}, Lcom/android/server/pm/UserManagerService;->getInstance()Lcom/android/server/pm/UserManagerService;

    move-result-object v1

    .line 9
    .local v1, "userManager":Lcom/android/server/pm/UserManagerService;
    invoke-virtual {v1, p0}, Lcom/android/server/pm/UserManagerService;->getUserInfoPartial(I)Landroid/content/pm/UserInfo;

    move-result-object v0

    .line 10
    .local v0, "userInfo":Landroid/content/pm/UserInfo;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/content/pm/UserInfo;->isSpace()Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v2, 0x0

    :cond_0
    return v2
.end method
