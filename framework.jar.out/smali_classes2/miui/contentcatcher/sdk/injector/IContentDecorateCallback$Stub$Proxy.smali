.class Lmiui/contentcatcher/sdk/injector/IContentDecorateCallback$Stub$Proxy;
.super Ljava/lang/Object;
.source "IContentDecorateCallback.java"

# interfaces
.implements Lmiui/contentcatcher/sdk/injector/IContentDecorateCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiui/contentcatcher/sdk/injector/IContentDecorateCallback$Stub;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Proxy"
.end annotation


# instance fields
.field private mRemote:Landroid/os/IBinder;


# direct methods
.method constructor <init>(Landroid/os/IBinder;)V
    .locals 0
    .param p1, "remote"    # Landroid/os/IBinder;

    .prologue
    .line 68
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 70
    iput-object p1, p0, Lmiui/contentcatcher/sdk/injector/IContentDecorateCallback$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    .line 68
    return-void
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 1

    .prologue
    .line 74
    iget-object v0, p0, Lmiui/contentcatcher/sdk/injector/IContentDecorateCallback$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    return-object v0
.end method

.method public getInterfaceDescriptor()Ljava/lang/String;
    .locals 1

    .prologue
    .line 78
    const-string/jumbo v0, "miui.contentcatcher.sdk.injector.IContentDecorateCallback"

    return-object v0
.end method

.method public updateContent(Lmiui/contentcatcher/sdk/DecorateContentParam;)V
    .locals 5
    .param p1, "params"    # Lmiui/contentcatcher/sdk/DecorateContentParam;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 82
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 84
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v1, "miui.contentcatcher.sdk.injector.IContentDecorateCallback"

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 85
    if-eqz p1, :cond_0

    .line 86
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 87
    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Lmiui/contentcatcher/sdk/DecorateContentParam;->writeToParcel(Landroid/os/Parcel;I)V

    .line 92
    :goto_0
    iget-object v1, p0, Lmiui/contentcatcher/sdk/injector/IContentDecorateCallback$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v2, 0x1

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-interface {v1, v2, v0, v3, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 95
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 80
    return-void

    .line 90
    :cond_0
    const/4 v1, 0x0

    :try_start_1
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 94
    :catchall_0
    move-exception v1

    .line 95
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 94
    throw v1
.end method
