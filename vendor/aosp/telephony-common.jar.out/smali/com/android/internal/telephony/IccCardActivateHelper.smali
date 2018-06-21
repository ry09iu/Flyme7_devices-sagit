.class public Lcom/android/internal/telephony/IccCardActivateHelper;
.super Ljava/lang/Object;
.source "IccCardActivateHelper.java"


# static fields
.field private static final ACTIVATE_STATUS:I = 0x1

.field private static final DEACTIVATED_STATUS:I = 0x0

.field private static final LOG_TAG:Ljava/lang/String; = "IccCardActivateHelper"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static getExtTelephony()Lorg/codeaurora/internal/IExtTelephony;
    .locals 1

    .prologue
    .line 44
    const-string/jumbo v0, "extphone"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lorg/codeaurora/internal/IExtTelephony$Stub;->asInterface(Landroid/os/IBinder;)Lorg/codeaurora/internal/IExtTelephony;

    move-result-object v0

    return-object v0
.end method

.method public static isActivate(I)Z
    .locals 5
    .param p0, "slotId"    # I

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 19
    invoke-static {}, Lcom/android/internal/telephony/PhoneFactory;->getDefaultPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Landroid/provider/MiuiSettings$VirtualSim;->isVirtualSimEnabled(Landroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 20
    invoke-static {}, Lcom/android/internal/telephony/PhoneFactory;->getDefaultPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Landroid/provider/MiuiSettings$VirtualSim;->getVirtualSimSlotId(Landroid/content/Context;)I

    move-result v3

    if-ne p0, v3, :cond_0

    .line 21
    return v1

    .line 24
    :cond_0
    :try_start_0
    invoke-static {}, Lcom/android/internal/telephony/IccCardActivateHelper;->getExtTelephony()Lorg/codeaurora/internal/IExtTelephony;

    move-result-object v3

    invoke-interface {v3, p0}, Lorg/codeaurora/internal/IExtTelephony;->getUiccCardProvisioningUserPreference(I)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    if-eqz v3, :cond_1

    :goto_0
    return v1

    :cond_1
    move v1, v2

    goto :goto_0

    .line 25
    :catch_0
    move-exception v0

    .line 26
    .local v0, "e":Ljava/lang/Exception;
    const-string/jumbo v2, "IccCardActivateHelper"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Failed to get activated state for slot"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v0}, Landroid/telephony/Rlog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 28
    return v1
.end method

.method public static setIccCardActivate(IZ)V
    .locals 4
    .param p0, "slotId"    # I
    .param p1, "isActivate"    # Z

    .prologue
    .line 33
    if-eqz p1, :cond_0

    .line 34
    :try_start_0
    invoke-static {}, Lcom/android/internal/telephony/IccCardActivateHelper;->getExtTelephony()Lorg/codeaurora/internal/IExtTelephony;

    move-result-object v1

    invoke-interface {v1, p0}, Lorg/codeaurora/internal/IExtTelephony;->activateUiccCard(I)I

    .line 31
    :goto_0
    return-void

    .line 36
    :cond_0
    invoke-static {}, Lcom/android/internal/telephony/IccCardActivateHelper;->getExtTelephony()Lorg/codeaurora/internal/IExtTelephony;

    move-result-object v1

    invoke-interface {v1, p0}, Lorg/codeaurora/internal/IExtTelephony;->deactivateUiccCard(I)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 38
    :catch_0
    move-exception v0

    .line 39
    .local v0, "e":Ljava/lang/Exception;
    const-string/jumbo v1, "IccCardActivateHelper"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "setIccCardActivate of slot "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " as "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/telephony/Rlog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method
