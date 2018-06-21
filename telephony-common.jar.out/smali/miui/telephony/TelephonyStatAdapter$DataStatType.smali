.class public final enum Lmiui/telephony/TelephonyStatAdapter$DataStatType;
.super Ljava/lang/Enum;
.source "TelephonyStatAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiui/telephony/TelephonyStatAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "DataStatType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lmiui/telephony/TelephonyStatAdapter$DataStatType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lmiui/telephony/TelephonyStatAdapter$DataStatType;

.field public static final enum DATA_SETUP_FAIL_CN:Lmiui/telephony/TelephonyStatAdapter$DataStatType;

.field public static final enum DATA_SETUP_OK_CN:Lmiui/telephony/TelephonyStatAdapter$DataStatType;

.field public static final enum FAKE_CONNECTION_CN:Lmiui/telephony/TelephonyStatAdapter$DataStatType;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 29
    new-instance v0, Lmiui/telephony/TelephonyStatAdapter$DataStatType;

    const-string/jumbo v1, "FAKE_CONNECTION_CN"

    invoke-direct {v0, v1, v2}, Lmiui/telephony/TelephonyStatAdapter$DataStatType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lmiui/telephony/TelephonyStatAdapter$DataStatType;->FAKE_CONNECTION_CN:Lmiui/telephony/TelephonyStatAdapter$DataStatType;

    .line 30
    new-instance v0, Lmiui/telephony/TelephonyStatAdapter$DataStatType;

    const-string/jumbo v1, "DATA_SETUP_OK_CN"

    invoke-direct {v0, v1, v3}, Lmiui/telephony/TelephonyStatAdapter$DataStatType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lmiui/telephony/TelephonyStatAdapter$DataStatType;->DATA_SETUP_OK_CN:Lmiui/telephony/TelephonyStatAdapter$DataStatType;

    .line 31
    new-instance v0, Lmiui/telephony/TelephonyStatAdapter$DataStatType;

    const-string/jumbo v1, "DATA_SETUP_FAIL_CN"

    invoke-direct {v0, v1, v4}, Lmiui/telephony/TelephonyStatAdapter$DataStatType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lmiui/telephony/TelephonyStatAdapter$DataStatType;->DATA_SETUP_FAIL_CN:Lmiui/telephony/TelephonyStatAdapter$DataStatType;

    .line 28
    const/4 v0, 0x3

    new-array v0, v0, [Lmiui/telephony/TelephonyStatAdapter$DataStatType;

    sget-object v1, Lmiui/telephony/TelephonyStatAdapter$DataStatType;->FAKE_CONNECTION_CN:Lmiui/telephony/TelephonyStatAdapter$DataStatType;

    aput-object v1, v0, v2

    sget-object v1, Lmiui/telephony/TelephonyStatAdapter$DataStatType;->DATA_SETUP_OK_CN:Lmiui/telephony/TelephonyStatAdapter$DataStatType;

    aput-object v1, v0, v3

    sget-object v1, Lmiui/telephony/TelephonyStatAdapter$DataStatType;->DATA_SETUP_FAIL_CN:Lmiui/telephony/TelephonyStatAdapter$DataStatType;

    aput-object v1, v0, v4

    sput-object v0, Lmiui/telephony/TelephonyStatAdapter$DataStatType;->$VALUES:[Lmiui/telephony/TelephonyStatAdapter$DataStatType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0

    .prologue
    .line 28
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lmiui/telephony/TelephonyStatAdapter$DataStatType;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 28
    const-class v0, Lmiui/telephony/TelephonyStatAdapter$DataStatType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lmiui/telephony/TelephonyStatAdapter$DataStatType;

    return-object v0
.end method

.method public static values()[Lmiui/telephony/TelephonyStatAdapter$DataStatType;
    .locals 1

    .prologue
    .line 28
    sget-object v0, Lmiui/telephony/TelephonyStatAdapter$DataStatType;->$VALUES:[Lmiui/telephony/TelephonyStatAdapter$DataStatType;

    return-object v0
.end method
