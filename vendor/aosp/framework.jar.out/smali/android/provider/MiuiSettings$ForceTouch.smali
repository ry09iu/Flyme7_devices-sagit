.class public final Landroid/provider/MiuiSettings$ForceTouch;
.super Ljava/lang/Object;
.source "MiuiSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/provider/MiuiSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "ForceTouch"
.end annotation


# static fields
.field private static final ForceTouchEnable:Ljava/lang/String; = "force_touch_enable"

.field private static mDeepPress:F

.field private static mLightPress:F

.field private static mSupportForceTouch:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/high16 v1, -0x40800000    # -1.0f

    .line 5099
    const/4 v0, -0x1

    sput v0, Landroid/provider/MiuiSettings$ForceTouch;->mSupportForceTouch:I

    .line 5100
    sput v1, Landroid/provider/MiuiSettings$ForceTouch;->mLightPress:F

    .line 5101
    sput v1, Landroid/provider/MiuiSettings$ForceTouch;->mDeepPress:F

    .line 5097
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 5097
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static checkHighend()V
    .locals 8

    .prologue
    .line 5146
    const-string/jumbo v1, "ro.product.device"

    const-string/jumbo v6, ""

    invoke-static {v1, v6}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 5147
    .local v0, "device":Ljava/lang/String;
    const-string/jumbo v1, "capricorn"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 5148
    invoke-static {}, Landroid/provider/MiuiSettings$ForceTouch;->getTotalInternalMemory()J

    move-result-wide v2

    .line 5149
    .local v2, "internalMemroyRom":J
    invoke-static {}, Lmiui/util/HardwareInfo;->getTotalPhysicalMemory()J

    move-result-wide v4

    .line 5150
    .local v4, "ram":J
    const-wide v6, 0x1dcd650000L

    cmp-long v1, v2, v6

    if-ltz v1, :cond_0

    const-wide v6, 0xee6b2800L

    cmp-long v1, v4, v6

    if-gez v1, :cond_1

    .line 5151
    :cond_0
    const/4 v1, 0x0

    sput v1, Landroid/provider/MiuiSettings$ForceTouch;->mSupportForceTouch:I

    .line 5145
    .end local v2    # "internalMemroyRom":J
    .end local v4    # "ram":J
    :cond_1
    return-void
.end method

.method public static getDeepPressure()F
    .locals 2

    .prologue
    .line 5139
    sget v0, Landroid/provider/MiuiSettings$ForceTouch;->mDeepPress:F

    const/4 v1, 0x0

    cmpg-float v0, v0, v1

    if-gez v0, :cond_0

    .line 5140
    const-string/jumbo v0, "force_touch_deep"

    const v1, 0x3f4ccccd    # 0.8f

    invoke-static {v0, v1}, Lmiui/util/FeatureParser;->getFloat(Ljava/lang/String;F)Ljava/lang/Float;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    sput v0, Landroid/provider/MiuiSettings$ForceTouch;->mDeepPress:F

    .line 5142
    :cond_0
    sget v0, Landroid/provider/MiuiSettings$ForceTouch;->mDeepPress:F

    return v0
.end method

.method public static getLightPressure()F
    .locals 2

    .prologue
    .line 5132
    sget v0, Landroid/provider/MiuiSettings$ForceTouch;->mLightPress:F

    const/4 v1, 0x0

    cmpg-float v0, v0, v1

    if-gez v0, :cond_0

    .line 5133
    const-string/jumbo v0, "force_touch_light"

    const v1, 0x3ecccccd    # 0.4f

    invoke-static {v0, v1}, Lmiui/util/FeatureParser;->getFloat(Ljava/lang/String;F)Ljava/lang/Float;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    sput v0, Landroid/provider/MiuiSettings$ForceTouch;->mLightPress:F

    .line 5135
    :cond_0
    sget v0, Landroid/provider/MiuiSettings$ForceTouch;->mLightPress:F

    return v0
.end method

