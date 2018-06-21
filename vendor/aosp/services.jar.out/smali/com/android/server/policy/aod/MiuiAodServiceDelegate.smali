.class public Lcom/android/server/policy/aod/MiuiAodServiceDelegate;
.super Ljava/lang/Object;
.source "MiuiAodServiceDelegate.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/policy/aod/MiuiAodServiceDelegate$1;,
        Lcom/android/server/policy/aod/MiuiAodServiceDelegate$AodDismissedListener;,
        Lcom/android/server/policy/aod/MiuiAodServiceDelegate$AodDrawnListener;,
        Lcom/android/server/policy/aod/MiuiAodServiceDelegate$MiuiAodDismissedCallback;,
        Lcom/android/server/policy/aod/MiuiAodServiceDelegate$MiuiAodDrawnCallback;
    }
.end annotation


# static fields
.field private static final AOD_STATE_BOUND:I = 0x2

.field private static final AOD_STATE_IDLE:I = 0x1

.field private static final AOD_STATE_OFF:I = 0x4

.field private static final AOD_STATE_ON:I = 0x3

.field public static final DEBUG:Z = true

.field public static final SUPPORT_AOD:Z

.field private static final TAG:Ljava/lang/String; = "AodServiceDelegate"


# instance fields
.field protected mAodService:Lcom/android/internal/policy/aod/IMiuiAodService;

.field private mAodState:I

.field private final mConnection:Landroid/content/ServiceConnection;

.field private final mContext:Landroid/content/Context;

.field private mEnabledSetting:Z

.field private mSystemBooted:Z

.field private mSystemReady:Z


# direct methods
.method static synthetic -set0(Lcom/android/server/policy/aod/MiuiAodServiceDelegate;I)I
    .locals 0

    iput p1, p0, Lcom/android/server/policy/aod/MiuiAodServiceDelegate;->mAodState:I

    return p1
.end method

.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 25
    const-string/jumbo v0, "support_aod"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lmiui/util/FeatureParser;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Lcom/android/server/policy/aod/MiuiAodServiceDelegate;->SUPPORT_AOD:Z

    .line 22
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 79
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/policy/aod/MiuiAodServiceDelegate;->mEnabledSetting:Z

    .line 36
    const/4 v0, 0x1

    iput v0, p0, Lcom/android/server/policy/aod/MiuiAodServiceDelegate;->mAodState:I

    .line 125
    new-instance v0, Lcom/android/server/policy/aod/MiuiAodServiceDelegate$1;

    invoke-direct {v0, p0}, Lcom/android/server/policy/aod/MiuiAodServiceDelegate$1;-><init>(Lcom/android/server/policy/aod/MiuiAodServiceDelegate;)V

    iput-object v0, p0, Lcom/android/server/policy/aod/MiuiAodServiceDelegate;->mConnection:Landroid/content/ServiceConnection;

    .line 80
    iput-object p1, p0, Lcom/android/server/policy/aod/MiuiAodServiceDelegate;->mContext:Landroid/content/Context;

    .line 79
    return-void
.end method

