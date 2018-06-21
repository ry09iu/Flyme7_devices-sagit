.class public Lcom/android/server/AppOpsServiceState;
.super Ljava/lang/Object;
.source "AppOpsServiceState.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/AppOpsServiceState$Callback;,
        Lcom/android/server/AppOpsServiceState$UserState;
    }
.end annotation


# static fields
.field public static final DEBUG:Z = false

.field private static final POWER_SAVE_MODE_OPEN:Ljava/lang/String; = "POWER_SAVE_MODE_OPEN"

.field private static final TAG:Ljava/lang/String; = "AppOpsServiceState"

.field private static sCtsIgnore:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mContext:Landroid/content/Context;

.field private mDefaultMode:I

.field private mGreaterThanL:Z

.field private mIPackageManager:Landroid/content/pm/IPackageManager;

.field private mPowerSaving:Z

.field private mSecurityManager:Lmiui/security/SecurityManager;

.field final mUidStates:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Lcom/android/server/AppOpsServiceState$UserState;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static synthetic -get0(Lcom/android/server/AppOpsServiceState;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/android/server/AppOpsServiceState;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic -wrap0(Lcom/android/server/AppOpsServiceState;I)V
    .locals 0
    .param p1, "userId"    # I

    .prologue
    invoke-direct {p0, p1}, Lcom/android/server/AppOpsServiceState;->startService(I)V

    return-void
.end method

.method static synthetic -wrap1(Lcom/android/server/AppOpsServiceState;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/server/AppOpsServiceState;->updatePowerState()V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 43
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    sput-object v0, Lcom/android/server/AppOpsServiceState;->sCtsIgnore:Ljava/util/HashSet;

    .line 65
    sget-object v0, Lcom/android/server/AppOpsServiceState;->sCtsIgnore:Ljava/util/HashSet;

    const-string/jumbo v1, "android.app.usage.cts"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 66
    sget-object v0, Lcom/android/server/AppOpsServiceState;->sCtsIgnore:Ljava/util/HashSet;

    const-string/jumbo v1, "com.android.cts.usepermission"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 67
    sget-object v0, Lcom/android/server/AppOpsServiceState;->sCtsIgnore:Ljava/util/HashSet;

    const-string/jumbo v1, "com.android.cts.permission"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 68
    sget-object v0, Lcom/android/server/AppOpsServiceState;->sCtsIgnore:Ljava/util/HashSet;

    const-string/jumbo v1, "com.android.cts.netlegacy22.permission"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 69
    sget-object v0, Lcom/android/server/AppOpsServiceState;->sCtsIgnore:Ljava/util/HashSet;

    const-string/jumbo v1, "android.netlegacy22.permission.cts"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 70
    sget-object v0, Lcom/android/server/AppOpsServiceState;->sCtsIgnore:Ljava/util/HashSet;

    const-string/jumbo v1, "android.provider.cts"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 71
    sget-object v0, Lcom/android/server/AppOpsServiceState;->sCtsIgnore:Ljava/util/HashSet;

    const-string/jumbo v1, "android.telephony2.cts"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 72
    sget-object v0, Lcom/android/server/AppOpsServiceState;->sCtsIgnore:Ljava/util/HashSet;

    const-string/jumbo v1, "android.permission.cts"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 73
    sget-object v0, Lcom/android/server/AppOpsServiceState;->sCtsIgnore:Ljava/util/HashSet;

    const-string/jumbo v1, "com.android.cts.writeexternalstorageapp"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 74
    sget-object v0, Lcom/android/server/AppOpsServiceState;->sCtsIgnore:Ljava/util/HashSet;

    const-string/jumbo v1, "com.android.cts.readexternalstorageapp"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 75
    sget-object v0, Lcom/android/server/AppOpsServiceState;->sCtsIgnore:Ljava/util/HashSet;

    const-string/jumbo v1, "com.android.cts.externalstorageapp"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 32
    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v0, 0x1

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 49
    iput v0, p0, Lcom/android/server/AppOpsServiceState;->mDefaultMode:I

    .line 50
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x16

    if-le v1, v2, :cond_0

    :goto_0
    iput-boolean v0, p0, Lcom/android/server/AppOpsServiceState;->mGreaterThanL:Z

    .line 52
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/AppOpsServiceState;->mUidStates:Landroid/util/SparseArray;

    .line 32
    return-void

    .line 50
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private declared-synchronized getUidState(IZ)Lcom/android/server/AppOpsServiceState$UserState;
    .locals 3
    .param p1, "userHandle"    # I
    .param p2, "edit"    # Z

    .prologue
    const/4 v2, 0x0

    monitor-enter p0

    .line 86
    :try_start_0
    iget-object v1, p0, Lcom/android/server/AppOpsServiceState;->mUidStates:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/AppOpsServiceState$UserState;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 87
    .local v0, "userState":Lcom/android/server/AppOpsServiceState$UserState;
    if-nez v0, :cond_1

    .line 88
    if-nez p2, :cond_0

    monitor-exit p0

    .line 89
    return-object v2

    .line 91
    :cond_0
    :try_start_1
    new-instance v0, Lcom/android/server/AppOpsServiceState$UserState;

    .end local v0    # "userState":Lcom/android/server/AppOpsServiceState$UserState;
    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/server/AppOpsServiceState$UserState;-><init>(Lcom/android/server/AppOpsServiceState$UserState;)V

    .line 92
    .restart local v0    # "userState":Lcom/android/server/AppOpsServiceState$UserState;
    iget-object v1, p0, Lcom/android/server/AppOpsServiceState;->mUidStates:Landroid/util/SparseArray;

    invoke-virtual {v1, p1, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_1
    monitor-exit p0

    .line 94
    return-object v0

    .end local v0    # "userState":Lcom/android/server/AppOpsServiceState$UserState;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method private inMiuiAllowedBlackList(I)Z
    .locals 2
    .param p1, "code"    # I

    .prologue
    .line 148
    const/4 v0, 0x0

    .line 149
    .local v0, "inList":Z
    sparse-switch p1, :sswitch_data_0

    .line 156
    :goto_0
    iget-boolean v1, p0, Lcom/android/server/AppOpsServiceState;->mGreaterThanL:Z

    if-eqz v1, :cond_0

    const/16 v1, 0x3e

    if-le p1, v1, :cond_0

    const/16 v1, 0x3e8

    if-ge p1, v1, :cond_0

    .line 157
    const/4 v0, 0x1

    .line 159
    :cond_0
    return v0

    .line 153
    :sswitch_0
    const/4 v0, 0x1

    .line 154
    goto :goto_0

    .line 149
    :sswitch_data_0
    .sparse-switch
        0x3 -> :sswitch_0
        0xb -> :sswitch_0
        0x1c -> :sswitch_0
    .end sparse-switch
.end method

.method private isSystemApp(IILjava/lang/String;)Z
    .locals 9
    .param p1, "code"    # I
    .param p2, "uid"    # I
    .param p3, "packageName"    # Ljava/lang/String;

    .prologue
    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 163
    invoke-static {p2}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v4

    const/16 v5, 0x2710

    if-ge v4, v5, :cond_0

    .line 164
    return v8

    .line 166
    :cond_0
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .line 168
    .local v2, "identity":J
    :try_start_0
    iget-object v4, p0, Lcom/android/server/AppOpsServiceState;->mIPackageManager:Landroid/content/pm/IPackageManager;

    if-nez v4, :cond_1

    .line 169
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v4

    iput-object v4, p0, Lcom/android/server/AppOpsServiceState;->mIPackageManager:Landroid/content/pm/IPackageManager;

    .line 171
    :cond_1
    iget-object v4, p0, Lcom/android/server/AppOpsServiceState;->mIPackageManager:Landroid/content/pm/IPackageManager;

    invoke-static {p2}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v5

    const/4 v6, 0x0

    invoke-interface {v4, p3, v6, v5}, Landroid/content/pm/IPackageManager;->getApplicationInfo(Ljava/lang/String;II)Landroid/content/pm/ApplicationInfo;

    move-result-object v1

    .line 172
    .local v1, "info":Landroid/content/pm/ApplicationInfo;
    if-eqz v1, :cond_2

    iget v4, v1, Landroid/content/pm/ApplicationInfo;->flags:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    and-int/lit8 v4, v4, 0x1

    if-eqz v4, :cond_2

    .line 178
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 173
    return v8

    .line 178
    :cond_2
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 180
    .end local v1    # "info":Landroid/content/pm/ApplicationInfo;
    :goto_0
    return v7

    .line 175
    :catch_0
    move-exception v0

    .line 178
    .local v0, "e":Ljava/lang/Exception;
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_0

    .line 177
    .end local v0    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v4

    .line 178
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 177
    throw v4
.end method

.method private startService(I)V
    .locals 4
    .param p1, "userId"    # I

    .prologue
    .line 278
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v1, Lcom/android/server/AppOpsServiceState$2;

    invoke-direct {v1, p0, p1}, Lcom/android/server/AppOpsServiceState$2;-><init>(Lcom/android/server/AppOpsServiceState;I)V

    .line 291
    const-wide/16 v2, 0x514

    .line 278
    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 277
    return-void
.end method

.method private updatePowerState()V
    .locals 4

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 115
    iget-object v2, p0, Lcom/android/server/AppOpsServiceState;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string/jumbo v3, "POWER_SAVE_MODE_OPEN"

    invoke-static {v2, v3, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-ne v2, v0, :cond_0

    :goto_0
    iput-boolean v0, p0, Lcom/android/server/AppOpsServiceState;->mPowerSaving:Z

    .line 114
    return-void

    :cond_0
    move v0, v1

    .line 115
    goto :goto_0
.end method


# virtual methods
.method public allowedToMode(IILjava/lang/String;)I
    .locals 4
    .param p1, "code"    # I
    .param p2, "uid"    # I
    .param p3, "packageName"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x0

    .line 132
    iget-boolean v0, p0, Lcom/android/server/AppOpsServiceState;->mPowerSaving:Z

    .line 133
    .local v0, "checkAutoStart":Z
    if-nez v0, :cond_0

    .line 134
    invoke-static {p2}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v1

    .line 135
    .local v1, "userId":I
    if-eqz v1, :cond_0

    const/16 v2, 0x3e7

    if-eq v1, v2, :cond_0

    .line 136
    const/4 v0, 0x1

    .line 139
    .end local v0    # "checkAutoStart":Z
    .end local v1    # "userId":I
    :cond_0
    if-eqz v0, :cond_1

    const/16 v2, 0x2718

    if-ne p1, v2, :cond_1

    .line 140
    invoke-static {p3}, Landroid/app/AppOpsManagerInjector;->isAutoStartRestriction(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 141
    const/4 v2, 0x1

    return v2

    .line 144
    :cond_1
    return v3
.end method

.method public askOperationLocked(IILjava/lang/String;)I
    .locals 6
    .param p1, "code"    # I
    .param p2, "uid"    # I
    .param p3, "packageName"    # Ljava/lang/String;

    .prologue
    .line 195
    iget v1, p0, Lcom/android/server/AppOpsServiceState;->mDefaultMode:I

    .line 196
    .local v1, "result":I
    invoke-static {p2}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v3

    .line 197
    .local v3, "userId":I
    const/16 v4, 0x3e7

    if-ne v3, v4, :cond_0

    .line 198
    const/4 v3, 0x0

    .line 199
    invoke-static {p2}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v4

    invoke-static {v3, v4}, Landroid/os/UserHandle;->getUid(II)I

    move-result p2

    .line 201
    :cond_0
    invoke-static {p2}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v4

    const/4 v5, 0x0

    invoke-direct {p0, v4, v5}, Lcom/android/server/AppOpsServiceState;->getUidState(IZ)Lcom/android/server/AppOpsServiceState$UserState;

    move-result-object v2

    .line 202
    .local v2, "uidState":Lcom/android/server/AppOpsServiceState$UserState;
    if-eqz v2, :cond_1

    iget-object v4, v2, Lcom/android/server/AppOpsServiceState$UserState;->mCallbackBinder:Lcom/android/internal/app/IOpsCallback;

    if-eqz v4, :cond_1

    .line 204
    :try_start_0
    iget-object v4, v2, Lcom/android/server/AppOpsServiceState$UserState;->mCallbackBinder:Lcom/android/internal/app/IOpsCallback;

    invoke-interface {v4, p2, p3, p1}, Lcom/android/internal/app/IOpsCallback;->askOperation(ILjava/lang/String;I)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 208
    :cond_1
    :goto_0
    return v1

    .line 205
    :catch_0
    move-exception v0

    .local v0, "e":Landroid/os/RemoteException;
    goto :goto_0
.end method

.method public getSuggestMode(IILjava/lang/String;)I
    .locals 1
    .param p1, "code"    # I
    .param p2, "uid"    # I
    .param p3, "packageName"    # Ljava/lang/String;

    .prologue
    .line 212
    const/4 v0, -0x1

    return v0
.end method

.method public init(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v1, 0x0

    .line 79
    iput-object p1, p0, Lcom/android/server/AppOpsServiceState;->mContext:Landroid/content/Context;

    .line 80
    const-string/jumbo v0, "is_pad"

    invoke-static {v0, v1}, Lmiui/util/FeatureParser;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 81
    iput v1, p0, Lcom/android/server/AppOpsServiceState;->mDefaultMode:I

    .line 78
    :cond_0
    return-void
.end method

.method public isAppPermissionControlOpen(II)Z
    .locals 3
    .param p1, "op"    # I
    .param p2, "uid"    # I

    .prologue
    .line 184
    sget-object v1, Lcom/android/server/AppOpsService;->sOpInControl:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_0

    const/16 v1, 0x2718

    if-ne p1, v1, :cond_1

    .line 185
    :cond_0
    const/4 v1, 0x1

    return v1

    .line 187
    :cond_1
    const/4 v0, 0x1

    .line 188
    .local v0, "result":Z
    iget-object v1, p0, Lcom/android/server/AppOpsServiceState;->mSecurityManager:Lmiui/security/SecurityManager;

    if-eqz v1, :cond_2

    .line 189
    iget-object v1, p0, Lcom/android/server/AppOpsServiceState;->mSecurityManager:Lmiui/security/SecurityManager;

    invoke-static {p2}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v2

    invoke-virtual {v1, v2}, Lmiui/security/SecurityManager;->getAppPermissionControlOpen(I)Z

    move-result v0

    .line 191
    .end local v0    # "result":Z
    :cond_2
    return v0
.end method

.method public isCtsIgnore(Ljava/lang/String;)Z
    .locals 1
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    .line 274
    sget-object v0, Lcom/android/server/AppOpsServiceState;->sCtsIgnore:Ljava/util/HashSet;

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public isMiuiAllowed(IILjava/lang/String;)Z
    .locals 2
    .param p1, "code"    # I
    .param p2, "uid"    # I
    .param p3, "packageName"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x0

    .line 122
    invoke-direct {p0, p1}, Lcom/android/server/AppOpsServiceState;->inMiuiAllowedBlackList(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 123
    return v1

    .line 125
    :cond_0
    const/16 v0, 0x2718

    if-ne p1, v0, :cond_1

    invoke-static {p3}, Landroid/app/AppOpsManagerInjector;->isAutoStartRestriction(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 126
    return v1

    .line 128
    :cond_1
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/AppOpsServiceState;->isSystemApp(IILjava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public onAppApplyOperation(ILjava/lang/String;IIZ)V
    .locals 9
    .param p1, "uid"    # I
    .param p2, "packageName"    # Ljava/lang/String;
    .param p3, "op"    # I
    .param p4, "mode"    # I
    .param p5, "isStartOperation"    # Z

    .prologue
    const/4 v1, 0x0

    .line 216
    if-nez p4, :cond_0

    .line 217
    sparse-switch p3, :sswitch_data_0

    .line 231
    return-void

    .line 235
    :cond_0
    :sswitch_0
    invoke-static {p1}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v8

    .line 236
    .local v8, "userId":I
    const/16 v0, 0x3e7

    if-ne v8, v0, :cond_1

    .line 237
    const/4 v8, 0x0

    .line 238
    invoke-static {p1}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v0

    invoke-static {v8, v0}, Landroid/os/UserHandle;->getUid(II)I

    move-result p1

    .line 240
    :cond_1
    invoke-static {p1}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v0

    invoke-direct {p0, v0, v1}, Lcom/android/server/AppOpsServiceState;->getUidState(IZ)Lcom/android/server/AppOpsServiceState$UserState;

    move-result-object v7

    .line 241
    .local v7, "uidState":Lcom/android/server/AppOpsServiceState$UserState;
    if-eqz v7, :cond_2

    iget-object v0, v7, Lcom/android/server/AppOpsServiceState$UserState;->mCallbackBinder:Lcom/android/internal/app/IOpsCallback;

    if-eqz v0, :cond_2

    .line 243
    :try_start_0
    iget-object v0, v7, Lcom/android/server/AppOpsServiceState$UserState;->mCallbackBinder:Lcom/android/internal/app/IOpsCallback;

    move v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    invoke-interface/range {v0 .. v5}, Lcom/android/internal/app/IOpsCallback;->onAppApplyOperation(ILjava/lang/String;IIZ)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 215
    :cond_2
    :goto_0
    return-void

    .line 244
    :catch_0
    move-exception v6

    .local v6, "e":Landroid/os/RemoteException;
    goto :goto_0

    .line 217
    nop

    :sswitch_data_0
    .sparse-switch
        0x4 -> :sswitch_0
        0x5 -> :sswitch_0
        0x6 -> :sswitch_0
        0x7 -> :sswitch_0
        0xd -> :sswitch_0
        0xe -> :sswitch_0
        0xf -> :sswitch_0
        0x14 -> :sswitch_0
        0x271a -> :sswitch_0
        0x271c -> :sswitch_0
        0x271d -> :sswitch_0
    .end sparse-switch
.end method

.method public registerCallback(Lcom/android/internal/app/IOpsCallback;)I
    .locals 8
    .param p1, "callback"    # Lcom/android/internal/app/IOpsCallback;

    .prologue
    const/4 v7, -0x1

    const/4 v6, 0x0

    .line 250
    iget-object v2, p0, Lcom/android/server/AppOpsServiceState;->mContext:Landroid/content/Context;

    const-string/jumbo v3, "android.permission.UPDATE_APP_OPS_STATS"

    .line 251
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v4

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v5

    .line 250
    invoke-virtual {v2, v3, v4, v5, v6}, Landroid/content/Context;->enforcePermission(Ljava/lang/String;IILjava/lang/String;)V

    .line 253
    if-nez p1, :cond_0

    .line 254
    return v7

    .line 256
    :cond_0
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v0

    .line 257
    .local v0, "callingUserId":I
    const/4 v2, 0x1

    invoke-direct {p0, v0, v2}, Lcom/android/server/AppOpsServiceState;->getUidState(IZ)Lcom/android/server/AppOpsServiceState$UserState;

    move-result-object v1

    .line 259
    .local v1, "uidState":Lcom/android/server/AppOpsServiceState$UserState;
    if-nez v1, :cond_1

    .line 260
    return v7

    .line 262
    :cond_1
    iput-object p1, v1, Lcom/android/server/AppOpsServiceState$UserState;->mCallbackBinder:Lcom/android/internal/app/IOpsCallback;

    .line 263
    iget-object v2, v1, Lcom/android/server/AppOpsServiceState$UserState;->mCallback:Lcom/android/server/AppOpsServiceState$Callback;

    if-eqz v2, :cond_2

    .line 264
    iget-object v2, v1, Lcom/android/server/AppOpsServiceState$UserState;->mCallback:Lcom/android/server/AppOpsServiceState$Callback;

    invoke-virtual {v2}, Lcom/android/server/AppOpsServiceState$Callback;->unlinkToDeath()V

    .line 266
    :cond_2
    new-instance v2, Lcom/android/server/AppOpsServiceState$Callback;

    invoke-direct {v2, p0, p1, v0}, Lcom/android/server/AppOpsServiceState$Callback;-><init>(Lcom/android/server/AppOpsServiceState;Lcom/android/internal/app/IOpsCallback;I)V

    iput-object v2, v1, Lcom/android/server/AppOpsServiceState$UserState;->mCallback:Lcom/android/server/AppOpsServiceState$Callback;

    .line 267
    const/4 v2, 0x0

    return v2
.end method

.method public declared-synchronized removeUser(I)V
    .locals 1
    .param p1, "userHandle"    # I

    .prologue
    monitor-enter p0

    .line 98
    :try_start_0
    iget-object v0, p0, Lcom/android/server/AppOpsServiceState;->mUidStates:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->remove(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    .line 97
    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public systemReady()V
    .locals 4

    .prologue
    .line 102
    iget-object v1, p0, Lcom/android/server/AppOpsServiceState;->mContext:Landroid/content/Context;

    const-string/jumbo v2, "security"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lmiui/security/SecurityManager;

    iput-object v1, p0, Lcom/android/server/AppOpsServiceState;->mSecurityManager:Lmiui/security/SecurityManager;

    .line 103
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/AppOpsServiceState;->mIPackageManager:Landroid/content/pm/IPackageManager;

    .line 104
    const-string/jumbo v1, "POWER_SAVE_MODE_OPEN"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 105
    .local v0, "uri":Landroid/net/Uri;
    iget-object v1, p0, Lcom/android/server/AppOpsServiceState;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    new-instance v2, Lcom/android/server/AppOpsServiceState$1;

    const/4 v3, 0x0

    invoke-direct {v2, p0, v3}, Lcom/android/server/AppOpsServiceState$1;-><init>(Lcom/android/server/AppOpsServiceState;Landroid/os/Handler;)V

    const/4 v3, 0x1

    invoke-virtual {v1, v0, v3, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 111
    invoke-direct {p0}, Lcom/android/server/AppOpsServiceState;->updatePowerState()V

    .line 101
    return-void
.end method
