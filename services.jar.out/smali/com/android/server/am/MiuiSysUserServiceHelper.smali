.class public Lcom/android/server/am/MiuiSysUserServiceHelper;
.super Ljava/lang/Object;
.source "MiuiSysUserServiceHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/am/MiuiSysUserServiceHelper$UserHandler;
    }
.end annotation


# static fields
.field private static final ADJ_MEM_FACTOR_LOW:I = 0x2

.field private static final ADJ_MEM_FACTOR_NORMAL:I = 0x0

.field private static final EVENT_MEMORY_LEVEL:Ljava/lang/String; = "EVENT_MEMORY_LEVEL"

.field private static final KEY_MEMORY_LEVELLOW:Ljava/lang/String; = "KEY_MEMORY_LEVEL_LOW"

.field private static MSG_INPUT_DELAY_TIME:J = 0x0L

.field private static final MSG_INPUT_TIMEOUT:I = 0x2

.field private static final MSG_RESUME_DELAY:I = 0x1

.field private static MSG_RESUME_DELAY_TIME:J = 0x0L

.field public static final TAG:Ljava/lang/String; = "MIUI_SYS_USER"

.field private static mEnable:Z

.field private static sHandler:Landroid/os/Handler;

.field private static sInputLimit:Z

.field private static sIsLimit:Z

.field private static sLastMemoryLevel:I

.field public static sTopPackage:Ljava/lang/String;

.field private static sysUser:Lcom/android/internal/app/IMiuiSysUser;


# direct methods
.method static synthetic -set0(Z)Z
    .locals 0

    sput-boolean p0, Lcom/android/server/am/MiuiSysUserServiceHelper;->sInputLimit:Z

    return p0
.end method

.method static synthetic -set1(Z)Z
    .locals 0

    sput-boolean p0, Lcom/android/server/am/MiuiSysUserServiceHelper;->sIsLimit:Z

    return p0
.end method

.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 22
    new-instance v0, Lcom/android/server/am/MiuiSysUserServiceHelper$UserHandler;

    invoke-static {}, Lcom/android/internal/os/BackgroundThread;->getHandler()Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/server/am/MiuiSysUserServiceHelper$UserHandler;-><init>(Landroid/os/Looper;)V

    sput-object v0, Lcom/android/server/am/MiuiSysUserServiceHelper;->sHandler:Landroid/os/Handler;

    .line 23
    const-wide/16 v0, 0xbb8

    sput-wide v0, Lcom/android/server/am/MiuiSysUserServiceHelper;->MSG_RESUME_DELAY_TIME:J

    .line 24
    const-wide/16 v0, 0x3e8

    sput-wide v0, Lcom/android/server/am/MiuiSysUserServiceHelper;->MSG_INPUT_DELAY_TIME:J

    .line 27
    sput-boolean v2, Lcom/android/server/am/MiuiSysUserServiceHelper;->sIsLimit:Z

    .line 28
    sput-boolean v2, Lcom/android/server/am/MiuiSysUserServiceHelper;->sInputLimit:Z

    .line 29
    invoke-static {}, Lcom/android/server/am/MiuiSysUserServiceHelper;->getDefaultEnable()Z

    move-result v0

    sput-boolean v0, Lcom/android/server/am/MiuiSysUserServiceHelper;->mEnable:Z

    .line 32
    sput v2, Lcom/android/server/am/MiuiSysUserServiceHelper;->sLastMemoryLevel:I

    .line 37
    const/4 v0, 0x0

    sput-object v0, Lcom/android/server/am/MiuiSysUserServiceHelper;->sTopPackage:Ljava/lang/String;

    .line 16
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getDefaultEnable()Z
    .locals 1

    .prologue
    .line 39
    const/4 v0, 0x0

    return v0
.end method

