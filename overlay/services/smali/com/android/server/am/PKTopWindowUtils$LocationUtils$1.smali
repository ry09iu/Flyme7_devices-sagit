.class Lcom/android/server/am/PKTopWindowUtils$LocationUtils$1;
.super Ljava/lang/Object;
.source "PKTopWindowUtils.java"

# interfaces
.implements Landroid/location/LocationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/am/PKTopWindowUtils$LocationUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/server/am/PKTopWindowUtils$LocationUtils;


# direct methods
.method constructor <init>(Lcom/android/server/am/PKTopWindowUtils$LocationUtils;)V
    .locals 0
    .param p1, "this$1"    # Lcom/android/server/am/PKTopWindowUtils$LocationUtils;

    .prologue
    .line 787
    iput-object p1, p0, Lcom/android/server/am/PKTopWindowUtils$LocationUtils$1;->this$1:Lcom/android/server/am/PKTopWindowUtils$LocationUtils;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLocationChanged(Landroid/location/Location;)V
    .locals 1
    .param p1, "location"    # Landroid/location/Location;

    .prologue
    .line 818
    invoke-virtual {p1}, Landroid/location/Location;->getAccuracy()F

    .line 819
    iget-object v0, p0, Lcom/android/server/am/PKTopWindowUtils$LocationUtils$1;->this$1:Lcom/android/server/am/PKTopWindowUtils$LocationUtils;

    invoke-static {v0, p1}, Lcom/android/server/am/PKTopWindowUtils$LocationUtils;->-wrap0(Lcom/android/server/am/PKTopWindowUtils$LocationUtils;Landroid/location/Location;)V

    .line 817
    return-void
.end method

.method public onProviderDisabled(Ljava/lang/String;)V
    .locals 0
    .param p1, "provider"    # Ljava/lang/String;

    .prologue
    .line 809
    return-void
.end method

.method public onProviderEnabled(Ljava/lang/String;)V
    .locals 0
    .param p1, "provider"    # Ljava/lang/String;

    .prologue
    .line 801
    return-void
.end method

.method public onStatusChanged(Ljava/lang/String;ILandroid/os/Bundle;)V
    .locals 0
    .param p1, "provider"    # Ljava/lang/String;
    .param p2, "status"    # I
    .param p3, "arg2"    # Landroid/os/Bundle;

    .prologue
    .line 793
    return-void
.end method
