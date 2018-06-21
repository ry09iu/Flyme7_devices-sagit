.class public Lcom/android/server/am/JobSchedulerServiceInjector;
.super Ljava/lang/Object;
.source "JobSchedulerServiceInjector.java"


# static fields
.field private static final BATTERY_TEMPERATURE_THRESHOLD:I = 0x190

.field private static final TAG:Ljava/lang/String; = "JobSchedulerServiceInjector"

.field private static final filter:Landroid/content/IntentFilter;

.field private static isDelayState:Z

.field private static sBatteryStatus:I

.field private static sBatteryTemperature:I

.field private static sDelayEnable:Z


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 15
    const/4 v0, 0x1

    sput v0, Lcom/android/server/am/JobSchedulerServiceInjector;->sBatteryStatus:I

    .line 16
    sput v1, Lcom/android/server/am/JobSchedulerServiceInjector;->sBatteryTemperature:I

    .line 17
    new-instance v0, Landroid/content/IntentFilter;

    const-string/jumbo v2, "android.intent.action.BATTERY_CHANGED"

    invoke-direct {v0, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/android/server/am/JobSchedulerServiceInjector;->filter:Landroid/content/IntentFilter;

    .line 18
    sget-boolean v0, Lmiui/os/Build;->IS_CTS_BUILD:Z

    if-nez v0, :cond_0

    .line 19
    const-string/jumbo v0, "persist.sys.job_delay"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    .line 18
    :goto_0
    sput-boolean v0, Lcom/android/server/am/JobSchedulerServiceInjector;->sDelayEnable:Z

    .line 20
    sput-boolean v1, Lcom/android/server/am/JobSchedulerServiceInjector;->isDelayState:Z

    .line 11
    return-void

    :cond_0
    move v0, v1

    .line 18
    goto :goto_0
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static getBatteryTemperature(Landroid/content/Context;)V
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v2, 0x0

    .line 41
    sget-object v1, Lcom/android/server/am/JobSchedulerServiceInjector;->filter:Landroid/content/IntentFilter;

    invoke-virtual {p0, v2, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    move-result-object v0

    .line 42
    .local v0, "intent":Landroid/content/Intent;
    if-eqz v0, :cond_0

    .line 43
    const-string/jumbo v1, "status"

    .line 44
    const/4 v2, 0x1

    .line 43
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    sput v1, Lcom/android/server/am/JobSchedulerServiceInjector;->sBatteryStatus:I

    .line 45
    const-string/jumbo v1, "temperature"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    sput v1, Lcom/android/server/am/JobSchedulerServiceInjector;->sBatteryTemperature:I

    .line 40
    :cond_0
    return-void
.end method

.method public static isDelayState(Landroid/content/Context;)Z
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v2, 0x0

    .line 23
    sget-boolean v0, Lcom/android/server/am/JobSchedulerServiceInjector;->sDelayEnable:Z

    if-eqz v0, :cond_0

    if-nez p0, :cond_1

    .line 24
    :cond_0
    return v2

    .line 26
    :cond_1
    invoke-static {p0}, Lcom/android/server/am/JobSchedulerServiceInjector;->getBatteryTemperature(Landroid/content/Context;)V

    .line 27
    invoke-static {}, Lcom/android/server/am/MiuiSysUserServiceHelper;->isLowMemory()Z

    move-result v0

    if-nez v0, :cond_2

    .line 28
    sget v0, Lcom/android/server/am/JobSchedulerServiceInjector;->sBatteryStatus:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_4

    .line 29
    sget v0, Lcom/android/server/am/JobSchedulerServiceInjector;->sBatteryTemperature:I

    const/16 v1, 0x190

    if-le v0, v1, :cond_4

    .line 30
    :cond_2
    const/4 v0, 0x1

    sput-boolean v0, Lcom/android/server/am/JobSchedulerServiceInjector;->isDelayState:Z

    .line 34
    :goto_0
    sget-boolean v0, Lcom/android/server/am/JobSchedulerServiceInjector;->isDelayState:Z

    if-eqz v0, :cond_3

    .line 35
    const-string/jumbo v0, "JobSchedulerServiceInjector"

    const-string/jumbo v1, "Jobs should be delayed because of low memory or high temperature"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 37
    :cond_3
    sget-boolean v0, Lcom/android/server/am/JobSchedulerServiceInjector;->isDelayState:Z

    return v0

    .line 32
    :cond_4
    sput-boolean v2, Lcom/android/server/am/JobSchedulerServiceInjector;->isDelayState:Z

    goto :goto_0
.end method