.method public static isAllLimit()Z
    .locals 1

    .prologue
    .line 111
    sget-boolean v0, Lcom/android/server/am/MiuiSysUserServiceHelper;->sIsLimit:Z

    if-nez v0, :cond_0

    sget-boolean v0, Lcom/android/server/am/MiuiSysUserServiceHelper;->sInputLimit:Z

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public static isLowMemory()Z
    .locals 2

    .prologue
    .line 115
    sget v0, Lcom/android/server/am/MiuiSysUserServiceHelper;->sLastMemoryLevel:I

    const/4 v1, 0x2

    if-lt v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static notifyAMCreateActivity(Landroid/content/ComponentName;II)V
    .locals 4
    .param p0, "name"    # Landroid/content/ComponentName;
    .param p1, "pid"    # I
    .param p2, "identify"    # I

    .prologue
    .line 196
    :try_start_0
    invoke-static {}, Lcom/android/server/am/MiuiSysUserServiceHelper;->sendAllLimitMessage()V

    .line 197
    invoke-virtual {p0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/android/server/am/MiuiSysUserServiceHelper;->sTopPackage:Ljava/lang/String;

    .line 198
    sget-object v1, Lcom/android/server/am/MiuiSysUserServiceHelper;->sysUser:Lcom/android/internal/app/IMiuiSysUser;

    if-eqz v1, :cond_0

    .line 199
    sget-object v1, Lcom/android/server/am/MiuiSysUserServiceHelper;->sysUser:Lcom/android/internal/app/IMiuiSysUser;

    invoke-interface {v1, p0, p1, p2}, Lcom/android/internal/app/IMiuiSysUser;->notifyAMCreateActivity(Landroid/content/ComponentName;II)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 194
    :cond_0
    :goto_0
    return-void

    .line 201
    :catch_0
    move-exception v0

    .line 202
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 203
    const-string/jumbo v1, "MIUI_SYS_USER"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "call notifyAMCreateActivity error !!!"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method static notifyAMDestroyActivity(II)V
    .locals 4
    .param p0, "pid"    # I
    .param p1, "identify"    # I

    .prologue
    .line 148
    :try_start_0
    sget-object v1, Lcom/android/server/am/MiuiSysUserServiceHelper;->sysUser:Lcom/android/internal/app/IMiuiSysUser;

    if-eqz v1, :cond_0

    .line 149
    sget-object v1, Lcom/android/server/am/MiuiSysUserServiceHelper;->sysUser:Lcom/android/internal/app/IMiuiSysUser;

    invoke-interface {v1, p0, p1}, Lcom/android/internal/app/IMiuiSysUser;->notifyAMDestroyActivity(II)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 146
    :cond_0
    :goto_0
    return-void

    .line 151
    :catch_0
    move-exception v0

    .line 152
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 153
    const-string/jumbo v1, "MIUI_SYS_USER"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "call notifyAMDestroyActivity error !!!"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method static notifyAMPauseActivity(II)V
    .locals 4
    .param p0, "pid"    # I
    .param p1, "identify"    # I

    .prologue
    .line 159
    :try_start_0
    sget-object v1, Lcom/android/server/am/MiuiSysUserServiceHelper;->sysUser:Lcom/android/internal/app/IMiuiSysUser;

    if-eqz v1, :cond_0

    .line 160
    sget-object v1, Lcom/android/server/am/MiuiSysUserServiceHelper;->sysUser:Lcom/android/internal/app/IMiuiSysUser;

    invoke-interface {v1, p0, p1}, Lcom/android/internal/app/IMiuiSysUser;->notifyAMPauseActivity(II)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 157
    :cond_0
    :goto_0
    return-void

    .line 162
    :catch_0
    move-exception v0

    .line 163
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 164
    const-string/jumbo v1, "MIUI_SYS_USER"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "call notifyAMPauseActivity error !!!"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method static notifyAMProcDied(ILjava/lang/String;)V
    .locals 4
    .param p0, "pid"    # I
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    .line 137
    :try_start_0
    sget-object v1, Lcom/android/server/am/MiuiSysUserServiceHelper;->sysUser:Lcom/android/internal/app/IMiuiSysUser;

    if-eqz v1, :cond_0

    .line 138
    sget-object v1, Lcom/android/server/am/MiuiSysUserServiceHelper;->sysUser:Lcom/android/internal/app/IMiuiSysUser;

    invoke-interface {v1, p0, p1}, Lcom/android/internal/app/IMiuiSysUser;->notifyAMProcDied(ILjava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 135
    :cond_0
    :goto_0
    return-void

    .line 140
    :catch_0
    move-exception v0

    .line 141
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 142
    const-string/jumbo v1, "MIUI_SYS_USER"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "call notifyAMProcDied error !!!"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method static notifyAMProcStart(JIILjava/lang/String;Landroid/content/ComponentName;Ljava/lang/String;)V
    .locals 10
    .param p0, "startUsedTime"    # J
    .param p2, "pid"    # I
    .param p3, "uid"    # I
    .param p4, "processName"    # Ljava/lang/String;
    .param p5, "name"    # Landroid/content/ComponentName;
    .param p6, "reason"    # Ljava/lang/String;

    .prologue
    .line 125
    :try_start_0
    sget-object v1, Lcom/android/server/am/MiuiSysUserServiceHelper;->sysUser:Lcom/android/internal/app/IMiuiSysUser;

    if-eqz v1, :cond_0

    .line 126
    sget-object v1, Lcom/android/server/am/MiuiSysUserServiceHelper;->sysUser:Lcom/android/internal/app/IMiuiSysUser;

    move-wide v2, p0

    move v4, p2

    move v5, p3

    move-object v6, p4

    move-object v7, p5

    move-object/from16 v8, p6

    invoke-interface/range {v1 .. v8}, Lcom/android/internal/app/IMiuiSysUser;->notifyAMProcStart(JIILjava/lang/String;Landroid/content/ComponentName;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 123
    :cond_0
    :goto_0
    return-void

    .line 129
    :catch_0
    move-exception v0

    .line 130
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 131
    const-string/jumbo v1, "MIUI_SYS_USER"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "call notifyAMProcStart error !!!"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method static notifyAMRestartActivity(Landroid/content/ComponentName;II)V
    .locals 4
    .param p0, "name"    # Landroid/content/ComponentName;
    .param p1, "pid"    # I
    .param p2, "identify"    # I

    .prologue
    .line 183
    :try_start_0
    invoke-static {}, Lcom/android/server/am/MiuiSysUserServiceHelper;->sendAllLimitMessage()V

    .line 184
    invoke-virtual {p0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/android/server/am/MiuiSysUserServiceHelper;->sTopPackage:Ljava/lang/String;

    .line 185
    sget-object v1, Lcom/android/server/am/MiuiSysUserServiceHelper;->sysUser:Lcom/android/internal/app/IMiuiSysUser;

    if-eqz v1, :cond_0

    .line 186
    sget-object v1, Lcom/android/server/am/MiuiSysUserServiceHelper;->sysUser:Lcom/android/internal/app/IMiuiSysUser;

    invoke-interface {v1, p0, p1, p2}, Lcom/android/internal/app/IMiuiSysUser;->notifyAMRestartActivity(Landroid/content/ComponentName;II)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 181
    :cond_0
    :goto_0
    return-void

    .line 188
    :catch_0
    move-exception v0

    .line 189
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 190
    const-string/jumbo v1, "MIUI_SYS_USER"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "call notifyAMRestartActivity error !!!"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method static notifyAMResumeActivity(Landroid/content/ComponentName;II)V
    .locals 4
    .param p0, "name"    # Landroid/content/ComponentName;
    .param p1, "pid"    # I
    .param p2, "identify"    # I

    .prologue
    .line 170
    :try_start_0
    invoke-static {}, Lcom/android/server/am/MiuiSysUserServiceHelper;->sendAllLimitMessage()V

    .line 171
    invoke-virtual {p0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/android/server/am/MiuiSysUserServiceHelper;->sTopPackage:Ljava/lang/String;

    .line 172
    sget-object v1, Lcom/android/server/am/MiuiSysUserServiceHelper;->sysUser:Lcom/android/internal/app/IMiuiSysUser;

    if-eqz v1, :cond_0

    .line 173
    sget-object v1, Lcom/android/server/am/MiuiSysUserServiceHelper;->sysUser:Lcom/android/internal/app/IMiuiSysUser;

    invoke-interface {v1, p0, p1, p2}, Lcom/android/internal/app/IMiuiSysUser;->notifyAMResumeActivity(Landroid/content/ComponentName;II)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 168
    :cond_0
    :goto_0
    return-void

    .line 175
    :catch_0
    move-exception v0

    .line 176
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 177
    const-string/jumbo v1, "MIUI_SYS_USER"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "call notifyAMResumeActivity error !!!"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method static notifyEvent(Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 4
    .param p0, "eventTag"    # Ljava/lang/String;
    .param p1, "data"    # Landroid/os/Bundle;

    .prologue
    .line 209
    :try_start_0
    sget-object v1, Lcom/android/server/am/MiuiSysUserServiceHelper;->sysUser:Lcom/android/internal/app/IMiuiSysUser;

    if-eqz v1, :cond_0

    .line 210
    sget-object v1, Lcom/android/server/am/MiuiSysUserServiceHelper;->sysUser:Lcom/android/internal/app/IMiuiSysUser;

    invoke-interface {v1, p0, p1}, Lcom/android/internal/app/IMiuiSysUser;->notifyEvent(Ljava/lang/String;Landroid/os/Bundle;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 207
    :cond_0
    :goto_0
    return-void

    .line 212
    :catch_0
    move-exception v0

    .line 213
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 214
    const-string/jumbo v1, "MIUI_SYS_USER"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "call notifyEvent error !!!"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public static notifyMemoryLevelChange(I)V
    .locals 3
    .param p0, "memFactor"    # I

    .prologue
    const/4 v2, 0x2

    .line 95
    if-lt p0, v2, :cond_1

    .line 96
    sget v1, Lcom/android/server/am/MiuiSysUserServiceHelper;->sLastMemoryLevel:I

    if-ge v1, v2, :cond_0

    .line 97
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 98
    .local v0, "data":Landroid/os/Bundle;
    const-string/jumbo v1, "KEY_MEMORY_LEVEL_LOW"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 99
    const-string/jumbo v1, "EVENT_MEMORY_LEVEL"

    invoke-static {v1, v0}, Lcom/android/server/am/MiuiSysUserServiceHelper;->notifyEvent(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 94
    .end local v0    # "data":Landroid/os/Bundle;
    :cond_0
    :goto_0
    return-void

    .line 102
    :cond_1
    sget v1, Lcom/android/server/am/MiuiSysUserServiceHelper;->sLastMemoryLevel:I

    if-lt v1, v2, :cond_0

    .line 103
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 104
    .restart local v0    # "data":Landroid/os/Bundle;
    const-string/jumbo v1, "KEY_MEMORY_LEVEL_LOW"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 105
    const-string/jumbo v1, "EVENT_MEMORY_LEVEL"

    invoke-static {v1, v0}, Lcom/android/server/am/MiuiSysUserServiceHelper;->notifyEvent(Ljava/lang/String;Landroid/os/Bundle;)V

    goto :goto_0
.end method

.method private static sendAllLimitMessage()V
    .locals 4

    .prologue
    const/4 v1, 0x1

    .line 76
    sget-boolean v0, Lcom/android/server/am/MiuiSysUserServiceHelper;->mEnable:Z

    if-nez v0, :cond_0

    .line 77
    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/server/am/MiuiSysUserServiceHelper;->sIsLimit:Z

    .line 78
    return-void

    .line 80
    :cond_0
    sget-object v0, Lcom/android/server/am/MiuiSysUserServiceHelper;->sHandler:Landroid/os/Handler;

    if-eqz v0, :cond_1

    .line 81
    sput-boolean v1, Lcom/android/server/am/MiuiSysUserServiceHelper;->sIsLimit:Z

    .line 82
    sget-object v0, Lcom/android/server/am/MiuiSysUserServiceHelper;->sHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 83
    sget-object v0, Lcom/android/server/am/MiuiSysUserServiceHelper;->sHandler:Landroid/os/Handler;

    sget-wide v2, Lcom/android/server/am/MiuiSysUserServiceHelper;->MSG_RESUME_DELAY_TIME:J

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 75
    :cond_1
    return-void
.end method

.method public static sendInputMessage()V
    .locals 4

    .prologue
    const/4 v1, 0x2

    .line 65
    sget-boolean v0, Lcom/android/server/am/MiuiSysUserServiceHelper;->mEnable:Z

    if-nez v0, :cond_0

    .line 66
    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/server/am/MiuiSysUserServiceHelper;->sInputLimit:Z

    .line 67
    return-void

    .line 69
    :cond_0
    sget-object v0, Lcom/android/server/am/MiuiSysUserServiceHelper;->sHandler:Landroid/os/Handler;

    if-eqz v0, :cond_1

    .line 70
    const/4 v0, 0x1

    sput-boolean v0, Lcom/android/server/am/MiuiSysUserServiceHelper;->sInputLimit:Z

    .line 71
    sget-object v0, Lcom/android/server/am/MiuiSysUserServiceHelper;->sHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 72
    sget-object v0, Lcom/android/server/am/MiuiSysUserServiceHelper;->sHandler:Landroid/os/Handler;

    sget-wide v2, Lcom/android/server/am/MiuiSysUserServiceHelper;->MSG_INPUT_DELAY_TIME:J

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 64
    :cond_1
    return-void
.end method

.method public static setEnable(Z)V
    .locals 0
    .param p0, "enable"    # Z

    .prologue
    .line 42
    return-void
.end method

.method public static setMemLevel(I)V
    .locals 1
    .param p0, "memoryLevel"    # I

    .prologue
    .line 88
    sget v0, Lcom/android/server/am/MiuiSysUserServiceHelper;->sLastMemoryLevel:I

    if-eq v0, p0, :cond_0

    .line 89
    invoke-static {p0}, Lcom/android/server/am/MiuiSysUserServiceHelper;->notifyMemoryLevelChange(I)V

    .line 91
    :cond_0
    sput p0, Lcom/android/server/am/MiuiSysUserServiceHelper;->sLastMemoryLevel:I

    .line 87
    return-void
.end method

.method public static setMiuiSysUser(Lcom/android/internal/app/IMiuiSysUser;)V
    .locals 0
    .param p0, "obj"    # Lcom/android/internal/app/IMiuiSysUser;

    .prologue
    .line 119
    sput-object p0, Lcom/android/server/am/MiuiSysUserServiceHelper;->sysUser:Lcom/android/internal/app/IMiuiSysUser;

    .line 118
    return-void
.end method
