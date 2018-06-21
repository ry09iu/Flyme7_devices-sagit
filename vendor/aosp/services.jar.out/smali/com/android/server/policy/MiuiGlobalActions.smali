.class Lcom/android/server/policy/MiuiGlobalActions;
.super Ljava/lang/Object;
.source "MiuiGlobalActions.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/policy/MiuiGlobalActions$1;,
        Lcom/android/server/policy/MiuiGlobalActions$2;,
        Lcom/android/server/policy/MiuiGlobalActions$3;,
        Lcom/android/server/policy/MiuiGlobalActions$4;,
        Lcom/android/server/policy/MiuiGlobalActions$5;,
        Lcom/android/server/policy/MiuiGlobalActions$6;,
        Lcom/android/server/policy/MiuiGlobalActions$GlobalActionsMamlView;
    }
.end annotation


# static fields
.field private static final BOOT_ALARM_INTENT_SERVICE:Ljava/lang/String; = "com.miui.powercenter.provider.BootAlarmIntentService"

.field private static final MESSAGE_DISMISS:I = 0x0

.field private static final MESSAGE_REFRESH:I = 0x1

.field private static final SHUTDOWN_ALARM_SERVICE_NAME:Ljava/lang/String; = "com.android.deskclock.util.ShutdownAlarm"

.field private static final TAG:Ljava/lang/String; = "MiuiGlobalActions"

.field private static final WAKE_ALARM_TIME_OFFSET:I = 0x78


# instance fields
.field private mAirplaneModeObserver:Landroid/database/ContentObserver;

.field private final mAudioManager:Landroid/media/AudioManager;

.field private mBinder:Landroid/os/Binder;

.field private mBroadcastReceiver:Landroid/content/BroadcastReceiver;

.field private final mCommandListener:Lmiui/maml/ScreenElementRoot$OnExternCommandListener;

.field private final mContext:Landroid/content/Context;

.field private final mDialogLayoutChangeListener:Landroid/view/View$OnLayoutChangeListener;

.field private mHandler:Landroid/os/Handler;

.field private mRenderThread:Lmiui/maml/RenderThread;

.field private mResourceManager:Lmiui/maml/ResourceManager;

.field private mRingerModeReceiver:Landroid/content/BroadcastReceiver;

.field private mRoot:Lcom/android/server/policy/MiuiGlobalActions$GlobalActionsMamlView;

.field private mRotation:I

.field private mScreenElementRoot:Lmiui/maml/ScreenElementRoot;

.field private mStatusBarService:Lcom/android/internal/statusbar/IStatusBarService;

.field private final mWindowManager:Landroid/view/WindowManager;


# direct methods
.method static synthetic -get0(Lcom/android/server/policy/MiuiGlobalActions;)Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Lcom/android/server/policy/MiuiGlobalActions;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic -get1(Lcom/android/server/policy/MiuiGlobalActions;)I
    .locals 1

    iget v0, p0, Lcom/android/server/policy/MiuiGlobalActions;->mRotation:I

    return v0
.end method

.method static synthetic -get2(Lcom/android/server/policy/MiuiGlobalActions;)Lmiui/maml/ScreenElementRoot;
    .locals 1

    iget-object v0, p0, Lcom/android/server/policy/MiuiGlobalActions;->mScreenElementRoot:Lmiui/maml/ScreenElementRoot;

    return-object v0
.end method

.method static synthetic -get3(Lcom/android/server/policy/MiuiGlobalActions;)Landroid/view/WindowManager;
    .locals 1

    iget-object v0, p0, Lcom/android/server/policy/MiuiGlobalActions;->mWindowManager:Landroid/view/WindowManager;

    return-object v0
.end method

.method static synthetic -wrap0()Landroid/os/IPowerManager;
    .locals 1

    invoke-static {}, Lcom/android/server/policy/MiuiGlobalActions;->getPowerManager()Landroid/os/IPowerManager;

    move-result-object v0

    return-object v0
.end method

.method static synthetic -wrap1(Lcom/android/server/policy/MiuiGlobalActions;I)V
    .locals 0
    .param p1, "toggleId"    # I

    .prologue
    invoke-direct {p0, p1}, Lcom/android/server/policy/MiuiGlobalActions;->sendAction(I)V

    return-void
