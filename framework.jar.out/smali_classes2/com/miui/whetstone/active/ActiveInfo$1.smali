.class final Lcom/miui/whetstone/active/ActiveInfo$1;
.super Ljava/lang/Object;
.source "ActiveInfo.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/whetstone/active/ActiveInfo;
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
        "Lcom/miui/whetstone/active/ActiveInfo;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 97
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Lcom/miui/whetstone/active/ActiveInfo;
    .locals 2
    .param p1, "source"    # Landroid/os/Parcel;

    .prologue
    .line 99
    new-instance v0, Lcom/miui/whetstone/active/ActiveInfo;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lcom/miui/whetstone/active/ActiveInfo;-><init>(Landroid/os/Parcel;Lcom/miui/whetstone/active/ActiveInfo;)V

    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1
    .param p1, "source"    # Landroid/os/Parcel;

    .prologue
    .line 98
    invoke-virtual {p0, p1}, Lcom/miui/whetstone/active/ActiveInfo$1;->createFromParcel(Landroid/os/Parcel;)Lcom/miui/whetstone/active/ActiveInfo;

    move-result-object v0

    return-object v0
.end method

.method public newArray(I)[Lcom/miui/whetstone/active/ActiveInfo;
    .locals 1
    .param p1, "size"    # I

    .prologue
    .line 102
    new-array v0, p1, [Lcom/miui/whetstone/active/ActiveInfo;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 1
    .param p1, "size"    # I

    .prologue
    .line 101
    invoke-virtual {p0, p1}, Lcom/miui/whetstone/active/ActiveInfo$1;->newArray(I)[Lcom/miui/whetstone/active/ActiveInfo;

    move-result-object v0

    return-object v0
.end method
