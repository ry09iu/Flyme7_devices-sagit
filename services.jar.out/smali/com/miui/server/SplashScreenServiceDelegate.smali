.class public final Lcom/miui/server/SplashScreenServiceDelegate;
.super Ljava/lang/Object;
.source "SplashScreenServiceDelegate.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/server/SplashScreenServiceDelegate$1;,
        Lcom/miui/server/SplashScreenServiceDelegate$2;,
        Lcom/miui/server/SplashScreenServiceDelegate$3;,
        Lcom/miui/server/SplashScreenServiceDelegate$4;,
        Lcom/miui/server/SplashScreenServiceDelegate$5;
    }
.end annotation


# static fields
.field private static final ACTION_DEBUG_OFF:Ljava/lang/String; = "miui.intent.action.ad.DEBUG_OFF"

.field private static final ACTION_DEBUG_ON:Ljava/lang/String; = "miui.intent.action.ad.DEBUG_ON"

.field private static final DELAY_BIND_AFTER_BOOT_COMPLETE:J = 0x1d4c0L

.field private static final KEY_API_VERSION:Ljava/lang/String; = "apiVersion"

.field private static final MAX_DELAY_TIME:J = 0x36ee80L

.field private static final MIUI_GENERAL_PERMISSION:Ljava/lang/String; = "miui.permission.USE_INTERNAL_GENERAL_API"

.field private static final MSG_REBIND:I = 0x1

.field public static final SPLASHSCREEN_ACTIVITY:Ljava/lang/String; = "com.miui.systemAdSolution.splashscreen.SplashActivity"

.field private static final SPLASHSCREEN_CLASS:Ljava/lang/String; = "com.miui.systemAdSolution.splashscreen.SplashScreenService"

.field public static final SPLASHSCREEN_GLOBAL_PACKAGE:Ljava/lang/String; = "com.miui.msa.global"

.field public static final SPLASHSCREEN_PACKAGE:Ljava/lang/String; = "com.miui.systemAdSolution"

.field private static final TAG:Ljava/lang/String; = "SplashScreenServiceDelegate"

.field private static final VALUE_API_VERSION:I = 0x2

.field private static sDebug:Z


# instance fields
.field private mContext:Landroid/content/Context;

.field private mDeathHandler:Landroid/os/IBinder$DeathRecipient;

.field private mDelayTime:J

.field private final mHandler:Landroid/os/Handler;

.field private mRebindCount:I

.field private mReceiver:Landroid/content/BroadcastReceiver;

.field private mSeverity:I

.field private mSplashPackageCheckInfoMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/miui/server/SplashPackageCheckInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mSplashPackageCheckListener:Lcom/miui/server/ISplashPackageCheckListener;

.field private final mSplashScreenConnection:Landroid/content/ServiceConnection;

.field private mSplashScreenService:Lcom/miui/server/ISplashScreenService;

.field private mStartTime:J


# direct methods
.method static synthetic -get0(Lcom/miui/server/SplashScreenServiceDelegate;)Landroid/os/IBinder$DeathRecipient;
    .locals 1

    iget-object v0, p0, Lcom/miui/server/SplashScreenServiceDelegate;->mDeathHandler:Landroid/os/IBinder$DeathRecipient;

    return-object v0
.end method

.method static synthetic -get1(Lcom/miui/server/SplashScreenServiceDelegate;)Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Lcom/miui/server/SplashScreenServiceDelegate;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic -get2(Lcom/miui/server/SplashScreenServiceDelegate;)Ljava/util/Map;
    .locals 1

    iget-object v0, p0, Lcom/miui/server/SplashScreenServiceDelegate;->mSplashPackageCheckInfoMap:Ljava/util/Map;

    return-object v0
.end method

.method static synthetic -get3(Lcom/miui/server/SplashScreenServiceDelegate;)Lcom/miui/server/ISplashPackageCheckListener;
    .locals 1

    iget-object v0, p0, Lcom/miui/server/SplashScreenServiceDelegate;->mSplashPackageCheckListener:Lcom/miui/server/ISplashPackageCheckListener;

    return-object v0
.end method

.method static synthetic -get4(Lcom/miui/server/SplashScreenServiceDelegate;)Lcom/miui/server/ISplashScreenService;
    .locals 1

    iget-object v0, p0, Lcom/miui/server/SplashScreenServiceDelegate;->mSplashScreenService:Lcom/miui/server/ISplashScreenService;

    return-object v0
.end method

.method static synthetic -set0(Lcom/miui/server/SplashScreenServiceDelegate;I)I
    .locals 0

    iput p1, p0, Lcom/miui/server/SplashScreenServiceDelegate;->mRebindCount:I

    return p1
.end method

.method static synthetic -set1(Lcom/miui/server/SplashScreenServiceDelegate;Lcom/miui/server/ISplashScreenService;)Lcom/miui/server/ISplashScreenService;
    .locals 0

    iput-object p1, p0, Lcom/miui/server/SplashScreenServiceDelegate;->mSplashScreenService:Lcom/miui/server/ISplashScreenService;

    return-object p1
