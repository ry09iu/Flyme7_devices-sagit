.class public final Lcom/android/server/SystemServer;
.super Ljava/lang/Object;
.source "SystemServer.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/SystemServer$-void_startBootstrapServices__LambdaImpl0;
    }
.end annotation


# static fields
.field private static final ACCOUNT_SERVICE_CLASS:Ljava/lang/String; = "com.android.server.accounts.AccountManagerService$Lifecycle"

.field private static final APPWIDGET_SERVICE_CLASS:Ljava/lang/String; = "com.android.server.appwidget.AppWidgetService"

.field private static final BACKUP_MANAGER_SERVICE_CLASS:Ljava/lang/String; = "com.android.server.backup.BackupManagerService$Lifecycle"

.field private static final BLOCK_MAP_FILE:Ljava/lang/String; = "/cache/recovery/block.map"

.field private static final CONTENT_SERVICE_CLASS:Ljava/lang/String; = "com.android.server.content.ContentService$Lifecycle"

.field private static final DEFAULT_SYSTEM_THEME:I = #android:style@Theme.DeviceDefault.System#t

.field private static final EARLIEST_SUPPORTED_TIME:J = 0x5265c00L

.field private static final ENCRYPTED_STATE:Ljava/lang/String; = "1"

.field private static final ENCRYPTING_STATE:Ljava/lang/String; = "trigger_restart_min_framework"

.field private static final ETHERNET_SERVICE_CLASS:Ljava/lang/String; = "com.android.server.ethernet.EthernetService"

.field private static final JOB_SCHEDULER_SERVICE_CLASS:Ljava/lang/String; = "com.android.server.job.JobSchedulerService"

.field private static final LOCK_SETTINGS_SERVICE_CLASS:Ljava/lang/String; = "com.android.server.LockSettingsService$Lifecycle"

.field private static final MIDI_SERVICE_CLASS:Ljava/lang/String; = "com.android.server.midi.MidiService$Lifecycle"

.field private static final MOUNT_SERVICE_CLASS:Ljava/lang/String; = "com.android.server.MountService$Lifecycle"

.field private static final PERSISTENT_DATA_BLOCK_PROP:Ljava/lang/String; = "ro.frp.pst"

.field private static final PRINT_MANAGER_SERVICE_CLASS:Ljava/lang/String; = "com.android.server.print.PrintManagerService"

.field private static final SEARCH_MANAGER_SERVICE_CLASS:Ljava/lang/String; = "com.android.server.search.SearchManagerService$Lifecycle"

.field private static final SNAPSHOT_INTERVAL:J = 0x36ee80L

.field private static final START_SENSOR_SERVICE:Ljava/lang/String; = "StartSensorService"

.field private static final TAG:Ljava/lang/String; = "SystemServer"

.field private static final THERMAL_OBSERVER_CLASS:Ljava/lang/String; = "com.google.android.clockwork.ThermalObserver"

.field private static final UNCRYPT_PACKAGE_FILE:Ljava/lang/String; = "/cache/recovery/uncrypt_file"

.field private static final USB_SERVICE_CLASS:Ljava/lang/String; = "com.android.server.usb.UsbService$Lifecycle"

.field private static final VOICE_RECOGNITION_MANAGER_SERVICE_CLASS:Ljava/lang/String; = "com.android.server.voiceinteraction.VoiceInteractionManagerService"

.field private static final WALLPAPER_SERVICE_CLASS:Ljava/lang/String; = "com.android.server.wallpaper.WallpaperManagerService$Lifecycle"

.field private static final WEAR_BLUETOOTH_SERVICE_CLASS:Ljava/lang/String; = "com.google.android.clockwork.bluetooth.WearBluetoothService"

.field private static final WEAR_TIME_SERVICE_CLASS:Ljava/lang/String; = "com.google.android.clockwork.time.WearTimeService"

.field private static final WEAR_WIFI_MEDIATOR_SERVICE_CLASS:Ljava/lang/String; = "com.google.android.clockwork.wifi.WearWifiMediatorService"

.field private static final WIFI_NAN_SERVICE_CLASS:Ljava/lang/String; = "com.android.server.wifi.nan.WifiNanService"

.field private static final WIFI_P2P_SERVICE_CLASS:Ljava/lang/String; = "com.android.server.wifi.p2p.WifiP2pService"

.field private static final WIFI_SERVICE_CLASS:Ljava/lang/String; = "com.android.server.wifi.WifiService"

.field private static final sMaxBinderThreads:I = 0x1f


# instance fields

.field mFlymeWallpaperLifeService:Lcom/android/server/SystemService;

.field private mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

.field private mContentResolver:Landroid/content/ContentResolver;

.field private mDisplayManagerService:Lcom/android/server/display/DisplayManagerService;

.field private mEntropyMixer:Lcom/android/server/EntropyMixer;

.field private final mFactoryTestMode:I

.field private mFirstBoot:Z

.field private mIsAlarmBoot:Z

.field private mOnlyCore:Z

.field private mPackageManager:Landroid/content/pm/PackageManager;

.field private mPackageManagerService:Lcom/android/server/pm/PackageManagerService;

.field private mPowerManagerService:Lcom/android/server/power/PowerManagerService;

.field private mProfilerSnapshotTimer:Ljava/util/Timer;

.field private mSensorServiceStart:Ljava/util/concurrent/Future;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/Future",
            "<*>;"
        }
    .end annotation
.end field

.field private mSystemContext:Landroid/content/Context;

.field private mSystemServiceManager:Lcom/android/server/SystemServiceManager;

.field private mWebViewUpdateService:Lcom/android/server/webkit/WebViewUpdateService;


# direct methods
.method static synthetic -com_android_server_SystemServer_lambda$1()V
    .locals 4

    .prologue
    const-wide/32 v2, 0x80000

    .line 547
    const-string/jumbo v0, "StartSensorService"

    invoke-static {v2, v3, v0}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 548
    invoke-static {}, Lcom/android/server/SystemServer;->startSensorService()V

    .line 549
    invoke-static {v2, v3}, Landroid/os/Trace;->traceEnd(J)V

    .line 0
    return-void
.end method

.method static synthetic -get0(Lcom/android/server/SystemServer;)Lcom/android/server/am/ActivityManagerService;
    .locals 1

    iget-object v0, p0, Lcom/android/server/SystemServer;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    return-object v0
.end method

