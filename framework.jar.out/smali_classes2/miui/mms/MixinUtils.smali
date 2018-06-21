.class public Lmiui/mms/MixinUtils;
.super Ljava/lang/Object;
.source "MixinUtils.java"


# static fields
.field private static final PK_MCC:Ljava/lang/String; = "410"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static isMxSupported()Z
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 20
    sget-boolean v2, Lmiui/os/Build;->IS_CM_CUSTOMIZATION:Z

    if-nez v2, :cond_0

    sget-boolean v2, Lmiui/os/Build;->IS_TABLET:Z

    if-eqz v2, :cond_1

    .line 21
    :cond_0
    return v3

    .line 24
    :cond_1
    sget-boolean v2, Lmiui/os/Build;->IS_INTERNATIONAL_BUILD:Z

    if-nez v2, :cond_2

    .line 25
    return v4

    .line 28
    :cond_2
    invoke-static {}, Lmiui/telephony/TelephonyManager;->getDefault()Lmiui/telephony/TelephonyManager;

    move-result-object v2

    invoke-virtual {v2}, Lmiui/telephony/TelephonyManager;->getPhoneCount()I

    move-result v1

    .line 29
    .local v1, "simCount":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v1, :cond_4

    .line 30
    invoke-static {}, Lmiui/telephony/TelephonyManager;->getDefault()Lmiui/telephony/TelephonyManager;

    move-result-object v2

    invoke-virtual {v2, v0}, Lmiui/telephony/TelephonyManager;->hasIccCard(I)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 31
    const-string/jumbo v2, "410"

    invoke-static {v0, v2}, Lmiui/mms/MixinUtils;->matchImsi(ILjava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 32
    return v3

    .line 29
    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 37
    :cond_4
    return v4
.end method

.method public static isMxSupported(I)Z
    .locals 3
    .param p0, "slotId"    # I

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x1

    .line 15
    sget-boolean v2, Lmiui/os/Build;->IS_CM_CUSTOMIZATION:Z

    if-nez v2, :cond_1

    sget-boolean v2, Lmiui/os/Build;->IS_TABLET:Z

    :goto_0
    if-nez v2, :cond_2

    .line 16
    sget-boolean v2, Lmiui/os/Build;->IS_INTERNATIONAL_BUILD:Z

    if-eqz v2, :cond_0

    const-string/jumbo v2, "410"

    invoke-static {p0, v2}, Lmiui/mms/MixinUtils;->matchImsi(ILjava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    move v0, v1

    .line 15
    :cond_0
    :goto_1
    return v0

    :cond_1
    move v2, v0

    goto :goto_0

    :cond_2
    move v0, v1

    goto :goto_1
.end method

.method private static matchImsi(ILjava/lang/String;)Z
    .locals 2
    .param p0, "slotId"    # I
    .param p1, "mcc"    # Ljava/lang/String;

    .prologue
    .line 10
    invoke-static {}, Lmiui/telephony/TelephonyManager;->getDefault()Lmiui/telephony/TelephonyManager;

    move-result-object v1

    invoke-virtual {v1, p0}, Lmiui/telephony/TelephonyManager;->getNetworkOperatorForSlot(I)Ljava/lang/String;

    move-result-object v0

    .line 11
    .local v0, "imsi":Ljava/lang/String;
    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method
