.class Lcom/android/server/net/NetworkPolicyManagerService$AppIdleStateChangeListener;
.super Landroid/app/usage/UsageStatsManagerInternal$AppIdleStateChangeListener;
.source "NetworkPolicyManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/net/NetworkPolicyManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "AppIdleStateChangeListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/net/NetworkPolicyManagerService;


# direct methods
.method private constructor <init>(Lcom/android/server/net/NetworkPolicyManagerService;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/net/NetworkPolicyManagerService;

    .prologue
    .line 3274
    iput-object p1, p0, Lcom/android/server/net/NetworkPolicyManagerService$AppIdleStateChangeListener;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    invoke-direct {p0}, Landroid/app/usage/UsageStatsManagerInternal$AppIdleStateChangeListener;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/net/NetworkPolicyManagerService;Lcom/android/server/net/NetworkPolicyManagerService$AppIdleStateChangeListener;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/net/NetworkPolicyManagerService;

    .prologue
    invoke-direct {p0, p1}, Lcom/android/server/net/NetworkPolicyManagerService$AppIdleStateChangeListener;-><init>(Lcom/android/server/net/NetworkPolicyManagerService;)V

    return-void
.end method


# virtual methods
.method public onAppIdleStateChanged(Ljava/lang/String;IZ)V
    .locals 4
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "userId"    # I
    .param p3, "idle"    # Z

    .prologue
    .line 3280
    :try_start_0
    iget-object v2, p0, Lcom/android/server/net/NetworkPolicyManagerService$AppIdleStateChangeListener;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    invoke-static {v2}, Lcom/android/server/net/NetworkPolicyManagerService;->-get1(Lcom/android/server/net/NetworkPolicyManagerService;)Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    .line 3281
    const/16 v3, 0x2000

    .line 3280
    invoke-virtual {v2, p1, v3, p2}, Landroid/content/pm/PackageManager;->getPackageUidAsUser(Ljava/lang/String;II)I

    move-result v1

    .line 3283
    .local v1, "uid":I
    iget-object v2, p0, Lcom/android/server/net/NetworkPolicyManagerService$AppIdleStateChangeListener;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    iget-object v3, v2, Lcom/android/server/net/NetworkPolicyManagerService;->mUidRulesFirstLock:Ljava/lang/Object;

    monitor-enter v3
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 3284
    :try_start_1
    iget-object v2, p0, Lcom/android/server/net/NetworkPolicyManagerService$AppIdleStateChangeListener;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    invoke-virtual {v2, v1}, Lcom/android/server/net/NetworkPolicyManagerService;->updateRuleForAppIdleUL(I)V

    .line 3285
    iget-object v2, p0, Lcom/android/server/net/NetworkPolicyManagerService$AppIdleStateChangeListener;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    invoke-static {v2, v1}, Lcom/android/server/net/NetworkPolicyManagerService;->-wrap16(Lcom/android/server/net/NetworkPolicyManagerService;I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    monitor-exit v3

    .line 3278
    .end local v1    # "uid":I
    :goto_0
    return-void

    .line 3283
    .restart local v1    # "uid":I
    :catchall_0
    move-exception v2

    monitor-exit v3

    throw v2
    :try_end_2
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_2 .. :try_end_2} :catch_0

    .line 3287
    .end local v1    # "uid":I
    :catch_0
    move-exception v0

    .local v0, "nnfe":Landroid/content/pm/PackageManager$NameNotFoundException;
    goto :goto_0
.end method

.method public onParoleStateChanged(Z)V
    .locals 2
    .param p1, "isParoleOn"    # Z

    .prologue
    .line 3293
    iget-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService$AppIdleStateChangeListener;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    iget-object v1, v0, Lcom/android/server/net/NetworkPolicyManagerService;->mUidRulesFirstLock:Ljava/lang/Object;

    monitor-enter v1

    .line 3294
    :try_start_0
    iget-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService$AppIdleStateChangeListener;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    invoke-virtual {v0}, Lcom/android/server/net/NetworkPolicyManagerService;->updateRulesForAppIdleParoleUL()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    .line 3292
    return-void

    .line 3293
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method
