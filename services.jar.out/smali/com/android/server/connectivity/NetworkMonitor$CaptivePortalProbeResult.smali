.class public final Lcom/android/server/connectivity/NetworkMonitor$CaptivePortalProbeResult;
.super Ljava/lang/Object;
.source "NetworkMonitor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/connectivity/NetworkMonitor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "CaptivePortalProbeResult"
.end annotation


# static fields
.field static final FAILED:Lcom/android/server/connectivity/NetworkMonitor$CaptivePortalProbeResult;


# instance fields
.field final detectUrl:Ljava/lang/String;

.field private final mHttpResponseCode:I

.field final redirectUrl:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 432
    new-instance v0, Lcom/android/server/connectivity/NetworkMonitor$CaptivePortalProbeResult;

    const/16 v1, 0x257

    invoke-direct {v0, v1}, Lcom/android/server/connectivity/NetworkMonitor$CaptivePortalProbeResult;-><init>(I)V

    sput-object v0, Lcom/android/server/connectivity/NetworkMonitor$CaptivePortalProbeResult;->FAILED:Lcom/android/server/connectivity/NetworkMonitor$CaptivePortalProbeResult;

    .line 431
    return-void
.end method

.method public constructor <init>(I)V
    .locals 1
    .param p1, "httpResponseCode"    # I

    .prologue
    const/4 v0, 0x0

    .line 447
    invoke-direct {p0, p1, v0, v0}, Lcom/android/server/connectivity/NetworkMonitor$CaptivePortalProbeResult;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    .line 446
    return-void
.end method

.method public constructor <init>(ILjava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "httpResponseCode"    # I
    .param p2, "redirectUrl"    # Ljava/lang/String;
    .param p3, "detectUrl"    # Ljava/lang/String;

    .prologue
    .line 439
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 441
    iput p1, p0, Lcom/android/server/connectivity/NetworkMonitor$CaptivePortalProbeResult;->mHttpResponseCode:I

    .line 442
    iput-object p2, p0, Lcom/android/server/connectivity/NetworkMonitor$CaptivePortalProbeResult;->redirectUrl:Ljava/lang/String;

    .line 443
    iput-object p3, p0, Lcom/android/server/connectivity/NetworkMonitor$CaptivePortalProbeResult;->detectUrl:Ljava/lang/String;

    .line 440
    return-void
.end method


# virtual methods
.method isPortal()Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 452
    invoke-virtual {p0}, Lcom/android/server/connectivity/NetworkMonitor$CaptivePortalProbeResult;->isSuccessful()Z

    move-result v1

    if-nez v1, :cond_0

    iget v1, p0, Lcom/android/server/connectivity/NetworkMonitor$CaptivePortalProbeResult;->mHttpResponseCode:I

    const/16 v2, 0xc8

    if-lt v1, v2, :cond_0

    iget v1, p0, Lcom/android/server/connectivity/NetworkMonitor$CaptivePortalProbeResult;->mHttpResponseCode:I

    const/16 v2, 0x18f

    if-gt v1, v2, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method isSuccessful()Z
    .locals 2

    .prologue
    .line 450
    iget v0, p0, Lcom/android/server/connectivity/NetworkMonitor$CaptivePortalProbeResult;->mHttpResponseCode:I

    const/16 v1, 0xcc

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