.method private connectToService()V
    .locals 6

    .prologue
    const/4 v5, 0x1

    .line 142
    iget v2, p0, Lcom/android/server/policy/aod/MiuiAodServiceDelegate;->mAodState:I

    if-ne v2, v5, :cond_1

    iget-object v2, p0, Lcom/android/server/policy/aod/MiuiAodServiceDelegate;->mAodService:Lcom/android/internal/policy/aod/IMiuiAodService;

    if-nez v2, :cond_1

    .line 143
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 144
    .local v1, "intent":Landroid/content/Intent;
    new-instance v0, Landroid/content/ComponentName;

    .line 145
    const-string/jumbo v2, "com.miui.android.aodservice"

    .line 146
    const-string/jumbo v3, "com.miui.android.aodservice.AODService"

    .line 144
    invoke-direct {v0, v2, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 147
    .local v0, "component":Landroid/content/ComponentName;
    invoke-virtual {v1, v0}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 149
    iget-object v2, p0, Lcom/android/server/policy/aod/MiuiAodServiceDelegate;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/android/server/policy/aod/MiuiAodServiceDelegate;->mConnection:Landroid/content/ServiceConnection;

    .line 150
    sget-object v4, Landroid/os/UserHandle;->SYSTEM:Landroid/os/UserHandle;

    .line 149
    invoke-virtual {v2, v1, v3, v5, v4}, Landroid/content/Context;->bindServiceAsUser(Landroid/content/Intent;Landroid/content/ServiceConnection;ILandroid/os/UserHandle;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 151
    const-string/jumbo v2, "AodServiceDelegate"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "*** AodService: can\'t bind to "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 141
    .end local v0    # "component":Landroid/content/ComponentName;
    .end local v1    # "intent":Landroid/content/Intent;
    :goto_0
    return-void

    .line 153
    .restart local v0    # "component":Landroid/content/ComponentName;
    .restart local v1    # "intent":Landroid/content/Intent;
    :cond_0
    const-string/jumbo v2, "AodServiceDelegate"

    const-string/jumbo v3, "*** AodService started! ***"

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 156
    .end local v0    # "component":Landroid/content/ComponentName;
    .end local v1    # "intent":Landroid/content/Intent;
    :cond_1
    const-string/jumbo v2, "AodServiceDelegate"

    const-string/jumbo v3, "AodService is already start?"

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private disconnectService()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 161
    iget v0, p0, Lcom/android/server/policy/aod/MiuiAodServiceDelegate;->mAodState:I

    if-eq v0, v2, :cond_0

    iget-object v0, p0, Lcom/android/server/policy/aod/MiuiAodServiceDelegate;->mAodService:Lcom/android/internal/policy/aod/IMiuiAodService;

    if-eqz v0, :cond_0

    .line 162
    iget-object v0, p0, Lcom/android/server/policy/aod/MiuiAodServiceDelegate;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/server/policy/aod/MiuiAodServiceDelegate;->mConnection:Landroid/content/ServiceConnection;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    .line 163
    iput-object v3, p0, Lcom/android/server/policy/aod/MiuiAodServiceDelegate;->mAodService:Lcom/android/internal/policy/aod/IMiuiAodService;

    .line 164
    iput v2, p0, Lcom/android/server/policy/aod/MiuiAodServiceDelegate;->mAodState:I

    .line 160
    :cond_0
    return-void
.end method


# virtual methods
.method public isAodModeAvailable()Z
    .locals 3

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 118
    iget-boolean v2, p0, Lcom/android/server/policy/aod/MiuiAodServiceDelegate;->mEnabledSetting:Z

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/server/policy/aod/MiuiAodServiceDelegate;->mAodService:Lcom/android/internal/policy/aod/IMiuiAodService;

    if-eqz v2, :cond_0

    iget v2, p0, Lcom/android/server/policy/aod/MiuiAodServiceDelegate;->mAodState:I

    if-eq v2, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    move v0, v1

    goto :goto_0
.end method

.method public isAodModeEnabled()Z
    .locals 1

    .prologue
    .line 114
    iget-boolean v0, p0, Lcom/android/server/policy/aod/MiuiAodServiceDelegate;->mEnabledSetting:Z

    return v0
.end method

.method public isAodModeOn()Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 122
    iget-boolean v1, p0, Lcom/android/server/policy/aod/MiuiAodServiceDelegate;->mEnabledSetting:Z

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/server/policy/aod/MiuiAodServiceDelegate;->mAodService:Lcom/android/internal/policy/aod/IMiuiAodService;

    if-eqz v1, :cond_0

    iget v1, p0, Lcom/android/server/policy/aod/MiuiAodServiceDelegate;->mAodState:I

    const/4 v2, 0x3

    if-ne v1, v2, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method public onScreenTurnedDoze()V
    .locals 3

    .prologue
    .line 181
    iget-object v1, p0, Lcom/android/server/policy/aod/MiuiAodServiceDelegate;->mAodService:Lcom/android/internal/policy/aod/IMiuiAodService;

    if-eqz v1, :cond_0

    .line 183
    :try_start_0
    const-string/jumbo v1, "AodServiceDelegate"

    const-string/jumbo v2, "onScreenTurnedDoze()"

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 184
    iget-object v1, p0, Lcom/android/server/policy/aod/MiuiAodServiceDelegate;->mAodService:Lcom/android/internal/policy/aod/IMiuiAodService;

    invoke-interface {v1}, Lcom/android/internal/policy/aod/IMiuiAodService;->onScreenTurnedDoze()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 180
    :cond_0
    :goto_0
    return-void

    .line 185
    :catch_0
    move-exception v0

    .line 186
    .local v0, "e":Landroid/os/RemoteException;
    const-string/jumbo v1, "AodServiceDelegate"

    const-string/jumbo v2, "Remote Exception"

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public onScreenTurnedOff(Lcom/android/server/policy/aod/MiuiAodServiceDelegate$AodDrawnListener;)V
    .locals 3
    .param p1, "listener"    # Lcom/android/server/policy/aod/MiuiAodServiceDelegate$AodDrawnListener;

    .prologue
    .line 169
    iget-object v1, p0, Lcom/android/server/policy/aod/MiuiAodServiceDelegate;->mAodService:Lcom/android/internal/policy/aod/IMiuiAodService;

    if-eqz v1, :cond_0

    .line 171
    :try_start_0
    const-string/jumbo v1, "AodServiceDelegate"

    const-string/jumbo v2, "onScreenTurnedOff()"

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 172
    iget-object v1, p0, Lcom/android/server/policy/aod/MiuiAodServiceDelegate;->mAodService:Lcom/android/internal/policy/aod/IMiuiAodService;

    new-instance v2, Lcom/android/server/policy/aod/MiuiAodServiceDelegate$MiuiAodDrawnCallback;

    invoke-direct {v2, p0, p1}, Lcom/android/server/policy/aod/MiuiAodServiceDelegate$MiuiAodDrawnCallback;-><init>(Lcom/android/server/policy/aod/MiuiAodServiceDelegate;Lcom/android/server/policy/aod/MiuiAodServiceDelegate$AodDrawnListener;)V

    invoke-interface {v1, v2}, Lcom/android/internal/policy/aod/IMiuiAodService;->onScreenTurnedOff(Lcom/android/internal/policy/aod/IMiuiAodDrawnCallback;)V

    .line 173
    const/4 v1, 0x3

    iput v1, p0, Lcom/android/server/policy/aod/MiuiAodServiceDelegate;->mAodState:I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 168
    :cond_0
    :goto_0
    return-void

    .line 174
    :catch_0
    move-exception v0

    .line 175
    .local v0, "e":Landroid/os/RemoteException;
    const-string/jumbo v1, "AodServiceDelegate"

    const-string/jumbo v2, "Remote Exception"

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public onScreenTurningOn(Lcom/android/server/policy/aod/MiuiAodServiceDelegate$AodDismissedListener;)V
    .locals 3
    .param p1, "listener"    # Lcom/android/server/policy/aod/MiuiAodServiceDelegate$AodDismissedListener;

    .prologue
    .line 203
    iget-object v1, p0, Lcom/android/server/policy/aod/MiuiAodServiceDelegate;->mAodService:Lcom/android/internal/policy/aod/IMiuiAodService;

    if-eqz v1, :cond_0

    .line 205
    :try_start_0
    const-string/jumbo v1, "AodServiceDelegate"

    const-string/jumbo v2, "onScreenTurningOn()"

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 206
    iget-object v1, p0, Lcom/android/server/policy/aod/MiuiAodServiceDelegate;->mAodService:Lcom/android/internal/policy/aod/IMiuiAodService;

    new-instance v2, Lcom/android/server/policy/aod/MiuiAodServiceDelegate$MiuiAodDismissedCallback;

    invoke-direct {v2, p0, p1}, Lcom/android/server/policy/aod/MiuiAodServiceDelegate$MiuiAodDismissedCallback;-><init>(Lcom/android/server/policy/aod/MiuiAodServiceDelegate;Lcom/android/server/policy/aod/MiuiAodServiceDelegate$AodDismissedListener;)V

    invoke-interface {v1, v2}, Lcom/android/internal/policy/aod/IMiuiAodService;->onScreenTurningOn(Lcom/android/internal/policy/aod/IMiuiAodDismissedCallback;)V

    .line 207
    const/4 v1, 0x4

    iput v1, p0, Lcom/android/server/policy/aod/MiuiAodServiceDelegate;->mAodState:I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 202
    :cond_0
    :goto_0
    return-void

    .line 208
    :catch_0
    move-exception v0

    .line 209
    .local v0, "e":Landroid/os/RemoteException;
    const-string/jumbo v1, "AodServiceDelegate"

    const-string/jumbo v2, "Remote Exception"

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public onStartedWakingUp()V
    .locals 3

    .prologue
    .line 192
    iget-object v1, p0, Lcom/android/server/policy/aod/MiuiAodServiceDelegate;->mAodService:Lcom/android/internal/policy/aod/IMiuiAodService;

    if-eqz v1, :cond_0

    .line 194
    :try_start_0
    const-string/jumbo v1, "AodServiceDelegate"

    const-string/jumbo v2, "onStartedWakingUp()"

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 195
    iget-object v1, p0, Lcom/android/server/policy/aod/MiuiAodServiceDelegate;->mAodService:Lcom/android/internal/policy/aod/IMiuiAodService;

    invoke-interface {v1}, Lcom/android/internal/policy/aod/IMiuiAodService;->onStartedWakingUp()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 191
    :cond_0
    :goto_0
    return-void

    .line 196
    :catch_0
    move-exception v0

    .line 197
    .local v0, "e":Landroid/os/RemoteException;
    const-string/jumbo v1, "AodServiceDelegate"

    const-string/jumbo v2, "Remote Exception"

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public onSystemBooted()V
    .locals 1

    .prologue
    .line 88
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/policy/aod/MiuiAodServiceDelegate;->mSystemBooted:Z

    .line 87
    return-void
.end method

.method public onSystemReady()V
    .locals 1

    .prologue
    .line 84
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/policy/aod/MiuiAodServiceDelegate;->mSystemReady:Z

    .line 83
    return-void
.end method

.method public setAodModeEnabled(Z)Z
    .locals 4
    .param p1, "enable"    # Z

    .prologue
    const/4 v3, 0x0

    .line 92
    sget-boolean v0, Lcom/android/server/policy/aod/MiuiAodServiceDelegate;->SUPPORT_AOD:Z

    if-nez v0, :cond_0

    .line 93
    const-string/jumbo v0, "AodServiceDelegate"

    const-string/jumbo v1, "setAodModeEnable not supported."

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 94
    return v3

    .line 97
    :cond_0
    iget-boolean v0, p0, Lcom/android/server/policy/aod/MiuiAodServiceDelegate;->mSystemReady:Z

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Lcom/android/server/policy/aod/MiuiAodServiceDelegate;->mSystemBooted:Z

    if-eqz v0, :cond_2

    .line 101
    iget-boolean v0, p0, Lcom/android/server/policy/aod/MiuiAodServiceDelegate;->mEnabledSetting:Z

    if-eq v0, p1, :cond_1

    .line 102
    const-string/jumbo v0, "AodServiceDelegate"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setAodModeEnabled: enable = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 103
    iput-boolean p1, p0, Lcom/android/server/policy/aod/MiuiAodServiceDelegate;->mEnabledSetting:Z

    .line 104
    if-eqz p1, :cond_3

    .line 105
    invoke-direct {p0}, Lcom/android/server/policy/aod/MiuiAodServiceDelegate;->connectToService()V

    .line 110
    :cond_1
    :goto_0
    const/4 v0, 0x1

    return v0

    .line 98
    :cond_2
    const-string/jumbo v0, "AodServiceDelegate"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setAodModeEnabled: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " not in time."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 99
    return v3

    .line 107
    :cond_3
    invoke-direct {p0}, Lcom/android/server/policy/aod/MiuiAodServiceDelegate;->disconnectService()V

    goto :goto_0
.end method
