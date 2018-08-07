.class public Lcom/android/stk/StkApp;
.super Lmiui/external/Application;
.source "StkApp.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/stk/StkApp$StkAppDelegate;
    }
.end annotation


# static fields
.field private static final synthetic -com-android-internal-telephony-cat-Duration$TimeUnitSwitchesValues:[I


# direct methods
.method private static synthetic -getcom-android-internal-telephony-cat-Duration$TimeUnitSwitchesValues()[I
    .locals 3

    sget-object v0, Lcom/android/stk/StkApp;->-com-android-internal-telephony-cat-Duration$TimeUnitSwitchesValues:[I

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/stk/StkApp;->-com-android-internal-telephony-cat-Duration$TimeUnitSwitchesValues:[I

    return-object v0

    :cond_0
    invoke-static {}, Lcom/android/internal/telephony/cat/Duration$TimeUnit;->values()[Lcom/android/internal/telephony/cat/Duration$TimeUnit;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    :try_start_0
    sget-object v1, Lcom/android/internal/telephony/cat/Duration$TimeUnit;->MINUTE:Lcom/android/internal/telephony/cat/Duration$TimeUnit;

    invoke-virtual {v1}, Lcom/android/internal/telephony/cat/Duration$TimeUnit;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_2

    :goto_0
    :try_start_1
    sget-object v1, Lcom/android/internal/telephony/cat/Duration$TimeUnit;->SECOND:Lcom/android/internal/telephony/cat/Duration$TimeUnit;

    invoke-virtual {v1}, Lcom/android/internal/telephony/cat/Duration$TimeUnit;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_1

    :goto_1
    :try_start_2
    sget-object v1, Lcom/android/internal/telephony/cat/Duration$TimeUnit;->TENTH_SECOND:Lcom/android/internal/telephony/cat/Duration$TimeUnit;

    invoke-virtual {v1}, Lcom/android/internal/telephony/cat/Duration$TimeUnit;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_0

    :goto_2
    sput-object v0, Lcom/android/stk/StkApp;->-com-android-internal-telephony-cat-Duration$TimeUnitSwitchesValues:[I

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

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 29
    invoke-direct {p0}, Lmiui/external/Application;-><init>()V

    return-void
.end method

.method public static calculateDurationInMilis(Lcom/android/internal/telephony/cat/Duration;)I
    .locals 3
    .param p0, "duration"    # Lcom/android/internal/telephony/cat/Duration;

    .prologue
    .line 59
    const/4 v0, 0x0

    .line 60
    .local v0, "timeout":I
    if-eqz p0, :cond_0

    .line 61
    invoke-static {}, Lcom/android/stk/StkApp;->-getcom-android-internal-telephony-cat-Duration$TimeUnitSwitchesValues()[I

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/telephony/cat/Duration;->timeUnit:Lcom/android/internal/telephony/cat/Duration$TimeUnit;

    invoke-virtual {v2}, Lcom/android/internal/telephony/cat/Duration$TimeUnit;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    .line 70
    :pswitch_0
    const/16 v0, 0x3e8

    .line 73
    :goto_0
    iget v1, p0, Lcom/android/internal/telephony/cat/Duration;->timeInterval:I

    mul-int/2addr v0, v1

    .line 75
    :cond_0
    return v0

    .line 63
    :pswitch_1
    const v0, 0xea60

    .line 64
    goto :goto_0

    .line 66
    :pswitch_2
    const/16 v0, 0x64

    .line 67
    goto :goto_0

    .line 61
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method


# virtual methods
.method public onCreateApplicationDelegate()Lmiui/external/ApplicationDelegate;
    .locals 2

    .prologue
    .line 81
    new-instance v0, Lcom/android/stk/StkApp$StkAppDelegate;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/stk/StkApp$StkAppDelegate;-><init>(Lcom/android/stk/StkApp;Lcom/android/stk/StkApp$StkAppDelegate;)V

    return-object v0
.end method
