.class public Lcom/miui/server/RestrictAppNetManager;
.super Ljava/lang/Object;
.source "RestrictAppNetManager.java"


# static fields
.field private static final RULE_ALLOW:I = 0x0

.field private static final RULE_RESTRICT:I = 0x1

.field private static final TAG:Ljava/lang/String; = "RestrictAppNetManager"

.field private static final TYPE_ALL:I = 0x3

.field private static sRestrictedAppListBeforeRelease:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static sService:Lcom/android/server/MiuiNetworkManagementService;


# direct methods
.method static synthetic -wrap0(Landroid/content/Context;)V
    .locals 0
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    invoke-static {p0}, Lcom/miui/server/RestrictAppNetManager;->updateRestrictAppNetProp(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static init(Landroid/content/Context;)V
    .locals 4
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 31
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x18

    if-ge v1, v2, :cond_0

    .line 32
    return-void

    .line 35
    :cond_0
    const-string/jumbo v1, "persist.sys.released"

    const/4 v2, 0x0

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    .line 36
    .local v0, "hasReleased":Z
    const-string/jumbo v1, "RestrictAppNetManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "init released : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 37
    if-eqz v0, :cond_1

    .line 38
    return-void

    .line 41
    :cond_1
    invoke-static {}, Lcom/android/server/MiuiNetworkManagementService;->getInstance()Lcom/android/server/MiuiNetworkManagementService;

    move-result-object v1

    sput-object v1, Lcom/miui/server/RestrictAppNetManager;->sService:Lcom/android/server/MiuiNetworkManagementService;

    .line 42
    invoke-static {p0}, Lcom/miui/server/RestrictAppNetManager;->registerCloudDataObserver(Landroid/content/Context;)V

    .line 44
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    sput-object v1, Lcom/miui/server/RestrictAppNetManager;->sRestrictedAppListBeforeRelease:Ljava/util/ArrayList;

    .line 45
    sget-object v1, Lcom/miui/server/RestrictAppNetManager;->sRestrictedAppListBeforeRelease:Ljava/util/ArrayList;

    const-string/jumbo v2, "com.antutu.ABenchMark"

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 46
    sget-object v1, Lcom/miui/server/RestrictAppNetManager;->sRestrictedAppListBeforeRelease:Ljava/util/ArrayList;

    const-string/jumbo v2, "com.antutu.ABenchMark5"

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 47
    sget-object v1, Lcom/miui/server/RestrictAppNetManager;->sRestrictedAppListBeforeRelease:Ljava/util/ArrayList;

    const-string/jumbo v2, "com.antutu.benchmark.bench64"

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 48
    sget-object v1, Lcom/miui/server/RestrictAppNetManager;->sRestrictedAppListBeforeRelease:Ljava/util/ArrayList;

    const-string/jumbo v2, "com.antutu.videobench"

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 49
    sget-object v1, Lcom/miui/server/RestrictAppNetManager;->sRestrictedAppListBeforeRelease:Ljava/util/ArrayList;

    const-string/jumbo v2, "com.antutu.ABenchMark.GL2"

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 50
    sget-object v1, Lcom/miui/server/RestrictAppNetManager;->sRestrictedAppListBeforeRelease:Ljava/util/ArrayList;

    const-string/jumbo v2, "com.antutu.tester"

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 51
    sget-object v1, Lcom/miui/server/RestrictAppNetManager;->sRestrictedAppListBeforeRelease:Ljava/util/ArrayList;

    const-string/jumbo v2, "com.antutu.benchmark.full"

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 52
    sget-object v1, Lcom/miui/server/RestrictAppNetManager;->sRestrictedAppListBeforeRelease:Ljava/util/ArrayList;

    const-string/jumbo v2, "com.music.videogame"

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 53
    sget-object v1, Lcom/miui/server/RestrictAppNetManager;->sRestrictedAppListBeforeRelease:Ljava/util/ArrayList;

    const-string/jumbo v2, "com.ludashi.benchmark"

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 54
    sget-object v1, Lcom/miui/server/RestrictAppNetManager;->sRestrictedAppListBeforeRelease:Ljava/util/ArrayList;

    const-string/jumbo v2, "com.ludashi.benchmarkhd"

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 55
    sget-object v1, Lcom/miui/server/RestrictAppNetManager;->sRestrictedAppListBeforeRelease:Ljava/util/ArrayList;

    const-string/jumbo v2, "com.qihoo360.ludashi.cooling"

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 56
    sget-object v1, Lcom/miui/server/RestrictAppNetManager;->sRestrictedAppListBeforeRelease:Ljava/util/ArrayList;

    const-string/jumbo v2, "cn.opda.android.activity"

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 57
    sget-object v1, Lcom/miui/server/RestrictAppNetManager;->sRestrictedAppListBeforeRelease:Ljava/util/ArrayList;

    const-string/jumbo v2, "com.shouji.cesupaofen"

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 58
    sget-object v1, Lcom/miui/server/RestrictAppNetManager;->sRestrictedAppListBeforeRelease:Ljava/util/ArrayList;

    const-string/jumbo v2, "com.colola.mobiletest"

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 59
    sget-object v1, Lcom/miui/server/RestrictAppNetManager;->sRestrictedAppListBeforeRelease:Ljava/util/ArrayList;

    const-string/jumbo v2, "ws.j7uxli.a6urcd"

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 60
    sget-object v1, Lcom/miui/server/RestrictAppNetManager;->sRestrictedAppListBeforeRelease:Ljava/util/ArrayList;

    const-string/jumbo v2, "com.gamebench.metricscollector"

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 61
    sget-object v1, Lcom/miui/server/RestrictAppNetManager;->sRestrictedAppListBeforeRelease:Ljava/util/ArrayList;

    const-string/jumbo v2, "com.huahua.test"

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 62
    sget-object v1, Lcom/miui/server/RestrictAppNetManager;->sRestrictedAppListBeforeRelease:Ljava/util/ArrayList;

    const-string/jumbo v2, "com.futuremark.dmandroid.application"

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 63
    sget-object v1, Lcom/miui/server/RestrictAppNetManager;->sRestrictedAppListBeforeRelease:Ljava/util/ArrayList;

    const-string/jumbo v2, "com.eembc.coremark"

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 64
    sget-object v1, Lcom/miui/server/RestrictAppNetManager;->sRestrictedAppListBeforeRelease:Ljava/util/ArrayList;

    const-string/jumbo v2, "com.rightware.BasemarkOSII"

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 65
    sget-object v1, Lcom/miui/server/RestrictAppNetManager;->sRestrictedAppListBeforeRelease:Ljava/util/ArrayList;

    const-string/jumbo v2, "com.glbenchmark.glbenchmark27"

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 66
    sget-object v1, Lcom/miui/server/RestrictAppNetManager;->sRestrictedAppListBeforeRelease:Ljava/util/ArrayList;

    const-string/jumbo v2, "com.greenecomputing.linpack"

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 67
    sget-object v1, Lcom/miui/server/RestrictAppNetManager;->sRestrictedAppListBeforeRelease:Ljava/util/ArrayList;

    const-string/jumbo v2, "eu.chainfire.cfbench"

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 68
    sget-object v1, Lcom/miui/server/RestrictAppNetManager;->sRestrictedAppListBeforeRelease:Ljava/util/ArrayList;

    const-string/jumbo v2, "com.primatelabs.geekbench"

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 69
    sget-object v1, Lcom/miui/server/RestrictAppNetManager;->sRestrictedAppListBeforeRelease:Ljava/util/ArrayList;

    const-string/jumbo v2, "com.primatelabs.geekbench3"

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 70
    sget-object v1, Lcom/miui/server/RestrictAppNetManager;->sRestrictedAppListBeforeRelease:Ljava/util/ArrayList;

    const-string/jumbo v2, "com.quicinc.vellamo"

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 71
    sget-object v1, Lcom/miui/server/RestrictAppNetManager;->sRestrictedAppListBeforeRelease:Ljava/util/ArrayList;

    const-string/jumbo v2, "com.aurorasoftworks.quadrant.ui.advanced"

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 72
    sget-object v1, Lcom/miui/server/RestrictAppNetManager;->sRestrictedAppListBeforeRelease:Ljava/util/ArrayList;

    const-string/jumbo v2, "com.aurorasoftworks.quadrant.ui.standard"

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 73
    sget-object v1, Lcom/miui/server/RestrictAppNetManager;->sRestrictedAppListBeforeRelease:Ljava/util/ArrayList;

    const-string/jumbo v2, "eu.chainfire.perfmon"

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 74
    sget-object v1, Lcom/miui/server/RestrictAppNetManager;->sRestrictedAppListBeforeRelease:Ljava/util/ArrayList;

    const-string/jumbo v2, "com.evozi.deviceid"

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 75
    sget-object v1, Lcom/miui/server/RestrictAppNetManager;->sRestrictedAppListBeforeRelease:Ljava/util/ArrayList;

    const-string/jumbo v2, "com.finalwire.aida64"

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 76
    sget-object v1, Lcom/miui/server/RestrictAppNetManager;->sRestrictedAppListBeforeRelease:Ljava/util/ArrayList;

    const-string/jumbo v2, "com.cpuid.cpu_z"

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 77
    sget-object v1, Lcom/miui/server/RestrictAppNetManager;->sRestrictedAppListBeforeRelease:Ljava/util/ArrayList;

    const-string/jumbo v2, "rs.in.luka.android.pi"

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 78
    sget-object v1, Lcom/miui/server/RestrictAppNetManager;->sRestrictedAppListBeforeRelease:Ljava/util/ArrayList;

    const-string/jumbo v2, "com.uzywpq.cqlzahm"

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 79
    sget-object v1, Lcom/miui/server/RestrictAppNetManager;->sRestrictedAppListBeforeRelease:Ljava/util/ArrayList;

    const-string/jumbo v2, "com.xidige.androidinfo"

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 80
    sget-object v1, Lcom/miui/server/RestrictAppNetManager;->sRestrictedAppListBeforeRelease:Ljava/util/ArrayList;

    const-string/jumbo v2, "com.appems.hawkeye"

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 81
    sget-object v1, Lcom/miui/server/RestrictAppNetManager;->sRestrictedAppListBeforeRelease:Ljava/util/ArrayList;

    const-string/jumbo v2, "com.tyyj89.androidsuperinfo"

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 82
    sget-object v1, Lcom/miui/server/RestrictAppNetManager;->sRestrictedAppListBeforeRelease:Ljava/util/ArrayList;

    const-string/jumbo v2, "com.ft1gp"

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 83
    sget-object v1, Lcom/miui/server/RestrictAppNetManager;->sRestrictedAppListBeforeRelease:Ljava/util/ArrayList;

    const-string/jumbo v2, "ws.k6t2we.b4zyjdjv"

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 84
    sget-object v1, Lcom/miui/server/RestrictAppNetManager;->sRestrictedAppListBeforeRelease:Ljava/util/ArrayList;

    const-string/jumbo v2, "com.myapp.dongxie_app1"

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 85
    sget-object v1, Lcom/miui/server/RestrictAppNetManager;->sRestrictedAppListBeforeRelease:Ljava/util/ArrayList;

    const-string/jumbo v2, "com.shoujijiance.zj"

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 86
    sget-object v1, Lcom/miui/server/RestrictAppNetManager;->sRestrictedAppListBeforeRelease:Ljava/util/ArrayList;

    const-string/jumbo v2, "com.qrj.test"

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 87
    sget-object v1, Lcom/miui/server/RestrictAppNetManager;->sRestrictedAppListBeforeRelease:Ljava/util/ArrayList;

    const-string/jumbo v2, "com.appems.testonetest"

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 89
    const/4 v1, 0x1

    invoke-static {v1}, Lcom/miui/server/RestrictAppNetManager;->updateFirewallRule(I)V

    .line 29
    return-void
.end method

.method static isRestrictedAppNet(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    .line 26
    const/4 v0, 0x0

    return v0
.end method

.method private static registerCloudDataObserver(Landroid/content/Context;)V
    .locals 4
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 102
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-static {}, Landroid/provider/MiuiSettings$SettingsCloudData;->getCloudDataNotifyUri()Landroid/net/Uri;

    move-result-object v1

    .line 103
    new-instance v2, Lcom/miui/server/RestrictAppNetManager$1;

    invoke-static {}, Lcom/android/internal/os/BackgroundThread;->getHandler()Landroid/os/Handler;

    move-result-object v3

    invoke-direct {v2, v3, p0}, Lcom/miui/server/RestrictAppNetManager$1;-><init>(Landroid/os/Handler;Landroid/content/Context;)V

    const/4 v3, 0x1

    .line 102
    invoke-virtual {v0, v1, v3, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 101
    return-void
.end method

.method private static updateFirewallRule(I)V
    .locals 5
    .param p0, "rule"    # I

    .prologue
    .line 93
    sget-object v2, Lcom/miui/server/RestrictAppNetManager;->sRestrictedAppListBeforeRelease:Ljava/util/ArrayList;

    if-eqz v2, :cond_0

    sget-object v2, Lcom/miui/server/RestrictAppNetManager;->sService:Lcom/android/server/MiuiNetworkManagementService;

    if-eqz v2, :cond_0

    .line 94
    const-string/jumbo v2, "RestrictAppNetManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "updateFirewallRule : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 95
    sget-object v2, Lcom/miui/server/RestrictAppNetManager;->sRestrictedAppListBeforeRelease:Ljava/util/ArrayList;

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "pkgName$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 96
    .local v0, "pkgName":Ljava/lang/String;
    sget-object v2, Lcom/miui/server/RestrictAppNetManager;->sService:Lcom/android/server/MiuiNetworkManagementService;

    const/4 v3, 0x3

    invoke-virtual {v2, v0, p0, v3}, Lcom/android/server/MiuiNetworkManagementService;->setMiuiFirewallRule(Ljava/lang/String;II)Z

    goto :goto_0

    .line 92
    .end local v0    # "pkgName":Ljava/lang/String;
    .end local v1    # "pkgName$iterator":Ljava/util/Iterator;
    :cond_0
    return-void
.end method

.method private static updateRestrictAppNetProp(Landroid/content/Context;)V
    .locals 8
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 113
    :try_start_0
    const-string/jumbo v6, "persist.sys.released"

    const/4 v7, 0x0

    invoke-static {v6, v7}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v5

    .line 114
    .local v5, "released":Z
    if-nez v5, :cond_3

    .line 115
    const-string/jumbo v6, "RestrictAppNetManager"

    const-string/jumbo v7, "updateRestrictAppNetProp"

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 116
    sget-object v3, Landroid/os/Build;->DEVICE:Ljava/lang/String;

    .line 118
    .local v3, "deviceMode":Ljava/lang/String;
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string/jumbo v7, "RestrictAppControl"

    .line 117
    invoke-static {v6, v7}, Landroid/provider/MiuiSettings$SettingsCloudData;->getCloudDataList(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/util/List;

    move-result-object v2

    .line 119
    .local v2, "dataList":Ljava/util/List;, "Ljava/util/List<Landroid/provider/MiuiSettings$SettingsCloudData$CloudData;>;"
    if-eqz v2, :cond_0

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v6

    if-nez v6, :cond_1

    .line 120
    :cond_0
    return-void

    .line 122
    :cond_1
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "data$iterator":Ljava/util/Iterator;
    :cond_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/provider/MiuiSettings$SettingsCloudData$CloudData;

    .line 123
    .local v0, "data":Landroid/provider/MiuiSettings$SettingsCloudData$CloudData;
    const-string/jumbo v6, "released"

    const/4 v7, 0x0

    invoke-virtual {v0, v3, v7}, Landroid/provider/MiuiSettings$SettingsCloudData$CloudData;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 124
    const-string/jumbo v6, "persist.sys.released"

    const-string/jumbo v7, "true"

    invoke-static {v6, v7}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 125
    const/4 v6, 0x0

    invoke-static {v6}, Lcom/miui/server/RestrictAppNetManager;->updateFirewallRule(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 126
    return-void

    .line 130
    .end local v0    # "data":Landroid/provider/MiuiSettings$SettingsCloudData$CloudData;
    .end local v1    # "data$iterator":Ljava/util/Iterator;
    .end local v2    # "dataList":Ljava/util/List;, "Ljava/util/List<Landroid/provider/MiuiSettings$SettingsCloudData$CloudData;>;"
    .end local v3    # "deviceMode":Ljava/lang/String;
    .end local v5    # "released":Z
    :catch_0
    move-exception v4

    .line 131
    .local v4, "e":Ljava/lang/Exception;
    const-string/jumbo v6, "RestrictAppNetManager"

    const-string/jumbo v7, "update released prop exception"

    invoke-static {v6, v7, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 111
    .end local v4    # "e":Ljava/lang/Exception;
    :cond_3
    return-void
.end method
