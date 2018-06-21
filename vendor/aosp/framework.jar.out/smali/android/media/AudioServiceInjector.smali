.class public Landroid/media/AudioServiceInjector;
.super Ljava/lang/Object;
.source "AudioServiceInjector.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "AudioService"

.field private static final availableDevice:I = 0x8c

.field public static mOriginalIndexWhenSetStreamVolume:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static adjustDefaultStreamVolume([I)V
    .locals 2
    .param p0, "defaultStreamVolume"    # [I

    .prologue
    .line 139
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v1, p0

    if-ge v0, v1, :cond_2

    .line 140
    if-eqz v0, :cond_0

    const/4 v1, 0x6

    if-ne v0, v1, :cond_1

    .line 139
    :cond_0
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 143
    :cond_1
    const/16 v1, 0xa

    aput v1, p0, v0

    goto :goto_1

    .line 138
    :cond_2
    return-void
.end method

.method public static adjustHiFiVolume(ILandroid/content/Context;)V
    .locals 2
    .param p0, "direction"    # I
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 42
    invoke-static {p1}, Lmiui/util/AudioManagerHelper;->getHiFiVolume(Landroid/content/Context;)I

    move-result v0

    .line 44
    .local v0, "currentHiFiVolume":I
    const/4 v1, -0x1

    if-ne p0, v1, :cond_1

    .line 45
    add-int/lit8 v1, v0, -0xa

    invoke-static {p1, v1}, Lmiui/util/AudioManagerHelper;->setHiFiVolume(Landroid/content/Context;I)V

    .line 41
    :cond_0
    :goto_0
    return-void

    .line 46
    :cond_1
    const/4 v1, 0x1

    if-ne p0, v1, :cond_0

    const/16 v1, 0x64

    if-ge v0, v1, :cond_0

    .line 47
    add-int/lit8 v1, v0, 0xa

    invoke-static {p1, v1}, Lmiui/util/AudioManagerHelper;->setHiFiVolume(Landroid/content/Context;I)V

    goto :goto_0
.end method

.method public static adjustMaxStreamVolume([I)V
    .locals 2
    .param p0, "maxStreamVolume"    # [I

    .prologue
    .line 130
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v1, p0

    if-ge v0, v1, :cond_2

    .line 131
    if-eqz v0, :cond_0

    const/4 v1, 0x6

    if-ne v0, v1, :cond_1

    .line 130
    :cond_0
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 134
    :cond_1
    const/16 v1, 0xf

    aput v1, p0, v0

    goto :goto_1

    .line 129
    :cond_2
    return-void
.end method

.method public static calculateStreamMaxVolume(IILandroid/content/Context;)I
    .locals 2
    .param p0, "streamType"    # I
    .param p1, "maxIndex"    # I
    .param p2, "context"    # Landroid/content/Context;

    .prologue
    .line 112
    add-int/lit8 v1, p1, 0x5

    div-int/lit8 v0, v1, 0xa

    .line 113
    .local v0, "retValue":I
    const/4 v1, 0x3

    if-ne v1, p0, :cond_0

    invoke-static {p2}, Lmiui/util/AudioManagerHelper;->isHiFiMode(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 115
    add-int/lit8 v0, v0, 0xa

    .line 117
    :cond_0
    return v0
.end method

.method public static calculateStreamVolume(IILandroid/content/Context;)I
    .locals 2
    .param p0, "streamType"    # I
    .param p1, "index"    # I
    .param p2, "context"    # Landroid/content/Context;

    .prologue
    .line 104
    add-int/lit8 v1, p1, 0x5

    div-int/lit8 v0, v1, 0xa

    .line 105
    .local v0, "retValue":I
    const/4 v1, 0x3

    if-ne p0, v1, :cond_0

    invoke-static {p2}, Lmiui/util/AudioManagerHelper;->isHiFiMode(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 106
    invoke-static {p2}, Lmiui/util/AudioManagerHelper;->getHiFiVolume(Landroid/content/Context;)I

    move-result v1

    div-int/lit8 v1, v1, 0xa

    add-int/2addr v0, v1

    .line 108
    :cond_0
    return v0
.end method

.method public static checkForRingerModeChange(Landroid/content/Context;III)I
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "oldRingerMode"    # I
    .param p2, "newRingerMode"    # I
    .param p3, "direction"    # I

    .prologue
    .line 148
    invoke-static {p0, p2}, Lmiui/util/AudioManagerHelper;->getValidatedRingerMode(Landroid/content/Context;I)I

    move-result v0

    return v0
.end method

.method public static checkMusicStream(Ljava/lang/Object;Landroid/content/Context;II)V
    .locals 11
    .param p0, "object"    # Ljava/lang/Object;
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "ringerMode"    # I
    .param p3, "dev"    # I

    .prologue
    .line 191
    invoke-static {p1}, Landroid/provider/MiuiSettings$SilenceMode;->getZenMode(Landroid/content/Context;)I

    move-result v7

    const/4 v8, 0x3

    if-eq v8, v7, :cond_0

    .line 192
    sget-boolean v7, Lmiui/os/Build;->IS_CTS_BUILD:Z

    .line 191
    if-eqz v7, :cond_1

    .line 193
    :cond_0
    return-void

    .line 196
    :cond_1
    const/4 v0, 0x0

    .line 197
    .local v0, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :try_start_0
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    .line 198
    .local v0, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const-string/jumbo v7, "mute"

    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/Class;

    sget-object v9, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    const/4 v10, 0x0

    aput-object v9, v8, v10

    invoke-virtual {v0, v7, v8}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v5

    .line 199
    .local v5, "method":Ljava/lang/reflect/Method;
    const/4 v7, 0x2

    if-eq p2, v7, :cond_2

    and-int/lit16 v7, p3, 0x8c

    if-nez v7, :cond_2

    const/4 v6, 0x1

    .line 200
    .local v6, "shouldMute":Z
    :goto_0
    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Object;

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v8

    const/4 v9, 0x0

    aput-object v8, v7, v9

    invoke-virtual {v5, p0, v7}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_0

    .line 190
    .end local v0    # "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v5    # "method":Ljava/lang/reflect/Method;
    .end local v6    # "shouldMute":Z
    :goto_1
    return-void

    .line 199
    .restart local v0    # "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .restart local v5    # "method":Ljava/lang/reflect/Method;
    :cond_2
    const/4 v6, 0x0

    .restart local v6    # "shouldMute":Z
    goto :goto_0

    .line 207
    .end local v0    # "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v5    # "method":Ljava/lang/reflect/Method;
    .end local v6    # "shouldMute":Z
    :catch_0
    move-exception v4

    .line 208
    .local v4, "e":Ljava/lang/reflect/InvocationTargetException;
    invoke-virtual {v4}, Ljava/lang/reflect/InvocationTargetException;->printStackTrace()V

    goto :goto_1

    .line 205
    .end local v4    # "e":Ljava/lang/reflect/InvocationTargetException;
    :catch_1
    move-exception v1

    .line 206
    .local v1, "e":Ljava/lang/IllegalAccessException;
    invoke-virtual {v1}, Ljava/lang/IllegalAccessException;->printStackTrace()V

    goto :goto_1

    .line 203
    .end local v1    # "e":Ljava/lang/IllegalAccessException;
    :catch_2
    move-exception v2

    .line 204
    .local v2, "e":Ljava/lang/NoSuchMethodException;
    invoke-virtual {v2}, Ljava/lang/NoSuchMethodException;->printStackTrace()V

    goto :goto_1

    .line 201
    .end local v2    # "e":Ljava/lang/NoSuchMethodException;
    :catch_3
    move-exception v3

    .line 202
    .local v3, "e":Ljava/lang/UnsupportedOperationException;
    invoke-virtual {v3}, Ljava/lang/UnsupportedOperationException;->printStackTrace()V

    goto :goto_1
.end method

.method public static getRingerModeAffectedStreams(ILandroid/content/Context;)I
    .locals 2
    .param p0, "streams"    # I
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 172
    sget-boolean v0, Lmiui/os/Build;->IS_CTS_BUILD:Z

    if-nez v0, :cond_0

    sget-boolean v0, Landroid/provider/MiuiSettings$SilenceMode;->isSupported:Z

    if-eqz v0, :cond_0

    .line 175
    and-int/lit8 p0, p0, -0x25

    .line 179
    invoke-static {p1}, Landroid/provider/MiuiSettings$SilenceMode;->getZenMode(Landroid/content/Context;)I

    move-result v0

    .line 180
    const/4 v1, 0x3

    .line 179
    if-ne v0, v1, :cond_1

    .line 181
    and-int/lit8 p0, p0, -0x11

    .line 182
    or-int/lit8 p0, p0, 0x8

    .line 187
    :goto_0
    return p0

    .line 172
    :cond_0
    return p0

    .line 184
    :cond_1
    and-int/lit8 p0, p0, -0x19

    goto :goto_0
.end method

.method public static isOnlyAdjustVolume(I)Z
    .locals 2
    .param p0, "flags"    # I

    .prologue
    const/4 v0, 0x0

    .line 121
    const/high16 v1, 0x100000

    and-int/2addr v1, p0

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method public static isOnlyAdjustVolume(III)Z
    .locals 3
    .param p0, "flags"    # I
    .param p1, "stream"    # I
    .param p2, "mode"    # I

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 125
    const/high16 v2, 0x100000

    and-int/2addr v2, p0

    if-nez v2, :cond_1

    .line 126
    const/4 v2, 0x2

    if-ne p1, v2, :cond_0

    const/4 v2, 0x3

    if-ne p2, v2, :cond_0

    sget-boolean v2, Lmiui/os/Build;->IS_CTS_BUILD:Z

    if-eqz v2, :cond_2

    .line 125
    :cond_0
    :goto_0
    return v0

    :cond_1
    move v0, v1

    goto :goto_0

    :cond_2
    move v0, v1

    .line 126
    goto :goto_0
.end method

.method public static isPackageProtectedWhenUserBackground(ILandroid/content/pm/PackageInfo;)Z
    .locals 1
    .param p0, "userId"    # I
    .param p1, "pkg"    # Landroid/content/pm/PackageInfo;

    .prologue
    .line 156
    iget-object v0, p1, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-static {v0, p0}, Lcom/miui/whetstone/WhetstoneActivityManager;->checkIfPackageIsLocked(Ljava/lang/String;I)Z

    move-result v0

    return v0
.end method

.method public static setForceUseForRing(Landroid/content/Context;II)V
    .locals 5
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "dev"    # I
    .param p2, "forceUse"    # I

    .prologue
    const/16 v4, 0x8

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 160
    sget-boolean v3, Landroid/provider/MiuiSettings$SilenceMode;->isSupported:Z

    if-nez v3, :cond_0

    return-void

    .line 161
    :cond_0
    invoke-static {p0}, Landroid/provider/MiuiSettings$SilenceMode;->getZenMode(Landroid/content/Context;)I

    move-result v0

    .line 162
    .local v0, "mode":I
    if-ne v0, v1, :cond_1

    .line 163
    and-int/lit16 v3, p1, 0x8c

    if-eqz v3, :cond_1

    .line 164
    invoke-static {v4, p2}, Landroid/media/AudioSystem;->setForceUse(II)I

    .line 168
    :goto_0
    and-int/lit16 v3, p1, 0x8c

    if-eqz v3, :cond_2

    :goto_1
    invoke-static {v1, p0}, Landroid/app/ExtraNotificationManager;->updateRestriction(ZLandroid/content/Context;)V

    .line 159
    return-void

    .line 166
    :cond_1
    invoke-static {v4, v2}, Landroid/media/AudioSystem;->setForceUse(II)I

    goto :goto_0

    :cond_2
    move v1, v2

    .line 168
    goto :goto_1
.end method

.method public static setStreamVolumeIntAlt(Ljava/lang/Object;IIII[ILandroid/content/Context;)V
    .locals 16
    .param p0, "object"    # Ljava/lang/Object;
    .param p1, "streamType"    # I
    .param p2, "index"    # I
    .param p3, "device"    # I
    .param p4, "maxIndex"    # I
    .param p5, "streamVolumeAlias"    # [I
    .param p6, "context"    # Landroid/content/Context;

    .prologue
    .line 54
    :try_start_0
    invoke-static/range {p6 .. p6}, Lmiui/util/AudioManagerHelper;->isHiFiMode(Landroid/content/Context;)Z

    move-result v7

    .line 55
    .local v7, "isHiFiMode":Z
    const/4 v2, 0x0

    .line 56
    .local v2, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-virtual/range {p0 .. p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    .line 57
    .local v2, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const/4 v8, 0x0

    .line 58
    .local v8, "method":Ljava/lang/reflect/Method;
    sget v12, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v13, 0x17

    if-lt v12, v13, :cond_3

    .line 59
    if-eqz v2, :cond_0

    .line 60
    const-string/jumbo v12, "setStreamVolumeInt"

    const/4 v13, 0x5

    new-array v13, v13, [Ljava/lang/Class;

    sget-object v14, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const/4 v15, 0x0

    aput-object v14, v13, v15

    sget-object v14, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const/4 v15, 0x1

    aput-object v14, v13, v15

    sget-object v14, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const/4 v15, 0x2

    aput-object v14, v13, v15

    .line 61
    sget-object v14, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    const/4 v15, 0x3

    aput-object v14, v13, v15

    const-class v14, Ljava/lang/String;

    const/4 v15, 0x4

    aput-object v14, v13, v15

    .line 60
    invoke-virtual {v2, v12, v13}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v8

    .line 69
    .end local v8    # "method":Ljava/lang/reflect/Method;
    :cond_0
    :goto_0
    const/4 v12, 0x3

    move/from16 v0, p1

    if-ne v12, v0, :cond_5

    if-eqz v7, :cond_5

    move/from16 v0, p2

    move/from16 v1, p4

    if-lt v0, v1, :cond_5

    .line 70
    move/from16 v9, p4

    .line 71
    .local v9, "rawStreamMaxIndex":I
    if-eqz v8, :cond_1

    .line 72
    const/4 v12, 0x1

    invoke-virtual {v8, v12}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    .line 73
    sget v12, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v13, 0x17

    if-lt v12, v13, :cond_4

    .line 74
    const/4 v12, 0x5

    new-array v12, v12, [Ljava/lang/Object;

    aget v13, p5, p1

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    const/4 v14, 0x0

    aput-object v13, v12, v14

    invoke-static/range {p4 .. p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    const/4 v14, 0x1

    aput-object v13, v12, v14

    invoke-static/range {p3 .. p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    const/4 v14, 0x2

    aput-object v13, v12, v14

    const/4 v13, 0x0

    invoke-static {v13}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v13

    const/4 v14, 0x3

    aput-object v13, v12, v14

    const-string/jumbo v13, "AudioService"

    const/4 v14, 0x4

    aput-object v13, v12, v14

    move-object/from16 v0, p0

    invoke-virtual {v8, v0, v12}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 79
    :cond_1
    :goto_1
    add-int/lit8 v12, p4, 0x5

    div-int/lit8 v10, v12, 0xa

    .line 80
    .local v10, "streamMaxIndex":I
    sget v12, Landroid/media/AudioServiceInjector;->mOriginalIndexWhenSetStreamVolume:I

    sub-int/2addr v12, v10

    mul-int/lit8 v12, v12, 0xa

    move-object/from16 v0, p6

    invoke-static {v0, v12}, Lmiui/util/AudioManagerHelper;->setHiFiVolume(Landroid/content/Context;I)V

    .line 52
    .end local v2    # "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v7    # "isHiFiMode":Z
    .end local v9    # "rawStreamMaxIndex":I
    .end local v10    # "streamMaxIndex":I
    :cond_2
    :goto_2
    return-void

    .line 64
    .restart local v2    # "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .restart local v7    # "isHiFiMode":Z
    .restart local v8    # "method":Ljava/lang/reflect/Method;
    :cond_3
    if-eqz v2, :cond_0

    .line 65
    const-string/jumbo v12, "setStreamVolumeInt"

    const/4 v13, 0x4

    new-array v13, v13, [Ljava/lang/Class;

    sget-object v14, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const/4 v15, 0x0

    aput-object v14, v13, v15

    sget-object v14, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const/4 v15, 0x1

    aput-object v14, v13, v15

    sget-object v14, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const/4 v15, 0x2

    aput-object v14, v13, v15

    .line 66
    sget-object v14, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    const/4 v15, 0x3

    aput-object v14, v13, v15

    .line 65
    invoke-virtual {v2, v12, v13}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v8

    .local v8, "method":Ljava/lang/reflect/Method;
    goto :goto_0

    .line 76
    .end local v8    # "method":Ljava/lang/reflect/Method;
    .restart local v9    # "rawStreamMaxIndex":I
    :cond_4
    const/4 v12, 0x4

    new-array v12, v12, [Ljava/lang/Object;

    aget v13, p5, p1

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    const/4 v14, 0x0

    aput-object v13, v12, v14

    invoke-static/range {p4 .. p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    const/4 v14, 0x1

    aput-object v13, v12, v14

    invoke-static/range {p3 .. p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    const/4 v14, 0x2

    aput-object v13, v12, v14

    const/4 v13, 0x0

    invoke-static {v13}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v13

    const/4 v14, 0x3

    aput-object v13, v12, v14

    move-object/from16 v0, p0

    invoke-virtual {v8, v0, v12}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_3

    goto :goto_1

    .line 92
    .end local v2    # "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v7    # "isHiFiMode":Z
    .end local v9    # "rawStreamMaxIndex":I
    :catch_0
    move-exception v5

    .line 93
    .local v5, "e":Ljava/lang/UnsupportedOperationException;
    invoke-virtual {v5}, Ljava/lang/UnsupportedOperationException;->printStackTrace()V

    goto :goto_2

    .line 82
    .end local v5    # "e":Ljava/lang/UnsupportedOperationException;
    .restart local v2    # "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .restart local v7    # "isHiFiMode":Z
    :cond_5
    if-eqz v8, :cond_2

    .line 83
    const/4 v12, 0x1

    :try_start_1
    invoke-virtual {v8, v12}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    .line 84
    sget v12, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v13, 0x17

    if-lt v12, v13, :cond_6

    .line 85
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v13, "Pid:"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string/jumbo v13, " Uid:"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    .line 86
    .local v11, "tag":Ljava/lang/String;
    const/4 v12, 0x5

    new-array v12, v12, [Ljava/lang/Object;

    aget v13, p5, p1

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    const/4 v14, 0x0

    aput-object v13, v12, v14

    invoke-static/range {p2 .. p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    const/4 v14, 0x1

    aput-object v13, v12, v14

    invoke-static/range {p3 .. p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    const/4 v14, 0x2

    aput-object v13, v12, v14

    const/4 v13, 0x0

    invoke-static {v13}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v13

    const/4 v14, 0x3

    aput-object v13, v12, v14

    const/4 v13, 0x4

    aput-object v11, v12, v13

    move-object/from16 v0, p0

    invoke-virtual {v8, v0, v12}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_1 .. :try_end_1} :catch_3

    goto/16 :goto_2

    .line 94
    .end local v2    # "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v7    # "isHiFiMode":Z
    .end local v11    # "tag":Ljava/lang/String;
    :catch_1
    move-exception v4

    .line 95
    .local v4, "e":Ljava/lang/NoSuchMethodException;
    invoke-virtual {v4}, Ljava/lang/NoSuchMethodException;->printStackTrace()V

    goto/16 :goto_2

    .line 88
    .end local v4    # "e":Ljava/lang/NoSuchMethodException;
    .restart local v2    # "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .restart local v7    # "isHiFiMode":Z
    :cond_6
    const/4 v12, 0x4

    :try_start_2
    new-array v12, v12, [Ljava/lang/Object;

    aget v13, p5, p1

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    const/4 v14, 0x0

    aput-object v13, v12, v14

    invoke-static/range {p2 .. p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    const/4 v14, 0x1

    aput-object v13, v12, v14

    invoke-static/range {p3 .. p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    const/4 v14, 0x2

    aput-object v13, v12, v14

    const/4 v13, 0x0

    invoke-static {v13}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v13

    const/4 v14, 0x3

    aput-object v13, v12, v14

    move-object/from16 v0, p0

    invoke-virtual {v8, v0, v12}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_2
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_2 .. :try_end_2} :catch_3

    goto/16 :goto_2

    .line 96
    .end local v2    # "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v7    # "isHiFiMode":Z
    :catch_2
    move-exception v3

    .line 97
    .local v3, "e":Ljava/lang/IllegalAccessException;
    invoke-virtual {v3}, Ljava/lang/IllegalAccessException;->printStackTrace()V

    goto/16 :goto_2

    .line 98
    .end local v3    # "e":Ljava/lang/IllegalAccessException;
    :catch_3
    move-exception v6

    .line 99
    .local v6, "e":Ljava/lang/reflect/InvocationTargetException;
    invoke-virtual {v6}, Ljava/lang/reflect/InvocationTargetException;->printStackTrace()V

    goto/16 :goto_2
.end method

.method public static shouldAdjustHiFiVolume(IIIILandroid/content/Context;)Z
    .locals 7
    .param p0, "streamType"    # I
    .param p1, "direction"    # I
    .param p2, "streamIndex"    # I
    .param p3, "maxIndex"    # I
    .param p4, "context"    # Landroid/content/Context;

    .prologue
    const/4 v4, 0x1

    const/4 v6, 0x0

    .line 30
    const/4 v5, 0x3

    if-ne p0, v5, :cond_0

    invoke-static {p4}, Lmiui/util/AudioManagerHelper;->isHiFiMode(Landroid/content/Context;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 34
    invoke-static {p4}, Lmiui/util/AudioManagerHelper;->getHiFiVolume(Landroid/content/Context;)I

    move-result v2

    .line 35
    .local v2, "currentHiFiVolume":I
    move v3, p3

    .line 36
    .local v3, "maxStreamIndex":I
    const/4 v5, -0x1

    if-ne p1, v5, :cond_1

    if-lez v2, :cond_1

    const/4 v0, 0x1

    .line 37
    .local v0, "adjustDownHiFiVolume":Z
    :goto_0
    if-ne p1, v4, :cond_2

    if-ne p2, p3, :cond_2

    const/4 v1, 0x1

    .line 38
    .local v1, "adjustUpHiFiVolume":Z
    :goto_1
    if-nez v0, :cond_3

    .end local v1    # "adjustUpHiFiVolume":Z
    :goto_2
    return v1

    .line 31
    .end local v0    # "adjustDownHiFiVolume":Z
    .end local v2    # "currentHiFiVolume":I
    .end local v3    # "maxStreamIndex":I
    :cond_0
    return v6

    .line 36
    .restart local v2    # "currentHiFiVolume":I
    .restart local v3    # "maxStreamIndex":I
    :cond_1
    const/4 v0, 0x0

    .restart local v0    # "adjustDownHiFiVolume":Z
    goto :goto_0

    .line 37
    :cond_2
    const/4 v1, 0x0

    .restart local v1    # "adjustUpHiFiVolume":Z
    goto :goto_1

    :cond_3
    move v1, v4

    .line 38
    goto :goto_2
.end method

.method public static shouldCheckForRingerMode()Z
    .locals 1

    .prologue
    .line 152
    sget-boolean v0, Lmiui/os/Build;->IS_CTS_BUILD:Z

    return v0
.end method
