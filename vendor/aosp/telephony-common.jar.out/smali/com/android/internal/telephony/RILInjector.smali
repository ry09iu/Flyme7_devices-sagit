.class public Lcom/android/internal/telephony/RILInjector;
.super Ljava/lang/Object;
.source "RILInjector.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/telephony/RILInjector$ScreenStateListener;
    }
.end annotation


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "RILInjector"

.field private static mScreenStateListeners:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/internal/telephony/RILInjector$ScreenStateListener;",
            ">;"
        }
    .end annotation
.end field

.field public static sIsScreenOn:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 22
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/android/internal/telephony/RILInjector;->mScreenStateListeners:Ljava/util/ArrayList;

    .line 23
    const/4 v0, 0x1

    sput-boolean v0, Lcom/android/internal/telephony/RILInjector;->sIsScreenOn:Z

    .line 19
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method protected static handlePii(I[Ljava/lang/String;)[Ljava/lang/String;
    .locals 8
    .param p0, "request"    # I
    .param p1, "strings"    # [Ljava/lang/String;

    .prologue
    const/4 v7, 0x1

    const/16 v6, 0x8

    const/4 v5, 0x6

    const/16 v4, 0x9

    const/4 v3, 0x0

    .line 69
    sget-boolean v1, Lmiui/telephony/PhoneDebug;->VDBG:Z

    if-nez v1, :cond_0

    if-nez p1, :cond_1

    .line 70
    :cond_0
    return-object p1

    .line 73
    :cond_1
    const/16 v1, 0x14

    if-eq p0, v1, :cond_2

    .line 74
    const/16 v1, 0x15

    if-ne p0, v1, :cond_e

    .line 75
    :cond_2
    array-length v1, p1

    const/4 v2, 0x3

    if-lt v1, v2, :cond_13

    .line 76
    array-length v1, p1

    new-array v0, v1, [Ljava/lang/String;

    .line 77
    .local v0, "clone":[Ljava/lang/String;
    array-length v1, p1

    invoke-static {p1, v3, v0, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 79
    aget-object v1, v0, v7

    invoke-static {v1}, Lcom/android/internal/telephony/RILInjector;->hidePartialChars(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v7

    .line 82
    const/4 v1, 0x2

    aget-object v1, v0, v1

    invoke-static {v1}, Lcom/android/internal/telephony/RILInjector;->hidePartialChars(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x2

    aput-object v1, v0, v2

    .line 84
    const/16 v1, 0x14

    if-ne p0, v1, :cond_9

    .line 86
    array-length v1, p1

    const/4 v2, 0x5

    if-lt v1, v2, :cond_3

    .line 87
    const/4 v1, 0x4

    aget-object v1, v0, v1

    invoke-static {v1}, Lcom/android/internal/telephony/RILInjector;->hidePartialChars(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x4

    aput-object v1, v0, v2

    .line 90
    :cond_3
    array-length v1, p1

    if-lt v1, v5, :cond_4

    .line 91
    const/4 v1, 0x5

    aget-object v1, v0, v1

    invoke-static {v1}, Lcom/android/internal/telephony/RILInjector;->hidePartialChars(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x5

    aput-object v1, v0, v2

    .line 94
    :cond_4
    array-length v1, p1

    const/4 v2, 0x7

    if-lt v1, v2, :cond_5

    .line 95
    aget-object v1, v0, v5

    invoke-static {v1}, Lcom/android/internal/telephony/RILInjector;->hidePartialChars(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v5

    .line 98
    :cond_5
    array-length v1, p1

    if-lt v1, v4, :cond_6

    .line 99
    aget-object v1, v0, v6

    invoke-static {v1}, Lcom/android/internal/telephony/RILInjector;->hidePartialChars(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v6

    .line 102
    :cond_6
    array-length v1, p1

    const/16 v2, 0xa

    if-lt v1, v2, :cond_7

    .line 103
    aget-object v1, v0, v4

    invoke-static {v1}, Lcom/android/internal/telephony/RILInjector;->hidePartialChars(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v4

    .line 106
    :cond_7
    array-length v1, p1

    const/16 v2, 0xf

    if-lt v1, v2, :cond_8

    .line 107
    const/16 v1, 0xe

    aget-object v1, v0, v1

    invoke-static {v1}, Lcom/android/internal/telephony/RILInjector;->hidePartialChars(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0xe

    aput-object v1, v0, v2

    .line 131
    :cond_8
    :goto_0
    return-object v0

    .line 109
    :cond_9
    const/16 v1, 0x15

    if-ne p0, v1, :cond_8

    .line 111
    array-length v1, p1

    const/4 v2, 0x7

    if-lt v1, v2, :cond_a

    .line 112
    aget-object v1, v0, v5

    invoke-static {v1}, Lcom/android/internal/telephony/RILInjector;->hidePartialChars(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v5

    .line 115
    :cond_a
    array-length v1, p1

    if-lt v1, v6, :cond_b

    .line 116
    const/4 v1, 0x7

    aget-object v1, v0, v1

    invoke-static {v1}, Lcom/android/internal/telephony/RILInjector;->hidePartialChars(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x7

    aput-object v1, v0, v2

    .line 119
    :cond_b
    array-length v1, p1

    if-lt v1, v4, :cond_c

    .line 120
    aget-object v1, v0, v6

    invoke-static {v1}, Lcom/android/internal/telephony/RILInjector;->hidePartialChars(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v6

    .line 123
    :cond_c
    array-length v1, p1

    const/16 v2, 0xa

    if-lt v1, v2, :cond_d

    .line 124
    aget-object v1, v0, v4

    invoke-static {v1}, Lcom/android/internal/telephony/RILInjector;->hidePartialChars(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v4

    .line 127
    :cond_d
    array-length v1, p1

    const/16 v2, 0xb

    if-lt v1, v2, :cond_8

    .line 128
    const/16 v1, 0xa

    aget-object v1, v0, v1

    invoke-static {v1}, Lcom/android/internal/telephony/RILInjector;->hidePartialChars(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0xa

    aput-object v1, v0, v2

    goto :goto_0

    .line 133
    .end local v0    # "clone":[Ljava/lang/String;
    :cond_e
    const/16 v1, 0x5f

    if-ne p0, v1, :cond_13

    .line 134
    array-length v1, p1

    new-array v0, v1, [Ljava/lang/String;

    .line 135
    .restart local v0    # "clone":[Ljava/lang/String;
    array-length v1, p1

    invoke-static {p1, v3, v0, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 137
    array-length v1, p1

    if-lt v1, v7, :cond_f

    .line 138
    aget-object v1, v0, v3

    invoke-static {v1}, Lmiui/telephony/TelephonyUtils;->pii(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v3

    .line 141
    :cond_f
    array-length v1, p1

    const/4 v2, 0x2

    if-lt v1, v2, :cond_10

    .line 142
    const-string/jumbo v1, "*"

    aput-object v1, v0, v7

    .line 145
    :cond_10
    array-length v1, p1

    const/4 v2, 0x3

    if-lt v1, v2, :cond_11

    .line 146
    const-string/jumbo v1, "*"

    const/4 v2, 0x2

    aput-object v1, v0, v2

    .line 149
    :cond_11
    array-length v1, p1

    const/4 v2, 0x4

    if-lt v1, v2, :cond_12

    .line 150
    const/4 v1, 0x3

    aget-object v1, v0, v1

    invoke-static {v1}, Lmiui/telephony/TelephonyUtils;->pii(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x3

    aput-object v1, v0, v2

    .line 152
    :cond_12
    return-object v0

    .line 154
    .end local v0    # "clone":[Ljava/lang/String;
    :cond_13
    return-object p1
.end method

.method private static hidePartialChars(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p0, "s"    # Ljava/lang/String;

    .prologue
    .line 158
    if-eqz p0, :cond_2

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_2

    .line 159
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 160
    .local v1, "sb":Ljava/lang/StringBuilder;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    if-ge v0, v2, :cond_1

    .line 161
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    if-ge v0, v2, :cond_0

    .line 162
    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 160
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 164
    :cond_0
    const-string/jumbo v2, "*"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 167
    :cond_1
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2

    .line 169
    .end local v0    # "i":I
    .end local v1    # "sb":Ljava/lang/StringBuilder;
    :cond_2
    return-object p0
.end method

.method public static notifyScreenStateListeners(Z)V
    .locals 3
    .param p0, "on"    # Z

    .prologue
    .line 38
    sput-boolean p0, Lcom/android/internal/telephony/RILInjector;->sIsScreenOn:Z

    .line 39
    sget-object v2, Lcom/android/internal/telephony/RILInjector;->mScreenStateListeners:Ljava/util/ArrayList;

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "listener$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/RILInjector$ScreenStateListener;

    .line 40
    .local v0, "listener":Lcom/android/internal/telephony/RILInjector$ScreenStateListener;
    invoke-virtual {v0, p0}, Lcom/android/internal/telephony/RILInjector$ScreenStateListener;->onScreenStateChange(Z)V

    goto :goto_0

    .line 37
    .end local v0    # "listener":Lcom/android/internal/telephony/RILInjector$ScreenStateListener;
    :cond_0
    return-void
.end method

.method public static processForCustSingleSimDevice(Lcom/android/internal/telephony/uicc/IccCardStatus;Ljava/lang/Integer;)V
    .locals 3
    .param p0, "status"    # Lcom/android/internal/telephony/uicc/IccCardStatus;
    .param p1, "index"    # Ljava/lang/Integer;

    .prologue
    const/4 v2, -0x1

    .line 45
    if-eqz p0, :cond_0

    if-nez p1, :cond_1

    .line 46
    :cond_0
    return-void

    .line 45
    :cond_1
    invoke-static {}, Lmiui/telephony/TelephonyManager;->isCustSingleSimDevice()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 48
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_2

    iget-object v0, p0, Lcom/android/internal/telephony/uicc/IccCardStatus;->mCardState:Lcom/android/internal/telephony/uicc/IccCardStatus$CardState;

    sget-object v1, Lcom/android/internal/telephony/uicc/IccCardStatus$CardState;->CARDSTATE_ABSENT:Lcom/android/internal/telephony/uicc/IccCardStatus$CardState;

    if-eq v0, v1, :cond_2

    .line 50
    sget-object v0, Lcom/android/internal/telephony/uicc/IccCardStatus$CardState;->CARDSTATE_ABSENT:Lcom/android/internal/telephony/uicc/IccCardStatus$CardState;

    invoke-virtual {v0}, Lcom/android/internal/telephony/uicc/IccCardStatus$CardState;->ordinal()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/uicc/IccCardStatus;->setCardState(I)V

    .line 51
    sget-object v0, Lcom/android/internal/telephony/uicc/IccCardStatus$PinState;->PINSTATE_UNKNOWN:Lcom/android/internal/telephony/uicc/IccCardStatus$PinState;

    invoke-virtual {v0}, Lcom/android/internal/telephony/uicc/IccCardStatus$PinState;->ordinal()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/uicc/IccCardStatus;->setUniversalPinState(I)V

    .line 52
    iput v2, p0, Lcom/android/internal/telephony/uicc/IccCardStatus;->mGsmUmtsSubscriptionAppIndex:I

    .line 53
    iput v2, p0, Lcom/android/internal/telephony/uicc/IccCardStatus;->mCdmaSubscriptionAppIndex:I

    .line 54
    iput v2, p0, Lcom/android/internal/telephony/uicc/IccCardStatus;->mImsSubscriptionAppIndex:I

    .line 55
    const/4 v0, 0x0

    new-array v0, v0, [Lcom/android/internal/telephony/uicc/IccCardApplicationStatus;

    iput-object v0, p0, Lcom/android/internal/telephony/uicc/IccCardStatus;->mApplications:[Lcom/android/internal/telephony/uicc/IccCardApplicationStatus;

    .line 44
    :cond_2
    return-void
.end method

.method public static registerScreenStateListener(Lcom/android/internal/telephony/RILInjector$ScreenStateListener;)V
    .locals 1
    .param p0, "listener"    # Lcom/android/internal/telephony/RILInjector$ScreenStateListener;

    .prologue
    .line 30
    sget-object v0, Lcom/android/internal/telephony/RILInjector;->mScreenStateListeners:Ljava/util/ArrayList;

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 29
    return-void
.end method

.method public static unregisterScreenStateListener(Lcom/android/internal/telephony/RILInjector$ScreenStateListener;)V
    .locals 1
    .param p0, "listener"    # Lcom/android/internal/telephony/RILInjector$ScreenStateListener;

    .prologue
    .line 34
    sget-object v0, Lcom/android/internal/telephony/RILInjector;->mScreenStateListeners:Ljava/util/ArrayList;

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 33
    return-void
.end method
