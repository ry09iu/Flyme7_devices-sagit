.class public Lmiui/securityspace/CrossUserPickerActivity;
.super Lmiui/app/Activity;
.source "CrossUserPickerActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmiui/securityspace/CrossUserPickerActivity$CrossUserContextWrapper;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "CrossUserPickerActivity"

.field public static final USER_ID_INVALID:I = -0x1


# instance fields
.field private volatile mCrossUserContentResolver:Landroid/content/ContentResolver;

.field private volatile mCrossUserContextWrapper:Landroid/content/ContextWrapper;

.field private final mLockObject:Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 17
    invoke-direct {p0}, Lmiui/app/Activity;-><init>()V

    .line 22
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lmiui/securityspace/CrossUserPickerActivity;->mLockObject:Ljava/lang/Object;

    .line 17
    return-void
.end method

.method private validateCallingPackage()Z
    .locals 2

    .prologue
    .line 116
    invoke-virtual {p0}, Lmiui/securityspace/CrossUserPickerActivity;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lmiui/securityspace/CrossUserPickerActivity;->getCallingPackage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 117
    invoke-virtual {p0}, Lmiui/securityspace/CrossUserPickerActivity;->getCallingPackage()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lmiui/securityspace/CrossUserUtils;->checkUidPermission(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    .line 116
    if-eqz v0, :cond_1

    .line 118
    :cond_0
    const/4 v0, 0x1

    return v0

    .line 120
    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method private validateCrossUser()I
    .locals 4

    .prologue
    const/4 v3, -0x1

    .line 103
    invoke-virtual {p0}, Lmiui/securityspace/CrossUserPickerActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    if-nez v1, :cond_0

    .line 104
    return v3

    .line 106
    :cond_0
    invoke-virtual {p0}, Lmiui/securityspace/CrossUserPickerActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string/jumbo v2, "android.intent.extra.picked_user_id"

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 108
    .local v0, "userId":I
    invoke-direct {p0}, Lmiui/securityspace/CrossUserPickerActivity;->validateCallingPackage()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 109
    return v0

    .line 111
    :cond_1
    return v3
.end method


# virtual methods
.method public getApplicationContext()Landroid/content/Context;
    .locals 5

    .prologue
    .line 45
    invoke-virtual {p0}, Lmiui/securityspace/CrossUserPickerActivity;->isCrossUserPick()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 46
    iget-object v0, p0, Lmiui/securityspace/CrossUserPickerActivity;->mCrossUserContextWrapper:Landroid/content/ContextWrapper;

    if-nez v0, :cond_1

    .line 47
    iget-object v1, p0, Lmiui/securityspace/CrossUserPickerActivity;->mLockObject:Ljava/lang/Object;

    monitor-enter v1

    .line 48
    :try_start_0
    iget-object v0, p0, Lmiui/securityspace/CrossUserPickerActivity;->mCrossUserContextWrapper:Landroid/content/ContextWrapper;

    if-nez v0, :cond_0

    .line 50
    new-instance v0, Lmiui/securityspace/CrossUserPickerActivity$CrossUserContextWrapper;

    invoke-super {p0}, Lmiui/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    new-instance v3, Landroid/os/UserHandle;

    invoke-direct {p0}, Lmiui/securityspace/CrossUserPickerActivity;->validateCrossUser()I

    move-result v4

    invoke-direct {v3, v4}, Landroid/os/UserHandle;-><init>(I)V

    invoke-direct {v0, p0, v2, v3}, Lmiui/securityspace/CrossUserPickerActivity$CrossUserContextWrapper;-><init>(Lmiui/securityspace/CrossUserPickerActivity;Landroid/content/Context;Landroid/os/UserHandle;)V

    .line 49
    iput-object v0, p0, Lmiui/securityspace/CrossUserPickerActivity;->mCrossUserContextWrapper:Landroid/content/ContextWrapper;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit v1

    .line 54
    :cond_1
    const-string/jumbo v0, "CrossUserPickerActivity"

    const-string/jumbo v1, "getApplicationContext: WrapperedApplication"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 55
    iget-object v0, p0, Lmiui/securityspace/CrossUserPickerActivity;->mCrossUserContextWrapper:Landroid/content/ContextWrapper;

    return-object v0

    .line 47
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0

    .line 57
    :cond_2
    const-string/jumbo v0, "CrossUserPickerActivity"

    const-string/jumbo v1, "getApplicationContext: NormalApplication"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 58
    invoke-super {p0}, Lmiui/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    return-object v0
.end method

.method public getContentResolver()Landroid/content/ContentResolver;
    .locals 3

    .prologue
    .line 27
    invoke-virtual {p0}, Lmiui/securityspace/CrossUserPickerActivity;->isCrossUserPick()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 28
    iget-object v0, p0, Lmiui/securityspace/CrossUserPickerActivity;->mCrossUserContentResolver:Landroid/content/ContentResolver;

    if-nez v0, :cond_1

    .line 29
    iget-object v1, p0, Lmiui/securityspace/CrossUserPickerActivity;->mLockObject:Ljava/lang/Object;

    monitor-enter v1

    .line 30
    :try_start_0
    iget-object v0, p0, Lmiui/securityspace/CrossUserPickerActivity;->mCrossUserContentResolver:Landroid/content/ContentResolver;

    if-nez v0, :cond_0

    .line 32
    new-instance v0, Landroid/os/UserHandle;

    invoke-direct {p0}, Lmiui/securityspace/CrossUserPickerActivity;->validateCrossUser()I

    move-result v2

    invoke-direct {v0, v2}, Landroid/os/UserHandle;-><init>(I)V

    invoke-virtual {p0, v0}, Lmiui/securityspace/CrossUserPickerActivity;->getContentResolverForUser(Landroid/os/UserHandle;)Landroid/content/ContentResolver;

    move-result-object v0

    .line 31
    iput-object v0, p0, Lmiui/securityspace/CrossUserPickerActivity;->mCrossUserContentResolver:Landroid/content/ContentResolver;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit v1

    .line 36
    :cond_1
    const-string/jumbo v0, "CrossUserPickerActivity"

    const-string/jumbo v1, "getContentResolver: CrossUserContentResolver"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 37
    iget-object v0, p0, Lmiui/securityspace/CrossUserPickerActivity;->mCrossUserContentResolver:Landroid/content/ContentResolver;

    return-object v0

    .line 29
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0

    .line 39
    :cond_2
    const-string/jumbo v0, "CrossUserPickerActivity"

    const-string/jumbo v1, "getContentResolver: NormalContentResolver"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 40
    invoke-super {p0}, Lmiui/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    return-object v0
.end method

.method public isCrossUserPick()Z
    .locals 2

    .prologue
    .line 124
    invoke-direct {p0}, Lmiui/securityspace/CrossUserPickerActivity;->validateCrossUser()I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public startActivity(Landroid/content/Intent;)V
    .locals 2
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 63
    invoke-virtual {p0}, Lmiui/securityspace/CrossUserPickerActivity;->isCrossUserPick()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 64
    const-string/jumbo v0, "android.intent.extra.picked_user_id"

    invoke-direct {p0}, Lmiui/securityspace/CrossUserPickerActivity;->validateCrossUser()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 66
    :cond_0
    invoke-super {p0, p1}, Lmiui/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 62
    return-void
.end method

.method public startActivity(Landroid/content/Intent;Landroid/os/Bundle;)V
    .locals 2
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "options"    # Landroid/os/Bundle;

    .prologue
    .line 71
    invoke-virtual {p0}, Lmiui/securityspace/CrossUserPickerActivity;->isCrossUserPick()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 72
    const-string/jumbo v0, "android.intent.extra.picked_user_id"

    invoke-direct {p0}, Lmiui/securityspace/CrossUserPickerActivity;->validateCrossUser()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 74
    :cond_0
    invoke-super {p0, p1, p2}, Lmiui/app/Activity;->startActivity(Landroid/content/Intent;Landroid/os/Bundle;)V

    .line 70
    return-void
.end method

.method public startActivityForResult(Landroid/content/Intent;I)V
    .locals 2
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "requestCode"    # I

    .prologue
    .line 79
    invoke-virtual {p0}, Lmiui/securityspace/CrossUserPickerActivity;->isCrossUserPick()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 80
    const-string/jumbo v0, "android.intent.extra.picked_user_id"

    invoke-direct {p0}, Lmiui/securityspace/CrossUserPickerActivity;->validateCrossUser()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 82
    :cond_0
    invoke-super {p0, p1, p2}, Lmiui/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 78
    return-void
.end method

.method public startActivityForResult(Landroid/content/Intent;ILandroid/os/Bundle;)V
    .locals 2
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "requestCode"    # I
    .param p3, "options"    # Landroid/os/Bundle;

    .prologue
    .line 87
    invoke-virtual {p0}, Lmiui/securityspace/CrossUserPickerActivity;->isCrossUserPick()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 88
    const-string/jumbo v0, "android.intent.extra.picked_user_id"

    invoke-direct {p0}, Lmiui/securityspace/CrossUserPickerActivity;->validateCrossUser()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 90
    :cond_0
    invoke-super {p0, p1, p2, p3}, Lmiui/app/Activity;->startActivityForResult(Landroid/content/Intent;ILandroid/os/Bundle;)V

    .line 86
    return-void
.end method

.method public startActivityFromFragment(Landroid/app/Fragment;Landroid/content/Intent;ILandroid/os/Bundle;)V
    .locals 2
    .param p1, "fragment"    # Landroid/app/Fragment;
    .param p2, "intent"    # Landroid/content/Intent;
    .param p3, "requestCode"    # I
    .param p4, "options"    # Landroid/os/Bundle;

    .prologue
    .line 96
    invoke-virtual {p0}, Lmiui/securityspace/CrossUserPickerActivity;->isCrossUserPick()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 97
    const-string/jumbo v0, "android.intent.extra.picked_user_id"

    invoke-direct {p0}, Lmiui/securityspace/CrossUserPickerActivity;->validateCrossUser()I

    move-result v1

    invoke-virtual {p2, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 99
    :cond_0
    invoke-super {p0, p1, p2, p3, p4}, Lmiui/app/Activity;->startActivityFromFragment(Landroid/app/Fragment;Landroid/content/Intent;ILandroid/os/Bundle;)V

    .line 95
    return-void
.end method