.method static synthetic -get1(Lcom/android/server/SystemServer;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/server/SystemServer;->mOnlyCore:Z

    return v0
.end method

.method static synthetic -get2(Lcom/android/server/SystemServer;)Lcom/android/server/pm/PackageManagerService;
    .locals 1

    iget-object v0, p0, Lcom/android/server/SystemServer;->mPackageManagerService:Lcom/android/server/pm/PackageManagerService;

    return-object v0
.end method

.method static synthetic -get3(Lcom/android/server/SystemServer;)Lcom/android/server/SystemServiceManager;
    .locals 1

    iget-object v0, p0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    return-object v0
.end method

.method static synthetic -get4(Lcom/android/server/SystemServer;)Lcom/android/server/webkit/WebViewUpdateService;
    .locals 1

    iget-object v0, p0, Lcom/android/server/SystemServer;->mWebViewUpdateService:Lcom/android/server/webkit/WebViewUpdateService;

    return-object v0
.end method

.method static synthetic -wrap0(Lcom/android/server/SystemServer;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 0
    .param p1, "msg"    # Ljava/lang/String;
    .param p2, "e"    # Ljava/lang/Throwable;

    .prologue
    invoke-direct {p0, p1, p2}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 242
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 244
    invoke-static {}, Landroid/os/FactoryTest;->getMode()I

    move-result v0

    iput v0, p0, Lcom/android/server/SystemServer;->mFactoryTestMode:I

    .line 242
    return-void
.end method

.method private createSystemContext()V
    .locals 3

    .prologue
    .line 428
    invoke-static {}, Landroid/app/ActivityThread;->systemMain()Landroid/app/ActivityThread;

    move-result-object v0

    .line 429
    .local v0, "activityThread":Landroid/app/ActivityThread;
    invoke-virtual {v0}, Landroid/app/ActivityThread;->getSystemContext()Landroid/app/ContextImpl;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/SystemServer;->mSystemContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/server/SystemServer;->mSystemContext:Landroid/content/Context;

    const v2, #android:style@Theme.DeviceDefault.System#t

    invoke-virtual {v1, v2}, Landroid/content/Context;->setTheme(I)V

    return-void
.end method

.method public static main([Ljava/lang/String;)V
    .locals 2
    .param p0, "args"    # [Ljava/lang/String;

    .prologue
    .line 238
    sget-wide v0, Lcom/android/internal/os/ZygoteInit;->BOOT_START_TIME:J

    invoke-static {v0, v1}, Lcom/android/server/SystemServerInjector;->markSystemRun(J)V

    .line 239
    new-instance v0, Lcom/android/server/SystemServer;

    invoke-direct {v0}, Lcom/android/server/SystemServer;-><init>()V

    invoke-direct {v0}, Lcom/android/server/SystemServer;->run()V

    .line 236
    return-void
.end method

.method private performPendingShutdown()V
    .locals 11

    .prologue
    const/4 v10, 0x1

    const/4 v9, 0x0

    const/4 v8, 0x0

    .line 388
    const-string/jumbo v6, "sys.shutdown.requested"

    const-string/jumbo v7, ""

    .line 387
    invoke-static {v6, v7}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 389
    .local v5, "shutdownAction":Ljava/lang/String;
    if-eqz v5, :cond_3

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v6

    if-lez v6, :cond_3

    .line 390
    invoke-virtual {v5, v9}, Ljava/lang/String;->charAt(I)C

    move-result v6

    const/16 v7, 0x31

    if-ne v6, v7, :cond_0

    const/4 v4, 0x1

    .line 393
    .local v4, "reboot":Z
    :goto_0
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v6

    if-le v6, v10, :cond_1

    .line 394
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v6

    invoke-virtual {v5, v10, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    .line 404
    :goto_1
    const-string/jumbo v6, "recovery-update"

    invoke-virtual {v6, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 405
    new-instance v2, Ljava/io/File;

    const-string/jumbo v6, "/cache/recovery/uncrypt_file"

    invoke-direct {v2, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 406
    .local v2, "packageFile":Ljava/io/File;
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v6

    if-eqz v6, :cond_2

    .line 407
    const/4 v1, 0x0

    .line 409
    .local v1, "filename":Ljava/lang/String;
    const/4 v6, 0x0

    const/4 v7, 0x0

    :try_start_0
    invoke-static {v2, v6, v7}, Landroid/os/FileUtils;->readTextFile(Ljava/io/File;ILjava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 414
    .end local v1    # "filename":Ljava/lang/String;
    :goto_2
    if-eqz v1, :cond_2

    const-string/jumbo v6, "/data"

    invoke-virtual {v1, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 415
    new-instance v6, Ljava/io/File;

    const-string/jumbo v7, "/cache/recovery/block.map"

    invoke-direct {v6, v7}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6}, Ljava/io/File;->exists()Z

    move-result v6

    if-nez v6, :cond_2

    .line 416
    const-string/jumbo v6, "SystemServer"

    const-string/jumbo v7, "Can\'t find block map file, uncrypt failed or unexpected runtime restart?"

    invoke-static {v6, v7}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 418
    return-void

    .line 390
    .end local v2    # "packageFile":Ljava/io/File;
    .end local v4    # "reboot":Z
    :cond_0
    const/4 v4, 0x0

    .restart local v4    # "reboot":Z
    goto :goto_0

    .line 396
    :cond_1
    const/4 v3, 0x0

    .local v3, "reason":Ljava/lang/String;
    goto :goto_1

    .line 410
    .end local v3    # "reason":Ljava/lang/String;
    .restart local v1    # "filename":Ljava/lang/String;
    .restart local v2    # "packageFile":Ljava/io/File;
    :catch_0
    move-exception v0

    .line 411
    .local v0, "e":Ljava/io/IOException;
    const-string/jumbo v6, "SystemServer"

    const-string/jumbo v7, "Error reading uncrypt package file"

    invoke-static {v6, v7, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_2

    .line 423
    .end local v0    # "e":Ljava/io/IOException;
    .end local v1    # "filename":Ljava/lang/String;
    .end local v2    # "packageFile":Ljava/io/File;
    :cond_2
    invoke-static {v8, v4, v3}, Lcom/android/server/power/ShutdownThread;->rebootOrShutdown(Landroid/content/Context;ZLjava/lang/String;)V

    .line 386
    .end local v4    # "reboot":Z
    :cond_3
    return-void
.end method

.method private reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 3
    .param p1, "msg"    # Ljava/lang/String;
    .param p2, "e"    # Ljava/lang/Throwable;

    .prologue
    .line 382
    const-string/jumbo v0, "SystemServer"

    const-string/jumbo v1, "***********************************************"

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 383
    const-string/jumbo v0, "SystemServer"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "BOOT FAILURE "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, p2}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 381
    return-void
.end method

.method private run()V
    .locals 10

    .prologue
    const-wide/32 v4, 0x5265c00

    const-wide/32 v8, 0x80000

    .line 249
    :try_start_0
    const-string/jumbo v0, "InitBeforeStartServices"

    const-wide/32 v2, 0x80000

    invoke-static {v2, v3, v0}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 254
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    cmp-long v0, v0, v4

    if-gez v0, :cond_0

    .line 255
    const-string/jumbo v0, "SystemServer"

    const-string/jumbo v1, "System clock is before 1970; setting to 1970."

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 256
    const-wide/32 v0, 0x5265c00

    invoke-static {v0, v1}, Landroid/os/SystemClock;->setCurrentTimeMillis(J)Z

    .line 267
    :cond_0
    const-string/jumbo v0, "persist.sys.language"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    .line 268
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Locale;->toLanguageTag()Ljava/lang/String;

    move-result-object v7

    .line 270
    .local v7, "languageTag":Ljava/lang/String;
    const-string/jumbo v0, "persist.sys.locale"

    invoke-static {v0, v7}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 271
    const-string/jumbo v0, "persist.sys.language"

    const-string/jumbo v1, ""

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 272
    const-string/jumbo v0, "persist.sys.country"

    const-string/jumbo v1, ""

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 273
    const-string/jumbo v0, "persist.sys.localevar"

    const-string/jumbo v1, ""

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 277
    .end local v7    # "languageTag":Ljava/lang/String;
    :cond_1
    const-string/jumbo v0, "SystemServer"

    const-string/jumbo v1, "Entered the Android system server!"

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 278
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    const/16 v2, 0xbc2

    invoke-static {v2, v0, v1}, Landroid/util/EventLog;->writeEvent(IJ)I

    .line 287
    const-string/jumbo v0, "persist.sys.dalvik.vm.lib.2"

    invoke-static {}, Ldalvik/system/VMRuntime;->getRuntime()Ldalvik/system/VMRuntime;

    move-result-object v1

    invoke-virtual {v1}, Ldalvik/system/VMRuntime;->vmLibrary()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 290
    invoke-static {}, Lcom/android/internal/os/SamplingProfilerIntegration;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 291
    invoke-static {}, Lcom/android/internal/os/SamplingProfilerIntegration;->start()V

    .line 292
    new-instance v0, Ljava/util/Timer;

    invoke-direct {v0}, Ljava/util/Timer;-><init>()V

    iput-object v0, p0, Lcom/android/server/SystemServer;->mProfilerSnapshotTimer:Ljava/util/Timer;

    .line 293
    iget-object v0, p0, Lcom/android/server/SystemServer;->mProfilerSnapshotTimer:Ljava/util/Timer;

    new-instance v1, Lcom/android/server/SystemServer$1;

    invoke-direct {v1, p0}, Lcom/android/server/SystemServer$1;-><init>(Lcom/android/server/SystemServer;)V

    .line 298
    const-wide/32 v2, 0x36ee80

    const-wide/32 v4, 0x36ee80

    .line 293
    invoke-virtual/range {v0 .. v5}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;JJ)V

    .line 302
    :cond_2
    invoke-static {}, Ldalvik/system/VMRuntime;->getRuntime()Ldalvik/system/VMRuntime;

    move-result-object v0

    invoke-virtual {v0}, Ldalvik/system/VMRuntime;->clearGrowthLimit()V

    .line 306
    invoke-static {}, Ldalvik/system/VMRuntime;->getRuntime()Ldalvik/system/VMRuntime;

    move-result-object v0

    const v1, 0x3f4ccccd    # 0.8f

    invoke-virtual {v0, v1}, Ldalvik/system/VMRuntime;->setTargetHeapUtilization(F)F

    .line 310
    invoke-static {}, Landroid/os/Build;->ensureFingerprintProperty()V

    .line 314
    const/4 v0, 0x1

    invoke-static {v0}, Landroid/os/Environment;->setUserRequired(Z)V

    .line 318
    const/4 v0, 0x1

    invoke-static {v0}, Landroid/os/BaseBundle;->setShouldDefuse(Z)V

    .line 321
    invoke-static {}, Lcom/android/server/SystemServerInjector;->enableLogSwitch()V

    .line 324
    const/4 v0, 0x1

    invoke-static {v0}, Lcom/android/internal/os/BinderInternal;->disableBackgroundScheduling(Z)V

    .line 327
    const/16 v0, 0x1f

    invoke-static {v0}, Lcom/android/internal/os/BinderInternal;->setMaxThreads(I)V

    .line 331
    const/4 v0, -0x2

    .line 330
    invoke-static {v0}, Landroid/os/Process;->setThreadPriority(I)V

    .line 332
    const/4 v0, 0x0

    invoke-static {v0}, Landroid/os/Process;->setCanSelfBackground(Z)V

    .line 333
    invoke-static {}, Landroid/os/Looper;->prepareMainLooper()V

    .line 336
    const-string/jumbo v0, "android_servers"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    .line 340
    invoke-direct {p0}, Lcom/android/server/SystemServer;->performPendingShutdown()V

    .line 343
    invoke-direct {p0}, Lcom/android/server/SystemServer;->createSystemContext()V

    .line 346
    new-instance v0, Lcom/android/server/SystemServiceManager;

    iget-object v1, p0, Lcom/android/server/SystemServer;->mSystemContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/android/server/SystemServiceManager;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    .line 347
    const-class v0, Lcom/android/server/SystemServiceManager;

    iget-object v1, p0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    invoke-static {v0, v1}, Lcom/android/server/LocalServices;->addService(Ljava/lang/Class;Ljava/lang/Object;)V

    .line 349
    invoke-static {}, Lcom/android/server/SystemServerInitThreadPool;->get()Lcom/android/server/SystemServerInitThreadPool;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 351
    invoke-static {v8, v9}, Landroid/os/Trace;->traceEnd(J)V

    .line 356
    :try_start_1
    const-string/jumbo v0, "StartServices"

    const-wide/32 v2, 0x80000

    invoke-static {v2, v3, v0}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 357
    invoke-direct {p0}, Lcom/android/server/SystemServer;->startBootstrapServices()V

    .line 358
    invoke-direct {p0}, Lcom/android/server/SystemServer;->startCoreServices()V

    .line 359
    invoke-direct {p0}, Lcom/android/server/SystemServer;->startOtherServices()V

    .line 360
    invoke-static {}, Lcom/android/server/SystemServerInitThreadPool;->shutdown()V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 366
    invoke-static {v8, v9}, Landroid/os/Trace;->traceEnd(J)V

    .line 370
    invoke-static {}, Landroid/os/StrictMode;->conditionallyEnableDebugLogging()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 371
    const-string/jumbo v0, "SystemServer"

    const-string/jumbo v1, "Enabled StrictMode for system server main thread."

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 376
    :cond_3
    const-string/jumbo v0, "SystemServer"

    const-string/jumbo v1, "Entered the Android system server main thread loop."

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 377
    invoke-static {}, Landroid/os/Looper;->loop()V

    .line 378
    new-instance v0, Ljava/lang/RuntimeException;

    const-string/jumbo v1, "Main thread loop unexpectedly exited"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 350
    :catchall_0
    move-exception v0

    .line 351
    invoke-static {v8, v9}, Landroid/os/Trace;->traceEnd(J)V

    .line 350
    throw v0

    .line 361
    :catch_0
    move-exception v6

    .line 362
    .local v6, "ex":Ljava/lang/Throwable;
    :try_start_2
    const-string/jumbo v0, "System"

    const-string/jumbo v1, "******************************************"

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 363
    const-string/jumbo v0, "System"

    const-string/jumbo v1, "************ Failure starting system services"

    invoke-static {v0, v1, v6}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 364
    throw v6
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 365
    .end local v6    # "ex":Ljava/lang/Throwable;
    :catchall_1
    move-exception v0

    .line 366
    invoke-static {v8, v9}, Landroid/os/Trace;->traceEnd(J)V

    .line 365
    throw v0
.end method

.method private startBootstrapServices()V
    .locals 14

    .prologue
    const/4 v8, 0x1

    const/4 v9, 0x0

    const-wide/32 v12, 0x80000

    .line 444
    iget-object v7, p0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v10, Lcom/android/server/pm/Installer;

    invoke-virtual {v7, v10}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    move-result-object v3

    check-cast v3, Lcom/android/server/pm/Installer;

    .line 447
    .local v3, "installer":Lcom/android/server/pm/Installer;
    iget-object v7, p0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    .line 448
    const-class v10, Lcom/android/server/am/ActivityManagerService$Lifecycle;

    .line 447
    invoke-virtual {v7, v10}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    move-result-object v7

    check-cast v7, Lcom/android/server/am/ActivityManagerService$Lifecycle;

    invoke-virtual {v7}, Lcom/android/server/am/ActivityManagerService$Lifecycle;->getService()Lcom/android/server/am/ActivityManagerService;

    move-result-object v7

    iput-object v7, p0, Lcom/android/server/SystemServer;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    .line 449
    iget-object v7, p0, Lcom/android/server/SystemServer;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    iget-object v10, p0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    invoke-virtual {v7, v10}, Lcom/android/server/am/ActivityManagerService;->setSystemServiceManager(Lcom/android/server/SystemServiceManager;)V

    .line 450
    iget-object v7, p0, Lcom/android/server/SystemServer;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v7, v3}, Lcom/android/server/am/ActivityManagerService;->setInstaller(Lcom/android/server/pm/Installer;)V

    .line 456
    iget-object v7, p0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v10, Lcom/android/server/power/PowerManagerService;

    invoke-virtual {v7, v10}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    move-result-object v7

    check-cast v7, Lcom/android/server/power/PowerManagerService;

    iput-object v7, p0, Lcom/android/server/SystemServer;->mPowerManagerService:Lcom/android/server/power/PowerManagerService;

    .line 460
    const-string/jumbo v7, "InitPowerManagement"

    invoke-static {v12, v13, v7}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 461
    iget-object v7, p0, Lcom/android/server/SystemServer;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v7}, Lcom/android/server/am/ActivityManagerService;->initPowerManagement()V

    .line 462
    invoke-static {v12, v13}, Landroid/os/Trace;->traceEnd(J)V

    .line 467
    iget-object v7, p0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v10, Lcom/android/server/lights/MiuiLightsService;

    invoke-virtual {v7, v10}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 471
    iget-object v7, p0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v10, Lcom/android/server/display/DisplayManagerService;

    invoke-virtual {v7, v10}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    move-result-object v7

    check-cast v7, Lcom/android/server/display/DisplayManagerService;

    iput-object v7, p0, Lcom/android/server/SystemServer;->mDisplayManagerService:Lcom/android/server/display/DisplayManagerService;

    .line 474
    iget-object v7, p0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const/16 v10, 0x64

    invoke-virtual {v7, v10}, Lcom/android/server/SystemServiceManager;->startBootPhase(I)V

    .line 477
    const-string/jumbo v7, "vold.decrypt"

    invoke-static {v7}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 479
    .local v0, "cryptState":Ljava/lang/String;
    const-string/jumbo v7, "ro.alarm_boot"

    invoke-static {v7, v9}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v7

    iput-boolean v7, p0, Lcom/android/server/SystemServer;->mIsAlarmBoot:Z

    .line 480
    const-string/jumbo v7, "trigger_restart_min_framework"

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_3

    .line 481
    const-string/jumbo v7, "SystemServer"

    const-string/jumbo v10, "Detected encryption in progress - only parsing core apps"

    invoke-static {v7, v10}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 482
    iput-boolean v8, p0, Lcom/android/server/SystemServer;->mOnlyCore:Z

    .line 494
    :cond_0
    :goto_0
    invoke-static {}, Lcom/android/internal/os/RegionalizationEnvironment;->isSupported()Z

    move-result v7

    if-eqz v7, :cond_1

    .line 495
    const-string/jumbo v7, "SystemServer"

    const-string/jumbo v10, "Regionalization Service"

    invoke-static {v7, v10}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 496
    new-instance v6, Lcom/android/server/os/RegionalizationService;

    invoke-direct {v6}, Lcom/android/server/os/RegionalizationService;-><init>()V

    .line 497
    .local v6, "regionalizationService":Lcom/android/server/os/RegionalizationService;
    const-string/jumbo v7, "regionalization"

    invoke-static {v7, v6}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 500
    .end local v6    # "regionalizationService":Lcom/android/server/os/RegionalizationService;
    :cond_1
    iget-object v7, p0, Lcom/android/server/SystemServer;->mSystemContext:Landroid/content/Context;

    iget-boolean v10, p0, Lcom/android/server/SystemServer;->mOnlyCore:Z

    invoke-static {v7, v10}, Lcom/android/server/SystemServerInjector;->addExtraServicesBeforePMS(Landroid/content/Context;Z)V

    .line 502
    const-string/jumbo v7, "StartPackageManagerService"

    invoke-static {v7}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    .line 504
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    .line 505
    .local v4, "pmsStartTime":J
    iget-object v10, p0, Lcom/android/server/SystemServer;->mSystemContext:Landroid/content/Context;

    .line 506
    iget v7, p0, Lcom/android/server/SystemServer;->mFactoryTestMode:I

    if-eqz v7, :cond_5

    move v7, v8

    :goto_1
    iget-boolean v8, p0, Lcom/android/server/SystemServer;->mOnlyCore:Z

    .line 505
    invoke-static {v10, v3, v7, v8}, Lcom/android/server/pm/PackageManagerService;->main(Landroid/content/Context;Lcom/android/server/pm/Installer;ZZ)Lcom/android/server/pm/PackageManagerService;

    move-result-object v7

    iput-object v7, p0, Lcom/android/server/SystemServer;->mPackageManagerService:Lcom/android/server/pm/PackageManagerService;

    .line 509
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v10

    .line 508
    invoke-static {v4, v5, v10, v11}, Lcom/android/server/SystemServerInjector;->markPmsScan(JJ)V

    .line 510
    iget-object v7, p0, Lcom/android/server/SystemServer;->mPackageManagerService:Lcom/android/server/pm/PackageManagerService;

    invoke-virtual {v7}, Lcom/android/server/pm/PackageManagerService;->isFirstBoot()Z

    move-result v7

    iput-boolean v7, p0, Lcom/android/server/SystemServer;->mFirstBoot:Z

    .line 511
    iget-object v7, p0, Lcom/android/server/SystemServer;->mSystemContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v7

    iput-object v7, p0, Lcom/android/server/SystemServer;->mPackageManager:Landroid/content/pm/PackageManager;

    .line 512
    invoke-static {v12, v13}, Landroid/os/Trace;->traceEnd(J)V

    .line 517
    iget-boolean v7, p0, Lcom/android/server/SystemServer;->mOnlyCore:Z

    if-nez v7, :cond_2

    .line 518
    const-string/jumbo v7, "config.disable_otadexopt"

    invoke-static {v7, v9}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    .line 520
    .local v1, "disableOtaDexopt":Z
    if-nez v1, :cond_2

    .line 521
    const-string/jumbo v7, "StartOtaDexOptService"

    invoke-static {v7}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    .line 523
    :try_start_0
    iget-object v7, p0, Lcom/android/server/SystemServer;->mSystemContext:Landroid/content/Context;

    iget-object v8, p0, Lcom/android/server/SystemServer;->mPackageManagerService:Lcom/android/server/pm/PackageManagerService;

    invoke-static {v7, v8}, Lcom/android/server/pm/OtaDexoptService;->main(Landroid/content/Context;Lcom/android/server/pm/PackageManagerService;)Lcom/android/server/pm/OtaDexoptService;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 527
    invoke-static {v12, v13}, Landroid/os/Trace;->traceEnd(J)V

    .line 532
    .end local v1    # "disableOtaDexopt":Z
    :cond_2
    :goto_2
    const-string/jumbo v7, "StartUserManagerService"

    invoke-static {v7}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    .line 533
    iget-object v7, p0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v8, Lcom/android/server/pm/UserManagerService$LifeCycle;

    invoke-virtual {v7, v8}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 534
    invoke-static {v12, v13}, Landroid/os/Trace;->traceEnd(J)V

    .line 537
    iget-object v7, p0, Lcom/android/server/SystemServer;->mSystemContext:Landroid/content/Context;

    invoke-static {v7}, Lcom/android/server/AttributeCache;->init(Landroid/content/Context;)V

    .line 540
    iget-object v7, p0, Lcom/android/server/SystemServer;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v7}, Lcom/android/server/am/ActivityManagerService;->setSystemProcess()V

    .line 546
    invoke-static {}, Lcom/android/server/SystemServerInitThreadPool;->get()Lcom/android/server/SystemServerInitThreadPool;

    move-result-object v7

    new-instance v8, Lcom/android/server/SystemServer$-void_startBootstrapServices__LambdaImpl0;

    invoke-direct {v8}, Lcom/android/server/SystemServer$-void_startBootstrapServices__LambdaImpl0;-><init>()V

    .line 550
    const-string/jumbo v9, "StartSensorService"

    .line 546
    invoke-virtual {v7, v8, v9}, Lcom/android/server/SystemServerInitThreadPool;->submit(Ljava/lang/Runnable;Ljava/lang/String;)Ljava/util/concurrent/Future;

    move-result-object v7

    iput-object v7, p0, Lcom/android/server/SystemServer;->mSensorServiceStart:Ljava/util/concurrent/Future;

    .line 440
    return-void

    .line 483
    .end local v4    # "pmsStartTime":J
    :cond_3
    const-string/jumbo v7, "1"

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_4

    .line 484
    const-string/jumbo v7, "SystemServer"

    const-string/jumbo v10, "Device encrypted - only parsing core apps"

    invoke-static {v7, v10}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 485
    iput-boolean v8, p0, Lcom/android/server/SystemServer;->mOnlyCore:Z

    goto/16 :goto_0

    .line 486
    :cond_4
    iget-boolean v7, p0, Lcom/android/server/SystemServer;->mIsAlarmBoot:Z

    if-eqz v7, :cond_0

    .line 491
    iput-boolean v8, p0, Lcom/android/server/SystemServer;->mOnlyCore:Z

    goto/16 :goto_0

    .restart local v4    # "pmsStartTime":J
    :cond_5
    move v7, v9

    .line 506
    goto/16 :goto_1

    .line 524
    .restart local v1    # "disableOtaDexopt":Z
    :catch_0
    move-exception v2

    .line 525
    .local v2, "e":Ljava/lang/Throwable;
    :try_start_1
    const-string/jumbo v7, "starting OtaDexOptService"

    invoke-direct {p0, v7, v2}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 527
    invoke-static {v12, v13}, Landroid/os/Trace;->traceEnd(J)V

    goto :goto_2

    .line 526
    .end local v2    # "e":Ljava/lang/Throwable;
    :catchall_0
    move-exception v7

    .line 527
    invoke-static {v12, v13}, Landroid/os/Trace;->traceEnd(J)V

    .line 526
    throw v7
.end method

.method private startCoreServices()V
    .locals 2

    .prologue
    .line 558
    iget-object v0, p0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v1, Lcom/android/server/BatteryService;

    invoke-virtual {v0, v1}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 561
    iget-object v0, p0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v1, Lcom/android/server/usage/UsageStatsService;

    invoke-virtual {v0, v1}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 562
    iget-object v1, p0, Lcom/android/server/SystemServer;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    .line 563
    const-class v0, Landroid/app/usage/UsageStatsManagerInternal;

    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/usage/UsageStatsManagerInternal;

    .line 562
    invoke-virtual {v1, v0}, Lcom/android/server/am/ActivityManagerService;->setUsageStatsManager(Landroid/app/usage/UsageStatsManagerInternal;)V

    .line 566
    iget-object v0, p0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v1, Lcom/android/server/webkit/WebViewUpdateService;

    invoke-virtual {v0, v1}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    move-result-object v0

    check-cast v0, Lcom/android/server/webkit/WebViewUpdateService;

    iput-object v0, p0, Lcom/android/server/SystemServer;->mWebViewUpdateService:Lcom/android/server/webkit/WebViewUpdateService;

    .line 556
    return-void
.end method

.method private startOtherServices()V
    .locals 98

    .prologue
    .line 574
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/SystemServer;->mSystemContext:Landroid/content/Context;

    .line 575
    .local v6, "context":Landroid/content/Context;
    const/16 v86, 0x0

    .line 576
    .local v86, "vibrator":Lcom/android/server/VibratorService;
    const/16 v67, 0x0

    .line 577
    .local v67, "mountService":Landroid/os/storage/IMountService;
    const/16 v68, 0x0

    .line 578
    .local v68, "networkManagement":Lcom/android/server/NetworkManagementService;
    const/16 v73, 0x0

    .line 579
    .local v73, "networkStats":Lcom/android/server/net/NetworkStatsService;
    const/16 v69, 0x0

    .line 580
    .local v69, "networkPolicy":Lcom/android/server/net/NetworkPolicyManagerService;
    const/16 v29, 0x0

    .line 581
    .local v29, "connectivity":Lcom/android/server/ConnectivityService;
    const/16 v71, 0x0

    .line 582
    .local v71, "networkScore":Lcom/android/server/NetworkScoreService;
    const/16 v80, 0x0

    .line 583
    .local v80, "serviceDiscovery":Lcom/android/server/NsdService;
    const/16 v95, 0x0

    .line 584
    .local v95, "wm":Lcom/android/server/wm/WindowManagerService;
    const/16 v78, 0x0

    .line 585
    .local v78, "serial":Lcom/android/server/SerialService;
    const/16 v74, 0x0

    .line 586
    .local v74, "networkTimeUpdater":Lcom/android/server/NetworkTimeUpdateService;
    const/16 v26, 0x0

    .line 587
    .local v26, "commonTimeMgmtService":Lcom/android/server/CommonTimeManagementService;
    const/16 v56, 0x0

    .line 588
    .local v56, "inputManager":Lcom/android/server/input/InputManagerService;
    const/16 v84, 0x0

    .line 589
    .local v84, "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    const/16 v31, 0x0

    .line 590
    .local v31, "consumerIr":Lcom/android/server/ConsumerIrService;
    const/16 v20, 0x0

    .line 591
    .local v20, "mmsService":Lcom/android/server/MmsServiceBroker;
    const/16 v53, 0x0

    .line 592
    .local v53, "hardwarePropertiesService":Lcom/android/server/HardwarePropertiesManagerService;
    const/16 v93, 0x0

    .line 593
    .local v93, "wigigP2pService":Ljava/lang/Object;
    const/16 v94, 0x0

    .line 595
    .local v94, "wigigService":Ljava/lang/Object;
    const-string/jumbo v4, "config.disable_storage"

    const/4 v5, 0x0

    invoke-static {v4, v5}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v46

    .line 596
    .local v46, "disableStorage":Z
    const-string/jumbo v4, "config.disable_bluetooth"

    const/4 v5, 0x0

    invoke-static {v4, v5}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v36

    .line 597
    .local v36, "disableBluetooth":Z
    const-string/jumbo v4, "config.disable_location"

    const/4 v5, 0x0

    invoke-static {v4, v5}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v37

    .line 598
    .local v37, "disableLocation":Z
    const-string/jumbo v4, "config.disable_systemui"

    const/4 v5, 0x0

    invoke-static {v4, v5}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v47

    .line 599
    .local v47, "disableSystemUI":Z
    const-string/jumbo v4, "config.disable_noncore"

    const/4 v5, 0x0

    invoke-static {v4, v5}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v41

    .line 600
    .local v41, "disableNonCoreServices":Z
    const-string/jumbo v4, "config.disable_network"

    const/4 v5, 0x0

    invoke-static {v4, v5}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v39

    .line 601
    .local v39, "disableNetwork":Z
    const-string/jumbo v4, "config.disable_networktime"

    const/4 v5, 0x0

    invoke-static {v4, v5}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v40

    .line 602
    .local v40, "disableNetworkTime":Z
    const-string/jumbo v4, "config.disable_rtt"

    const/4 v5, 0x0

    invoke-static {v4, v5}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v42

    .line 603
    .local v42, "disableRtt":Z
    const-string/jumbo v4, "config.disable_mediaproj"

    .line 604
    const/4 v5, 0x0

    .line 603
    invoke-static {v4, v5}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v38

    .line 605
    .local v38, "disableMediaProjection":Z
    const-string/jumbo v4, "config.disable_serial"

    const/4 v5, 0x0

    invoke-static {v4, v5}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v45

    .line 606
    .local v45, "disableSerial":Z
    const-string/jumbo v4, "config.disable_searchmanager"

    .line 607
    const/4 v5, 0x0

    .line 606
    invoke-static {v4, v5}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v44

    .line 608
    .local v44, "disableSearchManager":Z
    const-string/jumbo v4, "config.disable_trustmanager"

    .line 609
    const/4 v5, 0x0

    .line 608
    invoke-static {v4, v5}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v49

    .line 610
    .local v49, "disableTrustManager":Z
    const-string/jumbo v4, "config.disable_textservices"

    const/4 v5, 0x0

    invoke-static {v4, v5}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v48

    .line 611
    .local v48, "disableTextServices":Z
    const-string/jumbo v4, "config.disable_samplingprof"

    .line 612
    const/4 v5, 0x0

    .line 611
    invoke-static {v4, v5}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v43

    .line 613
    .local v43, "disableSamplingProfiler":Z
    const-string/jumbo v4, "ro.kernel.qemu"

    invoke-static {v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v5, "1"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v58

    .line 614
    .local v58, "isEmulator":Z
    const-string/jumbo v4, "persist.wigig.enable"

    const/4 v5, 0x0

    invoke-static {v4, v5}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v52

    .line 617
    .local v52, "enableWigig":Z
    :try_start_0
    const-string/jumbo v4, "SystemServer"

    const-string/jumbo v5, "Reading configuration..."

    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 618
    invoke-static {}, Lcom/android/server/SystemConfig;->getInstance()Lcom/android/server/SystemConfig;

    .line 620
    const-string/jumbo v4, "StartSchedulingPolicyService"

    invoke-static {v4}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    .line 621
    const-string/jumbo v4, "scheduling_policy"

    new-instance v5, Lcom/android/server/os/SchedulingPolicyService;

    invoke-direct {v5}, Lcom/android/server/os/SchedulingPolicyService;-><init>()V

    invoke-static {v4, v5}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 622
    const-wide/32 v4, 0x80000

    invoke-static {v4, v5}, Landroid/os/Trace;->traceEnd(J)V

    .line 624
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v5, Lcom/android/server/telecom/TelecomLoaderService;

    invoke-virtual {v4, v5}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 626
    const-string/jumbo v4, "StartTelephonyRegistry"

    invoke-static {v4}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    .line 627
    new-instance v85, Lcom/android/server/TelephonyRegistry;

    move-object/from16 v0, v85

    invoke-direct {v0, v6}, Lcom/android/server/TelephonyRegistry;-><init>(Landroid/content/Context;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_33

    .line 628
    .end local v84    # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    .local v85, "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    :try_start_1
    const-string/jumbo v4, "telephony.registry"

    move-object/from16 v0, v85

    invoke-static {v4, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 629
    const-wide/32 v4, 0x80000

    invoke-static {v4, v5}, Landroid/os/Trace;->traceEnd(J)V

    .line 631
    const-string/jumbo v4, "StartEntropyMixer"

    invoke-static {v4}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    .line 632
    new-instance v4, Lcom/android/server/EntropyMixer;

    invoke-direct {v4, v6}, Lcom/android/server/EntropyMixer;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/android/server/SystemServer;->mEntropyMixer:Lcom/android/server/EntropyMixer;

    .line 633
    const-wide/32 v4, 0x80000

    invoke-static {v4, v5}, Landroid/os/Trace;->traceEnd(J)V

    .line 635
    invoke-virtual {v6}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/android/server/SystemServer;->mContentResolver:Landroid/content/ContentResolver;

    .line 637
    const-string/jumbo v4, "SystemServer"

    const-string/jumbo v5, "Camera Service"

    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 638
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v5, Lcom/android/server/camera/CameraService;

    invoke-virtual {v4, v5}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 641
    const-string/jumbo v4, "StartAccountManagerService"

    invoke-static {v4}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    .line 642
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-string/jumbo v5, "com.android.server.accounts.AccountManagerService$Lifecycle"

    invoke-virtual {v4, v5}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/String;)Lcom/android/server/SystemService;

    .line 643
    const-wide/32 v4, 0x80000

    invoke-static {v4, v5}, Landroid/os/Trace;->traceEnd(J)V

    .line 645
    const-string/jumbo v4, "StartContentService"

    invoke-static {v4}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    .line 646
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-string/jumbo v5, "com.android.server.content.ContentService$Lifecycle"

    invoke-virtual {v4, v5}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/String;)Lcom/android/server/SystemService;

    .line 647
    const-wide/32 v4, 0x80000

    invoke-static {v4, v5}, Landroid/os/Trace;->traceEnd(J)V

    .line 649
    const-string/jumbo v4, "InstallSystemProviders"

    invoke-static {v4}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    .line 650
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/SystemServer;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v4}, Lcom/android/server/am/ActivityManagerService;->installSystemProviders()V

    .line 651
    const-wide/32 v4, 0x80000

    invoke-static {v4, v5}, Landroid/os/Trace;->traceEnd(J)V

    .line 653
    const-string/jumbo v4, "StartVibratorService"

    invoke-static {v4}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    .line 654
    new-instance v87, Lcom/android/server/VibratorService;

    move-object/from16 v0, v87

    invoke-direct {v0, v6}, Lcom/android/server/VibratorService;-><init>(Landroid/content/Context;)V
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_34

    .line 655
    .local v87, "vibrator":Lcom/android/server/VibratorService;
    :try_start_2
    const-string/jumbo v4, "vibrator"

    .end local v86    # "vibrator":Lcom/android/server/VibratorService;
    move-object/from16 v0, v87

    invoke-static {v4, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 656
    const-wide/32 v4, 0x80000

    invoke-static {v4, v5}, Landroid/os/Trace;->traceEnd(J)V

    .line 658
    const-string/jumbo v4, "StartConsumerIrService"

    invoke-static {v4}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    .line 659
    new-instance v32, Lcom/android/server/ConsumerIrService;

    move-object/from16 v0, v32

    invoke-direct {v0, v6}, Lcom/android/server/ConsumerIrService;-><init>(Landroid/content/Context;)V
    :try_end_2
    .catch Ljava/lang/RuntimeException; {:try_start_2 .. :try_end_2} :catch_35

    .line 660
    .local v32, "consumerIr":Lcom/android/server/ConsumerIrService;
    :try_start_3
    const-string/jumbo v4, "consumer_ir"

    .end local v31    # "consumerIr":Lcom/android/server/ConsumerIrService;
    move-object/from16 v0, v32

    invoke-static {v4, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 661
    const-wide/32 v4, 0x80000

    invoke-static {v4, v5}, Landroid/os/Trace;->traceEnd(J)V

    .line 663
    const-string/jumbo v4, "StartAlarmManagerService"

    invoke-static {v4}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    .line 664
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v5, Lcom/android/server/AlarmManagerService;

    invoke-virtual {v4, v5}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 665
    const-wide/32 v4, 0x80000

    invoke-static {v4, v5}, Landroid/os/Trace;->traceEnd(J)V

    .line 667
    const-string/jumbo v4, "InitWatchdog"

    invoke-static {v4}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    .line 668
    invoke-static {}, Lcom/android/server/Watchdog;->getInstance()Lcom/android/server/Watchdog;

    move-result-object v89

    .line 669
    .local v89, "watchdog":Lcom/android/server/Watchdog;
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/SystemServer;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    move-object/from16 v0, v89

    invoke-virtual {v0, v6, v4}, Lcom/android/server/Watchdog;->init(Landroid/content/Context;Lcom/android/server/am/ActivityManagerService;)V

    .line 670
    const-wide/32 v4, 0x80000

    invoke-static {v4, v5}, Landroid/os/Trace;->traceEnd(J)V

    .line 672
    const-string/jumbo v4, "StartInputManagerService"

    invoke-static {v4}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    .line 675
    new-instance v57, Lcom/android/server/input/MiuiInputManagerService;

    const/4 v4, 0x0

    move-object/from16 v0, v57

    invoke-direct {v0, v6, v4}, Lcom/android/server/input/MiuiInputManagerService;-><init>(Landroid/content/Context;Landroid/os/Handler;)V
    :try_end_3
    .catch Ljava/lang/RuntimeException; {:try_start_3 .. :try_end_3} :catch_36

    .line 676
    .local v57, "inputManager":Lcom/android/server/input/InputManagerService;
    const-wide/32 v4, 0x80000

    :try_start_4
    invoke-static {v4, v5}, Landroid/os/Trace;->traceEnd(J)V

    .line 678
    .end local v56    # "inputManager":Lcom/android/server/input/InputManagerService;
    const-string/jumbo v4, "StartWindowManagerService"

    invoke-static {v4}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    .line 680
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/SystemServer;->mSensorServiceStart:Ljava/util/concurrent/Future;

    const-string/jumbo v5, "StartSensorService"

    invoke-static {v4, v5}, Lcom/android/internal/util/ConcurrentUtils;->waitForFutureNoInterrupt(Ljava/util/concurrent/Future;Ljava/lang/String;)Ljava/lang/Object;

    .line 681
    const/4 v4, 0x0

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/android/server/SystemServer;->mSensorServiceStart:Ljava/util/concurrent/Future;

    .line 683
    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/server/SystemServer;->mFactoryTestMode:I

    const/4 v5, 0x1

    if-eq v4, v5, :cond_39

    const/4 v4, 0x1

    move v5, v4

    .line 684
    :goto_0
    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/android/server/SystemServer;->mFirstBoot:Z

    if-eqz v4, :cond_3a

    const/4 v4, 0x0

    :goto_1
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/server/SystemServer;->mOnlyCore:Z

    move/from16 v96, v0

    .line 682
    move-object/from16 v0, v57

    move/from16 v1, v96

    invoke-static {v6, v0, v5, v4, v1}, Lcom/android/server/wm/WindowManagerService;->main(Landroid/content/Context;Lcom/android/server/input/InputManagerService;ZZZ)Lcom/android/server/wm/WindowManagerService;

    move-result-object v95

    .line 685
    .local v95, "wm":Lcom/android/server/wm/WindowManagerService;
    const-string/jumbo v4, "window"

    move-object/from16 v0, v95

    invoke-static {v4, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 686
    const-string/jumbo v4, "input"

    move-object/from16 v0, v57

    invoke-static {v4, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 687
    const-wide/32 v4, 0x80000

    invoke-static {v4, v5}, Landroid/os/Trace;->traceEnd(J)V

    .line 689
    const-string/jumbo v4, "StartVrManagerService"

    invoke-static {v4}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    .line 690
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v5, Lcom/android/server/vr/VrManagerService;

    invoke-virtual {v4, v5}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 691
    const-wide/32 v4, 0x80000

    invoke-static {v4, v5}, Landroid/os/Trace;->traceEnd(J)V

    .line 693
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/SystemServer;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    move-object/from16 v0, v95

    invoke-virtual {v4, v0}, Lcom/android/server/am/ActivityManagerService;->setWindowManager(Lcom/android/server/wm/WindowManagerService;)V

    .line 695
    invoke-virtual/range {v95 .. v95}, Lcom/android/server/wm/WindowManagerService;->getInputMonitor()Lcom/android/server/wm/InputMonitor;

    move-result-object v4

    move-object/from16 v0, v57

    invoke-virtual {v0, v4}, Lcom/android/server/input/InputManagerService;->setWindowManagerCallbacks(Lcom/android/server/input/InputManagerService$WindowManagerCallbacks;)V

    .line 696
    invoke-virtual/range {v57 .. v57}, Lcom/android/server/input/InputManagerService;->start()V

    .line 699
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/SystemServer;->mDisplayManagerService:Lcom/android/server/display/DisplayManagerService;

    invoke-virtual {v4}, Lcom/android/server/display/DisplayManagerService;->windowManagerAndInputReady()V

    .line 703
    if-eqz v58, :cond_3b

    .line 704
    const-string/jumbo v4, "SystemServer"

    const-string/jumbo v5, "No Bluetooth Service (emulator)"

    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 716
    :goto_2
    const-string/jumbo v4, "ConnectivityMetricsLoggerService"

    invoke-static {v4}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    .line 717
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v5, Lcom/android/server/connectivity/MetricsLoggerService;

    invoke-virtual {v4, v5}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 718
    const-wide/32 v4, 0x80000

    invoke-static {v4, v5}, Landroid/os/Trace;->traceEnd(J)V

    .line 720
    const-string/jumbo v4, "IpConnectivityMetrics"

    invoke-static {v4}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    .line 721
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v5, Lcom/android/server/connectivity/IpConnectivityMetrics;

    invoke-virtual {v4, v5}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 722
    const-wide/32 v4, 0x80000

    invoke-static {v4, v5}, Landroid/os/Trace;->traceEnd(J)V

    .line 724
    const-string/jumbo v4, "PinnerService"

    invoke-static {v4}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    .line 725
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v5, Lcom/android/server/PinnerService;

    invoke-virtual {v4, v5}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 726
    const-wide/32 v4, 0x80000

    invoke-static {v4, v5}, Landroid/os/Trace;->traceEnd(J)V
    :try_end_4
    .catch Ljava/lang/RuntimeException; {:try_start_4 .. :try_end_4} :catch_0

    move-object/from16 v31, v32

    .end local v32    # "consumerIr":Lcom/android/server/ConsumerIrService;
    .local v31, "consumerIr":Lcom/android/server/ConsumerIrService;
    move-object/from16 v84, v85

    .end local v85    # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    .local v84, "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    move-object/from16 v56, v57

    .end local v57    # "inputManager":Lcom/android/server/input/InputManagerService;
    .local v56, "inputManager":Lcom/android/server/input/InputManagerService;
    move-object/from16 v86, v87

    .line 732
    .end local v31    # "consumerIr":Lcom/android/server/ConsumerIrService;
    .end local v56    # "inputManager":Lcom/android/server/input/InputManagerService;
    .end local v84    # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    .end local v87    # "vibrator":Lcom/android/server/VibratorService;
    .end local v89    # "watchdog":Lcom/android/server/Watchdog;
    .end local v95    # "wm":Lcom/android/server/wm/WindowManagerService;
    :goto_3
    const/16 v81, 0x0

    .line 733
    .local v81, "statusBar":Lcom/android/server/statusbar/StatusBarManagerService;
    const/16 v76, 0x0

    .line 734
    .local v76, "notification":Landroid/app/INotificationManager;
    const/16 v59, 0x0

    .line 735
    .local v59, "location":Lcom/android/server/LocationManagerService;
    const/16 v33, 0x0

    .line 736
    .local v33, "countryDetector":Lcom/android/server/CountryDetectorService;
    const/16 v61, 0x0

    .line 737
    .local v61, "lockSettings":Lcom/android/internal/widget/ILockSettings;
    const/16 v21, 0x0

    .line 738
    .local v21, "atlas":Lcom/android/server/AssetAtlasService;
    const/16 v63, 0x0

    .line 741
    .local v63, "mediaRouter":Lcom/android/server/media/MediaRouterService;
    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/server/SystemServer;->mFactoryTestMode:I

    const/4 v5, 0x1

    if-eq v4, v5, :cond_0

    .line 742
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v5, Lcom/android/server/InputMethodManagerService$Lifecycle;

    invoke-virtual {v4, v5}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 744
    const-string/jumbo v4, "StartAccessibilityManagerService"

    invoke-static {v4}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    .line 746
    :try_start_5
    const-string/jumbo v4, "accessibility"

    .line 747
    new-instance v5, Lcom/android/server/accessibility/AccessibilityManagerService;

    invoke-direct {v5, v6}, Lcom/android/server/accessibility/AccessibilityManagerService;-><init>(Landroid/content/Context;)V

    .line 746
    invoke-static {v4, v5}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_5
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_5} :catch_1

    .line 751
    :goto_4
    const-wide/32 v4, 0x80000

    invoke-static {v4, v5}, Landroid/os/Trace;->traceEnd(J)V

    .line 755
    :cond_0
    :try_start_6
    invoke-virtual/range {v95 .. v95}, Lcom/android/server/wm/WindowManagerService;->displayReady()V
    :try_end_6
    .catch Ljava/lang/Throwable; {:try_start_6 .. :try_end_6} :catch_2

    .line 760
    :goto_5
    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/server/SystemServer;->mFactoryTestMode:I

    const/4 v5, 0x1

    if-eq v4, v5, :cond_1

    .line 761
    if-nez v46, :cond_1

    .line 762
    const-string/jumbo v4, "0"

    const-string/jumbo v5, "system_init.startmountservice"

    invoke-static {v5}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3f

    .line 779
    .end local v67    # "mountService":Landroid/os/storage/IMountService;
    :cond_1
    :goto_6
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v5, Lcom/android/server/UiModeManagerService;

    invoke-virtual {v4, v5}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 781
    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/android/server/SystemServer;->mOnlyCore:Z

    if-nez v4, :cond_2

    .line 782
    const-string/jumbo v4, "UpdatePackagesIfNeeded"

    const-wide/32 v96, 0x80000

    move-wide/from16 v0, v96

    invoke-static {v0, v1, v4}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 784
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v24

    .line 786
    .local v24, "bootDexoptStartTime":J
    :try_start_7
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/SystemServer;->mPackageManagerService:Lcom/android/server/pm/PackageManagerService;

    invoke-virtual {v4}, Lcom/android/server/pm/PackageManagerService;->updatePackagesIfNeeded()V
    :try_end_7
    .catch Ljava/lang/Throwable; {:try_start_7 .. :try_end_7} :catch_4

    .line 792
    :goto_7
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    .line 791
    move-wide/from16 v0, v24

    invoke-static {v0, v1, v4, v5}, Lcom/android/server/SystemServerInjector;->markBootDexopt(JJ)V

    .line 794
    const-wide/32 v4, 0x80000

    invoke-static {v4, v5}, Landroid/os/Trace;->traceEnd(J)V

    .line 797
    .end local v24    # "bootDexoptStartTime":J
    :cond_2
    const-string/jumbo v4, "PerformFstrimIfNeeded"

    const-wide/32 v96, 0x80000

    move-wide/from16 v0, v96

    invoke-static {v0, v1, v4}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 799
    :try_start_8
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/SystemServer;->mPackageManagerService:Lcom/android/server/pm/PackageManagerService;

    invoke-virtual {v4}, Lcom/android/server/pm/PackageManagerService;->performFstrimIfNeeded()V
    :try_end_8
    .catch Ljava/lang/Throwable; {:try_start_8 .. :try_end_8} :catch_5

    .line 803
    :goto_8
    const-wide/32 v4, 0x80000

    invoke-static {v4, v5}, Landroid/os/Trace;->traceEnd(J)V

    .line 805
    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/server/SystemServer;->mFactoryTestMode:I

    const/4 v5, 0x1

    if-eq v4, v5, :cond_30

    .line 806
    if-nez v41, :cond_4

    .line 807
    const-string/jumbo v4, "StartLockSettingsService"

    invoke-static {v4}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    .line 809
    :try_start_9
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-string/jumbo v5, "com.android.server.LockSettingsService$Lifecycle"

    invoke-virtual {v4, v5}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/String;)Lcom/android/server/SystemService;

    .line 811
    const-string/jumbo v4, "lock_settings"

    invoke-static {v4}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v4

    .line 810
    invoke-static {v4}, Lcom/android/internal/widget/ILockSettings$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/widget/ILockSettings;
    :try_end_9
    .catch Ljava/lang/Throwable; {:try_start_9 .. :try_end_9} :catch_6

    move-result-object v61

    .line 815
    .end local v61    # "lockSettings":Lcom/android/internal/widget/ILockSettings;
    :goto_9
    const-wide/32 v4, 0x80000

    invoke-static {v4, v5}, Landroid/os/Trace;->traceEnd(J)V

    .line 817
    const-string/jumbo v4, "ro.frp.pst"

    invoke-static {v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v5, ""

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_3

    .line 818
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v5, Lcom/android/server/PersistentDataBlockService;

    invoke-virtual {v4, v5}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 821
    :cond_3
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v5, Lcom/android/server/DeviceIdleController;

    invoke-virtual {v4, v5}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 825
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v5, Lcom/android/server/devicepolicy/DevicePolicyManagerService$Lifecycle;

    invoke-virtual {v4, v5}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    :cond_4
    if-nez v47, :cond_5

    const-string v4, "StartStatusBarManagerService"

    invoke-static {v4}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    :try_start_a
    new-instance v82, Lcom/android/server/statusbar/StatusBarManagerService;

    move-object/from16 v0, v82

    move-object/from16 v1, v95

    invoke-direct {v0, v6, v1}, Lcom/android/server/statusbar/StatusBarManagerService;-><init>(Landroid/content/Context;Lcom/android/server/wm/WindowManagerService;)V
    :try_end_a
    .catch Ljava/lang/Throwable; {:try_start_a .. :try_end_a} :catch_7

    .line 832
    .end local v81    # "statusBar":Lcom/android/server/statusbar/StatusBarManagerService;
    .local v82, "statusBar":Lcom/android/server/statusbar/StatusBarManagerService;
    :try_start_b
    const-string/jumbo v4, "statusbar"

    move-object/from16 v0, v82

    invoke-static {v4, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_b
    .catch Ljava/lang/Throwable; {:try_start_b .. :try_end_b} :catch_32

    move-object/from16 v81, v82

    .line 836
    .end local v82    # "statusBar":Lcom/android/server/statusbar/StatusBarManagerService;
    :goto_a
    const-wide/32 v4, 0x80000

    invoke-static {v4, v5}, Landroid/os/Trace;->traceEnd(J)V

    .line 839
    :cond_5
    if-nez v41, :cond_6

    .line 840
    const-string/jumbo v4, "StartClipboardService"

    invoke-static {v4}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    .line 842
    :try_start_c
    const-string/jumbo v4, "clipboard"

    .line 843
    new-instance v5, Lcom/android/server/clipboard/ClipboardService;

    invoke-direct {v5, v6}, Lcom/android/server/clipboard/ClipboardService;-><init>(Landroid/content/Context;)V

    .line 842
    invoke-static {v4, v5}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_c
    .catch Ljava/lang/Throwable; {:try_start_c .. :try_end_c} :catch_8

    .line 847
    :goto_b
    const-wide/32 v4, 0x80000

    invoke-static {v4, v5}, Landroid/os/Trace;->traceEnd(J)V

    .line 850
    :cond_6
    if-nez v39, :cond_7

    .line 851
    const-string/jumbo v4, "StartNetworkManagementService"

    invoke-static {v4}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    .line 853
    :try_start_d
    invoke-static {v6}, Lcom/android/server/NetworkManagementService;->create(Landroid/content/Context;)Lcom/android/server/NetworkManagementService;

    move-result-object v68

    .line 854
    .local v68, "networkManagement":Lcom/android/server/NetworkManagementService;
    const-string/jumbo v4, "network_management"

    move-object/from16 v0, v68

    invoke-static {v4, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_d
    .catch Ljava/lang/Throwable; {:try_start_d .. :try_end_d} :catch_9

    .line 858
    .end local v68    # "networkManagement":Lcom/android/server/NetworkManagementService;
    :goto_c
    const-wide/32 v4, 0x80000

    invoke-static {v4, v5}, Landroid/os/Trace;->traceEnd(J)V

    .line 861
    :cond_7
    if-nez v41, :cond_8

    if-eqz v48, :cond_40

    .line 865
    :cond_8
    :goto_d
    if-nez v39, :cond_d

    .line 866
    const-string/jumbo v4, "StartNetworkScoreService"

    invoke-static {v4}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    .line 868
    :try_start_e
    new-instance v72, Lcom/android/server/NetworkScoreService;

    move-object/from16 v0, v72

    invoke-direct {v0, v6}, Lcom/android/server/NetworkScoreService;-><init>(Landroid/content/Context;)V
    :try_end_e
    .catch Ljava/lang/Throwable; {:try_start_e .. :try_end_e} :catch_a

    .line 869
    .end local v71    # "networkScore":Lcom/android/server/NetworkScoreService;
    .local v72, "networkScore":Lcom/android/server/NetworkScoreService;
    :try_start_f
    const-string/jumbo v4, "network_score"

    move-object/from16 v0, v72

    invoke-static {v4, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_f
    .catch Ljava/lang/Throwable; {:try_start_f .. :try_end_f} :catch_31

    move-object/from16 v71, v72

    .line 873
    .end local v72    # "networkScore":Lcom/android/server/NetworkScoreService;
    :goto_e
    const-wide/32 v4, 0x80000

    invoke-static {v4, v5}, Landroid/os/Trace;->traceEnd(J)V

    .line 875
    const-string/jumbo v4, "StartNetworkStatsService"

    invoke-static {v4}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    .line 877
    :try_start_10
    move-object/from16 v0, v68

    invoke-static {v6, v0}, Lcom/android/server/net/NetworkStatsService;->create(Landroid/content/Context;Landroid/os/INetworkManagementService;)Lcom/android/server/net/NetworkStatsService;

    move-result-object v73

    .line 878
    .local v73, "networkStats":Lcom/android/server/net/NetworkStatsService;
    const-string/jumbo v4, "netstats"

    move-object/from16 v0, v73

    invoke-static {v4, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_10
    .catch Ljava/lang/Throwable; {:try_start_10 .. :try_end_10} :catch_b

    .line 882
    .end local v73    # "networkStats":Lcom/android/server/net/NetworkStatsService;
    :goto_f
    const-wide/32 v4, 0x80000

    invoke-static {v4, v5}, Landroid/os/Trace;->traceEnd(J)V

    .line 884
    const-string/jumbo v4, "StartNetworkPolicyManagerService"

    invoke-static {v4}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    .line 886
    :try_start_11
    new-instance v70, Lcom/android/server/net/NetworkPolicyManagerService;

    .line 887
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/SystemServer;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    .line 886
    move-object/from16 v0, v70

    move-object/from16 v1, v73

    move-object/from16 v2, v68

    invoke-direct {v0, v6, v4, v1, v2}, Lcom/android/server/net/NetworkPolicyManagerService;-><init>(Landroid/content/Context;Landroid/app/IActivityManager;Landroid/net/INetworkStatsService;Landroid/os/INetworkManagementService;)V
    :try_end_11
    .catch Ljava/lang/Throwable; {:try_start_11 .. :try_end_11} :catch_c

    .line 888
    .end local v69    # "networkPolicy":Lcom/android/server/net/NetworkPolicyManagerService;
    .local v70, "networkPolicy":Lcom/android/server/net/NetworkPolicyManagerService;
    :try_start_12
    const-string/jumbo v4, "netpolicy"

    move-object/from16 v0, v70

    invoke-static {v4, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_12
    .catch Ljava/lang/Throwable; {:try_start_12 .. :try_end_12} :catch_30

    move-object/from16 v69, v70

    .line 892
    .end local v70    # "networkPolicy":Lcom/android/server/net/NetworkPolicyManagerService;
    :goto_10
    const-wide/32 v4, 0x80000

    invoke-static {v4, v5}, Landroid/os/Trace;->traceEnd(J)V

    .line 894
    invoke-virtual {v6}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    const-string/jumbo v5, "android.hardware.wifi.nan"

    invoke-virtual {v4, v5}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_41

    .line 895
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-string/jumbo v5, "com.android.server.wifi.nan.WifiNanService"

    invoke-virtual {v4, v5}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/String;)Lcom/android/server/SystemService;

    .line 899
    :goto_11
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-string/jumbo v5, "com.android.server.wifi.p2p.WifiP2pService"

    invoke-virtual {v4, v5}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/String;)Lcom/android/server/SystemService;

    .line 900
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-string/jumbo v5, "com.android.server.wifi.WifiService"

    invoke-virtual {v4, v5}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/String;)Lcom/android/server/SystemService;

    .line 901
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    .line 902
    const-string/jumbo v5, "com.android.server.wifi.scanner.WifiScanningService"

    .line 901
    invoke-virtual {v4, v5}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/String;)Lcom/android/server/SystemService;

    .line 904
    if-nez v42, :cond_9

    .line 905
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-string/jumbo v5, "com.android.server.wifi.RttService"

    invoke-virtual {v4, v5}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/String;)Lcom/android/server/SystemService;

    .line 908
    :cond_9
    if-eqz v52, :cond_a

    .line 910
    :try_start_13
    const-string/jumbo v4, "SystemServer"

    const-string/jumbo v5, "Wigig Service"

    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 912
    new-instance v91, Ldalvik/system/PathClassLoader;

    const-string/jumbo v4, "/system/framework/wigig-service.jar"

    .line 913
    const-string/jumbo v5, "/system/lib64:/system/vendor/lib64"

    .line 914
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/SystemServer;->getClass()Ljava/lang/Class;

    move-result-object v96

    invoke-virtual/range {v96 .. v96}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v96

    .line 912
    move-object/from16 v0, v91

    move-object/from16 v1, v96

    invoke-direct {v0, v4, v5, v1}, Ldalvik/system/PathClassLoader;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/ClassLoader;)V

    .line 916
    .local v91, "wigigClassLoader":Ldalvik/system/PathClassLoader;
    const-string/jumbo v4, "com.qualcomm.qti.server.wigig.p2p.WigigP2pServiceImpl"

    .line 915
    move-object/from16 v0, v91

    invoke-virtual {v0, v4}, Ldalvik/system/PathClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v92

    .line 917
    .local v92, "wigigP2pClass":Ljava/lang/Class;
    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Class;

    const-class v5, Landroid/content/Context;

    const/16 v96, 0x0

    aput-object v5, v4, v96

    move-object/from16 v0, v92

    invoke-virtual {v0, v4}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v35

    .line 918
    .local v35, "ctor":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<Ljava/lang/Class;>;"
    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object v6, v4, v5

    move-object/from16 v0, v35

    invoke-virtual {v0, v4}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v93

    .line 919
    const-string/jumbo v4, "SystemServer"

    const-string/jumbo v5, "Successfully loaded WigigP2pServiceImpl class"

    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 920
    const-string/jumbo v5, "wigigp2p"

    move-object/from16 v0, v93

    check-cast v0, Landroid/os/IBinder;

    move-object v4, v0

    invoke-static {v5, v4}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 923
    const-string/jumbo v4, "com.qualcomm.qti.server.wigig.WigigService"

    .line 922
    move-object/from16 v0, v91

    invoke-virtual {v0, v4}, Ldalvik/system/PathClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v90

    .line 924
    .local v90, "wigigClass":Ljava/lang/Class;
    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Class;

    const-class v5, Landroid/content/Context;

    const/16 v96, 0x0

    aput-object v5, v4, v96

    move-object/from16 v0, v90

    invoke-virtual {v0, v4}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v35

    .line 925
    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object v6, v4, v5

    move-object/from16 v0, v35

    invoke-virtual {v0, v4}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v94

    .line 926
    const-string/jumbo v4, "SystemServer"

    const-string/jumbo v5, "Successfully loaded WigigService class"

    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 927
    const-string/jumbo v5, "wigig"

    move-object/from16 v0, v94

    check-cast v0, Landroid/os/IBinder;

    move-object v4, v0

    invoke-static {v5, v4}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_13
    .catch Ljava/lang/Throwable; {:try_start_13 .. :try_end_13} :catch_d

    .line 933
    .end local v35    # "ctor":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<Ljava/lang/Class;>;"
    .end local v90    # "wigigClass":Ljava/lang/Class;
    .end local v91    # "wigigClassLoader":Ldalvik/system/PathClassLoader;
    .end local v92    # "wigigP2pClass":Ljava/lang/Class;
    .end local v93    # "wigigP2pService":Ljava/lang/Object;
    .end local v94    # "wigigService":Ljava/lang/Object;
    :cond_a
    :goto_12
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/SystemServer;->mPackageManager:Landroid/content/pm/PackageManager;

    const-string/jumbo v5, "android.hardware.ethernet"

    invoke-virtual {v4, v5}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_b

    .line 934
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/SystemServer;->mPackageManager:Landroid/content/pm/PackageManager;

    const-string/jumbo v5, "android.hardware.usb.host"

    invoke-virtual {v4, v5}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v4

    .line 933
    if-eqz v4, :cond_c

    .line 935
    :cond_b
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-string/jumbo v5, "com.android.server.ethernet.EthernetService"

    invoke-virtual {v4, v5}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/String;)Lcom/android/server/SystemService;

    .line 938
    :cond_c
    const-string/jumbo v4, "StartConnectivityService"

    invoke-static {v4}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    .line 940
    :try_start_14
    new-instance v30, Lcom/android/server/ConnectivityService;

    move-object/from16 v0, v30

    move-object/from16 v1, v68

    move-object/from16 v2, v73

    move-object/from16 v3, v69

    invoke-direct {v0, v6, v1, v2, v3}, Lcom/android/server/ConnectivityService;-><init>(Landroid/content/Context;Landroid/os/INetworkManagementService;Landroid/net/INetworkStatsService;Landroid/net/INetworkPolicyManager;)V
    :try_end_14
    .catch Ljava/lang/Throwable; {:try_start_14 .. :try_end_14} :catch_e

    .line 942
    .end local v29    # "connectivity":Lcom/android/server/ConnectivityService;
    .local v30, "connectivity":Lcom/android/server/ConnectivityService;
    :try_start_15
    const-string/jumbo v4, "connectivity"

    move-object/from16 v0, v30

    invoke-static {v4, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 943
    move-object/from16 v0, v73

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Lcom/android/server/net/NetworkStatsService;->bindConnectivityManager(Landroid/net/IConnectivityManager;)V

    .line 944
    move-object/from16 v0, v69

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Lcom/android/server/net/NetworkPolicyManagerService;->bindConnectivityManager(Landroid/net/IConnectivityManager;)V
    :try_end_15
    .catch Ljava/lang/Throwable; {:try_start_15 .. :try_end_15} :catch_2f

    move-object/from16 v29, v30

    .line 948
    .end local v30    # "connectivity":Lcom/android/server/ConnectivityService;
    :goto_13
    const-wide/32 v4, 0x80000

    invoke-static {v4, v5}, Landroid/os/Trace;->traceEnd(J)V

    .line 950
    const-string/jumbo v4, "StartNsdService"

    invoke-static {v4}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    .line 952
    :try_start_16
    invoke-static {v6}, Lcom/android/server/NsdService;->create(Landroid/content/Context;)Lcom/android/server/NsdService;

    move-result-object v80

    .line 954
    .local v80, "serviceDiscovery":Lcom/android/server/NsdService;
    const-string/jumbo v4, "servicediscovery"

    .line 953
    move-object/from16 v0, v80

    invoke-static {v4, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_16
    .catch Ljava/lang/Throwable; {:try_start_16 .. :try_end_16} :catch_f

    .line 958
    .end local v80    # "serviceDiscovery":Lcom/android/server/NsdService;
    :goto_14
    const-wide/32 v4, 0x80000

    invoke-static {v4, v5}, Landroid/os/Trace;->traceEnd(J)V

    .line 961
    :cond_d
    if-nez v41, :cond_e

    .line 962
    const-string/jumbo v4, "StartUpdateLockService"

    invoke-static {v4}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    .line 964
    :try_start_17
    const-string/jumbo v4, "updatelock"

    .line 965
    new-instance v5, Lcom/android/server/UpdateLockService;

    invoke-direct {v5, v6}, Lcom/android/server/UpdateLockService;-><init>(Landroid/content/Context;)V

    .line 964
    invoke-static {v4, v5}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_17
    .catch Ljava/lang/Throwable; {:try_start_17 .. :try_end_17} :catch_10

    .line 969
    :goto_15
    const-wide/32 v4, 0x80000

    invoke-static {v4, v5}, Landroid/os/Trace;->traceEnd(J)V

    .line 972
    :cond_e
    if-nez v41, :cond_f

    .line 973
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v5, Lcom/android/server/RecoverySystemService;

    invoke-virtual {v4, v5}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 981
    :cond_f
    if-eqz v67, :cond_10

    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/android/server/SystemServer;->mOnlyCore:Z

    if-eqz v4, :cond_42

    .line 990
    :cond_10
    :goto_16
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v5, Lcom/android/server/notification/NotificationManagerService;

    invoke-virtual {v4, v5}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 992
    const-string/jumbo v4, "notification"

    invoke-static {v4}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v4

    .line 991
    invoke-static {v4}, Landroid/app/INotificationManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/INotificationManager;

    move-result-object v76

    .line 993
    .local v76, "notification":Landroid/app/INotificationManager;
    move-object/from16 v0, v69

    move-object/from16 v1, v76

    invoke-virtual {v0, v1}, Lcom/android/server/net/NetworkPolicyManagerService;->bindNotificationManager(Landroid/app/INotificationManager;)V

    .line 995
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v5, Lcom/android/server/storage/DeviceStorageMonitorService;

    invoke-virtual {v4, v5}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 997
    if-nez v37, :cond_11

    .line 998
    const-string/jumbo v4, "StartLocationManagerService"

    invoke-static {v4}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    .line 1000
    :try_start_18
    new-instance v60, Lcom/android/server/LocationManagerService;

    move-object/from16 v0, v60

    invoke-direct {v0, v6}, Lcom/android/server/LocationManagerService;-><init>(Landroid/content/Context;)V
    :try_end_18
    .catch Ljava/lang/Throwable; {:try_start_18 .. :try_end_18} :catch_12

    .line 1001
    .end local v59    # "location":Lcom/android/server/LocationManagerService;
    .local v60, "location":Lcom/android/server/LocationManagerService;
    :try_start_19
    const-string/jumbo v4, "location"

    move-object/from16 v0, v60

    invoke-static {v4, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_19
    .catch Ljava/lang/Throwable; {:try_start_19 .. :try_end_19} :catch_2e

    move-object/from16 v59, v60

    .line 1005
    .end local v60    # "location":Lcom/android/server/LocationManagerService;
    :goto_17
    const-wide/32 v4, 0x80000

    invoke-static {v4, v5}, Landroid/os/Trace;->traceEnd(J)V

    .line 1007
    const-string/jumbo v4, "StartCountryDetectorService"

    invoke-static {v4}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    .line 1009
    :try_start_1a
    new-instance v34, Lcom/android/server/CountryDetectorService;

    move-object/from16 v0, v34

    invoke-direct {v0, v6}, Lcom/android/server/CountryDetectorService;-><init>(Landroid/content/Context;)V
    :try_end_1a
    .catch Ljava/lang/Throwable; {:try_start_1a .. :try_end_1a} :catch_13

    .line 1010
    .end local v33    # "countryDetector":Lcom/android/server/CountryDetectorService;
    .local v34, "countryDetector":Lcom/android/server/CountryDetectorService;
    :try_start_1b
    const-string/jumbo v4, "country_detector"

    move-object/from16 v0, v34

    invoke-static {v4, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_1b
    .catch Ljava/lang/Throwable; {:try_start_1b .. :try_end_1b} :catch_2d

    move-object/from16 v33, v34

    .line 1014
    .end local v34    # "countryDetector":Lcom/android/server/CountryDetectorService;
    :goto_18
    const-wide/32 v4, 0x80000

    invoke-static {v4, v5}, Landroid/os/Trace;->traceEnd(J)V

    .line 1017
    :cond_11
    if-nez v41, :cond_12

    if-eqz v44, :cond_43

    .line 1027
    :cond_12
    :goto_19
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v5, Lcom/android/server/DropBoxManagerService;

    invoke-virtual {v4, v5}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    if-nez v41, :cond_13

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, #android:bool@config_enableWallpaperService#t

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v4

    if-eqz v4, :cond_13

    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/android/server/SystemServer;->mIsAlarmBoot:Z

    if-eqz v4, :cond_44

    :cond_13
    :goto_1a
    const-string v4, "StartAudioService"

    invoke-static {v4}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v5, Lcom/android/server/audio/AudioService$Lifecycle;

    invoke-virtual {v4, v5}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 1038
    const-wide/32 v4, 0x80000

    invoke-static {v4, v5}, Landroid/os/Trace;->traceEnd(J)V

    .line 1040
    if-nez v41, :cond_14

    .line 1041
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v5, Lcom/android/server/DockObserver;

    invoke-virtual {v4, v5}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 1043
    invoke-virtual {v6}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    const-string/jumbo v5, "android.hardware.type.watch"

    invoke-virtual {v4, v5}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_14

    .line 1048
    :cond_14
    const-string/jumbo v4, "StartWiredAccessoryManager"

    invoke-static {v4}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    .line 1052
    :try_start_1c
    new-instance v4, Lcom/android/server/WiredAccessoryManager;

    move-object/from16 v0, v56

    invoke-direct {v4, v6, v0}, Lcom/android/server/WiredAccessoryManager;-><init>(Landroid/content/Context;Lcom/android/server/input/InputManagerService;)V

    .line 1051
    move-object/from16 v0, v56

    invoke-virtual {v0, v4}, Lcom/android/server/input/InputManagerService;->setWiredAccessoryCallbacks(Lcom/android/server/input/InputManagerService$WiredAccessoryCallbacks;)V
    :try_end_1c
    .catch Ljava/lang/Throwable; {:try_start_1c .. :try_end_1c} :catch_15

    .line 1056
    :goto_1b
    const-wide/32 v4, 0x80000

    invoke-static {v4, v5}, Landroid/os/Trace;->traceEnd(J)V

    .line 1058
    if-nez v41, :cond_19

    .line 1059
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/SystemServer;->mPackageManager:Landroid/content/pm/PackageManager;

    const-string/jumbo v5, "android.software.midi"

    invoke-virtual {v4, v5}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_15

    .line 1061
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-string/jumbo v5, "com.android.server.midi.MidiService$Lifecycle"

    invoke-virtual {v4, v5}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/String;)Lcom/android/server/SystemService;

    .line 1064
    :cond_15
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/SystemServer;->mPackageManager:Landroid/content/pm/PackageManager;

    const-string/jumbo v5, "android.hardware.usb.host"

    invoke-virtual {v4, v5}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_16

    .line 1065
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/SystemServer;->mPackageManager:Landroid/content/pm/PackageManager;

    .line 1066
    const-string/jumbo v5, "android.hardware.usb.accessory"

    .line 1065
    invoke-virtual {v4, v5}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v4

    .line 1064
    if-eqz v4, :cond_17

    .line 1068
    :cond_16
    const-string/jumbo v4, "StartUsbService"

    const-wide/32 v96, 0x80000

    move-wide/from16 v0, v96

    invoke-static {v0, v1, v4}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 1069
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-string/jumbo v5, "com.android.server.usb.UsbService$Lifecycle"

    invoke-virtual {v4, v5}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/String;)Lcom/android/server/SystemService;

    .line 1070
    const-wide/32 v4, 0x80000

    invoke-static {v4, v5}, Landroid/os/Trace;->traceEnd(J)V

    .line 1073
    :cond_17
    if-nez v45, :cond_18

    .line 1074
    const-string/jumbo v4, "StartSerialService"

    invoke-static {v4}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    .line 1077
    :try_start_1d
    new-instance v79, Lcom/android/server/SerialService;

    move-object/from16 v0, v79

    invoke-direct {v0, v6}, Lcom/android/server/SerialService;-><init>(Landroid/content/Context;)V
    :try_end_1d
    .catch Ljava/lang/Throwable; {:try_start_1d .. :try_end_1d} :catch_16

    .line 1078
    .end local v78    # "serial":Lcom/android/server/SerialService;
    .local v79, "serial":Lcom/android/server/SerialService;
    :try_start_1e
    const-string/jumbo v4, "serial"

    move-object/from16 v0, v79

    invoke-static {v4, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_1e
    .catch Ljava/lang/Throwable; {:try_start_1e .. :try_end_1e} :catch_2c

    move-object/from16 v78, v79

    .line 1082
    .end local v79    # "serial":Lcom/android/server/SerialService;
    :goto_1c
    const-wide/32 v4, 0x80000

    invoke-static {v4, v5}, Landroid/os/Trace;->traceEnd(J)V

    .line 1086
    :cond_18
    const-string/jumbo v4, "StartHardwarePropertiesManagerService"

    .line 1085
    const-wide/32 v96, 0x80000

    move-wide/from16 v0, v96

    invoke-static {v0, v1, v4}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 1088
    :try_start_1f
    new-instance v54, Lcom/android/server/HardwarePropertiesManagerService;

    move-object/from16 v0, v54

    invoke-direct {v0, v6}, Lcom/android/server/HardwarePropertiesManagerService;-><init>(Landroid/content/Context;)V
    :try_end_1f
    .catch Ljava/lang/Throwable; {:try_start_1f .. :try_end_1f} :catch_17

    .line 1089
    .end local v53    # "hardwarePropertiesService":Lcom/android/server/HardwarePropertiesManagerService;
    .local v54, "hardwarePropertiesService":Lcom/android/server/HardwarePropertiesManagerService;
    :try_start_20
    const-string/jumbo v4, "hardware_properties"

    move-object/from16 v0, v54

    invoke-static {v4, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_20
    .catch Ljava/lang/Throwable; {:try_start_20 .. :try_end_20} :catch_2b

    move-object/from16 v53, v54

    .line 1094
    .end local v54    # "hardwarePropertiesService":Lcom/android/server/HardwarePropertiesManagerService;
    :goto_1d
    const-wide/32 v4, 0x80000

    invoke-static {v4, v5}, Landroid/os/Trace;->traceEnd(J)V

    .line 1098
    :cond_19
    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/android/server/SystemServer;->mOnlyCore:Z

    invoke-static {v6, v4}, Lcom/android/server/SystemServerInjector;->addExtraServices(Landroid/content/Context;Z)V

    .line 1100
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v5, Lcom/android/server/twilight/TwilightService;

    invoke-virtual {v4, v5}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 1102
    invoke-static {v6}, Lcom/android/internal/app/NightDisplayController;->isAvailable(Landroid/content/Context;)Z

    move-result v4

    if-eqz v4, :cond_1a

    .line 1103
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v5, Lcom/android/server/display/NightDisplayService;

    invoke-virtual {v4, v5}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 1106
    :cond_1a
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v5, Lcom/android/server/job/JobSchedulerService;

    invoke-virtual {v4, v5}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 1108
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v5, Lcom/android/server/soundtrigger/SoundTriggerService;

    invoke-virtual {v4, v5}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 1110
    if-nez v41, :cond_20

    .line 1111
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/SystemServer;->mPackageManager:Landroid/content/pm/PackageManager;

    const-string/jumbo v5, "android.software.backup"

    invoke-virtual {v4, v5}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1b

    .line 1112
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-string/jumbo v5, "com.android.server.backup.BackupManagerService$Lifecycle"

    invoke-virtual {v4, v5}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/String;)Lcom/android/server/SystemService;

    .line 1115
    :cond_1b
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/SystemServer;->mPackageManager:Landroid/content/pm/PackageManager;

    const-string/jumbo v5, "android.software.app_widgets"

    invoke-virtual {v4, v5}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_1c

    .line 1116
    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, #android:bool@config_enableAppWidgetService#t

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v4

    .line 1115
    if-eqz v4, :cond_1d

    .line 1117
    :cond_1c
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-string/jumbo v5, "com.android.server.appwidget.AppWidgetService"

    invoke-virtual {v4, v5}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/String;)Lcom/android/server/SystemService;

    .line 1120
    :cond_1d
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/SystemServer;->mPackageManager:Landroid/content/pm/PackageManager;

    const-string/jumbo v5, "android.software.voice_recognizers"

    invoke-virtual {v4, v5}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1e

    .line 1121
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-string/jumbo v5, "com.android.server.voiceinteraction.VoiceInteractionManagerService"

    invoke-virtual {v4, v5}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/String;)Lcom/android/server/SystemService;

    .line 1124
    :cond_1e
    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-static {v4}, Lcom/android/server/GestureLauncherService;->isGestureLauncherEnabled(Landroid/content/res/Resources;)Z

    move-result v4

    if-eqz v4, :cond_1f

    .line 1125
    const-string/jumbo v4, "SystemServer"

    const-string/jumbo v5, "Gesture Launcher Service"

    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1126
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v5, Lcom/android/server/GestureLauncherService;

    invoke-virtual {v4, v5}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 1128
    :cond_1f
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v5, Lcom/android/server/SensorNotificationService;

    invoke-virtual {v4, v5}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 1129
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v5, Lcom/android/server/ContextHubSystemService;

    invoke-virtual {v4, v5}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 1132
    :cond_20
    const-string/jumbo v4, "StartDiskStatsService"

    invoke-static {v4}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    .line 1134
    :try_start_21
    const-string/jumbo v4, "diskstats"

    new-instance v5, Lcom/android/server/DiskStatsService;

    invoke-direct {v5, v6}, Lcom/android/server/DiskStatsService;-><init>(Landroid/content/Context;)V

    invoke-static {v4, v5}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_21
    .catch Ljava/lang/Throwable; {:try_start_21 .. :try_end_21} :catch_18

    .line 1138
    :goto_1e
    const-wide/32 v4, 0x80000

    invoke-static {v4, v5}, Landroid/os/Trace;->traceEnd(J)V

    .line 1140
    if-nez v43, :cond_21

    .line 1141
    const-string/jumbo v4, "StartSamplingProfilerService"

    invoke-static {v4}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    .line 1147
    :try_start_22
    const-string/jumbo v4, "samplingprofiler"

    .line 1148
    new-instance v5, Lcom/android/server/SamplingProfilerService;

    invoke-direct {v5, v6}, Lcom/android/server/SamplingProfilerService;-><init>(Landroid/content/Context;)V

    .line 1147
    invoke-static {v4, v5}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_22
    .catch Ljava/lang/Throwable; {:try_start_22 .. :try_end_22} :catch_19

    .line 1152
    :goto_1f
    const-wide/32 v4, 0x80000

    invoke-static {v4, v5}, Landroid/os/Trace;->traceEnd(J)V

    .line 1155
    :cond_21
    if-nez v39, :cond_22

    if-eqz v40, :cond_45

    .line 1166
    .end local v74    # "networkTimeUpdater":Lcom/android/server/NetworkTimeUpdateService;
    :cond_22
    :goto_20
    const-string/jumbo v4, "StartCommonTimeManagementService"

    invoke-static {v4}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    .line 1168
    :try_start_23
    new-instance v27, Lcom/android/server/CommonTimeManagementService;

    move-object/from16 v0, v27

    invoke-direct {v0, v6}, Lcom/android/server/CommonTimeManagementService;-><init>(Landroid/content/Context;)V
    :try_end_23
    .catch Ljava/lang/Throwable; {:try_start_23 .. :try_end_23} :catch_1b

    .line 1169
    .end local v26    # "commonTimeMgmtService":Lcom/android/server/CommonTimeManagementService;
    .local v27, "commonTimeMgmtService":Lcom/android/server/CommonTimeManagementService;
    :try_start_24
    const-string/jumbo v4, "commontime_management"

    move-object/from16 v0, v27

    invoke-static {v4, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_24
    .catch Ljava/lang/Throwable; {:try_start_24 .. :try_end_24} :catch_29

    move-object/from16 v26, v27

    .line 1173
    .end local v27    # "commonTimeMgmtService":Lcom/android/server/CommonTimeManagementService;
    :goto_21
    const-wide/32 v4, 0x80000

    invoke-static {v4, v5}, Landroid/os/Trace;->traceEnd(J)V

    .line 1175
    if-nez v39, :cond_23

    .line 1176
    const-string/jumbo v4, "CertBlacklister"

    invoke-static {v4}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    .line 1178
    :try_start_25
    new-instance v23, Lcom/android/server/CertBlacklister;

    move-object/from16 v0, v23

    invoke-direct {v0, v6}, Lcom/android/server/CertBlacklister;-><init>(Landroid/content/Context;)V
    :try_end_25
    .catch Ljava/lang/Throwable; {:try_start_25 .. :try_end_25} :catch_1c

    .line 1182
    :goto_22
    const-wide/32 v4, 0x80000

    invoke-static {v4, v5}, Landroid/os/Trace;->traceEnd(J)V

    .line 1185
    :cond_23
    if-nez v39, :cond_24

    if-eqz v41, :cond_46

    .line 1190
    :cond_24
    :goto_23
    if-nez v41, :cond_25

    .line 1192
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v5, Lcom/android/server/dreams/DreamManagerService;

    invoke-virtual {v4, v5}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    :cond_25
    if-nez v41, :cond_26

    const-string v4, "StartAssetAtlasService"

    invoke-static {v4}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    :try_start_26
    new-instance v22, Lcom/android/server/AssetAtlasService;

    move-object/from16 v0, v22

    invoke-direct {v0, v6}, Lcom/android/server/AssetAtlasService;-><init>(Landroid/content/Context;)V
    :try_end_26
    .catch Ljava/lang/Throwable; {:try_start_26 .. :try_end_26} :catch_1d

    .line 1199
    .end local v21    # "atlas":Lcom/android/server/AssetAtlasService;
    .local v22, "atlas":Lcom/android/server/AssetAtlasService;
    :try_start_27
    const-string/jumbo v4, "assetatlas"

    move-object/from16 v0, v22

    invoke-static {v4, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_27
    .catch Ljava/lang/Throwable; {:try_start_27 .. :try_end_27} :catch_28

    move-object/from16 v21, v22

    .end local v22    # "atlas":Lcom/android/server/AssetAtlasService;
    :goto_24
    const-wide/32 v4, 0x80000

    invoke-static {v4, v5}, Landroid/os/Trace;->traceEnd(J)V

    :cond_26
    if-nez v41, :cond_27

    const-string v4, "graphicsstats"

    new-instance v5, Lcom/android/server/GraphicsStatsService;

    invoke-direct {v5, v6}, Lcom/android/server/GraphicsStatsService;-><init>(Landroid/content/Context;)V

    invoke-static {v4, v5}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    :cond_27
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/SystemServer;->mPackageManager:Landroid/content/pm/PackageManager;

    const-string v5, "android.software.print"

    invoke-virtual {v4, v5}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_28

    .line 1212
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-string/jumbo v5, "com.android.server.print.PrintManagerService"

    invoke-virtual {v4, v5}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/String;)Lcom/android/server/SystemService;

    .line 1215
    :cond_28
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v5, Lcom/android/server/restrictions/RestrictionsManagerService;

    invoke-virtual {v4, v5}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 1217
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v5, Lcom/android/server/media/MediaSessionService;

    invoke-virtual {v4, v5}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 1219
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/SystemServer;->mPackageManager:Landroid/content/pm/PackageManager;

    const-string/jumbo v5, "android.hardware.hdmi.cec"

    invoke-virtual {v4, v5}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_29

    .line 1220
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v5, Lcom/android/server/hdmi/HdmiControlService;

    invoke-virtual {v4, v5}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 1223
    :cond_29
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/SystemServer;->mPackageManager:Landroid/content/pm/PackageManager;

    const-string/jumbo v5, "android.software.live_tv"

    invoke-virtual {v4, v5}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2a

    .line 1224
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v5, Lcom/android/server/tv/TvInputManagerService;

    invoke-virtual {v4, v5}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 1227
    :cond_2a
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/SystemServer;->mPackageManager:Landroid/content/pm/PackageManager;

    const-string/jumbo v5, "android.software.picture_in_picture"

    invoke-virtual {v4, v5}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2b

    .line 1228
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v5, Lcom/android/server/media/MediaResourceMonitorService;

    invoke-virtual {v4, v5}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 1231
    :cond_2b
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/SystemServer;->mPackageManager:Landroid/content/pm/PackageManager;

    const-string/jumbo v5, "android.software.leanback"

    invoke-virtual {v4, v5}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2c

    .line 1232
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v5, Lcom/android/server/tv/TvRemoteService;

    invoke-virtual {v4, v5}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 1235
    :cond_2c
    if-nez v41, :cond_2f

    .line 1236
    const-string/jumbo v4, "StartMediaRouterService"

    invoke-static {v4}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    .line 1238
    :try_start_28
    new-instance v64, Lcom/android/server/media/MediaRouterService;

    move-object/from16 v0, v64

    invoke-direct {v0, v6}, Lcom/android/server/media/MediaRouterService;-><init>(Landroid/content/Context;)V
    :try_end_28
    .catch Ljava/lang/Throwable; {:try_start_28 .. :try_end_28} :catch_1e

    .line 1239
    .end local v63    # "mediaRouter":Lcom/android/server/media/MediaRouterService;
    .local v64, "mediaRouter":Lcom/android/server/media/MediaRouterService;
    :try_start_29
    const-string/jumbo v4, "media_router"

    move-object/from16 v0, v64

    invoke-static {v4, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_29
    .catch Ljava/lang/Throwable; {:try_start_29 .. :try_end_29} :catch_27

    move-object/from16 v63, v64

    .line 1243
    .end local v64    # "mediaRouter":Lcom/android/server/media/MediaRouterService;
    :goto_25
    const-wide/32 v4, 0x80000

    invoke-static {v4, v5}, Landroid/os/Trace;->traceEnd(J)V

    .line 1245
    if-nez v49, :cond_2d

    .line 1246
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v5, Lcom/android/server/trust/TrustManagerService;

    invoke-virtual {v4, v5}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 1249
    :cond_2d
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/SystemServer;->mPackageManager:Landroid/content/pm/PackageManager;

    const-string/jumbo v5, "android.hardware.fingerprint"

    invoke-virtual {v4, v5}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2e

    .line 1250
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v5, Lcom/android/server/fingerprint/FingerprintService;

    invoke-virtual {v4, v5}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 1253
    :cond_2e
    const-string/jumbo v4, "StartBackgroundDexOptService"

    invoke-static {v4}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    .line 1255
    :try_start_2a
    invoke-static {v6}, Lcom/android/server/pm/BackgroundDexOptService;->schedule(Landroid/content/Context;)V
    :try_end_2a
    .catch Ljava/lang/Throwable; {:try_start_2a .. :try_end_2a} :catch_1f

    .line 1259
    :goto_26
    const-wide/32 v4, 0x80000

    invoke-static {v4, v5}, Landroid/os/Trace;->traceEnd(J)V

    .line 1262
    :cond_2f
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v5, Lcom/android/server/pm/ShortcutService$Lifecycle;

    invoke-virtual {v4, v5}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 1264
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v5, Lcom/android/server/pm/LauncherAppsService;

    invoke-virtual {v4, v5}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 1267
    .end local v76    # "notification":Landroid/app/INotificationManager;
    :cond_30
    if-nez v41, :cond_31

    if-eqz v38, :cond_47

    .line 1271
    :cond_31
    :goto_27
    invoke-virtual {v6}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    const-string/jumbo v5, "android.hardware.type.watch"

    invoke-virtual {v4, v5}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_32

    .line 1284
    :cond_32
    invoke-virtual/range {v95 .. v95}, Lcom/android/server/wm/WindowManagerService;->detectSafeMode()Z

    move-result v77

    .line 1285
    .local v77, "safeMode":Z
    if-eqz v77, :cond_48

    .line 1286
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/SystemServer;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v4}, Lcom/android/server/am/ActivityManagerService;->enterSafeMode()V

    .line 1288
    invoke-static {}, Ldalvik/system/VMRuntime;->getRuntime()Ldalvik/system/VMRuntime;

    move-result-object v4

    invoke-virtual {v4}, Ldalvik/system/VMRuntime;->disableJitCompilation()V

    .line 1295
    :goto_28
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v5, Lcom/android/server/MmsServiceBroker;

    invoke-virtual {v4, v5}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    move-result-object v20

    .end local v20    # "mmsService":Lcom/android/server/MmsServiceBroker;
    check-cast v20, Lcom/android/server/MmsServiceBroker;

    .local v20, "mmsService":Lcom/android/server/MmsServiceBroker;

    move-object/from16 v0, p0

    move-object/from16 v1, v88

    invoke-static {v0, v1}, Lcom/android/server/FlymeSystemServerInjector;->addFlymeServices(Lcom/android/server/SystemServer;Lcom/android/server/wm/WindowManagerService;)V

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/SystemServer;->mContentResolver:Landroid/content/ContentResolver;

    const-string v5, "device_provisioned"

    const/16 v96, 0x0

    move/from16 v0, v96

    invoke-static {v4, v5, v0}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    if-eqz v4, :cond_33

    .line 1298
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/SystemServer;->mSystemContext:Landroid/content/Context;

    invoke-static {v4}, Landroid/os/UserManager;->isDeviceInDemoMode(Landroid/content/Context;)Z

    move-result v4

    .line 1297
    if-eqz v4, :cond_34

    .line 1299
    :cond_33
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v5, Lcom/android/server/retaildemo/RetailDemoModeService;

    invoke-virtual {v4, v5}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 1304
    :cond_34
    const-string/jumbo v4, "MakeVibratorServiceReady"

    const-wide/32 v96, 0x80000

    move-wide/from16 v0, v96

    invoke-static {v0, v1, v4}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 1306
    :try_start_2b
    invoke-virtual/range {v86 .. v86}, Lcom/android/server/VibratorService;->systemReady()V
    :try_end_2b
    .catch Ljava/lang/Throwable; {:try_start_2b .. :try_end_2b} :catch_20

    .line 1310
    :goto_29
    const-wide/32 v4, 0x80000

    invoke-static {v4, v5}, Landroid/os/Trace;->traceEnd(J)V

    .line 1312
    const-string/jumbo v4, "MakeLockSettingsServiceReady"

    const-wide/32 v96, 0x80000

    move-wide/from16 v0, v96

    invoke-static {v0, v1, v4}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 1313
    if-eqz v61, :cond_35

    .line 1315
    :try_start_2c
    invoke-interface/range {v61 .. v61}, Lcom/android/internal/widget/ILockSettings;->systemReady()V
    :try_end_2c
    .catch Ljava/lang/Throwable; {:try_start_2c .. :try_end_2c} :catch_21

    .line 1320
    :cond_35
    :goto_2a
    const-wide/32 v4, 0x80000

    invoke-static {v4, v5}, Landroid/os/Trace;->traceEnd(J)V

    .line 1323
    invoke-static {}, Lcom/android/server/SystemServerInjector;->systemReadyBeforePMS()V

    .line 1326
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const/16 v5, 0x1e0

    invoke-virtual {v4, v5}, Lcom/android/server/SystemServiceManager;->startBootPhase(I)V

    .line 1328
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const/16 v5, 0x1f4

    invoke-virtual {v4, v5}, Lcom/android/server/SystemServiceManager;->startBootPhase(I)V

    .line 1330
    const-string/jumbo v4, "MakeWindowManagerServiceReady"

    const-wide/32 v96, 0x80000

    move-wide/from16 v0, v96

    invoke-static {v0, v1, v4}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 1334
    if-eqz v52, :cond_36

    .line 1336
    :try_start_2d
    const-string/jumbo v4, "SystemServer"

    const-string/jumbo v5, "calling onBootPhase for Wigig Services"

    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1337
    invoke-virtual/range {v93 .. v93}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v92

    .line 1338
    .restart local v92    # "wigigP2pClass":Ljava/lang/Class;
    const-string/jumbo v4, "onBootPhase"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Class;

    sget-object v96, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const/16 v97, 0x0

    aput-object v96, v5, v97

    move-object/from16 v0, v92

    invoke-virtual {v0, v4, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v62

    .line 1339
    .local v62, "m":Ljava/lang/reflect/Method;
    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    new-instance v5, Ljava/lang/Integer;

    .line 1340
    const/16 v96, 0x1f4

    .line 1339
    move/from16 v0, v96

    invoke-direct {v5, v0}, Ljava/lang/Integer;-><init>(I)V

    const/16 v96, 0x0

    aput-object v5, v4, v96

    move-object/from16 v0, v62

    move-object/from16 v1, v93

    invoke-virtual {v0, v1, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 1342
    invoke-virtual/range {v94 .. v94}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v90

    .line 1343
    .restart local v90    # "wigigClass":Ljava/lang/Class;
    const-string/jumbo v4, "onBootPhase"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Class;

    sget-object v96, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const/16 v97, 0x0

    aput-object v96, v5, v97

    move-object/from16 v0, v90

    invoke-virtual {v0, v4, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v62

    .line 1344
    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    new-instance v5, Ljava/lang/Integer;

    .line 1345
    const/16 v96, 0x1f4

    .line 1344
    move/from16 v0, v96

    invoke-direct {v5, v0}, Ljava/lang/Integer;-><init>(I)V

    const/16 v96, 0x0

    aput-object v5, v4, v96

    move-object/from16 v0, v62

    move-object/from16 v1, v94

    invoke-virtual {v0, v1, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_2d
    .catch Ljava/lang/Throwable; {:try_start_2d .. :try_end_2d} :catch_22

    .line 1352
    .end local v62    # "m":Ljava/lang/reflect/Method;
    .end local v90    # "wigigClass":Ljava/lang/Class;
    .end local v92    # "wigigP2pClass":Ljava/lang/Class;
    :cond_36
    :goto_2b
    :try_start_2e
    invoke-virtual/range {v95 .. v95}, Lcom/android/server/wm/WindowManagerService;->systemReady()V
    :try_end_2e
    .catch Ljava/lang/Throwable; {:try_start_2e .. :try_end_2e} :catch_23

    .line 1356
    :goto_2c
    const-wide/32 v4, 0x80000

    invoke-static {v4, v5}, Landroid/os/Trace;->traceEnd(J)V

    .line 1358
    if-eqz v77, :cond_37

    .line 1359
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/SystemServer;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v4}, Lcom/android/server/am/ActivityManagerService;->showSafeModeOverlay()V

    .line 1365
    :cond_37
    invoke-virtual/range {v95 .. v95}, Lcom/android/server/wm/WindowManagerService;->computeNewConfiguration()Landroid/content/res/Configuration;

    move-result-object v28

    .line 1366
    .local v28, "config":Landroid/content/res/Configuration;
    new-instance v65, Landroid/util/DisplayMetrics;

    invoke-direct/range {v65 .. v65}, Landroid/util/DisplayMetrics;-><init>()V

    .line 1367
    .local v65, "metrics":Landroid/util/DisplayMetrics;
    const-string/jumbo v4, "window"

    invoke-virtual {v6, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v88

    check-cast v88, Landroid/view/WindowManager;

    .line 1368
    .local v88, "w":Landroid/view/WindowManager;
    invoke-interface/range {v88 .. v88}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v4

    move-object/from16 v0, v65

    invoke-virtual {v4, v0}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 1369
    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    move-object/from16 v0, v28

    move-object/from16 v1, v65

    invoke-virtual {v4, v0, v1}, Landroid/content/res/Resources;->updateConfiguration(Landroid/content/res/Configuration;Landroid/util/DisplayMetrics;)V

    .line 1372
    invoke-virtual {v6}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v83

    .line 1373
    .local v83, "systemTheme":Landroid/content/res/Resources$Theme;
    invoke-virtual/range {v83 .. v83}, Landroid/content/res/Resources$Theme;->getChangingConfigurations()I

    move-result v4

    if-eqz v4, :cond_38

    .line 1374
    invoke-virtual/range {v83 .. v83}, Landroid/content/res/Resources$Theme;->rebase()V

    .line 1377
    :cond_38
    const-string/jumbo v4, "MakePowerManagerServiceReady"

    const-wide/32 v96, 0x80000

    move-wide/from16 v0, v96

    invoke-static {v0, v1, v4}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 1380
    :try_start_2f
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/SystemServer;->mPowerManagerService:Lcom/android/server/power/PowerManagerService;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/SystemServer;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v5}, Lcom/android/server/am/ActivityManagerService;->getAppOpsService()Lcom/android/internal/app/IAppOpsService;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/android/server/power/PowerManagerService;->systemReady(Lcom/android/internal/app/IAppOpsService;)V

    .line 1381
    const-wide/32 v4, 0x80000

    invoke-static {v4, v5}, Landroid/os/Trace;->traceEnd(J)V
    :try_end_2f
    .catch Ljava/lang/Throwable; {:try_start_2f .. :try_end_2f} :catch_24

    .line 1385
    :goto_2d
    const-wide/32 v4, 0x80000

    invoke-static {v4, v5}, Landroid/os/Trace;->traceEnd(J)V

    .line 1387
    const-string/jumbo v4, "MakePackageManagerServiceReady"

    const-wide/32 v96, 0x80000

    move-wide/from16 v0, v96

    invoke-static {v0, v1, v4}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 1389
    :try_start_30
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/SystemServer;->mPackageManagerService:Lcom/android/server/pm/PackageManagerService;

    invoke-virtual {v4}, Lcom/android/server/pm/PackageManagerService;->systemReady()V
    :try_end_30
    .catch Ljava/lang/Throwable; {:try_start_30 .. :try_end_30} :catch_25

    .line 1393
    :goto_2e
    const-wide/32 v4, 0x80000

    invoke-static {v4, v5}, Landroid/os/Trace;->traceEnd(J)V

    .line 1395
    const-string/jumbo v4, "MakeDisplayManagerServiceReady"

    const-wide/32 v96, 0x80000

    move-wide/from16 v0, v96

    invoke-static {v0, v1, v4}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 1398
    :try_start_31
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/SystemServer;->mDisplayManagerService:Lcom/android/server/display/DisplayManagerService;

    move-object/from16 v0, p0

    iget-boolean v5, v0, Lcom/android/server/SystemServer;->mOnlyCore:Z

    move/from16 v0, v77

    invoke-virtual {v4, v0, v5}, Lcom/android/server/display/DisplayManagerService;->systemReady(ZZ)V
    :try_end_31
    .catch Ljava/lang/Throwable; {:try_start_31 .. :try_end_31} :catch_26

    .line 1402
    :goto_2f
    const-wide/32 v4, 0x80000

    invoke-static {v4, v5}, Landroid/os/Trace;->traceEnd(J)V

    .line 1405
    move-object/from16 v8, v68

    .line 1406
    .local v8, "networkManagementF":Lcom/android/server/NetworkManagementService;
    move-object/from16 v10, v73

    .line 1407
    .local v10, "networkStatsF":Lcom/android/server/net/NetworkStatsService;
    move-object/from16 v9, v69

    .line 1408
    .local v9, "networkPolicyF":Lcom/android/server/net/NetworkPolicyManagerService;
    move-object/from16 v11, v29

    .line 1409
    .local v11, "connectivityF":Lcom/android/server/ConnectivityService;
    move-object/from16 v7, v71

    .line 1410
    .local v7, "networkScoreF":Lcom/android/server/NetworkScoreService;
    move-object/from16 v12, v59

    .line 1411
    .local v12, "locationF":Lcom/android/server/LocationManagerService;
    move-object/from16 v13, v33

    .line 1412
    .local v13, "countryDetectorF":Lcom/android/server/CountryDetectorService;
    move-object/from16 v14, v74

    .line 1413
    .local v14, "networkTimeUpdaterF":Lcom/android/server/NetworkTimeUpdateService;
    move-object/from16 v15, v26

    .line 1414
    .local v15, "commonTimeMgmtServiceF":Lcom/android/server/CommonTimeManagementService;
    move-object/from16 v16, v21

    .line 1415
    .local v16, "atlasF":Lcom/android/server/AssetAtlasService;
    move-object/from16 v17, v56

    .line 1416
    .local v17, "inputManagerF":Lcom/android/server/input/InputManagerService;
    move-object/from16 v18, v84

    .line 1417
    .local v18, "telephonyRegistryF":Lcom/android/server/TelephonyRegistry;
    move-object/from16 v19, v63

    .line 1418
    .local v19, "mediaRouterF":Lcom/android/server/media/MediaRouterService;
    move-object/from16 v66, v20

    .line 1425
    .local v66, "mmsServiceF":Lcom/android/server/MmsServiceBroker;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/SystemServer;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    move-object/from16 v96, v0

    new-instance v4, Lcom/android/server/SystemServer$2;

    move-object/from16 v5, p0

    invoke-direct/range {v4 .. v20}, Lcom/android/server/SystemServer$2;-><init>(Lcom/android/server/SystemServer;Landroid/content/Context;Lcom/android/server/NetworkScoreService;Lcom/android/server/NetworkManagementService;Lcom/android/server/net/NetworkPolicyManagerService;Lcom/android/server/net/NetworkStatsService;Lcom/android/server/ConnectivityService;Lcom/android/server/LocationManagerService;Lcom/android/server/CountryDetectorService;Lcom/android/server/NetworkTimeUpdateService;Lcom/android/server/CommonTimeManagementService;Lcom/android/server/AssetAtlasService;Lcom/android/server/input/InputManagerService;Lcom/android/server/TelephonyRegistry;Lcom/android/server/media/MediaRouterService;Lcom/android/server/MmsServiceBroker;)V

    move-object/from16 v0, v96

    invoke-virtual {v0, v4}, Lcom/android/server/am/ActivityManagerService;->systemReady(Ljava/lang/Runnable;)V

    .line 573
    return-void

    .line 683
    .end local v7    # "networkScoreF":Lcom/android/server/NetworkScoreService;
    .end local v8    # "networkManagementF":Lcom/android/server/NetworkManagementService;
    .end local v9    # "networkPolicyF":Lcom/android/server/net/NetworkPolicyManagerService;
    .end local v10    # "networkStatsF":Lcom/android/server/net/NetworkStatsService;
    .end local v11    # "connectivityF":Lcom/android/server/ConnectivityService;
    .end local v12    # "locationF":Lcom/android/server/LocationManagerService;
    .end local v13    # "countryDetectorF":Lcom/android/server/CountryDetectorService;
    .end local v14    # "networkTimeUpdaterF":Lcom/android/server/NetworkTimeUpdateService;
    .end local v15    # "commonTimeMgmtServiceF":Lcom/android/server/CommonTimeManagementService;
    .end local v16    # "atlasF":Lcom/android/server/AssetAtlasService;
    .end local v17    # "inputManagerF":Lcom/android/server/input/InputManagerService;
    .end local v18    # "telephonyRegistryF":Lcom/android/server/TelephonyRegistry;
    .end local v19    # "mediaRouterF":Lcom/android/server/media/MediaRouterService;
    .end local v28    # "config":Landroid/content/res/Configuration;
    .end local v65    # "metrics":Landroid/util/DisplayMetrics;
    .end local v66    # "mmsServiceF":Lcom/android/server/MmsServiceBroker;
    .end local v77    # "safeMode":Z
    .end local v83    # "systemTheme":Landroid/content/res/Resources$Theme;
    .end local v88    # "w":Landroid/view/WindowManager;
    .local v20, "mmsService":Lcom/android/server/MmsServiceBroker;
    .restart local v26    # "commonTimeMgmtService":Lcom/android/server/CommonTimeManagementService;
    .restart local v29    # "connectivity":Lcom/android/server/ConnectivityService;
    .restart local v32    # "consumerIr":Lcom/android/server/ConsumerIrService;
    .restart local v53    # "hardwarePropertiesService":Lcom/android/server/HardwarePropertiesManagerService;
    .restart local v57    # "inputManager":Lcom/android/server/input/InputManagerService;
    .restart local v67    # "mountService":Landroid/os/storage/IMountService;
    .local v68, "networkManagement":Lcom/android/server/NetworkManagementService;
    .restart local v69    # "networkPolicy":Lcom/android/server/net/NetworkPolicyManagerService;
    .restart local v71    # "networkScore":Lcom/android/server/NetworkScoreService;
    .local v73, "networkStats":Lcom/android/server/net/NetworkStatsService;
    .restart local v74    # "networkTimeUpdater":Lcom/android/server/NetworkTimeUpdateService;
    .restart local v78    # "serial":Lcom/android/server/SerialService;
    .local v80, "serviceDiscovery":Lcom/android/server/NsdService;
    .restart local v85    # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    .restart local v87    # "vibrator":Lcom/android/server/VibratorService;
    .restart local v89    # "watchdog":Lcom/android/server/Watchdog;
    .restart local v93    # "wigigP2pService":Ljava/lang/Object;
    .restart local v94    # "wigigService":Ljava/lang/Object;
    .local v95, "wm":Lcom/android/server/wm/WindowManagerService;
    :cond_39
    const/4 v4, 0x0

    move v5, v4

    goto/16 :goto_0

    .line 684
    :cond_3a
    const/4 v4, 0x1

    goto/16 :goto_1

    .line 705
    .local v95, "wm":Lcom/android/server/wm/WindowManagerService;
    :cond_3b
    :try_start_32
    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/server/SystemServer;->mFactoryTestMode:I

    const/4 v5, 0x1

    if-ne v4, v5, :cond_3c

    .line 706
    const-string/jumbo v4, "SystemServer"

    const-string/jumbo v5, "No Bluetooth Service (factory test)"

    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_32
    .catch Ljava/lang/RuntimeException; {:try_start_32 .. :try_end_32} :catch_0

    goto/16 :goto_2

    .line 727
    .end local v95    # "wm":Lcom/android/server/wm/WindowManagerService;
    :catch_0
    move-exception v50

    .local v50, "e":Ljava/lang/RuntimeException;
    move-object/from16 v31, v32

    .end local v32    # "consumerIr":Lcom/android/server/ConsumerIrService;
    .restart local v31    # "consumerIr":Lcom/android/server/ConsumerIrService;
    move-object/from16 v84, v85

    .end local v85    # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    .restart local v84    # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    move-object/from16 v56, v57

    .end local v57    # "inputManager":Lcom/android/server/input/InputManagerService;
    .restart local v56    # "inputManager":Lcom/android/server/input/InputManagerService;
    move-object/from16 v86, v87

    .line 728
    .end local v31    # "consumerIr":Lcom/android/server/ConsumerIrService;
    .end local v56    # "inputManager":Lcom/android/server/input/InputManagerService;
    .end local v84    # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    .end local v87    # "vibrator":Lcom/android/server/VibratorService;
    .end local v89    # "watchdog":Lcom/android/server/Watchdog;
    :goto_30
    const-string/jumbo v4, "System"

    const-string/jumbo v5, "******************************************"

    invoke-static {v4, v5}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 729
    const-string/jumbo v4, "System"

    const-string/jumbo v5, "************ Failure starting core service"

    move-object/from16 v0, v50

    invoke-static {v4, v5, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_3

    .line 707
    .end local v50    # "e":Ljava/lang/RuntimeException;
    .restart local v32    # "consumerIr":Lcom/android/server/ConsumerIrService;
    .restart local v57    # "inputManager":Lcom/android/server/input/InputManagerService;
    .restart local v85    # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    .restart local v87    # "vibrator":Lcom/android/server/VibratorService;
    .restart local v89    # "watchdog":Lcom/android/server/Watchdog;
    .restart local v95    # "wm":Lcom/android/server/wm/WindowManagerService;
    :cond_3c
    :try_start_33
    invoke-virtual {v6}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    .line 708
    const-string/jumbo v5, "android.hardware.bluetooth"

    .line 707
    invoke-virtual {v4, v5}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_3d

    .line 709
    const-string/jumbo v4, "SystemServer"

    const-string/jumbo v5, "No Bluetooth Service (Bluetooth Hardware Not Present)"

    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2

    .line 710
    :cond_3d
    if-eqz v36, :cond_3e

    .line 711
    const-string/jumbo v4, "SystemServer"

    const-string/jumbo v5, "Bluetooth Service disabled by config"

    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2

    .line 713
    :cond_3e
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v5, Lcom/android/server/BluetoothService;

    invoke-virtual {v4, v5}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;
    :try_end_33
    .catch Ljava/lang/RuntimeException; {:try_start_33 .. :try_end_33} :catch_0

    goto/16 :goto_2

    .line 748
    .end local v32    # "consumerIr":Lcom/android/server/ConsumerIrService;
    .end local v57    # "inputManager":Lcom/android/server/input/InputManagerService;
    .end local v85    # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    .end local v87    # "vibrator":Lcom/android/server/VibratorService;
    .end local v89    # "watchdog":Lcom/android/server/Watchdog;
    .end local v95    # "wm":Lcom/android/server/wm/WindowManagerService;
    .restart local v21    # "atlas":Lcom/android/server/AssetAtlasService;
    .restart local v33    # "countryDetector":Lcom/android/server/CountryDetectorService;
    .restart local v59    # "location":Lcom/android/server/LocationManagerService;
    .restart local v61    # "lockSettings":Lcom/android/internal/widget/ILockSettings;
    .restart local v63    # "mediaRouter":Lcom/android/server/media/MediaRouterService;
    .local v76, "notification":Landroid/app/INotificationManager;
    .restart local v81    # "statusBar":Lcom/android/server/statusbar/StatusBarManagerService;
    :catch_1
    move-exception v51

    .line 749
    .local v51, "e":Ljava/lang/Throwable;
    const-string/jumbo v4, "starting Accessibility Manager"

    move-object/from16 v0, p0

    move-object/from16 v1, v51

    invoke-direct {v0, v4, v1}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_4

    .line 756
    .end local v51    # "e":Ljava/lang/Throwable;
    :catch_2
    move-exception v51

    .line 757
    .restart local v51    # "e":Ljava/lang/Throwable;
    const-string/jumbo v4, "making display ready"

    move-object/from16 v0, p0

    move-object/from16 v1, v51

    invoke-direct {v0, v4, v1}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_5

    .line 768
    .end local v51    # "e":Ljava/lang/Throwable;
    :cond_3f
    :try_start_34
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-string/jumbo v5, "com.android.server.MountService$Lifecycle"

    invoke-virtual {v4, v5}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/String;)Lcom/android/server/SystemService;

    .line 770
    const-string/jumbo v4, "mount"

    invoke-static {v4}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v4

    .line 769
    invoke-static {v4}, Landroid/os/storage/IMountService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/storage/IMountService;
    :try_end_34
    .catch Ljava/lang/Throwable; {:try_start_34 .. :try_end_34} :catch_3

    move-result-object v67

    .local v67, "mountService":Landroid/os/storage/IMountService;
    goto/16 :goto_6

    .line 771
    .local v67, "mountService":Landroid/os/storage/IMountService;
    :catch_3
    move-exception v51

    .line 772
    .restart local v51    # "e":Ljava/lang/Throwable;
    const-string/jumbo v4, "starting Mount Service"

    move-object/from16 v0, p0

    move-object/from16 v1, v51

    invoke-direct {v0, v4, v1}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_6

    .line 787
    .end local v51    # "e":Ljava/lang/Throwable;
    .end local v67    # "mountService":Landroid/os/storage/IMountService;
    .restart local v24    # "bootDexoptStartTime":J
    :catch_4
    move-exception v51

    .line 788
    .restart local v51    # "e":Ljava/lang/Throwable;
    const-string/jumbo v4, "update packages"

    move-object/from16 v0, p0

    move-object/from16 v1, v51

    invoke-direct {v0, v4, v1}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_7

    .line 800
    .end local v24    # "bootDexoptStartTime":J
    .end local v51    # "e":Ljava/lang/Throwable;
    :catch_5
    move-exception v51

    .line 801
    .restart local v51    # "e":Ljava/lang/Throwable;
    const-string/jumbo v4, "performing fstrim"

    move-object/from16 v0, p0

    move-object/from16 v1, v51

    invoke-direct {v0, v4, v1}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_8

    .line 812
    .end local v51    # "e":Ljava/lang/Throwable;
    :catch_6
    move-exception v51

    .line 813
    .restart local v51    # "e":Ljava/lang/Throwable;
    const-string/jumbo v4, "starting LockSettingsService service"

    move-object/from16 v0, p0

    move-object/from16 v1, v51

    invoke-direct {v0, v4, v1}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_9

    .line 833
    .end local v51    # "e":Ljava/lang/Throwable;
    .end local v61    # "lockSettings":Lcom/android/internal/widget/ILockSettings;
    :catch_7
    move-exception v51

    .line 834
    .end local v81    # "statusBar":Lcom/android/server/statusbar/StatusBarManagerService;
    .restart local v51    # "e":Ljava/lang/Throwable;
    :goto_31
    const-string/jumbo v4, "starting StatusBarManagerService"

    move-object/from16 v0, p0

    move-object/from16 v1, v51

    invoke-direct {v0, v4, v1}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_a

    .line 844
    .end local v51    # "e":Ljava/lang/Throwable;
    :catch_8
    move-exception v51

    .line 845
    .restart local v51    # "e":Ljava/lang/Throwable;
    const-string/jumbo v4, "starting Clipboard Service"

    move-object/from16 v0, p0

    move-object/from16 v1, v51

    invoke-direct {v0, v4, v1}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_b

    .line 855
    .end local v51    # "e":Ljava/lang/Throwable;
    .end local v68    # "networkManagement":Lcom/android/server/NetworkManagementService;
    :catch_9
    move-exception v51

    .line 856
    .restart local v51    # "e":Ljava/lang/Throwable;
    const-string/jumbo v4, "starting NetworkManagement Service"

    move-object/from16 v0, p0

    move-object/from16 v1, v51

    invoke-direct {v0, v4, v1}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_c

    .line 862
    .end local v51    # "e":Ljava/lang/Throwable;
    :cond_40
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v5, Lcom/android/server/TextServicesManagerService$Lifecycle;

    invoke-virtual {v4, v5}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    goto/16 :goto_d

    .line 870
    :catch_a
    move-exception v51

    .line 871
    .end local v71    # "networkScore":Lcom/android/server/NetworkScoreService;
    .restart local v51    # "e":Ljava/lang/Throwable;
    :goto_32
    const-string/jumbo v4, "starting Network Score Service"

    move-object/from16 v0, p0

    move-object/from16 v1, v51

    invoke-direct {v0, v4, v1}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_e

    .line 879
    .end local v51    # "e":Ljava/lang/Throwable;
    .end local v73    # "networkStats":Lcom/android/server/net/NetworkStatsService;
    :catch_b
    move-exception v51

    .line 880
    .restart local v51    # "e":Ljava/lang/Throwable;
    const-string/jumbo v4, "starting NetworkStats Service"

    move-object/from16 v0, p0

    move-object/from16 v1, v51

    invoke-direct {v0, v4, v1}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_f

    .line 889
    .end local v51    # "e":Ljava/lang/Throwable;
    :catch_c
    move-exception v51

    .line 890
    .end local v69    # "networkPolicy":Lcom/android/server/net/NetworkPolicyManagerService;
    .restart local v51    # "e":Ljava/lang/Throwable;
    :goto_33
    const-string/jumbo v4, "starting NetworkPolicy Service"

    move-object/from16 v0, p0

    move-object/from16 v1, v51

    invoke-direct {v0, v4, v1}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_10

    .line 897
    .end local v51    # "e":Ljava/lang/Throwable;
    :cond_41
    const-string/jumbo v4, "SystemServer"

    const-string/jumbo v5, "No Wi-Fi NAN Service (NAN support Not Present)"

    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_11

    .line 928
    .end local v93    # "wigigP2pService":Ljava/lang/Object;
    .end local v94    # "wigigService":Ljava/lang/Object;
    :catch_d
    move-exception v51

    .line 929
    .restart local v51    # "e":Ljava/lang/Throwable;
    const-string/jumbo v4, "starting WigigService"

    move-object/from16 v0, p0

    move-object/from16 v1, v51

    invoke-direct {v0, v4, v1}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_12

    .line 945
    .end local v51    # "e":Ljava/lang/Throwable;
    :catch_e
    move-exception v51

    .line 946
    .end local v29    # "connectivity":Lcom/android/server/ConnectivityService;
    .restart local v51    # "e":Ljava/lang/Throwable;
    :goto_34
    const-string/jumbo v4, "starting Connectivity Service"

    move-object/from16 v0, p0

    move-object/from16 v1, v51

    invoke-direct {v0, v4, v1}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_13

    .line 955
    .end local v51    # "e":Ljava/lang/Throwable;
    .end local v80    # "serviceDiscovery":Lcom/android/server/NsdService;
    :catch_f
    move-exception v51

    .line 956
    .restart local v51    # "e":Ljava/lang/Throwable;
    const-string/jumbo v4, "starting Service Discovery Service"

    move-object/from16 v0, p0

    move-object/from16 v1, v51

    invoke-direct {v0, v4, v1}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_14

    .line 966
    .end local v51    # "e":Ljava/lang/Throwable;
    :catch_10
    move-exception v51

    .line 967
    .restart local v51    # "e":Ljava/lang/Throwable;
    const-string/jumbo v4, "starting UpdateLockService"

    move-object/from16 v0, p0

    move-object/from16 v1, v51

    invoke-direct {v0, v4, v1}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_15

    .line 982
    .end local v51    # "e":Ljava/lang/Throwable;
    :cond_42
    const-string/jumbo v4, "WaitForAsecScan"

    const-wide/32 v96, 0x80000

    move-wide/from16 v0, v96

    invoke-static {v0, v1, v4}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 984
    :try_start_35
    invoke-interface/range {v67 .. v67}, Landroid/os/storage/IMountService;->waitForAsecScan()V
    :try_end_35
    .catch Landroid/os/RemoteException; {:try_start_35 .. :try_end_35} :catch_11

    .line 987
    :goto_35
    const-wide/32 v4, 0x80000

    invoke-static {v4, v5}, Landroid/os/Trace;->traceEnd(J)V

    goto/16 :goto_16

    .line 985
    :catch_11
    move-exception v55

    .local v55, "ignored":Landroid/os/RemoteException;
    goto :goto_35

    .line 1002
    .end local v55    # "ignored":Landroid/os/RemoteException;
    .local v76, "notification":Landroid/app/INotificationManager;
    :catch_12
    move-exception v51

    .line 1003
    .end local v59    # "location":Lcom/android/server/LocationManagerService;
    .restart local v51    # "e":Ljava/lang/Throwable;
    :goto_36
    const-string/jumbo v4, "starting Location Manager"

    move-object/from16 v0, p0

    move-object/from16 v1, v51

    invoke-direct {v0, v4, v1}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_17

    .line 1011
    .end local v51    # "e":Ljava/lang/Throwable;
    :catch_13
    move-exception v51

    .line 1012
    .end local v33    # "countryDetector":Lcom/android/server/CountryDetectorService;
    .restart local v51    # "e":Ljava/lang/Throwable;
    :goto_37
    const-string/jumbo v4, "starting Country Detector"

    move-object/from16 v0, p0

    move-object/from16 v1, v51

    invoke-direct {v0, v4, v1}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_18

    .line 1018
    .end local v51    # "e":Ljava/lang/Throwable;
    :cond_43
    const-string/jumbo v4, "StartSearchManagerService"

    invoke-static {v4}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    .line 1020
    :try_start_36
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-string/jumbo v5, "com.android.server.search.SearchManagerService$Lifecycle"

    invoke-virtual {v4, v5}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/String;)Lcom/android/server/SystemService;
    :try_end_36
    .catch Ljava/lang/Throwable; {:try_start_36 .. :try_end_36} :catch_14

    .line 1024
    :goto_38
    const-wide/32 v4, 0x80000

    invoke-static {v4, v5}, Landroid/os/Trace;->traceEnd(J)V

    goto/16 :goto_19

    .line 1021
    :catch_14
    move-exception v51

    .line 1022
    .restart local v51    # "e":Ljava/lang/Throwable;
    const-string/jumbo v4, "starting Search Service"

    move-object/from16 v0, p0

    move-object/from16 v1, v51

    invoke-direct {v0, v4, v1}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_38

    .line 1031
    .end local v51    # "e":Ljava/lang/Throwable;
    :cond_44
    const-string/jumbo v4, "StartWallpaperManagerService"

    invoke-static {v4}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    .line 1032
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-string/jumbo v5, "com.android.server.wallpaper.WallpaperManagerService$Lifecycle"

    invoke-virtual {v4, v5}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/String;)Lcom/android/server/SystemService;

    .line 1033
    const-wide/32 v4, 0x80000

    invoke-static {v4, v5}, Landroid/os/Trace;->traceEnd(J)V

    goto/16 :goto_1a

    .line 1053
    :catch_15
    move-exception v51

    .line 1054
    .restart local v51    # "e":Ljava/lang/Throwable;
    const-string/jumbo v4, "starting WiredAccessoryManager"

    move-object/from16 v0, p0

    move-object/from16 v1, v51

    invoke-direct {v0, v4, v1}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_1b

    .line 1079
    .end local v51    # "e":Ljava/lang/Throwable;
    :catch_16
    move-exception v51

    .line 1080
    .end local v78    # "serial":Lcom/android/server/SerialService;
    .restart local v51    # "e":Ljava/lang/Throwable;
    :goto_39
    const-string/jumbo v4, "SystemServer"

    const-string/jumbo v5, "Failure starting SerialService"

    move-object/from16 v0, v51

    invoke-static {v4, v5, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_1c

    .line 1091
    .end local v51    # "e":Ljava/lang/Throwable;
    :catch_17
    move-exception v51

    .line 1092
    .end local v53    # "hardwarePropertiesService":Lcom/android/server/HardwarePropertiesManagerService;
    .restart local v51    # "e":Ljava/lang/Throwable;
    :goto_3a
    const-string/jumbo v4, "SystemServer"

    const-string/jumbo v5, "Failure starting HardwarePropertiesManagerService"

    move-object/from16 v0, v51

    invoke-static {v4, v5, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_1d

    .line 1135
    .end local v51    # "e":Ljava/lang/Throwable;
    :catch_18
    move-exception v51

    .line 1136
    .restart local v51    # "e":Ljava/lang/Throwable;
    const-string/jumbo v4, "starting DiskStats Service"

    move-object/from16 v0, p0

    move-object/from16 v1, v51

    invoke-direct {v0, v4, v1}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_1e

    .line 1149
    .end local v51    # "e":Ljava/lang/Throwable;
    :catch_19
    move-exception v51

    .line 1150
    .restart local v51    # "e":Ljava/lang/Throwable;
    const-string/jumbo v4, "starting SamplingProfiler Service"

    move-object/from16 v0, p0

    move-object/from16 v1, v51

    invoke-direct {v0, v4, v1}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_1f

    .line 1156
    .end local v51    # "e":Ljava/lang/Throwable;
    :cond_45
    const-string/jumbo v4, "StartNetworkTimeUpdateService"

    invoke-static {v4}, Lcom/android/server/SystemServer;->traceBeginAndSlog(Ljava/lang/String;)V

    .line 1158
    :try_start_37
    new-instance v75, Lcom/android/server/NetworkTimeUpdateService;

    move-object/from16 v0, v75

    invoke-direct {v0, v6}, Lcom/android/server/NetworkTimeUpdateService;-><init>(Landroid/content/Context;)V
    :try_end_37
    .catch Ljava/lang/Throwable; {:try_start_37 .. :try_end_37} :catch_1a

    .line 1159
    .end local v74    # "networkTimeUpdater":Lcom/android/server/NetworkTimeUpdateService;
    .local v75, "networkTimeUpdater":Lcom/android/server/NetworkTimeUpdateService;
    :try_start_38
    const-string/jumbo v4, "network_time_update_service"

    move-object/from16 v0, v75

    invoke-static {v4, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_38
    .catch Ljava/lang/Throwable; {:try_start_38 .. :try_end_38} :catch_2a

    move-object/from16 v74, v75

    .line 1163
    .end local v75    # "networkTimeUpdater":Lcom/android/server/NetworkTimeUpdateService;
    :goto_3b
    const-wide/32 v4, 0x80000

    invoke-static {v4, v5}, Landroid/os/Trace;->traceEnd(J)V

    goto/16 :goto_20

    .line 1160
    .restart local v74    # "networkTimeUpdater":Lcom/android/server/NetworkTimeUpdateService;
    :catch_1a
    move-exception v51

    .line 1161
    .end local v74    # "networkTimeUpdater":Lcom/android/server/NetworkTimeUpdateService;
    .restart local v51    # "e":Ljava/lang/Throwable;
    :goto_3c
    const-string/jumbo v4, "starting NetworkTimeUpdate service"

    move-object/from16 v0, p0

    move-object/from16 v1, v51

    invoke-direct {v0, v4, v1}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_3b

    .line 1170
    .end local v51    # "e":Ljava/lang/Throwable;
    :catch_1b
    move-exception v51

    .line 1171
    .end local v26    # "commonTimeMgmtService":Lcom/android/server/CommonTimeManagementService;
    .restart local v51    # "e":Ljava/lang/Throwable;
    :goto_3d
    const-string/jumbo v4, "starting CommonTimeManagementService service"

    move-object/from16 v0, p0

    move-object/from16 v1, v51

    invoke-direct {v0, v4, v1}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_21

    .line 1179
    .end local v51    # "e":Ljava/lang/Throwable;
    :catch_1c
    move-exception v51

    .line 1180
    .restart local v51    # "e":Ljava/lang/Throwable;
    const-string/jumbo v4, "starting CertBlacklister"

    move-object/from16 v0, p0

    move-object/from16 v1, v51

    invoke-direct {v0, v4, v1}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_22

    .line 1187
    .end local v51    # "e":Ljava/lang/Throwable;
    :cond_46
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v5, Lcom/android/server/emergency/EmergencyAffordanceService;

    invoke-virtual {v4, v5}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    goto/16 :goto_23

    .line 1200
    :catch_1d
    move-exception v51

    .line 1201
    .end local v21    # "atlas":Lcom/android/server/AssetAtlasService;
    .restart local v51    # "e":Ljava/lang/Throwable;
    :goto_3e
    const-string/jumbo v4, "starting AssetAtlasService"

    move-object/from16 v0, p0

    move-object/from16 v1, v51

    invoke-direct {v0, v4, v1}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_24

    .line 1240
    .end local v51    # "e":Ljava/lang/Throwable;
    :catch_1e
    move-exception v51

    .line 1241
    .end local v63    # "mediaRouter":Lcom/android/server/media/MediaRouterService;
    .restart local v51    # "e":Ljava/lang/Throwable;
    :goto_3f
    const-string/jumbo v4, "starting MediaRouterService"

    move-object/from16 v0, p0

    move-object/from16 v1, v51

    invoke-direct {v0, v4, v1}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_25

    .line 1256
    .end local v51    # "e":Ljava/lang/Throwable;
    :catch_1f
    move-exception v51

    .line 1257
    .restart local v51    # "e":Ljava/lang/Throwable;
    const-string/jumbo v4, "starting BackgroundDexOptService"

    move-object/from16 v0, p0

    move-object/from16 v1, v51

    invoke-direct {v0, v4, v1}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_26

    .line 1268
    .end local v51    # "e":Ljava/lang/Throwable;
    .end local v76    # "notification":Landroid/app/INotificationManager;
    :cond_47
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v5, Lcom/android/server/media/projection/MediaProjectionManagerService;

    invoke-virtual {v4, v5}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    goto/16 :goto_27

    .line 1291
    .restart local v77    # "safeMode":Z
    :cond_48
    invoke-static {}, Ldalvik/system/VMRuntime;->getRuntime()Ldalvik/system/VMRuntime;

    move-result-object v4

    invoke-virtual {v4}, Ldalvik/system/VMRuntime;->startJitCompilation()V

    goto/16 :goto_28

    .line 1307
    .local v20, "mmsService":Lcom/android/server/MmsServiceBroker;
    :catch_20
    move-exception v51

    .line 1308
    .restart local v51    # "e":Ljava/lang/Throwable;
    const-string/jumbo v4, "making Vibrator Service ready"

    move-object/from16 v0, p0

    move-object/from16 v1, v51

    invoke-direct {v0, v4, v1}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_29

    .line 1316
    .end local v51    # "e":Ljava/lang/Throwable;
    :catch_21
    move-exception v51

    .line 1317
    .restart local v51    # "e":Ljava/lang/Throwable;
    const-string/jumbo v4, "making Lock Settings Service ready"

    move-object/from16 v0, p0

    move-object/from16 v1, v51

    invoke-direct {v0, v4, v1}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_2a

    .line 1346
    .end local v51    # "e":Ljava/lang/Throwable;
    :catch_22
    move-exception v51

    .line 1347
    .restart local v51    # "e":Ljava/lang/Throwable;
    const-string/jumbo v4, "Wigig services ready"

    move-object/from16 v0, p0

    move-object/from16 v1, v51

    invoke-direct {v0, v4, v1}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_2b

    .line 1353
    .end local v51    # "e":Ljava/lang/Throwable;
    :catch_23
    move-exception v51

    .line 1354
    .restart local v51    # "e":Ljava/lang/Throwable;
    const-string/jumbo v4, "making Window Manager Service ready"

    move-object/from16 v0, p0

    move-object/from16 v1, v51

    invoke-direct {v0, v4, v1}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_2c

    .line 1382
    .end local v51    # "e":Ljava/lang/Throwable;
    .restart local v28    # "config":Landroid/content/res/Configuration;
    .restart local v65    # "metrics":Landroid/util/DisplayMetrics;
    .restart local v83    # "systemTheme":Landroid/content/res/Resources$Theme;
    .restart local v88    # "w":Landroid/view/WindowManager;
    :catch_24
    move-exception v51

    .line 1383
    .restart local v51    # "e":Ljava/lang/Throwable;
    const-string/jumbo v4, "making Power Manager Service ready"

    move-object/from16 v0, p0

    move-object/from16 v1, v51

    invoke-direct {v0, v4, v1}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_2d

    .line 1390
    .end local v51    # "e":Ljava/lang/Throwable;
    :catch_25
    move-exception v51

    .line 1391
    .restart local v51    # "e":Ljava/lang/Throwable;
    const-string/jumbo v4, "making Package Manager Service ready"

    move-object/from16 v0, p0

    move-object/from16 v1, v51

    invoke-direct {v0, v4, v1}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_2e

    .line 1399
    .end local v51    # "e":Ljava/lang/Throwable;
    :catch_26
    move-exception v51

    .line 1400
    .restart local v51    # "e":Ljava/lang/Throwable;
    const-string/jumbo v4, "making Display Manager Service ready"

    move-object/from16 v0, p0

    move-object/from16 v1, v51

    invoke-direct {v0, v4, v1}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_2f

    .line 1240
    .end local v28    # "config":Landroid/content/res/Configuration;
    .end local v51    # "e":Ljava/lang/Throwable;
    .end local v65    # "metrics":Landroid/util/DisplayMetrics;
    .end local v77    # "safeMode":Z
    .end local v83    # "systemTheme":Landroid/content/res/Resources$Theme;
    .end local v88    # "w":Landroid/view/WindowManager;
    .local v20, "mmsService":Lcom/android/server/MmsServiceBroker;
    .restart local v64    # "mediaRouter":Lcom/android/server/media/MediaRouterService;
    .restart local v76    # "notification":Landroid/app/INotificationManager;
    :catch_27
    move-exception v51

    .restart local v51    # "e":Ljava/lang/Throwable;
    move-object/from16 v63, v64

    .end local v64    # "mediaRouter":Lcom/android/server/media/MediaRouterService;
    .local v63, "mediaRouter":Lcom/android/server/media/MediaRouterService;
    goto/16 :goto_3f

    .line 1200
    .end local v51    # "e":Ljava/lang/Throwable;
    .restart local v22    # "atlas":Lcom/android/server/AssetAtlasService;
    .local v63, "mediaRouter":Lcom/android/server/media/MediaRouterService;
    :catch_28
    move-exception v51

    .restart local v51    # "e":Ljava/lang/Throwable;
    move-object/from16 v21, v22

    .end local v22    # "atlas":Lcom/android/server/AssetAtlasService;
    .local v21, "atlas":Lcom/android/server/AssetAtlasService;
    goto/16 :goto_3e

    .line 1170
    .end local v51    # "e":Ljava/lang/Throwable;
    .local v21, "atlas":Lcom/android/server/AssetAtlasService;
    .restart local v27    # "commonTimeMgmtService":Lcom/android/server/CommonTimeManagementService;
    :catch_29
    move-exception v51

    .restart local v51    # "e":Ljava/lang/Throwable;
    move-object/from16 v26, v27

    .end local v27    # "commonTimeMgmtService":Lcom/android/server/CommonTimeManagementService;
    .local v26, "commonTimeMgmtService":Lcom/android/server/CommonTimeManagementService;
    goto/16 :goto_3d

    .line 1160
    .end local v51    # "e":Ljava/lang/Throwable;
    .local v26, "commonTimeMgmtService":Lcom/android/server/CommonTimeManagementService;
    .restart local v75    # "networkTimeUpdater":Lcom/android/server/NetworkTimeUpdateService;
    :catch_2a
    move-exception v51

    .restart local v51    # "e":Ljava/lang/Throwable;
    move-object/from16 v74, v75

    .end local v75    # "networkTimeUpdater":Lcom/android/server/NetworkTimeUpdateService;
    .local v74, "networkTimeUpdater":Lcom/android/server/NetworkTimeUpdateService;
    goto/16 :goto_3c

    .line 1091
    .end local v51    # "e":Ljava/lang/Throwable;
    .restart local v54    # "hardwarePropertiesService":Lcom/android/server/HardwarePropertiesManagerService;
    .local v74, "networkTimeUpdater":Lcom/android/server/NetworkTimeUpdateService;
    :catch_2b
    move-exception v51

    .restart local v51    # "e":Ljava/lang/Throwable;
    move-object/from16 v53, v54

    .end local v54    # "hardwarePropertiesService":Lcom/android/server/HardwarePropertiesManagerService;
    .local v53, "hardwarePropertiesService":Lcom/android/server/HardwarePropertiesManagerService;
    goto/16 :goto_3a

    .line 1079
    .end local v51    # "e":Ljava/lang/Throwable;
    .local v53, "hardwarePropertiesService":Lcom/android/server/HardwarePropertiesManagerService;
    .restart local v79    # "serial":Lcom/android/server/SerialService;
    :catch_2c
    move-exception v51

    .restart local v51    # "e":Ljava/lang/Throwable;
    move-object/from16 v78, v79

    .end local v79    # "serial":Lcom/android/server/SerialService;
    .local v78, "serial":Lcom/android/server/SerialService;
    goto/16 :goto_39

    .line 1011
    .end local v51    # "e":Ljava/lang/Throwable;
    .restart local v34    # "countryDetector":Lcom/android/server/CountryDetectorService;
    .local v78, "serial":Lcom/android/server/SerialService;
    :catch_2d
    move-exception v51

    .restart local v51    # "e":Ljava/lang/Throwable;
    move-object/from16 v33, v34

    .end local v34    # "countryDetector":Lcom/android/server/CountryDetectorService;
    .local v33, "countryDetector":Lcom/android/server/CountryDetectorService;
    goto/16 :goto_37

    .line 1002
    .end local v51    # "e":Ljava/lang/Throwable;
    .local v33, "countryDetector":Lcom/android/server/CountryDetectorService;
    .restart local v60    # "location":Lcom/android/server/LocationManagerService;
    :catch_2e
    move-exception v51

    .restart local v51    # "e":Ljava/lang/Throwable;
    move-object/from16 v59, v60

    .end local v60    # "location":Lcom/android/server/LocationManagerService;
    .local v59, "location":Lcom/android/server/LocationManagerService;
    goto/16 :goto_36

    .line 945
    .end local v51    # "e":Ljava/lang/Throwable;
    .restart local v30    # "connectivity":Lcom/android/server/ConnectivityService;
    .local v59, "location":Lcom/android/server/LocationManagerService;
    .local v76, "notification":Landroid/app/INotificationManager;
    .restart local v80    # "serviceDiscovery":Lcom/android/server/NsdService;
    :catch_2f
    move-exception v51

    .restart local v51    # "e":Ljava/lang/Throwable;
    move-object/from16 v29, v30

    .end local v30    # "connectivity":Lcom/android/server/ConnectivityService;
    .local v29, "connectivity":Lcom/android/server/ConnectivityService;
    goto/16 :goto_34

    .line 889
    .end local v51    # "e":Ljava/lang/Throwable;
    .local v29, "connectivity":Lcom/android/server/ConnectivityService;
    .restart local v70    # "networkPolicy":Lcom/android/server/net/NetworkPolicyManagerService;
    .restart local v93    # "wigigP2pService":Ljava/lang/Object;
    .restart local v94    # "wigigService":Ljava/lang/Object;
    :catch_30
    move-exception v51

    .restart local v51    # "e":Ljava/lang/Throwable;
    move-object/from16 v69, v70

    .end local v70    # "networkPolicy":Lcom/android/server/net/NetworkPolicyManagerService;
    .local v69, "networkPolicy":Lcom/android/server/net/NetworkPolicyManagerService;
    goto/16 :goto_33

    .line 870
    .end local v51    # "e":Ljava/lang/Throwable;
    .local v69, "networkPolicy":Lcom/android/server/net/NetworkPolicyManagerService;
    .restart local v72    # "networkScore":Lcom/android/server/NetworkScoreService;
    .restart local v73    # "networkStats":Lcom/android/server/net/NetworkStatsService;
    :catch_31
    move-exception v51

    .restart local v51    # "e":Ljava/lang/Throwable;
    move-object/from16 v71, v72

    .end local v72    # "networkScore":Lcom/android/server/NetworkScoreService;
    .local v71, "networkScore":Lcom/android/server/NetworkScoreService;
    goto/16 :goto_32

    .line 833
    .end local v51    # "e":Ljava/lang/Throwable;
    .restart local v68    # "networkManagement":Lcom/android/server/NetworkManagementService;
    .local v71, "networkScore":Lcom/android/server/NetworkScoreService;
    .restart local v82    # "statusBar":Lcom/android/server/statusbar/StatusBarManagerService;
    :catch_32
    move-exception v51

    .restart local v51    # "e":Ljava/lang/Throwable;
    move-object/from16 v81, v82

    .end local v82    # "statusBar":Lcom/android/server/statusbar/StatusBarManagerService;
    .local v81, "statusBar":Lcom/android/server/statusbar/StatusBarManagerService;
    goto/16 :goto_31

    .line 727
    .end local v21    # "atlas":Lcom/android/server/AssetAtlasService;
    .end local v33    # "countryDetector":Lcom/android/server/CountryDetectorService;
    .end local v51    # "e":Ljava/lang/Throwable;
    .end local v59    # "location":Lcom/android/server/LocationManagerService;
    .end local v63    # "mediaRouter":Lcom/android/server/media/MediaRouterService;
    .end local v76    # "notification":Landroid/app/INotificationManager;
    .end local v81    # "statusBar":Lcom/android/server/statusbar/StatusBarManagerService;
    .local v31, "consumerIr":Lcom/android/server/ConsumerIrService;
    .local v56, "inputManager":Lcom/android/server/input/InputManagerService;
    .restart local v67    # "mountService":Landroid/os/storage/IMountService;
    .local v84, "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    .restart local v86    # "vibrator":Lcom/android/server/VibratorService;
    .local v95, "wm":Lcom/android/server/wm/WindowManagerService;
    :catch_33
    move-exception v50

    .restart local v50    # "e":Ljava/lang/RuntimeException;
    goto/16 :goto_30

    .end local v50    # "e":Ljava/lang/RuntimeException;
    .end local v84    # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    .restart local v85    # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    :catch_34
    move-exception v50

    .restart local v50    # "e":Ljava/lang/RuntimeException;
    move-object/from16 v84, v85

    .end local v85    # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    .local v84, "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    goto/16 :goto_30

    .end local v50    # "e":Ljava/lang/RuntimeException;
    .end local v84    # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    .end local v86    # "vibrator":Lcom/android/server/VibratorService;
    .restart local v85    # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    .restart local v87    # "vibrator":Lcom/android/server/VibratorService;
    :catch_35
    move-exception v50

    .restart local v50    # "e":Ljava/lang/RuntimeException;
    move-object/from16 v84, v85

    .end local v85    # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    .restart local v84    # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    move-object/from16 v86, v87

    .end local v87    # "vibrator":Lcom/android/server/VibratorService;
    .local v86, "vibrator":Lcom/android/server/VibratorService;
    goto/16 :goto_30

    .end local v31    # "consumerIr":Lcom/android/server/ConsumerIrService;
    .end local v50    # "e":Ljava/lang/RuntimeException;
    .end local v84    # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    .end local v86    # "vibrator":Lcom/android/server/VibratorService;
    .restart local v32    # "consumerIr":Lcom/android/server/ConsumerIrService;
    .restart local v85    # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    .restart local v87    # "vibrator":Lcom/android/server/VibratorService;
    :catch_36
    move-exception v50

    .restart local v50    # "e":Ljava/lang/RuntimeException;
    move-object/from16 v31, v32

    .end local v32    # "consumerIr":Lcom/android/server/ConsumerIrService;
    .local v31, "consumerIr":Lcom/android/server/ConsumerIrService;
    move-object/from16 v84, v85

    .end local v85    # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    .restart local v84    # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    move-object/from16 v86, v87

    .end local v87    # "vibrator":Lcom/android/server/VibratorService;
    .restart local v86    # "vibrator":Lcom/android/server/VibratorService;
    goto/16 :goto_30
.end method

.method private static native startSensorService()V
.end method

.method static final startSystemUi(Landroid/content/Context;)V
    .locals 4
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 1584
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 1585
    .local v0, "intent":Landroid/content/Intent;
    new-instance v1, Landroid/content/ComponentName;

    const-string/jumbo v2, "com.android.systemui"

    .line 1586
    const-string/jumbo v3, "com.android.systemui.SystemUIService"

    .line 1585
    invoke-direct {v1, v2, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 1587
    const/16 v1, 0x100

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 1589
    sget-object v1, Landroid/os/UserHandle;->SYSTEM:Landroid/os/UserHandle;

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->startServiceAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)Landroid/content/ComponentName;

    .line 1583
    return-void
.end method

.method private static traceBeginAndSlog(Ljava/lang/String;)V
    .locals 2
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 1593
    const-wide/32 v0, 0x80000

    invoke-static {v0, v1, p0}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 1594
    const-string/jumbo v0, "SystemServer"

    invoke-static {v0, p0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1592
    return-void
.end method

.method flymeGetFieldSystemContext()Landroid/content/Context;
    .locals 1

    .prologue
    iget-object v0, p0, Lcom/android/server/SystemServer;->mSystemContext:Landroid/content/Context;

    return-object v0
.end method
