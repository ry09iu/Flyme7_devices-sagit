.class public Lcom/android/internal/telephony/MiuiIccProviderException;
.super Ljava/lang/RuntimeException;
.source "MiuiIccProviderException.java"


# static fields
.field private static final synthetic -com-android-internal-telephony-CommandException$ErrorSwitchesValues:[I = null

.field public static final ERROR_ADN_LIST_NOT_EXIST:I = -0x3f2

.field public static final ERROR_ANR_FULL:I = -0x3f0

.field public static final ERROR_ANR_TOO_LONG:I = -0x3f1

.field public static final ERROR_EMAIL_FULL:I = -0x3f3

.field public static final ERROR_EMAIL_TOO_LONG:I = -0x3f4

.field public static final ERROR_GENERIC_FAILURE:I = -0x3ea

.field public static final ERROR_ICC_CARD_RESET:I = -0x3f5

.field public static final ERROR_NOT_READY:I = -0x3ee

.field public static final ERROR_NO_ERROR:I = 0x0

.field public static final ERROR_NUMBER_TOO_LONG:I = -0x3eb

.field public static final ERROR_PASSWORD_ERROR:I = -0x3ef

.field public static final ERROR_STORAGE_FULL:I = -0x3ed

.field public static final ERROR_TEXT_TOO_LONG:I = -0x3ec

.field public static final ERROR_UNKNOWN:I = -0x3e9

.field public static final ERROR_UNKNOWN_EF:I = -0x3f6

.field private static final serialVersionUID:J = 0x1L


# instance fields
.field private mError:I


# direct methods
.method private static synthetic -getcom-android-internal-telephony-CommandException$ErrorSwitchesValues()[I
    .locals 3

    sget-object v0, Lcom/android/internal/telephony/MiuiIccProviderException;->-com-android-internal-telephony-CommandException$ErrorSwitchesValues:[I

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/internal/telephony/MiuiIccProviderException;->-com-android-internal-telephony-CommandException$ErrorSwitchesValues:[I

    return-object v0

    :cond_0
    invoke-static {}, Lcom/android/internal/telephony/CommandException$Error;->values()[Lcom/android/internal/telephony/CommandException$Error;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    :try_start_0
    sget-object v1, Lcom/android/internal/telephony/CommandException$Error;->ABORTED:Lcom/android/internal/telephony/CommandException$Error;

    invoke-virtual {v1}, Lcom/android/internal/telephony/CommandException$Error;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_59

    :goto_0
    :try_start_1
    sget-object v1, Lcom/android/internal/telephony/CommandException$Error;->DEVICE_IN_USE:Lcom/android/internal/telephony/CommandException$Error;

    invoke-virtual {v1}, Lcom/android/internal/telephony/CommandException$Error;->ordinal()I

    move-result v1

    const/4 v2, 0x5

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_58

    :goto_1
    :try_start_2
    sget-object v1, Lcom/android/internal/telephony/CommandException$Error;->DIAL_MODIFIED_TO_DIAL:Lcom/android/internal/telephony/CommandException$Error;

    invoke-virtual {v1}, Lcom/android/internal/telephony/CommandException$Error;->ordinal()I

    move-result v1

    const/4 v2, 0x6

    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_57

    :goto_2
    :try_start_3
    sget-object v1, Lcom/android/internal/telephony/CommandException$Error;->DIAL_MODIFIED_TO_SS:Lcom/android/internal/telephony/CommandException$Error;

    invoke-virtual {v1}, Lcom/android/internal/telephony/CommandException$Error;->ordinal()I

    move-result v1

    const/4 v2, 0x7

    aput v2, v0, v1
    :try_end_3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3 .. :try_end_3} :catch_56

    :goto_3
    :try_start_4
    sget-object v1, Lcom/android/internal/telephony/CommandException$Error;->DIAL_MODIFIED_TO_USSD:Lcom/android/internal/telephony/CommandException$Error;

    invoke-virtual {v1}, Lcom/android/internal/telephony/CommandException$Error;->ordinal()I

    move-result v1

    const/16 v2, 0x8

    aput v2, v0, v1
    :try_end_4
    .catch Ljava/lang/NoSuchFieldError; {:try_start_4 .. :try_end_4} :catch_55

    :goto_4
    :try_start_5
    sget-object v1, Lcom/android/internal/telephony/CommandException$Error;->EMPTY_RECORD:Lcom/android/internal/telephony/CommandException$Error;

    invoke-virtual {v1}, Lcom/android/internal/telephony/CommandException$Error;->ordinal()I

    move-result v1

    const/16 v2, 0x9

    aput v2, v0, v1
    :try_end_5
    .catch Ljava/lang/NoSuchFieldError; {:try_start_5 .. :try_end_5} :catch_54

    :goto_5
    :try_start_6
    sget-object v1, Lcom/android/internal/telephony/CommandException$Error;->ENCODING_ERR:Lcom/android/internal/telephony/CommandException$Error;

    invoke-virtual {v1}, Lcom/android/internal/telephony/CommandException$Error;->ordinal()I

    move-result v1

    const/16 v2, 0xa

    aput v2, v0, v1
    :try_end_6
    .catch Ljava/lang/NoSuchFieldError; {:try_start_6 .. :try_end_6} :catch_53

    :goto_6
    :try_start_7
    sget-object v1, Lcom/android/internal/telephony/CommandException$Error;->FDN_CHECK_FAILURE:Lcom/android/internal/telephony/CommandException$Error;

    invoke-virtual {v1}, Lcom/android/internal/telephony/CommandException$Error;->ordinal()I

    move-result v1

    const/16 v2, 0xb

    aput v2, v0, v1
    :try_end_7
    .catch Ljava/lang/NoSuchFieldError; {:try_start_7 .. :try_end_7} :catch_52

    :goto_7
    :try_start_8
    sget-object v1, Lcom/android/internal/telephony/CommandException$Error;->GENERIC_FAILURE:Lcom/android/internal/telephony/CommandException$Error;

    invoke-virtual {v1}, Lcom/android/internal/telephony/CommandException$Error;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_8
    .catch Ljava/lang/NoSuchFieldError; {:try_start_8 .. :try_end_8} :catch_51

    :goto_8
    :try_start_9
    sget-object v1, Lcom/android/internal/telephony/CommandException$Error;->ILLEGAL_SIM_OR_ME:Lcom/android/internal/telephony/CommandException$Error;

    invoke-virtual {v1}, Lcom/android/internal/telephony/CommandException$Error;->ordinal()I

    move-result v1

    const/16 v2, 0xc

    aput v2, v0, v1
    :try_end_9
    .catch Ljava/lang/NoSuchFieldError; {:try_start_9 .. :try_end_9} :catch_50

    :goto_9
    :try_start_a
    sget-object v1, Lcom/android/internal/telephony/CommandException$Error;->INTERNAL_ERR:Lcom/android/internal/telephony/CommandException$Error;

    invoke-virtual {v1}, Lcom/android/internal/telephony/CommandException$Error;->ordinal()I

    move-result v1

    const/16 v2, 0xd

    aput v2, v0, v1
    :try_end_a
    .catch Ljava/lang/NoSuchFieldError; {:try_start_a .. :try_end_a} :catch_4f

    :goto_a
    :try_start_b
    sget-object v1, Lcom/android/internal/telephony/CommandException$Error;->INVALID_ARGUMENTS:Lcom/android/internal/telephony/CommandException$Error;

    invoke-virtual {v1}, Lcom/android/internal/telephony/CommandException$Error;->ordinal()I

    move-result v1

    const/16 v2, 0xe

    aput v2, v0, v1
    :try_end_b
    .catch Ljava/lang/NoSuchFieldError; {:try_start_b .. :try_end_b} :catch_4e

    :goto_b
    :try_start_c
    sget-object v1, Lcom/android/internal/telephony/CommandException$Error;->INVALID_CALL_ID:Lcom/android/internal/telephony/CommandException$Error;

    invoke-virtual {v1}, Lcom/android/internal/telephony/CommandException$Error;->ordinal()I

    move-result v1

    const/16 v2, 0xf

    aput v2, v0, v1
    :try_end_c
    .catch Ljava/lang/NoSuchFieldError; {:try_start_c .. :try_end_c} :catch_4d

    :goto_c
    :try_start_d
    sget-object v1, Lcom/android/internal/telephony/CommandException$Error;->INVALID_MODEM_STATE:Lcom/android/internal/telephony/CommandException$Error;

    invoke-virtual {v1}, Lcom/android/internal/telephony/CommandException$Error;->ordinal()I

    move-result v1

    const/16 v2, 0x10

    aput v2, v0, v1
    :try_end_d
    .catch Ljava/lang/NoSuchFieldError; {:try_start_d .. :try_end_d} :catch_4c

    :goto_d
    :try_start_e
    sget-object v1, Lcom/android/internal/telephony/CommandException$Error;->INVALID_PARAMETER:Lcom/android/internal/telephony/CommandException$Error;

    invoke-virtual {v1}, Lcom/android/internal/telephony/CommandException$Error;->ordinal()I

    move-result v1

    const/16 v2, 0x11

    aput v2, v0, v1
    :try_end_e
    .catch Ljava/lang/NoSuchFieldError; {:try_start_e .. :try_end_e} :catch_4b

    :goto_e
    :try_start_f
    sget-object v1, Lcom/android/internal/telephony/CommandException$Error;->INVALID_RESPONSE:Lcom/android/internal/telephony/CommandException$Error;

    invoke-virtual {v1}, Lcom/android/internal/telephony/CommandException$Error;->ordinal()I

    move-result v1

    const/16 v2, 0x12

    aput v2, v0, v1
    :try_end_f
    .catch Ljava/lang/NoSuchFieldError; {:try_start_f .. :try_end_f} :catch_4a

    :goto_f
    :try_start_10
    sget-object v1, Lcom/android/internal/telephony/CommandException$Error;->INVALID_SIM_STATE:Lcom/android/internal/telephony/CommandException$Error;

    invoke-virtual {v1}, Lcom/android/internal/telephony/CommandException$Error;->ordinal()I

    move-result v1

    const/16 v2, 0x13

    aput v2, v0, v1
    :try_end_10
    .catch Ljava/lang/NoSuchFieldError; {:try_start_10 .. :try_end_10} :catch_49

    :goto_10
    :try_start_11
    sget-object v1, Lcom/android/internal/telephony/CommandException$Error;->INVALID_SMSC_ADDRESS:Lcom/android/internal/telephony/CommandException$Error;

    invoke-virtual {v1}, Lcom/android/internal/telephony/CommandException$Error;->ordinal()I

    move-result v1

    const/16 v2, 0x14

    aput v2, v0, v1
    :try_end_11
    .catch Ljava/lang/NoSuchFieldError; {:try_start_11 .. :try_end_11} :catch_48

    :goto_11
    :try_start_12
    sget-object v1, Lcom/android/internal/telephony/CommandException$Error;->INVALID_SMS_FORMAT:Lcom/android/internal/telephony/CommandException$Error;

    invoke-virtual {v1}, Lcom/android/internal/telephony/CommandException$Error;->ordinal()I

    move-result v1

    const/16 v2, 0x15

    aput v2, v0, v1
    :try_end_12
    .catch Ljava/lang/NoSuchFieldError; {:try_start_12 .. :try_end_12} :catch_47

    :goto_12
    :try_start_13
    sget-object v1, Lcom/android/internal/telephony/CommandException$Error;->INVALID_STATE:Lcom/android/internal/telephony/CommandException$Error;

    invoke-virtual {v1}, Lcom/android/internal/telephony/CommandException$Error;->ordinal()I

    move-result v1

    const/16 v2, 0x16

    aput v2, v0, v1
    :try_end_13
    .catch Ljava/lang/NoSuchFieldError; {:try_start_13 .. :try_end_13} :catch_46

    :goto_13
    :try_start_14
    sget-object v1, Lcom/android/internal/telephony/CommandException$Error;->LCE_NOT_SUPPORTED:Lcom/android/internal/telephony/CommandException$Error;

    invoke-virtual {v1}, Lcom/android/internal/telephony/CommandException$Error;->ordinal()I

    move-result v1

    const/16 v2, 0x17

    aput v2, v0, v1
    :try_end_14
    .catch Ljava/lang/NoSuchFieldError; {:try_start_14 .. :try_end_14} :catch_45

    :goto_14
    :try_start_15
    sget-object v1, Lcom/android/internal/telephony/CommandException$Error;->MISSING_RESOURCE:Lcom/android/internal/telephony/CommandException$Error;

    invoke-virtual {v1}, Lcom/android/internal/telephony/CommandException$Error;->ordinal()I

    move-result v1

    const/16 v2, 0x18

    aput v2, v0, v1
    :try_end_15
    .catch Ljava/lang/NoSuchFieldError; {:try_start_15 .. :try_end_15} :catch_44

    :goto_15
    :try_start_16
    sget-object v1, Lcom/android/internal/telephony/CommandException$Error;->MODEM_ERR:Lcom/android/internal/telephony/CommandException$Error;

    invoke-virtual {v1}, Lcom/android/internal/telephony/CommandException$Error;->ordinal()I

    move-result v1

    const/16 v2, 0x19

    aput v2, v0, v1
    :try_end_16
    .catch Ljava/lang/NoSuchFieldError; {:try_start_16 .. :try_end_16} :catch_43

    :goto_16
    :try_start_17
    sget-object v1, Lcom/android/internal/telephony/CommandException$Error;->MODE_NOT_SUPPORTED:Lcom/android/internal/telephony/CommandException$Error;

    invoke-virtual {v1}, Lcom/android/internal/telephony/CommandException$Error;->ordinal()I

    move-result v1

    const/16 v2, 0x1a

    aput v2, v0, v1
    :try_end_17
    .catch Ljava/lang/NoSuchFieldError; {:try_start_17 .. :try_end_17} :catch_42

    :goto_17
    :try_start_18
    sget-object v1, Lcom/android/internal/telephony/CommandException$Error;->NETWORK_ERR:Lcom/android/internal/telephony/CommandException$Error;

    invoke-virtual {v1}, Lcom/android/internal/telephony/CommandException$Error;->ordinal()I

    move-result v1

    const/16 v2, 0x1b

    aput v2, v0, v1
    :try_end_18
    .catch Ljava/lang/NoSuchFieldError; {:try_start_18 .. :try_end_18} :catch_41

    :goto_18
    :try_start_19
    sget-object v1, Lcom/android/internal/telephony/CommandException$Error;->NETWORK_NOT_READY:Lcom/android/internal/telephony/CommandException$Error;

    invoke-virtual {v1}, Lcom/android/internal/telephony/CommandException$Error;->ordinal()I

    move-result v1

    const/16 v2, 0x1c

    aput v2, v0, v1
    :try_end_19
    .catch Ljava/lang/NoSuchFieldError; {:try_start_19 .. :try_end_19} :catch_40

    :goto_19
    :try_start_1a
    sget-object v1, Lcom/android/internal/telephony/CommandException$Error;->NETWORK_REJECT:Lcom/android/internal/telephony/CommandException$Error;

    invoke-virtual {v1}, Lcom/android/internal/telephony/CommandException$Error;->ordinal()I

    move-result v1

    const/16 v2, 0x1d

    aput v2, v0, v1
    :try_end_1a
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1a .. :try_end_1a} :catch_3f

    :goto_1a
    :try_start_1b
    sget-object v1, Lcom/android/internal/telephony/CommandException$Error;->NOT_PROVISIONED:Lcom/android/internal/telephony/CommandException$Error;

    invoke-virtual {v1}, Lcom/android/internal/telephony/CommandException$Error;->ordinal()I

    move-result v1

    const/16 v2, 0x1e

    aput v2, v0, v1
    :try_end_1b
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1b .. :try_end_1b} :catch_3e

    :goto_1b
    :try_start_1c
    sget-object v1, Lcom/android/internal/telephony/CommandException$Error;->NO_MEMORY:Lcom/android/internal/telephony/CommandException$Error;

    invoke-virtual {v1}, Lcom/android/internal/telephony/CommandException$Error;->ordinal()I

    move-result v1

    const/16 v2, 0x1f

    aput v2, v0, v1
    :try_end_1c
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1c .. :try_end_1c} :catch_3d

    :goto_1c
    :try_start_1d
    sget-object v1, Lcom/android/internal/telephony/CommandException$Error;->NO_NETWORK_FOUND:Lcom/android/internal/telephony/CommandException$Error;

    invoke-virtual {v1}, Lcom/android/internal/telephony/CommandException$Error;->ordinal()I

    move-result v1

    const/16 v2, 0x20

    aput v2, v0, v1
    :try_end_1d
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1d .. :try_end_1d} :catch_3c

    :goto_1d
    :try_start_1e
    sget-object v1, Lcom/android/internal/telephony/CommandException$Error;->NO_RESOURCES:Lcom/android/internal/telephony/CommandException$Error;

    invoke-virtual {v1}, Lcom/android/internal/telephony/CommandException$Error;->ordinal()I

    move-result v1

    const/16 v2, 0x21

    aput v2, v0, v1
    :try_end_1e
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1e .. :try_end_1e} :catch_3b

    :goto_1e
    :try_start_1f
    sget-object v1, Lcom/android/internal/telephony/CommandException$Error;->NO_SMS_TO_ACK:Lcom/android/internal/telephony/CommandException$Error;

    invoke-virtual {v1}, Lcom/android/internal/telephony/CommandException$Error;->ordinal()I

    move-result v1

    const/16 v2, 0x22

    aput v2, v0, v1
    :try_end_1f
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1f .. :try_end_1f} :catch_3a

    :goto_1f
    :try_start_20
    sget-object v1, Lcom/android/internal/telephony/CommandException$Error;->NO_SUBSCRIPTION:Lcom/android/internal/telephony/CommandException$Error;

    invoke-virtual {v1}, Lcom/android/internal/telephony/CommandException$Error;->ordinal()I

    move-result v1

    const/16 v2, 0x23

    aput v2, v0, v1
    :try_end_20
    .catch Ljava/lang/NoSuchFieldError; {:try_start_20 .. :try_end_20} :catch_39

    :goto_20
    :try_start_21
    sget-object v1, Lcom/android/internal/telephony/CommandException$Error;->NO_SUCH_ELEMENT:Lcom/android/internal/telephony/CommandException$Error;

    invoke-virtual {v1}, Lcom/android/internal/telephony/CommandException$Error;->ordinal()I

    move-result v1

    const/16 v2, 0x24

    aput v2, v0, v1
    :try_end_21
    .catch Ljava/lang/NoSuchFieldError; {:try_start_21 .. :try_end_21} :catch_38

    :goto_21
    :try_start_22
    sget-object v1, Lcom/android/internal/telephony/CommandException$Error;->NO_SUCH_ENTRY:Lcom/android/internal/telephony/CommandException$Error;

    invoke-virtual {v1}, Lcom/android/internal/telephony/CommandException$Error;->ordinal()I

    move-result v1

    const/16 v2, 0x25

    aput v2, v0, v1
    :try_end_22
    .catch Ljava/lang/NoSuchFieldError; {:try_start_22 .. :try_end_22} :catch_37

    :goto_22
    :try_start_23
    sget-object v1, Lcom/android/internal/telephony/CommandException$Error;->OEM_ERROR_1:Lcom/android/internal/telephony/CommandException$Error;

    invoke-virtual {v1}, Lcom/android/internal/telephony/CommandException$Error;->ordinal()I

    move-result v1

    const/16 v2, 0x26

    aput v2, v0, v1
    :try_end_23
    .catch Ljava/lang/NoSuchFieldError; {:try_start_23 .. :try_end_23} :catch_36

    :goto_23
    :try_start_24
    sget-object v1, Lcom/android/internal/telephony/CommandException$Error;->OEM_ERROR_10:Lcom/android/internal/telephony/CommandException$Error;

    invoke-virtual {v1}, Lcom/android/internal/telephony/CommandException$Error;->ordinal()I

    move-result v1

    const/16 v2, 0x27

    aput v2, v0, v1
    :try_end_24
    .catch Ljava/lang/NoSuchFieldError; {:try_start_24 .. :try_end_24} :catch_35

    :goto_24
    :try_start_25
    sget-object v1, Lcom/android/internal/telephony/CommandException$Error;->OEM_ERROR_11:Lcom/android/internal/telephony/CommandException$Error;

    invoke-virtual {v1}, Lcom/android/internal/telephony/CommandException$Error;->ordinal()I

    move-result v1

    const/16 v2, 0x28

    aput v2, v0, v1
    :try_end_25
    .catch Ljava/lang/NoSuchFieldError; {:try_start_25 .. :try_end_25} :catch_34

    :goto_25
    :try_start_26
    sget-object v1, Lcom/android/internal/telephony/CommandException$Error;->OEM_ERROR_12:Lcom/android/internal/telephony/CommandException$Error;

    invoke-virtual {v1}, Lcom/android/internal/telephony/CommandException$Error;->ordinal()I

    move-result v1

    const/16 v2, 0x29

    aput v2, v0, v1
    :try_end_26
    .catch Ljava/lang/NoSuchFieldError; {:try_start_26 .. :try_end_26} :catch_33

    :goto_26
    :try_start_27
    sget-object v1, Lcom/android/internal/telephony/CommandException$Error;->OEM_ERROR_13:Lcom/android/internal/telephony/CommandException$Error;

    invoke-virtual {v1}, Lcom/android/internal/telephony/CommandException$Error;->ordinal()I

    move-result v1

    const/16 v2, 0x2a

    aput v2, v0, v1
    :try_end_27
    .catch Ljava/lang/NoSuchFieldError; {:try_start_27 .. :try_end_27} :catch_32

    :goto_27
    :try_start_28
    sget-object v1, Lcom/android/internal/telephony/CommandException$Error;->OEM_ERROR_14:Lcom/android/internal/telephony/CommandException$Error;

    invoke-virtual {v1}, Lcom/android/internal/telephony/CommandException$Error;->ordinal()I

    move-result v1

    const/16 v2, 0x2b

    aput v2, v0, v1
    :try_end_28
    .catch Ljava/lang/NoSuchFieldError; {:try_start_28 .. :try_end_28} :catch_31

    :goto_28
    :try_start_29
    sget-object v1, Lcom/android/internal/telephony/CommandException$Error;->OEM_ERROR_15:Lcom/android/internal/telephony/CommandException$Error;

    invoke-virtual {v1}, Lcom/android/internal/telephony/CommandException$Error;->ordinal()I

    move-result v1

    const/16 v2, 0x2c

    aput v2, v0, v1
    :try_end_29
    .catch Ljava/lang/NoSuchFieldError; {:try_start_29 .. :try_end_29} :catch_30

    :goto_29
    :try_start_2a
    sget-object v1, Lcom/android/internal/telephony/CommandException$Error;->OEM_ERROR_16:Lcom/android/internal/telephony/CommandException$Error;

    invoke-virtual {v1}, Lcom/android/internal/telephony/CommandException$Error;->ordinal()I

    move-result v1

    const/16 v2, 0x2d

    aput v2, v0, v1
    :try_end_2a
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2a .. :try_end_2a} :catch_2f

    :goto_2a
    :try_start_2b
    sget-object v1, Lcom/android/internal/telephony/CommandException$Error;->OEM_ERROR_17:Lcom/android/internal/telephony/CommandException$Error;

    invoke-virtual {v1}, Lcom/android/internal/telephony/CommandException$Error;->ordinal()I

    move-result v1

    const/16 v2, 0x2e

    aput v2, v0, v1
    :try_end_2b
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2b .. :try_end_2b} :catch_2e

    :goto_2b
    :try_start_2c
    sget-object v1, Lcom/android/internal/telephony/CommandException$Error;->OEM_ERROR_18:Lcom/android/internal/telephony/CommandException$Error;

    invoke-virtual {v1}, Lcom/android/internal/telephony/CommandException$Error;->ordinal()I

    move-result v1

    const/16 v2, 0x2f

    aput v2, v0, v1
    :try_end_2c
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2c .. :try_end_2c} :catch_2d

    :goto_2c
    :try_start_2d
    sget-object v1, Lcom/android/internal/telephony/CommandException$Error;->OEM_ERROR_19:Lcom/android/internal/telephony/CommandException$Error;

    invoke-virtual {v1}, Lcom/android/internal/telephony/CommandException$Error;->ordinal()I

    move-result v1

    const/16 v2, 0x30

    aput v2, v0, v1
    :try_end_2d
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2d .. :try_end_2d} :catch_2c

    :goto_2d
    :try_start_2e
    sget-object v1, Lcom/android/internal/telephony/CommandException$Error;->OEM_ERROR_2:Lcom/android/internal/telephony/CommandException$Error;

    invoke-virtual {v1}, Lcom/android/internal/telephony/CommandException$Error;->ordinal()I

    move-result v1

    const/16 v2, 0x31

    aput v2, v0, v1
    :try_end_2e
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2e .. :try_end_2e} :catch_2b

    :goto_2e
    :try_start_2f
    sget-object v1, Lcom/android/internal/telephony/CommandException$Error;->OEM_ERROR_20:Lcom/android/internal/telephony/CommandException$Error;

    invoke-virtual {v1}, Lcom/android/internal/telephony/CommandException$Error;->ordinal()I

    move-result v1

    const/16 v2, 0x32

    aput v2, v0, v1
    :try_end_2f
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2f .. :try_end_2f} :catch_2a

    :goto_2f
    :try_start_30
    sget-object v1, Lcom/android/internal/telephony/CommandException$Error;->OEM_ERROR_21:Lcom/android/internal/telephony/CommandException$Error;

    invoke-virtual {v1}, Lcom/android/internal/telephony/CommandException$Error;->ordinal()I

    move-result v1

    const/16 v2, 0x33

    aput v2, v0, v1
    :try_end_30
    .catch Ljava/lang/NoSuchFieldError; {:try_start_30 .. :try_end_30} :catch_29

    :goto_30
    :try_start_31
    sget-object v1, Lcom/android/internal/telephony/CommandException$Error;->OEM_ERROR_22:Lcom/android/internal/telephony/CommandException$Error;

    invoke-virtual {v1}, Lcom/android/internal/telephony/CommandException$Error;->ordinal()I

    move-result v1

    const/16 v2, 0x34

    aput v2, v0, v1
    :try_end_31
    .catch Ljava/lang/NoSuchFieldError; {:try_start_31 .. :try_end_31} :catch_28

    :goto_31
    :try_start_32
    sget-object v1, Lcom/android/internal/telephony/CommandException$Error;->OEM_ERROR_23:Lcom/android/internal/telephony/CommandException$Error;

    invoke-virtual {v1}, Lcom/android/internal/telephony/CommandException$Error;->ordinal()I

    move-result v1

    const/16 v2, 0x35

    aput v2, v0, v1
    :try_end_32
    .catch Ljava/lang/NoSuchFieldError; {:try_start_32 .. :try_end_32} :catch_27

    :goto_32
    :try_start_33
    sget-object v1, Lcom/android/internal/telephony/CommandException$Error;->OEM_ERROR_24:Lcom/android/internal/telephony/CommandException$Error;

    invoke-virtual {v1}, Lcom/android/internal/telephony/CommandException$Error;->ordinal()I

    move-result v1

    const/16 v2, 0x36

    aput v2, v0, v1
    :try_end_33
    .catch Ljava/lang/NoSuchFieldError; {:try_start_33 .. :try_end_33} :catch_26

    :goto_33
    :try_start_34
    sget-object v1, Lcom/android/internal/telephony/CommandException$Error;->OEM_ERROR_25:Lcom/android/internal/telephony/CommandException$Error;

    invoke-virtual {v1}, Lcom/android/internal/telephony/CommandException$Error;->ordinal()I

    move-result v1

    const/16 v2, 0x37

    aput v2, v0, v1
    :try_end_34
    .catch Ljava/lang/NoSuchFieldError; {:try_start_34 .. :try_end_34} :catch_25

    :goto_34
    :try_start_35
    sget-object v1, Lcom/android/internal/telephony/CommandException$Error;->OEM_ERROR_3:Lcom/android/internal/telephony/CommandException$Error;

    invoke-virtual {v1}, Lcom/android/internal/telephony/CommandException$Error;->ordinal()I

    move-result v1

    const/16 v2, 0x38

    aput v2, v0, v1
    :try_end_35
    .catch Ljava/lang/NoSuchFieldError; {:try_start_35 .. :try_end_35} :catch_24

    :goto_35
    :try_start_36
    sget-object v1, Lcom/android/internal/telephony/CommandException$Error;->OEM_ERROR_4:Lcom/android/internal/telephony/CommandException$Error;

    invoke-virtual {v1}, Lcom/android/internal/telephony/CommandException$Error;->ordinal()I

    move-result v1

    const/16 v2, 0x39

    aput v2, v0, v1
    :try_end_36
    .catch Ljava/lang/NoSuchFieldError; {:try_start_36 .. :try_end_36} :catch_23

    :goto_36
    :try_start_37
    sget-object v1, Lcom/android/internal/telephony/CommandException$Error;->OEM_ERROR_5:Lcom/android/internal/telephony/CommandException$Error;

    invoke-virtual {v1}, Lcom/android/internal/telephony/CommandException$Error;->ordinal()I

    move-result v1

    const/16 v2, 0x3a

    aput v2, v0, v1
    :try_end_37
    .catch Ljava/lang/NoSuchFieldError; {:try_start_37 .. :try_end_37} :catch_22

    :goto_37
    :try_start_38
    sget-object v1, Lcom/android/internal/telephony/CommandException$Error;->OEM_ERROR_6:Lcom/android/internal/telephony/CommandException$Error;

    invoke-virtual {v1}, Lcom/android/internal/telephony/CommandException$Error;->ordinal()I

    move-result v1

    const/16 v2, 0x3b

    aput v2, v0, v1
    :try_end_38
    .catch Ljava/lang/NoSuchFieldError; {:try_start_38 .. :try_end_38} :catch_21

    :goto_38
    :try_start_39
    sget-object v1, Lcom/android/internal/telephony/CommandException$Error;->OEM_ERROR_7:Lcom/android/internal/telephony/CommandException$Error;

    invoke-virtual {v1}, Lcom/android/internal/telephony/CommandException$Error;->ordinal()I

    move-result v1

    const/16 v2, 0x3c

    aput v2, v0, v1
    :try_end_39
    .catch Ljava/lang/NoSuchFieldError; {:try_start_39 .. :try_end_39} :catch_20

    :goto_39
    :try_start_3a
    sget-object v1, Lcom/android/internal/telephony/CommandException$Error;->OEM_ERROR_8:Lcom/android/internal/telephony/CommandException$Error;

    invoke-virtual {v1}, Lcom/android/internal/telephony/CommandException$Error;->ordinal()I

    move-result v1

    const/16 v2, 0x3d

    aput v2, v0, v1
    :try_end_3a
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3a .. :try_end_3a} :catch_1f

    :goto_3a
    :try_start_3b
    sget-object v1, Lcom/android/internal/telephony/CommandException$Error;->OEM_ERROR_9:Lcom/android/internal/telephony/CommandException$Error;

    invoke-virtual {v1}, Lcom/android/internal/telephony/CommandException$Error;->ordinal()I

    move-result v1

    const/16 v2, 0x3e

    aput v2, v0, v1
    :try_end_3b
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3b .. :try_end_3b} :catch_1e

    :goto_3b
    :try_start_3c
    sget-object v1, Lcom/android/internal/telephony/CommandException$Error;->OPERATION_NOT_ALLOWED:Lcom/android/internal/telephony/CommandException$Error;

    invoke-virtual {v1}, Lcom/android/internal/telephony/CommandException$Error;->ordinal()I

    move-result v1

    const/16 v2, 0x3f

    aput v2, v0, v1
    :try_end_3c
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3c .. :try_end_3c} :catch_1d

    :goto_3c
    :try_start_3d
    sget-object v1, Lcom/android/internal/telephony/CommandException$Error;->OP_NOT_ALLOWED_BEFORE_REG_NW:Lcom/android/internal/telephony/CommandException$Error;

    invoke-virtual {v1}, Lcom/android/internal/telephony/CommandException$Error;->ordinal()I

    move-result v1

    const/16 v2, 0x40

    aput v2, v0, v1
    :try_end_3d
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3d .. :try_end_3d} :catch_1c

    :goto_3d
    :try_start_3e
    sget-object v1, Lcom/android/internal/telephony/CommandException$Error;->OP_NOT_ALLOWED_DURING_VOICE_CALL:Lcom/android/internal/telephony/CommandException$Error;

    invoke-virtual {v1}, Lcom/android/internal/telephony/CommandException$Error;->ordinal()I

    move-result v1

    const/16 v2, 0x41

    aput v2, v0, v1
    :try_end_3e
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3e .. :try_end_3e} :catch_1b

    :goto_3e
    :try_start_3f
    sget-object v1, Lcom/android/internal/telephony/CommandException$Error;->PASSWORD_INCORRECT:Lcom/android/internal/telephony/CommandException$Error;

    invoke-virtual {v1}, Lcom/android/internal/telephony/CommandException$Error;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_3f
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3f .. :try_end_3f} :catch_1a

    :goto_3f
    :try_start_40
    sget-object v1, Lcom/android/internal/telephony/CommandException$Error;->RADIO_NOT_AVAILABLE:Lcom/android/internal/telephony/CommandException$Error;

    invoke-virtual {v1}, Lcom/android/internal/telephony/CommandException$Error;->ordinal()I

    move-result v1

    const/16 v2, 0x42

    aput v2, v0, v1
    :try_end_40
    .catch Ljava/lang/NoSuchFieldError; {:try_start_40 .. :try_end_40} :catch_19

    :goto_40
    :try_start_41
    sget-object v1, Lcom/android/internal/telephony/CommandException$Error;->REQUEST_NOT_SUPPORTED:Lcom/android/internal/telephony/CommandException$Error;

    invoke-virtual {v1}, Lcom/android/internal/telephony/CommandException$Error;->ordinal()I

    move-result v1

    const/16 v2, 0x43

    aput v2, v0, v1
    :try_end_41
    .catch Ljava/lang/NoSuchFieldError; {:try_start_41 .. :try_end_41} :catch_18

    :goto_41
    :try_start_42
    sget-object v1, Lcom/android/internal/telephony/CommandException$Error;->REQUEST_RATE_LIMITED:Lcom/android/internal/telephony/CommandException$Error;

    invoke-virtual {v1}, Lcom/android/internal/telephony/CommandException$Error;->ordinal()I

    move-result v1

    const/16 v2, 0x44

    aput v2, v0, v1
    :try_end_42
    .catch Ljava/lang/NoSuchFieldError; {:try_start_42 .. :try_end_42} :catch_17

    :goto_42
    :try_start_43
    sget-object v1, Lcom/android/internal/telephony/CommandException$Error;->SIM_ABSENT:Lcom/android/internal/telephony/CommandException$Error;

    invoke-virtual {v1}, Lcom/android/internal/telephony/CommandException$Error;->ordinal()I

    move-result v1

    const/16 v2, 0x45

    aput v2, v0, v1
    :try_end_43
    .catch Ljava/lang/NoSuchFieldError; {:try_start_43 .. :try_end_43} :catch_16

    :goto_43
    :try_start_44
    sget-object v1, Lcom/android/internal/telephony/CommandException$Error;->SIM_ALREADY_POWERED_OFF:Lcom/android/internal/telephony/CommandException$Error;

    invoke-virtual {v1}, Lcom/android/internal/telephony/CommandException$Error;->ordinal()I

    move-result v1

    const/16 v2, 0x46

    aput v2, v0, v1
    :try_end_44
    .catch Ljava/lang/NoSuchFieldError; {:try_start_44 .. :try_end_44} :catch_15

    :goto_44
    :try_start_45
    sget-object v1, Lcom/android/internal/telephony/CommandException$Error;->SIM_ALREADY_POWERED_ON:Lcom/android/internal/telephony/CommandException$Error;

    invoke-virtual {v1}, Lcom/android/internal/telephony/CommandException$Error;->ordinal()I

    move-result v1

    const/16 v2, 0x47

    aput v2, v0, v1
    :try_end_45
    .catch Ljava/lang/NoSuchFieldError; {:try_start_45 .. :try_end_45} :catch_14

    :goto_45
    :try_start_46
    sget-object v1, Lcom/android/internal/telephony/CommandException$Error;->SIM_BUSY:Lcom/android/internal/telephony/CommandException$Error;

    invoke-virtual {v1}, Lcom/android/internal/telephony/CommandException$Error;->ordinal()I

    move-result v1

    const/16 v2, 0x48

    aput v2, v0, v1
    :try_end_46
    .catch Ljava/lang/NoSuchFieldError; {:try_start_46 .. :try_end_46} :catch_13

    :goto_46
    :try_start_47
    sget-object v1, Lcom/android/internal/telephony/CommandException$Error;->SIM_DATA_NOT_AVAILABLE:Lcom/android/internal/telephony/CommandException$Error;

    invoke-virtual {v1}, Lcom/android/internal/telephony/CommandException$Error;->ordinal()I

    move-result v1

    const/16 v2, 0x49

    aput v2, v0, v1
    :try_end_47
    .catch Ljava/lang/NoSuchFieldError; {:try_start_47 .. :try_end_47} :catch_12

    :goto_47
    :try_start_48
    sget-object v1, Lcom/android/internal/telephony/CommandException$Error;->SIM_ERR:Lcom/android/internal/telephony/CommandException$Error;

    invoke-virtual {v1}, Lcom/android/internal/telephony/CommandException$Error;->ordinal()I

    move-result v1

    const/16 v2, 0x4a

    aput v2, v0, v1
    :try_end_48
    .catch Ljava/lang/NoSuchFieldError; {:try_start_48 .. :try_end_48} :catch_11

    :goto_48
    :try_start_49
    sget-object v1, Lcom/android/internal/telephony/CommandException$Error;->SIM_FULL:Lcom/android/internal/telephony/CommandException$Error;

    invoke-virtual {v1}, Lcom/android/internal/telephony/CommandException$Error;->ordinal()I

    move-result v1

    const/16 v2, 0x4b

    aput v2, v0, v1
    :try_end_49
    .catch Ljava/lang/NoSuchFieldError; {:try_start_49 .. :try_end_49} :catch_10

    :goto_49
    :try_start_4a
    sget-object v1, Lcom/android/internal/telephony/CommandException$Error;->SIM_PIN2:Lcom/android/internal/telephony/CommandException$Error;

    invoke-virtual {v1}, Lcom/android/internal/telephony/CommandException$Error;->ordinal()I

    move-result v1

    const/16 v2, 0x4c

    aput v2, v0, v1
    :try_end_4a
    .catch Ljava/lang/NoSuchFieldError; {:try_start_4a .. :try_end_4a} :catch_f

    :goto_4a
    :try_start_4b
    sget-object v1, Lcom/android/internal/telephony/CommandException$Error;->SIM_PUK2:Lcom/android/internal/telephony/CommandException$Error;

    invoke-virtual {v1}, Lcom/android/internal/telephony/CommandException$Error;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_4b
    .catch Ljava/lang/NoSuchFieldError; {:try_start_4b .. :try_end_4b} :catch_e

    :goto_4b
    :try_start_4c
    sget-object v1, Lcom/android/internal/telephony/CommandException$Error;->SIM_SAP_CONNECT_FAILURE:Lcom/android/internal/telephony/CommandException$Error;

    invoke-virtual {v1}, Lcom/android/internal/telephony/CommandException$Error;->ordinal()I

    move-result v1

    const/16 v2, 0x4d

    aput v2, v0, v1
    :try_end_4c
    .catch Ljava/lang/NoSuchFieldError; {:try_start_4c .. :try_end_4c} :catch_d

    :goto_4c
    :try_start_4d
    sget-object v1, Lcom/android/internal/telephony/CommandException$Error;->SIM_SAP_CONNECT_OK_CALL_ONGOING:Lcom/android/internal/telephony/CommandException$Error;

    invoke-virtual {v1}, Lcom/android/internal/telephony/CommandException$Error;->ordinal()I

    move-result v1

    const/16 v2, 0x4e

    aput v2, v0, v1
    :try_end_4d
    .catch Ljava/lang/NoSuchFieldError; {:try_start_4d .. :try_end_4d} :catch_c

    :goto_4d
    :try_start_4e
    sget-object v1, Lcom/android/internal/telephony/CommandException$Error;->SIM_SAP_MSG_SIZE_TOO_LARGE:Lcom/android/internal/telephony/CommandException$Error;

    invoke-virtual {v1}, Lcom/android/internal/telephony/CommandException$Error;->ordinal()I

    move-result v1

    const/16 v2, 0x4f

    aput v2, v0, v1
    :try_end_4e
    .catch Ljava/lang/NoSuchFieldError; {:try_start_4e .. :try_end_4e} :catch_b

    :goto_4e
    :try_start_4f
    sget-object v1, Lcom/android/internal/telephony/CommandException$Error;->SIM_SAP_MSG_SIZE_TOO_SMALL:Lcom/android/internal/telephony/CommandException$Error;

    invoke-virtual {v1}, Lcom/android/internal/telephony/CommandException$Error;->ordinal()I

    move-result v1

    const/16 v2, 0x50

    aput v2, v0, v1
    :try_end_4f
    .catch Ljava/lang/NoSuchFieldError; {:try_start_4f .. :try_end_4f} :catch_a

    :goto_4f
    :try_start_50
    sget-object v1, Lcom/android/internal/telephony/CommandException$Error;->SMS_FAIL_RETRY:Lcom/android/internal/telephony/CommandException$Error;

    invoke-virtual {v1}, Lcom/android/internal/telephony/CommandException$Error;->ordinal()I

    move-result v1

    const/16 v2, 0x51

    aput v2, v0, v1
    :try_end_50
    .catch Ljava/lang/NoSuchFieldError; {:try_start_50 .. :try_end_50} :catch_9

    :goto_50
    :try_start_51
    sget-object v1, Lcom/android/internal/telephony/CommandException$Error;->SS_MODIFIED_TO_DIAL:Lcom/android/internal/telephony/CommandException$Error;

    invoke-virtual {v1}, Lcom/android/internal/telephony/CommandException$Error;->ordinal()I

    move-result v1

    const/16 v2, 0x52

    aput v2, v0, v1
    :try_end_51
    .catch Ljava/lang/NoSuchFieldError; {:try_start_51 .. :try_end_51} :catch_8

    :goto_51
    :try_start_52
    sget-object v1, Lcom/android/internal/telephony/CommandException$Error;->SS_MODIFIED_TO_SS:Lcom/android/internal/telephony/CommandException$Error;

    invoke-virtual {v1}, Lcom/android/internal/telephony/CommandException$Error;->ordinal()I

    move-result v1

    const/16 v2, 0x53

    aput v2, v0, v1
    :try_end_52
    .catch Ljava/lang/NoSuchFieldError; {:try_start_52 .. :try_end_52} :catch_7

    :goto_52
    :try_start_53
    sget-object v1, Lcom/android/internal/telephony/CommandException$Error;->SS_MODIFIED_TO_USSD:Lcom/android/internal/telephony/CommandException$Error;

    invoke-virtual {v1}, Lcom/android/internal/telephony/CommandException$Error;->ordinal()I

    move-result v1

    const/16 v2, 0x54

    aput v2, v0, v1
    :try_end_53
    .catch Ljava/lang/NoSuchFieldError; {:try_start_53 .. :try_end_53} :catch_6

    :goto_53
    :try_start_54
    sget-object v1, Lcom/android/internal/telephony/CommandException$Error;->SUBSCRIPTION_NOT_AVAILABLE:Lcom/android/internal/telephony/CommandException$Error;

    invoke-virtual {v1}, Lcom/android/internal/telephony/CommandException$Error;->ordinal()I

    move-result v1

    const/16 v2, 0x55

    aput v2, v0, v1
    :try_end_54
    .catch Ljava/lang/NoSuchFieldError; {:try_start_54 .. :try_end_54} :catch_5

    :goto_54
    :try_start_55
    sget-object v1, Lcom/android/internal/telephony/CommandException$Error;->SUBSCRIPTION_NOT_SUPPORTED:Lcom/android/internal/telephony/CommandException$Error;

    invoke-virtual {v1}, Lcom/android/internal/telephony/CommandException$Error;->ordinal()I

    move-result v1

    const/16 v2, 0x56

    aput v2, v0, v1
    :try_end_55
    .catch Ljava/lang/NoSuchFieldError; {:try_start_55 .. :try_end_55} :catch_4

    :goto_55
    :try_start_56
    sget-object v1, Lcom/android/internal/telephony/CommandException$Error;->SYSTEM_ERR:Lcom/android/internal/telephony/CommandException$Error;

    invoke-virtual {v1}, Lcom/android/internal/telephony/CommandException$Error;->ordinal()I

    move-result v1

    const/16 v2, 0x57

    aput v2, v0, v1
    :try_end_56
    .catch Ljava/lang/NoSuchFieldError; {:try_start_56 .. :try_end_56} :catch_3

    :goto_56
    :try_start_57
    sget-object v1, Lcom/android/internal/telephony/CommandException$Error;->USSD_MODIFIED_TO_DIAL:Lcom/android/internal/telephony/CommandException$Error;

    invoke-virtual {v1}, Lcom/android/internal/telephony/CommandException$Error;->ordinal()I

    move-result v1

    const/16 v2, 0x58

    aput v2, v0, v1
    :try_end_57
    .catch Ljava/lang/NoSuchFieldError; {:try_start_57 .. :try_end_57} :catch_2

    :goto_57
    :try_start_58
    sget-object v1, Lcom/android/internal/telephony/CommandException$Error;->USSD_MODIFIED_TO_SS:Lcom/android/internal/telephony/CommandException$Error;

    invoke-virtual {v1}, Lcom/android/internal/telephony/CommandException$Error;->ordinal()I

    move-result v1

    const/16 v2, 0x59

    aput v2, v0, v1
    :try_end_58
    .catch Ljava/lang/NoSuchFieldError; {:try_start_58 .. :try_end_58} :catch_1

    :goto_58
    :try_start_59
    sget-object v1, Lcom/android/internal/telephony/CommandException$Error;->USSD_MODIFIED_TO_USSD:Lcom/android/internal/telephony/CommandException$Error;

    invoke-virtual {v1}, Lcom/android/internal/telephony/CommandException$Error;->ordinal()I

    move-result v1

    const/16 v2, 0x5a

    aput v2, v0, v1
    :try_end_59
    .catch Ljava/lang/NoSuchFieldError; {:try_start_59 .. :try_end_59} :catch_0

    :goto_59
    sput-object v0, Lcom/android/internal/telephony/MiuiIccProviderException;->-com-android-internal-telephony-CommandException$ErrorSwitchesValues:[I

    return-object v0

    :catch_0
    move-exception v1

    goto :goto_59

    :catch_1
    move-exception v1

    goto :goto_58

    :catch_2
    move-exception v1

    goto :goto_57

    :catch_3
    move-exception v1

    goto :goto_56

    :catch_4
    move-exception v1

    goto :goto_55

    :catch_5
    move-exception v1

    goto :goto_54

    :catch_6
    move-exception v1

    goto :goto_53

    :catch_7
    move-exception v1

    goto :goto_52

    :catch_8
    move-exception v1

    goto :goto_51

    :catch_9
    move-exception v1

    goto :goto_50

    :catch_a
    move-exception v1

    goto :goto_4f

    :catch_b
    move-exception v1

    goto/16 :goto_4e

    :catch_c
    move-exception v1

    goto/16 :goto_4d

    :catch_d
    move-exception v1

    goto/16 :goto_4c

    :catch_e
    move-exception v1

    goto/16 :goto_4b

    :catch_f
    move-exception v1

    goto/16 :goto_4a

    :catch_10
    move-exception v1

    goto/16 :goto_49

    :catch_11
    move-exception v1

    goto/16 :goto_48

    :catch_12
    move-exception v1

    goto/16 :goto_47

    :catch_13
    move-exception v1

    goto/16 :goto_46

    :catch_14
    move-exception v1

    goto/16 :goto_45

    :catch_15
    move-exception v1

    goto/16 :goto_44

    :catch_16
    move-exception v1

    goto/16 :goto_43

    :catch_17
    move-exception v1

    goto/16 :goto_42

    :catch_18
    move-exception v1

    goto/16 :goto_41

    :catch_19
    move-exception v1

    goto/16 :goto_40

    :catch_1a
    move-exception v1

    goto/16 :goto_3f

    :catch_1b
    move-exception v1

    goto/16 :goto_3e

    :catch_1c
    move-exception v1

    goto/16 :goto_3d

    :catch_1d
    move-exception v1

    goto/16 :goto_3c

    :catch_1e
    move-exception v1

    goto/16 :goto_3b

    :catch_1f
    move-exception v1

    goto/16 :goto_3a

    :catch_20
    move-exception v1

    goto/16 :goto_39

    :catch_21
    move-exception v1

    goto/16 :goto_38

    :catch_22
    move-exception v1

    goto/16 :goto_37

    :catch_23
    move-exception v1

    goto/16 :goto_36

    :catch_24
    move-exception v1

    goto/16 :goto_35

    :catch_25
    move-exception v1

    goto/16 :goto_34

    :catch_26
    move-exception v1

    goto/16 :goto_33

    :catch_27
    move-exception v1

    goto/16 :goto_32

    :catch_28
    move-exception v1

    goto/16 :goto_31

    :catch_29
    move-exception v1

    goto/16 :goto_30

    :catch_2a
    move-exception v1

    goto/16 :goto_2f

    :catch_2b
    move-exception v1

    goto/16 :goto_2e

    :catch_2c
    move-exception v1

    goto/16 :goto_2d

    :catch_2d
    move-exception v1

    goto/16 :goto_2c

    :catch_2e
    move-exception v1

    goto/16 :goto_2b

    :catch_2f
    move-exception v1

    goto/16 :goto_2a

    :catch_30
    move-exception v1

    goto/16 :goto_29

    :catch_31
    move-exception v1

    goto/16 :goto_28

    :catch_32
    move-exception v1

    goto/16 :goto_27

    :catch_33
    move-exception v1

    goto/16 :goto_26

    :catch_34
    move-exception v1

    goto/16 :goto_25

    :catch_35
    move-exception v1

    goto/16 :goto_24

    :catch_36
    move-exception v1

    goto/16 :goto_23

    :catch_37
    move-exception v1

    goto/16 :goto_22

    :catch_38
    move-exception v1

    goto/16 :goto_21

    :catch_39
    move-exception v1

    goto/16 :goto_20

    :catch_3a
    move-exception v1

    goto/16 :goto_1f

    :catch_3b
    move-exception v1

    goto/16 :goto_1e

    :catch_3c
    move-exception v1

    goto/16 :goto_1d

    :catch_3d
    move-exception v1

    goto/16 :goto_1c

    :catch_3e
    move-exception v1

    goto/16 :goto_1b

    :catch_3f
    move-exception v1

    goto/16 :goto_1a

    :catch_40
    move-exception v1

    goto/16 :goto_19

    :catch_41
    move-exception v1

    goto/16 :goto_18

    :catch_42
    move-exception v1

    goto/16 :goto_17

    :catch_43
    move-exception v1

    goto/16 :goto_16

    :catch_44
    move-exception v1

    goto/16 :goto_15

    :catch_45
    move-exception v1

    goto/16 :goto_14

    :catch_46
    move-exception v1

    goto/16 :goto_13

    :catch_47
    move-exception v1

    goto/16 :goto_12

    :catch_48
    move-exception v1

    goto/16 :goto_11

    :catch_49
    move-exception v1

    goto/16 :goto_10

    :catch_4a
    move-exception v1

    goto/16 :goto_f

    :catch_4b
    move-exception v1

    goto/16 :goto_e

    :catch_4c
    move-exception v1

    goto/16 :goto_d

    :catch_4d
    move-exception v1

    goto/16 :goto_c

    :catch_4e
    move-exception v1

    goto/16 :goto_b

    :catch_4f
    move-exception v1

    goto/16 :goto_a

    :catch_50
    move-exception v1

    goto/16 :goto_9

    :catch_51
    move-exception v1

    goto/16 :goto_8

    :catch_52
    move-exception v1

    goto/16 :goto_7

    :catch_53
    move-exception v1

    goto/16 :goto_6

    :catch_54
    move-exception v1

    goto/16 :goto_5

    :catch_55
    move-exception v1

    goto/16 :goto_4

    :catch_56
    move-exception v1

    goto/16 :goto_3

    :catch_57
    move-exception v1

    goto/16 :goto_2

    :catch_58
    move-exception v1

    goto/16 :goto_1

    :catch_59
    move-exception v1

    goto/16 :goto_0
.end method

.method public constructor <init>(I)V
    .locals 0
    .param p1, "error"    # I

    .prologue
    .line 31
    invoke-direct {p0}, Ljava/lang/RuntimeException;-><init>()V

    .line 32
    iput p1, p0, Lcom/android/internal/telephony/MiuiIccProviderException;->mError:I

    .line 31
    return-void
.end method

.method public static getErrorCauseFromException(Ljava/lang/Throwable;)I
    .locals 5
    .param p0, "e"    # Ljava/lang/Throwable;

    .prologue
    .line 40
    const/4 v2, 0x0

    .line 41
    .local v2, "ret":I
    if-eqz p0, :cond_0

    .line 42
    instance-of v3, p0, Lcom/android/internal/telephony/CommandException;

    if-eqz v3, :cond_1

    move-object v0, p0

    .line 43
    check-cast v0, Lcom/android/internal/telephony/CommandException;

    .line 44
    .local v0, "ce":Lcom/android/internal/telephony/CommandException;
    invoke-static {}, Lcom/android/internal/telephony/MiuiIccProviderException;->-getcom-android-internal-telephony-CommandException$ErrorSwitchesValues()[I

    move-result-object v3

    invoke-virtual {v0}, Lcom/android/internal/telephony/CommandException;->getCommandError()Lcom/android/internal/telephony/CommandException$Error;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/internal/telephony/CommandException$Error;->ordinal()I

    move-result v4

    aget v3, v3, v4

    packed-switch v3, :pswitch_data_0

    .line 53
    const/16 v2, -0x3e9

    .line 61
    .end local v0    # "ce":Lcom/android/internal/telephony/CommandException;
    :cond_0
    :goto_0
    return v2

    .line 46
    .restart local v0    # "ce":Lcom/android/internal/telephony/CommandException;
    :pswitch_0
    const/16 v2, -0x3ea

    .line 47
    goto :goto_0

    .line 50
    :pswitch_1
    const/16 v2, -0x3ef

    .line 51
    goto :goto_0

    .line 56
    .end local v0    # "ce":Lcom/android/internal/telephony/CommandException;
    :cond_1
    instance-of v3, p0, Lcom/android/internal/telephony/MiuiIccProviderException;

    if-eqz v3, :cond_0

    move-object v1, p0

    .line 57
    check-cast v1, Lcom/android/internal/telephony/MiuiIccProviderException;

    .line 58
    .local v1, "ipe":Lcom/android/internal/telephony/MiuiIccProviderException;
    invoke-virtual {v1}, Lcom/android/internal/telephony/MiuiIccProviderException;->getError()I

    move-result v2

    goto :goto_0

    .line 44
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method


# virtual methods
.method getError()I
    .locals 1

    .prologue
    .line 36
    iget v0, p0, Lcom/android/internal/telephony/MiuiIccProviderException;->mError:I

    return v0
.end method