.end method

.method static synthetic -set2(Lcom/miui/server/SplashScreenServiceDelegate;J)J
    .locals 1

    iput-wide p1, p0, Lcom/miui/server/SplashScreenServiceDelegate;->mStartTime:J

    return-wide p1
.end method

.method static synthetic -set3(Z)Z
    .locals 0

    sput-boolean p0, Lcom/miui/server/SplashScreenServiceDelegate;->sDebug:Z

    return p0
.end method

.method static synthetic -wrap0(Lcom/miui/server/SplashScreenServiceDelegate;Lcom/miui/server/SplashPackageCheckInfo;)Z
    .locals 1
    .param p1, "splashPackageCheckInfo"    # Lcom/miui/server/SplashPackageCheckInfo;

    .prologue
    invoke-direct {p0, p1}, Lcom/miui/server/SplashScreenServiceDelegate;->checkSplashPackageCheckInfo(Lcom/miui/server/SplashPackageCheckInfo;)Z

    move-result v0

    return v0
.end method

.method static synthetic -wrap1(Lcom/miui/server/SplashScreenServiceDelegate;)V
    .locals 0

    invoke-direct {p0}, Lcom/miui/server/SplashScreenServiceDelegate;->bindService()V

    return-void
.end method

.method static synthetic -wrap2(Lcom/miui/server/SplashScreenServiceDelegate;)V
    .locals 0

    invoke-direct {p0}, Lcom/miui/server/SplashScreenServiceDelegate;->delayToBindServiceAfterBootCompleted()V

    return-void
.end method

.method static synthetic -wrap3(Lcom/miui/server/SplashScreenServiceDelegate;)V
    .locals 0

    invoke-direct {p0}, Lcom/miui/server/SplashScreenServiceDelegate;->delayToRebindService()V

    return-void
.end method

.method static synthetic -wrap4(Lcom/miui/server/SplashScreenServiceDelegate;Lcom/miui/server/SplashPackageCheckInfo;)V
    .locals 0
    .param p1, "splashPackageCheckInfo"    # Lcom/miui/server/SplashPackageCheckInfo;

    .prologue
    invoke-direct {p0, p1}, Lcom/miui/server/SplashScreenServiceDelegate;->keepSplashPackageCheckInfo(Lcom/miui/server/SplashPackageCheckInfo;)V

    return-void
.end method

