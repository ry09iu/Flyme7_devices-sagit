.class public Lcom/android/stk/StkAppService;
.super Landroid/app/Service;
.source "StkAppService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/stk/StkAppService$1;,
        Lcom/android/stk/StkAppService$DelayedCmd;,
        Lcom/android/stk/StkAppService$InitiatedByUserAction;,
        Lcom/android/stk/StkAppService$ServiceHandler;,
        Lcom/android/stk/StkAppService$StkContext;
    }
.end annotation


# static fields
.field private static final synthetic -com-android-internal-telephony-cat-AppInterface$CommandTypeSwitchesValues:[I

.field private static final synthetic -com-android-internal-telephony-cat-LaunchBrowserModeSwitchesValues:[I

.field private static final LOG_TAG:Ljava/lang/String;

.field static sInstance:Lcom/android/stk/StkAppService;


# instance fields
.field private mContext:Landroid/content/Context;

.field private mNotificationManager:Landroid/app/NotificationManager;

.field private mPowerManager:Landroid/os/PowerManager;

.field private volatile mServiceHandler:Lcom/android/stk/StkAppService$ServiceHandler;

.field private volatile mServiceLooper:Landroid/os/Looper;

.field private mSimCount:I

.field private mStkCmdReceiver:Lcom/android/stk/StkCmdReceiver;

.field private mStkContext:[Lcom/android/stk/StkAppService$StkContext;

.field private mStkService:[Lcom/android/internal/telephony/cat/AppInterface;

.field private mTonePlayer:Lcom/android/stk/TonePlayer;

.field private mVibrator:Landroid/os/Vibrator;


# direct methods
.method static synthetic -get0()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/android/stk/StkAppService;->LOG_TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic -get1(Lcom/android/stk/StkAppService;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/android/stk/StkAppService;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic -get2(Lcom/android/stk/StkAppService;)Landroid/app/NotificationManager;
    .locals 1

    iget-object v0, p0, Lcom/android/stk/StkAppService;->mNotificationManager:Landroid/app/NotificationManager;

    return-object v0
.end method

.method static synthetic -get3(Lcom/android/stk/StkAppService;)Lcom/android/stk/StkAppService$ServiceHandler;
    .locals 1

    iget-object v0, p0, Lcom/android/stk/StkAppService;->mServiceHandler:Lcom/android/stk/StkAppService$ServiceHandler;

    return-object v0
.end method

.method static synthetic -get4(Lcom/android/stk/StkAppService;)I
    .locals 1

    iget v0, p0, Lcom/android/stk/StkAppService;->mSimCount:I

    return v0
.end method

.method static synthetic -get5(Lcom/android/stk/StkAppService;)[Lcom/android/stk/StkAppService$StkContext;
    .locals 1

    iget-object v0, p0, Lcom/android/stk/StkAppService;->mStkContext:[Lcom/android/stk/StkAppService$StkContext;

    return-object v0
.end method

.method static synthetic -get6(Lcom/android/stk/StkAppService;)[Lcom/android/internal/telephony/cat/AppInterface;
    .locals 1

    iget-object v0, p0, Lcom/android/stk/StkAppService;->mStkService:[Lcom/android/internal/telephony/cat/AppInterface;

    return-object v0
.end method

.method private static synthetic -getcom-android-internal-telephony-cat-AppInterface$CommandTypeSwitchesValues()[I
    .locals 3

    sget-object v0, Lcom/android/stk/StkAppService;->-com-android-internal-telephony-cat-AppInterface$CommandTypeSwitchesValues:[I

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/stk/StkAppService;->-com-android-internal-telephony-cat-AppInterface$CommandTypeSwitchesValues:[I

    return-object v0

    :cond_0
    invoke-static {}, Lcom/android/internal/telephony/cat/AppInterface$CommandType;->values()[Lcom/android/internal/telephony/cat/AppInterface$CommandType;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    :try_start_0
    sget-object v1, Lcom/android/internal/telephony/cat/AppInterface$CommandType;->ACTIVATE:Lcom/android/internal/telephony/cat/AppInterface$CommandType;

    invoke-virtual {v1}, Lcom/android/internal/telephony/cat/AppInterface$CommandType;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_15

    :goto_0
    :try_start_1
    sget-object v1, Lcom/android/internal/telephony/cat/AppInterface$CommandType;->CLOSE_CHANNEL:Lcom/android/internal/telephony/cat/AppInterface$CommandType;

    invoke-virtual {v1}, Lcom/android/internal/telephony/cat/AppInterface$CommandType;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_14

    :goto_1
    :try_start_2
    sget-object v1, Lcom/android/internal/telephony/cat/AppInterface$CommandType;->DISPLAY_TEXT:Lcom/android/internal/telephony/cat/AppInterface$CommandType;

    invoke-virtual {v1}, Lcom/android/internal/telephony/cat/AppInterface$CommandType;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_13

    :goto_2
    :try_start_3
    sget-object v1, Lcom/android/internal/telephony/cat/AppInterface$CommandType;->GET_CHANNEL_STATUS:Lcom/android/internal/telephony/cat/AppInterface$CommandType;

    invoke-virtual {v1}, Lcom/android/internal/telephony/cat/AppInterface$CommandType;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3 .. :try_end_3} :catch_12

    :goto_3
    :try_start_4
    sget-object v1, Lcom/android/internal/telephony/cat/AppInterface$CommandType;->GET_INKEY:Lcom/android/internal/telephony/cat/AppInterface$CommandType;

    invoke-virtual {v1}, Lcom/android/internal/telephony/cat/AppInterface$CommandType;->ordinal()I

    move-result v1

    const/4 v2, 0x5

    aput v2, v0, v1
    :try_end_4
    .catch Ljava/lang/NoSuchFieldError; {:try_start_4 .. :try_end_4} :catch_11

    :goto_4
    :try_start_5
    sget-object v1, Lcom/android/internal/telephony/cat/AppInterface$CommandType;->GET_INPUT:Lcom/android/internal/telephony/cat/AppInterface$CommandType;

    invoke-virtual {v1}, Lcom/android/internal/telephony/cat/AppInterface$CommandType;->ordinal()I

    move-result v1

    const/4 v2, 0x6

    aput v2, v0, v1
    :try_end_5
    .catch Ljava/lang/NoSuchFieldError; {:try_start_5 .. :try_end_5} :catch_10

    :goto_5
    :try_start_6
    sget-object v1, Lcom/android/internal/telephony/cat/AppInterface$CommandType;->LAUNCH_BROWSER:Lcom/android/internal/telephony/cat/AppInterface$CommandType;

    invoke-virtual {v1}, Lcom/android/internal/telephony/cat/AppInterface$CommandType;->ordinal()I

    move-result v1

    const/4 v2, 0x7

    aput v2, v0, v1
    :try_end_6
    .catch Ljava/lang/NoSuchFieldError; {:try_start_6 .. :try_end_6} :catch_f

    :goto_6
    :try_start_7
    sget-object v1, Lcom/android/internal/telephony/cat/AppInterface$CommandType;->OPEN_CHANNEL:Lcom/android/internal/telephony/cat/AppInterface$CommandType;

    invoke-virtual {v1}, Lcom/android/internal/telephony/cat/AppInterface$CommandType;->ordinal()I

    move-result v1

    const/16 v2, 0x8

    aput v2, v0, v1
    :try_end_7
    .catch Ljava/lang/NoSuchFieldError; {:try_start_7 .. :try_end_7} :catch_e

    :goto_7
    :try_start_8
    sget-object v1, Lcom/android/internal/telephony/cat/AppInterface$CommandType;->PLAY_TONE:Lcom/android/internal/telephony/cat/AppInterface$CommandType;

    invoke-virtual {v1}, Lcom/android/internal/telephony/cat/AppInterface$CommandType;->ordinal()I

    move-result v1

    const/16 v2, 0x9

    aput v2, v0, v1
    :try_end_8
    .catch Ljava/lang/NoSuchFieldError; {:try_start_8 .. :try_end_8} :catch_d

    :goto_8
    :try_start_9
    sget-object v1, Lcom/android/internal/telephony/cat/AppInterface$CommandType;->PROVIDE_LOCAL_INFORMATION:Lcom/android/internal/telephony/cat/AppInterface$CommandType;

    invoke-virtual {v1}, Lcom/android/internal/telephony/cat/AppInterface$CommandType;->ordinal()I

    move-result v1

    const/16 v2, 0x19

    aput v2, v0, v1
    :try_end_9
    .catch Ljava/lang/NoSuchFieldError; {:try_start_9 .. :try_end_9} :catch_c

    :goto_9
    :try_start_a
    sget-object v1, Lcom/android/internal/telephony/cat/AppInterface$CommandType;->RECEIVE_DATA:Lcom/android/internal/telephony/cat/AppInterface$CommandType;

    invoke-virtual {v1}, Lcom/android/internal/telephony/cat/AppInterface$CommandType;->ordinal()I

    move-result v1

    const/16 v2, 0xa

    aput v2, v0, v1
    :try_end_a
    .catch Ljava/lang/NoSuchFieldError; {:try_start_a .. :try_end_a} :catch_b

    :goto_a
    :try_start_b
    sget-object v1, Lcom/android/internal/telephony/cat/AppInterface$CommandType;->REFRESH:Lcom/android/internal/telephony/cat/AppInterface$CommandType;

    invoke-virtual {v1}, Lcom/android/internal/telephony/cat/AppInterface$CommandType;->ordinal()I

    move-result v1

    const/16 v2, 0xb

    aput v2, v0, v1
    :try_end_b
    .catch Ljava/lang/NoSuchFieldError; {:try_start_b .. :try_end_b} :catch_a

    :goto_b
    :try_start_c
    sget-object v1, Lcom/android/internal/telephony/cat/AppInterface$CommandType;->SELECT_ITEM:Lcom/android/internal/telephony/cat/AppInterface$CommandType;

    invoke-virtual {v1}, Lcom/android/internal/telephony/cat/AppInterface$CommandType;->ordinal()I

    move-result v1

    const/16 v2, 0xc

    aput v2, v0, v1
    :try_end_c
    .catch Ljava/lang/NoSuchFieldError; {:try_start_c .. :try_end_c} :catch_9

    :goto_c
    :try_start_d
    sget-object v1, Lcom/android/internal/telephony/cat/AppInterface$CommandType;->SEND_DATA:Lcom/android/internal/telephony/cat/AppInterface$CommandType;

    invoke-virtual {v1}, Lcom/android/internal/telephony/cat/AppInterface$CommandType;->ordinal()I

    move-result v1

    const/16 v2, 0xd

    aput v2, v0, v1
    :try_end_d
    .catch Ljava/lang/NoSuchFieldError; {:try_start_d .. :try_end_d} :catch_8

    :goto_d
    :try_start_e
    sget-object v1, Lcom/android/internal/telephony/cat/AppInterface$CommandType;->SEND_DTMF:Lcom/android/internal/telephony/cat/AppInterface$CommandType;

    invoke-virtual {v1}, Lcom/android/internal/telephony/cat/AppInterface$CommandType;->ordinal()I

    move-result v1

    const/16 v2, 0xe

    aput v2, v0, v1
    :try_end_e
    .catch Ljava/lang/NoSuchFieldError; {:try_start_e .. :try_end_e} :catch_7

    :goto_e
    :try_start_f
    sget-object v1, Lcom/android/internal/telephony/cat/AppInterface$CommandType;->SEND_SMS:Lcom/android/internal/telephony/cat/AppInterface$CommandType;

    invoke-virtual {v1}, Lcom/android/internal/telephony/cat/AppInterface$CommandType;->ordinal()I

    move-result v1

    const/16 v2, 0xf

    aput v2, v0, v1
    :try_end_f
    .catch Ljava/lang/NoSuchFieldError; {:try_start_f .. :try_end_f} :catch_6

    :goto_f
    :try_start_10
    sget-object v1, Lcom/android/internal/telephony/cat/AppInterface$CommandType;->SEND_SS:Lcom/android/internal/telephony/cat/AppInterface$CommandType;

    invoke-virtual {v1}, Lcom/android/internal/telephony/cat/AppInterface$CommandType;->ordinal()I

    move-result v1

    const/16 v2, 0x10

    aput v2, v0, v1
    :try_end_10
    .catch Ljava/lang/NoSuchFieldError; {:try_start_10 .. :try_end_10} :catch_5

    :goto_10
    :try_start_11
    sget-object v1, Lcom/android/internal/telephony/cat/AppInterface$CommandType;->SEND_USSD:Lcom/android/internal/telephony/cat/AppInterface$CommandType;

    invoke-virtual {v1}, Lcom/android/internal/telephony/cat/AppInterface$CommandType;->ordinal()I

    move-result v1

    const/16 v2, 0x11

    aput v2, v0, v1
    :try_end_11
    .catch Ljava/lang/NoSuchFieldError; {:try_start_11 .. :try_end_11} :catch_4

    :goto_11
    :try_start_12
    sget-object v1, Lcom/android/internal/telephony/cat/AppInterface$CommandType;->SET_UP_CALL:Lcom/android/internal/telephony/cat/AppInterface$CommandType;

    invoke-virtual {v1}, Lcom/android/internal/telephony/cat/AppInterface$CommandType;->ordinal()I

    move-result v1

    const/16 v2, 0x12

    aput v2, v0, v1
    :try_end_12
    .catch Ljava/lang/NoSuchFieldError; {:try_start_12 .. :try_end_12} :catch_3

    :goto_12
    :try_start_13
    sget-object v1, Lcom/android/internal/telephony/cat/AppInterface$CommandType;->SET_UP_EVENT_LIST:Lcom/android/internal/telephony/cat/AppInterface$CommandType;

    invoke-virtual {v1}, Lcom/android/internal/telephony/cat/AppInterface$CommandType;->ordinal()I

    move-result v1

    const/16 v2, 0x13

    aput v2, v0, v1
    :try_end_13
    .catch Ljava/lang/NoSuchFieldError; {:try_start_13 .. :try_end_13} :catch_2

    :goto_13
    :try_start_14
    sget-object v1, Lcom/android/internal/telephony/cat/AppInterface$CommandType;->SET_UP_IDLE_MODE_TEXT:Lcom/android/internal/telephony/cat/AppInterface$CommandType;

    invoke-virtual {v1}, Lcom/android/internal/telephony/cat/AppInterface$CommandType;->ordinal()I

    move-result v1

    const/16 v2, 0x14

    aput v2, v0, v1
    :try_end_14
    .catch Ljava/lang/NoSuchFieldError; {:try_start_14 .. :try_end_14} :catch_1

    :goto_14
    :try_start_15
    sget-object v1, Lcom/android/internal/telephony/cat/AppInterface$CommandType;->SET_UP_MENU:Lcom/android/internal/telephony/cat/AppInterface$CommandType;

    invoke-virtual {v1}, Lcom/android/internal/telephony/cat/AppInterface$CommandType;->ordinal()I

    move-result v1

    const/16 v2, 0x15

    aput v2, v0, v1
    :try_end_15
    .catch Ljava/lang/NoSuchFieldError; {:try_start_15 .. :try_end_15} :catch_0

    :goto_15
    sput-object v0, Lcom/android/stk/StkAppService;->-com-android-internal-telephony-cat-AppInterface$CommandTypeSwitchesValues:[I

    return-object v0

    :catch_0
    move-exception v1

    goto :goto_15

    :catch_1
    move-exception v1

    goto :goto_14

    :catch_2
    move-exception v1

    goto :goto_13

    :catch_3
    move-exception v1

    goto :goto_12

    :catch_4
    move-exception v1

    goto :goto_11

    :catch_5
    move-exception v1

    goto :goto_10

    :catch_6
    move-exception v1

    goto :goto_f

    :catch_7
    move-exception v1

    goto :goto_e

    :catch_8
    move-exception v1

    goto :goto_d

    :catch_9
    move-exception v1

    goto :goto_c

    :catch_a
    move-exception v1

    goto :goto_b

    :catch_b
    move-exception v1

    goto/16 :goto_a

    :catch_c
    move-exception v1

    goto/16 :goto_9

    :catch_d
    move-exception v1

    goto/16 :goto_8

    :catch_e
    move-exception v1

    goto/16 :goto_7

    :catch_f
    move-exception v1

    goto/16 :goto_6

    :catch_10
    move-exception v1

    goto/16 :goto_5

    :catch_11
    move-exception v1

    goto/16 :goto_4

    :catch_12
    move-exception v1

    goto/16 :goto_3

    :catch_13
    move-exception v1

    goto/16 :goto_2

    :catch_14
    move-exception v1

    goto/16 :goto_1

    :catch_15
    move-exception v1

    goto/16 :goto_0
.end method

.method private static synthetic -getcom-android-internal-telephony-cat-LaunchBrowserModeSwitchesValues()[I
    .locals 3

    sget-object v0, Lcom/android/stk/StkAppService;->-com-android-internal-telephony-cat-LaunchBrowserModeSwitchesValues:[I

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/stk/StkAppService;->-com-android-internal-telephony-cat-LaunchBrowserModeSwitchesValues:[I

    return-object v0

    :cond_0
    invoke-static {}, Lcom/android/internal/telephony/cat/LaunchBrowserMode;->values()[Lcom/android/internal/telephony/cat/LaunchBrowserMode;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    :try_start_0
    sget-object v1, Lcom/android/internal/telephony/cat/LaunchBrowserMode;->LAUNCH_IF_NOT_ALREADY_LAUNCHED:Lcom/android/internal/telephony/cat/LaunchBrowserMode;

    invoke-virtual {v1}, Lcom/android/internal/telephony/cat/LaunchBrowserMode;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_2

    :goto_0
    :try_start_1
    sget-object v1, Lcom/android/internal/telephony/cat/LaunchBrowserMode;->LAUNCH_NEW_BROWSER:Lcom/android/internal/telephony/cat/LaunchBrowserMode;

    invoke-virtual {v1}, Lcom/android/internal/telephony/cat/LaunchBrowserMode;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_1

    :goto_1
    :try_start_2
    sget-object v1, Lcom/android/internal/telephony/cat/LaunchBrowserMode;->USE_EXISTING_BROWSER:Lcom/android/internal/telephony/cat/LaunchBrowserMode;

    invoke-virtual {v1}, Lcom/android/internal/telephony/cat/LaunchBrowserMode;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_0

    :goto_2
    sput-object v0, Lcom/android/stk/StkAppService;->-com-android-internal-telephony-cat-LaunchBrowserModeSwitchesValues:[I

    return-object v0

    :catch_0
    move-exception v1

    goto :goto_2

    :catch_1
    move-exception v1

    goto :goto_1

    :catch_2
    move-exception v1

    goto :goto_0
.end method

.method static synthetic -wrap0(Lcom/android/stk/StkAppService;I)Z
    .locals 1
    .param p1, "slotId"    # I

    .prologue
    invoke-direct {p0, p1}, Lcom/android/stk/StkAppService;->isAllOtherCardsAbsent(I)Z

    move-result v0

    return v0
.end method

.method static synthetic -wrap1(Lcom/android/stk/StkAppService;I)Z
    .locals 1
    .param p1, "slotId"    # I

    .prologue
    invoke-direct {p0, p1}, Lcom/android/stk/StkAppService;->isAnyOtherCardStkMenuExist(I)Z

    move-result v0

    return v0
.end method

.method static synthetic -wrap10(Lcom/android/stk/StkAppService;Lcom/android/internal/telephony/cat/CatCmdMessage;I)V
    .locals 0
    .param p1, "cmdMsg"    # Lcom/android/internal/telephony/cat/CatCmdMessage;
    .param p2, "slotId"    # I

    .prologue
    invoke-direct {p0, p1, p2}, Lcom/android/stk/StkAppService;->handleCmd(Lcom/android/internal/telephony/cat/CatCmdMessage;I)V

    return-void
.end method

.method static synthetic -wrap11(Lcom/android/stk/StkAppService;I)V
    .locals 0
    .param p1, "slotId"    # I

    .prologue
    invoke-direct {p0, p1}, Lcom/android/stk/StkAppService;->handleDelayedCmd(I)V

    return-void
.end method

.method static synthetic -wrap12(Lcom/android/stk/StkAppService;I)V
    .locals 0
    .param p1, "slotId"    # I

    .prologue
    invoke-direct {p0, p1}, Lcom/android/stk/StkAppService;->handleIdleScreen(I)V

    return-void
.end method

.method static synthetic -wrap13(Lcom/android/stk/StkAppService;I)V
    .locals 0
    .param p1, "slotId"    # I

    .prologue
    invoke-direct {p0, p1}, Lcom/android/stk/StkAppService;->handleSessionEnd(I)V

    return-void
.end method

.method static synthetic -wrap14(Lcom/android/stk/StkAppService;Landroid/os/Message;I)V
    .locals 0
    .param p1, "msg"    # Landroid/os/Message;
    .param p2, "slotId"    # I

    .prologue
    invoke-direct {p0, p1, p2}, Lcom/android/stk/StkAppService;->handleStopTone(Landroid/os/Message;I)V

    return-void
.end method

.method static synthetic -wrap15(Lcom/android/stk/StkAppService;I)V
    .locals 0
    .param p1, "slotId"    # I

    .prologue
    invoke-direct {p0, p1}, Lcom/android/stk/StkAppService;->restoreInstanceFromStackBySlot(I)V

    return-void
.end method

.method static synthetic -wrap2(Lcom/android/stk/StkAppService;Lcom/android/internal/telephony/cat/CatCmdMessage;)Z
    .locals 1
    .param p1, "cmd"    # Lcom/android/internal/telephony/cat/CatCmdMessage;

    .prologue
    invoke-direct {p0, p1}, Lcom/android/stk/StkAppService;->isCmdInteractive(Lcom/android/internal/telephony/cat/CatCmdMessage;)Z

    move-result v0

    return v0
.end method

.method static synthetic -wrap3(Lcom/android/stk/StkAppService;I)I
    .locals 1
    .param p1, "slotId"    # I

    .prologue
    invoke-direct {p0, p1}, Lcom/android/stk/StkAppService;->getNotificationId(I)I

    move-result v0

    return v0
.end method

.method static synthetic -wrap4(Lcom/android/stk/StkAppService;I)V
    .locals 0
    .param p1, "slotId"    # I

    .prologue
    invoke-direct {p0, p1}, Lcom/android/stk/StkAppService;->callDelayedMsg(I)V

    return-void
.end method

.method static synthetic -wrap5(Lcom/android/stk/StkAppService;IILjava/lang/Object;)V
    .locals 0
    .param p1, "inst_type"    # I
    .param p2, "slotId"    # I
    .param p3, "obj"    # Ljava/lang/Object;

    .prologue
    invoke-direct {p0, p1, p2, p3}, Lcom/android/stk/StkAppService;->callSetActivityInstMsg(IILjava/lang/Object;)V

    return-void
.end method

.method static synthetic -wrap6(Lcom/android/stk/StkAppService;ILandroid/os/Bundle;I)V
    .locals 0
    .param p1, "event"    # I
    .param p2, "args"    # Landroid/os/Bundle;
    .param p3, "slotId"    # I

    .prologue
    invoke-direct {p0, p1, p2, p3}, Lcom/android/stk/StkAppService;->checkForSetupEvent(ILandroid/os/Bundle;I)V

    return-void
.end method

.method static synthetic -wrap7(Lcom/android/stk/StkAppService;I)V
    .locals 0
    .param p1, "slotId"    # I

    .prologue
    invoke-direct {p0, p1}, Lcom/android/stk/StkAppService;->cleanUpInstanceStackBySlot(I)V

    return-void
.end method

.method static synthetic -wrap8(Lcom/android/stk/StkAppService;Landroid/os/Bundle;)V
    .locals 0
    .param p1, "args"    # Landroid/os/Bundle;

    .prologue
    invoke-direct {p0, p1}, Lcom/android/stk/StkAppService;->handleAlphaNotify(Landroid/os/Bundle;)V

    return-void
.end method

.method static synthetic -wrap9(Lcom/android/stk/StkAppService;Landroid/os/Bundle;I)V
    .locals 0
    .param p1, "args"    # Landroid/os/Bundle;
    .param p2, "slotId"    # I

    .prologue
    invoke-direct {p0, p1, p2}, Lcom/android/stk/StkAppService;->handleCmdResponse(Landroid/os/Bundle;I)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 170
    const/4 v0, 0x0

    sput-object v0, Lcom/android/stk/StkAppService;->sInstance:Lcom/android/stk/StkAppService;

    .line 263
    new-instance v0, Lcom/android/stk/StkAppService$1;

    invoke-direct {v0}, Lcom/android/stk/StkAppService$1;-><init>()V

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getEnclosingClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/stk/StkAppService;->LOG_TAG:Ljava/lang/String;

    .line 106
    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 106
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 168
    iput-object v1, p0, Lcom/android/stk/StkAppService;->mContext:Landroid/content/Context;

    .line 169
    iput-object v1, p0, Lcom/android/stk/StkAppService;->mNotificationManager:Landroid/app/NotificationManager;

    .line 171
    iput-object v1, p0, Lcom/android/stk/StkAppService;->mStkService:[Lcom/android/internal/telephony/cat/AppInterface;

    .line 172
    iput-object v1, p0, Lcom/android/stk/StkAppService;->mStkContext:[Lcom/android/stk/StkAppService$StkContext;

    .line 173
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/stk/StkAppService;->mSimCount:I

    .line 174
    iput-object v1, p0, Lcom/android/stk/StkAppService;->mPowerManager:Landroid/os/PowerManager;

    .line 175
    iput-object v1, p0, Lcom/android/stk/StkAppService;->mStkCmdReceiver:Lcom/android/stk/StkCmdReceiver;

    .line 176
    iput-object v1, p0, Lcom/android/stk/StkAppService;->mTonePlayer:Lcom/android/stk/TonePlayer;

    .line 177
    iput-object v1, p0, Lcom/android/stk/StkAppService;->mVibrator:Landroid/os/Vibrator;

    .line 106
    return-void
.end method

.method private broadcastActivateIntent(I)V
    .locals 3
    .param p1, "slotId"    # I

    .prologue
    .line 1130
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "org.codeaurora.intent.action.stk.activate_notify"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1131
    .local v0, "intent":Landroid/content/Intent;
    const-string/jumbo v1, "STK_CMD"

    const-string/jumbo v2, "ACTIVATE"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1132
    const-string/jumbo v1, "SLOT_ID"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1133
    iget-object v1, p0, Lcom/android/stk/StkAppService;->mContext:Landroid/content/Context;

    const-string/jumbo v2, "android.permission.SEND_RECEIVE_STK_INTENT"

    invoke-virtual {v1, v0, v2}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    .line 1129
    return-void
.end method

.method private callDelayedMsg(I)V
    .locals 2
    .param p1, "slotId"    # I

    .prologue
    .line 840
    iget-object v1, p0, Lcom/android/stk/StkAppService;->mServiceHandler:Lcom/android/stk/StkAppService$ServiceHandler;

    invoke-virtual {v1}, Lcom/android/stk/StkAppService$ServiceHandler;->obtainMessage()Landroid/os/Message;

    move-result-object v0

    .line 841
    .local v0, "msg":Landroid/os/Message;
    const/4 v1, 0x6

    iput v1, v0, Landroid/os/Message;->arg1:I

    .line 842
    iput p1, v0, Landroid/os/Message;->arg2:I

    .line 843
    iget-object v1, p0, Lcom/android/stk/StkAppService;->mServiceHandler:Lcom/android/stk/StkAppService$ServiceHandler;

    invoke-virtual {v1, v0}, Lcom/android/stk/StkAppService$ServiceHandler;->sendMessage(Landroid/os/Message;)Z

    .line 839
    return-void
.end method

.method private callSetActivityInstMsg(IILjava/lang/Object;)V
    .locals 2
    .param p1, "inst_type"    # I
    .param p2, "slotId"    # I
    .param p3, "obj"    # Ljava/lang/Object;

    .prologue
    .line 847
    iget-object v1, p0, Lcom/android/stk/StkAppService;->mServiceHandler:Lcom/android/stk/StkAppService$ServiceHandler;

    invoke-virtual {v1}, Lcom/android/stk/StkAppService$ServiceHandler;->obtainMessage()Landroid/os/Message;

    move-result-object v0

    .line 848
    .local v0, "msg":Landroid/os/Message;
    iput-object p3, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 849
    iput p1, v0, Landroid/os/Message;->arg1:I

    .line 850
    iput p2, v0, Landroid/os/Message;->arg2:I

    .line 851
    iget-object v1, p0, Lcom/android/stk/StkAppService;->mServiceHandler:Lcom/android/stk/StkAppService$ServiceHandler;

    invoke-virtual {v1, v0}, Lcom/android/stk/StkAppService$ServiceHandler;->sendMessage(Landroid/os/Message;)Z

    .line 846
    return-void
.end method

.method private checkForSetupEvent(ILandroid/os/Bundle;I)V
    .locals 7
    .param p1, "event"    # I
    .param p2, "args"    # Landroid/os/Bundle;
    .param p3, "slotId"    # I

    .prologue
    .line 1528
    const/4 v1, 0x0

    .line 1529
    .local v1, "eventPresent":Z
    const/4 v0, 0x0

    .line 1530
    .local v0, "addedInfo":[B
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Event :"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {p0, v4}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1532
    iget-object v4, p0, Lcom/android/stk/StkAppService;->mStkContext:[Lcom/android/stk/StkAppService$StkContext;

    aget-object v4, v4, p3

    invoke-static {v4}, Lcom/android/stk/StkAppService$StkContext;->-get4(Lcom/android/stk/StkAppService$StkContext;)Lcom/android/internal/telephony/cat/CatCmdMessage$SetupEventListSettings;

    move-result-object v4

    if-eqz v4, :cond_3

    .line 1535
    iget-object v4, p0, Lcom/android/stk/StkAppService;->mStkContext:[Lcom/android/stk/StkAppService$StkContext;

    aget-object v4, v4, p3

    invoke-static {v4}, Lcom/android/stk/StkAppService$StkContext;->-get4(Lcom/android/stk/StkAppService$StkContext;)Lcom/android/internal/telephony/cat/CatCmdMessage$SetupEventListSettings;

    move-result-object v4

    iget-object v5, v4, Lcom/android/internal/telephony/cat/CatCmdMessage$SetupEventListSettings;->eventList:[I

    const/4 v4, 0x0

    array-length v6, v5

    :goto_0
    if-ge v4, v6, :cond_0

    aget v2, v5, v4

    .line 1536
    .local v2, "i":I
    if-ne p1, v2, :cond_1

    .line 1537
    const/4 v1, 0x1

    .line 1543
    .end local v2    # "i":I
    :cond_0
    if-eqz v1, :cond_2

    .line 1544
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, " Event "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, "exists in the EventList"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {p0, v4}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1546
    sparse-switch p1, :sswitch_data_0

    .line 1527
    .end local v0    # "addedInfo":[B
    :goto_1
    return-void

    .line 1535
    .restart local v0    # "addedInfo":[B
    .restart local v2    # "i":I
    :cond_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 1548
    .end local v2    # "i":I
    :sswitch_0
    invoke-direct {p0, p1, v0, p3}, Lcom/android/stk/StkAppService;->sendSetUpEventResponse(I[BI)V

    .line 1549
    invoke-direct {p0, p1, p3}, Lcom/android/stk/StkAppService;->removeSetUpEvent(II)V

    goto :goto_1

    .line 1552
    :sswitch_1
    iget-object v4, p0, Lcom/android/stk/StkAppService;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v4

    iget-object v4, v4, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    invoke-virtual {v4}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v3

    .line 1554
    .local v3, "language":Ljava/lang/String;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "language: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {p0, v4}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1558
    invoke-static {v3}, Lcom/android/internal/telephony/GsmAlphabet;->stringToGsm8BitPacked(Ljava/lang/String;)[B

    move-result-object v0

    .line 1559
    .local v0, "addedInfo":[B
    invoke-direct {p0, p1, v0, p3}, Lcom/android/stk/StkAppService;->sendSetUpEventResponse(I[BI)V

    goto :goto_1

    .line 1562
    .end local v3    # "language":Ljava/lang/String;
    .local v0, "addedInfo":[B
    :sswitch_2
    invoke-direct {p0, p1, v0, p3}, Lcom/android/stk/StkAppService;->sendSetUpEventResponse(I[BI)V

    goto :goto_1

    .line 1568
    :cond_2
    const-string/jumbo v4, " Event does not exist in the EventList"

    invoke-static {p0, v4}, Lcom/android/internal/telephony/cat/CatLog;->e(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_1

    .line 1571
    :cond_3
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "SetupEventList is not received. Ignoring the event: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {p0, v4}, Lcom/android/internal/telephony/cat/CatLog;->e(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_1

    .line 1546
    :sswitch_data_0
    .sparse-switch
        0x5 -> :sswitch_0
        0x7 -> :sswitch_1
        0x13 -> :sswitch_2
    .end sparse-switch
.end method

.method private cleanUpInstanceStackBySlot(I)V
    .locals 7
    .param p1, "slotId"    # I

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 1318
    iget-object v2, p0, Lcom/android/stk/StkAppService;->mStkContext:[Lcom/android/stk/StkAppService$StkContext;

    aget-object v2, v2, p1

    invoke-virtual {v2}, Lcom/android/stk/StkAppService$StkContext;->getPendingActivityInstance()Landroid/app/Activity;

    move-result-object v0

    .line 1319
    .local v0, "activity":Landroid/app/Activity;
    iget-object v2, p0, Lcom/android/stk/StkAppService;->mStkContext:[Lcom/android/stk/StkAppService$StkContext;

    aget-object v2, v2, p1

    invoke-virtual {v2}, Lcom/android/stk/StkAppService$StkContext;->getPendingDialogInstance()Landroid/app/Activity;

    move-result-object v1

    .line 1320
    .local v1, "dialog":Landroid/app/Activity;
    sget-object v2, Lcom/android/stk/StkAppService;->LOG_TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "cleanUpInstanceStackBySlot slotId: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1321
    iget-object v2, p0, Lcom/android/stk/StkAppService;->mStkContext:[Lcom/android/stk/StkAppService$StkContext;

    aget-object v2, v2, p1

    iget-object v2, v2, Lcom/android/stk/StkAppService$StkContext;->mCurrentCmd:Lcom/android/internal/telephony/cat/CatCmdMessage;

    if-nez v2, :cond_0

    .line 1322
    sget-object v2, Lcom/android/stk/StkAppService;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v3, "current cmd is null."

    invoke-static {v2, v3}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1323
    return-void

    .line 1325
    :cond_0
    if-eqz v0, :cond_3

    .line 1326
    sget-object v2, Lcom/android/stk/StkAppService;->LOG_TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "current cmd type: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 1327
    iget-object v4, p0, Lcom/android/stk/StkAppService;->mStkContext:[Lcom/android/stk/StkAppService$StkContext;

    aget-object v4, v4, p1

    iget-object v4, v4, Lcom/android/stk/StkAppService$StkContext;->mCurrentCmd:Lcom/android/internal/telephony/cat/CatCmdMessage;

    invoke-virtual {v4}, Lcom/android/internal/telephony/cat/CatCmdMessage;->getCmdType()Lcom/android/internal/telephony/cat/AppInterface$CommandType;

    move-result-object v4

    .line 1326
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1328
    iget-object v2, p0, Lcom/android/stk/StkAppService;->mStkContext:[Lcom/android/stk/StkAppService$StkContext;

    aget-object v2, v2, p1

    iget-object v2, v2, Lcom/android/stk/StkAppService$StkContext;->mCurrentCmd:Lcom/android/internal/telephony/cat/CatCmdMessage;

    invoke-virtual {v2}, Lcom/android/internal/telephony/cat/CatCmdMessage;->getCmdType()Lcom/android/internal/telephony/cat/AppInterface$CommandType;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/internal/telephony/cat/AppInterface$CommandType;->value()I

    move-result v2

    .line 1329
    sget-object v3, Lcom/android/internal/telephony/cat/AppInterface$CommandType;->GET_INPUT:Lcom/android/internal/telephony/cat/AppInterface$CommandType;

    invoke-virtual {v3}, Lcom/android/internal/telephony/cat/AppInterface$CommandType;->value()I

    move-result v3

    .line 1328
    if-eq v2, v3, :cond_1

    .line 1330
    iget-object v2, p0, Lcom/android/stk/StkAppService;->mStkContext:[Lcom/android/stk/StkAppService$StkContext;

    aget-object v2, v2, p1

    iget-object v2, v2, Lcom/android/stk/StkAppService$StkContext;->mCurrentCmd:Lcom/android/internal/telephony/cat/CatCmdMessage;

    invoke-virtual {v2}, Lcom/android/internal/telephony/cat/CatCmdMessage;->getCmdType()Lcom/android/internal/telephony/cat/AppInterface$CommandType;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/internal/telephony/cat/AppInterface$CommandType;->value()I

    move-result v2

    .line 1331
    sget-object v3, Lcom/android/internal/telephony/cat/AppInterface$CommandType;->GET_INKEY:Lcom/android/internal/telephony/cat/AppInterface$CommandType;

    invoke-virtual {v3}, Lcom/android/internal/telephony/cat/AppInterface$CommandType;->value()I

    move-result v3

    .line 1330
    if-ne v2, v3, :cond_5

    .line 1332
    :cond_1
    iget-object v2, p0, Lcom/android/stk/StkAppService;->mStkContext:[Lcom/android/stk/StkAppService$StkContext;

    aget-object v2, v2, p1

    iput-boolean v6, v2, Lcom/android/stk/StkAppService$StkContext;->mIsInputPending:Z

    .line 1340
    :cond_2
    :goto_0
    sget-object v2, Lcom/android/stk/StkAppService;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v3, "finish pending activity."

    invoke-static {v2, v3}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1341
    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    .line 1342
    iget-object v2, p0, Lcom/android/stk/StkAppService;->mStkContext:[Lcom/android/stk/StkAppService$StkContext;

    aget-object v2, v2, p1

    invoke-static {v2, v5}, Lcom/android/stk/StkAppService$StkContext;->-set0(Lcom/android/stk/StkAppService$StkContext;Landroid/app/Activity;)Landroid/app/Activity;

    .line 1344
    :cond_3
    if-eqz v1, :cond_4

    .line 1345
    sget-object v2, Lcom/android/stk/StkAppService;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v3, "finish pending dialog."

    invoke-static {v2, v3}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1346
    iget-object v2, p0, Lcom/android/stk/StkAppService;->mStkContext:[Lcom/android/stk/StkAppService$StkContext;

    aget-object v2, v2, p1

    iput-boolean v6, v2, Lcom/android/stk/StkAppService$StkContext;->mIsDialogPending:Z

    .line 1347
    invoke-virtual {v1}, Landroid/app/Activity;->finish()V

    .line 1348
    iget-object v2, p0, Lcom/android/stk/StkAppService;->mStkContext:[Lcom/android/stk/StkAppService$StkContext;

    aget-object v2, v2, p1

    invoke-static {v2, v5}, Lcom/android/stk/StkAppService$StkContext;->-set2(Lcom/android/stk/StkAppService$StkContext;Landroid/app/Activity;)Landroid/app/Activity;

    .line 1317
    :cond_4
    return-void

    .line 1333
    :cond_5
    iget-object v2, p0, Lcom/android/stk/StkAppService;->mStkContext:[Lcom/android/stk/StkAppService$StkContext;

    aget-object v2, v2, p1

    iget-object v2, v2, Lcom/android/stk/StkAppService$StkContext;->mCurrentCmd:Lcom/android/internal/telephony/cat/CatCmdMessage;

    invoke-virtual {v2}, Lcom/android/internal/telephony/cat/CatCmdMessage;->getCmdType()Lcom/android/internal/telephony/cat/AppInterface$CommandType;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/internal/telephony/cat/AppInterface$CommandType;->value()I

    move-result v2

    .line 1334
    sget-object v3, Lcom/android/internal/telephony/cat/AppInterface$CommandType;->SET_UP_MENU:Lcom/android/internal/telephony/cat/AppInterface$CommandType;

    invoke-virtual {v3}, Lcom/android/internal/telephony/cat/AppInterface$CommandType;->value()I

    move-result v3

    .line 1333
    if-eq v2, v3, :cond_6

    .line 1335
    iget-object v2, p0, Lcom/android/stk/StkAppService;->mStkContext:[Lcom/android/stk/StkAppService$StkContext;

    aget-object v2, v2, p1

    iget-object v2, v2, Lcom/android/stk/StkAppService$StkContext;->mCurrentCmd:Lcom/android/internal/telephony/cat/CatCmdMessage;

    invoke-virtual {v2}, Lcom/android/internal/telephony/cat/CatCmdMessage;->getCmdType()Lcom/android/internal/telephony/cat/AppInterface$CommandType;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/internal/telephony/cat/AppInterface$CommandType;->value()I

    move-result v2

    .line 1336
    sget-object v3, Lcom/android/internal/telephony/cat/AppInterface$CommandType;->SELECT_ITEM:Lcom/android/internal/telephony/cat/AppInterface$CommandType;

    invoke-virtual {v3}, Lcom/android/internal/telephony/cat/AppInterface$CommandType;->value()I

    move-result v3

    .line 1335
    if-ne v2, v3, :cond_2

    .line 1337
    :cond_6
    iget-object v2, p0, Lcom/android/stk/StkAppService;->mStkContext:[Lcom/android/stk/StkAppService$StkContext;

    aget-object v2, v2, p1

    iput-boolean v6, v2, Lcom/android/stk/StkAppService$StkContext;->mIsMenuPending:Z

    goto :goto_0
.end method

.method private finishToneDialogActivity()V
    .locals 2

    .prologue
    .line 1848
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "org.codeaurora.intent.action.stk.finish_activity"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1849
    .local v0, "finishIntent":Landroid/content/Intent;
    invoke-virtual {p0, v0}, Lcom/android/stk/StkAppService;->sendBroadcast(Landroid/content/Intent;)V

    .line 1847
    return-void
.end method

.method private getFlagActivityNoUserAction(Lcom/android/stk/StkAppService$InitiatedByUserAction;I)I
    .locals 3
    .param p1, "userAction"    # Lcom/android/stk/StkAppService$InitiatedByUserAction;
    .param p2, "slotId"    # I

    .prologue
    const/4 v1, 0x0

    .line 1311
    sget-object v0, Lcom/android/stk/StkAppService$InitiatedByUserAction;->yes:Lcom/android/stk/StkAppService$InitiatedByUserAction;

    if-ne p1, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    iget-object v2, p0, Lcom/android/stk/StkAppService;->mStkContext:[Lcom/android/stk/StkAppService$StkContext;

    aget-object v2, v2, p2

    iget-boolean v2, v2, Lcom/android/stk/StkAppService$StkContext;->mMenuIsVisible:Z

    or-int/2addr v0, v2

    if-eqz v0, :cond_1

    :goto_1
    return v1

    :cond_0
    move v0, v1

    goto :goto_0

    .line 1312
    :cond_1
    const/high16 v1, 0x40000

    goto :goto_1
.end method

.method static getInstance()Lcom/android/stk/StkAppService;
    .locals 1

    .prologue
    .line 492
    sget-object v0, Lcom/android/stk/StkAppService;->sInstance:Lcom/android/stk/StkAppService;

    return-object v0
.end method

.method private getItemName(II)Ljava/lang/String;
    .locals 5
    .param p1, "itemId"    # I
    .param p2, "slotId"    # I

    .prologue
    const/4 v4, 0x0

    .line 1976
    iget-object v3, p0, Lcom/android/stk/StkAppService;->mStkContext:[Lcom/android/stk/StkAppService$StkContext;

    aget-object v3, v3, p2

    iget-object v3, v3, Lcom/android/stk/StkAppService$StkContext;->mCurrentCmd:Lcom/android/internal/telephony/cat/CatCmdMessage;

    invoke-virtual {v3}, Lcom/android/internal/telephony/cat/CatCmdMessage;->getMenu()Lcom/android/internal/telephony/cat/Menu;

    move-result-object v2

    .line 1977
    .local v2, "menu":Lcom/android/internal/telephony/cat/Menu;
    if-nez v2, :cond_0

    .line 1978
    return-object v4

    .line 1980
    :cond_0
    iget-object v3, v2, Lcom/android/internal/telephony/cat/Menu;->items:Ljava/util/List;

    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "item$iterator":Ljava/util/Iterator;
    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/cat/Item;

    .line 1981
    .local v0, "item":Lcom/android/internal/telephony/cat/Item;
    iget v3, v0, Lcom/android/internal/telephony/cat/Item;->id:I

    if-ne v3, p1, :cond_1

    .line 1982
    iget-object v3, v0, Lcom/android/internal/telephony/cat/Item;->text:Ljava/lang/String;

    return-object v3

    .line 1985
    .end local v0    # "item":Lcom/android/internal/telephony/cat/Item;
    :cond_2
    return-object v4
.end method

.method private getNotificationId(I)I
    .locals 4
    .param p1, "slotId"    # I

    .prologue
    .line 1965
    const/16 v0, 0x14d

    .line 1966
    .local v0, "notifyId":I
    if-ltz p1, :cond_0

    iget v1, p0, Lcom/android/stk/StkAppService;->mSimCount:I

    if-ge p1, v1, :cond_0

    .line 1967
    add-int/lit16 v0, p1, 0x14d

    .line 1971
    :goto_0
    sget-object v1, Lcom/android/stk/StkAppService;->LOG_TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "getNotificationId, slotId: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ", notifyId: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1972
    return v0

    .line 1969
    :cond_0
    sget-object v1, Lcom/android/stk/StkAppService;->LOG_TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "invalid slotId: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private handleAlphaNotify(Landroid/os/Bundle;)V
    .locals 5
    .param p1, "args"    # Landroid/os/Bundle;

    .prologue
    const/4 v4, 0x0

    .line 2014
    const-string/jumbo v2, "alpha_string"

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2016
    .local v0, "alphaString":Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Alpha string received from card: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {p0, v2}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2017
    sget-object v2, Lcom/android/stk/StkAppService;->sInstance:Lcom/android/stk/StkAppService;

    const/4 v3, 0x1

    invoke-static {v2, v0, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    .line 2018
    .local v1, "toast":Landroid/widget/Toast;
    const/16 v2, 0x30

    invoke-virtual {v1, v2, v4, v4}, Landroid/widget/Toast;->setGravity(III)V

    .line 2019
    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 2013
    return-void
.end method

.method private handleCmd(Lcom/android/internal/telephony/cat/CatCmdMessage;I)V
    .locals 11
    .param p1, "cmdMsg"    # Lcom/android/internal/telephony/cat/CatCmdMessage;
    .param p2, "slotId"    # I

    .prologue
    .line 915
    if-nez p1, :cond_0

    .line 916
    return-void

    .line 919
    :cond_0
    iget-object v8, p0, Lcom/android/stk/StkAppService;->mStkContext:[Lcom/android/stk/StkAppService$StkContext;

    aget-object v8, v8, p2

    iput-object p1, v8, Lcom/android/stk/StkAppService$StkContext;->mCurrentCmd:Lcom/android/internal/telephony/cat/CatCmdMessage;

    .line 920
    const/4 v7, 0x1

    .line 922
    .local v7, "waitForUsersResponse":Z
    iget-object v8, p0, Lcom/android/stk/StkAppService;->mStkContext:[Lcom/android/stk/StkAppService$StkContext;

    aget-object v8, v8, p2

    const/4 v9, 0x0

    iput-boolean v9, v8, Lcom/android/stk/StkAppService$StkContext;->mIsInputPending:Z

    .line 923
    iget-object v8, p0, Lcom/android/stk/StkAppService;->mStkContext:[Lcom/android/stk/StkAppService$StkContext;

    aget-object v8, v8, p2

    const/4 v9, 0x0

    iput-boolean v9, v8, Lcom/android/stk/StkAppService$StkContext;->mIsMenuPending:Z

    .line 924
    iget-object v8, p0, Lcom/android/stk/StkAppService;->mStkContext:[Lcom/android/stk/StkAppService$StkContext;

    aget-object v8, v8, p2

    const/4 v9, 0x0

    iput-boolean v9, v8, Lcom/android/stk/StkAppService$StkContext;->mIsDialogPending:Z

    .line 926
    sget-object v8, Lcom/android/stk/StkAppService;->LOG_TAG:Ljava/lang/String;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "[handleCmd]"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {p1}, Lcom/android/internal/telephony/cat/CatCmdMessage;->getCmdType()Lcom/android/internal/telephony/cat/AppInterface$CommandType;

    move-result-object v10

    invoke-virtual {v10}, Lcom/android/internal/telephony/cat/AppInterface$CommandType;->name()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 927
    invoke-static {}, Lcom/android/stk/StkAppService;->-getcom-android-internal-telephony-cat-AppInterface$CommandTypeSwitchesValues()[I

    move-result-object v8

    invoke-virtual {p1}, Lcom/android/internal/telephony/cat/CatCmdMessage;->getCmdType()Lcom/android/internal/telephony/cat/AppInterface$CommandType;

    move-result-object v9

    invoke-virtual {v9}, Lcom/android/internal/telephony/cat/AppInterface$CommandType;->ordinal()I

    move-result v9

    aget v8, v8, v9

    packed-switch v8, :pswitch_data_0

    .line 1120
    .end local v7    # "waitForUsersResponse":Z
    :cond_1
    :goto_0
    if-nez v7, :cond_2

    .line 1121
    iget-object v8, p0, Lcom/android/stk/StkAppService;->mStkContext:[Lcom/android/stk/StkAppService$StkContext;

    aget-object v8, v8, p2

    iget-object v8, v8, Lcom/android/stk/StkAppService$StkContext;->mCmdsQ:Ljava/util/LinkedList;

    invoke-virtual {v8}, Ljava/util/LinkedList;->size()I

    move-result v8

    if-eqz v8, :cond_16

    .line 1122
    invoke-direct {p0, p2}, Lcom/android/stk/StkAppService;->callDelayedMsg(I)V

    .line 913
    :cond_2
    :goto_1
    return-void

    .line 929
    .restart local v7    # "waitForUsersResponse":Z
    :pswitch_0
    invoke-virtual {p1}, Lcom/android/internal/telephony/cat/CatCmdMessage;->geTextMessage()Lcom/android/internal/telephony/cat/TextMessage;

    move-result-object v6

    .line 930
    .local v6, "msg":Lcom/android/internal/telephony/cat/TextMessage;
    iget-boolean v7, v6, Lcom/android/internal/telephony/cat/TextMessage;->responseNeeded:Z

    .line 931
    .local v7, "waitForUsersResponse":Z
    iget-object v8, p0, Lcom/android/stk/StkAppService;->mStkContext:[Lcom/android/stk/StkAppService$StkContext;

    aget-object v8, v8, p2

    iget-object v8, v8, Lcom/android/stk/StkAppService$StkContext;->lastSelectedItem:Ljava/lang/String;

    if-eqz v8, :cond_3

    .line 932
    iget-object v8, p0, Lcom/android/stk/StkAppService;->mStkContext:[Lcom/android/stk/StkAppService$StkContext;

    aget-object v8, v8, p2

    iget-object v8, v8, Lcom/android/stk/StkAppService$StkContext;->lastSelectedItem:Ljava/lang/String;

    iput-object v8, v6, Lcom/android/internal/telephony/cat/TextMessage;->title:Ljava/lang/String;

    .line 945
    :goto_2
    iget-boolean v8, v6, Lcom/android/internal/telephony/cat/TextMessage;->isHighPriority:Z

    if-nez v8, :cond_5

    iget-object v8, p0, Lcom/android/stk/StkAppService;->mStkContext:[Lcom/android/stk/StkAppService$StkContext;

    aget-object v8, v8, p2

    iget-boolean v8, v8, Lcom/android/stk/StkAppService$StkContext;->mMenuIsVisible:Z

    if-nez v8, :cond_5

    .line 946
    iget-object v8, p0, Lcom/android/stk/StkAppService;->mStkContext:[Lcom/android/stk/StkAppService$StkContext;

    aget-object v8, v8, p2

    invoke-static {v8}, Lcom/android/stk/StkAppService$StkContext;->-get1(Lcom/android/stk/StkAppService$StkContext;)Z

    move-result v8

    .line 945
    if-nez v8, :cond_5

    .line 946
    invoke-direct {p0}, Lcom/android/stk/StkAppService;->isTopOfStack()Z

    move-result v8

    .line 945
    :goto_3
    if-nez v8, :cond_7

    .line 947
    invoke-direct {p0}, Lcom/android/stk/StkAppService;->isScreenIdle()Z

    move-result v8

    if-nez v8, :cond_6

    .line 948
    sget-object v8, Lcom/android/stk/StkAppService;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v9, "Screen is not idle"

    invoke-static {v8, v9}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 949
    invoke-direct {p0, p2}, Lcom/android/stk/StkAppService;->sendScreenBusyResponse(I)V

    goto :goto_0

    .line 933
    :cond_3
    iget-object v8, p0, Lcom/android/stk/StkAppService;->mStkContext:[Lcom/android/stk/StkAppService$StkContext;

    aget-object v8, v8, p2

    iget-object v8, v8, Lcom/android/stk/StkAppService$StkContext;->mMainCmd:Lcom/android/internal/telephony/cat/CatCmdMessage;

    if-eqz v8, :cond_4

    .line 934
    iget-object v8, p0, Lcom/android/stk/StkAppService;->mStkContext:[Lcom/android/stk/StkAppService$StkContext;

    aget-object v8, v8, p2

    iget-object v8, v8, Lcom/android/stk/StkAppService$StkContext;->mMainCmd:Lcom/android/internal/telephony/cat/CatCmdMessage;

    invoke-virtual {v8}, Lcom/android/internal/telephony/cat/CatCmdMessage;->getMenu()Lcom/android/internal/telephony/cat/Menu;

    move-result-object v8

    iget-object v8, v8, Lcom/android/internal/telephony/cat/Menu;->title:Ljava/lang/String;

    iput-object v8, v6, Lcom/android/internal/telephony/cat/TextMessage;->title:Ljava/lang/String;

    goto :goto_2

    .line 937
    :cond_4
    const-string/jumbo v8, ""

    iput-object v8, v6, Lcom/android/internal/telephony/cat/TextMessage;->title:Ljava/lang/String;

    goto :goto_2

    .line 945
    :cond_5
    const/4 v8, 0x1

    goto :goto_3

    .line 951
    :cond_6
    invoke-direct {p0, p2}, Lcom/android/stk/StkAppService;->launchTextDialog(I)V

    goto :goto_0

    .line 954
    :cond_7
    invoke-direct {p0, p2}, Lcom/android/stk/StkAppService;->launchTextDialog(I)V

    goto :goto_0

    .line 958
    .end local v6    # "msg":Lcom/android/internal/telephony/cat/TextMessage;
    .local v7, "waitForUsersResponse":Z
    :pswitch_1
    sget-object v8, Lcom/android/stk/StkAppService;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v9, "SELECT_ITEM +"

    invoke-static {v8, v9}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 959
    iget-object v8, p0, Lcom/android/stk/StkAppService;->mStkContext:[Lcom/android/stk/StkAppService$StkContext;

    aget-object v8, v8, p2

    iget-object v9, p0, Lcom/android/stk/StkAppService;->mStkContext:[Lcom/android/stk/StkAppService$StkContext;

    aget-object v9, v9, p2

    iget-object v9, v9, Lcom/android/stk/StkAppService$StkContext;->mCurrentCmd:Lcom/android/internal/telephony/cat/CatCmdMessage;

    iput-object v9, v8, Lcom/android/stk/StkAppService$StkContext;->mCurrentMenuCmd:Lcom/android/internal/telephony/cat/CatCmdMessage;

    .line 960
    iget-object v8, p0, Lcom/android/stk/StkAppService;->mStkContext:[Lcom/android/stk/StkAppService$StkContext;

    aget-object v8, v8, p2

    invoke-virtual {p1}, Lcom/android/internal/telephony/cat/CatCmdMessage;->getMenu()Lcom/android/internal/telephony/cat/Menu;

    move-result-object v9

    iput-object v9, v8, Lcom/android/stk/StkAppService$StkContext;->mCurrentMenu:Lcom/android/internal/telephony/cat/Menu;

    .line 961
    invoke-virtual {p1}, Lcom/android/internal/telephony/cat/CatCmdMessage;->getMenu()Lcom/android/internal/telephony/cat/Menu;

    move-result-object v8

    invoke-direct {p0, v8, p2}, Lcom/android/stk/StkAppService;->launchMenuActivity(Lcom/android/internal/telephony/cat/Menu;I)V

    goto/16 :goto_0

    .line 964
    :pswitch_2
    iget-object v8, p0, Lcom/android/stk/StkAppService;->mStkContext:[Lcom/android/stk/StkAppService$StkContext;

    aget-object v8, v8, p2

    const/4 v9, 0x0

    iput-boolean v9, v8, Lcom/android/stk/StkAppService$StkContext;->mCmdInProgress:Z

    .line 965
    iget-object v8, p0, Lcom/android/stk/StkAppService;->mStkContext:[Lcom/android/stk/StkAppService$StkContext;

    aget-object v8, v8, p2

    iget-object v9, p0, Lcom/android/stk/StkAppService;->mStkContext:[Lcom/android/stk/StkAppService$StkContext;

    aget-object v9, v9, p2

    iget-object v9, v9, Lcom/android/stk/StkAppService$StkContext;->mCurrentCmd:Lcom/android/internal/telephony/cat/CatCmdMessage;

    iput-object v9, v8, Lcom/android/stk/StkAppService$StkContext;->mMainCmd:Lcom/android/internal/telephony/cat/CatCmdMessage;

    .line 966
    iget-object v8, p0, Lcom/android/stk/StkAppService;->mStkContext:[Lcom/android/stk/StkAppService$StkContext;

    aget-object v8, v8, p2

    iget-object v9, p0, Lcom/android/stk/StkAppService;->mStkContext:[Lcom/android/stk/StkAppService$StkContext;

    aget-object v9, v9, p2

    iget-object v9, v9, Lcom/android/stk/StkAppService$StkContext;->mCurrentCmd:Lcom/android/internal/telephony/cat/CatCmdMessage;

    iput-object v9, v8, Lcom/android/stk/StkAppService$StkContext;->mCurrentMenuCmd:Lcom/android/internal/telephony/cat/CatCmdMessage;

    .line 967
    iget-object v8, p0, Lcom/android/stk/StkAppService;->mStkContext:[Lcom/android/stk/StkAppService$StkContext;

    aget-object v8, v8, p2

    invoke-virtual {p1}, Lcom/android/internal/telephony/cat/CatCmdMessage;->getMenu()Lcom/android/internal/telephony/cat/Menu;

    move-result-object v9

    iput-object v9, v8, Lcom/android/stk/StkAppService$StkContext;->mCurrentMenu:Lcom/android/internal/telephony/cat/Menu;

    .line 968
    sget-object v8, Lcom/android/stk/StkAppService;->LOG_TAG:Ljava/lang/String;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "SET_UP_MENU ["

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-direct {p0, p2}, Lcom/android/stk/StkAppService;->removeMenu(I)Z

    move-result v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string/jumbo v10, "]"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 970
    invoke-direct {p0, p2}, Lcom/android/stk/StkAppService;->removeMenu(I)Z

    move-result v8

    if-eqz v8, :cond_e

    .line 971
    const/4 v1, 0x0

    .line 972
    .local v1, "i":I
    sget-object v8, Lcom/android/stk/StkAppService;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v9, "removeMenu() - Uninstall App"

    invoke-static {v8, v9}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 973
    iget-object v8, p0, Lcom/android/stk/StkAppService;->mStkContext:[Lcom/android/stk/StkAppService$StkContext;

    aget-object v8, v8, p2

    const/4 v9, 0x0

    iput-object v9, v8, Lcom/android/stk/StkAppService$StkContext;->mCurrentMenu:Lcom/android/internal/telephony/cat/Menu;

    .line 974
    iget-object v8, p0, Lcom/android/stk/StkAppService;->mStkContext:[Lcom/android/stk/StkAppService$StkContext;

    aget-object v8, v8, p2

    const/4 v9, 0x0

    iput-object v9, v8, Lcom/android/stk/StkAppService$StkContext;->mMainCmd:Lcom/android/internal/telephony/cat/CatCmdMessage;

    .line 975
    const/4 v4, 0x0

    .line 977
    .local v4, "menuState":Z
    const/4 v1, 0x0

    :goto_4
    iget v8, p0, Lcom/android/stk/StkAppService;->mSimCount:I

    if-ge v1, v8, :cond_a

    .line 978
    iget-object v8, p0, Lcom/android/stk/StkAppService;->mStkContext:[Lcom/android/stk/StkAppService$StkContext;

    aget-object v8, v8, v1

    iget v8, v8, Lcom/android/stk/StkAppService$StkContext;->mSetupMenuState:I

    const/4 v9, 0x1

    if-ne v8, v9, :cond_8

    .line 979
    const/4 v4, 0x1

    .line 981
    :cond_8
    if-eq v1, p2, :cond_c

    .line 985
    iget-object v8, p0, Lcom/android/stk/StkAppService;->mStkContext:[Lcom/android/stk/StkAppService$StkContext;

    aget-object v8, v8, v1

    iget v8, v8, Lcom/android/stk/StkAppService$StkContext;->mSetupMenuState:I

    const/4 v9, -0x1

    if-eq v8, v9, :cond_9

    .line 986
    iget-object v8, p0, Lcom/android/stk/StkAppService;->mStkContext:[Lcom/android/stk/StkAppService$StkContext;

    aget-object v8, v8, v1

    iget v8, v8, Lcom/android/stk/StkAppService$StkContext;->mSetupMenuState:I

    const/4 v9, 0x1

    if-ne v8, v9, :cond_c

    .line 988
    :cond_9
    sget-object v8, Lcom/android/stk/StkAppService;->LOG_TAG:Ljava/lang/String;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "Not Uninstall App:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string/jumbo v10, ","

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    .line 991
    iget-object v10, p0, Lcom/android/stk/StkAppService;->mStkContext:[Lcom/android/stk/StkAppService$StkContext;

    aget-object v10, v10, v1

    iget v10, v10, Lcom/android/stk/StkAppService$StkContext;->mSetupMenuState:I

    .line 988
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 995
    :cond_a
    iget v8, p0, Lcom/android/stk/StkAppService;->mSimCount:I

    if-ne v1, v8, :cond_b

    if-eqz v4, :cond_d

    .line 1002
    .end local v1    # "i":I
    .end local v4    # "menuState":Z
    :cond_b
    :goto_5
    iget-object v8, p0, Lcom/android/stk/StkAppService;->mStkContext:[Lcom/android/stk/StkAppService$StkContext;

    aget-object v8, v8, p2

    iget-boolean v8, v8, Lcom/android/stk/StkAppService$StkContext;->mMenuIsVisible:Z

    if-eqz v8, :cond_1

    .line 1003
    const/4 v8, 0x0

    invoke-direct {p0, v8, p2}, Lcom/android/stk/StkAppService;->launchMenuActivity(Lcom/android/internal/telephony/cat/Menu;I)V

    goto/16 :goto_0

    .line 977
    .restart local v1    # "i":I
    .restart local v4    # "menuState":Z
    :cond_c
    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    .line 996
    :cond_d
    iget-object v8, p0, Lcom/android/stk/StkAppService;->mContext:Landroid/content/Context;

    invoke-static {v8}, Lcom/android/stk/StkAppInstaller;->unInstall(Landroid/content/Context;)V

    goto :goto_5

    .line 999
    .end local v1    # "i":I
    .end local v4    # "menuState":Z
    :cond_e
    sget-object v8, Lcom/android/stk/StkAppService;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v9, "install App"

    invoke-static {v8, v9}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1000
    iget-object v8, p0, Lcom/android/stk/StkAppService;->mContext:Landroid/content/Context;

    invoke-static {v8}, Lcom/android/stk/StkAppInstaller;->install(Landroid/content/Context;)V

    goto :goto_5

    .line 1008
    :pswitch_3
    invoke-direct {p0, p2}, Lcom/android/stk/StkAppService;->launchInputActivity(I)V

    goto/16 :goto_0

    .line 1011
    :pswitch_4
    const/4 v7, 0x0

    .line 1012
    iget-object v8, p0, Lcom/android/stk/StkAppService;->mStkContext:[Lcom/android/stk/StkAppService$StkContext;

    aget-object v8, v8, p2

    iget-object v9, p0, Lcom/android/stk/StkAppService;->mStkContext:[Lcom/android/stk/StkAppService$StkContext;

    aget-object v9, v9, p2

    iget-object v9, v9, Lcom/android/stk/StkAppService$StkContext;->mCurrentCmd:Lcom/android/internal/telephony/cat/CatCmdMessage;

    invoke-static {v8, v9}, Lcom/android/stk/StkAppService$StkContext;->-set4(Lcom/android/stk/StkAppService$StkContext;Lcom/android/internal/telephony/cat/CatCmdMessage;)Lcom/android/internal/telephony/cat/CatCmdMessage;

    .line 1013
    iget-object v8, p0, Lcom/android/stk/StkAppService;->mStkContext:[Lcom/android/stk/StkAppService$StkContext;

    aget-object v8, v8, p2

    iget-object v8, v8, Lcom/android/stk/StkAppService$StkContext;->mCurrentCmd:Lcom/android/internal/telephony/cat/CatCmdMessage;

    invoke-virtual {v8}, Lcom/android/internal/telephony/cat/CatCmdMessage;->geTextMessage()Lcom/android/internal/telephony/cat/TextMessage;

    move-result-object v2

    .line 1014
    .local v2, "idleModeText":Lcom/android/internal/telephony/cat/TextMessage;
    if-nez v2, :cond_f

    .line 1015
    invoke-direct {p0, p2}, Lcom/android/stk/StkAppService;->launchIdleText(I)V

    .line 1016
    iget-object v8, p0, Lcom/android/stk/StkAppService;->mStkContext:[Lcom/android/stk/StkAppService$StkContext;

    aget-object v8, v8, p2

    const/4 v9, 0x0

    invoke-static {v8, v9}, Lcom/android/stk/StkAppService$StkContext;->-set4(Lcom/android/stk/StkAppService$StkContext;Lcom/android/internal/telephony/cat/CatCmdMessage;)Lcom/android/internal/telephony/cat/CatCmdMessage;

    .line 1018
    :cond_f
    iget-object v8, p0, Lcom/android/stk/StkAppService;->mStkContext:[Lcom/android/stk/StkAppService$StkContext;

    aget-object v8, v8, p2

    iget-object v9, p0, Lcom/android/stk/StkAppService;->mStkContext:[Lcom/android/stk/StkAppService$StkContext;

    aget-object v9, v9, p2

    iget-object v9, v9, Lcom/android/stk/StkAppService$StkContext;->mMainCmd:Lcom/android/internal/telephony/cat/CatCmdMessage;

    iput-object v9, v8, Lcom/android/stk/StkAppService$StkContext;->mCurrentCmd:Lcom/android/internal/telephony/cat/CatCmdMessage;

    .line 1019
    iget-object v8, p0, Lcom/android/stk/StkAppService;->mStkContext:[Lcom/android/stk/StkAppService$StkContext;

    aget-object v8, v8, p2

    invoke-static {v8}, Lcom/android/stk/StkAppService$StkContext;->-get2(Lcom/android/stk/StkAppService$StkContext;)Lcom/android/internal/telephony/cat/CatCmdMessage;

    move-result-object v8

    if-eqz v8, :cond_1

    invoke-direct {p0}, Lcom/android/stk/StkAppService;->isScreenIdle()Z

    move-result v8

    if-eqz v8, :cond_1

    .line 1020
    const-string/jumbo v8, "set up idle mode"

    invoke-static {p0, v8}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1021
    invoke-direct {p0, p2}, Lcom/android/stk/StkAppService;->launchIdleText(I)V

    goto/16 :goto_0

    .line 1029
    .end local v2    # "idleModeText":Lcom/android/internal/telephony/cat/TextMessage;
    :pswitch_5
    const/4 v7, 0x0

    .line 1030
    invoke-direct {p0, p2}, Lcom/android/stk/StkAppService;->launchEventMessage(I)V

    .line 1034
    iget-object v8, p0, Lcom/android/stk/StkAppService;->mStkContext:[Lcom/android/stk/StkAppService$StkContext;

    aget-object v8, v8, p2

    iget-object v9, p0, Lcom/android/stk/StkAppService;->mStkContext:[Lcom/android/stk/StkAppService$StkContext;

    aget-object v9, v9, p2

    iget-object v9, v9, Lcom/android/stk/StkAppService$StkContext;->mMainCmd:Lcom/android/internal/telephony/cat/CatCmdMessage;

    iput-object v9, v8, Lcom/android/stk/StkAppService$StkContext;->mCurrentCmd:Lcom/android/internal/telephony/cat/CatCmdMessage;

    goto/16 :goto_0

    .line 1037
    :pswitch_6
    const/4 v7, 0x0

    .line 1038
    invoke-direct {p0, p2}, Lcom/android/stk/StkAppService;->launchEventMessage(I)V

    .line 1040
    invoke-virtual {p1}, Lcom/android/internal/telephony/cat/CatCmdMessage;->isRefreshResetOrInit()Z

    move-result v8

    if-eqz v8, :cond_1

    .line 1041
    iget-object v8, p0, Lcom/android/stk/StkAppService;->mNotificationManager:Landroid/app/NotificationManager;

    invoke-direct {p0, p2}, Lcom/android/stk/StkAppService;->getNotificationId(I)I

    move-result v9

    invoke-virtual {v8, v9}, Landroid/app/NotificationManager;->cancel(I)V

    .line 1042
    iget-object v8, p0, Lcom/android/stk/StkAppService;->mStkContext:[Lcom/android/stk/StkAppService$StkContext;

    aget-object v8, v8, p2

    const/4 v9, 0x0

    invoke-static {v8, v9}, Lcom/android/stk/StkAppService$StkContext;->-set4(Lcom/android/stk/StkAppService$StkContext;Lcom/android/internal/telephony/cat/CatCmdMessage;)Lcom/android/internal/telephony/cat/CatCmdMessage;

    .line 1043
    const-string/jumbo v8, "Clean idle mode text due to refresh"

    invoke-static {p0, v8}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1047
    :pswitch_7
    iget-object v8, p0, Lcom/android/stk/StkAppService;->mStkContext:[Lcom/android/stk/StkAppService$StkContext;

    aget-object v8, v8, p2

    .line 1048
    iget-object v9, p0, Lcom/android/stk/StkAppService;->mStkContext:[Lcom/android/stk/StkAppService$StkContext;

    aget-object v9, v9, p2

    iget-object v9, v9, Lcom/android/stk/StkAppService$StkContext;->mCurrentCmd:Lcom/android/internal/telephony/cat/CatCmdMessage;

    invoke-virtual {v9}, Lcom/android/internal/telephony/cat/CatCmdMessage;->getBrowserSettings()Lcom/android/internal/telephony/cat/CatCmdMessage$BrowserSettings;

    move-result-object v9

    .line 1047
    iput-object v9, v8, Lcom/android/stk/StkAppService$StkContext;->mBrowserSettings:Lcom/android/internal/telephony/cat/CatCmdMessage$BrowserSettings;

    .line 1049
    iget-object v8, p0, Lcom/android/stk/StkAppService;->mStkContext:[Lcom/android/stk/StkAppService$StkContext;

    aget-object v8, v8, p2

    iget-object v8, v8, Lcom/android/stk/StkAppService$StkContext;->mBrowserSettings:Lcom/android/internal/telephony/cat/CatCmdMessage$BrowserSettings;

    invoke-direct {p0, v8}, Lcom/android/stk/StkAppService;->validateBrowserRequest(Lcom/android/internal/telephony/cat/CatCmdMessage$BrowserSettings;)Z

    move-result v8

    if-nez v8, :cond_10

    .line 1050
    const-string/jumbo v8, "Browser url property is not set - send error"

    invoke-static {p0, v8}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1051
    const/16 v8, 0x18

    const/4 v9, 0x1

    invoke-direct {p0, v8, p2, v9}, Lcom/android/stk/StkAppService;->sendResponse(IIZ)V

    goto/16 :goto_0

    .line 1053
    :cond_10
    iget-object v8, p0, Lcom/android/stk/StkAppService;->mStkContext:[Lcom/android/stk/StkAppService$StkContext;

    aget-object v8, v8, p2

    iget-object v8, v8, Lcom/android/stk/StkAppService$StkContext;->mCurrentCmd:Lcom/android/internal/telephony/cat/CatCmdMessage;

    invoke-virtual {v8}, Lcom/android/internal/telephony/cat/CatCmdMessage;->geTextMessage()Lcom/android/internal/telephony/cat/TextMessage;

    move-result-object v0

    .line 1054
    .local v0, "alphaId":Lcom/android/internal/telephony/cat/TextMessage;
    if-eqz v0, :cond_11

    iget-object v8, v0, Lcom/android/internal/telephony/cat/TextMessage;->text:Ljava/lang/String;

    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_12

    .line 1057
    :cond_11
    const-string/jumbo v8, "user confirmation is not currently needed.\nsupressing confirmation dialogue and confirming silently..."

    invoke-static {p0, v8}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1059
    iget-object v8, p0, Lcom/android/stk/StkAppService;->mStkContext:[Lcom/android/stk/StkAppService$StkContext;

    aget-object v8, v8, p2

    const/4 v9, 0x1

    iput-boolean v9, v8, Lcom/android/stk/StkAppService$StkContext;->launchBrowser:Z

    .line 1060
    const/16 v8, 0xd

    const/4 v9, 0x1

    invoke-direct {p0, v8, p2, v9}, Lcom/android/stk/StkAppService;->sendResponse(IIZ)V

    goto/16 :goto_0

    .line 1062
    :cond_12
    invoke-direct {p0, v0, p2}, Lcom/android/stk/StkAppService;->launchConfirmationDialog(Lcom/android/internal/telephony/cat/TextMessage;I)V

    goto/16 :goto_0

    .line 1067
    .end local v0    # "alphaId":Lcom/android/internal/telephony/cat/TextMessage;
    :pswitch_8
    iget-object v8, p0, Lcom/android/stk/StkAppService;->mStkContext:[Lcom/android/stk/StkAppService$StkContext;

    aget-object v8, v8, p2

    iget-object v8, v8, Lcom/android/stk/StkAppService$StkContext;->mCurrentCmd:Lcom/android/internal/telephony/cat/CatCmdMessage;

    invoke-virtual {v8}, Lcom/android/internal/telephony/cat/CatCmdMessage;->getCallSettings()Lcom/android/internal/telephony/cat/CatCmdMessage$CallSettings;

    move-result-object v8

    iget-object v5, v8, Lcom/android/internal/telephony/cat/CatCmdMessage$CallSettings;->confirmMsg:Lcom/android/internal/telephony/cat/TextMessage;

    .line 1068
    .local v5, "mesg":Lcom/android/internal/telephony/cat/TextMessage;
    if-eqz v5, :cond_14

    iget-object v8, v5, Lcom/android/internal/telephony/cat/TextMessage;->text:Ljava/lang/String;

    if-eqz v8, :cond_13

    iget-object v8, v5, Lcom/android/internal/telephony/cat/TextMessage;->text:Ljava/lang/String;

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v8

    if-nez v8, :cond_14

    .line 1069
    :cond_13
    invoke-virtual {p0}, Lcom/android/stk/StkAppService;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v9, 0x7f06000d

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v8

    iput-object v8, v5, Lcom/android/internal/telephony/cat/TextMessage;->text:Ljava/lang/String;

    .line 1071
    :cond_14
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "SET_UP_CALL mesg.text "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, v5, Lcom/android/internal/telephony/cat/TextMessage;->text:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {p0, v8}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1072
    invoke-direct {p0, v5, p2}, Lcom/android/stk/StkAppService;->launchConfirmationDialog(Lcom/android/internal/telephony/cat/TextMessage;I)V

    goto/16 :goto_0

    .line 1075
    .end local v5    # "mesg":Lcom/android/internal/telephony/cat/TextMessage;
    :pswitch_9
    invoke-direct {p0, p2}, Lcom/android/stk/StkAppService;->handlePlayTone(I)V

    goto/16 :goto_0

    .line 1078
    :pswitch_a
    invoke-direct {p0, p2}, Lcom/android/stk/StkAppService;->launchOpenChannelDialog(I)V

    goto/16 :goto_0

    .line 1083
    :pswitch_b
    iget-object v8, p0, Lcom/android/stk/StkAppService;->mStkContext:[Lcom/android/stk/StkAppService$StkContext;

    aget-object v8, v8, p2

    iget-object v8, v8, Lcom/android/stk/StkAppService$StkContext;->mCurrentCmd:Lcom/android/internal/telephony/cat/CatCmdMessage;

    invoke-virtual {v8}, Lcom/android/internal/telephony/cat/CatCmdMessage;->geTextMessage()Lcom/android/internal/telephony/cat/TextMessage;

    move-result-object v3

    .line 1085
    .local v3, "m":Lcom/android/internal/telephony/cat/TextMessage;
    if-eqz v3, :cond_15

    iget-object v8, v3, Lcom/android/internal/telephony/cat/TextMessage;->text:Ljava/lang/String;

    if-nez v8, :cond_15

    .line 1086
    invoke-static {}, Lcom/android/stk/StkAppService;->-getcom-android-internal-telephony-cat-AppInterface$CommandTypeSwitchesValues()[I

    move-result-object v8

    invoke-virtual {p1}, Lcom/android/internal/telephony/cat/CatCmdMessage;->getCmdType()Lcom/android/internal/telephony/cat/AppInterface$CommandType;

    move-result-object v9

    invoke-virtual {v9}, Lcom/android/internal/telephony/cat/AppInterface$CommandType;->ordinal()I

    move-result v9

    aget v8, v8, v9

    sparse-switch v8, :sswitch_data_0

    .line 1101
    :cond_15
    :goto_6
    invoke-direct {p0, p2}, Lcom/android/stk/StkAppService;->launchEventMessage(I)V

    goto/16 :goto_0

    .line 1088
    :sswitch_0
    invoke-virtual {p0}, Lcom/android/stk/StkAppService;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v9, 0x7f060016

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v8

    iput-object v8, v3, Lcom/android/internal/telephony/cat/TextMessage;->text:Ljava/lang/String;

    goto :goto_6

    .line 1091
    :sswitch_1
    invoke-virtual {p0}, Lcom/android/stk/StkAppService;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v9, 0x7f060015

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v8

    iput-object v8, v3, Lcom/android/internal/telephony/cat/TextMessage;->text:Ljava/lang/String;

    goto :goto_6

    .line 1094
    :sswitch_2
    invoke-virtual {p0}, Lcom/android/stk/StkAppService;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v9, 0x7f060014

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v8

    iput-object v8, v3, Lcom/android/internal/telephony/cat/TextMessage;->text:Ljava/lang/String;

    goto :goto_6

    .line 1104
    .end local v3    # "m":Lcom/android/internal/telephony/cat/TextMessage;
    :pswitch_c
    iget-object v8, p0, Lcom/android/stk/StkAppService;->mStkContext:[Lcom/android/stk/StkAppService$StkContext;

    aget-object v8, v8, p2

    .line 1105
    iget-object v9, p0, Lcom/android/stk/StkAppService;->mStkContext:[Lcom/android/stk/StkAppService$StkContext;

    aget-object v9, v9, p2

    iget-object v9, v9, Lcom/android/stk/StkAppService$StkContext;->mCurrentCmd:Lcom/android/internal/telephony/cat/CatCmdMessage;

    invoke-virtual {v9}, Lcom/android/internal/telephony/cat/CatCmdMessage;->getSetEventList()Lcom/android/internal/telephony/cat/CatCmdMessage$SetupEventListSettings;

    move-result-object v9

    .line 1104
    invoke-static {v8, v9}, Lcom/android/stk/StkAppService$StkContext;->-set6(Lcom/android/stk/StkAppService$StkContext;Lcom/android/internal/telephony/cat/CatCmdMessage$SetupEventListSettings;)Lcom/android/internal/telephony/cat/CatCmdMessage$SetupEventListSettings;

    .line 1106
    iget-object v8, p0, Lcom/android/stk/StkAppService;->mStkContext:[Lcom/android/stk/StkAppService$StkContext;

    aget-object v8, v8, p2

    iget-object v9, p0, Lcom/android/stk/StkAppService;->mStkContext:[Lcom/android/stk/StkAppService$StkContext;

    aget-object v9, v9, p2

    iget-object v9, v9, Lcom/android/stk/StkAppService$StkContext;->mCurrentCmd:Lcom/android/internal/telephony/cat/CatCmdMessage;

    invoke-static {v8, v9}, Lcom/android/stk/StkAppService$StkContext;->-set1(Lcom/android/stk/StkAppService$StkContext;Lcom/android/internal/telephony/cat/CatCmdMessage;)Lcom/android/internal/telephony/cat/CatCmdMessage;

    .line 1107
    iget-object v8, p0, Lcom/android/stk/StkAppService;->mStkContext:[Lcom/android/stk/StkAppService$StkContext;

    aget-object v8, v8, p2

    iget-object v9, p0, Lcom/android/stk/StkAppService;->mStkContext:[Lcom/android/stk/StkAppService$StkContext;

    aget-object v9, v9, p2

    iget-object v9, v9, Lcom/android/stk/StkAppService$StkContext;->mMainCmd:Lcom/android/internal/telephony/cat/CatCmdMessage;

    iput-object v9, v8, Lcom/android/stk/StkAppService$StkContext;->mCurrentCmd:Lcom/android/internal/telephony/cat/CatCmdMessage;

    .line 1108
    invoke-direct {p0}, Lcom/android/stk/StkAppService;->isScreenIdle()Z

    move-result v8

    if-eqz v8, :cond_1

    .line 1109
    const-string/jumbo v8, " Check if IDLE_SCREEN_AVAILABLE_EVENT is present in List"

    invoke-static {p0, v8}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1110
    const/4 v8, 0x5

    const/4 v9, 0x0

    invoke-direct {p0, v8, v9, p2}, Lcom/android/stk/StkAppService;->checkForSetupEvent(ILandroid/os/Bundle;I)V

    goto/16 :goto_0

    .line 1114
    :pswitch_d
    const/4 v7, 0x0

    .line 1115
    const-string/jumbo v8, "Broadcasting STK ACTIVATE intent"

    invoke-static {p0, v8}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1116
    invoke-direct {p0, p2}, Lcom/android/stk/StkAppService;->broadcastActivateIntent(I)V

    goto/16 :goto_0

    .line 1124
    .end local v7    # "waitForUsersResponse":Z
    :cond_16
    iget-object v8, p0, Lcom/android/stk/StkAppService;->mStkContext:[Lcom/android/stk/StkAppService$StkContext;

    aget-object v8, v8, p2

    const/4 v9, 0x0

    iput-boolean v9, v8, Lcom/android/stk/StkAppService$StkContext;->mCmdInProgress:Z

    goto/16 :goto_1

    .line 927
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_d
        :pswitch_b
        :pswitch_0
        :pswitch_5
        :pswitch_3
        :pswitch_3
        :pswitch_7
        :pswitch_a
        :pswitch_9
        :pswitch_b
        :pswitch_6
        :pswitch_1
        :pswitch_b
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_8
        :pswitch_c
        :pswitch_4
        :pswitch_2
    .end packed-switch

    .line 1086
    :sswitch_data_0
    .sparse-switch
        0x2 -> :sswitch_0
        0xa -> :sswitch_1
        0xd -> :sswitch_2
    .end sparse-switch
.end method

.method private handleCmdResponse(Landroid/os/Bundle;I)V
    .locals 11
    .param p1, "args"    # Landroid/os/Bundle;
    .param p2, "slotId"    # I

    .prologue
    const/4 v10, 0x0

    .line 1137
    sget-object v7, Lcom/android/stk/StkAppService;->LOG_TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "handleCmdResponse, sim id: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1138
    iget-object v7, p0, Lcom/android/stk/StkAppService;->mStkContext:[Lcom/android/stk/StkAppService$StkContext;

    aget-object v7, v7, p2

    iget-object v7, v7, Lcom/android/stk/StkAppService$StkContext;->mCurrentCmd:Lcom/android/internal/telephony/cat/CatCmdMessage;

    if-nez v7, :cond_0

    .line 1139
    return-void

    .line 1142
    :cond_0
    invoke-static {p2}, Lcom/android/internal/telephony/PhoneFactory;->getPhone(I)Lcom/android/internal/telephony/Phone;

    move-result-object v7

    invoke-virtual {v7}, Lcom/android/internal/telephony/Phone;->getIccCard()Lcom/android/internal/telephony/IccCard;

    move-result-object v7

    invoke-interface {v7}, Lcom/android/internal/telephony/IccCard;->hasIccCard()Z

    move-result v7

    if-nez v7, :cond_1

    .line 1143
    sget-object v7, Lcom/android/stk/StkAppService;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v8, "Ignore response when card is absent"

    invoke-static {v7, v8}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1144
    return-void

    .line 1147
    :cond_1
    iget-object v7, p0, Lcom/android/stk/StkAppService;->mStkService:[Lcom/android/internal/telephony/cat/AppInterface;

    aget-object v7, v7, p2

    if-nez v7, :cond_2

    .line 1148
    iget-object v7, p0, Lcom/android/stk/StkAppService;->mStkService:[Lcom/android/internal/telephony/cat/AppInterface;

    invoke-static {p2}, Lcom/android/internal/telephony/cat/CatService;->getInstance(I)Lcom/android/internal/telephony/cat/AppInterface;

    move-result-object v8

    aput-object v8, v7, p2

    .line 1149
    iget-object v7, p0, Lcom/android/stk/StkAppService;->mStkService:[Lcom/android/internal/telephony/cat/AppInterface;

    aget-object v7, v7, p2

    if-nez v7, :cond_2

    .line 1152
    sget-object v7, Lcom/android/stk/StkAppService;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v8, "Exception! mStkService is null when we need to send response."

    invoke-static {v7, v8}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1153
    new-instance v7, Ljava/lang/RuntimeException;

    const-string/jumbo v8, "mStkService is null when we need to send response"

    invoke-direct {v7, v8}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 1157
    :cond_2
    new-instance v5, Lcom/android/internal/telephony/cat/CatResponseMessage;

    iget-object v7, p0, Lcom/android/stk/StkAppService;->mStkContext:[Lcom/android/stk/StkAppService$StkContext;

    aget-object v7, v7, p2

    iget-object v7, v7, Lcom/android/stk/StkAppService$StkContext;->mCurrentCmd:Lcom/android/internal/telephony/cat/CatCmdMessage;

    invoke-direct {v5, v7}, Lcom/android/internal/telephony/cat/CatResponseMessage;-><init>(Lcom/android/internal/telephony/cat/CatCmdMessage;)V

    .line 1160
    .local v5, "resMsg":Lcom/android/internal/telephony/cat/CatResponseMessage;
    const-string/jumbo v7, "help"

    const/4 v8, 0x0

    invoke-virtual {p1, v7, v8}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    .line 1161
    .local v2, "helpRequired":Z
    const/4 v1, 0x0

    .line 1163
    .local v1, "confirmed":Z
    const-string/jumbo v7, "response id"

    invoke-virtual {p1, v7}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v7

    packed-switch v7, :pswitch_data_0

    .line 1287
    :pswitch_0
    sget-object v7, Lcom/android/stk/StkAppService;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v8, "Unknown result id"

    invoke-static {v7, v8}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1288
    return-void

    .line 1165
    :pswitch_1
    sget-object v7, Lcom/android/stk/StkAppService;->LOG_TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "MENU_SELECTION="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Lcom/android/stk/StkAppService;->mStkContext:[Lcom/android/stk/StkAppService$StkContext;

    aget-object v9, v9, p2

    iget-object v9, v9, Lcom/android/stk/StkAppService$StkContext;->mCurrentMenuCmd:Lcom/android/internal/telephony/cat/CatCmdMessage;

    invoke-virtual {v9}, Lcom/android/internal/telephony/cat/CatCmdMessage;->getCmdType()Lcom/android/internal/telephony/cat/AppInterface$CommandType;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1167
    const-string/jumbo v7, "menu selection"

    invoke-virtual {p1, v7}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v4

    .line 1168
    .local v4, "menuSelection":I
    invoke-static {}, Lcom/android/stk/StkAppService;->-getcom-android-internal-telephony-cat-AppInterface$CommandTypeSwitchesValues()[I

    move-result-object v7

    iget-object v8, p0, Lcom/android/stk/StkAppService;->mStkContext:[Lcom/android/stk/StkAppService$StkContext;

    aget-object v8, v8, p2

    iget-object v8, v8, Lcom/android/stk/StkAppService$StkContext;->mCurrentMenuCmd:Lcom/android/internal/telephony/cat/CatCmdMessage;

    invoke-virtual {v8}, Lcom/android/internal/telephony/cat/CatCmdMessage;->getCmdType()Lcom/android/internal/telephony/cat/AppInterface$CommandType;

    move-result-object v8

    invoke-virtual {v8}, Lcom/android/internal/telephony/cat/AppInterface$CommandType;->ordinal()I

    move-result v8

    aget v7, v7, v8

    sparse-switch v7, :sswitch_data_0

    .line 1291
    .end local v1    # "confirmed":Z
    .end local v4    # "menuSelection":I
    :cond_3
    :goto_0
    iget-object v7, p0, Lcom/android/stk/StkAppService;->mStkContext:[Lcom/android/stk/StkAppService$StkContext;

    aget-object v7, v7, p2

    iget-object v7, v7, Lcom/android/stk/StkAppService$StkContext;->mCurrentCmd:Lcom/android/internal/telephony/cat/CatCmdMessage;

    if-eqz v7, :cond_4

    .line 1292
    iget-object v7, p0, Lcom/android/stk/StkAppService;->mStkContext:[Lcom/android/stk/StkAppService$StkContext;

    aget-object v7, v7, p2

    iget-object v7, v7, Lcom/android/stk/StkAppService$StkContext;->mCurrentCmd:Lcom/android/internal/telephony/cat/CatCmdMessage;

    invoke-virtual {v7}, Lcom/android/internal/telephony/cat/CatCmdMessage;->getCmdType()Lcom/android/internal/telephony/cat/AppInterface$CommandType;

    move-result-object v7

    if-eqz v7, :cond_4

    .line 1293
    sget-object v7, Lcom/android/stk/StkAppService;->LOG_TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "handleCmdResponse- cmdName["

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    .line 1294
    iget-object v9, p0, Lcom/android/stk/StkAppService;->mStkContext:[Lcom/android/stk/StkAppService$StkContext;

    aget-object v9, v9, p2

    iget-object v9, v9, Lcom/android/stk/StkAppService$StkContext;->mCurrentCmd:Lcom/android/internal/telephony/cat/CatCmdMessage;

    invoke-virtual {v9}, Lcom/android/internal/telephony/cat/CatCmdMessage;->getCmdType()Lcom/android/internal/telephony/cat/AppInterface$CommandType;

    move-result-object v9

    invoke-virtual {v9}, Lcom/android/internal/telephony/cat/AppInterface$CommandType;->name()Ljava/lang/String;

    move-result-object v9

    .line 1293
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    .line 1294
    const-string/jumbo v9, "]"

    .line 1293
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1296
    :cond_4
    iget-object v7, p0, Lcom/android/stk/StkAppService;->mStkService:[Lcom/android/internal/telephony/cat/AppInterface;

    aget-object v7, v7, p2

    invoke-interface {v7, v5}, Lcom/android/internal/telephony/cat/AppInterface;->onCmdResponse(Lcom/android/internal/telephony/cat/CatResponseMessage;)V

    .line 1136
    return-void

    .line 1171
    .restart local v1    # "confirmed":Z
    .restart local v4    # "menuSelection":I
    :sswitch_0
    iget-object v7, p0, Lcom/android/stk/StkAppService;->mStkContext:[Lcom/android/stk/StkAppService$StkContext;

    aget-object v7, v7, p2

    invoke-direct {p0, v4, p2}, Lcom/android/stk/StkAppService;->getItemName(II)Ljava/lang/String;

    move-result-object v8

    iput-object v8, v7, Lcom/android/stk/StkAppService$StkContext;->lastSelectedItem:Ljava/lang/String;

    .line 1172
    if-eqz v2, :cond_5

    .line 1173
    sget-object v7, Lcom/android/internal/telephony/cat/ResultCode;->HELP_INFO_REQUIRED:Lcom/android/internal/telephony/cat/ResultCode;

    invoke-virtual {v5, v7}, Lcom/android/internal/telephony/cat/CatResponseMessage;->setResultCode(Lcom/android/internal/telephony/cat/ResultCode;)V

    .line 1178
    :goto_1
    invoke-virtual {v5, v4}, Lcom/android/internal/telephony/cat/CatResponseMessage;->setMenuSelection(I)V

    goto :goto_0

    .line 1175
    :cond_5
    iget-object v7, p0, Lcom/android/stk/StkAppService;->mStkContext:[Lcom/android/stk/StkAppService$StkContext;

    aget-object v7, v7, p2

    iget-object v7, v7, Lcom/android/stk/StkAppService$StkContext;->mCurrentCmd:Lcom/android/internal/telephony/cat/CatCmdMessage;

    invoke-virtual {v7}, Lcom/android/internal/telephony/cat/CatCmdMessage;->hasIconLoadFailed()Z

    move-result v7

    if-eqz v7, :cond_6

    .line 1176
    sget-object v7, Lcom/android/internal/telephony/cat/ResultCode;->PRFRMD_ICON_NOT_DISPLAYED:Lcom/android/internal/telephony/cat/ResultCode;

    .line 1175
    :goto_2
    invoke-virtual {v5, v7}, Lcom/android/internal/telephony/cat/CatResponseMessage;->setResultCode(Lcom/android/internal/telephony/cat/ResultCode;)V

    goto :goto_1

    .line 1176
    :cond_6
    sget-object v7, Lcom/android/internal/telephony/cat/ResultCode;->OK:Lcom/android/internal/telephony/cat/ResultCode;

    goto :goto_2

    .line 1183
    .end local v4    # "menuSelection":I
    :pswitch_2
    sget-object v7, Lcom/android/stk/StkAppService;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v8, "RES_ID_INPUT"

    invoke-static {v7, v8}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1184
    const-string/jumbo v7, "input"

    invoke-virtual {p1, v7}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 1185
    .local v3, "input":Ljava/lang/String;
    if-eqz v3, :cond_7

    iget-object v7, p0, Lcom/android/stk/StkAppService;->mStkContext:[Lcom/android/stk/StkAppService$StkContext;

    aget-object v7, v7, p2

    iget-object v7, v7, Lcom/android/stk/StkAppService$StkContext;->mCurrentCmd:Lcom/android/internal/telephony/cat/CatCmdMessage;

    invoke-virtual {v7}, Lcom/android/internal/telephony/cat/CatCmdMessage;->geInput()Lcom/android/internal/telephony/cat/Input;

    move-result-object v7

    if-eqz v7, :cond_7

    .line 1186
    iget-object v7, p0, Lcom/android/stk/StkAppService;->mStkContext:[Lcom/android/stk/StkAppService$StkContext;

    aget-object v7, v7, p2

    iget-object v7, v7, Lcom/android/stk/StkAppService$StkContext;->mCurrentCmd:Lcom/android/internal/telephony/cat/CatCmdMessage;

    invoke-virtual {v7}, Lcom/android/internal/telephony/cat/CatCmdMessage;->geInput()Lcom/android/internal/telephony/cat/Input;

    move-result-object v7

    iget-boolean v7, v7, Lcom/android/internal/telephony/cat/Input;->yesNo:Z

    .line 1185
    if-eqz v7, :cond_7

    .line 1188
    const-string/jumbo v7, "YES"

    .line 1187
    invoke-virtual {v3, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    .line 1189
    .local v6, "yesNoSelection":Z
    invoke-virtual {v5, v6}, Lcom/android/internal/telephony/cat/CatResponseMessage;->setYesNo(Z)V

    goto/16 :goto_0

    .line 1191
    .end local v6    # "yesNoSelection":Z
    :cond_7
    if-eqz v2, :cond_8

    .line 1192
    sget-object v7, Lcom/android/internal/telephony/cat/ResultCode;->HELP_INFO_REQUIRED:Lcom/android/internal/telephony/cat/ResultCode;

    invoke-virtual {v5, v7}, Lcom/android/internal/telephony/cat/CatResponseMessage;->setResultCode(Lcom/android/internal/telephony/cat/ResultCode;)V

    goto/16 :goto_0

    .line 1194
    :cond_8
    iget-object v7, p0, Lcom/android/stk/StkAppService;->mStkContext:[Lcom/android/stk/StkAppService$StkContext;

    aget-object v7, v7, p2

    iget-object v7, v7, Lcom/android/stk/StkAppService$StkContext;->mCurrentCmd:Lcom/android/internal/telephony/cat/CatCmdMessage;

    invoke-virtual {v7}, Lcom/android/internal/telephony/cat/CatCmdMessage;->hasIconLoadFailed()Z

    move-result v7

    if-eqz v7, :cond_9

    .line 1195
    sget-object v7, Lcom/android/internal/telephony/cat/ResultCode;->PRFRMD_ICON_NOT_DISPLAYED:Lcom/android/internal/telephony/cat/ResultCode;

    .line 1194
    :goto_3
    invoke-virtual {v5, v7}, Lcom/android/internal/telephony/cat/CatResponseMessage;->setResultCode(Lcom/android/internal/telephony/cat/ResultCode;)V

    .line 1196
    invoke-virtual {v5, v3}, Lcom/android/internal/telephony/cat/CatResponseMessage;->setInput(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1195
    :cond_9
    sget-object v7, Lcom/android/internal/telephony/cat/ResultCode;->OK:Lcom/android/internal/telephony/cat/ResultCode;

    goto :goto_3

    .line 1201
    .end local v3    # "input":Ljava/lang/String;
    :pswitch_3
    const-string/jumbo v7, "RES_ID_CONFIRM"

    invoke-static {p0, v7}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1202
    const-string/jumbo v7, "confirm"

    invoke-virtual {p1, v7}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    .line 1203
    .local v1, "confirmed":Z
    invoke-static {}, Lcom/android/stk/StkAppService;->-getcom-android-internal-telephony-cat-AppInterface$CommandTypeSwitchesValues()[I

    move-result-object v7

    iget-object v8, p0, Lcom/android/stk/StkAppService;->mStkContext:[Lcom/android/stk/StkAppService$StkContext;

    aget-object v8, v8, p2

    iget-object v8, v8, Lcom/android/stk/StkAppService$StkContext;->mCurrentCmd:Lcom/android/internal/telephony/cat/CatCmdMessage;

    invoke-virtual {v8}, Lcom/android/internal/telephony/cat/CatCmdMessage;->getCmdType()Lcom/android/internal/telephony/cat/AppInterface$CommandType;

    move-result-object v8

    invoke-virtual {v8}, Lcom/android/internal/telephony/cat/AppInterface$CommandType;->ordinal()I

    move-result v8

    aget v7, v7, v8

    sparse-switch v7, :sswitch_data_1

    goto/16 :goto_0

    .line 1205
    :sswitch_1
    if-eqz v1, :cond_b

    .line 1206
    iget-object v7, p0, Lcom/android/stk/StkAppService;->mStkContext:[Lcom/android/stk/StkAppService$StkContext;

    aget-object v7, v7, p2

    iget-object v7, v7, Lcom/android/stk/StkAppService$StkContext;->mCurrentCmd:Lcom/android/internal/telephony/cat/CatCmdMessage;

    invoke-virtual {v7}, Lcom/android/internal/telephony/cat/CatCmdMessage;->hasIconLoadFailed()Z

    move-result v7

    if-eqz v7, :cond_a

    .line 1207
    sget-object v7, Lcom/android/internal/telephony/cat/ResultCode;->PRFRMD_ICON_NOT_DISPLAYED:Lcom/android/internal/telephony/cat/ResultCode;

    .line 1206
    :goto_4
    invoke-virtual {v5, v7}, Lcom/android/internal/telephony/cat/CatResponseMessage;->setResultCode(Lcom/android/internal/telephony/cat/ResultCode;)V

    goto/16 :goto_0

    .line 1207
    :cond_a
    sget-object v7, Lcom/android/internal/telephony/cat/ResultCode;->OK:Lcom/android/internal/telephony/cat/ResultCode;

    goto :goto_4

    .line 1209
    :cond_b
    sget-object v7, Lcom/android/internal/telephony/cat/ResultCode;->UICC_SESSION_TERM_BY_USER:Lcom/android/internal/telephony/cat/ResultCode;

    invoke-virtual {v5, v7}, Lcom/android/internal/telephony/cat/CatResponseMessage;->setResultCode(Lcom/android/internal/telephony/cat/ResultCode;)V

    goto/16 :goto_0

    .line 1213
    :sswitch_2
    if-eqz v1, :cond_c

    sget-object v7, Lcom/android/internal/telephony/cat/ResultCode;->OK:Lcom/android/internal/telephony/cat/ResultCode;

    :goto_5
    invoke-virtual {v5, v7}, Lcom/android/internal/telephony/cat/CatResponseMessage;->setResultCode(Lcom/android/internal/telephony/cat/ResultCode;)V

    .line 1215
    if-eqz v1, :cond_3

    .line 1216
    iget-object v7, p0, Lcom/android/stk/StkAppService;->mStkContext:[Lcom/android/stk/StkAppService$StkContext;

    aget-object v7, v7, p2

    const/4 v8, 0x1

    iput-boolean v8, v7, Lcom/android/stk/StkAppService$StkContext;->launchBrowser:Z

    .line 1217
    iget-object v7, p0, Lcom/android/stk/StkAppService;->mStkContext:[Lcom/android/stk/StkAppService$StkContext;

    aget-object v7, v7, p2

    .line 1218
    iget-object v8, p0, Lcom/android/stk/StkAppService;->mStkContext:[Lcom/android/stk/StkAppService$StkContext;

    aget-object v8, v8, p2

    iget-object v8, v8, Lcom/android/stk/StkAppService$StkContext;->mCurrentCmd:Lcom/android/internal/telephony/cat/CatCmdMessage;

    invoke-virtual {v8}, Lcom/android/internal/telephony/cat/CatCmdMessage;->getBrowserSettings()Lcom/android/internal/telephony/cat/CatCmdMessage$BrowserSettings;

    move-result-object v8

    .line 1217
    iput-object v8, v7, Lcom/android/stk/StkAppService$StkContext;->mBrowserSettings:Lcom/android/internal/telephony/cat/CatCmdMessage$BrowserSettings;

    goto/16 :goto_0

    .line 1214
    :cond_c
    sget-object v7, Lcom/android/internal/telephony/cat/ResultCode;->UICC_SESSION_TERM_BY_USER:Lcom/android/internal/telephony/cat/ResultCode;

    goto :goto_5

    .line 1222
    :sswitch_3
    sget-object v7, Lcom/android/internal/telephony/cat/ResultCode;->OK:Lcom/android/internal/telephony/cat/ResultCode;

    invoke-virtual {v5, v7}, Lcom/android/internal/telephony/cat/CatResponseMessage;->setResultCode(Lcom/android/internal/telephony/cat/ResultCode;)V

    .line 1223
    invoke-virtual {v5, v1}, Lcom/android/internal/telephony/cat/CatResponseMessage;->setConfirmation(Z)V

    .line 1224
    if-eqz v1, :cond_3

    .line 1225
    const-string/jumbo v7, "Going back to mainMenu before starting a call."

    invoke-static {p0, v7}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1226
    invoke-direct {p0, v10, p2}, Lcom/android/stk/StkAppService;->launchMenuActivity(Lcom/android/internal/telephony/cat/Menu;I)V

    .line 1228
    iget-object v7, p0, Lcom/android/stk/StkAppService;->mStkContext:[Lcom/android/stk/StkAppService$StkContext;

    aget-object v7, v7, p2

    iget-object v7, v7, Lcom/android/stk/StkAppService$StkContext;->mCurrentCmd:Lcom/android/internal/telephony/cat/CatCmdMessage;

    invoke-virtual {v7}, Lcom/android/internal/telephony/cat/CatCmdMessage;->getCallSettings()Lcom/android/internal/telephony/cat/CatCmdMessage$CallSettings;

    move-result-object v7

    iget-object v7, v7, Lcom/android/internal/telephony/cat/CatCmdMessage$CallSettings;->callMsg:Lcom/android/internal/telephony/cat/TextMessage;

    .line 1227
    invoke-direct {p0, p2, v7}, Lcom/android/stk/StkAppService;->launchEventMessage(ILcom/android/internal/telephony/cat/TextMessage;)V

    goto/16 :goto_0

    .line 1234
    .local v1, "confirmed":Z
    :pswitch_4
    sget-object v7, Lcom/android/internal/telephony/cat/ResultCode;->OK:Lcom/android/internal/telephony/cat/ResultCode;

    invoke-virtual {v5, v7}, Lcom/android/internal/telephony/cat/CatResponseMessage;->setResultCode(Lcom/android/internal/telephony/cat/ResultCode;)V

    goto/16 :goto_0

    .line 1237
    :pswitch_5
    sget-object v7, Lcom/android/stk/StkAppService;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v8, "RES_ID_BACKWARD"

    invoke-static {v7, v8}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1238
    sget-object v7, Lcom/android/internal/telephony/cat/ResultCode;->BACKWARD_MOVE_BY_USER:Lcom/android/internal/telephony/cat/ResultCode;

    invoke-virtual {v5, v7}, Lcom/android/internal/telephony/cat/CatResponseMessage;->setResultCode(Lcom/android/internal/telephony/cat/ResultCode;)V

    goto/16 :goto_0

    .line 1241
    :pswitch_6
    sget-object v7, Lcom/android/stk/StkAppService;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v8, "RES_ID_END_SESSION"

    invoke-static {v7, v8}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1242
    sget-object v7, Lcom/android/internal/telephony/cat/ResultCode;->UICC_SESSION_TERM_BY_USER:Lcom/android/internal/telephony/cat/ResultCode;

    invoke-virtual {v5, v7}, Lcom/android/internal/telephony/cat/CatResponseMessage;->setResultCode(Lcom/android/internal/telephony/cat/ResultCode;)V

    goto/16 :goto_0

    .line 1245
    :pswitch_7
    sget-object v7, Lcom/android/stk/StkAppService;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v8, "RES_ID_TIMEOUT"

    invoke-static {v7, v8}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1250
    iget-object v7, p0, Lcom/android/stk/StkAppService;->mStkContext:[Lcom/android/stk/StkAppService$StkContext;

    aget-object v7, v7, p2

    iget-object v7, v7, Lcom/android/stk/StkAppService$StkContext;->mCurrentCmd:Lcom/android/internal/telephony/cat/CatCmdMessage;

    invoke-virtual {v7}, Lcom/android/internal/telephony/cat/CatCmdMessage;->getCmdType()Lcom/android/internal/telephony/cat/AppInterface$CommandType;

    move-result-object v7

    invoke-virtual {v7}, Lcom/android/internal/telephony/cat/AppInterface$CommandType;->value()I

    move-result v7

    .line 1251
    sget-object v8, Lcom/android/internal/telephony/cat/AppInterface$CommandType;->DISPLAY_TEXT:Lcom/android/internal/telephony/cat/AppInterface$CommandType;

    invoke-virtual {v8}, Lcom/android/internal/telephony/cat/AppInterface$CommandType;->value()I

    move-result v8

    .line 1250
    if-ne v7, v8, :cond_d

    .line 1252
    iget-object v7, p0, Lcom/android/stk/StkAppService;->mStkContext:[Lcom/android/stk/StkAppService$StkContext;

    aget-object v7, v7, p2

    iget-object v7, v7, Lcom/android/stk/StkAppService$StkContext;->mCurrentCmd:Lcom/android/internal/telephony/cat/CatCmdMessage;

    invoke-virtual {v7}, Lcom/android/internal/telephony/cat/CatCmdMessage;->geTextMessage()Lcom/android/internal/telephony/cat/TextMessage;

    move-result-object v7

    iget-boolean v7, v7, Lcom/android/internal/telephony/cat/TextMessage;->userClear:Z

    if-nez v7, :cond_d

    .line 1253
    sget-object v7, Lcom/android/internal/telephony/cat/ResultCode;->OK:Lcom/android/internal/telephony/cat/ResultCode;

    invoke-virtual {v5, v7}, Lcom/android/internal/telephony/cat/CatResponseMessage;->setResultCode(Lcom/android/internal/telephony/cat/ResultCode;)V

    goto/16 :goto_0

    .line 1257
    :cond_d
    sget-object v7, Lcom/android/internal/telephony/cat/ResultCode;->UICC_SESSION_TERM_BY_USER:Lcom/android/internal/telephony/cat/ResultCode;

    invoke-virtual {v5, v7}, Lcom/android/internal/telephony/cat/CatResponseMessage;->setResultCode(Lcom/android/internal/telephony/cat/ResultCode;)V

    goto/16 :goto_0

    .line 1261
    :pswitch_8
    const-string/jumbo v7, "choice"

    invoke-virtual {p1, v7}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    .line 1262
    .local v0, "choice":I
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "User Choice="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {p0, v7}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1263
    packed-switch v0, :pswitch_data_1

    .line 1273
    :goto_6
    iget-object v7, p0, Lcom/android/stk/StkAppService;->mStkContext:[Lcom/android/stk/StkAppService$StkContext;

    aget-object v7, v7, p2

    iget-object v7, v7, Lcom/android/stk/StkAppService$StkContext;->mCurrentCmd:Lcom/android/internal/telephony/cat/CatCmdMessage;

    invoke-virtual {v7}, Lcom/android/internal/telephony/cat/CatCmdMessage;->getCmdType()Lcom/android/internal/telephony/cat/AppInterface$CommandType;

    move-result-object v7

    invoke-virtual {v7}, Lcom/android/internal/telephony/cat/AppInterface$CommandType;->value()I

    move-result v7

    .line 1274
    sget-object v8, Lcom/android/internal/telephony/cat/AppInterface$CommandType;->OPEN_CHANNEL:Lcom/android/internal/telephony/cat/AppInterface$CommandType;

    invoke-virtual {v8}, Lcom/android/internal/telephony/cat/AppInterface$CommandType;->value()I

    move-result v8

    .line 1273
    if-ne v7, v8, :cond_3

    .line 1275
    invoke-virtual {v5, v1}, Lcom/android/internal/telephony/cat/CatResponseMessage;->setConfirmation(Z)V

    goto/16 :goto_0

    .line 1265
    :pswitch_9
    sget-object v7, Lcom/android/internal/telephony/cat/ResultCode;->OK:Lcom/android/internal/telephony/cat/ResultCode;

    invoke-virtual {v5, v7}, Lcom/android/internal/telephony/cat/CatResponseMessage;->setResultCode(Lcom/android/internal/telephony/cat/ResultCode;)V

    .line 1266
    const/4 v1, 0x1

    .line 1267
    goto :goto_6

    .line 1269
    :pswitch_a
    sget-object v7, Lcom/android/internal/telephony/cat/ResultCode;->USER_NOT_ACCEPT:Lcom/android/internal/telephony/cat/ResultCode;

    invoke-virtual {v5, v7}, Lcom/android/internal/telephony/cat/CatResponseMessage;->setResultCode(Lcom/android/internal/telephony/cat/ResultCode;)V

    goto :goto_6

    .line 1279
    .end local v0    # "choice":I
    :pswitch_b
    sget-object v7, Lcom/android/stk/StkAppService;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v8, "RES_ID_ERROR"

    invoke-static {v7, v8}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1280
    invoke-static {}, Lcom/android/stk/StkAppService;->-getcom-android-internal-telephony-cat-AppInterface$CommandTypeSwitchesValues()[I

    move-result-object v7

    iget-object v8, p0, Lcom/android/stk/StkAppService;->mStkContext:[Lcom/android/stk/StkAppService$StkContext;

    aget-object v8, v8, p2

    iget-object v8, v8, Lcom/android/stk/StkAppService$StkContext;->mCurrentCmd:Lcom/android/internal/telephony/cat/CatCmdMessage;

    invoke-virtual {v8}, Lcom/android/internal/telephony/cat/CatCmdMessage;->getCmdType()Lcom/android/internal/telephony/cat/AppInterface$CommandType;

    move-result-object v8

    invoke-virtual {v8}, Lcom/android/internal/telephony/cat/AppInterface$CommandType;->ordinal()I

    move-result v8

    aget v7, v7, v8

    packed-switch v7, :pswitch_data_2

    goto/16 :goto_0

    .line 1282
    :pswitch_c
    sget-object v7, Lcom/android/internal/telephony/cat/ResultCode;->LAUNCH_BROWSER_ERROR:Lcom/android/internal/telephony/cat/ResultCode;

    invoke-virtual {v5, v7}, Lcom/android/internal/telephony/cat/CatResponseMessage;->setResultCode(Lcom/android/internal/telephony/cat/ResultCode;)V

    goto/16 :goto_0

    .line 1163
    :pswitch_data_0
    .packed-switch 0xb
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_8
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_7
        :pswitch_5
        :pswitch_6
        :pswitch_0
        :pswitch_b
    .end packed-switch

    .line 1168
    :sswitch_data_0
    .sparse-switch
        0xc -> :sswitch_0
        0x15 -> :sswitch_0
    .end sparse-switch

    .line 1203
    :sswitch_data_1
    .sparse-switch
        0x3 -> :sswitch_1
        0x7 -> :sswitch_2
        0x12 -> :sswitch_3
    .end sparse-switch

    .line 1263
    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_a
        :pswitch_9
    .end packed-switch

    .line 1280
    :pswitch_data_2
    .packed-switch 0x7
        :pswitch_c
    .end packed-switch
.end method

.method private handleDelayedCmd(I)V
    .locals 4
    .param p1, "slotId"    # I

    .prologue
    .line 820
    sget-object v1, Lcom/android/stk/StkAppService;->LOG_TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "handleDelayedCmd, slotId: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 821
    iget-object v1, p0, Lcom/android/stk/StkAppService;->mStkContext:[Lcom/android/stk/StkAppService$StkContext;

    aget-object v1, v1, p1

    iget-object v1, v1, Lcom/android/stk/StkAppService$StkContext;->mCmdsQ:Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/util/LinkedList;->size()I

    move-result v1

    if-eqz v1, :cond_0

    .line 822
    iget-object v1, p0, Lcom/android/stk/StkAppService;->mStkContext:[Lcom/android/stk/StkAppService$StkContext;

    aget-object v1, v1, p1

    iget-object v1, v1, Lcom/android/stk/StkAppService$StkContext;->mCmdsQ:Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/util/LinkedList;->poll()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/stk/StkAppService$DelayedCmd;

    .line 823
    .local v0, "cmd":Lcom/android/stk/StkAppService$DelayedCmd;
    if-eqz v0, :cond_0

    .line 824
    sget-object v1, Lcom/android/stk/StkAppService;->LOG_TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "handleDelayedCmd - queue size: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 825
    iget-object v3, p0, Lcom/android/stk/StkAppService;->mStkContext:[Lcom/android/stk/StkAppService$StkContext;

    aget-object v3, v3, p1

    iget-object v3, v3, Lcom/android/stk/StkAppService$StkContext;->mCmdsQ:Ljava/util/LinkedList;

    invoke-virtual {v3}, Ljava/util/LinkedList;->size()I

    move-result v3

    .line 824
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 826
    const-string/jumbo v3, " id: "

    .line 824
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 826
    iget v3, v0, Lcom/android/stk/StkAppService$DelayedCmd;->id:I

    .line 824
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 826
    const-string/jumbo v3, "sim id: "

    .line 824
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 826
    iget v3, v0, Lcom/android/stk/StkAppService$DelayedCmd;->slotId:I

    .line 824
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 827
    iget v1, v0, Lcom/android/stk/StkAppService$DelayedCmd;->id:I

    packed-switch v1, :pswitch_data_0

    .line 819
    .end local v0    # "cmd":Lcom/android/stk/StkAppService$DelayedCmd;
    :cond_0
    :goto_0
    :pswitch_0
    return-void

    .line 829
    .restart local v0    # "cmd":Lcom/android/stk/StkAppService$DelayedCmd;
    :pswitch_1
    iget-object v1, v0, Lcom/android/stk/StkAppService$DelayedCmd;->msg:Lcom/android/internal/telephony/cat/CatCmdMessage;

    iget v2, v0, Lcom/android/stk/StkAppService$DelayedCmd;->slotId:I

    invoke-direct {p0, v1, v2}, Lcom/android/stk/StkAppService;->handleCmd(Lcom/android/internal/telephony/cat/CatCmdMessage;I)V

    goto :goto_0

    .line 832
    :pswitch_2
    iget v1, v0, Lcom/android/stk/StkAppService$DelayedCmd;->slotId:I

    invoke-direct {p0, v1}, Lcom/android/stk/StkAppService;->handleSessionEnd(I)V

    goto :goto_0

    .line 827
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method private handleIdleScreen(I)V
    .locals 2
    .param p1, "slotId"    # I

    .prologue
    const/4 v1, 0x0

    .line 763
    const-string/jumbo v0, "Need to send IDLE SCREEN Available event to SIM"

    invoke-static {p0, v0}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 764
    const/4 v0, 0x5

    invoke-direct {p0, v0, v1, p1}, Lcom/android/stk/StkAppService;->checkForSetupEvent(ILandroid/os/Bundle;I)V

    .line 766
    iget-object v0, p0, Lcom/android/stk/StkAppService;->mStkContext:[Lcom/android/stk/StkAppService$StkContext;

    aget-object v0, v0, p1

    invoke-static {v0}, Lcom/android/stk/StkAppService$StkContext;->-get2(Lcom/android/stk/StkAppService$StkContext;)Lcom/android/internal/telephony/cat/CatCmdMessage;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 767
    invoke-direct {p0, p1}, Lcom/android/stk/StkAppService;->launchIdleText(I)V

    .line 759
    :cond_0
    return-void
.end method

.method private handlePlayTone(I)V
    .locals 7
    .param p1, "slotId"    # I

    .prologue
    .line 1768
    iget-object v5, p0, Lcom/android/stk/StkAppService;->mStkContext:[Lcom/android/stk/StkAppService$StkContext;

    aget-object v5, v5, p1

    iget-object v5, v5, Lcom/android/stk/StkAppService$StkContext;->mCurrentCmd:Lcom/android/internal/telephony/cat/CatCmdMessage;

    invoke-virtual {v5}, Lcom/android/internal/telephony/cat/CatCmdMessage;->geTextMessage()Lcom/android/internal/telephony/cat/TextMessage;

    move-result-object v4

    .line 1770
    .local v4, "toneMsg":Lcom/android/internal/telephony/cat/TextMessage;
    const/4 v3, 0x1

    .line 1771
    .local v3, "showUser":Z
    const/4 v0, 0x1

    .line 1772
    .local v0, "displayDialog":Z
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v2

    .line 1775
    .local v2, "resource":Landroid/content/res/Resources;
    const v5, 0x1120088

    .line 1774
    :try_start_0
    invoke-virtual {v2, v5}, Landroid/content/res/Resources;->getBoolean(I)Z
    :try_end_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v5

    if-eqz v5, :cond_3

    const/4 v0, 0x0

    .line 1787
    :goto_0
    iget-object v5, v4, Lcom/android/internal/telephony/cat/TextMessage;->text:Ljava/lang/String;

    if-eqz v5, :cond_0

    iget-object v5, v4, Lcom/android/internal/telephony/cat/TextMessage;->text:Ljava/lang/String;

    const-string/jumbo v6, ""

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 1788
    const-string/jumbo v5, "Alpha identifier data is null, play only tone"

    invoke-static {p0, v5}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1789
    const/4 v3, 0x0

    .line 1792
    :cond_0
    iget-object v5, v4, Lcom/android/internal/telephony/cat/TextMessage;->text:Ljava/lang/String;

    if-nez v5, :cond_1

    if-eqz v0, :cond_1

    .line 1793
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "toneMsg.text "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, v4, Lcom/android/internal/telephony/cat/TextMessage;->text:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 1794
    const-string/jumbo v6, " Starting ToneDialog activity with default message."

    .line 1793
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {p0, v5}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1795
    invoke-virtual {p0}, Lcom/android/stk/StkAppService;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f060012

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v4, Lcom/android/internal/telephony/cat/TextMessage;->text:Ljava/lang/String;

    .line 1796
    const/4 v3, 0x1

    .line 1799
    :cond_1
    iget-object v5, v4, Lcom/android/internal/telephony/cat/TextMessage;->text:Ljava/lang/String;

    if-nez v5, :cond_2

    if-eqz v0, :cond_4

    .line 1804
    :cond_2
    :goto_1
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "toneMsg.text: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, v4, Lcom/android/internal/telephony/cat/TextMessage;->text:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, "showUser: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 1805
    const-string/jumbo v6, "displayDialog: "

    .line 1804
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {p0, v5}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1806
    invoke-direct {p0, v3, p1}, Lcom/android/stk/StkAppService;->playTone(ZI)V

    .line 1767
    return-void

    .line 1774
    :cond_3
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 1776
    :catch_0
    move-exception v1

    .line 1777
    .local v1, "e":Landroid/content/res/Resources$NotFoundException;
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 1800
    .end local v1    # "e":Landroid/content/res/Resources$NotFoundException;
    :cond_4
    const-string/jumbo v5, "config value stkNoAlphaUsrCnf is true"

    invoke-static {p0, v5}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1801
    const/4 v3, 0x0

    goto :goto_1
.end method

.method private handleSessionEnd(I)V
    .locals 5
    .param p1, "slotId"    # I

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x0

    .line 856
    invoke-direct {p0, p1}, Lcom/android/stk/StkAppService;->cleanUpInstanceStackBySlot(I)V

    .line 858
    iget-object v0, p0, Lcom/android/stk/StkAppService;->mStkContext:[Lcom/android/stk/StkAppService$StkContext;

    aget-object v0, v0, p1

    iget-object v1, p0, Lcom/android/stk/StkAppService;->mStkContext:[Lcom/android/stk/StkAppService$StkContext;

    aget-object v1, v1, p1

    iget-object v1, v1, Lcom/android/stk/StkAppService$StkContext;->mMainCmd:Lcom/android/internal/telephony/cat/CatCmdMessage;

    iput-object v1, v0, Lcom/android/stk/StkAppService$StkContext;->mCurrentCmd:Lcom/android/internal/telephony/cat/CatCmdMessage;

    .line 859
    sget-object v0, Lcom/android/stk/StkAppService;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v1, "[handleSessionEnd] - mCurrentCmd changed to mMainCmd!."

    invoke-static {v0, v1}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 860
    iget-object v0, p0, Lcom/android/stk/StkAppService;->mStkContext:[Lcom/android/stk/StkAppService$StkContext;

    aget-object v0, v0, p1

    iget-object v1, p0, Lcom/android/stk/StkAppService;->mStkContext:[Lcom/android/stk/StkAppService$StkContext;

    aget-object v1, v1, p1

    iget-object v1, v1, Lcom/android/stk/StkAppService$StkContext;->mMainCmd:Lcom/android/internal/telephony/cat/CatCmdMessage;

    iput-object v1, v0, Lcom/android/stk/StkAppService$StkContext;->mCurrentMenuCmd:Lcom/android/internal/telephony/cat/CatCmdMessage;

    .line 861
    sget-object v0, Lcom/android/stk/StkAppService;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "slotId: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ", mMenuState: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 862
    iget-object v2, p0, Lcom/android/stk/StkAppService;->mStkContext:[Lcom/android/stk/StkAppService$StkContext;

    aget-object v2, v2, p1

    iget v2, v2, Lcom/android/stk/StkAppService$StkContext;->mMenuState:I

    .line 861
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 864
    iget-object v0, p0, Lcom/android/stk/StkAppService;->mStkContext:[Lcom/android/stk/StkAppService$StkContext;

    aget-object v0, v0, p1

    iput-boolean v3, v0, Lcom/android/stk/StkAppService$StkContext;->mIsInputPending:Z

    .line 865
    iget-object v0, p0, Lcom/android/stk/StkAppService;->mStkContext:[Lcom/android/stk/StkAppService$StkContext;

    aget-object v0, v0, p1

    iput-boolean v3, v0, Lcom/android/stk/StkAppService$StkContext;->mIsMenuPending:Z

    .line 866
    iget-object v0, p0, Lcom/android/stk/StkAppService;->mStkContext:[Lcom/android/stk/StkAppService$StkContext;

    aget-object v0, v0, p1

    iput-boolean v3, v0, Lcom/android/stk/StkAppService$StkContext;->mIsDialogPending:Z

    .line 868
    iget-object v0, p0, Lcom/android/stk/StkAppService;->mStkContext:[Lcom/android/stk/StkAppService$StkContext;

    aget-object v0, v0, p1

    iget-object v0, v0, Lcom/android/stk/StkAppService$StkContext;->mMainCmd:Lcom/android/internal/telephony/cat/CatCmdMessage;

    if-nez v0, :cond_0

    .line 869
    sget-object v0, Lcom/android/stk/StkAppService;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v1, "[handleSessionEnd][mMainCmd is null!]"

    invoke-static {v0, v1}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 871
    :cond_0
    iget-object v0, p0, Lcom/android/stk/StkAppService;->mStkContext:[Lcom/android/stk/StkAppService$StkContext;

    aget-object v0, v0, p1

    iput-object v4, v0, Lcom/android/stk/StkAppService$StkContext;->lastSelectedItem:Ljava/lang/String;

    .line 874
    iget-object v0, p0, Lcom/android/stk/StkAppService;->mStkContext:[Lcom/android/stk/StkAppService$StkContext;

    aget-object v0, v0, p1

    iget-object v0, v0, Lcom/android/stk/StkAppService$StkContext;->mCurrentMenu:Lcom/android/internal/telephony/cat/Menu;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/stk/StkAppService;->mStkContext:[Lcom/android/stk/StkAppService$StkContext;

    aget-object v0, v0, p1

    iget-object v0, v0, Lcom/android/stk/StkAppService$StkContext;->mMainCmd:Lcom/android/internal/telephony/cat/CatCmdMessage;

    if-eqz v0, :cond_1

    .line 875
    iget-object v0, p0, Lcom/android/stk/StkAppService;->mStkContext:[Lcom/android/stk/StkAppService$StkContext;

    aget-object v0, v0, p1

    iget-object v1, p0, Lcom/android/stk/StkAppService;->mStkContext:[Lcom/android/stk/StkAppService$StkContext;

    aget-object v1, v1, p1

    iget-object v1, v1, Lcom/android/stk/StkAppService$StkContext;->mMainCmd:Lcom/android/internal/telephony/cat/CatCmdMessage;

    invoke-virtual {v1}, Lcom/android/internal/telephony/cat/CatCmdMessage;->getMenu()Lcom/android/internal/telephony/cat/Menu;

    move-result-object v1

    iput-object v1, v0, Lcom/android/stk/StkAppService$StkContext;->mCurrentMenu:Lcom/android/internal/telephony/cat/Menu;

    .line 877
    :cond_1
    sget-object v0, Lcom/android/stk/StkAppService;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "[handleSessionEnd][mMenuState]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/stk/StkAppService;->mStkContext:[Lcom/android/stk/StkAppService$StkContext;

    aget-object v2, v2, p1

    iget-boolean v2, v2, Lcom/android/stk/StkAppService$StkContext;->mMenuIsVisible:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 882
    iget-object v0, p0, Lcom/android/stk/StkAppService;->mStkContext:[Lcom/android/stk/StkAppService$StkContext;

    aget-object v0, v0, p1

    iget v0, v0, Lcom/android/stk/StkAppService$StkContext;->mMenuState:I

    const/4 v1, 0x2

    if-ne v1, v0, :cond_2

    .line 883
    invoke-direct {p0, v4, p1}, Lcom/android/stk/StkAppService;->launchMenuActivity(Lcom/android/internal/telephony/cat/Menu;I)V

    .line 885
    :cond_2
    iget-object v0, p0, Lcom/android/stk/StkAppService;->mStkContext:[Lcom/android/stk/StkAppService$StkContext;

    aget-object v0, v0, p1

    iget-object v0, v0, Lcom/android/stk/StkAppService$StkContext;->mCmdsQ:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->size()I

    move-result v0

    if-eqz v0, :cond_4

    .line 886
    invoke-direct {p0, p1}, Lcom/android/stk/StkAppService;->callDelayedMsg(I)V

    .line 891
    :goto_0
    iget-object v0, p0, Lcom/android/stk/StkAppService;->mStkContext:[Lcom/android/stk/StkAppService$StkContext;

    aget-object v0, v0, p1

    iget-boolean v0, v0, Lcom/android/stk/StkAppService$StkContext;->launchBrowser:Z

    if-eqz v0, :cond_3

    .line 892
    iget-object v0, p0, Lcom/android/stk/StkAppService;->mStkContext:[Lcom/android/stk/StkAppService$StkContext;

    aget-object v0, v0, p1

    iput-boolean v3, v0, Lcom/android/stk/StkAppService$StkContext;->launchBrowser:Z

    .line 893
    iget-object v0, p0, Lcom/android/stk/StkAppService;->mStkContext:[Lcom/android/stk/StkAppService$StkContext;

    aget-object v0, v0, p1

    iget-object v0, v0, Lcom/android/stk/StkAppService$StkContext;->mBrowserSettings:Lcom/android/internal/telephony/cat/CatCmdMessage$BrowserSettings;

    invoke-direct {p0, v0}, Lcom/android/stk/StkAppService;->launchBrowser(Lcom/android/internal/telephony/cat/CatCmdMessage$BrowserSettings;)V

    .line 854
    :cond_3
    return-void

    .line 888
    :cond_4
    iget-object v0, p0, Lcom/android/stk/StkAppService;->mStkContext:[Lcom/android/stk/StkAppService$StkContext;

    aget-object v0, v0, p1

    iput-boolean v3, v0, Lcom/android/stk/StkAppService$StkContext;->mCmdInProgress:Z

    goto :goto_0
.end method

.method private handleStopTone(Landroid/os/Message;I)V
    .locals 6
    .param p1, "msg"    # Landroid/os/Message;
    .param p2, "slotId"    # I

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 1853
    const/4 v1, 0x0

    .line 1858
    .local v1, "resId":I
    iget v2, p1, Landroid/os/Message;->arg1:I

    const/16 v3, 0x10

    if-ne v2, v3, :cond_3

    .line 1859
    const/16 v1, 0xe

    .line 1861
    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 1862
    .local v0, "finishActivity":I
    if-ne v0, v5, :cond_0

    invoke-direct {p0}, Lcom/android/stk/StkAppService;->finishToneDialogActivity()V

    .line 1867
    .end local v0    # "finishActivity":I
    :cond_0
    :goto_0
    invoke-direct {p0, v1, p2, v5}, Lcom/android/stk/StkAppService;->sendResponse(IIZ)V

    .line 1868
    iget-object v2, p0, Lcom/android/stk/StkAppService;->mServiceHandler:Lcom/android/stk/StkAppService$ServiceHandler;

    const/16 v3, 0x64

    invoke-virtual {v2, v3}, Lcom/android/stk/StkAppService$ServiceHandler;->removeMessages(I)V

    .line 1869
    iget-object v2, p0, Lcom/android/stk/StkAppService;->mTonePlayer:Lcom/android/stk/TonePlayer;

    if-eqz v2, :cond_1

    .line 1870
    iget-object v2, p0, Lcom/android/stk/StkAppService;->mTonePlayer:Lcom/android/stk/TonePlayer;

    invoke-virtual {v2}, Lcom/android/stk/TonePlayer;->stop()V

    .line 1871
    iget-object v2, p0, Lcom/android/stk/StkAppService;->mTonePlayer:Lcom/android/stk/TonePlayer;

    invoke-virtual {v2}, Lcom/android/stk/TonePlayer;->release()V

    .line 1872
    iput-object v4, p0, Lcom/android/stk/StkAppService;->mTonePlayer:Lcom/android/stk/TonePlayer;

    .line 1874
    :cond_1
    iget-object v2, p0, Lcom/android/stk/StkAppService;->mVibrator:Landroid/os/Vibrator;

    if-eqz v2, :cond_2

    .line 1875
    iget-object v2, p0, Lcom/android/stk/StkAppService;->mVibrator:Landroid/os/Vibrator;

    invoke-virtual {v2}, Landroid/os/Vibrator;->cancel()V

    .line 1876
    iput-object v4, p0, Lcom/android/stk/StkAppService;->mVibrator:Landroid/os/Vibrator;

    .line 1852
    :cond_2
    return-void

    .line 1863
    :cond_3
    iget v2, p1, Landroid/os/Message;->arg1:I

    const/16 v3, 0x11

    if-ne v2, v3, :cond_0

    .line 1864
    const/16 v1, 0x16

    goto :goto_0
.end method

.method private isAllOtherCardsAbsent(I)Z
    .locals 4
    .param p1, "slotId"    # I

    .prologue
    .line 711
    iget-object v2, p0, Lcom/android/stk/StkAppService;->mContext:Landroid/content/Context;

    .line 712
    const-string/jumbo v3, "phone"

    .line 711
    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telephony/TelephonyManager;

    .line 713
    .local v1, "mTm":Landroid/telephony/TelephonyManager;
    const/4 v0, 0x0

    .line 715
    .local v0, "i":I
    const/4 v0, 0x0

    :goto_0
    iget v2, p0, Lcom/android/stk/StkAppService;->mSimCount:I

    if-ge v0, v2, :cond_0

    .line 716
    if-eq v0, p1, :cond_1

    invoke-virtual {v1, v0}, Landroid/telephony/TelephonyManager;->hasIccCard(I)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 720
    :cond_0
    iget v2, p0, Lcom/android/stk/StkAppService;->mSimCount:I

    if-ne v0, v2, :cond_2

    .line 721
    const/4 v2, 0x1

    return v2

    .line 715
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 723
    :cond_2
    const/4 v2, 0x0

    return v2
.end method

.method private isAnyOtherCardStkMenuExist(I)Z
    .locals 2
    .param p1, "slotId"    # I

    .prologue
    .line 698
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget v1, p0, Lcom/android/stk/StkAppService;->mSimCount:I

    if-ge v0, v1, :cond_1

    .line 699
    if-eq v0, p1, :cond_0

    iget-object v1, p0, Lcom/android/stk/StkAppService;->mStkContext:[Lcom/android/stk/StkAppService$StkContext;

    aget-object v1, v1, v0

    iget-object v1, v1, Lcom/android/stk/StkAppService$StkContext;->mMainCmd:Lcom/android/internal/telephony/cat/CatCmdMessage;

    if-eqz v1, :cond_0

    .line 700
    const/4 v1, 0x1

    return v1

    .line 698
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 703
    :cond_1
    const/4 v1, 0x0

    return v1
.end method

.method private isCmdInteractive(Lcom/android/internal/telephony/cat/CatCmdMessage;)Z
    .locals 2
    .param p1, "cmd"    # Lcom/android/internal/telephony/cat/CatCmdMessage;

    .prologue
    .line 800
    invoke-static {}, Lcom/android/stk/StkAppService;->-getcom-android-internal-telephony-cat-AppInterface$CommandTypeSwitchesValues()[I

    move-result-object v0

    invoke-virtual {p1}, Lcom/android/internal/telephony/cat/CatCmdMessage;->getCmdType()Lcom/android/internal/telephony/cat/AppInterface$CommandType;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/internal/telephony/cat/AppInterface$CommandType;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 816
    :pswitch_0
    const/4 v0, 0x1

    return v0

    .line 813
    :pswitch_1
    const/4 v0, 0x0

    return v0

    .line 800
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method

.method private isScreenIdle()Z
    .locals 13

    .prologue
    const/4 v12, 0x1

    const/4 v11, 0x0

    const/4 v10, 0x0

    .line 732
    iget-object v8, p0, Lcom/android/stk/StkAppService;->mContext:Landroid/content/Context;

    .line 733
    const-string/jumbo v9, "activity"

    .line 732
    invoke-virtual {v8, v9}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/app/ActivityManager;

    .line 734
    .local v4, "mAcivityManager":Landroid/app/ActivityManager;
    invoke-virtual {v4, v12}, Landroid/app/ActivityManager;->getRunningTasks(I)Ljava/util/List;

    move-result-object v7

    .line 735
    .local v7, "taskInfo":Ljava/util/List;, "Ljava/util/List<Landroid/app/ActivityManager$RunningTaskInfo;>;"
    if-eqz v7, :cond_0

    invoke-interface {v7}, Ljava/util/List;->isEmpty()Z

    move-result v8

    if-eqz v8, :cond_1

    .line 736
    :cond_0
    const-string/jumbo v8, "taskInfo is null"

    invoke-static {p0, v8}, Lcom/android/internal/telephony/cat/CatLog;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 737
    return v10

    .line 739
    :cond_1
    invoke-interface {v7, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/app/ActivityManager$RunningTaskInfo;

    iget-object v8, v8, Landroid/app/ActivityManager$RunningTaskInfo;->topActivity:Landroid/content/ComponentName;

    invoke-virtual {v8}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v1

    .line 740
    .local v1, "currentPackageName":Ljava/lang/String;
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "isScreenIdle, package name : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {p0, v8}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 741
    new-instance v5, Landroid/content/Intent;

    const-string/jumbo v8, "android.intent.action.MAIN"

    invoke-direct {v5, v8, v11}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 742
    .local v5, "mainIntent":Landroid/content/Intent;
    const-string/jumbo v8, "android.intent.category.HOME"

    invoke-virtual {v5, v8}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 743
    iget-object v8, p0, Lcom/android/stk/StkAppService;->mContext:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v6

    .line 745
    .local v6, "pm":Landroid/content/pm/PackageManager;
    if-eqz v1, :cond_3

    .line 746
    invoke-virtual {v6, v5, v10}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v0

    .line 747
    .local v0, "actList":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v8

    if-ge v2, v8, :cond_3

    .line 748
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/pm/ResolveInfo;

    .line 750
    .local v3, "info":Landroid/content/pm/ResolveInfo;
    iget-object v8, v3, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v8, v8, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v1, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_2

    .line 751
    return v12

    .line 747
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 756
    .end local v0    # "actList":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    .end local v2    # "i":I
    .end local v3    # "info":Landroid/content/pm/ResolveInfo;
    :cond_3
    return v10
.end method

.method private isTopOfStack()Z
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 899
    iget-object v3, p0, Lcom/android/stk/StkAppService;->mContext:Landroid/content/Context;

    .line 900
    const-string/jumbo v4, "activity"

    .line 899
    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/ActivityManager;

    .line 901
    .local v1, "mAcivityManager":Landroid/app/ActivityManager;
    const/4 v0, 0x0

    .line 902
    .local v0, "currentPackageName":Ljava/lang/String;
    const/4 v3, 0x1

    invoke-virtual {v1, v3}, Landroid/app/ActivityManager;->getRunningTasks(I)Ljava/util/List;

    move-result-object v2

    .line 903
    .local v2, "tasks":Ljava/util/List;, "Ljava/util/List<Landroid/app/ActivityManager$RunningTaskInfo;>;"
    if-eqz v2, :cond_0

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 906
    .end local v0    # "currentPackageName":Ljava/lang/String;
    :cond_0
    :goto_0
    if-eqz v0, :cond_2

    .line 907
    const-string/jumbo v3, "com.android.stk"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    return v3

    .line 904
    .restart local v0    # "currentPackageName":Ljava/lang/String;
    :cond_1
    invoke-interface {v2, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/ActivityManager$RunningTaskInfo;

    iget-object v3, v3, Landroid/app/ActivityManager$RunningTaskInfo;->topActivity:Landroid/content/ComponentName;

    invoke-virtual {v3}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v0

    .local v0, "currentPackageName":Ljava/lang/String;
    goto :goto_0

    .line 910
    .end local v0    # "currentPackageName":Ljava/lang/String;
    :cond_2
    return v5
.end method

.method private launchBrowser(Lcom/android/internal/telephony/cat/CatCmdMessage$BrowserSettings;)V
    .locals 9
    .param p1, "settings"    # Lcom/android/internal/telephony/cat/CatCmdMessage$BrowserSettings;

    .prologue
    const/high16 v8, 0x4000000

    .line 1659
    if-nez p1, :cond_0

    .line 1660
    return-void

    .line 1663
    :cond_0
    const/4 v0, 0x0

    .line 1665
    .local v0, "data":Landroid/net/Uri;
    iget-object v6, p1, Lcom/android/internal/telephony/cat/CatCmdMessage$BrowserSettings;->url:Ljava/lang/String;

    if-nez v6, :cond_2

    .line 1668
    const-string/jumbo v6, "no url data provided by proactive command. launching browser with stk default URL ... "

    invoke-static {p0, v6}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1670
    const-string/jumbo v6, "persist.radio.stk.default_url"

    .line 1671
    const-string/jumbo v7, "http://www.google.com"

    .line 1670
    invoke-static {v6, v7}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 1677
    .local v5, "url":Ljava/lang/String;
    :goto_0
    const-string/jumbo v6, "http://"

    invoke-virtual {v5, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_1

    const-string/jumbo v6, "https://"

    invoke-virtual {v5, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 1678
    :cond_1
    invoke-static {v5}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 1679
    .local v0, "data":Landroid/net/Uri;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "launching browser with url = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {p0, v6}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1686
    :goto_1
    new-instance v3, Landroid/content/Intent;

    const-string/jumbo v6, "android.intent.action.VIEW"

    invoke-direct {v3, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1687
    .local v3, "intent":Landroid/content/Intent;
    invoke-virtual {v3, v0}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 1688
    const/high16 v6, 0x10000000

    invoke-virtual {v3, v6}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 1689
    invoke-static {}, Lcom/android/stk/StkAppService;->-getcom-android-internal-telephony-cat-LaunchBrowserModeSwitchesValues()[I

    move-result-object v6

    iget-object v7, p1, Lcom/android/internal/telephony/cat/CatCmdMessage$BrowserSettings;->mode:Lcom/android/internal/telephony/cat/LaunchBrowserMode;

    invoke-virtual {v7}, Lcom/android/internal/telephony/cat/LaunchBrowserMode;->ordinal()I

    move-result v7

    aget v6, v6, v7

    packed-switch v6, :pswitch_data_0

    .line 1708
    :goto_2
    :try_start_0
    invoke-virtual {p0, v3}, Lcom/android/stk/StkAppService;->startActivity(Landroid/content/Intent;)V

    .line 1709
    const-wide/16 v6, 0x2710

    invoke-static {v6, v7}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_1

    .line 1658
    :goto_3
    return-void

    .line 1673
    .end local v3    # "intent":Landroid/content/Intent;
    .end local v5    # "url":Ljava/lang/String;
    .local v0, "data":Landroid/net/Uri;
    :cond_2
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "launch browser command has attached url = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p1, Lcom/android/internal/telephony/cat/CatCmdMessage$BrowserSettings;->url:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {p0, v6}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1674
    iget-object v5, p1, Lcom/android/internal/telephony/cat/CatCmdMessage$BrowserSettings;->url:Ljava/lang/String;

    .restart local v5    # "url":Ljava/lang/String;
    goto :goto_0

    .line 1681
    :cond_3
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "http://"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 1682
    .local v4, "modifiedUrl":Ljava/lang/String;
    invoke-static {v4}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 1683
    .local v0, "data":Landroid/net/Uri;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "launching browser with modified url = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {p0, v6}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_1

    .line 1691
    .end local v4    # "modifiedUrl":Ljava/lang/String;
    .restart local v3    # "intent":Landroid/content/Intent;
    :pswitch_0
    invoke-virtual {v3, v8}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    goto :goto_2

    .line 1694
    :pswitch_1
    const/high16 v6, 0x8000000

    invoke-virtual {v3, v6}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    goto :goto_2

    .line 1697
    :pswitch_2
    invoke-virtual {v3, v8}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    goto :goto_2

    .line 1711
    :catch_0
    move-exception v1

    .line 1712
    .local v1, "e":Landroid/content/ActivityNotFoundException;
    const-string/jumbo v6, "launching browser: ActivityNotFoundException. startActivity failed."

    invoke-static {p0, v6}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_3

    .line 1714
    .end local v1    # "e":Landroid/content/ActivityNotFoundException;
    :catch_1
    move-exception v2

    .local v2, "e":Ljava/lang/InterruptedException;
    goto :goto_3

    .line 1689
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private launchConfirmationDialog(Lcom/android/internal/telephony/cat/TextMessage;I)V
    .locals 8
    .param p1, "msg"    # Lcom/android/internal/telephony/cat/TextMessage;
    .param p2, "slotId"    # I

    .prologue
    .line 1638
    iget-object v4, p0, Lcom/android/stk/StkAppService;->mStkContext:[Lcom/android/stk/StkAppService$StkContext;

    aget-object v4, v4, p2

    iget-object v4, v4, Lcom/android/stk/StkAppService$StkContext;->lastSelectedItem:Ljava/lang/String;

    iput-object v4, p1, Lcom/android/internal/telephony/cat/TextMessage;->title:Ljava/lang/String;

    .line 1639
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 1640
    .local v0, "newIntent":Landroid/content/Intent;
    const-string/jumbo v1, "com.android.stk.StkDialogActivity"

    .line 1641
    .local v1, "targetActivity":Ljava/lang/String;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "stk://com.android.stk/dialog/"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    invoke-virtual {v4, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 1643
    .local v3, "uriString":Ljava/lang/String;
    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    .line 1645
    .local v2, "uriData":Landroid/net/Uri;
    if-eqz v0, :cond_0

    .line 1646
    invoke-virtual {v0, p0, v1}, Landroid/content/Intent;->setClassName(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;

    .line 1650
    sget-object v4, Lcom/android/stk/StkAppService$InitiatedByUserAction;->unknown:Lcom/android/stk/StkAppService$InitiatedByUserAction;

    invoke-direct {p0, v4, p2}, Lcom/android/stk/StkAppService;->getFlagActivityNoUserAction(Lcom/android/stk/StkAppService$InitiatedByUserAction;I)I

    move-result v4

    .line 1647
    const/high16 v5, 0x50800000

    or-int/2addr v4, v5

    invoke-virtual {v0, v4}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 1651
    const-string/jumbo v4, "TEXT"

    invoke-virtual {v0, v4, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 1652
    const-string/jumbo v4, "SLOT_ID"

    invoke-virtual {v0, v4, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1653
    invoke-virtual {v0, v2}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 1654
    invoke-virtual {p0, v0}, Lcom/android/stk/StkAppService;->startActivity(Landroid/content/Intent;)V

    .line 1637
    :cond_0
    return-void
.end method

.method private launchEventMessage(I)V
    .locals 1
    .param p1, "slotId"    # I

    .prologue
    .line 1592
    iget-object v0, p0, Lcom/android/stk/StkAppService;->mStkContext:[Lcom/android/stk/StkAppService$StkContext;

    aget-object v0, v0, p1

    iget-object v0, v0, Lcom/android/stk/StkAppService$StkContext;->mCurrentCmd:Lcom/android/internal/telephony/cat/CatCmdMessage;

    invoke-virtual {v0}, Lcom/android/internal/telephony/cat/CatCmdMessage;->geTextMessage()Lcom/android/internal/telephony/cat/TextMessage;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/android/stk/StkAppService;->launchEventMessage(ILcom/android/internal/telephony/cat/TextMessage;)V

    .line 1591
    return-void
.end method

.method private launchEventMessage(ILcom/android/internal/telephony/cat/TextMessage;)V
    .locals 9
    .param p1, "slotId"    # I
    .param p2, "msg"    # Lcom/android/internal/telephony/cat/TextMessage;

    .prologue
    const/4 v8, 0x0

    const/4 v7, 0x0

    .line 1598
    if-eqz p2, :cond_0

    iget-object v5, p2, Lcom/android/internal/telephony/cat/TextMessage;->text:Ljava/lang/String;

    if-nez v5, :cond_1

    .line 1599
    :cond_0
    sget-object v5, Lcom/android/stk/StkAppService;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v6, "launchEventMessage return"

    invoke-static {v5, v6}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1600
    return-void

    .line 1598
    :cond_1
    iget-object v5, p2, Lcom/android/internal/telephony/cat/TextMessage;->text:Ljava/lang/String;

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    if-eqz v5, :cond_0

    .line 1603
    new-instance v2, Landroid/widget/Toast;

    iget-object v5, p0, Lcom/android/stk/StkAppService;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v5

    invoke-direct {v2, v5}, Landroid/widget/Toast;-><init>(Landroid/content/Context;)V

    .line 1604
    .local v2, "toast":Landroid/widget/Toast;
    iget-object v5, p0, Lcom/android/stk/StkAppService;->mContext:Landroid/content/Context;

    .line 1605
    const-string/jumbo v6, "layout_inflater"

    .line 1604
    invoke-virtual {v5, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    .line 1606
    .local v0, "inflate":Landroid/view/LayoutInflater;
    const v5, 0x7f030001

    invoke-virtual {v0, v5, v7}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v4

    .line 1608
    .local v4, "v":Landroid/view/View;
    const v5, 0x102000b

    .line 1607
    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 1610
    .local v3, "tv":Landroid/widget/TextView;
    const v5, 0x1020006

    .line 1609
    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    .line 1611
    .local v1, "iv":Landroid/widget/ImageView;
    iget-object v5, p2, Lcom/android/internal/telephony/cat/TextMessage;->icon:Landroid/graphics/Bitmap;

    if-eqz v5, :cond_3

    .line 1612
    const-string/jumbo v5, "Stk Icon from Command"

    invoke-virtual {v1, v5}, Landroid/widget/ImageView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 1613
    iget-object v5, p2, Lcom/android/internal/telephony/cat/TextMessage;->icon:Landroid/graphics/Bitmap;

    invoke-virtual {v1, v5}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 1623
    :goto_0
    iget-object v5, p0, Lcom/android/stk/StkAppService;->mStkContext:[Lcom/android/stk/StkAppService$StkContext;

    aget-object v5, v5, p1

    iget-object v5, v5, Lcom/android/stk/StkAppService$StkContext;->mCurrentCmd:Lcom/android/internal/telephony/cat/CatCmdMessage;

    invoke-virtual {v5}, Lcom/android/internal/telephony/cat/CatCmdMessage;->hasIconLoadFailed()Z

    move-result v5

    if-nez v5, :cond_2

    .line 1624
    iget-object v5, p2, Lcom/android/internal/telephony/cat/TextMessage;->icon:Landroid/graphics/Bitmap;

    if-nez v5, :cond_4

    .line 1625
    :cond_2
    iget-object v5, p2, Lcom/android/internal/telephony/cat/TextMessage;->text:Ljava/lang/String;

    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1628
    :goto_1
    invoke-virtual {v2, v4}, Landroid/widget/Toast;->setView(Landroid/view/View;)V

    .line 1629
    const/4 v5, 0x1

    invoke-virtual {v2, v5}, Landroid/widget/Toast;->setDuration(I)V

    .line 1632
    invoke-virtual {p0}, Lcom/android/stk/StkAppService;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    .line 1633
    const v6, 0x1050018

    .line 1632
    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v5

    const/16 v6, 0x50

    invoke-virtual {v2, v6, v8, v5}, Landroid/widget/Toast;->setGravity(III)V

    .line 1634
    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    .line 1595
    return-void

    .line 1615
    :cond_3
    const/16 v5, 0x8

    invoke-virtual {v1, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0

    .line 1624
    :cond_4
    iget-boolean v5, p2, Lcom/android/internal/telephony/cat/TextMessage;->iconSelfExplanatory:Z

    if-eqz v5, :cond_2

    goto :goto_1
.end method

.method private launchIdleText(I)V
    .locals 10
    .param p1, "slotId"    # I

    .prologue
    const v9, 0x10806e8

    const/4 v8, 0x0

    .line 1718
    iget-object v4, p0, Lcom/android/stk/StkAppService;->mStkContext:[Lcom/android/stk/StkAppService$StkContext;

    aget-object v4, v4, p1

    invoke-static {v4}, Lcom/android/stk/StkAppService$StkContext;->-get2(Lcom/android/stk/StkAppService$StkContext;)Lcom/android/internal/telephony/cat/CatCmdMessage;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/internal/telephony/cat/CatCmdMessage;->geTextMessage()Lcom/android/internal/telephony/cat/TextMessage;

    move-result-object v1

    .line 1720
    .local v1, "msg":Lcom/android/internal/telephony/cat/TextMessage;
    if-eqz v1, :cond_0

    iget-object v4, v1, Lcom/android/internal/telephony/cat/TextMessage;->text:Ljava/lang/String;

    if-nez v4, :cond_2

    .line 1721
    :cond_0
    sget-object v5, Lcom/android/stk/StkAppService;->LOG_TAG:Ljava/lang/String;

    if-nez v1, :cond_1

    const-string/jumbo v4, "mCurrent.getTextMessage is NULL"

    :goto_0
    invoke-static {v5, v4}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1723
    iget-object v4, p0, Lcom/android/stk/StkAppService;->mNotificationManager:Landroid/app/NotificationManager;

    invoke-direct {p0, p1}, Lcom/android/stk/StkAppService;->getNotificationId(I)I

    move-result v5

    invoke-virtual {v4, v5}, Landroid/app/NotificationManager;->cancel(I)V

    .line 1724
    return-void

    .line 1722
    :cond_1
    const-string/jumbo v4, "mCurrent.getTextMessage.text is NULL"

    goto :goto_0

    .line 1726
    :cond_2
    sget-object v4, Lcom/android/stk/StkAppService;->LOG_TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "launchIdleText - text["

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, v1, Lcom/android/internal/telephony/cat/TextMessage;->text:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 1727
    const-string/jumbo v6, "] iconSelfExplanatory["

    .line 1726
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 1727
    iget-boolean v6, v1, Lcom/android/internal/telephony/cat/TextMessage;->iconSelfExplanatory:Z

    .line 1726
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 1728
    const-string/jumbo v6, "] icon["

    .line 1726
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 1728
    iget-object v6, v1, Lcom/android/internal/telephony/cat/TextMessage;->icon:Landroid/graphics/Bitmap;

    .line 1726
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 1728
    const-string/jumbo v6, "], sim id: "

    .line 1726
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1729
    sget-object v4, Lcom/android/stk/StkAppService;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v5, "Add IdleMode text"

    invoke-static {v4, v5}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1730
    iget-object v4, p0, Lcom/android/stk/StkAppService;->mContext:Landroid/content/Context;

    .line 1731
    new-instance v5, Landroid/content/Intent;

    iget-object v6, p0, Lcom/android/stk/StkAppService;->mContext:Landroid/content/Context;

    const-class v7, Lcom/android/stk/StkAppService;

    invoke-direct {v5, v6, v7}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 1730
    invoke-static {v4, v8, v5, v8}, Landroid/app/PendingIntent;->getService(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v3

    .line 1733
    .local v3, "pendingIntent":Landroid/app/PendingIntent;
    new-instance v2, Landroid/app/Notification$Builder;

    invoke-direct {v2, p0}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;)V

    .line 1735
    .local v2, "notificationBuilder":Landroid/app/Notification$Builder;
    iget-object v4, p0, Lcom/android/stk/StkAppService;->mStkContext:[Lcom/android/stk/StkAppService$StkContext;

    aget-object v4, v4, p1

    iget-object v4, v4, Lcom/android/stk/StkAppService$StkContext;->mMainCmd:Lcom/android/internal/telephony/cat/CatCmdMessage;

    if-eqz v4, :cond_3

    .line 1736
    iget-object v4, p0, Lcom/android/stk/StkAppService;->mStkContext:[Lcom/android/stk/StkAppService$StkContext;

    aget-object v4, v4, p1

    iget-object v4, v4, Lcom/android/stk/StkAppService$StkContext;->mMainCmd:Lcom/android/internal/telephony/cat/CatCmdMessage;

    invoke-virtual {v4}, Lcom/android/internal/telephony/cat/CatCmdMessage;->getMenu()Lcom/android/internal/telephony/cat/Menu;

    move-result-object v4

    if-eqz v4, :cond_3

    .line 1737
    iget-object v4, p0, Lcom/android/stk/StkAppService;->mStkContext:[Lcom/android/stk/StkAppService$StkContext;

    aget-object v4, v4, p1

    iget-object v4, v4, Lcom/android/stk/StkAppService$StkContext;->mMainCmd:Lcom/android/internal/telephony/cat/CatCmdMessage;

    invoke-virtual {v4}, Lcom/android/internal/telephony/cat/CatCmdMessage;->getMenu()Lcom/android/internal/telephony/cat/Menu;

    move-result-object v4

    iget-object v4, v4, Lcom/android/internal/telephony/cat/Menu;->title:Ljava/lang/String;

    invoke-virtual {v2, v4}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    .line 1741
    :goto_1
    invoke-virtual {v2, v9}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    .line 1743
    invoke-virtual {v2, v3}, Landroid/app/Notification$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    .line 1744
    const/4 v4, 0x1

    invoke-virtual {v2, v4}, Landroid/app/Notification$Builder;->setOngoing(Z)Landroid/app/Notification$Builder;

    .line 1745
    new-instance v4, Landroid/app/Notification$BigTextStyle;

    invoke-direct {v4, v2}, Landroid/app/Notification$BigTextStyle;-><init>(Landroid/app/Notification$Builder;)V

    .line 1746
    iget-object v5, v1, Lcom/android/internal/telephony/cat/TextMessage;->text:Ljava/lang/String;

    .line 1745
    invoke-virtual {v4, v5}, Landroid/app/Notification$BigTextStyle;->bigText(Ljava/lang/CharSequence;)Landroid/app/Notification$BigTextStyle;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/app/Notification$Builder;->setStyle(Landroid/app/Notification$Style;)Landroid/app/Notification$Builder;

    .line 1748
    iget-object v4, p0, Lcom/android/stk/StkAppService;->mStkContext:[Lcom/android/stk/StkAppService$StkContext;

    aget-object v4, v4, p1

    invoke-static {v4}, Lcom/android/stk/StkAppService$StkContext;->-get2(Lcom/android/stk/StkAppService$StkContext;)Lcom/android/internal/telephony/cat/CatCmdMessage;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/internal/telephony/cat/CatCmdMessage;->hasIconLoadFailed()Z

    move-result v4

    if-nez v4, :cond_4

    .line 1749
    iget-boolean v4, v1, Lcom/android/internal/telephony/cat/TextMessage;->iconSelfExplanatory:Z

    if-eqz v4, :cond_4

    .line 1753
    :goto_2
    iget-object v4, v1, Lcom/android/internal/telephony/cat/TextMessage;->icon:Landroid/graphics/Bitmap;

    if-eqz v4, :cond_5

    .line 1754
    iget-object v4, v1, Lcom/android/internal/telephony/cat/TextMessage;->icon:Landroid/graphics/Bitmap;

    invoke-virtual {v2, v4}, Landroid/app/Notification$Builder;->setLargeIcon(Landroid/graphics/Bitmap;)Landroid/app/Notification$Builder;

    .line 1761
    :goto_3
    iget-object v4, p0, Lcom/android/stk/StkAppService;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    .line 1762
    const v5, 0x106005b

    .line 1761
    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getColor(I)I

    move-result v4

    invoke-virtual {v2, v4}, Landroid/app/Notification$Builder;->setColor(I)Landroid/app/Notification$Builder;

    .line 1763
    iget-object v4, p0, Lcom/android/stk/StkAppService;->mNotificationManager:Landroid/app/NotificationManager;

    invoke-direct {p0, p1}, Lcom/android/stk/StkAppService;->getNotificationId(I)I

    move-result v5

    invoke-virtual {v2}, Landroid/app/Notification$Builder;->build()Landroid/app/Notification;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    .line 1717
    return-void

    .line 1739
    :cond_3
    const-string/jumbo v4, ""

    invoke-virtual {v2, v4}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    goto :goto_1

    .line 1750
    :cond_4
    iget-object v4, v1, Lcom/android/internal/telephony/cat/TextMessage;->text:Ljava/lang/String;

    invoke-virtual {v2, v4}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    .line 1751
    iget-object v4, v1, Lcom/android/internal/telephony/cat/TextMessage;->text:Ljava/lang/String;

    invoke-virtual {v2, v4}, Landroid/app/Notification$Builder;->setTicker(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    goto :goto_2

    .line 1756
    :cond_5
    invoke-virtual {p0}, Lcom/android/stk/StkAppService;->getResources()Landroid/content/res/Resources;

    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v4

    invoke-static {v4, v9}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 1759
    .local v0, "bitmapIcon":Landroid/graphics/Bitmap;
    invoke-virtual {v2, v0}, Landroid/app/Notification$Builder;->setLargeIcon(Landroid/graphics/Bitmap;)Landroid/app/Notification$Builder;

    goto :goto_3
.end method

.method private launchInputActivity(I)V
    .locals 8
    .param p1, "slotId"    # I

    .prologue
    .line 1443
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v4, "android.intent.action.VIEW"

    invoke-direct {v0, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1444
    .local v0, "newIntent":Landroid/content/Intent;
    const-string/jumbo v1, "com.android.stk.StkInputActivity"

    .line 1445
    .local v1, "targetActivity":Ljava/lang/String;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "stk://com.android.stk/input/"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    invoke-virtual {v4, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 1447
    .local v3, "uriString":Ljava/lang/String;
    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    .line 1449
    .local v2, "uriData":Landroid/net/Uri;
    sget-object v4, Lcom/android/stk/StkAppService;->LOG_TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "launchInputActivity, slotId: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1451
    sget-object v4, Lcom/android/stk/StkAppService$InitiatedByUserAction;->unknown:Lcom/android/stk/StkAppService$InitiatedByUserAction;

    invoke-direct {p0, v4, p1}, Lcom/android/stk/StkAppService;->getFlagActivityNoUserAction(Lcom/android/stk/StkAppService$InitiatedByUserAction;I)I

    move-result v4

    .line 1450
    const/high16 v5, 0x10000000

    or-int/2addr v4, v5

    invoke-virtual {v0, v4}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 1452
    const-string/jumbo v4, "com.android.stk"

    invoke-virtual {v0, v4, v1}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1453
    const-string/jumbo v4, "INPUT"

    iget-object v5, p0, Lcom/android/stk/StkAppService;->mStkContext:[Lcom/android/stk/StkAppService$StkContext;

    aget-object v5, v5, p1

    iget-object v5, v5, Lcom/android/stk/StkAppService$StkContext;->mCurrentCmd:Lcom/android/internal/telephony/cat/CatCmdMessage;

    invoke-virtual {v5}, Lcom/android/internal/telephony/cat/CatCmdMessage;->geInput()Lcom/android/internal/telephony/cat/Input;

    move-result-object v5

    invoke-virtual {v0, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 1454
    const-string/jumbo v4, "SLOT_ID"

    invoke-virtual {v0, v4, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1455
    invoke-virtual {v0, v2}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 1456
    iget-object v4, p0, Lcom/android/stk/StkAppService;->mContext:Landroid/content/Context;

    invoke-virtual {v4, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 1442
    return-void
.end method

.method private launchMenuActivity(Lcom/android/internal/telephony/cat/Menu;I)V
    .locals 13
    .param p1, "menu"    # Lcom/android/internal/telephony/cat/Menu;
    .param p2, "slotId"    # I

    .prologue
    const/high16 v12, 0x10000000

    const/4 v11, 0x1

    const/4 v10, 0x2

    .line 1390
    new-instance v2, Landroid/content/Intent;

    const-string/jumbo v6, "android.intent.action.VIEW"

    invoke-direct {v2, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1391
    .local v2, "newIntent":Landroid/content/Intent;
    const-string/jumbo v3, "com.android.stk.StkMenuActivity"

    .line 1392
    .local v3, "targetActivity":Ljava/lang/String;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "stk://com.android.stk/menu/"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    invoke-virtual {v6, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 1394
    .local v5, "uriString":Ljava/lang/String;
    invoke-static {v5}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    .line 1396
    .local v4, "uriData":Landroid/net/Uri;
    sget-object v6, Lcom/android/stk/StkAppService;->LOG_TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "launchMenuActivity, slotId: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, " , "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 1397
    invoke-virtual {v4}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v8

    .line 1396
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 1397
    const-string/jumbo v8, " , "

    .line 1396
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 1397
    iget-object v8, p0, Lcom/android/stk/StkAppService;->mStkContext:[Lcom/android/stk/StkAppService$StkContext;

    aget-object v8, v8, p2

    iget v8, v8, Lcom/android/stk/StkAppService$StkContext;->mOpCode:I

    .line 1396
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 1397
    const-string/jumbo v8, ", "

    .line 1396
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 1398
    iget-object v8, p0, Lcom/android/stk/StkAppService;->mStkContext:[Lcom/android/stk/StkAppService$StkContext;

    aget-object v8, v8, p2

    iget v8, v8, Lcom/android/stk/StkAppService$StkContext;->mMenuState:I

    .line 1396
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1399
    const-string/jumbo v6, "com.android.stk"

    invoke-virtual {v2, v6, v3}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1402
    if-nez p1, :cond_2

    .line 1404
    sget-object v6, Lcom/android/stk/StkAppService$InitiatedByUserAction;->yes:Lcom/android/stk/StkAppService$InitiatedByUserAction;

    invoke-direct {p0, v6, p2}, Lcom/android/stk/StkAppService;->getFlagActivityNoUserAction(Lcom/android/stk/StkAppService$InitiatedByUserAction;I)I

    move-result v6

    or-int v1, v12, v6

    .line 1405
    .local v1, "intentFlags":I
    iget-object v6, p0, Lcom/android/stk/StkAppService;->mStkContext:[Lcom/android/stk/StkAppService$StkContext;

    aget-object v6, v6, p2

    iget v6, v6, Lcom/android/stk/StkAppService$StkContext;->mOpCode:I

    const/4 v7, 0x4

    if-ne v6, v7, :cond_0

    .line 1406
    sget-object v6, Lcom/android/stk/StkAppService;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v7, "launchMenuActivity, return OP_END_SESSION"

    invoke-static {v6, v7}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1407
    iget-object v6, p0, Lcom/android/stk/StkAppService;->mStkContext:[Lcom/android/stk/StkAppService$StkContext;

    aget-object v6, v6, p2

    iput v11, v6, Lcom/android/stk/StkAppService$StkContext;->mMenuState:I

    .line 1408
    iget-object v6, p0, Lcom/android/stk/StkAppService;->mStkContext:[Lcom/android/stk/StkAppService$StkContext;

    aget-object v6, v6, p2

    invoke-static {v6}, Lcom/android/stk/StkAppService$StkContext;->-get3(Lcom/android/stk/StkAppService$StkContext;)Landroid/app/Activity;

    move-result-object v6

    if-eqz v6, :cond_0

    .line 1409
    sget-object v6, Lcom/android/stk/StkAppService;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v7, "launchMenuActivity, mMainActivityInstance is not null"

    invoke-static {v6, v7}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1410
    return-void

    .line 1416
    :cond_0
    iget-object v6, p0, Lcom/android/stk/StkAppService;->mStkContext:[Lcom/android/stk/StkAppService$StkContext;

    aget-object v6, v6, p2

    iget v6, v6, Lcom/android/stk/StkAppService$StkContext;->mOpCode:I

    const/4 v7, 0x3

    if-ne v6, v7, :cond_1

    .line 1417
    iget-object v6, p0, Lcom/android/stk/StkAppService;->mStkContext:[Lcom/android/stk/StkAppService$StkContext;

    aget-object v6, v6, p2

    iget v6, v6, Lcom/android/stk/StkAppService$StkContext;->mMenuState:I

    if-ne v6, v10, :cond_1

    .line 1418
    const-string/jumbo v6, "STATE"

    invoke-virtual {v2, v6, v10}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1429
    :goto_0
    const-string/jumbo v6, "SLOT_ID"

    invoke-virtual {v2, v6, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1430
    invoke-virtual {v2, v4}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 1431
    invoke-virtual {v2, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 1435
    :try_start_0
    iget-object v6, p0, Lcom/android/stk/StkAppService;->mContext:Landroid/content/Context;

    invoke-virtual {v6, v2}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1389
    :goto_1
    return-void

    .line 1420
    :cond_1
    const-string/jumbo v6, "STATE"

    invoke-virtual {v2, v6, v11}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1421
    iget-object v6, p0, Lcom/android/stk/StkAppService;->mStkContext:[Lcom/android/stk/StkAppService$StkContext;

    aget-object v6, v6, p2

    iput v11, v6, Lcom/android/stk/StkAppService$StkContext;->mMenuState:I

    goto :goto_0

    .line 1425
    .end local v1    # "intentFlags":I
    :cond_2
    sget-object v6, Lcom/android/stk/StkAppService$InitiatedByUserAction;->unknown:Lcom/android/stk/StkAppService$InitiatedByUserAction;

    invoke-direct {p0, v6, p2}, Lcom/android/stk/StkAppService;->getFlagActivityNoUserAction(Lcom/android/stk/StkAppService$InitiatedByUserAction;I)I

    move-result v6

    or-int v1, v12, v6

    .line 1426
    .restart local v1    # "intentFlags":I
    const-string/jumbo v6, "STATE"

    invoke-virtual {v2, v6, v10}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1427
    iget-object v6, p0, Lcom/android/stk/StkAppService;->mStkContext:[Lcom/android/stk/StkAppService$StkContext;

    aget-object v6, v6, p2

    iput v10, v6, Lcom/android/stk/StkAppService$StkContext;->mMenuState:I

    goto :goto_0

    .line 1436
    :catch_0
    move-exception v0

    .line 1437
    .local v0, "e":Ljava/lang/Exception;
    sget-object v6, Lcom/android/stk/StkAppService;->LOG_TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "launch menu activity error:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1
.end method

.method private launchOpenChannelDialog(I)V
    .locals 5
    .param p1, "slotId"    # I

    .prologue
    .line 1881
    iget-object v2, p0, Lcom/android/stk/StkAppService;->mStkContext:[Lcom/android/stk/StkAppService$StkContext;

    aget-object v2, v2, p1

    iget-object v2, v2, Lcom/android/stk/StkAppService$StkContext;->mCurrentCmd:Lcom/android/internal/telephony/cat/CatCmdMessage;

    invoke-virtual {v2}, Lcom/android/internal/telephony/cat/CatCmdMessage;->geTextMessage()Lcom/android/internal/telephony/cat/TextMessage;

    move-result-object v1

    .line 1882
    .local v1, "msg":Lcom/android/internal/telephony/cat/TextMessage;
    if-nez v1, :cond_0

    .line 1883
    sget-object v2, Lcom/android/stk/StkAppService;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v3, "msg is null, return here"

    invoke-static {v2, v3}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1884
    return-void

    .line 1887
    :cond_0
    invoke-virtual {p0}, Lcom/android/stk/StkAppService;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f060011

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/android/internal/telephony/cat/TextMessage;->title:Ljava/lang/String;

    .line 1888
    iget-object v2, v1, Lcom/android/internal/telephony/cat/TextMessage;->text:Ljava/lang/String;

    if-nez v2, :cond_1

    .line 1889
    invoke-virtual {p0}, Lcom/android/stk/StkAppService;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f060013

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/android/internal/telephony/cat/TextMessage;->text:Ljava/lang/String;

    .line 1892
    :cond_1
    new-instance v2, Landroid/app/AlertDialog$Builder;

    iget-object v3, p0, Lcom/android/stk/StkAppService;->mContext:Landroid/content/Context;

    invoke-direct {v2, v3}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 1893
    const v3, 0x1010355

    .line 1892
    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setIconAttribute(I)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    .line 1894
    iget-object v3, v1, Lcom/android/internal/telephony/cat/TextMessage;->title:Ljava/lang/String;

    .line 1892
    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    .line 1895
    iget-object v3, v1, Lcom/android/internal/telephony/cat/TextMessage;->text:Ljava/lang/String;

    .line 1892
    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    .line 1896
    const/4 v3, 0x0

    .line 1892
    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    .line 1897
    invoke-virtual {p0}, Lcom/android/stk/StkAppService;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f060017

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 1898
    new-instance v4, Lcom/android/stk/StkAppService$2;

    invoke-direct {v4, p0, p1}, Lcom/android/stk/StkAppService$2;-><init>(Lcom/android/stk/StkAppService;I)V

    .line 1892
    invoke-virtual {v2, v3, v4}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    .line 1910
    invoke-virtual {p0}, Lcom/android/stk/StkAppService;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f060018

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 1911
    new-instance v4, Lcom/android/stk/StkAppService$3;

    invoke-direct {v4, p0, p1}, Lcom/android/stk/StkAppService$3;-><init>(Lcom/android/stk/StkAppService;I)V

    .line 1892
    invoke-virtual {v2, v3, v4}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .line 1925
    .local v0, "dialog":Landroid/app/AlertDialog;
    invoke-virtual {v0}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v2

    const/16 v3, 0x7d3

    invoke-virtual {v2, v3}, Landroid/view/Window;->setType(I)V

    .line 1926
    iget-object v2, p0, Lcom/android/stk/StkAppService;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    .line 1927
    const v3, 0x112000e

    .line 1926
    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v2

    if-nez v2, :cond_2

    .line 1928
    invoke-virtual {v0}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v2

    const/4 v3, 0x4

    invoke-virtual {v2, v3}, Landroid/view/Window;->addFlags(I)V

    .line 1931
    :cond_2
    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    .line 1880
    return-void
.end method

.method private launchTextDialog(I)V
    .locals 11
    .param p1, "slotId"    # I

    .prologue
    const/16 v10, 0xd

    const/4 v9, 0x0

    .line 1460
    sget-object v6, Lcom/android/stk/StkAppService;->LOG_TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "launchTextDialog, slotId: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1462
    invoke-static {p0}, Lcom/android/stk/MiuiStkUtils;->deviceIsProvisioned(Landroid/content/Context;)Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v6

    if-eqz v6, :cond_1

    .line 1463
    :cond_0
    const-string/jumbo v6, "device hasn\'t been provisioned or foregroud user not user own"

    invoke-static {p0, v6}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1464
    invoke-direct {p0, v10, p1, v9}, Lcom/android/stk/StkAppService;->sendResponse(IIZ)V

    .line 1465
    return-void

    .line 1468
    :cond_1
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    .line 1469
    .local v2, "newIntent":Landroid/content/Intent;
    const-string/jumbo v3, "com.android.stk.StkDialogActivity"

    .line 1470
    .local v3, "targetActivity":Ljava/lang/String;
    sget-object v6, Lcom/android/stk/StkAppService$InitiatedByUserAction;->unknown:Lcom/android/stk/StkAppService$InitiatedByUserAction;

    invoke-direct {p0, v6, p1}, Lcom/android/stk/StkAppService;->getFlagActivityNoUserAction(Lcom/android/stk/StkAppService$InitiatedByUserAction;I)I

    move-result v0

    .line 1471
    .local v0, "action":I
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "stk://com.android.stk/dialog/"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    invoke-virtual {v6, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 1473
    .local v5, "uriString":Ljava/lang/String;
    invoke-static {v5}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    .line 1474
    .local v4, "uriData":Landroid/net/Uri;
    if-eqz v2, :cond_2

    .line 1475
    const-string/jumbo v6, "com.android.stk"

    invoke-virtual {v2, v6, v3}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1478
    sget-object v6, Lcom/android/stk/StkAppService$InitiatedByUserAction;->unknown:Lcom/android/stk/StkAppService$InitiatedByUserAction;

    invoke-direct {p0, v6, p1}, Lcom/android/stk/StkAppService;->getFlagActivityNoUserAction(Lcom/android/stk/StkAppService$InitiatedByUserAction;I)I

    move-result v6

    .line 1476
    const/high16 v7, 0x10800000

    or-int/2addr v6, v7

    invoke-virtual {v2, v6}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 1479
    invoke-virtual {v2, v4}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 1480
    const-string/jumbo v6, "TEXT"

    iget-object v7, p0, Lcom/android/stk/StkAppService;->mStkContext:[Lcom/android/stk/StkAppService$StkContext;

    aget-object v7, v7, p1

    iget-object v7, v7, Lcom/android/stk/StkAppService$StkContext;->mCurrentCmd:Lcom/android/internal/telephony/cat/CatCmdMessage;

    invoke-virtual {v7}, Lcom/android/internal/telephony/cat/CatCmdMessage;->geTextMessage()Lcom/android/internal/telephony/cat/TextMessage;

    move-result-object v7

    invoke-virtual {v2, v6, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 1481
    const-string/jumbo v6, "SLOT_ID"

    invoke-virtual {v2, v6, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1483
    :try_start_0
    invoke-virtual {p0, v2}, Lcom/android/stk/StkAppService;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1490
    :goto_0
    iget-object v6, p0, Lcom/android/stk/StkAppService;->mStkContext:[Lcom/android/stk/StkAppService$StkContext;

    aget-object v6, v6, p1

    iget-object v6, v6, Lcom/android/stk/StkAppService$StkContext;->mCurrentCmd:Lcom/android/internal/telephony/cat/CatCmdMessage;

    invoke-virtual {v6}, Lcom/android/internal/telephony/cat/CatCmdMessage;->geTextMessage()Lcom/android/internal/telephony/cat/TextMessage;

    move-result-object v6

    iget-boolean v6, v6, Lcom/android/internal/telephony/cat/TextMessage;->responseNeeded:Z

    if-nez v6, :cond_2

    .line 1491
    const/4 v6, 0x1

    invoke-direct {p0, v10, p1, v6}, Lcom/android/stk/StkAppService;->sendResponse(IIZ)V

    .line 1459
    :cond_2
    return-void

    .line 1484
    :catch_0
    move-exception v1

    .line 1485
    .local v1, "e":Ljava/lang/Exception;
    sget-object v6, Lcom/android/stk/StkAppService;->LOG_TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "launch text dialog error:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private playTone(ZI)V
    .locals 10
    .param p1, "showUserInfo"    # Z
    .param p2, "slotId"    # I

    .prologue
    const/4 v7, 0x0

    .line 1811
    iget-object v6, p0, Lcom/android/stk/StkAppService;->mStkContext:[Lcom/android/stk/StkAppService$StkContext;

    aget-object v6, v6, p2

    iget-object v6, v6, Lcom/android/stk/StkAppService$StkContext;->mCurrentCmd:Lcom/android/internal/telephony/cat/CatCmdMessage;

    invoke-virtual {v6}, Lcom/android/internal/telephony/cat/CatCmdMessage;->getToneSettings()Lcom/android/internal/telephony/cat/ToneSettings;

    move-result-object v2

    .line 1812
    .local v2, "settings":Lcom/android/internal/telephony/cat/ToneSettings;
    const-string/jumbo v6, "vibrator"

    invoke-virtual {p0, v6}, Lcom/android/stk/StkAppService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/os/Vibrator;

    iput-object v6, p0, Lcom/android/stk/StkAppService;->mVibrator:Landroid/os/Vibrator;

    .line 1813
    new-instance v6, Lcom/android/stk/TonePlayer;

    invoke-direct {v6}, Lcom/android/stk/TonePlayer;-><init>()V

    iput-object v6, p0, Lcom/android/stk/StkAppService;->mTonePlayer:Lcom/android/stk/TonePlayer;

    .line 1814
    iget-object v6, p0, Lcom/android/stk/StkAppService;->mTonePlayer:Lcom/android/stk/TonePlayer;

    iget-object v8, v2, Lcom/android/internal/telephony/cat/ToneSettings;->tone:Lcom/android/internal/telephony/cat/Tone;

    invoke-virtual {v6, v8}, Lcom/android/stk/TonePlayer;->play(Lcom/android/internal/telephony/cat/Tone;)V

    .line 1815
    iget-object v6, v2, Lcom/android/internal/telephony/cat/ToneSettings;->duration:Lcom/android/internal/telephony/cat/Duration;

    invoke-static {v6}, Lcom/android/stk/StkApp;->calculateDurationInMilis(Lcom/android/internal/telephony/cat/Duration;)I

    move-result v3

    .line 1816
    .local v3, "timeout":I
    if-nez v3, :cond_0

    .line 1817
    const/16 v3, 0x7d0

    .line 1820
    :cond_0
    iget-object v6, p0, Lcom/android/stk/StkAppService;->mServiceHandler:Lcom/android/stk/StkAppService$ServiceHandler;

    invoke-virtual {v6}, Lcom/android/stk/StkAppService$ServiceHandler;->obtainMessage()Landroid/os/Message;

    move-result-object v0

    .line 1821
    .local v0, "msg":Landroid/os/Message;
    const/16 v6, 0x10

    iput v6, v0, Landroid/os/Message;->arg1:I

    .line 1822
    iput p2, v0, Landroid/os/Message;->arg2:I

    .line 1823
    if-eqz p1, :cond_3

    const/4 v6, 0x1

    :goto_0
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    iput-object v6, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 1824
    const/16 v6, 0x64

    iput v6, v0, Landroid/os/Message;->what:I

    .line 1825
    iget-object v6, p0, Lcom/android/stk/StkAppService;->mServiceHandler:Lcom/android/stk/StkAppService$ServiceHandler;

    int-to-long v8, v3

    invoke-virtual {v6, v0, v8, v9}, Lcom/android/stk/StkAppService$ServiceHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 1826
    iget-boolean v6, v2, Lcom/android/internal/telephony/cat/ToneSettings;->vibrate:Z

    if-eqz v6, :cond_1

    .line 1827
    iget-object v6, p0, Lcom/android/stk/StkAppService;->mVibrator:Landroid/os/Vibrator;

    int-to-long v8, v3

    invoke-virtual {v6, v8, v9}, Landroid/os/Vibrator;->vibrate(J)V

    .line 1831
    :cond_1
    if-eqz p1, :cond_2

    .line 1832
    new-instance v1, Landroid/content/Intent;

    sget-object v6, Lcom/android/stk/StkAppService;->sInstance:Lcom/android/stk/StkAppService;

    const-class v7, Lcom/android/stk/ToneDialog;

    invoke-direct {v1, v6, v7}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 1833
    .local v1, "newIntent":Landroid/content/Intent;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "stk://com.android.stk/tone/"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 1834
    .local v5, "uriString":Ljava/lang/String;
    invoke-static {v5}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    .line 1839
    .local v4, "uriData":Landroid/net/Uri;
    sget-object v6, Lcom/android/stk/StkAppService$InitiatedByUserAction;->unknown:Lcom/android/stk/StkAppService$InitiatedByUserAction;

    invoke-direct {p0, v6, p2}, Lcom/android/stk/StkAppService;->getFlagActivityNoUserAction(Lcom/android/stk/StkAppService$InitiatedByUserAction;I)I

    move-result v6

    .line 1835
    const/high16 v7, 0x70800000

    or-int/2addr v6, v7

    invoke-virtual {v1, v6}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 1840
    const-string/jumbo v6, "TEXT"

    iget-object v7, p0, Lcom/android/stk/StkAppService;->mStkContext:[Lcom/android/stk/StkAppService$StkContext;

    aget-object v7, v7, p2

    iget-object v7, v7, Lcom/android/stk/StkAppService$StkContext;->mCurrentCmd:Lcom/android/internal/telephony/cat/CatCmdMessage;

    invoke-virtual {v7}, Lcom/android/internal/telephony/cat/CatCmdMessage;->geTextMessage()Lcom/android/internal/telephony/cat/TextMessage;

    move-result-object v7

    invoke-virtual {v1, v6, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 1841
    const-string/jumbo v6, "SLOT_ID"

    invoke-virtual {v1, v6, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1842
    invoke-virtual {v1, v4}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 1843
    invoke-virtual {p0, v1}, Lcom/android/stk/StkAppService;->startActivity(Landroid/content/Intent;)V

    .line 1809
    .end local v1    # "newIntent":Landroid/content/Intent;
    .end local v4    # "uriData":Landroid/net/Uri;
    .end local v5    # "uriString":Ljava/lang/String;
    :cond_2
    return-void

    :cond_3
    move v6, v7

    .line 1823
    goto :goto_0
.end method

.method private removeMenu(I)Z
    .locals 5
    .param p1, "slotId"    # I

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 1990
    :try_start_0
    iget-object v1, p0, Lcom/android/stk/StkAppService;->mStkContext:[Lcom/android/stk/StkAppService$StkContext;

    aget-object v1, v1, p1

    iget-object v1, v1, Lcom/android/stk/StkAppService$StkContext;->mCurrentMenu:Lcom/android/internal/telephony/cat/Menu;

    iget-object v1, v1, Lcom/android/internal/telephony/cat/Menu;->items:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ne v1, v4, :cond_0

    .line 1991
    iget-object v1, p0, Lcom/android/stk/StkAppService;->mStkContext:[Lcom/android/stk/StkAppService$StkContext;

    aget-object v1, v1, p1

    iget-object v1, v1, Lcom/android/stk/StkAppService$StkContext;->mCurrentMenu:Lcom/android/internal/telephony/cat/Menu;

    iget-object v1, v1, Lcom/android/internal/telephony/cat/Menu;->items:Ljava/util/List;

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_0

    .line 1992
    iget-object v1, p0, Lcom/android/stk/StkAppService;->mStkContext:[Lcom/android/stk/StkAppService$StkContext;

    aget-object v1, v1, p1

    const/4 v2, 0x0

    iput v2, v1, Lcom/android/stk/StkAppService$StkContext;->mSetupMenuState:I
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1993
    return v4

    .line 1995
    :catch_0
    move-exception v0

    .line 1996
    .local v0, "e":Ljava/lang/NullPointerException;
    sget-object v1, Lcom/android/stk/StkAppService;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v2, "Unable to get Menu\'s items size"

    invoke-static {v1, v2}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1997
    iget-object v1, p0, Lcom/android/stk/StkAppService;->mStkContext:[Lcom/android/stk/StkAppService$StkContext;

    aget-object v1, v1, p1

    iput v3, v1, Lcom/android/stk/StkAppService$StkContext;->mSetupMenuState:I

    .line 1998
    return v4

    .line 2000
    .end local v0    # "e":Ljava/lang/NullPointerException;
    :cond_0
    iget-object v1, p0, Lcom/android/stk/StkAppService;->mStkContext:[Lcom/android/stk/StkAppService$StkContext;

    aget-object v1, v1, p1

    iput v4, v1, Lcom/android/stk/StkAppService$StkContext;->mSetupMenuState:I

    .line 2001
    return v3
.end method

.method private removeSetUpEvent(II)V
    .locals 3
    .param p1, "event"    # I
    .param p2, "slotId"    # I

    .prologue
    .line 1576
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Remove Event :"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1578
    iget-object v1, p0, Lcom/android/stk/StkAppService;->mStkContext:[Lcom/android/stk/StkAppService$StkContext;

    aget-object v1, v1, p2

    invoke-static {v1}, Lcom/android/stk/StkAppService$StkContext;->-get4(Lcom/android/stk/StkAppService$StkContext;)Lcom/android/internal/telephony/cat/CatCmdMessage$SetupEventListSettings;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 1582
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lcom/android/stk/StkAppService;->mStkContext:[Lcom/android/stk/StkAppService$StkContext;

    aget-object v1, v1, p2

    invoke-static {v1}, Lcom/android/stk/StkAppService$StkContext;->-get4(Lcom/android/stk/StkAppService$StkContext;)Lcom/android/internal/telephony/cat/CatCmdMessage$SetupEventListSettings;

    move-result-object v1

    iget-object v1, v1, Lcom/android/internal/telephony/cat/CatCmdMessage$SetupEventListSettings;->eventList:[I

    array-length v1, v1

    if-ge v0, v1, :cond_0

    .line 1583
    iget-object v1, p0, Lcom/android/stk/StkAppService;->mStkContext:[Lcom/android/stk/StkAppService$StkContext;

    aget-object v1, v1, p2

    invoke-static {v1}, Lcom/android/stk/StkAppService$StkContext;->-get4(Lcom/android/stk/StkAppService$StkContext;)Lcom/android/internal/telephony/cat/CatCmdMessage$SetupEventListSettings;

    move-result-object v1

    iget-object v1, v1, Lcom/android/internal/telephony/cat/CatCmdMessage$SetupEventListSettings;->eventList:[I

    aget v1, v1, v0

    if-ne p1, v1, :cond_1

    .line 1584
    iget-object v1, p0, Lcom/android/stk/StkAppService;->mStkContext:[Lcom/android/stk/StkAppService$StkContext;

    aget-object v1, v1, p2

    invoke-static {v1}, Lcom/android/stk/StkAppService$StkContext;->-get4(Lcom/android/stk/StkAppService$StkContext;)Lcom/android/internal/telephony/cat/CatCmdMessage$SetupEventListSettings;

    move-result-object v1

    iget-object v1, v1, Lcom/android/internal/telephony/cat/CatCmdMessage$SetupEventListSettings;->eventList:[I

    const/16 v2, 0xff

    aput v2, v1, v0

    .line 1575
    .end local v0    # "i":I
    :cond_0
    return-void

    .line 1582
    .restart local v0    # "i":I
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method private restoreInstanceFromStackBySlot(I)V
    .locals 4
    .param p1, "slotId"    # I

    .prologue
    .line 1355
    iget-object v1, p0, Lcom/android/stk/StkAppService;->mStkContext:[Lcom/android/stk/StkAppService$StkContext;

    aget-object v1, v1, p1

    iget-object v1, v1, Lcom/android/stk/StkAppService$StkContext;->mCurrentCmd:Lcom/android/internal/telephony/cat/CatCmdMessage;

    invoke-virtual {v1}, Lcom/android/internal/telephony/cat/CatCmdMessage;->getCmdType()Lcom/android/internal/telephony/cat/AppInterface$CommandType;

    move-result-object v0

    .line 1357
    .local v0, "cmdType":Lcom/android/internal/telephony/cat/AppInterface$CommandType;
    sget-object v1, Lcom/android/stk/StkAppService;->LOG_TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "restoreInstanceFromStackBySlot cmdType : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1358
    invoke-static {}, Lcom/android/stk/StkAppService;->-getcom-android-internal-telephony-cat-AppInterface$CommandTypeSwitchesValues()[I

    move-result-object v1

    invoke-virtual {v0}, Lcom/android/internal/telephony/cat/AppInterface$CommandType;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    .line 1354
    :goto_0
    :pswitch_0
    return-void

    .line 1361
    :pswitch_1
    invoke-direct {p0, p1}, Lcom/android/stk/StkAppService;->launchInputActivity(I)V

    .line 1364
    iget-object v1, p0, Lcom/android/stk/StkAppService;->mStkContext:[Lcom/android/stk/StkAppService$StkContext;

    aget-object v1, v1, p1

    const/4 v2, 0x1

    iput-boolean v2, v1, Lcom/android/stk/StkAppService$StkContext;->mMenuIsVisible:Z

    goto :goto_0

    .line 1367
    :pswitch_2
    invoke-direct {p0, p1}, Lcom/android/stk/StkAppService;->launchTextDialog(I)V

    goto :goto_0

    .line 1370
    :pswitch_3
    iget-object v1, p0, Lcom/android/stk/StkAppService;->mStkContext:[Lcom/android/stk/StkAppService$StkContext;

    aget-object v1, v1, p1

    iget-object v1, v1, Lcom/android/stk/StkAppService$StkContext;->mCurrentCmd:Lcom/android/internal/telephony/cat/CatCmdMessage;

    invoke-virtual {v1}, Lcom/android/internal/telephony/cat/CatCmdMessage;->geTextMessage()Lcom/android/internal/telephony/cat/TextMessage;

    move-result-object v1

    invoke-direct {p0, v1, p1}, Lcom/android/stk/StkAppService;->launchConfirmationDialog(Lcom/android/internal/telephony/cat/TextMessage;I)V

    goto :goto_0

    .line 1374
    :pswitch_4
    invoke-direct {p0, p1}, Lcom/android/stk/StkAppService;->launchOpenChannelDialog(I)V

    goto :goto_0

    .line 1377
    :pswitch_5
    iget-object v1, p0, Lcom/android/stk/StkAppService;->mStkContext:[Lcom/android/stk/StkAppService$StkContext;

    aget-object v1, v1, p1

    iget-object v1, v1, Lcom/android/stk/StkAppService$StkContext;->mCurrentCmd:Lcom/android/internal/telephony/cat/CatCmdMessage;

    invoke-virtual {v1}, Lcom/android/internal/telephony/cat/CatCmdMessage;->getCallSettings()Lcom/android/internal/telephony/cat/CatCmdMessage$CallSettings;

    move-result-object v1

    iget-object v1, v1, Lcom/android/internal/telephony/cat/CatCmdMessage$CallSettings;->confirmMsg:Lcom/android/internal/telephony/cat/TextMessage;

    invoke-direct {p0, v1, p1}, Lcom/android/stk/StkAppService;->launchConfirmationDialog(Lcom/android/internal/telephony/cat/TextMessage;I)V

    goto :goto_0

    .line 1382
    :pswitch_6
    const/4 v1, 0x0

    invoke-direct {p0, v1, p1}, Lcom/android/stk/StkAppService;->launchMenuActivity(Lcom/android/internal/telephony/cat/Menu;I)V

    goto :goto_0

    .line 1358
    nop

    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_2
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_3
        :pswitch_4
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_6
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_5
        :pswitch_0
        :pswitch_0
        :pswitch_6
    .end packed-switch
.end method

.method private sendResponse(IIZ)V
    .locals 3
    .param p1, "resId"    # I
    .param p2, "slotId"    # I
    .param p3, "confirm"    # Z

    .prologue
    .line 789
    iget-object v2, p0, Lcom/android/stk/StkAppService;->mServiceHandler:Lcom/android/stk/StkAppService$ServiceHandler;

    invoke-virtual {v2}, Lcom/android/stk/StkAppService$ServiceHandler;->obtainMessage()Landroid/os/Message;

    move-result-object v1

    .line 790
    .local v1, "msg":Landroid/os/Message;
    const/4 v2, 0x2

    iput v2, v1, Landroid/os/Message;->arg1:I

    .line 791
    iput p2, v1, Landroid/os/Message;->arg2:I

    .line 792
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 793
    .local v0, "args":Landroid/os/Bundle;
    const-string/jumbo v2, "response id"

    invoke-virtual {v0, v2, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 794
    const-string/jumbo v2, "confirm"

    invoke-virtual {v0, v2, p3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 795
    iput-object v0, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 796
    iget-object v2, p0, Lcom/android/stk/StkAppService;->mServiceHandler:Lcom/android/stk/StkAppService$ServiceHandler;

    invoke-virtual {v2, v1}, Lcom/android/stk/StkAppService$ServiceHandler;->sendMessage(Landroid/os/Message;)Z

    .line 788
    return-void
.end method

.method private sendScreenBusyResponse(I)V
    .locals 3
    .param p1, "slotId"    # I

    .prologue
    const/4 v2, 0x0

    .line 774
    iget-object v1, p0, Lcom/android/stk/StkAppService;->mStkContext:[Lcom/android/stk/StkAppService$StkContext;

    aget-object v1, v1, p1

    iget-object v1, v1, Lcom/android/stk/StkAppService$StkContext;->mCurrentCmd:Lcom/android/internal/telephony/cat/CatCmdMessage;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/stk/StkAppService;->mStkService:[Lcom/android/internal/telephony/cat/AppInterface;

    aget-object v1, v1, p1

    if-nez v1, :cond_1

    .line 775
    :cond_0
    return-void

    .line 777
    :cond_1
    new-instance v0, Lcom/android/internal/telephony/cat/CatResponseMessage;

    iget-object v1, p0, Lcom/android/stk/StkAppService;->mStkContext:[Lcom/android/stk/StkAppService$StkContext;

    aget-object v1, v1, p1

    iget-object v1, v1, Lcom/android/stk/StkAppService$StkContext;->mCurrentCmd:Lcom/android/internal/telephony/cat/CatCmdMessage;

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/cat/CatResponseMessage;-><init>(Lcom/android/internal/telephony/cat/CatCmdMessage;)V

    .line 778
    .local v0, "resMsg":Lcom/android/internal/telephony/cat/CatResponseMessage;
    const-string/jumbo v1, "SCREEN_BUSY"

    invoke-static {p0, v1}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 779
    sget-object v1, Lcom/android/internal/telephony/cat/ResultCode;->TERMINAL_CRNTLY_UNABLE_TO_PROCESS:Lcom/android/internal/telephony/cat/ResultCode;

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/cat/CatResponseMessage;->setResultCode(Lcom/android/internal/telephony/cat/ResultCode;)V

    .line 780
    iget-object v1, p0, Lcom/android/stk/StkAppService;->mStkService:[Lcom/android/internal/telephony/cat/AppInterface;

    aget-object v1, v1, p1

    invoke-interface {v1, v0}, Lcom/android/internal/telephony/cat/AppInterface;->onCmdResponse(Lcom/android/internal/telephony/cat/CatResponseMessage;)V

    .line 781
    iget-object v1, p0, Lcom/android/stk/StkAppService;->mStkContext:[Lcom/android/stk/StkAppService$StkContext;

    aget-object v1, v1, p1

    iget-object v1, v1, Lcom/android/stk/StkAppService$StkContext;->mCmdsQ:Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/util/LinkedList;->size()I

    move-result v1

    if-eqz v1, :cond_2

    .line 782
    invoke-direct {p0, p1}, Lcom/android/stk/StkAppService;->callDelayedMsg(I)V

    .line 771
    :goto_0
    return-void

    .line 784
    :cond_2
    iget-object v1, p0, Lcom/android/stk/StkAppService;->mStkContext:[Lcom/android/stk/StkAppService$StkContext;

    aget-object v1, v1, p1

    iput-boolean v2, v1, Lcom/android/stk/StkAppService$StkContext;->mCmdInProgress:Z

    goto :goto_0
.end method

.method private sendSetUpEventResponse(I[BI)V
    .locals 3
    .param p1, "event"    # I
    .param p2, "addedInfo"    # [B
    .param p3, "slotId"    # I

    .prologue
    .line 1512
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "sendSetUpEventResponse: event : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "slotId = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1514
    iget-object v1, p0, Lcom/android/stk/StkAppService;->mStkContext:[Lcom/android/stk/StkAppService$StkContext;

    aget-object v1, v1, p3

    invoke-static {v1}, Lcom/android/stk/StkAppService$StkContext;->-get0(Lcom/android/stk/StkAppService$StkContext;)Lcom/android/internal/telephony/cat/CatCmdMessage;

    move-result-object v1

    if-nez v1, :cond_0

    .line 1515
    const-string/jumbo v1, "mCurrentSetupEventCmd is null"

    invoke-static {p0, v1}, Lcom/android/internal/telephony/cat/CatLog;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1516
    return-void

    .line 1519
    :cond_0
    new-instance v0, Lcom/android/internal/telephony/cat/CatResponseMessage;

    iget-object v1, p0, Lcom/android/stk/StkAppService;->mStkContext:[Lcom/android/stk/StkAppService$StkContext;

    aget-object v1, v1, p3

    invoke-static {v1}, Lcom/android/stk/StkAppService$StkContext;->-get0(Lcom/android/stk/StkAppService$StkContext;)Lcom/android/internal/telephony/cat/CatCmdMessage;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/cat/CatResponseMessage;-><init>(Lcom/android/internal/telephony/cat/CatCmdMessage;)V

    .line 1521
    .local v0, "resMsg":Lcom/android/internal/telephony/cat/CatResponseMessage;
    sget-object v1, Lcom/android/internal/telephony/cat/ResultCode;->OK:Lcom/android/internal/telephony/cat/ResultCode;

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/cat/CatResponseMessage;->setResultCode(Lcom/android/internal/telephony/cat/ResultCode;)V

    .line 1522
    invoke-virtual {v0, p1, p2}, Lcom/android/internal/telephony/cat/CatResponseMessage;->setEventDownload(I[B)V

    .line 1524
    iget-object v1, p0, Lcom/android/stk/StkAppService;->mStkService:[Lcom/android/internal/telephony/cat/AppInterface;

    aget-object v1, v1, p3

    invoke-interface {v1, v0}, Lcom/android/internal/telephony/cat/AppInterface;->onCmdResponse(Lcom/android/internal/telephony/cat/CatResponseMessage;)V

    .line 1511
    return-void
.end method

.method private validateBrowserRequest(Lcom/android/internal/telephony/cat/CatCmdMessage$BrowserSettings;)Z
    .locals 3
    .param p1, "settings"    # Lcom/android/internal/telephony/cat/CatCmdMessage$BrowserSettings;

    .prologue
    .line 2023
    const-string/jumbo v1, "persist.radio.stk.default_url"

    const-string/jumbo v2, ""

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2024
    .local v0, "url":Ljava/lang/String;
    const-string/jumbo v1, ""

    if-ne v0, v1, :cond_0

    iget-object v1, p1, Lcom/android/internal/telephony/cat/CatCmdMessage$BrowserSettings;->url:Ljava/lang/String;

    if-nez v1, :cond_0

    .line 2025
    const/4 v1, 0x0

    return v1

    .line 2027
    :cond_0
    const/4 v1, 0x1

    return v1
.end method

.method private waitForLooper()V
    .locals 4

    .prologue
    .line 496
    :goto_0
    iget-object v1, p0, Lcom/android/stk/StkAppService;->mServiceHandler:Lcom/android/stk/StkAppService$ServiceHandler;

    if-nez v1, :cond_0

    .line 497
    monitor-enter p0

    .line 499
    const-wide/16 v2, 0x64

    :try_start_0
    invoke-virtual {p0, v2, v3}, Lcom/android/stk/StkAppService;->wait(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_1
    monitor-exit p0

    goto :goto_0

    .line 500
    :catch_0
    move-exception v0

    .local v0, "e":Ljava/lang/InterruptedException;
    goto :goto_1

    .line 497
    .end local v0    # "e":Ljava/lang/InterruptedException;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1

    .line 495
    :cond_0
    return-void
.end method


# virtual methods
.method getMainMenu(I)Lcom/android/internal/telephony/cat/Menu;
    .locals 4
    .param p1, "slotId"    # I

    .prologue
    const/4 v3, 0x0

    .line 479
    sget-object v0, Lcom/android/stk/StkAppService;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "StkAppService, getMainMenu, sim id: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 480
    if-ltz p1, :cond_0

    iget v0, p0, Lcom/android/stk/StkAppService;->mSimCount:I

    if-ge p1, v0, :cond_0

    iget-object v0, p0, Lcom/android/stk/StkAppService;->mStkContext:[Lcom/android/stk/StkAppService$StkContext;

    aget-object v0, v0, p1

    iget-object v0, v0, Lcom/android/stk/StkAppService$StkContext;->mMainCmd:Lcom/android/internal/telephony/cat/CatCmdMessage;

    if-eqz v0, :cond_0

    .line 481
    iget-object v0, p0, Lcom/android/stk/StkAppService;->mStkContext:[Lcom/android/stk/StkAppService$StkContext;

    aget-object v0, v0, p1

    iget-object v0, v0, Lcom/android/stk/StkAppService$StkContext;->mMainCmd:Lcom/android/internal/telephony/cat/CatCmdMessage;

    invoke-virtual {v0}, Lcom/android/internal/telephony/cat/CatCmdMessage;->getMenu()Lcom/android/internal/telephony/cat/Menu;

    move-result-object v0

    return-object v0

    .line 483
    :cond_0
    return-object v3
.end method

.method getMenu(I)Lcom/android/internal/telephony/cat/Menu;
    .locals 3
    .param p1, "slotId"    # I

    .prologue
    .line 467
    sget-object v0, Lcom/android/stk/StkAppService;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "StkAppService, getMenu, sim id: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 468
    if-ltz p1, :cond_0

    iget v0, p0, Lcom/android/stk/StkAppService;->mSimCount:I

    if-ge p1, v0, :cond_0

    .line 469
    iget-object v0, p0, Lcom/android/stk/StkAppService;->mStkContext:[Lcom/android/stk/StkAppService$StkContext;

    aget-object v0, v0, p1

    iget-object v0, v0, Lcom/android/stk/StkAppService$StkContext;->mCurrentMenu:Lcom/android/internal/telephony/cat/Menu;

    return-object v0

    .line 471
    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method getStkContext(I)Lcom/android/stk/StkAppService$StkContext;
    .locals 3
    .param p1, "slotId"    # I

    .prologue
    .line 2005
    if-ltz p1, :cond_0

    iget v0, p0, Lcom/android/stk/StkAppService;->mSimCount:I

    if-ge p1, v0, :cond_0

    .line 2006
    iget-object v0, p0, Lcom/android/stk/StkAppService;->mStkContext:[Lcom/android/stk/StkAppService$StkContext;

    aget-object v0, v0, p1

    return-object v0

    .line 2008
    :cond_0
    sget-object v0, Lcom/android/stk/StkAppService;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "invalid slotId: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2009
    const/4 v0, 0x0

    return-object v0
.end method

.method indicateMenuVisibility(ZI)V
    .locals 1
    .param p1, "visibility"    # Z
    .param p2, "slotId"    # I

    .prologue
    .line 425
    if-ltz p2, :cond_0

    iget v0, p0, Lcom/android/stk/StkAppService;->mSimCount:I

    if-ge p2, v0, :cond_0

    .line 426
    iget-object v0, p0, Lcom/android/stk/StkAppService;->mStkContext:[Lcom/android/stk/StkAppService$StkContext;

    aget-object v0, v0, p2

    iput-boolean p1, v0, Lcom/android/stk/StkAppService$StkContext;->mMenuIsVisible:Z

    .line 424
    :cond_0
    return-void
.end method

.method isDialogPending(I)Z
    .locals 3
    .param p1, "slotId"    # I

    .prologue
    const/4 v1, 0x0

    .line 456
    if-ltz p1, :cond_0

    iget v0, p0, Lcom/android/stk/StkAppService;->mSimCount:I

    if-ge p1, v0, :cond_0

    .line 457
    sget-object v0, Lcom/android/stk/StkAppService;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "isDialogPending: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/stk/StkAppService;->mStkContext:[Lcom/android/stk/StkAppService$StkContext;

    aget-object v2, v2, p1

    iget-boolean v2, v2, Lcom/android/stk/StkAppService$StkContext;->mIsDialogPending:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 458
    iget-object v0, p0, Lcom/android/stk/StkAppService;->mStkContext:[Lcom/android/stk/StkAppService$StkContext;

    aget-object v0, v0, p1

    iget-boolean v0, v0, Lcom/android/stk/StkAppService$StkContext;->mIsDialogPending:Z

    return v0

    .line 460
    :cond_0
    return v1
.end method

.method isInputPending(I)Z
    .locals 3
    .param p1, "slotId"    # I

    .prologue
    const/4 v1, 0x0

    .line 440
    if-ltz p1, :cond_0

    iget v0, p0, Lcom/android/stk/StkAppService;->mSimCount:I

    if-ge p1, v0, :cond_0

    .line 441
    sget-object v0, Lcom/android/stk/StkAppService;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "isInputFinishBySrv: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/stk/StkAppService;->mStkContext:[Lcom/android/stk/StkAppService$StkContext;

    aget-object v2, v2, p1

    iget-boolean v2, v2, Lcom/android/stk/StkAppService$StkContext;->mIsInputPending:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 442
    iget-object v0, p0, Lcom/android/stk/StkAppService;->mStkContext:[Lcom/android/stk/StkAppService$StkContext;

    aget-object v0, v0, p1

    iget-boolean v0, v0, Lcom/android/stk/StkAppService$StkContext;->mIsInputPending:Z

    return v0

    .line 444
    :cond_0
    return v1
.end method

.method isMenuPending(I)Z
    .locals 3
    .param p1, "slotId"    # I

    .prologue
    const/4 v1, 0x0

    .line 448
    if-ltz p1, :cond_0

    iget v0, p0, Lcom/android/stk/StkAppService;->mSimCount:I

    if-ge p1, v0, :cond_0

    .line 449
    sget-object v0, Lcom/android/stk/StkAppService;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "isMenuPending: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/stk/StkAppService;->mStkContext:[Lcom/android/stk/StkAppService$StkContext;

    aget-object v2, v2, p1

    iget-boolean v2, v2, Lcom/android/stk/StkAppService$StkContext;->mIsMenuPending:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 450
    iget-object v0, p0, Lcom/android/stk/StkAppService;->mStkContext:[Lcom/android/stk/StkAppService$StkContext;

    aget-object v0, v0, p1

    iget-boolean v0, v0, Lcom/android/stk/StkAppService$StkContext;->mIsMenuPending:Z

    return v0

    .line 452
    :cond_0
    return v1
.end method

.method public isStkDialogActivated(Landroid/content/Context;)Z
    .locals 7
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 1497
    const-string/jumbo v2, "com.android.stk.StkDialogActivity"

    .line 1498
    .local v2, "stkDialogActivity":Ljava/lang/String;
    const/4 v0, 0x0

    .line 1500
    .local v0, "activated":Z
    const-string/jumbo v4, "activity"

    .line 1499
    invoke-virtual {p1, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/ActivityManager;

    .line 1501
    .local v1, "am":Landroid/app/ActivityManager;
    const/4 v4, 0x1

    invoke-virtual {v1, v4}, Landroid/app/ActivityManager;->getRunningTasks(I)Ljava/util/List;

    move-result-object v4

    const/4 v5, 0x0

    invoke-interface {v4, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/app/ActivityManager$RunningTaskInfo;

    iget-object v4, v4, Landroid/app/ActivityManager$RunningTaskInfo;->topActivity:Landroid/content/ComponentName;

    invoke-virtual {v4}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v3

    .line 1503
    .local v3, "topActivity":Ljava/lang/String;
    sget-object v4, Lcom/android/stk/StkAppService;->LOG_TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "isStkDialogActivated: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1504
    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 1505
    const/4 v0, 0x1

    .line 1507
    :cond_0
    sget-object v4, Lcom/android/stk/StkAppService;->LOG_TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "activated : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1508
    return v0
.end method

.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 1
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 409
    const/4 v0, 0x0

    return-object v0
.end method

.method public onCreate()V
    .locals 5

    .prologue
    .line 293
    sget-object v2, Lcom/android/stk/StkAppService;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v3, "onCreate()+"

    invoke-static {v2, v3}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 295
    const/4 v0, 0x0

    .line 296
    .local v0, "i":I
    invoke-virtual {p0}, Lcom/android/stk/StkAppService;->getBaseContext()Landroid/content/Context;

    move-result-object v2

    iput-object v2, p0, Lcom/android/stk/StkAppService;->mContext:Landroid/content/Context;

    .line 297
    iget-object v2, p0, Lcom/android/stk/StkAppService;->mContext:Landroid/content/Context;

    invoke-static {v2}, Landroid/telephony/TelephonyManager;->from(Landroid/content/Context;)Landroid/telephony/TelephonyManager;

    move-result-object v2

    invoke-virtual {v2}, Landroid/telephony/TelephonyManager;->getSimCount()I

    move-result v2

    iput v2, p0, Lcom/android/stk/StkAppService;->mSimCount:I

    .line 298
    sget-object v2, Lcom/android/stk/StkAppService;->LOG_TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "simCount: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/android/stk/StkAppService;->mSimCount:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 299
    iget v2, p0, Lcom/android/stk/StkAppService;->mSimCount:I

    new-array v2, v2, [Lcom/android/internal/telephony/cat/AppInterface;

    iput-object v2, p0, Lcom/android/stk/StkAppService;->mStkService:[Lcom/android/internal/telephony/cat/AppInterface;

    .line 300
    iget v2, p0, Lcom/android/stk/StkAppService;->mSimCount:I

    new-array v2, v2, [Lcom/android/stk/StkAppService$StkContext;

    iput-object v2, p0, Lcom/android/stk/StkAppService;->mStkContext:[Lcom/android/stk/StkAppService$StkContext;

    .line 301
    const-string/jumbo v2, "power"

    invoke-virtual {p0, v2}, Lcom/android/stk/StkAppService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/PowerManager;

    iput-object v2, p0, Lcom/android/stk/StkAppService;->mPowerManager:Landroid/os/PowerManager;

    .line 302
    new-instance v2, Lcom/android/stk/StkCmdReceiver;

    invoke-direct {v2}, Lcom/android/stk/StkCmdReceiver;-><init>()V

    iput-object v2, p0, Lcom/android/stk/StkAppService;->mStkCmdReceiver:Lcom/android/stk/StkCmdReceiver;

    .line 303
    iget-object v2, p0, Lcom/android/stk/StkAppService;->mStkCmdReceiver:Lcom/android/stk/StkCmdReceiver;

    new-instance v3, Landroid/content/IntentFilter;

    const-string/jumbo v4, "android.intent.action.SCREEN_OFF"

    invoke-direct {v3, v4}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v2, v3}, Lcom/android/stk/StkAppService;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 304
    const/4 v0, 0x0

    :goto_0
    iget v2, p0, Lcom/android/stk/StkAppService;->mSimCount:I

    if-ge v0, v2, :cond_0

    .line 305
    sget-object v2, Lcom/android/stk/StkAppService;->LOG_TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "slotId: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 306
    iget-object v2, p0, Lcom/android/stk/StkAppService;->mStkService:[Lcom/android/internal/telephony/cat/AppInterface;

    invoke-static {v0}, Lcom/android/internal/telephony/cat/CatService;->getInstance(I)Lcom/android/internal/telephony/cat/AppInterface;

    move-result-object v3

    aput-object v3, v2, v0

    .line 307
    iget-object v2, p0, Lcom/android/stk/StkAppService;->mStkContext:[Lcom/android/stk/StkAppService$StkContext;

    new-instance v3, Lcom/android/stk/StkAppService$StkContext;

    invoke-direct {v3, p0}, Lcom/android/stk/StkAppService$StkContext;-><init>(Lcom/android/stk/StkAppService;)V

    aput-object v3, v2, v0

    .line 308
    iget-object v2, p0, Lcom/android/stk/StkAppService;->mStkContext:[Lcom/android/stk/StkAppService$StkContext;

    aget-object v2, v2, v0

    invoke-static {v2, v0}, Lcom/android/stk/StkAppService$StkContext;->-set7(Lcom/android/stk/StkAppService$StkContext;I)I

    .line 309
    iget-object v2, p0, Lcom/android/stk/StkAppService;->mStkContext:[Lcom/android/stk/StkAppService$StkContext;

    aget-object v2, v2, v0

    new-instance v3, Ljava/util/LinkedList;

    invoke-direct {v3}, Ljava/util/LinkedList;-><init>()V

    iput-object v3, v2, Lcom/android/stk/StkAppService$StkContext;->mCmdsQ:Ljava/util/LinkedList;

    .line 304
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 312
    :cond_0
    new-instance v1, Ljava/lang/Thread;

    const-string/jumbo v2, "Stk App Service"

    const/4 v3, 0x0

    invoke-direct {v1, v3, p0, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/ThreadGroup;Ljava/lang/Runnable;Ljava/lang/String;)V

    .line 313
    .local v1, "serviceThread":Ljava/lang/Thread;
    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    .line 314
    iget-object v2, p0, Lcom/android/stk/StkAppService;->mContext:Landroid/content/Context;

    .line 315
    const-string/jumbo v3, "notification"

    .line 314
    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/NotificationManager;

    iput-object v2, p0, Lcom/android/stk/StkAppService;->mNotificationManager:Landroid/app/NotificationManager;

    .line 316
    sput-object p0, Lcom/android/stk/StkAppService;->sInstance:Lcom/android/stk/StkAppService;

    .line 292
    return-void
.end method

.method public onDestroy()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 397
    sget-object v0, Lcom/android/stk/StkAppService;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v1, "onDestroy()"

    invoke-static {v0, v1}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 398
    iget-object v0, p0, Lcom/android/stk/StkAppService;->mStkCmdReceiver:Lcom/android/stk/StkCmdReceiver;

    if-eqz v0, :cond_0

    .line 399
    iget-object v0, p0, Lcom/android/stk/StkAppService;->mStkCmdReceiver:Lcom/android/stk/StkCmdReceiver;

    invoke-virtual {p0, v0}, Lcom/android/stk/StkAppService;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 400
    iput-object v2, p0, Lcom/android/stk/StkAppService;->mStkCmdReceiver:Lcom/android/stk/StkCmdReceiver;

    .line 402
    :cond_0
    iput-object v2, p0, Lcom/android/stk/StkAppService;->mPowerManager:Landroid/os/PowerManager;

    .line 403
    invoke-direct {p0}, Lcom/android/stk/StkAppService;->waitForLooper()V

    .line 404
    iget-object v0, p0, Lcom/android/stk/StkAppService;->mServiceLooper:Landroid/os/Looper;

    invoke-virtual {v0}, Landroid/os/Looper;->quit()V

    .line 396
    return-void
.end method

.method public onStart(Landroid/content/Intent;I)V
    .locals 10
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "startId"    # I

    .prologue
    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 321
    if-nez p1, :cond_0

    .line 322
    sget-object v5, Lcom/android/stk/StkAppService;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v6, "StkAppService onStart intent is null so return"

    invoke-static {v5, v6}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 323
    return-void

    .line 326
    :cond_0
    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    .line 327
    .local v0, "args":Landroid/os/Bundle;
    if-nez v0, :cond_1

    .line 328
    sget-object v5, Lcom/android/stk/StkAppService;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v6, "StkAppService onStart args is null so return"

    invoke-static {v5, v6}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 329
    return-void

    .line 332
    :cond_1
    const-string/jumbo v5, "op"

    invoke-virtual {v0, v5}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v3

    .line 333
    .local v3, "op":I
    const/4 v4, 0x0

    .line 334
    .local v4, "slotId":I
    const/4 v1, 0x0

    .line 335
    .local v1, "i":I
    const/4 v5, 0x5

    if-eq v3, v5, :cond_2

    .line 336
    const-string/jumbo v5, "SLOT_ID"

    invoke-virtual {v0, v5}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v4

    .line 338
    :cond_2
    sget-object v5, Lcom/android/stk/StkAppService;->LOG_TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "onStart sim id: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, ", op: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, ", *****"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 339
    if-ltz v4, :cond_6

    iget v5, p0, Lcom/android/stk/StkAppService;->mSimCount:I

    if-ge v4, v5, :cond_6

    iget-object v5, p0, Lcom/android/stk/StkAppService;->mStkService:[Lcom/android/internal/telephony/cat/AppInterface;

    aget-object v5, v5, v4

    if-nez v5, :cond_6

    .line 340
    iget-object v5, p0, Lcom/android/stk/StkAppService;->mStkService:[Lcom/android/internal/telephony/cat/AppInterface;

    invoke-static {v4}, Lcom/android/internal/telephony/cat/CatService;->getInstance(I)Lcom/android/internal/telephony/cat/AppInterface;

    move-result-object v6

    aput-object v6, v5, v4

    .line 341
    iget-object v5, p0, Lcom/android/stk/StkAppService;->mStkService:[Lcom/android/internal/telephony/cat/AppInterface;

    aget-object v5, v5, v4

    if-nez v5, :cond_5

    .line 342
    sget-object v5, Lcom/android/stk/StkAppService;->LOG_TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "mStkService is: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/android/stk/StkAppService;->mStkContext:[Lcom/android/stk/StkAppService$StkContext;

    aget-object v7, v7, v4

    iget v7, v7, Lcom/android/stk/StkAppService$StkContext;->mStkServiceState:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 343
    iget-object v5, p0, Lcom/android/stk/StkAppService;->mStkContext:[Lcom/android/stk/StkAppService$StkContext;

    aget-object v5, v5, v4

    iput v8, v5, Lcom/android/stk/StkAppService$StkContext;->mStkServiceState:I

    .line 346
    const/4 v1, 0x0

    :goto_0
    iget v5, p0, Lcom/android/stk/StkAppService;->mSimCount:I

    if-ge v1, v5, :cond_3

    .line 347
    if-eq v1, v4, :cond_4

    .line 348
    iget-object v5, p0, Lcom/android/stk/StkAppService;->mStkContext:[Lcom/android/stk/StkAppService$StkContext;

    aget-object v5, v5, v1

    iget v5, v5, Lcom/android/stk/StkAppService$StkContext;->mStkServiceState:I

    const/4 v6, -0x1

    if-eq v5, v6, :cond_3

    .line 349
    iget-object v5, p0, Lcom/android/stk/StkAppService;->mStkContext:[Lcom/android/stk/StkAppService$StkContext;

    aget-object v5, v5, v1

    iget v5, v5, Lcom/android/stk/StkAppService$StkContext;->mStkServiceState:I

    if-ne v5, v9, :cond_4

    .line 356
    :cond_3
    :goto_1
    iget v5, p0, Lcom/android/stk/StkAppService;->mSimCount:I

    if-ne v1, v5, :cond_6

    .line 357
    invoke-virtual {p0}, Lcom/android/stk/StkAppService;->stopSelf()V

    .line 358
    iget-object v5, p0, Lcom/android/stk/StkAppService;->mContext:Landroid/content/Context;

    invoke-static {v5}, Lcom/android/stk/StkAppInstaller;->unInstall(Landroid/content/Context;)V

    .line 359
    return-void

    .line 346
    :cond_4
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 354
    :cond_5
    iget-object v5, p0, Lcom/android/stk/StkAppService;->mStkContext:[Lcom/android/stk/StkAppService$StkContext;

    aget-object v5, v5, v4

    iput v9, v5, Lcom/android/stk/StkAppService$StkContext;->mStkServiceState:I

    goto :goto_1

    .line 363
    :cond_6
    invoke-direct {p0}, Lcom/android/stk/StkAppService;->waitForLooper()V

    .line 365
    iget-object v5, p0, Lcom/android/stk/StkAppService;->mServiceHandler:Lcom/android/stk/StkAppService$ServiceHandler;

    invoke-virtual {v5}, Lcom/android/stk/StkAppService$ServiceHandler;->obtainMessage()Landroid/os/Message;

    move-result-object v2

    .line 366
    .local v2, "msg":Landroid/os/Message;
    iput v3, v2, Landroid/os/Message;->arg1:I

    .line 367
    iput v4, v2, Landroid/os/Message;->arg2:I

    .line 368
    iget v5, v2, Landroid/os/Message;->arg1:I

    packed-switch v5, :pswitch_data_0

    .line 390
    :pswitch_0
    return-void

    .line 370
    :pswitch_1
    const-string/jumbo v5, "cmd message"

    invoke-virtual {v0, v5}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v5

    iput-object v5, v2, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 392
    :goto_2
    :pswitch_2
    iget-object v5, p0, Lcom/android/stk/StkAppService;->mServiceHandler:Lcom/android/stk/StkAppService$ServiceHandler;

    invoke-virtual {v5, v2}, Lcom/android/stk/StkAppService$ServiceHandler;->sendMessage(Landroid/os/Message;)Z

    .line 320
    return-void

    .line 377
    :pswitch_3
    iput-object v0, v2, Landroid/os/Message;->obj:Ljava/lang/Object;

    goto :goto_2

    .line 384
    :pswitch_4
    iput-object v0, v2, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 386
    :pswitch_5
    iput-object v0, v2, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 387
    const/16 v5, 0x64

    iput v5, v2, Landroid/os/Message;->what:I

    goto :goto_2

    .line 368
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_3
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_0
        :pswitch_3
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_4
        :pswitch_0
        :pswitch_0
        :pswitch_5
    .end packed-switch
.end method

.method public run()V
    .locals 2

    .prologue
    .line 413
    invoke-static {}, Landroid/os/Looper;->prepare()V

    .line 415
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    iput-object v0, p0, Lcom/android/stk/StkAppService;->mServiceLooper:Landroid/os/Looper;

    .line 416
    new-instance v0, Lcom/android/stk/StkAppService$ServiceHandler;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/stk/StkAppService$ServiceHandler;-><init>(Lcom/android/stk/StkAppService;Lcom/android/stk/StkAppService$ServiceHandler;)V

    iput-object v0, p0, Lcom/android/stk/StkAppService;->mServiceHandler:Lcom/android/stk/StkAppService$ServiceHandler;

    .line 418
    invoke-static {}, Landroid/os/Looper;->loop()V

    .line 412
    return-void
.end method

.method setDisplayTextDlgVisibility(ZI)V
    .locals 1
    .param p1, "visibility"    # Z
    .param p2, "slotId"    # I

    .prologue
    .line 434
    if-ltz p2, :cond_0

    iget v0, p0, Lcom/android/stk/StkAppService;->mSimCount:I

    if-ge p2, v0, :cond_0

    .line 435
    iget-object v0, p0, Lcom/android/stk/StkAppService;->mStkContext:[Lcom/android/stk/StkAppService$StkContext;

    aget-object v0, v0, p2

    invoke-static {v0, p1}, Lcom/android/stk/StkAppService$StkContext;->-set3(Lcom/android/stk/StkAppService$StkContext;Z)Z

    .line 433
    :cond_0
    return-void
.end method
