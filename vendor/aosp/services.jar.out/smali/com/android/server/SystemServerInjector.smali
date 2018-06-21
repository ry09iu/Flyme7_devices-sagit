.class Lcom/android/server/SystemServerInjector;
.super Ljava/lang/Object;
.source "SystemServerInjector.java"


# static fields
.field private static final DEBUG:Z = true

.field private static final TAG:Ljava/lang/String; = "SystemServerI"

.field private static final systemLogSwitchesReceiver:Lcom/android/server/SystemLogSwitchesConfigReceiver;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 37
    new-instance v0, Lcom/android/server/SystemLogSwitchesConfigReceiver;

    invoke-direct {v0}, Lcom/android/server/SystemLogSwitchesConfigReceiver;-><init>()V

    .line 36
    sput-object v0, Lcom/android/server/SystemServerInjector;->systemLogSwitchesReceiver:Lcom/android/server/SystemLogSwitchesConfigReceiver;

    .line 31
    return-void
.end method

.method constructor <init>()V
    .locals 0

    .prologue
    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static final addExtraServices(Landroid/content/Context;Z)V
    .locals 13
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "onlyCore"    # Z

    .prologue
    .line 40
    const-string/jumbo v10, "security"

    .line 41
    new-instance v11, Lcom/miui/server/SecurityManagerService;

    invoke-direct {v11, p0, p1}, Lcom/miui/server/SecurityManagerService;-><init>(Landroid/content/Context;Z)V

    .line 40
    invoke-static {v10, v11}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 42
    const-string/jumbo v10, "MiuiInit"

    new-instance v11, Lcom/miui/server/MiuiInitServer;

    invoke-direct {v11, p0}, Lcom/miui/server/MiuiInitServer;-><init>(Landroid/content/Context;)V

    invoke-static {v10, v11}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 43
    const-string/jumbo v10, "MiuiBackup"

    new-instance v11, Lcom/miui/server/BackupManagerService;

    invoke-direct {v11, p0}, Lcom/miui/server/BackupManagerService;-><init>(Landroid/content/Context;)V

    invoke-static {v10, v11}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 44
    const-string/jumbo v10, "locationpolicy"

    .line 45
    invoke-static {}, Lcom/android/server/LocationPolicyManagerService;->getDefaultService()Lcom/android/server/LocationPolicyManagerService;

    move-result-object v11

    .line 44
    invoke-static {v10, v11}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 46
    const-string/jumbo v10, "perfshielder"

    .line 47
    new-instance v11, Lcom/miui/server/PerfShielderService;

    invoke-direct {v11, p0}, Lcom/miui/server/PerfShielderService;-><init>(Landroid/content/Context;)V

    .line 46
    invoke-static {v10, v11}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 54
    :try_start_0
    const-string/jumbo v10, "com.miui.whetstone.server.WhetstoneActivityManagerService"

    const/4 v11, 0x0

    .line 53
    invoke-static {v10, v11}, Lmiui/util/ReflectionUtils;->findClass(Ljava/lang/String;Ljava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object v8

    .line 55
    .local v8, "whetstoneService":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const/4 v10, 0x1

    new-array v10, v10, [Ljava/lang/Object;

    .line 56
    const/4 v11, 0x0

    aput-object p0, v10, v11

    .line 55
    invoke-static {v8, v10}, Lmiui/util/ReflectionUtils;->tryNewInstance(Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/os/IBinder;

    .line 58
    .local v7, "whetstoneInstance":Landroid/os/IBinder;
    const-string/jumbo v10, "SERVICE"

    const-class v11, Ljava/lang/String;

    .line 57
    invoke-static {v8, v10, v11}, Lmiui/util/ReflectionUtils;->tryGetStaticObjectField(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Class;)Lmiui/util/ObjectReference;

    move-result-object v9

    .line 59
    .local v9, "whetstoneServiceName":Lmiui/util/ObjectReference;, "Lmiui/util/ObjectReference<Ljava/lang/String;>;"
    if-eqz v7, :cond_0

    if-eqz v9, :cond_0

    .line 60
    invoke-virtual {v9}, Lmiui/util/ObjectReference;->get()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/String;

    invoke-static {v10, v7}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 67
    .end local v7    # "whetstoneInstance":Landroid/os/IBinder;
    .end local v8    # "whetstoneService":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v9    # "whetstoneServiceName":Lmiui/util/ObjectReference;, "Lmiui/util/ObjectReference<Ljava/lang/String;>;"
    :cond_0
    :goto_0
    sget v10, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v11, 0x1a

    if-ge v10, v11, :cond_1

    .line 71
    :try_start_1
    const-string/jumbo v10, "com.miui.server.TidaService"

    invoke-static {v10}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v6

    .line 72
    .local v6, "tidaService":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const/4 v10, 0x1

    new-array v10, v10, [Ljava/lang/Class;

    const-class v11, Landroid/content/Context;

    const/4 v12, 0x0

    aput-object v11, v10, v12

    invoke-virtual {v6, v10}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v0

    .line 73
    .local v0, "ctor":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<*>;"
    const-string/jumbo v10, "SERVICE_NAME"

    invoke-virtual {v6, v10}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v4

    .line 74
    .local v4, "nameField":Ljava/lang/reflect/Field;
    if-eqz v0, :cond_1

    if-eqz v4, :cond_1

    .line 75
    const/4 v10, 0x1

    new-array v10, v10, [Ljava/lang/Object;

    const/4 v11, 0x0

    aput-object p0, v10, v11

    invoke-virtual {v0, v10}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/os/IBinder;

    .line 76
    .local v5, "tidaInstance":Landroid/os/IBinder;
    const/4 v10, 0x0

    invoke-virtual {v4, v10}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 77
    .local v3, "name":Ljava/lang/String;
    invoke-static {v3, v5}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 84
    .end local v0    # "ctor":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<*>;"
    .end local v3    # "name":Ljava/lang/String;
    .end local v4    # "nameField":Ljava/lang/reflect/Field;
    .end local v5    # "tidaInstance":Landroid/os/IBinder;
    .end local v6    # "tidaService":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :cond_1
    :goto_1
    invoke-static {}, Lcom/android/server/display/ScreenEffectService;->startScreenEffectService()V

    .line 86
    invoke-static {}, Lcom/android/server/MiuiFgThread;->initialMiuiFgThread()V

    .line 39
    return-void

    .line 62
    :catch_0
    move-exception v1

    .line 63
    .local v1, "e":Ljava/lang/ClassNotFoundException;
    invoke-virtual {v1}, Ljava/lang/ClassNotFoundException;->printStackTrace()V

    goto :goto_0

    .line 79
    .end local v1    # "e":Ljava/lang/ClassNotFoundException;
    :catch_1
    move-exception v2

    .line 80
    .local v2, "e":Ljava/lang/Exception;
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1
.end method

.method static final addExtraServicesBeforePMS(Landroid/content/Context;Z)V
    .locals 0
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "onlyCore"    # Z

    .prologue
    .line 90
    invoke-static {p0}, Lcom/android/server/SystemServerInjectorOverlay;->addSecuritySpaceService(Landroid/content/Context;)V

    .line 89
    return-void
.end method

.method static enableLogSwitch()V
    .locals 1

    .prologue
    .line 98
    const/4 v0, 0x1

    invoke-static {v0}, Lmiui/log/SystemLogSwitchesConfigManager;->enableLogSwitch(Z)V

    .line 99
    invoke-static {}, Lmiui/log/SystemLogSwitchesConfigManager;->updateProgramName()V

    .line 97
    return-void
.end method

.method private static enforceVersionPolicy()V
    .locals 2

    .prologue
    .line 163
    const-string/jumbo v0, "enable_flash_global"

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lmiui/util/FeatureParser;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 164
    const-string/jumbo v0, "SystemServerI"

    const-string/jumbo v1, "enforceVersionPolicy: enable_flash_global enabled"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 165
    return-void

    .line 169
    :cond_0
    const-string/jumbo v0, "locked"

    const-string/jumbo v1, "ro.secureboot.lockstate"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 170
    const-string/jumbo v0, "SystemServerI"

    const-string/jumbo v1, "enforceVersionPolicy: device unlocked"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 171
    return-void

    .line 175
    :cond_1
    invoke-static {}, Lcom/android/server/SystemServerInjector;->isGlobalHaredware()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 176
    const-string/jumbo v0, "SystemServerI"

    const-string/jumbo v1, "enforceVersionPolicy: global device"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 177
    return-void

    .line 180
    :cond_2
    sget-boolean v0, Lmiui/os/Build;->IS_INTERNATIONAL_BUILD:Z

    if-eqz v0, :cond_3

    .line 181
    const-string/jumbo v0, "SystemServerI"

    const-string/jumbo v1, "CN hardware can\'t run Global build; reboot into recovery!!!"

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 182
    invoke-static {}, Lcom/android/server/SystemServerInjector;->rebootIntoRecovery()V

    .line 161
    :cond_3
    return-void
.end method

.method private static isGlobalHaredware()Z
    .locals 6

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 129
    const-string/jumbo v4, "ro.product.name"

    invoke-static {v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 132
    .local v1, "product":Ljava/lang/String;
    const-string/jumbo v4, "ugglite"

    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    const-string/jumbo v4, "ugg"

    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 133
    :cond_0
    const-string/jumbo v4, "China"

    const-string/jumbo v5, "ro.boot.hwcountry"

    invoke-static {v5}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    :goto_0
    return v2

    :cond_1
    move v2, v3

    goto :goto_0

    .line 145
    :cond_2
    const-string/jumbo v4, "riva"

    const-string/jumbo v5, "ro.product.name"

    invoke-static {v5}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 146
    const-string/jumbo v4, "S88505AA1"

    const-string/jumbo v5, "ro.product.wt.boardid"

    invoke-static {v5}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_3

    .line 147
    const-string/jumbo v4, "S88505DA1"

    const-string/jumbo v5, "ro.product.wt.boardid"

    invoke-static {v5}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    .line 146
    if-eqz v4, :cond_4

    :cond_3
    move v3, v2

    :cond_4
    return v3

    .line 151
    :cond_5
    const-string/jumbo v4, "rosy"

    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_7

    .line 152
    const-string/jumbo v4, "CN"

    const-string/jumbo v5, "ro.boot.hwcountry"

    invoke-static {v5}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_6

    :goto_1
    return v2

    :cond_6
    move v2, v3

    goto :goto_1

    .line 157
    :cond_7
    const-string/jumbo v4, "ro.boot.hwc"

    invoke-static {v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 158
    .local v0, "country":Ljava/lang/String;
    const-string/jumbo v4, "CN"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_8

    :goto_2
    return v2

    :cond_8
    move v2, v3

    goto :goto_2
.end method

.method static markBootDexopt(JJ)V
    .locals 4
    .param p0, "startTime"    # J
    .param p2, "endTime"    # J

    .prologue
    .line 192
    invoke-static {}, Lmiui/mqsas/sdk/BootEventManager;->getInstance()Lmiui/mqsas/sdk/BootEventManager;

    move-result-object v0

    sub-long v2, p2, p0

    invoke-virtual {v0, v2, v3}, Lmiui/mqsas/sdk/BootEventManager;->setBootDexopt(J)V

    .line 191
    return-void
.end method

.method static markPmsScan(JJ)V
    .locals 2
    .param p0, "startTime"    # J
    .param p2, "endTime"    # J

    .prologue
    .line 187
    invoke-static {}, Lmiui/mqsas/sdk/BootEventManager;->getInstance()Lmiui/mqsas/sdk/BootEventManager;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lmiui/mqsas/sdk/BootEventManager;->setPmsScanStart(J)V

    .line 188
    invoke-static {}, Lmiui/mqsas/sdk/BootEventManager;->getInstance()Lmiui/mqsas/sdk/BootEventManager;

    move-result-object v0

    invoke-virtual {v0, p2, p3}, Lmiui/mqsas/sdk/BootEventManager;->setPmsScanEnd(J)V

    .line 186
    return-void
.end method

.method static markSystemRun(J)V
    .locals 2
    .param p0, "time"    # J

    .prologue
    .line 111
    invoke-static {}, Lmiui/mqsas/sdk/BootEventManager;->getInstance()Lmiui/mqsas/sdk/BootEventManager;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lmiui/mqsas/sdk/BootEventManager;->setSystemRun(J)V

    .line 113
    const-string/jumbo v0, "file"

    const-string/jumbo v1, "ro.crypto.type"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 114
    const-string/jumbo v0, "trigger_restart_framework"

    const-string/jumbo v1, "vold.decrypt"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 113
    if-eqz v0, :cond_1

    .line 119
    :cond_0
    invoke-static {}, Lcom/android/server/SystemServerInjector;->enforceVersionPolicy()V

    .line 110
    :cond_1
    return-void
.end method

.method private static rebootIntoRecovery()V
    .locals 2

    .prologue
    .line 124
    const-string/jumbo v0, "--show_version_mismatch\n"

    invoke-static {v0}, Lcom/android/server/BcbUtil;->setupBcb(Ljava/lang/String;)Z

    .line 125
    const-string/jumbo v0, "sys.powerctl"

    const-string/jumbo v1, "reboot,recovery"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 123
    return-void
.end method

.method static registerSystemLogSwitchesReceiver(Landroid/content/Context;)V
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 103
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 104
    .local v0, "filter":Landroid/content/IntentFilter;
    const-string/jumbo v1, "miui.intent.action.SWITCH_ON_MIUILOGS"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 105
    const-string/jumbo v1, "miui.intent.action.SWITCH_OFF_MIUILOGS"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 106
    const-string/jumbo v1, "miui.intent.action.REVERT_MIUILOG_SWITCHES"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 107
    sget-object v1, Lcom/android/server/SystemServerInjector;->systemLogSwitchesReceiver:Lcom/android/server/SystemLogSwitchesConfigReceiver;

    invoke-virtual {p0, v1, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 102
    return-void
.end method

.method static final systemReadyBeforePMS()V
    .locals 0

    .prologue
    .line 94
    invoke-static {}, Lcom/android/server/SystemServerInjectorOverlay;->systemReadyBeforePMS()V

    .line 93
    return-void
.end method
