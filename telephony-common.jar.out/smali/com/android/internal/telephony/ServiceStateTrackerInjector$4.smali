.class final Lcom/android/internal/telephony/ServiceStateTrackerInjector$4;
.super Ljava/lang/Thread;
.source "ServiceStateTrackerInjector.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/internal/telephony/ServiceStateTrackerInjector;->processForCustSingleSimDevice()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 372
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 375
    const-string/jumbo v0, "GSSTInjector"

    const-string/jumbo v1, "isCustSingleSimDevice setIccCardActivate false on slot 1"

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 376
    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/internal/telephony/IccCardActivateHelper;->setIccCardActivate(IZ)V

    .line 374
    return-void
.end method
