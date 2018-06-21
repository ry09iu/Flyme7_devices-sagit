.class public Lcom/android/internal/telephony/gsm/GsmMmiCodeInjector;
.super Ljava/lang/Object;
.source "GsmMmiCodeInjector.java"


# static fields
.field private static final SC_CNAP:Ljava/lang/String; = "300"

.field private static final SC_COLP:Ljava/lang/String; = "76"

.field private static final SC_COLR:Ljava/lang/String; = "77"

.field private static final TAG:Ljava/lang/String; = "GsmMmiCodeInjector"


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static isBlockedMmi(Lcom/android/internal/telephony/Phone;Ljava/lang/String;)Z
    .locals 9
    .param p0, "phone"    # Lcom/android/internal/telephony/Phone;
    .param p1, "dialString"    # Ljava/lang/String;

    .prologue
    const/4 v7, 0x1

    .line 24
    const/4 v0, 0x0

    .line 25
    .local v0, "bIsBlockedMmi":Z
    invoke-virtual {p0}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v6

    if-ne v6, v7, :cond_0

    instance-of v6, p0, Lcom/android/internal/telephony/GsmCdmaPhone;

    if-eqz v6, :cond_0

    .line 27
    invoke-virtual {p0}, Lcom/android/internal/telephony/Phone;->getPhoneId()I

    move-result v5

    .line 28
    .local v5, "slot":I
    invoke-static {}, Lcom/android/internal/telephony/uicc/UiccController;->getInstance()Lcom/android/internal/telephony/uicc/UiccController;

    move-result-object v6

    invoke-virtual {v6, v5, v7}, Lcom/android/internal/telephony/uicc/UiccController;->getUiccCardApplication(II)Lcom/android/internal/telephony/uicc/UiccCardApplication;

    move-result-object v1

    .line 30
    .local v1, "cardApp":Lcom/android/internal/telephony/uicc/UiccCardApplication;
    invoke-static {p1}, Landroid/telephony/PhoneNumberUtils;->stripSeparators(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 31
    .local v4, "newDialString":Ljava/lang/String;
    invoke-static {v4}, Landroid/telephony/PhoneNumberUtils;->extractNetworkPortionAlt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 33
    .local v3, "networkPortion":Ljava/lang/String;
    check-cast p0, Lcom/android/internal/telephony/GsmCdmaPhone;

    .line 32
    .end local p0    # "phone":Lcom/android/internal/telephony/Phone;
    invoke-static {v3, p0, v1}, Lcom/android/internal/telephony/gsm/GsmMmiCode;->newFromDialString(Ljava/lang/String;Lcom/android/internal/telephony/GsmCdmaPhone;Lcom/android/internal/telephony/uicc/UiccCardApplication;)Lcom/android/internal/telephony/gsm/GsmMmiCode;

    move-result-object v2

    .line 35
    .local v2, "mmi":Lcom/android/internal/telephony/gsm/GsmMmiCode;
    if-eqz v2, :cond_0

    invoke-virtual {v2}, Lcom/android/internal/telephony/gsm/GsmMmiCode;->isTemporaryModeCLIR()Z

    move-result v6

    if-eqz v6, :cond_1

    .line 49
    .end local v1    # "cardApp":Lcom/android/internal/telephony/uicc/UiccCardApplication;
    .end local v2    # "mmi":Lcom/android/internal/telephony/gsm/GsmMmiCode;
    .end local v3    # "networkPortion":Ljava/lang/String;
    .end local v4    # "newDialString":Ljava/lang/String;
    .end local v5    # "slot":I
    :cond_0
    :goto_0
    const-string/jumbo v6, "GsmMmiCodeInjector"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "isBlockedMmi result="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 50
    return v0

    .line 36
    .restart local v1    # "cardApp":Lcom/android/internal/telephony/uicc/UiccCardApplication;
    .restart local v2    # "mmi":Lcom/android/internal/telephony/gsm/GsmMmiCode;
    .restart local v3    # "networkPortion":Ljava/lang/String;
    .restart local v4    # "newDialString":Ljava/lang/String;
    .restart local v5    # "slot":I
    :cond_1
    iget-object v6, v2, Lcom/android/internal/telephony/gsm/GsmMmiCode;->mSc:Ljava/lang/String;

    if-eqz v6, :cond_0

    iget-object v6, v2, Lcom/android/internal/telephony/gsm/GsmMmiCode;->mSc:Ljava/lang/String;

    const-string/jumbo v7, "300"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_2

    .line 37
    iget-object v6, v2, Lcom/android/internal/telephony/gsm/GsmMmiCode;->mSc:Ljava/lang/String;

    const-string/jumbo v7, "30"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    .line 36
    if-nez v6, :cond_2

    .line 38
    iget-object v6, v2, Lcom/android/internal/telephony/gsm/GsmMmiCode;->mSc:Ljava/lang/String;

    const-string/jumbo v7, "31"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    .line 36
    if-nez v6, :cond_2

    .line 39
    iget-object v6, v2, Lcom/android/internal/telephony/gsm/GsmMmiCode;->mSc:Ljava/lang/String;

    const-string/jumbo v7, "76"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    .line 36
    if-nez v6, :cond_2

    .line 40
    iget-object v6, v2, Lcom/android/internal/telephony/gsm/GsmMmiCode;->mSc:Ljava/lang/String;

    const-string/jumbo v7, "77"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    .line 36
    if-nez v6, :cond_2

    .line 41
    iget-object v6, v2, Lcom/android/internal/telephony/gsm/GsmMmiCode;->mSc:Ljava/lang/String;

    invoke-static {v6}, Lcom/android/internal/telephony/gsm/GsmMmiCode;->isServiceCodeCallForwarding(Ljava/lang/String;)Z

    move-result v6

    .line 36
    if-nez v6, :cond_2

    .line 42
    iget-object v6, v2, Lcom/android/internal/telephony/gsm/GsmMmiCode;->mSc:Ljava/lang/String;

    invoke-static {v6}, Lcom/android/internal/telephony/gsm/GsmMmiCode;->isServiceCodeCallBarring(Ljava/lang/String;)Z

    move-result v6

    .line 36
    if-nez v6, :cond_2

    .line 43
    iget-object v6, v2, Lcom/android/internal/telephony/gsm/GsmMmiCode;->mSc:Ljava/lang/String;

    const-string/jumbo v7, "03"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    .line 36
    if-nez v6, :cond_2

    .line 44
    iget-object v6, v2, Lcom/android/internal/telephony/gsm/GsmMmiCode;->mSc:Ljava/lang/String;

    const-string/jumbo v7, "43"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    .line 36
    if-nez v6, :cond_2

    .line 45
    invoke-virtual {v2}, Lcom/android/internal/telephony/gsm/GsmMmiCode;->isPinPukCommand()Z

    move-result v6

    .line 35
    if-eqz v6, :cond_0

    .line 46
    :cond_2
    const/4 v0, 0x1

    goto/16 :goto_0
.end method
