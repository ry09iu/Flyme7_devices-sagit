.class Lcom/android/internal/telephony/vsim/CountryMonitor$Holder;
.super Ljava/lang/Object;
.source "CountryMonitor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/vsim/CountryMonitor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "Holder"
.end annotation


# static fields
.field static final INSTANCE:Lcom/android/internal/telephony/vsim/CountryMonitor;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 25
    new-instance v0, Lcom/android/internal/telephony/vsim/CountryMonitor;

    invoke-direct {v0}, Lcom/android/internal/telephony/vsim/CountryMonitor;-><init>()V

    sput-object v0, Lcom/android/internal/telephony/vsim/CountryMonitor$Holder;->INSTANCE:Lcom/android/internal/telephony/vsim/CountryMonitor;

    .line 23
    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
