.class Lcom/android/internal/telephony/SmsApplication$SmsPackageMonitor$1;
.super Ljava/lang/Object;
.source "SmsApplication.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/SmsApplication$SmsPackageMonitor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/internal/telephony/SmsApplication$SmsPackageMonitor;


# direct methods
.method constructor <init>(Lcom/android/internal/telephony/SmsApplication$SmsPackageMonitor;)V
    .locals 0
    .param p1, "this$1"    # Lcom/android/internal/telephony/SmsApplication$SmsPackageMonitor;

    .prologue
    .line 694
    iput-object p1, p0, Lcom/android/internal/telephony/SmsApplication$SmsPackageMonitor$1;->this$1:Lcom/android/internal/telephony/SmsApplication$SmsPackageMonitor;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 697
    iget-object v0, p0, Lcom/android/internal/telephony/SmsApplication$SmsPackageMonitor$1;->this$1:Lcom/android/internal/telephony/SmsApplication$SmsPackageMonitor;

    invoke-virtual {v0}, Lcom/android/internal/telephony/SmsApplication$SmsPackageMonitor;->handlePackageChanged()V

    .line 696
    return-void
.end method
