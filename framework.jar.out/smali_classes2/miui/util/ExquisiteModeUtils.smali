.class public Lmiui/util/ExquisiteModeUtils;
.super Ljava/lang/Object;
.source "ExquisiteModeUtils.java"


# static fields
.field public static final DEFAULT_EXQUISITE_SCALE_VALUE:F

.field public static final DEFAULT_MIUI_SCALE_VALUE:F = 1.0f

.field public static final MIUI_SCALE_FIELD_NAME:Ljava/lang/String; = "miuiScale"

.field public static final SUPPORT_EXQUISITE_MODE:Z


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v1, 0x0

    const/high16 v4, 0x3f800000    # 1.0f

    const/4 v0, 0x1

    .line 12
    const-string/jumbo v2, "exquisite_mode_target_density"

    invoke-static {v2, v0}, Lmiui/util/FeatureParser;->getInteger(Ljava/lang/String;I)I

    move-result v2

    int-to-float v2, v2

    .line 11
    mul-float/2addr v2, v4

    .line 13
    const-string/jumbo v3, "exquisite_mode_origin_density"

    invoke-static {v3, v0}, Lmiui/util/FeatureParser;->getInteger(Ljava/lang/String;I)I

    move-result v3

    int-to-float v3, v3

    .line 11
    div-float/2addr v2, v3

    sput v2, Lmiui/util/ExquisiteModeUtils;->DEFAULT_EXQUISITE_SCALE_VALUE:F

    .line 15
    sget-boolean v2, Lmiui/os/Build;->IS_CTS_BUILD:Z

    if-nez v2, :cond_1

    .line 16
    sget v2, Lmiui/util/ExquisiteModeUtils;->DEFAULT_EXQUISITE_SCALE_VALUE:F

    cmpl-float v2, v2, v4

    if-eqz v2, :cond_0

    .line 15
    :goto_0
    sput-boolean v0, Lmiui/util/ExquisiteModeUtils;->SUPPORT_EXQUISITE_MODE:Z

    .line 8
    return-void

    :cond_0
    move v0, v1

    .line 16
    goto :goto_0

    :cond_1
    move v0, v1

    .line 15
    goto :goto_0
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
