.class public Lcom/android/stk/MiuiStkUtils;
.super Ljava/lang/Object;
.source "MiuiStkUtils.java"


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static deviceIsProvisioned(Landroid/content/Context;)Z
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v0, 0x0

    .line 13
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v2, "device_provisioned"

    invoke-static {v1, v2, v0}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method public static getAppName(Landroid/content/Context;ILjava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p0, "c"    # Landroid/content/Context;
    .param p1, "slotId"    # I
    .param p2, "defaultName"    # Ljava/lang/String;

    .prologue
    .line 17
    invoke-static {}, Lmiui/telephony/TelephonyManager;->getDefault()Lmiui/telephony/TelephonyManager;

    move-result-object v1

    invoke-virtual {v1, p1}, Lmiui/telephony/TelephonyManager;->getSimOperatorForSlot(I)Ljava/lang/String;

    move-result-object v0

    .line 18
    .local v0, "numeric":Ljava/lang/String;
    invoke-static {v0}, Lmiui/telephony/ServiceProviderUtils;->isChinaUnicom(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 19
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f06001c

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 20
    :cond_0
    invoke-static {v0}, Lmiui/telephony/ServiceProviderUtils;->isChinaTelecom(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 21
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f06001d

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 23
    :cond_1
    return-object p2
.end method
