.class Lcom/miui/server/XSpaceManagerServiceCompat;
.super Ljava/lang/Object;
.source "XSpaceManagerServiceCompat.java"


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static setBundleDefusable(Z)V
    .locals 0
    .param p0, "defusable"    # Z

    .prologue
    .line 10
    invoke-static {p0}, Landroid/os/BaseBundle;->setShouldDefuse(Z)V

    .line 9
    return-void
.end method
