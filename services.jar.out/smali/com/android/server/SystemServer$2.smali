.class Lcom/android/server/SystemServer$2;
.super Ljava/lang/Object;
.source "SystemServer.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/SystemServer;->startOtherServices()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/SystemServer$2$-void_run__LambdaImpl0;
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/SystemServer;

.field final synthetic val$atlasF:Lcom/android/server/AssetAtlasService;

.field final synthetic val$commonTimeMgmtServiceF:Lcom/android/server/CommonTimeManagementService;

.field final synthetic val$connectivityF:Lcom/android/server/ConnectivityService;

.field final synthetic val$context:Landroid/content/Context;

.field final synthetic val$countryDetectorF:Lcom/android/server/CountryDetectorService;

.field final synthetic val$inputManagerF:Lcom/android/server/input/InputManagerService;

.field final synthetic val$locationF:Lcom/android/server/LocationManagerService;

.field final synthetic val$mediaRouterF:Lcom/android/server/media/MediaRouterService;

.field final synthetic val$mmsServiceF:Lcom/android/server/MmsServiceBroker;

.field final synthetic val$networkManagementF:Lcom/android/server/NetworkManagementService;

.field final synthetic val$networkPolicyF:Lcom/android/server/net/NetworkPolicyManagerService;

.field final synthetic val$networkScoreF:Lcom/android/server/NetworkScoreService;

.field final synthetic val$networkStatsF:Lcom/android/server/net/NetworkStatsService;

.field final synthetic val$networkTimeUpdaterF:Lcom/android/server/NetworkTimeUpdateService;

.field final synthetic val$telephonyRegistryF:Lcom/android/server/TelephonyRegistry;


