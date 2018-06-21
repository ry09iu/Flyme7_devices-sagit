.class Landroid/os/UserManagerInjector;
.super Ljava/lang/Object;
.source "UserManagerInjector.java"


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static isUserInfoCounts(Landroid/content/pm/UserInfo;)Z
    .locals 3
    .param p0, "user"    # Landroid/content/pm/UserInfo;

    .prologue
    const/4 v0, 0x0

    .line 10
    invoke-virtual {p0}, Landroid/content/pm/UserInfo;->isGuest()Z

    move-result v1

    if-nez v1, :cond_0

    iget v1, p0, Landroid/content/pm/UserInfo;->id:I

    const/16 v2, 0x63

    if-eq v1, v2, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method
