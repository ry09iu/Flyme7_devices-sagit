.class final Lmiui/mqsas/sdk/event/JavaExceptionEvent$1;
.super Ljava/lang/Object;
.source "JavaExceptionEvent.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiui/mqsas/sdk/event/JavaExceptionEvent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator",
        "<",
        "Lmiui/mqsas/sdk/event/JavaExceptionEvent;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 67
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    .line 68
    invoke-virtual {p0, p1}, Lmiui/mqsas/sdk/event/JavaExceptionEvent$1;->createFromParcel(Landroid/os/Parcel;)Lmiui/mqsas/sdk/event/JavaExceptionEvent;

    move-result-object v0

    return-object v0
.end method

.method public createFromParcel(Landroid/os/Parcel;)Lmiui/mqsas/sdk/event/JavaExceptionEvent;
    .locals 2
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    .line 69
    new-instance v0, Lmiui/mqsas/sdk/event/JavaExceptionEvent;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lmiui/mqsas/sdk/event/JavaExceptionEvent;-><init>(Landroid/os/Parcel;Lmiui/mqsas/sdk/event/JavaExceptionEvent;)V

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 1
    .param p1, "size"    # I

    .prologue
    .line 72
    invoke-virtual {p0, p1}, Lmiui/mqsas/sdk/event/JavaExceptionEvent$1;->newArray(I)[Lmiui/mqsas/sdk/event/JavaExceptionEvent;

    move-result-object v0

    return-object v0
.end method

.method public newArray(I)[Lmiui/mqsas/sdk/event/JavaExceptionEvent;
    .locals 1
    .param p1, "size"    # I

    .prologue
    .line 73
    new-array v0, p1, [Lmiui/mqsas/sdk/event/JavaExceptionEvent;

    return-object v0
.end method