# direct methods
.method constructor <init>(Lcom/android/server/SystemServer;Landroid/content/Context;Lcom/android/server/NetworkScoreService;Lcom/android/server/NetworkManagementService;Lcom/android/server/net/NetworkPolicyManagerService;Lcom/android/server/net/NetworkStatsService;Lcom/android/server/ConnectivityService;Lcom/android/server/LocationManagerService;Lcom/android/server/CountryDetectorService;Lcom/android/server/NetworkTimeUpdateService;Lcom/android/server/CommonTimeManagementService;Lcom/android/server/AssetAtlasService;Lcom/android/server/input/InputManagerService;Lcom/android/server/TelephonyRegistry;Lcom/android/server/media/MediaRouterService;Lcom/android/server/MmsServiceBroker;)V
    .locals 1
    .param p1, "this$0"    # Lcom/android/server/SystemServer;
    .param p2, "val$context"    # Landroid/content/Context;
    .param p3, "val$networkScoreF"    # Lcom/android/server/NetworkScoreService;
    .param p4, "val$networkManagementF"    # Lcom/android/server/NetworkManagementService;
    .param p5, "val$networkPolicyF"    # Lcom/android/server/net/NetworkPolicyManagerService;
    .param p6, "val$networkStatsF"    # Lcom/android/server/net/NetworkStatsService;
    .param p7, "val$connectivityF"    # Lcom/android/server/ConnectivityService;
    .param p8, "val$locationF"    # Lcom/android/server/LocationManagerService;
    .param p9, "val$countryDetectorF"    # Lcom/android/server/CountryDetectorService;
    .param p10, "val$networkTimeUpdaterF"    # Lcom/android/server/NetworkTimeUpdateService;
    .param p11, "val$commonTimeMgmtServiceF"    # Lcom/android/server/CommonTimeManagementService;
    .param p12, "val$atlasF"    # Lcom/android/server/AssetAtlasService;
    .param p13, "val$inputManagerF"    # Lcom/android/server/input/InputManagerService;
    .param p14, "val$telephonyRegistryF"    # Lcom/android/server/TelephonyRegistry;
    .param p15, "val$mediaRouterF"    # Lcom/android/server/media/MediaRouterService;
    .param p16, "val$mmsServiceF"    # Lcom/android/server/MmsServiceBroker;

    .prologue
    .line 1425
    iput-object p1, p0, Lcom/android/server/SystemServer$2;->this$0:Lcom/android/server/SystemServer;

    iput-object p2, p0, Lcom/android/server/SystemServer$2;->val$context:Landroid/content/Context;

    iput-object p3, p0, Lcom/android/server/SystemServer$2;->val$networkScoreF:Lcom/android/server/NetworkScoreService;

    iput-object p4, p0, Lcom/android/server/SystemServer$2;->val$networkManagementF:Lcom/android/server/NetworkManagementService;

    iput-object p5, p0, Lcom/android/server/SystemServer$2;->val$networkPolicyF:Lcom/android/server/net/NetworkPolicyManagerService;

    iput-object p6, p0, Lcom/android/server/SystemServer$2;->val$networkStatsF:Lcom/android/server/net/NetworkStatsService;

    iput-object p7, p0, Lcom/android/server/SystemServer$2;->val$connectivityF:Lcom/android/server/ConnectivityService;

    iput-object p8, p0, Lcom/android/server/SystemServer$2;->val$locationF:Lcom/android/server/LocationManagerService;

    iput-object p9, p0, Lcom/android/server/SystemServer$2;->val$countryDetectorF:Lcom/android/server/CountryDetectorService;

    iput-object p10, p0, Lcom/android/server/SystemServer$2;->val$networkTimeUpdaterF:Lcom/android/server/NetworkTimeUpdateService;

    iput-object p11, p0, Lcom/android/server/SystemServer$2;->val$commonTimeMgmtServiceF:Lcom/android/server/CommonTimeManagementService;

    iput-object p12, p0, Lcom/android/server/SystemServer$2;->val$atlasF:Lcom/android/server/AssetAtlasService;

    iput-object p13, p0, Lcom/android/server/SystemServer$2;->val$inputManagerF:Lcom/android/server/input/InputManagerService;

    iput-object p14, p0, Lcom/android/server/SystemServer$2;->val$telephonyRegistryF:Lcom/android/server/TelephonyRegistry;

    move-object/from16 v0, p15

    iput-object v0, p0, Lcom/android/server/SystemServer$2;->val$mediaRouterF:Lcom/android/server/media/MediaRouterService;

    move-object/from16 v0, p16

    iput-object v0, p0, Lcom/android/server/SystemServer$2;->val$mmsServiceF:Lcom/android/server/MmsServiceBroker;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method synthetic -com_android_server_SystemServer$2_lambda$2()V
    .locals 4

    .prologue
    const-wide/32 v2, 0x80000

    .line 1447
    const-string/jumbo v0, "SystemServer"

    const-string/jumbo v1, "WebViewFactory preparation"

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1448
    const-string/jumbo v0, "WebViewFactoryPreparation"

    invoke-static {v2, v3, v0}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 1449
    iget-object v0, p0, Lcom/android/server/SystemServer$2;->this$0:Lcom/android/server/SystemServer;

    invoke-static {v0}, Lcom/android/server/SystemServer;->-get4(Lcom/android/server/SystemServer;)Lcom/android/server/webkit/WebViewUpdateService;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/webkit/WebViewUpdateService;->prepareWebViewInSystemServer()V

    .line 1450
    invoke-static {v2, v3}, Landroid/os/Trace;->traceEnd(J)V

    .line 0
    return-void
.end method

