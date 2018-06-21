.class public Lcom/android/server/connectivity/VpnInjector;
.super Ljava/lang/Object;
.source "VpnInjector.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static isSpecialUser(Landroid/content/Context;II)Z
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "parentUserId"    # I
    .param p2, "userId"    # I

    .prologue
    const/4 v0, 0x0

    .line 16
    if-ltz p1, :cond_0

    if-gez p2, :cond_1

    .line 17
    :cond_0
    return v0

    .line 19
    :cond_1
    if-nez p1, :cond_2

    const/16 v1, 0x3e7

    if-ne p2, v1, :cond_2

    const/4 v0, 0x1

    :cond_2
    return v0
.end method