.method private static getTotalInternalMemory()J
    .locals 16

    .prologue
    .line 5157
    const-wide/16 v8, 0x0

    .line 5158
    .local v8, "totalSize":J
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 5159
    .local v4, "pathList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/io/File;>;"
    invoke-static {}, Landroid/os/Environment;->getDataDirectory()Ljava/io/File;

    move-result-object v10

    invoke-virtual {v4, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 5161
    const-string/jumbo v10, "mixed"

    const-string/jumbo v11, "ro.boot.sdcard.type"

    const-string/jumbo v12, "mixed"

    invoke-static {v11, v12}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_1

    .line 5162
    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v5

    .line 5163
    .local v5, "state":Ljava/lang/String;
    const-string/jumbo v10, "mounted"

    invoke-virtual {v10, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_0

    .line 5164
    const-string/jumbo v10, "mounted_ro"

    invoke-virtual {v10, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    .line 5163
    if-eqz v10, :cond_1

    .line 5165
    :cond_0
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v10

    invoke-virtual {v4, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 5169
    .end local v5    # "state":Ljava/lang/String;
    :cond_1
    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "path$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/io/File;

    .line 5170
    .local v2, "path":Ljava/io/File;
    invoke-virtual {v2}, Ljava/io/File;->getTotalSpace()J

    move-result-wide v10

    add-long/2addr v8, v10

    goto :goto_0

    .line 5173
    .end local v2    # "path":Ljava/io/File;
    :cond_2
    move-wide v6, v8

    .line 5174
    .local v6, "totalInternalMemory":J
    const-wide/32 v0, 0xf4240

    .line 5176
    .local v0, "MB":J
    const-wide v10, 0x1dcd65000L

    cmp-long v10, v8, v10

    if-ltz v10, :cond_3

    .line 5177
    const-wide/high16 v10, 0x4000000000000000L    # 2.0

    .line 5175
    const-wide/32 v12, 0x3b9aca00

    .line 5177
    div-long v12, v6, v12

    long-to-double v12, v12

    invoke-static {v12, v13}, Ljava/lang/Math;->log(D)D

    move-result-wide v12

    const-wide/high16 v14, 0x4000000000000000L    # 2.0

    invoke-static {v14, v15}, Ljava/lang/Math;->log(D)D

    move-result-wide v14

    div-double/2addr v12, v14

    invoke-static {v12, v13}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v12

    invoke-static {v10, v11, v12, v13}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v10

    double-to-long v10, v10

    .line 5175
    const-wide/32 v12, 0x3b9aca00

    .line 5177
    mul-long v6, v10, v12

    .line 5181
    :goto_1
    return-wide v6

    .line 5175
    :cond_3
    const-wide/32 v10, 0x3b9aca00

    .line 5179
    div-long v10, v6, v10

    const-wide/16 v12, 0x1

    add-long/2addr v10, v12

    .line 5175
    const-wide/32 v12, 0x3b9aca00

    .line 5179
    mul-long v6, v10, v12

    goto :goto_1
.end method

.method public static isEnabled(Landroid/content/Context;)Z
    .locals 5
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 5114
    invoke-static {}, Landroid/provider/MiuiSettings$ForceTouch;->isSupport()Z

    move-result v4

    if-nez v4, :cond_0

    .line 5115
    return v3

    .line 5117
    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 5118
    .local v1, "resolver":Landroid/content/ContentResolver;
    const-string/jumbo v4, "force_touch_enable"

    invoke-static {v1, v4, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 5119
    .local v0, "enable":I
    if-eqz v0, :cond_1

    :goto_0
    return v2

    :cond_1
    move v2, v3

    goto :goto_0
.end method

.method public static isSupport()Z
    .locals 3

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 5104
    sget v0, Landroid/provider/MiuiSettings$ForceTouch;->mSupportForceTouch:I

    if-gez v0, :cond_0

    .line 5105
    const-string/jumbo v0, "support_force_touch"

    invoke-static {v0, v2}, Lmiui/util/FeatureParser;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_1

    move v0, v1

    :goto_0
    sput v0, Landroid/provider/MiuiSettings$ForceTouch;->mSupportForceTouch:I

    .line 5106
    sget v0, Landroid/provider/MiuiSettings$ForceTouch;->mSupportForceTouch:I

    if-ne v0, v1, :cond_0

    .line 5107
    invoke-static {}, Landroid/provider/MiuiSettings$ForceTouch;->checkHighend()V

    .line 5110
    :cond_0
    sget v0, Landroid/provider/MiuiSettings$ForceTouch;->mSupportForceTouch:I

    if-ne v0, v1, :cond_2

    :goto_1
    return v1

    :cond_1
    move v0, v2

    .line 5105
    goto :goto_0

    :cond_2
    move v1, v2

    .line 5110
    goto :goto_1
.end method

.method public static setEnabled(Landroid/content/Context;Z)Z
    .locals 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "value"    # Z

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 5123
    invoke-static {}, Landroid/provider/MiuiSettings$ForceTouch;->isSupport()Z

    move-result v3

    if-nez v3, :cond_0

    .line 5124
    return v1

    .line 5126
    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 5127
    .local v0, "resolver":Landroid/content/ContentResolver;
    const-string/jumbo v3, "force_touch_enable"

    if-eqz p1, :cond_1

    move v1, v2

    :cond_1
    invoke-static {v0, v3, v1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 5128
    return v2
.end method