.method public run()V
    .locals 10

    .prologue
    const-wide/32 v8, 0x80000

    .line 1428
    const-string/jumbo v4, "SystemServer"

    const-string/jumbo v5, "Making services ready"

    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1429
    iget-object v4, p0, Lcom/android/server/SystemServer$2;->this$0:Lcom/android/server/SystemServer;

    invoke-static {v4}, Lcom/android/server/SystemServer;->-get3(Lcom/android/server/SystemServer;)Lcom/android/server/SystemServiceManager;

    move-result-object v4

    .line 1430
    const/16 v5, 0x226

    .line 1429
    invoke-virtual {v4, v5}, Lcom/android/server/SystemServiceManager;->startBootPhase(I)V

    .line 1431
    const-string/jumbo v4, "PhaseActivityManagerReady"

    invoke-static {v8, v9, v4}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 1433
    const-string/jumbo v4, "StartObservingNativeCrashes"

    invoke-static {v8, v9, v4}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 1435
    :try_start_0
    iget-object v4, p0, Lcom/android/server/SystemServer$2;->this$0:Lcom/android/server/SystemServer;

    invoke-static {v4}, Lcom/android/server/SystemServer;->-get0(Lcom/android/server/SystemServer;)Lcom/android/server/am/ActivityManagerService;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/server/am/ActivityManagerService;->startObservingNativeCrashes()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 1439
    :goto_0
    invoke-static {v8, v9}, Landroid/os/Trace;->traceEnd(J)V

    .line 1443
    const-string/jumbo v0, "WebViewFactoryPreparation"

    .line 1444
    .local v0, "WEBVIEW_PREPARATION":Ljava/lang/String;
    const/4 v3, 0x0

    .line 1445
    .local v3, "webviewPrep":Ljava/util/concurrent/Future;, "Ljava/util/concurrent/Future<*>;"
    iget-object v4, p0, Lcom/android/server/SystemServer$2;->this$0:Lcom/android/server/SystemServer;

    invoke-static {v4}, Lcom/android/server/SystemServer;->-get1(Lcom/android/server/SystemServer;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 1446
    invoke-static {}, Lcom/android/server/SystemServerInitThreadPool;->get()Lcom/android/server/SystemServerInitThreadPool;

    move-result-object v4

    new-instance v5, Lcom/android/server/SystemServer$2$-void_run__LambdaImpl0;

    invoke-direct {v5, p0}, Lcom/android/server/SystemServer$2$-void_run__LambdaImpl0;-><init>(Lcom/android/server/SystemServer$2;)V

    .line 1451
    const-string/jumbo v6, "WebViewFactoryPreparation"

    .line 1446
    invoke-virtual {v4, v5, v6}, Lcom/android/server/SystemServerInitThreadPool;->submit(Ljava/lang/Runnable;Ljava/lang/String;)Ljava/util/concurrent/Future;

    move-result-object v3

    .line 1454
    .end local v3    # "webviewPrep":Ljava/util/concurrent/Future;, "Ljava/util/concurrent/Future<*>;"
    :cond_0
    const-string/jumbo v4, "StartSystemUI"

    invoke-static {v8, v9, v4}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 1456
    :try_start_1
    iget-object v4, p0, Lcom/android/server/SystemServer$2;->val$context:Landroid/content/Context;

    invoke-static {v4}, Lcom/android/server/SystemServer;->startSystemUi(Landroid/content/Context;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1

    .line 1460
    :goto_1
    invoke-static {v8, v9}, Landroid/os/Trace;->traceEnd(J)V

    .line 1461
    const-string/jumbo v4, "MakeNetworkScoreReady"

    invoke-static {v8, v9, v4}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 1463
    :try_start_2
    iget-object v4, p0, Lcom/android/server/SystemServer$2;->val$networkScoreF:Lcom/android/server/NetworkScoreService;

    if-eqz v4, :cond_1

    iget-object v4, p0, Lcom/android/server/SystemServer$2;->val$networkScoreF:Lcom/android/server/NetworkScoreService;

    invoke-virtual {v4}, Lcom/android/server/NetworkScoreService;->systemReady()V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_2

    .line 1467
    :cond_1
    :goto_2
    invoke-static {v8, v9}, Landroid/os/Trace;->traceEnd(J)V

    .line 1468
    const-string/jumbo v4, "MakeNetworkManagementServiceReady"

    invoke-static {v8, v9, v4}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 1470
    :try_start_3
    iget-object v4, p0, Lcom/android/server/SystemServer$2;->val$networkManagementF:Lcom/android/server/NetworkManagementService;

    if-eqz v4, :cond_2

    iget-object v4, p0, Lcom/android/server/SystemServer$2;->val$networkManagementF:Lcom/android/server/NetworkManagementService;

    invoke-virtual {v4}, Lcom/android/server/NetworkManagementService;->systemReady()V
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_3

    .line 1474
    :cond_2
    :goto_3
    invoke-static {v8, v9}, Landroid/os/Trace;->traceEnd(J)V

    .line 1475
    const-string/jumbo v4, "MakeNetworkStatsServiceReady"

    invoke-static {v8, v9, v4}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 1476
    const/4 v2, 0x0

    .line 1477
    .local v2, "networkPolicyInitReadySignal":Ljava/util/concurrent/CountDownLatch;
    iget-object v4, p0, Lcom/android/server/SystemServer$2;->val$networkPolicyF:Lcom/android/server/net/NetworkPolicyManagerService;

    if-eqz v4, :cond_3

    .line 1478
    iget-object v4, p0, Lcom/android/server/SystemServer$2;->val$networkPolicyF:Lcom/android/server/net/NetworkPolicyManagerService;

    invoke-virtual {v4}, Lcom/android/server/net/NetworkPolicyManagerService;->networkScoreAndNetworkManagementServiceReady()Ljava/util/concurrent/CountDownLatch;

    move-result-object v2

    .line 1482
    .end local v2    # "networkPolicyInitReadySignal":Ljava/util/concurrent/CountDownLatch;
    :cond_3
    :try_start_4
    iget-object v4, p0, Lcom/android/server/SystemServer$2;->val$networkStatsF:Lcom/android/server/net/NetworkStatsService;

    if-eqz v4, :cond_4

    iget-object v4, p0, Lcom/android/server/SystemServer$2;->val$networkStatsF:Lcom/android/server/net/NetworkStatsService;

    invoke-virtual {v4}, Lcom/android/server/net/NetworkStatsService;->systemReady()V
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_4

    .line 1486
    :cond_4
    :goto_4
    invoke-static {v8, v9}, Landroid/os/Trace;->traceEnd(J)V

    .line 1487
    const-string/jumbo v4, "MakeNetworkPolicyServiceReady"

    invoke-static {v8, v9, v4}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 1489
    :try_start_5
    iget-object v4, p0, Lcom/android/server/SystemServer$2;->val$connectivityF:Lcom/android/server/ConnectivityService;

    if-eqz v4, :cond_5

    iget-object v4, p0, Lcom/android/server/SystemServer$2;->val$connectivityF:Lcom/android/server/ConnectivityService;

    invoke-virtual {v4}, Lcom/android/server/ConnectivityService;->systemReady()V
    :try_end_5
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_5} :catch_5

    .line 1493
    :cond_5
    :goto_5
    invoke-static {v8, v9}, Landroid/os/Trace;->traceEnd(J)V

    .line 1494
    const-string/jumbo v4, "MakeConnectivityServiceReady"

    invoke-static {v8, v9, v4}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 1497
    :try_start_6
    iget-object v4, p0, Lcom/android/server/SystemServer$2;->val$networkPolicyF:Lcom/android/server/net/NetworkPolicyManagerService;

    if-eqz v4, :cond_6

    .line 1498
    iget-object v4, p0, Lcom/android/server/SystemServer$2;->val$networkPolicyF:Lcom/android/server/net/NetworkPolicyManagerService;

    invoke-virtual {v4, v2}, Lcom/android/server/net/NetworkPolicyManagerService;->systemReady(Ljava/util/concurrent/CountDownLatch;)V
    :try_end_6
    .catch Ljava/lang/Throwable; {:try_start_6 .. :try_end_6} :catch_6

    .line 1503
    :cond_6
    :goto_6
    invoke-static {v8, v9}, Landroid/os/Trace;->traceEnd(J)V

    .line 1505
    invoke-static {}, Lcom/android/server/Watchdog;->getInstance()Lcom/android/server/Watchdog;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/server/Watchdog;->start()V

    .line 1508
    iget-object v4, p0, Lcom/android/server/SystemServer$2;->this$0:Lcom/android/server/SystemServer;

    invoke-static {v4}, Lcom/android/server/SystemServer;->-get2(Lcom/android/server/SystemServer;)Lcom/android/server/pm/PackageManagerService;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/server/pm/PackageManagerService;->waitForAppDataPrepared()V

    .line 1512
    invoke-static {v8, v9}, Landroid/os/Trace;->traceEnd(J)V

    .line 1513
    if-eqz v3, :cond_7

    .line 1514
    const-string/jumbo v4, "WebViewFactoryPreparation"

    invoke-static {v3, v4}, Lcom/android/internal/util/ConcurrentUtils;->waitForFutureNoInterrupt(Ljava/util/concurrent/Future;Ljava/lang/String;)Ljava/lang/Object;

    .line 1516
    :cond_7
    const-string/jumbo v4, "PhaseThirdPartyAppsCanStart"

    invoke-static {v8, v9, v4}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 1517
    iget-object v4, p0, Lcom/android/server/SystemServer$2;->this$0:Lcom/android/server/SystemServer;

    invoke-static {v4}, Lcom/android/server/SystemServer;->-get3(Lcom/android/server/SystemServer;)Lcom/android/server/SystemServiceManager;

    move-result-object v4

    .line 1518
    const/16 v5, 0x258

    .line 1517
    invoke-virtual {v4, v5}, Lcom/android/server/SystemServiceManager;->startBootPhase(I)V

    .line 1521
    :try_start_7
    iget-object v4, p0, Lcom/android/server/SystemServer$2;->val$locationF:Lcom/android/server/LocationManagerService;

    if-eqz v4, :cond_8

    iget-object v4, p0, Lcom/android/server/SystemServer$2;->val$locationF:Lcom/android/server/LocationManagerService;

    invoke-virtual {v4}, Lcom/android/server/LocationManagerService;->systemRunning()V
    :try_end_7
    .catch Ljava/lang/Throwable; {:try_start_7 .. :try_end_7} :catch_7

    .line 1526
    :cond_8
    :goto_7
    :try_start_8
    iget-object v4, p0, Lcom/android/server/SystemServer$2;->val$countryDetectorF:Lcom/android/server/CountryDetectorService;

    if-eqz v4, :cond_9

    iget-object v4, p0, Lcom/android/server/SystemServer$2;->val$countryDetectorF:Lcom/android/server/CountryDetectorService;

    invoke-virtual {v4}, Lcom/android/server/CountryDetectorService;->systemRunning()V
    :try_end_8
    .catch Ljava/lang/Throwable; {:try_start_8 .. :try_end_8} :catch_8

    .line 1531
    :cond_9
    :goto_8
    :try_start_9
    iget-object v4, p0, Lcom/android/server/SystemServer$2;->val$networkTimeUpdaterF:Lcom/android/server/NetworkTimeUpdateService;

    if-eqz v4, :cond_a

    iget-object v4, p0, Lcom/android/server/SystemServer$2;->val$networkTimeUpdaterF:Lcom/android/server/NetworkTimeUpdateService;

    invoke-virtual {v4}, Lcom/android/server/NetworkTimeUpdateService;->systemRunning()V
    :try_end_9
    .catch Ljava/lang/Throwable; {:try_start_9 .. :try_end_9} :catch_9

    .line 1536
    :cond_a
    :goto_9
    :try_start_a
    iget-object v4, p0, Lcom/android/server/SystemServer$2;->val$commonTimeMgmtServiceF:Lcom/android/server/CommonTimeManagementService;

    if-eqz v4, :cond_b

    .line 1537
    iget-object v4, p0, Lcom/android/server/SystemServer$2;->val$commonTimeMgmtServiceF:Lcom/android/server/CommonTimeManagementService;

    invoke-virtual {v4}, Lcom/android/server/CommonTimeManagementService;->systemRunning()V
    :try_end_a
    .catch Ljava/lang/Throwable; {:try_start_a .. :try_end_a} :catch_a

    .line 1543
    :cond_b
    :goto_a
    :try_start_b
    iget-object v4, p0, Lcom/android/server/SystemServer$2;->val$atlasF:Lcom/android/server/AssetAtlasService;

    if-eqz v4, :cond_c

    iget-object v4, p0, Lcom/android/server/SystemServer$2;->val$atlasF:Lcom/android/server/AssetAtlasService;

    invoke-virtual {v4}, Lcom/android/server/AssetAtlasService;->systemRunning()V
    :try_end_b
    .catch Ljava/lang/Throwable; {:try_start_b .. :try_end_b} :catch_b

    .line 1549
    :cond_c
    :goto_b
    :try_start_c
    iget-object v4, p0, Lcom/android/server/SystemServer$2;->val$inputManagerF:Lcom/android/server/input/InputManagerService;

    if-eqz v4, :cond_d

    iget-object v4, p0, Lcom/android/server/SystemServer$2;->val$inputManagerF:Lcom/android/server/input/InputManagerService;

    invoke-virtual {v4}, Lcom/android/server/input/InputManagerService;->systemRunning()V
    :try_end_c
    .catch Ljava/lang/Throwable; {:try_start_c .. :try_end_c} :catch_c

    .line 1554
    :cond_d
    :goto_c
    :try_start_d
    iget-object v4, p0, Lcom/android/server/SystemServer$2;->val$telephonyRegistryF:Lcom/android/server/TelephonyRegistry;

    if-eqz v4, :cond_e

    iget-object v4, p0, Lcom/android/server/SystemServer$2;->val$telephonyRegistryF:Lcom/android/server/TelephonyRegistry;

    invoke-virtual {v4}, Lcom/android/server/TelephonyRegistry;->systemRunning()V
    :try_end_d
    .catch Ljava/lang/Throwable; {:try_start_d .. :try_end_d} :catch_d

    .line 1559
    :cond_e
    :goto_d
    :try_start_e
    iget-object v4, p0, Lcom/android/server/SystemServer$2;->val$mediaRouterF:Lcom/android/server/media/MediaRouterService;

    if-eqz v4, :cond_f

    iget-object v4, p0, Lcom/android/server/SystemServer$2;->val$mediaRouterF:Lcom/android/server/media/MediaRouterService;

    invoke-virtual {v4}, Lcom/android/server/media/MediaRouterService;->systemRunning()V
    :try_end_e
    .catch Ljava/lang/Throwable; {:try_start_e .. :try_end_e} :catch_e

    .line 1565
    :cond_f
    :goto_e
    :try_start_f
    iget-object v4, p0, Lcom/android/server/SystemServer$2;->val$mmsServiceF:Lcom/android/server/MmsServiceBroker;

    if-eqz v4, :cond_10

    iget-object v4, p0, Lcom/android/server/SystemServer$2;->val$mmsServiceF:Lcom/android/server/MmsServiceBroker;

    invoke-virtual {v4}, Lcom/android/server/MmsServiceBroker;->systemRunning()V
    :try_end_f
    .catch Ljava/lang/Throwable; {:try_start_f .. :try_end_f} :catch_f

    .line 1571
    :cond_10
    :goto_f
    :try_start_10
    iget-object v4, p0, Lcom/android/server/SystemServer$2;->val$networkScoreF:Lcom/android/server/NetworkScoreService;

    if-eqz v4, :cond_11

    iget-object v4, p0, Lcom/android/server/SystemServer$2;->val$networkScoreF:Lcom/android/server/NetworkScoreService;

    invoke-virtual {v4}, Lcom/android/server/NetworkScoreService;->systemRunning()V
    :try_end_10
    .catch Ljava/lang/Throwable; {:try_start_10 .. :try_end_10} :catch_10

    .line 1575
    :cond_11
    :goto_10
    invoke-static {v8, v9}, Landroid/os/Trace;->traceEnd(J)V

    .line 1577
    iget-object v4, p0, Lcom/android/server/SystemServer$2;->val$context:Landroid/content/Context;

    invoke-static {v4}, Lcom/android/server/SystemServerInjector;->registerSystemLogSwitchesReceiver(Landroid/content/Context;)V

    .line 1427
    return-void

    .line 1436
    .end local v0    # "WEBVIEW_PREPARATION":Ljava/lang/String;
    :catch_0
    move-exception v1

    .line 1437
    .local v1, "e":Ljava/lang/Throwable;
    iget-object v4, p0, Lcom/android/server/SystemServer$2;->this$0:Lcom/android/server/SystemServer;

    const-string/jumbo v5, "observing native crashes"

    invoke-static {v4, v5, v1}, Lcom/android/server/SystemServer;->-wrap0(Lcom/android/server/SystemServer;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_0

    .line 1457
    .end local v1    # "e":Ljava/lang/Throwable;
    .restart local v0    # "WEBVIEW_PREPARATION":Ljava/lang/String;
    :catch_1
    move-exception v1

    .line 1458
    .restart local v1    # "e":Ljava/lang/Throwable;
    iget-object v4, p0, Lcom/android/server/SystemServer$2;->this$0:Lcom/android/server/SystemServer;

    const-string/jumbo v5, "starting System UI"

    invoke-static {v4, v5, v1}, Lcom/android/server/SystemServer;->-wrap0(Lcom/android/server/SystemServer;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_1

    .line 1464
    .end local v1    # "e":Ljava/lang/Throwable;
    :catch_2
    move-exception v1

    .line 1465
    .restart local v1    # "e":Ljava/lang/Throwable;
    iget-object v4, p0, Lcom/android/server/SystemServer$2;->this$0:Lcom/android/server/SystemServer;

    const-string/jumbo v5, "making Network Score Service ready"

    invoke-static {v4, v5, v1}, Lcom/android/server/SystemServer;->-wrap0(Lcom/android/server/SystemServer;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_2

    .line 1471
    .end local v1    # "e":Ljava/lang/Throwable;
    :catch_3
    move-exception v1

    .line 1472
    .restart local v1    # "e":Ljava/lang/Throwable;
    iget-object v4, p0, Lcom/android/server/SystemServer$2;->this$0:Lcom/android/server/SystemServer;

    const-string/jumbo v5, "making Network Managment Service ready"

    invoke-static {v4, v5, v1}, Lcom/android/server/SystemServer;->-wrap0(Lcom/android/server/SystemServer;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_3

    .line 1483
    .end local v1    # "e":Ljava/lang/Throwable;
    :catch_4
    move-exception v1

    .line 1484
    .restart local v1    # "e":Ljava/lang/Throwable;
    iget-object v4, p0, Lcom/android/server/SystemServer$2;->this$0:Lcom/android/server/SystemServer;

    const-string/jumbo v5, "making Network Stats Service ready"

    invoke-static {v4, v5, v1}, Lcom/android/server/SystemServer;->-wrap0(Lcom/android/server/SystemServer;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_4

    .line 1490
    .end local v1    # "e":Ljava/lang/Throwable;
    :catch_5
    move-exception v1

    .line 1491
    .restart local v1    # "e":Ljava/lang/Throwable;
    iget-object v4, p0, Lcom/android/server/SystemServer$2;->this$0:Lcom/android/server/SystemServer;

    const-string/jumbo v5, "making Connectivity Service ready"

    invoke-static {v4, v5, v1}, Lcom/android/server/SystemServer;->-wrap0(Lcom/android/server/SystemServer;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_5

    .line 1500
    .end local v1    # "e":Ljava/lang/Throwable;
    :catch_6
    move-exception v1

    .line 1501
    .restart local v1    # "e":Ljava/lang/Throwable;
    iget-object v4, p0, Lcom/android/server/SystemServer$2;->this$0:Lcom/android/server/SystemServer;

    const-string/jumbo v5, "making Network Policy Service ready"

    invoke-static {v4, v5, v1}, Lcom/android/server/SystemServer;->-wrap0(Lcom/android/server/SystemServer;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_6

    .line 1522
    .end local v1    # "e":Ljava/lang/Throwable;
    :catch_7
    move-exception v1

    .line 1523
    .restart local v1    # "e":Ljava/lang/Throwable;
    iget-object v4, p0, Lcom/android/server/SystemServer$2;->this$0:Lcom/android/server/SystemServer;

    const-string/jumbo v5, "Notifying Location Service running"

    invoke-static {v4, v5, v1}, Lcom/android/server/SystemServer;->-wrap0(Lcom/android/server/SystemServer;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_7

    .line 1527
    .end local v1    # "e":Ljava/lang/Throwable;
    :catch_8
    move-exception v1

    .line 1528
    .restart local v1    # "e":Ljava/lang/Throwable;
    iget-object v4, p0, Lcom/android/server/SystemServer$2;->this$0:Lcom/android/server/SystemServer;

    const-string/jumbo v5, "Notifying CountryDetectorService running"

    invoke-static {v4, v5, v1}, Lcom/android/server/SystemServer;->-wrap0(Lcom/android/server/SystemServer;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_8

    .line 1532
    .end local v1    # "e":Ljava/lang/Throwable;
    :catch_9
    move-exception v1

    .line 1533
    .restart local v1    # "e":Ljava/lang/Throwable;
    iget-object v4, p0, Lcom/android/server/SystemServer$2;->this$0:Lcom/android/server/SystemServer;

    const-string/jumbo v5, "Notifying NetworkTimeService running"

    invoke-static {v4, v5, v1}, Lcom/android/server/SystemServer;->-wrap0(Lcom/android/server/SystemServer;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_9

    .line 1539
    .end local v1    # "e":Ljava/lang/Throwable;
    :catch_a
    move-exception v1

    .line 1540
    .restart local v1    # "e":Ljava/lang/Throwable;
    iget-object v4, p0, Lcom/android/server/SystemServer$2;->this$0:Lcom/android/server/SystemServer;

    const-string/jumbo v5, "Notifying CommonTimeManagementService running"

    invoke-static {v4, v5, v1}, Lcom/android/server/SystemServer;->-wrap0(Lcom/android/server/SystemServer;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_a

    .line 1544
    .end local v1    # "e":Ljava/lang/Throwable;
    :catch_b
    move-exception v1

    .line 1545
    .restart local v1    # "e":Ljava/lang/Throwable;
    iget-object v4, p0, Lcom/android/server/SystemServer$2;->this$0:Lcom/android/server/SystemServer;

    const-string/jumbo v5, "Notifying AssetAtlasService running"

    invoke-static {v4, v5, v1}, Lcom/android/server/SystemServer;->-wrap0(Lcom/android/server/SystemServer;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_b

    .line 1550
    .end local v1    # "e":Ljava/lang/Throwable;
    :catch_c
    move-exception v1

    .line 1551
    .restart local v1    # "e":Ljava/lang/Throwable;
    iget-object v4, p0, Lcom/android/server/SystemServer$2;->this$0:Lcom/android/server/SystemServer;

    const-string/jumbo v5, "Notifying InputManagerService running"

    invoke-static {v4, v5, v1}, Lcom/android/server/SystemServer;->-wrap0(Lcom/android/server/SystemServer;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_c

    .line 1555
    .end local v1    # "e":Ljava/lang/Throwable;
    :catch_d
    move-exception v1

    .line 1556
    .restart local v1    # "e":Ljava/lang/Throwable;
    iget-object v4, p0, Lcom/android/server/SystemServer$2;->this$0:Lcom/android/server/SystemServer;

    const-string/jumbo v5, "Notifying TelephonyRegistry running"

    invoke-static {v4, v5, v1}, Lcom/android/server/SystemServer;->-wrap0(Lcom/android/server/SystemServer;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_d

    .line 1560
    .end local v1    # "e":Ljava/lang/Throwable;
    :catch_e
    move-exception v1

    .line 1561
    .restart local v1    # "e":Ljava/lang/Throwable;
    iget-object v4, p0, Lcom/android/server/SystemServer$2;->this$0:Lcom/android/server/SystemServer;

    const-string/jumbo v5, "Notifying MediaRouterService running"

    invoke-static {v4, v5, v1}, Lcom/android/server/SystemServer;->-wrap0(Lcom/android/server/SystemServer;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_e

    .line 1566
    .end local v1    # "e":Ljava/lang/Throwable;
    :catch_f
    move-exception v1

    .line 1567
    .restart local v1    # "e":Ljava/lang/Throwable;
    iget-object v4, p0, Lcom/android/server/SystemServer$2;->this$0:Lcom/android/server/SystemServer;

    const-string/jumbo v5, "Notifying MmsService running"

    invoke-static {v4, v5, v1}, Lcom/android/server/SystemServer;->-wrap0(Lcom/android/server/SystemServer;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_f

    .line 1572
    .end local v1    # "e":Ljava/lang/Throwable;
    :catch_10
    move-exception v1

    .line 1573
    .restart local v1    # "e":Ljava/lang/Throwable;
    iget-object v4, p0, Lcom/android/server/SystemServer$2;->this$0:Lcom/android/server/SystemServer;

    const-string/jumbo v5, "Notifying NetworkScoreService running"

    invoke-static {v4, v5, v1}, Lcom/android/server/SystemServer;->-wrap0(Lcom/android/server/SystemServer;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_10
.end method
