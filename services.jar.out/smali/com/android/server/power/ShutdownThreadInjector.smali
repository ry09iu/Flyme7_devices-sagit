.class public final Lcom/android/server/power/ShutdownThreadInjector;
.super Ljava/lang/Object;
.source "ShutdownThreadInjector.java"


# static fields
.field private static final CUSTOMIZED_REGION:Ljava/lang/String;

.field private static final CUST_ROOT_PATH:Ljava/lang/String;

.field private static final CUST_VAR:Ljava/lang/String;

.field private static final IS_CUSTOMIZATION_TEST:Z

.field private static final IS_CUSTOMIZED_REGION:Z

.field private static final OPERATOR_ANIMATION_DISABLE_FLAG:Ljava/lang/String;

.field private static final OPERATOR_MUSIC_DISABLE_FLAG:Ljava/lang/String;

.field private static final OPERATOR_SHUTDOWN_ANIMATION_FILE:Ljava/lang/String;

.field private static final OPERATOR_SHUTDOWN_MUSIC_FILE:Ljava/lang/String;

.field private static final SHUTDOWN_ACTION_PROPERTY_MIUI:Ljava/lang/String; = "sys.shutdown.miui"

.field private static final SHUTDOWN_ACTION_PROPERTY_MIUI_MUSIC:Ljava/lang/String; = "sys.shutdown.miuimusic"

.field private static final TAG:Ljava/lang/String; = "ShutdownThreadInjector"

.field private static sIsShutdownMusicPlaying:Z


# direct methods
.method static synthetic -set0(Z)Z
    .locals 0

    sput-boolean p0, Lcom/android/server/power/ShutdownThreadInjector;->sIsShutdownMusicPlaying:Z

    return p0
.end method

