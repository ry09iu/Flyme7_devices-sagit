.class final synthetic Lcom/android/server/net/NetworkPolicyManagerService$-java_util_concurrent_CountDownLatch_networkScoreAndNetworkManagementServiceReady__LambdaImpl0;
.super Ljava/lang/Object;
.source "NetworkPolicyManagerService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/net/NetworkPolicyManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1010
    name = "-java_util_concurrent_CountDownLatch_networkScoreAndNetworkManagementServiceReady__LambdaImpl0"
.end annotation


# instance fields
.field private synthetic val$initCompleteSignal:Ljava/util/concurrent/CountDownLatch;

.field private synthetic val$this:Lcom/android/server/net/NetworkPolicyManagerService;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/net/NetworkPolicyManagerService;Ljava/util/concurrent/CountDownLatch;)V
    .locals 0

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/net/NetworkPolicyManagerService$-java_util_concurrent_CountDownLatch_networkScoreAndNetworkManagementServiceReady__LambdaImpl0;->val$this:Lcom/android/server/net/NetworkPolicyManagerService;

    iput-object p2, p0, Lcom/android/server/net/NetworkPolicyManagerService$-java_util_concurrent_CountDownLatch_networkScoreAndNetworkManagementServiceReady__LambdaImpl0;->val$initCompleteSignal:Ljava/util/concurrent/CountDownLatch;

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    iget-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService$-java_util_concurrent_CountDownLatch_networkScoreAndNetworkManagementServiceReady__LambdaImpl0;->val$this:Lcom/android/server/net/NetworkPolicyManagerService;

    iget-object v1, p0, Lcom/android/server/net/NetworkPolicyManagerService$-java_util_concurrent_CountDownLatch_networkScoreAndNetworkManagementServiceReady__LambdaImpl0;->val$initCompleteSignal:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v0, v1}, Lcom/android/server/net/NetworkPolicyManagerService;->-com_android_server_net_NetworkPolicyManagerService_lambda$1(Ljava/util/concurrent/CountDownLatch;)V

    return-void
.end method
