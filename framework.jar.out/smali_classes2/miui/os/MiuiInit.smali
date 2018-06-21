.class public Lmiui/os/MiuiInit;
.super Ljava/lang/Object;
.source "MiuiInit.java"


# static fields
.field public static final ACTION_MIUI_INIT_COMPLETED:Ljava/lang/String; = "miui.intent.action.MIUI_INIT_COMPLETED"

.field public static final REGION:Ljava/lang/String; = "region"

.field public static final SERVICE_NAME:Ljava/lang/String; = "MiuiInit"

.field private static final TAG:Ljava/lang/String; = "MiuiInit"

.field private static sHasNavigationBar:Z

.field private static sNavigationBarInited:Z

.field private static sService:Lmiui/os/IMiuiInit;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static doFactoryReset(Z)V
    .locals 3
    .param p0, "keepUserApps"    # Z

    .prologue
    .line 67
    :try_start_0
    invoke-static {}, Lmiui/os/MiuiInit;->getService()Lmiui/os/IMiuiInit;

    move-result-object v1

    invoke-interface {v1, p0}, Lmiui/os/IMiuiInit;->doFactoryReset(Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 65
    :goto_0
    return-void

    .line 68
    :catch_0
    move-exception v0

    .line 69
    .local v0, "e":Landroid/os/RemoteException;
    const-string/jumbo v1, "MiuiInit"

    const-string/jumbo v2, "Occur RemoteException when removing preinstall app history file"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public static getAspectRatio(Ljava/lang/String;)F
    .locals 5
    .param p0, "pkg"    # Ljava/lang/String;

    .prologue
    const/high16 v4, 0x40400000    # 3.0f

    .line 154
    if-eqz p0, :cond_0

    invoke-static {}, Lmiui/os/MiuiInit;->hasNavigationBar()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 158
    :try_start_0
    invoke-static {}, Lmiui/os/MiuiInit;->getService()Lmiui/os/IMiuiInit;

    move-result-object v1

    invoke-interface {v1, p0}, Lmiui/os/IMiuiInit;->getAspectRatio(Ljava/lang/String;)F
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    return v1

    .line 155
    :cond_0
    return v4

    .line 159
    :catch_0
    move-exception v0

    .line 160
    .local v0, "e":Landroid/os/RemoteException;
    const-string/jumbo v1, "MiuiInit"

    .line 161
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Occur RemoteException when getAspectRatio:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 160
    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 163
    return v4
.end method

.method public static getCustVariants()[Ljava/lang/String;
    .locals 3

    .prologue
    .line 58
    :try_start_0
    invoke-static {}, Lmiui/os/MiuiInit;->getService()Lmiui/os/IMiuiInit;

    move-result-object v1

    invoke-interface {v1}, Lmiui/os/IMiuiInit;->getCustVariants()[Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    return-object v1

    .line 59
    :catch_0
    move-exception v0

    .line 60
    .local v0, "e":Landroid/os/RemoteException;
    const-string/jumbo v1, "MiuiInit"

    const-string/jumbo v2, "Occur RemoteException when fetch cust variants"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 62
    const/4 v1, 0x0

    return-object v1
.end method

.method public static getDefaultAspectType(Ljava/lang/String;)I
    .locals 5
    .param p0, "pkg"    # Ljava/lang/String;

    .prologue
    const/4 v4, 0x0

    .line 167
    if-eqz p0, :cond_0

    invoke-static {}, Lmiui/os/MiuiInit;->hasNavigationBar()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 171
    :try_start_0
    invoke-static {}, Lmiui/os/MiuiInit;->getService()Lmiui/os/IMiuiInit;

    move-result-object v1

    invoke-interface {v1, p0}, Lmiui/os/IMiuiInit;->getDefaultAspectType(Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    return v1

    .line 168
    :cond_0
    return v4

    .line 172
    :catch_0
    move-exception v0

    .line 173
    .local v0, "e":Landroid/os/RemoteException;
    const-string/jumbo v1, "MiuiInit"

    .line 174
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Occur RemoteException when getDefaultAspectType:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 173
    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 176
    return v4
.end method

.method public static getMiuiChannelPath(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p0, "pkg"    # Ljava/lang/String;

    .prologue
    .line 84
    :try_start_0
    invoke-static {}, Lmiui/os/MiuiInit;->getService()Lmiui/os/IMiuiInit;

    move-result-object v1

    invoke-interface {v1, p0}, Lmiui/os/IMiuiInit;->getMiuiChannelPath(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    return-object v1

    .line 85
    :catch_0
    move-exception v0

    .line 86
    .local v0, "e":Landroid/os/RemoteException;
    const-string/jumbo v1, "MiuiInit"

    .line 87
    const-string/jumbo v2, "Occur RemoteException when checking preinstalled channel"

    .line 86
    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 89
    const-string/jumbo v1, ""

    return-object v1
.end method

.method public static getMiuiPreinstallAppPath(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p0, "pkg"    # Ljava/lang/String;

    .prologue
    .line 103
    :try_start_0
    invoke-static {}, Lmiui/os/MiuiInit;->getService()Lmiui/os/IMiuiInit;

    move-result-object v1

    invoke-interface {v1, p0}, Lmiui/os/IMiuiInit;->getMiuiPreinstallAppPath(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    return-object v1

    .line 104
    :catch_0
    move-exception v0

    .line 105
    .local v0, "e":Landroid/os/RemoteException;
    const-string/jumbo v1, "MiuiInit"

    .line 106
    const-string/jumbo v2, "Occur RemoteException when checking preinstalled app path"

    .line 105
    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 108
    const-string/jumbo v1, ""

    return-object v1
.end method

.method private static declared-synchronized getService()Lmiui/os/IMiuiInit;
    .locals 3

    .prologue
    const-class v2, Lmiui/os/MiuiInit;

    monitor-enter v2

    .line 26
    :try_start_0
    sget-object v1, Lmiui/os/MiuiInit;->sService:Lmiui/os/IMiuiInit;

    if-nez v1, :cond_0

    .line 27
    const-string/jumbo v1, "MiuiInit"

    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 28
    .local v0, "b":Landroid/os/IBinder;
    invoke-static {v0}, Lmiui/os/IMiuiInit$Stub;->asInterface(Landroid/os/IBinder;)Lmiui/os/IMiuiInit;

    move-result-object v1

    sput-object v1, Lmiui/os/MiuiInit;->sService:Lmiui/os/IMiuiInit;

    .line 30
    :cond_0
    sget-object v1, Lmiui/os/MiuiInit;->sService:Lmiui/os/IMiuiInit;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v2

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v2

    throw v1
.end method

.method private static hasNavigationBar()Z
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 112
    sget-boolean v1, Lmiui/os/MiuiInit;->sNavigationBarInited:Z

    if-nez v1, :cond_0

    .line 115
    const-string/jumbo v1, "qemu.hw.mainkeys"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 116
    .local v0, "navBarOverride":Ljava/lang/String;
    const-string/jumbo v1, "1"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 117
    const/4 v1, 0x0

    sput-boolean v1, Lmiui/os/MiuiInit;->sHasNavigationBar:Z

    .line 123
    :goto_0
    sput-boolean v3, Lmiui/os/MiuiInit;->sNavigationBarInited:Z

    .line 125
    :cond_0
    sget-boolean v1, Lmiui/os/MiuiInit;->sHasNavigationBar:Z

    return v1

    .line 118
    :cond_1
    const-string/jumbo v1, "0"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 119
    sput-boolean v3, Lmiui/os/MiuiInit;->sHasNavigationBar:Z

    goto :goto_0

    .line 121
    :cond_2
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x112006b

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v1

    sput-boolean v1, Lmiui/os/MiuiInit;->sHasNavigationBar:Z

    goto :goto_0
.end method

.method public static initCustEnvironment(Ljava/lang/String;Lmiui/os/IMiuiInitObserver;)Z
    .locals 5
    .param p0, "custVariant"    # Ljava/lang/String;
    .param p1, "obs"    # Lmiui/os/IMiuiInitObserver;

    .prologue
    .line 35
    const/4 v1, 0x0

    .line 37
    .local v1, "ret":Z
    :try_start_0
    invoke-static {}, Lmiui/os/MiuiInit;->getService()Lmiui/os/IMiuiInit;

    move-result-object v2

    invoke-interface {v2, p0, p1}, Lmiui/os/IMiuiInit;->initCustEnvironment(Ljava/lang/String;Lmiui/os/IMiuiInitObserver;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 43
    .end local v1    # "ret":Z
    :goto_0
    return v1

    .line 38
    .restart local v1    # "ret":Z
    :catch_0
    move-exception v0

    .line 39
    .local v0, "e":Landroid/os/RemoteException;
    const-string/jumbo v2, "MiuiInit"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Occur RemoteException when init cust environment for ["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 40
    const-string/jumbo v4, "]"

    .line 39
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 41
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static installPreinstallApp()Z
    .locals 3

    .prologue
    .line 48
    :try_start_0
    invoke-static {}, Lmiui/os/MiuiInit;->getService()Lmiui/os/IMiuiInit;

    move-result-object v1

    invoke-interface {v1}, Lmiui/os/IMiuiInit;->installPreinstallApp()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 49
    const/4 v1, 0x1

    return v1

    .line 50
    :catch_0
    move-exception v0

    .line 51
    .local v0, "e":Landroid/os/RemoteException;
    const-string/jumbo v1, "MiuiInit"

    const-string/jumbo v2, "Occur RemoteException when install preinstall app"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 53
    const/4 v1, 0x0

    return v1
.end method

.method public static isPreinstalledPackage(Ljava/lang/String;)Z
    .locals 3
    .param p0, "pkg"    # Ljava/lang/String;

    .prologue
    .line 75
    :try_start_0
    invoke-static {}, Lmiui/os/MiuiInit;->getService()Lmiui/os/IMiuiInit;

    move-result-object v1

    invoke-interface {v1, p0}, Lmiui/os/IMiuiInit;->isPreinstalledPackage(Ljava/lang/String;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    return v1

    .line 76
    :catch_0
    move-exception v0

    .line 77
    .local v0, "e":Landroid/os/RemoteException;
    const-string/jumbo v1, "MiuiInit"

    const-string/jumbo v2, "Occur RemoteException when checking preinstalled package"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 79
    const/4 v1, 0x0

    return v1
.end method

.method public static isRestrictAspect(Ljava/lang/String;)Z
    .locals 5
    .param p0, "pkg"    # Ljava/lang/String;

    .prologue
    const/4 v4, 0x0

    .line 141
    if-eqz p0, :cond_0

    invoke-static {}, Lmiui/os/MiuiInit;->hasNavigationBar()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 145
    :try_start_0
    invoke-static {}, Lmiui/os/MiuiInit;->getService()Lmiui/os/IMiuiInit;

    move-result-object v1

    invoke-interface {v1, p0}, Lmiui/os/IMiuiInit;->isRestrictAspect(Ljava/lang/String;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    return v1

    .line 142
    :cond_0
    return v4

    .line 146
    :catch_0
    move-exception v0

    .line 147
    .local v0, "e":Landroid/os/RemoteException;
    const-string/jumbo v1, "MiuiInit"

    .line 148
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Occur RemoteException when isRestrictAspect:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 147
    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 150
    return v4
.end method

.method public static removeFromPreinstallList(Ljava/lang/String;)V
    .locals 3
    .param p0, "pkg"    # Ljava/lang/String;

    .prologue
    .line 94
    :try_start_0
    invoke-static {}, Lmiui/os/MiuiInit;->getService()Lmiui/os/IMiuiInit;

    move-result-object v1

    invoke-interface {v1, p0}, Lmiui/os/IMiuiInit;->removeFromPreinstallList(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 92
    :goto_0
    return-void

    .line 95
    :catch_0
    move-exception v0

    .line 96
    .local v0, "e":Landroid/os/RemoteException;
    const-string/jumbo v1, "MiuiInit"

    .line 97
    const-string/jumbo v2, "Occur RemoteException when removing from preinstall list"

    .line 96
    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public static setRestrictAspect(Ljava/lang/String;Z)V
    .locals 4
    .param p0, "pkg"    # Ljava/lang/String;
    .param p1, "restrict"    # Z

    .prologue
    .line 129
    if-eqz p0, :cond_0

    invoke-static {}, Lmiui/os/MiuiInit;->hasNavigationBar()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 133
    :try_start_0
    invoke-static {}, Lmiui/os/MiuiInit;->getService()Lmiui/os/IMiuiInit;

    move-result-object v1

    invoke-interface {v1, p0, p1}, Lmiui/os/IMiuiInit;->setRestrictAspect(Ljava/lang/String;Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 128
    :goto_0
    return-void

    .line 130
    :cond_0
    return-void

    .line 134
    :catch_0
    move-exception v0

    .line 135
    .local v0, "e":Landroid/os/RemoteException;
    const-string/jumbo v1, "MiuiInit"

    .line 136
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Occur RemoteException when setRestrictAspect:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 135
    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