.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/4 v1, 0x1

    .line 31
    sget-boolean v0, Lmiui/os/Build;->IS_CM_CUSTOMIZATION_TEST:Z

    if-nez v0, :cond_1

    .line 32
    sget-boolean v0, Lmiui/os/Build;->IS_CU_CUSTOMIZATION_TEST:Z

    .line 31
    if-nez v0, :cond_1

    .line 32
    sget-boolean v0, Lmiui/os/Build;->IS_CT_CUSTOMIZATION_TEST:Z

    .line 31
    :goto_0
    sput-boolean v0, Lcom/android/server/power/ShutdownThreadInjector;->IS_CUSTOMIZATION_TEST:Z

    .line 34
    const-string/jumbo v0, "ro.miui.customized.region"

    const-string/jumbo v2, ""

    invoke-static {v0, v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/power/ShutdownThreadInjector;->CUSTOMIZED_REGION:Ljava/lang/String;

    .line 35
    sget-object v0, Lcom/android/server/power/ShutdownThreadInjector;->CUSTOMIZED_REGION:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    :cond_0
    sput-boolean v1, Lcom/android/server/power/ShutdownThreadInjector;->IS_CUSTOMIZED_REGION:Z

    .line 79
    sget-boolean v0, Lcom/android/server/power/ShutdownThreadInjector;->IS_CUSTOMIZED_REGION:Z

    if-eqz v0, :cond_2

    sget-object v0, Lcom/android/server/power/ShutdownThreadInjector;->CUSTOMIZED_REGION:Ljava/lang/String;

    :goto_1
    sput-object v0, Lcom/android/server/power/ShutdownThreadInjector;->CUST_VAR:Ljava/lang/String;

    .line 80
    sget-boolean v0, Lmiui/os/Build;->HAS_CUST_PARTITION:Z

    if-eqz v0, :cond_3

    .line 81
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "/cust/cust/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/android/server/power/ShutdownThreadInjector;->CUST_VAR:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 80
    :goto_2
    sput-object v0, Lcom/android/server/power/ShutdownThreadInjector;->CUST_ROOT_PATH:Ljava/lang/String;

    .line 84
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/android/server/power/ShutdownThreadInjector;->CUST_ROOT_PATH:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "theme/operator/boots/shutdownanimation.zip"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/power/ShutdownThreadInjector;->OPERATOR_SHUTDOWN_ANIMATION_FILE:Ljava/lang/String;

    .line 85
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/android/server/power/ShutdownThreadInjector;->CUST_ROOT_PATH:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "theme/operator/boots/shutdownaudio.mp3"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/power/ShutdownThreadInjector;->OPERATOR_SHUTDOWN_MUSIC_FILE:Ljava/lang/String;

    .line 86
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lmiui/content/res/ThemeResources;->THEME_MAGIC_PATH:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "disable_operator_animation"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/power/ShutdownThreadInjector;->OPERATOR_ANIMATION_DISABLE_FLAG:Ljava/lang/String;

    .line 87
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lmiui/content/res/ThemeResources;->THEME_MAGIC_PATH:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "disable_operator_audio"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/power/ShutdownThreadInjector;->OPERATOR_MUSIC_DISABLE_FLAG:Ljava/lang/String;

    .line 25
    return-void

    :cond_1
    move v0, v1

    .line 31
    goto/16 :goto_0

    .line 79
    :cond_2
    invoke-static {}, Lmiui/os/Build;->getCustVariant()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_1

    .line 82
    :cond_3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "/data/miui/cust/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/android/server/power/ShutdownThreadInjector;->CUST_VAR:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_2
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static checkAnimationFileExist(Landroid/content/Context;Z)Z
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "isReboot"    # Z

    .prologue
    .line 90
    new-instance v0, Ljava/io/File;

    sget-object v1, Lcom/android/server/power/ShutdownThreadInjector;->OPERATOR_ANIMATION_DISABLE_FLAG:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_0

    .line 91
    new-instance v0, Ljava/io/File;

    sget-object v1, Lcom/android/server/power/ShutdownThreadInjector;->OPERATOR_SHUTDOWN_ANIMATION_FILE:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    .line 90
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static getShutdownMusicFilePath(Landroid/content/Context;Z)Ljava/lang/String;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "isReboot"    # Z

    .prologue
    .line 102
    const/4 v0, 0x0

    return-object v0
.end method

.method private static getShutdownMusicFilePathInner(Landroid/content/Context;Z)Ljava/lang/String;
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "isReboot"    # Z

    .prologue
    const/4 v0, 0x0

    .line 106
    new-instance v1, Ljava/io/File;

    sget-object v2, Lcom/android/server/power/ShutdownThreadInjector;->OPERATOR_MUSIC_DISABLE_FLAG:Ljava/lang/String;

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 107
    return-object v0

    .line 109
    :cond_0
    new-instance v1, Ljava/io/File;

    sget-object v2, Lcom/android/server/power/ShutdownThreadInjector;->OPERATOR_SHUTDOWN_MUSIC_FILE:Ljava/lang/String;

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_1

    sget-object v0, Lcom/android/server/power/ShutdownThreadInjector;->OPERATOR_SHUTDOWN_MUSIC_FILE:Ljava/lang/String;

    :cond_1
    return-object v0
.end method

.method private static isSilentMode(Landroid/content/Context;)Z
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 173
    const-string/jumbo v1, "audio"

    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    .line 174
    .local v0, "audio":Landroid/media/AudioManager;
    invoke-virtual {v0}, Landroid/media/AudioManager;->isSilentMode()Z

    move-result v1

    return v1
.end method

.method static needVibrator()Z
    .locals 1

    .prologue
    .line 38
    const/4 v0, 0x0

    return v0
.end method

.method static playShutdownMusic(Landroid/content/Context;Z)V
    .locals 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "isReboot"    # Z

    .prologue
    .line 116
    const-string/jumbo v1, "sys.shutdown.miui"

    const-string/jumbo v2, "shutdown"

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 118
    invoke-static {p0, p1}, Lcom/android/server/power/ShutdownThreadInjector;->getShutdownMusicFilePathInner(Landroid/content/Context;Z)Ljava/lang/String;

    move-result-object v0

    .line 119
    .local v0, "shutdownMusicPath":Ljava/lang/String;
    const-string/jumbo v1, "ShutdownThreadInjector"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "shutdown music: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {p0}, Lcom/android/server/power/ShutdownThreadInjector;->isSilentMode(Landroid/content/Context;)Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 120
    invoke-static {p0}, Lcom/android/server/power/ShutdownThreadInjector;->isSilentMode(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_0

    if-eqz v0, :cond_0

    .line 122
    const-string/jumbo v1, "sys.shutdown.miuimusic"

    const-string/jumbo v2, "shutdown_music"

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 112
    :cond_0
    return-void
.end method

.method private static playShutdownMusicImpl(Ljava/lang/String;)V
    .locals 12
    .param p0, "shutdownMusicPath"    # Ljava/lang/String;

    .prologue
    .line 129
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 130
    .local v0, "actionDoneSync":Ljava/lang/Object;
    const/4 v8, 0x1

    sput-boolean v8, Lcom/android/server/power/ShutdownThreadInjector;->sIsShutdownMusicPlaying:Z

    .line 133
    :try_start_0
    new-instance v5, Landroid/media/MediaPlayer;

    invoke-direct {v5}, Landroid/media/MediaPlayer;-><init>()V

    .line 134
    .local v5, "mediaPlayer":Landroid/media/MediaPlayer;
    invoke-virtual {v5}, Landroid/media/MediaPlayer;->reset()V

    .line 135
    invoke-virtual {v5, p0}, Landroid/media/MediaPlayer;->setDataSource(Ljava/lang/String;)V

    .line 136
    invoke-virtual {v5}, Landroid/media/MediaPlayer;->prepare()V

    .line 138
    new-instance v8, Lcom/android/server/power/ShutdownThreadInjector$1;

    invoke-direct {v8, v0}, Lcom/android/server/power/ShutdownThreadInjector$1;-><init>(Ljava/lang/Object;)V

    .line 137
    invoke-virtual {v5, v8}, Landroid/media/MediaPlayer;->setOnCompletionListener(Landroid/media/MediaPlayer$OnCompletionListener;)V

    .line 147
    invoke-virtual {v5}, Landroid/media/MediaPlayer;->start()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 153
    .end local v5    # "mediaPlayer":Landroid/media/MediaPlayer;
    :goto_0
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v8

    const-wide/16 v10, 0x1388

    add-long v6, v8, v10

    .line 154
    .local v6, "endTimeForMusic":J
    monitor-enter v0

    .line 155
    :goto_1
    :try_start_1
    sget-boolean v8, Lcom/android/server/power/ShutdownThreadInjector;->sIsShutdownMusicPlaying:Z

    if-eqz v8, :cond_0

    .line 156
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v8

    sub-long v2, v6, v8

    .line 157
    .local v2, "delay":J
    const-wide/16 v8, 0x0

    cmp-long v8, v2, v8

    if-gtz v8, :cond_2

    .line 158
    const-string/jumbo v8, "ShutdownThreadInjector"

    const-string/jumbo v9, "play shutdown music timeout"

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 166
    .end local v2    # "delay":J
    :cond_0
    sget-boolean v8, Lcom/android/server/power/ShutdownThreadInjector;->sIsShutdownMusicPlaying:Z

    if-nez v8, :cond_1

    .line 167
    const-string/jumbo v8, "ShutdownThreadInjector"

    const-string/jumbo v9, "play shutdown music complete"

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_1
    monitor-exit v0

    .line 128
    return-void

    .line 148
    .end local v6    # "endTimeForMusic":J
    :catch_0
    move-exception v1

    .line 149
    .local v1, "e":Ljava/lang/Exception;
    const/4 v8, 0x0

    sput-boolean v8, Lcom/android/server/power/ShutdownThreadInjector;->sIsShutdownMusicPlaying:Z

    .line 150
    const-string/jumbo v8, "ShutdownThreadInjector"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "play shutdown music error:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 162
    .end local v1    # "e":Ljava/lang/Exception;
    .restart local v2    # "delay":J
    .restart local v6    # "endTimeForMusic":J
    :cond_2
    :try_start_2
    invoke-virtual {v0, v2, v3}, Ljava/lang/Object;->wait(J)V
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1

    .line 163
    :catch_1
    move-exception v4

    .local v4, "e":Ljava/lang/InterruptedException;
    goto :goto_1

    .line 154
    .end local v2    # "delay":J
    .end local v4    # "e":Ljava/lang/InterruptedException;
    :catchall_0
    move-exception v8

    monitor-exit v0

    throw v8
.end method

.method static recordShutdownTime(Landroid/content/Context;Z)V
    .locals 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "reboot"    # Z

    .prologue
    .line 178
    new-instance v0, Lmiui/util/SystemAnalytics$Action;

    invoke-direct {v0}, Lmiui/util/SystemAnalytics$Action;-><init>()V

    .line 179
    .local v0, "action":Lmiui/util/SystemAnalytics$Action;
    const-string/jumbo v2, "action"

    if-eqz p1, :cond_0

    const-string/jumbo v1, "reboot"

    :goto_0
    invoke-virtual {v0, v2, v1}, Lmiui/util/SystemAnalytics$Action;->addParam(Ljava/lang/String;Ljava/lang/String;)Lmiui/util/SystemAnalytics$Action;

    .line 180
    const-string/jumbo v1, "time"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v0, v1, v2, v3}, Lmiui/util/SystemAnalytics$Action;->addParam(Ljava/lang/String;J)Lmiui/util/SystemAnalytics$Action;

    .line 181
    const-string/jumbo v1, "systemserver_bootshuttime"

    invoke-static {p0, v1, v0}, Lmiui/util/SystemAnalytics;->trackSystem(Landroid/content/Context;Ljava/lang/String;Lmiui/util/SystemAnalytics$Action;)V

    .line 177
    return-void

    .line 179
    :cond_0
    const-string/jumbo v1, "shutdown"

    goto :goto_0
.end method

.method static showShutdownAnimOrDialog(Landroid/content/Context;Z)V
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "isReboot"    # Z

    .prologue
    .line 42
    sget-boolean v0, Lcom/android/server/power/ShutdownThreadInjector;->IS_CUSTOMIZATION_TEST:Z

    if-nez v0, :cond_0

    sget-boolean v0, Lcom/android/server/power/ShutdownThreadInjector;->IS_CUSTOMIZED_REGION:Z

    if-eqz v0, :cond_1

    :cond_0
    invoke-static {p0, p1}, Lcom/android/server/power/ShutdownThreadInjector;->checkAnimationFileExist(Landroid/content/Context;Z)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 43
    const-string/jumbo v0, "service.bootanim.exit"

    const-string/jumbo v1, "0"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 44
    const-string/jumbo v0, "ctl.start"

    const-string/jumbo v1, "bootanim"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 45
    invoke-static {p0, p1}, Lcom/android/server/power/ShutdownThreadInjector;->showShutdownAnimation(Landroid/content/Context;Z)V

    .line 41
    :goto_0
    return-void

    .line 47
    :cond_1
    invoke-static {p0, p1}, Lcom/android/server/power/ShutdownThreadInjector;->showShutdownDialog(Landroid/content/Context;Z)V

    goto :goto_0
.end method

.method static showShutdownAnimation(Landroid/content/Context;Z)V
    .locals 0
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "isReboot"    # Z

    .prologue
    .line 97
    invoke-static {p0, p1}, Lcom/android/server/power/ShutdownThreadInjector;->playShutdownMusic(Landroid/content/Context;Z)V

    .line 94
    return-void
.end method

.method static showShutdownDialog(Landroid/content/Context;Z)V
    .locals 10
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "isReboot"    # Z

    .prologue
    const/4 v9, 0x0

    .line 52
    new-instance v1, Landroid/app/Dialog;

    const v6, 0x103006d

    invoke-direct {v1, p0, v6}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    .line 53
    .local v1, "bootMsgDialog":Landroid/app/Dialog;
    invoke-virtual {v1}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-static {v6}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v6

    const v7, 0x11030010

    const/4 v8, 0x0

    invoke-virtual {v6, v7, v8}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v5

    .line 54
    .local v5, "view":Landroid/view/View;
    invoke-virtual {v1, v5}, Landroid/app/Dialog;->setContentView(Landroid/view/View;)V

    .line 55
    invoke-virtual {v1, v9}, Landroid/app/Dialog;->setCancelable(Z)V

    .line 56
    invoke-virtual {v1}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v6

    invoke-virtual {v6}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v2

    .line 57
    .local v2, "lp":Landroid/view/WindowManager$LayoutParams;
    const/4 v6, 0x1

    iput v6, v2, Landroid/view/WindowManager$LayoutParams;->screenOrientation:I

    .line 58
    invoke-virtual {v1}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v6

    invoke-virtual {v6, v2}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 59
    invoke-virtual {v1}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v6

    const/16 v7, 0x7e5

    invoke-virtual {v6, v7}, Landroid/view/Window;->setType(I)V

    .line 60
    invoke-virtual {v1}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v6

    const/high16 v7, 0x10000

    invoke-virtual {v6, v7}, Landroid/view/Window;->clearFlags(I)V

    .line 61
    invoke-virtual {v1}, Landroid/app/Dialog;->show()V

    .line 63
    if-eqz p1, :cond_0

    .line 64
    const v6, 0x110b0028

    invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ImageView;

    .line 65
    .local v4, "shutdownImage":Landroid/widget/ImageView;
    invoke-virtual {v4, v9}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 66
    invoke-virtual {v4}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/AnimatedRotateDrawable;

    .line 67
    .local v0, "animationDrawable":Landroid/graphics/drawable/AnimatedRotateDrawable;
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x11060014

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v6

    invoke-virtual {v0, v6}, Landroid/graphics/drawable/AnimatedRotateDrawable;->setFramesCount(I)V

    .line 68
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x11060015

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v6

    invoke-virtual {v0, v6}, Landroid/graphics/drawable/AnimatedRotateDrawable;->setFramesDuration(I)V

    .line 69
    invoke-virtual {v0}, Landroid/graphics/drawable/AnimatedRotateDrawable;->start()V

    .line 76
    .end local v0    # "animationDrawable":Landroid/graphics/drawable/AnimatedRotateDrawable;
    .end local v4    # "shutdownImage":Landroid/widget/ImageView;
    :goto_0
    const-string/jumbo v6, "sys.in_shutdown_progress"

    const-string/jumbo v7, "1"

    invoke-static {v6, v7}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 51
    return-void

    .line 72
    :cond_0
    const-string/jumbo v6, "power"

    invoke-virtual {p0, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/PowerManager;

    .line 73
    .local v3, "powerManager":Landroid/os/PowerManager;
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v6

    invoke-virtual {v3, v6, v7}, Landroid/os/PowerManager;->goToSleep(J)V

    goto :goto_0
.end method