.end method

.method static synthetic -wrap2(Lcom/android/server/policy/MiuiGlobalActions;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/server/policy/MiuiGlobalActions;->updateVariables()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/view/WindowManagerPolicy$WindowManagerFuncs;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "windowManagerFuncs"    # Landroid/view/WindowManagerPolicy$WindowManagerFuncs;

    .prologue
    .line 97
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 92
    new-instance v0, Landroid/os/Binder;

    invoke-direct {v0}, Landroid/os/Binder;-><init>()V

    iput-object v0, p0, Lcom/android/server/policy/MiuiGlobalActions;->mBinder:Landroid/os/Binder;

    .line 113
    new-instance v0, Lcom/android/server/policy/MiuiGlobalActions$1;

    invoke-direct {v0, p0}, Lcom/android/server/policy/MiuiGlobalActions$1;-><init>(Lcom/android/server/policy/MiuiGlobalActions;)V

    iput-object v0, p0, Lcom/android/server/policy/MiuiGlobalActions;->mCommandListener:Lmiui/maml/ScreenElementRoot$OnExternCommandListener;

    .line 287
    new-instance v0, Lcom/android/server/policy/MiuiGlobalActions$2;

    invoke-direct {v0, p0}, Lcom/android/server/policy/MiuiGlobalActions$2;-><init>(Lcom/android/server/policy/MiuiGlobalActions;)V

    iput-object v0, p0, Lcom/android/server/policy/MiuiGlobalActions;->mDialogLayoutChangeListener:Landroid/view/View$OnLayoutChangeListener;

    .line 297
    new-instance v0, Lcom/android/server/policy/MiuiGlobalActions$3;

    invoke-direct {v0, p0}, Lcom/android/server/policy/MiuiGlobalActions$3;-><init>(Lcom/android/server/policy/MiuiGlobalActions;)V

    iput-object v0, p0, Lcom/android/server/policy/MiuiGlobalActions;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    .line 310
    new-instance v0, Lcom/android/server/policy/MiuiGlobalActions$4;

    invoke-direct {v0, p0}, Lcom/android/server/policy/MiuiGlobalActions$4;-><init>(Lcom/android/server/policy/MiuiGlobalActions;)V

    iput-object v0, p0, Lcom/android/server/policy/MiuiGlobalActions;->mRingerModeReceiver:Landroid/content/BroadcastReceiver;

    .line 317
    new-instance v0, Lcom/android/server/policy/MiuiGlobalActions$5;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/android/server/policy/MiuiGlobalActions$5;-><init>(Lcom/android/server/policy/MiuiGlobalActions;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/server/policy/MiuiGlobalActions;->mAirplaneModeObserver:Landroid/database/ContentObserver;

    .line 327
    new-instance v0, Lcom/android/server/policy/MiuiGlobalActions$6;

    invoke-direct {v0, p0}, Lcom/android/server/policy/MiuiGlobalActions$6;-><init>(Lcom/android/server/policy/MiuiGlobalActions;)V

    iput-object v0, p0, Lcom/android/server/policy/MiuiGlobalActions;->mHandler:Landroid/os/Handler;

    .line 98
    iput-object p1, p0, Lcom/android/server/policy/MiuiGlobalActions;->mContext:Landroid/content/Context;

    .line 99
    iget-object v0, p0, Lcom/android/server/policy/MiuiGlobalActions;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "audio"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    iput-object v0, p0, Lcom/android/server/policy/MiuiGlobalActions;->mAudioManager:Landroid/media/AudioManager;

    .line 100
    iget-object v0, p0, Lcom/android/server/policy/MiuiGlobalActions;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "window"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    iput-object v0, p0, Lcom/android/server/policy/MiuiGlobalActions;->mWindowManager:Landroid/view/WindowManager;

    .line 102
    new-instance v0, Lmiui/maml/ResourceManager;

    new-instance v1, Lmiui/maml/util/ZipResourceLoader;

    const-string/jumbo v2, "/system/media/theme/default/powermenu"

    invoke-direct {v1, v2}, Lmiui/maml/util/ZipResourceLoader;-><init>(Ljava/lang/String;)V

    invoke-direct {v0, v1}, Lmiui/maml/ResourceManager;-><init>(Lmiui/maml/ResourceLoader;)V

    iput-object v0, p0, Lcom/android/server/policy/MiuiGlobalActions;->mResourceManager:Lmiui/maml/ResourceManager;

    .line 103
    new-instance v0, Lmiui/maml/ScreenElementRoot;

    new-instance v1, Lmiui/maml/ScreenContext;

    iget-object v2, p0, Lcom/android/server/policy/MiuiGlobalActions;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/android/server/policy/MiuiGlobalActions;->mResourceManager:Lmiui/maml/ResourceManager;

    invoke-direct {v1, v2, v3}, Lmiui/maml/ScreenContext;-><init>(Landroid/content/Context;Lmiui/maml/ResourceManager;)V

    invoke-direct {v0, v1}, Lmiui/maml/ScreenElementRoot;-><init>(Lmiui/maml/ScreenContext;)V

    iput-object v0, p0, Lcom/android/server/policy/MiuiGlobalActions;->mScreenElementRoot:Lmiui/maml/ScreenElementRoot;

    .line 104
    iget-object v0, p0, Lcom/android/server/policy/MiuiGlobalActions;->mScreenElementRoot:Lmiui/maml/ScreenElementRoot;

    iget-object v1, p0, Lcom/android/server/policy/MiuiGlobalActions;->mCommandListener:Lmiui/maml/ScreenElementRoot$OnExternCommandListener;

    invoke-virtual {v0, v1}, Lmiui/maml/ScreenElementRoot;->setOnExternCommandListener(Lmiui/maml/ScreenElementRoot$OnExternCommandListener;)V

    .line 105
    iget-object v0, p0, Lcom/android/server/policy/MiuiGlobalActions;->mScreenElementRoot:Lmiui/maml/ScreenElementRoot;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lmiui/maml/ScreenElementRoot;->setKeepResource(Z)V

    .line 106
    iget-object v0, p0, Lcom/android/server/policy/MiuiGlobalActions;->mScreenElementRoot:Lmiui/maml/ScreenElementRoot;

    invoke-virtual {v0}, Lmiui/maml/ScreenElementRoot;->load()Z

    .line 107
    iget-object v0, p0, Lcom/android/server/policy/MiuiGlobalActions;->mScreenElementRoot:Lmiui/maml/ScreenElementRoot;

    invoke-virtual {v0}, Lmiui/maml/ScreenElementRoot;->init()V

    .line 110
    const-string/jumbo v0, "statusbar"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 109
    invoke-static {v0}, Lcom/android/internal/statusbar/IStatusBarService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/statusbar/IStatusBarService;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/policy/MiuiGlobalActions;->mStatusBarService:Lcom/android/internal/statusbar/IStatusBarService;

    .line 97
    return-void
.end method

.method private static getPowerManager()Landroid/os/IPowerManager;
    .locals 1

    .prologue
    .line 142
    const-string/jumbo v0, "power"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/IPowerManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/IPowerManager;

    move-result-object v0

    return-object v0
.end method

.method private loadMamlView()Lcom/android/server/policy/MiuiGlobalActions$GlobalActionsMamlView;
    .locals 6

    .prologue
    .line 152
    iget-object v1, p0, Lcom/android/server/policy/MiuiGlobalActions;->mScreenElementRoot:Lmiui/maml/ScreenElementRoot;

    invoke-virtual {v1}, Lmiui/maml/ScreenElementRoot;->getContext()Lmiui/maml/ScreenContext;

    move-result-object v1

    iget-object v1, v1, Lmiui/maml/ScreenContext;->mVariables:Lmiui/maml/data/Variables;

    invoke-virtual {v1}, Lmiui/maml/data/Variables;->reset()V

    .line 153
    invoke-direct {p0}, Lcom/android/server/policy/MiuiGlobalActions;->updateVariables()V

    .line 154
    iget-object v1, p0, Lcom/android/server/policy/MiuiGlobalActions;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget-object v1, v1, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    .line 155
    iget-object v2, p0, Lcom/android/server/policy/MiuiGlobalActions;->mResourceManager:Lmiui/maml/ResourceManager;

    .line 156
    iget-object v3, p0, Lcom/android/server/policy/MiuiGlobalActions;->mScreenElementRoot:Lmiui/maml/ScreenElementRoot;

    invoke-virtual {v3}, Lmiui/maml/ScreenElementRoot;->getContext()Lmiui/maml/ScreenContext;

    move-result-object v3

    iget-object v3, v3, Lmiui/maml/ScreenContext;->mVariables:Lmiui/maml/data/Variables;

    .line 154
    invoke-static {v1, v2, v3}, Lmiui/maml/LanguageHelper;->load(Ljava/util/Locale;Lmiui/maml/ResourceManager;Lmiui/maml/data/Variables;)Z

    .line 157
    new-instance v0, Lcom/android/server/policy/MiuiGlobalActions$GlobalActionsMamlView;

    iget-object v2, p0, Lcom/android/server/policy/MiuiGlobalActions;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/android/server/policy/MiuiGlobalActions;->mScreenElementRoot:Lmiui/maml/ScreenElementRoot;

    const-wide/16 v4, 0x1f4

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/android/server/policy/MiuiGlobalActions$GlobalActionsMamlView;-><init>(Lcom/android/server/policy/MiuiGlobalActions;Landroid/content/Context;Lmiui/maml/ScreenElementRoot;J)V

    .line 158
    .local v0, "retView":Lcom/android/server/policy/MiuiGlobalActions$GlobalActionsMamlView;
    return-object v0
.end method

.method private sendAction(I)V
    .locals 2
    .param p1, "toggleId"    # I

    .prologue
    .line 146
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "com.miui.app.ExtraStatusBarManager.action_TRIGGER_TOGGLE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 147
    .local v0, "intent":Landroid/content/Intent;
    const-string/jumbo v1, "com.miui.app.ExtraStatusBarManager.extra_TOGGLE_ID"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 148
    iget-object v1, p0, Lcom/android/server/policy/MiuiGlobalActions;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 145
    return-void
.end method

.method private updateVariables()V
    .locals 14

    .prologue
    .line 166
    iget-object v11, p0, Lcom/android/server/policy/MiuiGlobalActions;->mContext:Landroid/content/Context;

    invoke-virtual {v11}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v11

    const-string/jumbo v12, "airplane_mode_on"

    const/4 v13, 0x0

    invoke-static {v11, v12, v13}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v11

    const/4 v12, 0x1

    if-ne v11, v12, :cond_2

    const/4 v3, 0x1

    .line 167
    .local v3, "isAirplaneModeOn":Z
    :goto_0
    iget-object v11, p0, Lcom/android/server/policy/MiuiGlobalActions;->mScreenElementRoot:Lmiui/maml/ScreenElementRoot;

    invoke-virtual {v11}, Lmiui/maml/ScreenElementRoot;->getVariables()Lmiui/maml/data/Variables;

    move-result-object v10

    .line 168
    .local v10, "variables":Lmiui/maml/data/Variables;
    const-string/jumbo v11, "airplane_mode"

    if-eqz v3, :cond_3

    const-wide/high16 v12, 0x3ff0000000000000L    # 1.0

    :goto_1
    invoke-static {v11, v10, v12, v13}, Lmiui/maml/util/Utils;->putVariableNumber(Ljava/lang/String;Lmiui/maml/data/Variables;D)V

    .line 169
    sget-boolean v11, Landroid/provider/MiuiSettings$SilenceMode;->isSupported:Z

    if-eqz v11, :cond_5

    .line 170
    iget-object v11, p0, Lcom/android/server/policy/MiuiGlobalActions;->mContext:Landroid/content/Context;

    invoke-static {v11}, Landroid/provider/MiuiSettings$SilenceMode;->getZenMode(Landroid/content/Context;)I

    move-result v11

    const/4 v12, 0x1

    if-ne v11, v12, :cond_4

    const/4 v4, 0x1

    .line 172
    .local v4, "isEnabled":Z
    :goto_2
    const-string/jumbo v11, "silent_mode"

    if-eqz v4, :cond_7

    const-wide/high16 v12, 0x3ff0000000000000L    # 1.0

    :goto_3
    invoke-static {v11, v10, v12, v13}, Lmiui/maml/util/Utils;->putVariableNumber(Ljava/lang/String;Lmiui/maml/data/Variables;D)V

    .line 173
    const-string/jumbo v11, "show_emergency"

    const-string/jumbo v12, "IN"

    invoke-static {}, Lmiui/os/Build;->getRegion()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_8

    const-wide/high16 v12, 0x3ff0000000000000L    # 1.0

    :goto_4
    invoke-static {v11, v10, v12, v13}, Lmiui/maml/util/Utils;->putVariableNumber(Ljava/lang/String;Lmiui/maml/data/Variables;D)V

    .line 176
    const-string/jumbo v11, "shutdown_info"

    const/4 v12, 0x0

    invoke-static {v11, v10, v12}, Lmiui/maml/util/Utils;->putVariableString(Ljava/lang/String;Lmiui/maml/data/Variables;Ljava/lang/String;)V

    .line 177
    iget-object v11, p0, Lcom/android/server/policy/MiuiGlobalActions;->mContext:Landroid/content/Context;

    const-string/jumbo v12, "security"

    invoke-virtual {v11, v12}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lmiui/security/SecurityManager;

    .line 178
    .local v6, "securityManager":Lmiui/security/SecurityManager;
    if-eqz v6, :cond_1

    .line 179
    const/4 v5, 0x1

    .line 180
    .local v5, "isShutDownAlarm":Z
    const-string/jumbo v11, "com.android.deskclock.util.ShutdownAlarm"

    invoke-virtual {v6, v11}, Lmiui/security/SecurityManager;->getWakeUpTime(Ljava/lang/String;)J

    move-result-wide v8

    .line 181
    .local v8, "time":J
    const-string/jumbo v11, "com.miui.powercenter.provider.BootAlarmIntentService"

    invoke-virtual {v6, v11}, Lmiui/security/SecurityManager;->getWakeUpTime(Ljava/lang/String;)J

    move-result-wide v0

    .line 182
    .local v0, "autoBootTime":J
    const-wide/16 v12, 0x0

    cmp-long v11, v8, v12

    if-eqz v11, :cond_0

    const-wide/16 v12, 0x0

    cmp-long v11, v0, v12

    if-lez v11, :cond_9

    const-wide/16 v12, 0x78

    add-long/2addr v12, v8

    cmp-long v11, v0, v12

    if-gez v11, :cond_9

    .line 183
    :cond_0
    move-wide v8, v0

    .line 184
    const/4 v5, 0x0

    .line 188
    :goto_5
    const-wide/16 v12, 0x0

    cmp-long v11, v8, v12

    if-lez v11, :cond_1

    .line 189
    iget-object v12, p0, Lcom/android/server/policy/MiuiGlobalActions;->mContext:Landroid/content/Context;

    if-eqz v5, :cond_a

    const v11, 0x11070085

    :goto_6
    invoke-virtual {v12, v11}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 191
    .local v2, "format":Ljava/lang/String;
    const-wide/16 v12, 0x3e8

    mul-long/2addr v12, v8

    const/4 v11, 0x1

    invoke-static {v12, v13, v11}, Lmiui/date/DateUtils;->formatRelativeTime(JZ)Ljava/lang/String;

    move-result-object v7

    .line 192
    .local v7, "timeStr":Ljava/lang/String;
    const-string/jumbo v11, "shutdown_info"

    const/4 v12, 0x1

    new-array v12, v12, [Ljava/lang/Object;

    const/4 v13, 0x0

    aput-object v7, v12, v13

    invoke-static {v2, v12}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v10, v12}, Lmiui/maml/util/Utils;->putVariableString(Ljava/lang/String;Lmiui/maml/data/Variables;Ljava/lang/String;)V

    .line 165
    .end local v0    # "autoBootTime":J
    .end local v2    # "format":Ljava/lang/String;
    .end local v5    # "isShutDownAlarm":Z
    .end local v7    # "timeStr":Ljava/lang/String;
    .end local v8    # "time":J
    :cond_1
    return-void

    .line 166
    .end local v3    # "isAirplaneModeOn":Z
    .end local v4    # "isEnabled":Z
    .end local v6    # "securityManager":Lmiui/security/SecurityManager;
    .end local v10    # "variables":Lmiui/maml/data/Variables;
    :cond_2
    const/4 v3, 0x0

    .restart local v3    # "isAirplaneModeOn":Z
    goto/16 :goto_0

    .line 168
    .restart local v10    # "variables":Lmiui/maml/data/Variables;
    :cond_3
    const-wide/16 v12, 0x0

    goto/16 :goto_1

    .line 170
    :cond_4
    const/4 v4, 0x0

    .restart local v4    # "isEnabled":Z
    goto/16 :goto_2

    .line 171
    .end local v4    # "isEnabled":Z
    :cond_5
    iget-object v11, p0, Lcom/android/server/policy/MiuiGlobalActions;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v11}, Landroid/media/AudioManager;->getRingerMode()I

    move-result v11

    const/4 v12, 0x2

    if-eq v11, v12, :cond_6

    const/4 v4, 0x1

    .restart local v4    # "isEnabled":Z
    goto/16 :goto_2

    .end local v4    # "isEnabled":Z
    :cond_6
    const/4 v4, 0x0

    .restart local v4    # "isEnabled":Z
    goto/16 :goto_2

    .line 172
    :cond_7
    const-wide/16 v12, 0x0

    goto/16 :goto_3

    .line 173
    :cond_8
    const-wide/16 v12, 0x0

    goto/16 :goto_4

    .line 186
    .restart local v0    # "autoBootTime":J
    .restart local v5    # "isShutDownAlarm":Z
    .restart local v6    # "securityManager":Lmiui/security/SecurityManager;
    .restart local v8    # "time":J
    :cond_9
    const-wide/16 v12, 0x78

    add-long/2addr v8, v12

    goto :goto_5

    .line 190
    :cond_a
    const v11, 0x11070084

    goto :goto_6
.end method


# virtual methods
.method public dismiss()V
    .locals 5

    .prologue
    const/4 v3, 0x0

    .line 270
    iget-object v1, p0, Lcom/android/server/policy/MiuiGlobalActions;->mRoot:Lcom/android/server/policy/MiuiGlobalActions$GlobalActionsMamlView;

    if-eqz v1, :cond_0

    .line 271
    iget-object v1, p0, Lcom/android/server/policy/MiuiGlobalActions;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/server/policy/MiuiGlobalActions;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 272
    iget-object v1, p0, Lcom/android/server/policy/MiuiGlobalActions;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/server/policy/MiuiGlobalActions;->mRingerModeReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 273
    iget-object v1, p0, Lcom/android/server/policy/MiuiGlobalActions;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/policy/MiuiGlobalActions;->mAirplaneModeObserver:Landroid/database/ContentObserver;

    invoke-virtual {v1, v2}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 275
    iget-object v1, p0, Lcom/android/server/policy/MiuiGlobalActions;->mWindowManager:Landroid/view/WindowManager;

    iget-object v2, p0, Lcom/android/server/policy/MiuiGlobalActions;->mRoot:Lcom/android/server/policy/MiuiGlobalActions$GlobalActionsMamlView;

    invoke-interface {v1, v2}, Landroid/view/WindowManager;->removeViewImmediate(Landroid/view/View;)V

    .line 276
    iget-object v1, p0, Lcom/android/server/policy/MiuiGlobalActions;->mRoot:Lcom/android/server/policy/MiuiGlobalActions$GlobalActionsMamlView;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/android/server/policy/MiuiGlobalActions$GlobalActionsMamlView;->cleanUp(Z)V

    .line 277
    iput-object v3, p0, Lcom/android/server/policy/MiuiGlobalActions;->mRoot:Lcom/android/server/policy/MiuiGlobalActions$GlobalActionsMamlView;

    .line 280
    :try_start_0
    iget-object v1, p0, Lcom/android/server/policy/MiuiGlobalActions;->mStatusBarService:Lcom/android/internal/statusbar/IStatusBarService;

    iget-object v2, p0, Lcom/android/server/policy/MiuiGlobalActions;->mBinder:Landroid/os/Binder;

    const-string/jumbo v3, "android"

    const/4 v4, 0x0

    invoke-interface {v1, v4, v2, v3}, Lcom/android/internal/statusbar/IStatusBarService;->disable(ILandroid/os/IBinder;Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 269
    :cond_0
    :goto_0
    return-void

    .line 281
    :catch_0
    move-exception v0

    .line 282
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method

.method public showDialog(ZZ)V
    .locals 10
    .param p1, "keyguardShowing"    # Z
    .param p2, "isDeviceProvisioned"    # Z

    .prologue
    const/4 v9, 0x1

    const/4 v1, -0x1

    .line 202
    iget-object v2, p0, Lcom/android/server/policy/MiuiGlobalActions;->mRoot:Lcom/android/server/policy/MiuiGlobalActions$GlobalActionsMamlView;

    if-eqz v2, :cond_0

    return-void

    .line 204
    :cond_0
    iget-object v2, p0, Lcom/android/server/policy/MiuiGlobalActions;->mWindowManager:Landroid/view/WindowManager;

    invoke-interface {v2}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v6

    .line 205
    .local v6, "display":Landroid/view/Display;
    invoke-virtual {v6}, Landroid/view/Display;->getRotation()I

    move-result v2

    iput v2, p0, Lcom/android/server/policy/MiuiGlobalActions;->mRotation:I

    .line 207
    invoke-direct {p0}, Lcom/android/server/policy/MiuiGlobalActions;->loadMamlView()Lcom/android/server/policy/MiuiGlobalActions$GlobalActionsMamlView;

    move-result-object v2

    iput-object v2, p0, Lcom/android/server/policy/MiuiGlobalActions;->mRoot:Lcom/android/server/policy/MiuiGlobalActions$GlobalActionsMamlView;

    .line 208
    iget-object v2, p0, Lcom/android/server/policy/MiuiGlobalActions;->mRoot:Lcom/android/server/policy/MiuiGlobalActions$GlobalActionsMamlView;

    new-instance v3, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v3, v1, v1}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v2, v3}, Lcom/android/server/policy/MiuiGlobalActions$GlobalActionsMamlView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 210
    iget-object v2, p0, Lcom/android/server/policy/MiuiGlobalActions;->mRoot:Lcom/android/server/policy/MiuiGlobalActions$GlobalActionsMamlView;

    const/16 v3, 0x200

    invoke-virtual {v2, v3}, Lcom/android/server/policy/MiuiGlobalActions$GlobalActionsMamlView;->setSystemUiVisibility(I)V

    .line 212
    iget-object v2, p0, Lcom/android/server/policy/MiuiGlobalActions;->mRoot:Lcom/android/server/policy/MiuiGlobalActions$GlobalActionsMamlView;

    new-instance v3, Lcom/android/server/policy/MiuiGlobalActions$7;

    invoke-direct {v3, p0}, Lcom/android/server/policy/MiuiGlobalActions$7;-><init>(Lcom/android/server/policy/MiuiGlobalActions;)V

    invoke-virtual {v2, v3}, Lcom/android/server/policy/MiuiGlobalActions$GlobalActionsMamlView;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    .line 227
    iget-object v2, p0, Lcom/android/server/policy/MiuiGlobalActions;->mRoot:Lcom/android/server/policy/MiuiGlobalActions$GlobalActionsMamlView;

    invoke-virtual {v2, v9}, Lcom/android/server/policy/MiuiGlobalActions$GlobalActionsMamlView;->setFocusableInTouchMode(Z)V

    .line 228
    iget-object v2, p0, Lcom/android/server/policy/MiuiGlobalActions;->mRoot:Lcom/android/server/policy/MiuiGlobalActions$GlobalActionsMamlView;

    invoke-virtual {v2}, Lcom/android/server/policy/MiuiGlobalActions$GlobalActionsMamlView;->requestFocus()Z

    .line 229
    iget-object v2, p0, Lcom/android/server/policy/MiuiGlobalActions;->mRoot:Lcom/android/server/policy/MiuiGlobalActions$GlobalActionsMamlView;

    iget-object v3, p0, Lcom/android/server/policy/MiuiGlobalActions;->mDialogLayoutChangeListener:Landroid/view/View$OnLayoutChangeListener;

    invoke-virtual {v2, v3}, Lcom/android/server/policy/MiuiGlobalActions$GlobalActionsMamlView;->addOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    .line 231
    new-instance v0, Landroid/view/WindowManager$LayoutParams;

    .line 234
    const/16 v3, 0x7e8

    .line 235
    const v4, 0x1018104

    .line 240
    const/4 v5, 0x3

    move v2, v1

    .line 231
    invoke-direct/range {v0 .. v5}, Landroid/view/WindowManager$LayoutParams;-><init>(IIIII)V

    .line 241
    .local v0, "lp":Landroid/view/WindowManager$LayoutParams;
    const/4 v1, 0x2

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->extraFlags:I

    .line 242
    iget v1, v0, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    or-int/lit8 v1, v1, 0x2

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    .line 244
    const-string/jumbo v1, "MiuiGlobalActions"

    invoke-virtual {v0, v1}, Landroid/view/WindowManager$LayoutParams;->setTitle(Ljava/lang/CharSequence;)V

    .line 245
    iput v9, v0, Landroid/view/WindowManager$LayoutParams;->format:I

    .line 246
    const v1, 0x110c0002

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->windowAnimations:I

    .line 247
    iget-object v1, p0, Lcom/android/server/policy/MiuiGlobalActions;->mWindowManager:Landroid/view/WindowManager;

    iget-object v2, p0, Lcom/android/server/policy/MiuiGlobalActions;->mRoot:Lcom/android/server/policy/MiuiGlobalActions$GlobalActionsMamlView;

    invoke-interface {v1, v2, v0}, Landroid/view/WindowManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 250
    new-instance v8, Landroid/content/IntentFilter;

    invoke-direct {v8}, Landroid/content/IntentFilter;-><init>()V

    .line 251
    .local v8, "filter":Landroid/content/IntentFilter;
    const-string/jumbo v1, "android.intent.action.CLOSE_SYSTEM_DIALOGS"

    invoke-virtual {v8, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 252
    const-string/jumbo v1, "android.intent.action.SCREEN_OFF"

    invoke-virtual {v8, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 253
    iget-object v1, p0, Lcom/android/server/policy/MiuiGlobalActions;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/server/policy/MiuiGlobalActions;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v8}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 255
    new-instance v8, Landroid/content/IntentFilter;

    .end local v8    # "filter":Landroid/content/IntentFilter;
    const-string/jumbo v1, "android.media.RINGER_MODE_CHANGED"

    invoke-direct {v8, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 256
    .restart local v8    # "filter":Landroid/content/IntentFilter;
    iget-object v1, p0, Lcom/android/server/policy/MiuiGlobalActions;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/server/policy/MiuiGlobalActions;->mRingerModeReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v8}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 258
    iget-object v1, p0, Lcom/android/server/policy/MiuiGlobalActions;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 259
    const-string/jumbo v2, "airplane_mode_on"

    invoke-static {v2}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    .line 260
    iget-object v3, p0, Lcom/android/server/policy/MiuiGlobalActions;->mAirplaneModeObserver:Landroid/database/ContentObserver;

    .line 258
    invoke-virtual {v1, v2, v9, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 263
    :try_start_0
    iget-object v1, p0, Lcom/android/server/policy/MiuiGlobalActions;->mStatusBarService:Lcom/android/internal/statusbar/IStatusBarService;

    iget-object v2, p0, Lcom/android/server/policy/MiuiGlobalActions;->mBinder:Landroid/os/Binder;

    const-string/jumbo v3, "android"

    const/high16 v4, 0x10000

    invoke-interface {v1, v4, v2, v3}, Lcom/android/internal/statusbar/IStatusBarService;->disable(ILandroid/os/IBinder;Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 201
    :goto_0
    return-void

    .line 264
    :catch_0
    move-exception v7

    .line 265
    .local v7, "e":Landroid/os/RemoteException;
    invoke-virtual {v7}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method