.method static synthetic -wrap5(Lcom/miui/server/SplashScreenServiceDelegate;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 0
    .param p1, "msg"    # Ljava/lang/String;
    .param p2, "tr"    # Ljava/lang/Throwable;

    .prologue
    invoke-direct {p0, p1, p2}, Lcom/miui/server/SplashScreenServiceDelegate;->logE(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method static synthetic -wrap6(Lcom/miui/server/SplashScreenServiceDelegate;Ljava/lang/String;Z)V
    .locals 0
    .param p1, "msg"    # Ljava/lang/String;
    .param p2, "force"    # Z

    .prologue
    invoke-direct {p0, p1, p2}, Lcom/miui/server/SplashScreenServiceDelegate;->logI(Ljava/lang/String;Z)V

    return-void
.end method

.method static synthetic -wrap7(Lcom/miui/server/SplashScreenServiceDelegate;Ljava/lang/String;)V
    .locals 0
    .param p1, "msg"    # Ljava/lang/String;

    .prologue
    invoke-direct {p0, p1}, Lcom/miui/server/SplashScreenServiceDelegate;->logI(Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 68
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 66
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/miui/server/SplashScreenServiceDelegate;->mSplashPackageCheckInfoMap:Ljava/util/Map;

    .line 76
    new-instance v0, Lcom/miui/server/SplashScreenServiceDelegate$1;

    invoke-direct {v0, p0}, Lcom/miui/server/SplashScreenServiceDelegate$1;-><init>(Lcom/miui/server/SplashScreenServiceDelegate;)V

    iput-object v0, p0, Lcom/miui/server/SplashScreenServiceDelegate;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 163
    new-instance v0, Lcom/miui/server/SplashScreenServiceDelegate$2;

    invoke-direct {v0, p0}, Lcom/miui/server/SplashScreenServiceDelegate$2;-><init>(Lcom/miui/server/SplashScreenServiceDelegate;)V

    iput-object v0, p0, Lcom/miui/server/SplashScreenServiceDelegate;->mSplashScreenConnection:Landroid/content/ServiceConnection;

    .line 235
    new-instance v0, Lcom/miui/server/SplashScreenServiceDelegate$3;

    invoke-direct {v0, p0}, Lcom/miui/server/SplashScreenServiceDelegate$3;-><init>(Lcom/miui/server/SplashScreenServiceDelegate;)V

    iput-object v0, p0, Lcom/miui/server/SplashScreenServiceDelegate;->mDeathHandler:Landroid/os/IBinder$DeathRecipient;

    .line 243
    new-instance v0, Lcom/miui/server/SplashScreenServiceDelegate$4;

    invoke-direct {v0, p0}, Lcom/miui/server/SplashScreenServiceDelegate$4;-><init>(Lcom/miui/server/SplashScreenServiceDelegate;)V

    iput-object v0, p0, Lcom/miui/server/SplashScreenServiceDelegate;->mSplashPackageCheckListener:Lcom/miui/server/ISplashPackageCheckListener;

    .line 382
    new-instance v0, Lcom/miui/server/SplashScreenServiceDelegate$5;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/miui/server/SplashScreenServiceDelegate$5;-><init>(Lcom/miui/server/SplashScreenServiceDelegate;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/miui/server/SplashScreenServiceDelegate;->mHandler:Landroid/os/Handler;

    .line 69
    iput-object p1, p0, Lcom/miui/server/SplashScreenServiceDelegate;->mContext:Landroid/content/Context;

    .line 70
    sget-boolean v0, Landroid/os/Build;->IS_DEBUGGABLE:Z

    if-nez v0, :cond_0

    sget-object v0, Landroid/os/Build;->TYPE:Ljava/lang/String;

    const-string/jumbo v1, "userdebug"

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    :goto_0
    sput-boolean v0, Lcom/miui/server/SplashScreenServiceDelegate;->sDebug:Z

    .line 71
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "Debug "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-boolean v1, Lcom/miui/server/SplashScreenServiceDelegate;->sDebug:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/miui/server/SplashScreenServiceDelegate;->logI(Ljava/lang/String;)V

    .line 73
    invoke-direct {p0}, Lcom/miui/server/SplashScreenServiceDelegate;->registerReceiver()V

    .line 68
    return-void

    .line 70
    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private bindService()V
    .locals 6

    .prologue
    .line 119
    iget-object v2, p0, Lcom/miui/server/SplashScreenServiceDelegate;->mContext:Landroid/content/Context;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/miui/server/SplashScreenServiceDelegate;->mSplashScreenService:Lcom/miui/server/ISplashScreenService;

    if-nez v2, :cond_0

    .line 121
    :try_start_0
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 122
    .local v1, "intent":Landroid/content/Intent;
    sget-boolean v2, Lmiui/os/Build;->IS_INTERNATIONAL_BUILD:Z

    if-eqz v2, :cond_1

    .line 123
    const-string/jumbo v2, "com.miui.msa.global"

    const-string/jumbo v3, "com.miui.systemAdSolution.splashscreen.SplashScreenService"

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 128
    :goto_0
    const-string/jumbo v2, "apiVersion"

    const/4 v3, 0x2

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 129
    iget-object v2, p0, Lcom/miui/server/SplashScreenServiceDelegate;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/miui/server/SplashScreenServiceDelegate;->mSplashScreenConnection:Landroid/content/ServiceConnection;

    .line 130
    sget-object v4, Landroid/os/UserHandle;->OWNER:Landroid/os/UserHandle;

    const/4 v5, 0x5

    .line 129
    invoke-virtual {v2, v1, v3, v5, v4}, Landroid/content/Context;->bindServiceAsUser(Landroid/content/Intent;Landroid/content/ServiceConnection;ILandroid/os/UserHandle;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 131
    const-string/jumbo v2, "Can\'t bound to SplashScreenService, com.miui.systemAdSolution.splashscreen.SplashScreenService"

    invoke-direct {p0, v2}, Lcom/miui/server/SplashScreenServiceDelegate;->logW(Ljava/lang/String;)V

    .line 132
    invoke-direct {p0}, Lcom/miui/server/SplashScreenServiceDelegate;->delayToRebindService()V

    .line 118
    .end local v1    # "intent":Landroid/content/Intent;
    :cond_0
    :goto_1
    return-void

    .line 125
    .restart local v1    # "intent":Landroid/content/Intent;
    :cond_1
    const-string/jumbo v2, "com.miui.systemAdSolution"

    const-string/jumbo v3, "com.miui.systemAdSolution.splashscreen.SplashScreenService"

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 136
    .end local v1    # "intent":Landroid/content/Intent;
    :catch_0
    move-exception v0

    .line 137
    .local v0, "e":Ljava/lang/Exception;
    const-string/jumbo v2, "Can not start splash screen service!"

    invoke-direct {p0, v2, v0}, Lcom/miui/server/SplashScreenServiceDelegate;->logE(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1

    .line 134
    .end local v0    # "e":Ljava/lang/Exception;
    .restart local v1    # "intent":Landroid/content/Intent;
    :cond_2
    :try_start_1
    const-string/jumbo v2, "SplashScreenService started"

    invoke-direct {p0, v2}, Lcom/miui/server/SplashScreenServiceDelegate;->logI(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1
.end method

.method private calcDelayTime()J
    .locals 12

    .prologue
    const-wide/32 v10, 0x36ee80

    const-wide/16 v8, 0x2710

    .line 208
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    iget-wide v6, p0, Lcom/miui/server/SplashScreenServiceDelegate;->mStartTime:J

    sub-long v0, v4, v6

    .line 206
    .local v0, "aliveTime":J
    const-wide/32 v4, 0xea60

    .line 210
    cmp-long v3, v0, v4

    if-gez v3, :cond_0

    .line 211
    const/4 v2, 0x1

    .line 217
    .local v2, "severity":I
    :goto_0
    iget v3, p0, Lcom/miui/server/SplashScreenServiceDelegate;->mSeverity:I

    if-ne v2, v3, :cond_4

    .line 218
    const/4 v3, 0x1

    if-ne v2, v3, :cond_2

    .line 219
    iget-wide v4, p0, Lcom/miui/server/SplashScreenServiceDelegate;->mDelayTime:J

    const-wide/16 v6, 0x2

    mul-long/2addr v4, v6

    iput-wide v4, p0, Lcom/miui/server/SplashScreenServiceDelegate;->mDelayTime:J

    .line 228
    :goto_1
    iget-wide v4, p0, Lcom/miui/server/SplashScreenServiceDelegate;->mDelayTime:J

    iget-wide v6, p0, Lcom/miui/server/SplashScreenServiceDelegate;->mDelayTime:J

    iget v3, p0, Lcom/miui/server/SplashScreenServiceDelegate;->mRebindCount:I

    int-to-long v8, v3

    mul-long/2addr v6, v8

    add-long/2addr v4, v6

    iput-wide v4, p0, Lcom/miui/server/SplashScreenServiceDelegate;->mDelayTime:J

    .line 229
    iget-wide v4, p0, Lcom/miui/server/SplashScreenServiceDelegate;->mDelayTime:J

    invoke-static {v4, v5, v10, v11}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v4

    iput-wide v4, p0, Lcom/miui/server/SplashScreenServiceDelegate;->mDelayTime:J

    .line 230
    iput v2, p0, Lcom/miui/server/SplashScreenServiceDelegate;->mSeverity:I

    .line 231
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Restart SplashScreenService delay time "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-wide v4, p0, Lcom/miui/server/SplashScreenServiceDelegate;->mDelayTime:J

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/miui/server/SplashScreenServiceDelegate;->logI(Ljava/lang/String;)V

    .line 232
    iget-wide v4, p0, Lcom/miui/server/SplashScreenServiceDelegate;->mDelayTime:J

    return-wide v4

    .line 212
    .end local v2    # "severity":I
    :cond_0
    cmp-long v3, v0, v10

    if-gez v3, :cond_1

    .line 213
    const/4 v2, 0x2

    .restart local v2    # "severity":I
    goto :goto_0

    .line 215
    .end local v2    # "severity":I
    :cond_1
    const/4 v2, 0x3

    .restart local v2    # "severity":I
    goto :goto_0

    .line 220
    :cond_2
    const/4 v3, 0x2

    if-ne v2, v3, :cond_3

    .line 221
    iget-wide v4, p0, Lcom/miui/server/SplashScreenServiceDelegate;->mDelayTime:J

    add-long/2addr v4, v8

    iput-wide v4, p0, Lcom/miui/server/SplashScreenServiceDelegate;->mDelayTime:J

    goto :goto_1

    .line 223
    :cond_3
    iput-wide v8, p0, Lcom/miui/server/SplashScreenServiceDelegate;->mDelayTime:J

    goto :goto_1

    .line 226
    :cond_4
    iput-wide v8, p0, Lcom/miui/server/SplashScreenServiceDelegate;->mDelayTime:J

    goto :goto_1
.end method

.method private checkSplashPackageCheckInfo(Lcom/miui/server/SplashPackageCheckInfo;)Z
    .locals 1
    .param p1, "splashPackageCheckInfo"    # Lcom/miui/server/SplashPackageCheckInfo;

    .prologue
    .line 314
    if-eqz p1, :cond_0

    .line 315
    invoke-virtual {p1}, Lcom/miui/server/SplashPackageCheckInfo;->getSplashPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 314
    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0

    .line 317
    :cond_1
    invoke-virtual {p1}, Lcom/miui/server/SplashPackageCheckInfo;->isExpired()Z

    move-result v0

    if-nez v0, :cond_0

    .line 319
    invoke-virtual {p1}, Lcom/miui/server/SplashPackageCheckInfo;->getSplashPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/miui/server/SplashScreenServiceDelegate;->isPackageInstalled(Ljava/lang/String;)Z

    move-result v0

    goto :goto_0
.end method

.method private delayToBindServiceAfterBootCompleted()V
    .locals 3

    .prologue
    .line 146
    const-wide/32 v0, 0x1d4c0

    const/4 v2, 0x0

    invoke-direct {p0, v0, v1, v2}, Lcom/miui/server/SplashScreenServiceDelegate;->delayToRebindService(JZ)V

    .line 145
    return-void
.end method

.method private delayToRebindService()V
    .locals 3

    .prologue
    .line 150
    invoke-direct {p0}, Lcom/miui/server/SplashScreenServiceDelegate;->calcDelayTime()J

    move-result-wide v0

    const/4 v2, 0x1

    invoke-direct {p0, v0, v1, v2}, Lcom/miui/server/SplashScreenServiceDelegate;->delayToRebindService(JZ)V

    .line 149
    return-void
.end method

.method private delayToRebindService(JZ)V
    .locals 3
    .param p1, "delayTime"    # J
    .param p3, "increaseRebindCount"    # Z

    .prologue
    const/4 v2, 0x1

    .line 154
    iget-object v1, p0, Lcom/miui/server/SplashScreenServiceDelegate;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 155
    iget-object v1, p0, Lcom/miui/server/SplashScreenServiceDelegate;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 156
    .local v0, "msg":Landroid/os/Message;
    iget-object v1, p0, Lcom/miui/server/SplashScreenServiceDelegate;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0, p1, p2}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 157
    if-eqz p3, :cond_0

    .line 158
    iget v1, p0, Lcom/miui/server/SplashScreenServiceDelegate;->mRebindCount:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/miui/server/SplashScreenServiceDelegate;->mRebindCount:I

    .line 160
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "SplashScreenService rebind count: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/miui/server/SplashScreenServiceDelegate;->mRebindCount:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/miui/server/SplashScreenServiceDelegate;->logI(Ljava/lang/String;)V

    .line 153
    return-void
.end method

.method private getPackageName(Landroid/content/pm/ActivityInfo;)Ljava/lang/String;
    .locals 2
    .param p1, "aInfo"    # Landroid/content/pm/ActivityInfo;

    .prologue
    const/4 v0, 0x0

    .line 379
    if-eqz p1, :cond_0

    iget-object v1, p1, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    if-eqz v1, :cond_0

    iget-object v0, p1, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    :cond_0
    return-object v0
.end method

.method private isPackageInstalled(Ljava/lang/String;)Z
    .locals 5
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    .line 324
    :try_start_0
    iget-object v3, p0, Lcom/miui/server/SplashScreenServiceDelegate;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v3, p1, v4}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v1

    .line 325
    .local v1, "pi":Landroid/content/pm/PackageInfo;
    if-eqz v1, :cond_0

    iget-object v3, v1, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v3, :cond_0

    const/4 v2, 0x1

    :cond_0
    return v2

    .line 326
    .end local v1    # "pi":Landroid/content/pm/PackageInfo;
    :catch_0
    move-exception v0

    .line 329
    .local v0, "e":Ljava/lang/Exception;
    return v2
.end method

.method private isSplashPackage(Ljava/lang/String;)Z
    .locals 5
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    const/4 v4, 0x0

    .line 282
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 283
    return v4

    .line 286
    :cond_0
    iget-object v2, p0, Lcom/miui/server/SplashScreenServiceDelegate;->mSplashPackageCheckInfoMap:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 289
    const-string/jumbo v2, "Empty check list, check all"

    invoke-direct {p0, v2}, Lcom/miui/server/SplashScreenServiceDelegate;->logI(Ljava/lang/String;)V

    .line 290
    const/4 v2, 0x1

    return v2

    .line 293
    :cond_1
    iget-object v2, p0, Lcom/miui/server/SplashScreenServiceDelegate;->mSplashPackageCheckInfoMap:Ljava/util/Map;

    invoke-interface {v2, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/server/SplashPackageCheckInfo;

    .line 294
    .local v0, "info":Lcom/miui/server/SplashPackageCheckInfo;
    if-nez v0, :cond_2

    .line 295
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "None for "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/miui/server/SplashScreenServiceDelegate;->logI(Ljava/lang/String;)V

    .line 296
    return v4

    .line 299
    :cond_2
    invoke-virtual {v0}, Lcom/miui/server/SplashPackageCheckInfo;->isExpired()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 300
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " is expired, remove it"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/miui/server/SplashScreenServiceDelegate;->logI(Ljava/lang/String;)V

    .line 302
    iget-object v2, p0, Lcom/miui/server/SplashScreenServiceDelegate;->mSplashPackageCheckInfoMap:Ljava/util/Map;

    invoke-interface {v2, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 303
    return v4

    .line 306
    :cond_3
    invoke-virtual {v0}, Lcom/miui/server/SplashPackageCheckInfo;->matchTime()Z

    move-result v1

    .line 307
    .local v1, "mt":Z
    if-nez v1, :cond_4

    .line 308
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Mismatch time for "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/miui/server/SplashScreenServiceDelegate;->logI(Ljava/lang/String;)V

    .line 310
    :cond_4
    return v1
.end method

.method private keepSplashPackageCheckInfo(Lcom/miui/server/SplashPackageCheckInfo;)V
    .locals 2
    .param p1, "splashPackageCheckInfo"    # Lcom/miui/server/SplashPackageCheckInfo;

    .prologue
    .line 278
    iget-object v0, p0, Lcom/miui/server/SplashScreenServiceDelegate;->mSplashPackageCheckInfoMap:Ljava/util/Map;

    invoke-virtual {p1}, Lcom/miui/server/SplashPackageCheckInfo;->getSplashPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 277
    return-void
.end method

.method private logCost(Ljava/lang/String;JLandroid/content/pm/ActivityInfo;)V
    .locals 4
    .param p1, "prefix"    # Ljava/lang/String;
    .param p2, "startTime"    # J
    .param p4, "aInfo"    # Landroid/content/pm/ActivityInfo;

    .prologue
    .line 395
    sget-boolean v0, Lcom/miui/server/SplashScreenServiceDelegate;->sDebug:Z

    if-eqz v0, :cond_0

    .line 396
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    sub-long/2addr v2, p2

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "ms, "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-direct {p0, p4}, Lcom/miui/server/SplashScreenServiceDelegate;->getPackageName(Landroid/content/pm/ActivityInfo;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/miui/server/SplashScreenServiceDelegate;->logI(Ljava/lang/String;)V

    .line 394
    :cond_0
    return-void
.end method

.method private logE(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 1
    .param p1, "msg"    # Ljava/lang/String;
    .param p2, "tr"    # Ljava/lang/Throwable;

    .prologue
    .line 415
    const-string/jumbo v0, "SplashScreenServiceDelegate"

    invoke-static {v0, p1, p2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 414
    return-void
.end method

.method private logI(Ljava/lang/String;)V
    .locals 1
    .param p1, "msg"    # Ljava/lang/String;

    .prologue
    .line 401
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/miui/server/SplashScreenServiceDelegate;->logI(Ljava/lang/String;Z)V

    .line 400
    return-void
.end method

.method private logI(Ljava/lang/String;Z)V
    .locals 1
    .param p1, "msg"    # Ljava/lang/String;
    .param p2, "force"    # Z

    .prologue
    .line 405
    sget-boolean v0, Lcom/miui/server/SplashScreenServiceDelegate;->sDebug:Z

    if-nez v0, :cond_0

    if-eqz p2, :cond_1

    .line 406
    :cond_0
    const-string/jumbo v0, "SplashScreenServiceDelegate"

    invoke-static {v0, p1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 404
    :cond_1
    return-void
.end method

.method private logW(Ljava/lang/String;)V
    .locals 1
    .param p1, "msg"    # Ljava/lang/String;

    .prologue
    .line 411
    const-string/jumbo v0, "SplashScreenServiceDelegate"

    invoke-static {v0, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 410
    return-void
.end method

.method private registerReceiver()V
    .locals 11

    .prologue
    const/4 v6, 0x1

    const/4 v4, 0x0

    .line 100
    const-string/jumbo v0, "Register BOOT_COMPLETED receiver"

    invoke-direct {p0, v0, v6}, Lcom/miui/server/SplashScreenServiceDelegate;->logI(Ljava/lang/String;Z)V

    .line 101
    new-instance v3, Landroid/content/IntentFilter;

    invoke-direct {v3}, Landroid/content/IntentFilter;-><init>()V

    .line 102
    .local v3, "filter":Landroid/content/IntentFilter;
    const-string/jumbo v0, "android.intent.action.BOOT_COMPLETED"

    invoke-virtual {v3, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 103
    iget-object v0, p0, Lcom/miui/server/SplashScreenServiceDelegate;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/miui/server/SplashScreenServiceDelegate;->mReceiver:Landroid/content/BroadcastReceiver;

    sget-object v2, Landroid/os/UserHandle;->OWNER:Landroid/os/UserHandle;

    move-object v5, v4

    invoke-virtual/range {v0 .. v5}, Landroid/content/Context;->registerReceiverAsUser(Landroid/content/BroadcastReceiver;Landroid/os/UserHandle;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 105
    const-string/jumbo v0, "Register debugger receiver"

    invoke-direct {p0, v0, v6}, Lcom/miui/server/SplashScreenServiceDelegate;->logI(Ljava/lang/String;Z)V

    .line 106
    new-instance v3, Landroid/content/IntentFilter;

    .end local v3    # "filter":Landroid/content/IntentFilter;
    invoke-direct {v3}, Landroid/content/IntentFilter;-><init>()V

    .line 107
    .restart local v3    # "filter":Landroid/content/IntentFilter;
    const-string/jumbo v0, "miui.intent.action.ad.DEBUG_ON"

    invoke-virtual {v3, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 108
    iget-object v5, p0, Lcom/miui/server/SplashScreenServiceDelegate;->mContext:Landroid/content/Context;

    iget-object v6, p0, Lcom/miui/server/SplashScreenServiceDelegate;->mReceiver:Landroid/content/BroadcastReceiver;

    sget-object v7, Landroid/os/UserHandle;->OWNER:Landroid/os/UserHandle;

    const-string/jumbo v9, "miui.permission.USE_INTERNAL_GENERAL_API"

    move-object v8, v3

    move-object v10, v4

    invoke-virtual/range {v5 .. v10}, Landroid/content/Context;->registerReceiverAsUser(Landroid/content/BroadcastReceiver;Landroid/os/UserHandle;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 110
    new-instance v3, Landroid/content/IntentFilter;

    .end local v3    # "filter":Landroid/content/IntentFilter;
    invoke-direct {v3}, Landroid/content/IntentFilter;-><init>()V

    .line 111
    .restart local v3    # "filter":Landroid/content/IntentFilter;
    const-string/jumbo v0, "miui.intent.action.ad.DEBUG_OFF"

    invoke-virtual {v3, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 112
    iget-object v5, p0, Lcom/miui/server/SplashScreenServiceDelegate;->mContext:Landroid/content/Context;

    iget-object v6, p0, Lcom/miui/server/SplashScreenServiceDelegate;->mReceiver:Landroid/content/BroadcastReceiver;

    sget-object v7, Landroid/os/UserHandle;->OWNER:Landroid/os/UserHandle;

    const-string/jumbo v9, "miui.permission.USE_INTERNAL_GENERAL_API"

    move-object v8, v3

    move-object v10, v4

    invoke-virtual/range {v5 .. v10}, Landroid/content/Context;->registerReceiverAsUser(Landroid/content/BroadcastReceiver;Landroid/os/UserHandle;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 115
    const-wide/32 v0, 0x927c0

    const/4 v2, 0x0

    invoke-direct {p0, v0, v1, v2}, Lcom/miui/server/SplashScreenServiceDelegate;->delayToRebindService(JZ)V

    .line 99
    return-void
.end method


# virtual methods
.method public activityIdle(Landroid/content/pm/ActivityInfo;)V
    .locals 6
    .param p1, "aInfo"    # Landroid/content/pm/ActivityInfo;

    .prologue
    .line 351
    iget-object v1, p0, Lcom/miui/server/SplashScreenServiceDelegate;->mSplashScreenService:Lcom/miui/server/ISplashScreenService;

    .line 352
    .local v1, "sss":Lcom/miui/server/ISplashScreenService;
    if-eqz v1, :cond_0

    invoke-direct {p0, p1}, Lcom/miui/server/SplashScreenServiceDelegate;->getPackageName(Landroid/content/pm/ActivityInfo;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/miui/server/SplashScreenServiceDelegate;->isSplashPackage(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 353
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 355
    .local v2, "startTime":J
    :try_start_0
    invoke-interface {v1, p1}, Lcom/miui/server/ISplashScreenService;->activityIdle(Landroid/content/pm/ActivityInfo;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 359
    const-string/jumbo v4, "activityIdle"

    invoke-direct {p0, v4, v2, v3, p1}, Lcom/miui/server/SplashScreenServiceDelegate;->logCost(Ljava/lang/String;JLandroid/content/pm/ActivityInfo;)V

    .line 350
    .end local v2    # "startTime":J
    :cond_0
    :goto_0
    return-void

    .line 356
    .restart local v2    # "startTime":J
    :catch_0
    move-exception v0

    .line 357
    .local v0, "e":Ljava/lang/Exception;
    :try_start_1
    const-string/jumbo v4, "activityIdle exception"

    invoke-direct {p0, v4, v0}, Lcom/miui/server/SplashScreenServiceDelegate;->logE(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 359
    const-string/jumbo v4, "activityIdle"

    invoke-direct {p0, v4, v2, v3, p1}, Lcom/miui/server/SplashScreenServiceDelegate;->logCost(Ljava/lang/String;JLandroid/content/pm/ActivityInfo;)V

    goto :goto_0

    .line 358
    .end local v0    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v4

    .line 359
    const-string/jumbo v5, "activityIdle"

    invoke-direct {p0, v5, v2, v3, p1}, Lcom/miui/server/SplashScreenServiceDelegate;->logCost(Ljava/lang/String;JLandroid/content/pm/ActivityInfo;)V

    .line 358
    throw v4
.end method

.method public destroyActivity(Landroid/content/pm/ActivityInfo;)V
    .locals 6
    .param p1, "aInfo"    # Landroid/content/pm/ActivityInfo;

    .prologue
    .line 365
    iget-object v1, p0, Lcom/miui/server/SplashScreenServiceDelegate;->mSplashScreenService:Lcom/miui/server/ISplashScreenService;

    .line 366
    .local v1, "sss":Lcom/miui/server/ISplashScreenService;
    if-eqz v1, :cond_0

    invoke-direct {p0, p1}, Lcom/miui/server/SplashScreenServiceDelegate;->getPackageName(Landroid/content/pm/ActivityInfo;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/miui/server/SplashScreenServiceDelegate;->isSplashPackage(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 367
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 369
    .local v2, "startTime":J
    :try_start_0
    invoke-interface {v1, p1}, Lcom/miui/server/ISplashScreenService;->destroyActivity(Landroid/content/pm/ActivityInfo;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 373
    const-string/jumbo v4, "destroyActivity"

    invoke-direct {p0, v4, v2, v3, p1}, Lcom/miui/server/SplashScreenServiceDelegate;->logCost(Ljava/lang/String;JLandroid/content/pm/ActivityInfo;)V

    .line 364
    .end local v2    # "startTime":J
    :cond_0
    :goto_0
    return-void

    .line 370
    .restart local v2    # "startTime":J
    :catch_0
    move-exception v0

    .line 371
    .local v0, "e":Ljava/lang/Exception;
    :try_start_1
    const-string/jumbo v4, "destroyActivity exception"

    invoke-direct {p0, v4, v0}, Lcom/miui/server/SplashScreenServiceDelegate;->logE(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 373
    const-string/jumbo v4, "destroyActivity"

    invoke-direct {p0, v4, v2, v3, p1}, Lcom/miui/server/SplashScreenServiceDelegate;->logCost(Ljava/lang/String;JLandroid/content/pm/ActivityInfo;)V

    goto :goto_0

    .line 372
    .end local v0    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v4

    .line 373
    const-string/jumbo v5, "destroyActivity"

    invoke-direct {p0, v5, v2, v3, p1}, Lcom/miui/server/SplashScreenServiceDelegate;->logCost(Ljava/lang/String;JLandroid/content/pm/ActivityInfo;)V

    .line 372
    throw v4
.end method

.method public requestSplashScreen(Landroid/content/Intent;Landroid/content/pm/ActivityInfo;)Landroid/content/Intent;
    .locals 7
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "aInfo"    # Landroid/content/pm/ActivityInfo;

    .prologue
    .line 333
    iget-object v2, p0, Lcom/miui/server/SplashScreenServiceDelegate;->mSplashScreenService:Lcom/miui/server/ISplashScreenService;

    .line 334
    .local v2, "sss":Lcom/miui/server/ISplashScreenService;
    if-eqz v2, :cond_1

    invoke-direct {p0, p2}, Lcom/miui/server/SplashScreenServiceDelegate;->getPackageName(Landroid/content/pm/ActivityInfo;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/miui/server/SplashScreenServiceDelegate;->isSplashPackage(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 335
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    .line 337
    .local v4, "startTime":J
    const/4 v1, 0x0

    .line 338
    .local v1, "finalIntent":Landroid/content/Intent;
    :try_start_0
    invoke-interface {v2, p1, p2}, Lcom/miui/server/ISplashScreenService;->requestSplashScreen(Landroid/content/Intent;Landroid/content/pm/ActivityInfo;)Landroid/content/Intent;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v1

    .local v1, "finalIntent":Landroid/content/Intent;
    if-eqz v1, :cond_0

    .line 344
    const-string/jumbo v3, "requestSplashScreen "

    invoke-direct {p0, v3, v4, v5, p2}, Lcom/miui/server/SplashScreenServiceDelegate;->logCost(Ljava/lang/String;JLandroid/content/pm/ActivityInfo;)V

    .line 339
    return-object v1

    .line 344
    :cond_0
    const-string/jumbo v3, "requestSplashScreen "

    invoke-direct {p0, v3, v4, v5, p2}, Lcom/miui/server/SplashScreenServiceDelegate;->logCost(Ljava/lang/String;JLandroid/content/pm/ActivityInfo;)V

    .line 347
    .end local v1    # "finalIntent":Landroid/content/Intent;
    .end local v4    # "startTime":J
    :cond_1
    :goto_0
    return-object p1

    .line 341
    .local v1, "finalIntent":Landroid/content/Intent;
    .restart local v4    # "startTime":J
    :catch_0
    move-exception v0

    .line 342
    .local v0, "e":Ljava/lang/Exception;
    :try_start_1
    const-string/jumbo v3, "requestSplashScreen exception"

    invoke-direct {p0, v3, v0}, Lcom/miui/server/SplashScreenServiceDelegate;->logE(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 344
    const-string/jumbo v3, "requestSplashScreen "

    invoke-direct {p0, v3, v4, v5, p2}, Lcom/miui/server/SplashScreenServiceDelegate;->logCost(Ljava/lang/String;JLandroid/content/pm/ActivityInfo;)V

    goto :goto_0

    .line 343
    .end local v0    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v3

    .line 344
    const-string/jumbo v6, "requestSplashScreen "

    invoke-direct {p0, v6, v4, v5, p2}, Lcom/miui/server/SplashScreenServiceDelegate;->logCost(Ljava/lang/String;JLandroid/content/pm/ActivityInfo;)V

    .line 343
    throw v3
.end method
