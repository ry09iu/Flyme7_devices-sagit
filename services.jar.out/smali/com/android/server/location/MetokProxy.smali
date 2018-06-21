.class public Lcom/android/server/location/MetokProxy;
.super Ljava/lang/Object;
.source "MetokProxy.java"

# interfaces
.implements Lcom/android/server/location/LocationProviderInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/location/MetokProxy$1;
    }
.end annotation


# static fields
.field private static final CMD_CAN_TAKEOVER:Ljava/lang/String; = "metok_takeover"

.field private static final D:Z

.field private static final EXTRA_CLIENT:Ljava/lang/String; = "metok_client"

.field private static final EXTRA_MAGIC:Ljava/lang/String; = "metok_magic"

.field private static final EXTRA_PROVIDER:Ljava/lang/String; = "metok_provider"

.field private static final MAGIC_METOK:Ljava/lang/String; = "metok"

.field private static final METOK_LP_PACKAGE:Ljava/lang/String; = "com.xiaomi.metok"

.field private static final METOK_PROVIDER:Ljava/lang/String; = "network"

.field private static final TAG:Ljava/lang/String; = "MetokProxy"


# instance fields
.field private final mContext:Landroid/content/Context;

.field private mEnabled:Z

.field private mFused:Lcom/android/server/location/LocationProviderInterface;

.field private mGps:Lcom/android/server/location/LocationProviderInterface;

.field private mLock:Ljava/lang/Object;

.field private final mName:Ljava/lang/String;

.field private mNewServiceWork:Ljava/lang/Runnable;

.field private mNlp:Lcom/android/server/location/LocationProviderInterface;

.field private mProperties:Lcom/android/internal/location/ProviderProperties;

.field private mProviderToCalled:Ljava/lang/String;

.field private mRequest:Lcom/android/internal/location/ProviderRequest;

.field private final mServiceWatcher:Lcom/android/server/location/MetokWatcher;

.field private mWorksource:Landroid/os/WorkSource;


# direct methods
.method static synthetic -get0()Z
    .locals 1

    sget-boolean v0, Lcom/android/server/location/MetokProxy;->D:Z

    return v0
.end method

.method static synthetic -get1(Lcom/android/server/location/MetokProxy;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/server/location/MetokProxy;->mEnabled:Z

    return v0
.end method

.method static synthetic -get2(Lcom/android/server/location/MetokProxy;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/android/server/location/MetokProxy;->mLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic -get3(Lcom/android/server/location/MetokProxy;)Lcom/android/internal/location/ProviderRequest;
    .locals 1

    iget-object v0, p0, Lcom/android/server/location/MetokProxy;->mRequest:Lcom/android/internal/location/ProviderRequest;

    return-object v0
.end method

.method static synthetic -get4(Lcom/android/server/location/MetokProxy;)Lcom/android/server/location/MetokWatcher;
    .locals 1

    iget-object v0, p0, Lcom/android/server/location/MetokProxy;->mServiceWatcher:Lcom/android/server/location/MetokWatcher;

    return-object v0
.end method

.method static synthetic -get5(Lcom/android/server/location/MetokProxy;)Landroid/os/WorkSource;
    .locals 1

    iget-object v0, p0, Lcom/android/server/location/MetokProxy;->mWorksource:Landroid/os/WorkSource;

    return-object v0
.end method

.method static synthetic -set0(Lcom/android/server/location/MetokProxy;Lcom/android/internal/location/ProviderProperties;)Lcom/android/internal/location/ProviderProperties;
    .locals 0

    iput-object p1, p0, Lcom/android/server/location/MetokProxy;->mProperties:Lcom/android/internal/location/ProviderProperties;

    return-object p1
.end method

.method static synthetic -wrap0(Lcom/android/server/location/MetokProxy;)Lcom/android/internal/location/ILocationProvider;
    .locals 1

    invoke-direct {p0}, Lcom/android/server/location/MetokProxy;->getService()Lcom/android/internal/location/ILocationProvider;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 27
    sget-boolean v0, Lcom/android/server/LocationManagerService;->D:Z

    sput-boolean v0, Lcom/android/server/location/MetokProxy;->D:Z

    .line 25
    return-void
.end method

.method private constructor <init>(Landroid/content/Context;Ljava/lang/String;Landroid/os/Handler;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "action"    # Ljava/lang/String;
    .param p3, "handler"    # Landroid/os/Handler;

    .prologue
    .line 66
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/location/MetokProxy;->mLock:Ljava/lang/Object;

    .line 52
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/location/MetokProxy;->mEnabled:Z

    .line 53
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/location/MetokProxy;->mRequest:Lcom/android/internal/location/ProviderRequest;

    .line 54
    new-instance v0, Landroid/os/WorkSource;

    invoke-direct {v0}, Landroid/os/WorkSource;-><init>()V

    iput-object v0, p0, Lcom/android/server/location/MetokProxy;->mWorksource:Landroid/os/WorkSource;

    .line 151
    new-instance v0, Lcom/android/server/location/MetokProxy$1;

    invoke-direct {v0, p0}, Lcom/android/server/location/MetokProxy$1;-><init>(Lcom/android/server/location/MetokProxy;)V

    iput-object v0, p0, Lcom/android/server/location/MetokProxy;->mNewServiceWork:Ljava/lang/Runnable;

    .line 67
    iput-object p1, p0, Lcom/android/server/location/MetokProxy;->mContext:Landroid/content/Context;

    .line 68
    const-string/jumbo v0, "network"

    iput-object v0, p0, Lcom/android/server/location/MetokProxy;->mName:Ljava/lang/String;

    .line 69
    new-instance v0, Lcom/android/server/location/MetokWatcher;

    iget-object v1, p0, Lcom/android/server/location/MetokProxy;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/server/location/MetokProxy;->mNewServiceWork:Ljava/lang/Runnable;

    invoke-direct {v0, v1, p2, v2, p3}, Lcom/android/server/location/MetokWatcher;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Runnable;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/server/location/MetokProxy;->mServiceWatcher:Lcom/android/server/location/MetokWatcher;

    .line 66
    return-void
.end method

.method private bind()Z
    .locals 1

    .prologue
    .line 139
    iget-object v0, p0, Lcom/android/server/location/MetokProxy;->mServiceWatcher:Lcom/android/server/location/MetokWatcher;

    invoke-virtual {v0}, Lcom/android/server/location/MetokWatcher;->start()Z

    move-result v0

    return v0
.end method

.method public static createAndBind(Landroid/content/Context;Ljava/lang/String;Landroid/os/Handler;)Lcom/android/server/location/MetokProxy;
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "action"    # Ljava/lang/String;
    .param p2, "handler"    # Landroid/os/Handler;

    .prologue
    .line 57
    new-instance v0, Lcom/android/server/location/MetokProxy;

    invoke-direct {v0, p0, p1, p2}, Lcom/android/server/location/MetokProxy;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/os/Handler;)V

    .line 58
    .local v0, "proxy":Lcom/android/server/location/MetokProxy;
    invoke-direct {v0}, Lcom/android/server/location/MetokProxy;->bind()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 59
    return-object v0

    .line 61
    :cond_0
    const-string/jumbo v1, "MetokProxy"

    const-string/jumbo v2, "failed to bind metok"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 62
    const/4 v1, 0x0

    return-object v1
.end method

.method private getService()Lcom/android/internal/location/ILocationProvider;
    .locals 1

    .prologue
    .line 143
    iget-object v0, p0, Lcom/android/server/location/MetokProxy;->mServiceWatcher:Lcom/android/server/location/MetokWatcher;

    invoke-virtual {v0}, Lcom/android/server/location/MetokWatcher;->getBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/location/ILocationProvider$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/location/ILocationProvider;

    move-result-object v0

    return-object v0
.end method

.method private setRequestToOtherProvider(Lcom/android/internal/location/ProviderRequest;Landroid/os/WorkSource;)V
    .locals 5
    .param p1, "request"    # Lcom/android/internal/location/ProviderRequest;
    .param p2, "source"    # Landroid/os/WorkSource;

    .prologue
    const/4 v4, 0x0

    .line 254
    iget-object v1, p0, Lcom/android/server/location/MetokProxy;->mProviderToCalled:Ljava/lang/String;

    if-nez v1, :cond_0

    .line 255
    return-void

    .line 258
    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/android/server/location/MetokProxy;->mProviderToCalled:Ljava/lang/String;

    const-string/jumbo v2, "network"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/server/location/MetokProxy;->mNlp:Lcom/android/server/location/LocationProviderInterface;

    if-eqz v1, :cond_2

    .line 259
    iget-object v1, p0, Lcom/android/server/location/MetokProxy;->mNlp:Lcom/android/server/location/LocationProviderInterface;

    invoke-interface {v1, p1, p2}, Lcom/android/server/location/LocationProviderInterface;->setRequest(Lcom/android/internal/location/ProviderRequest;Landroid/os/WorkSource;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 268
    :cond_1
    :goto_0
    iput-object v4, p0, Lcom/android/server/location/MetokProxy;->mProviderToCalled:Ljava/lang/String;

    .line 253
    return-void

    .line 260
    :cond_2
    :try_start_1
    iget-object v1, p0, Lcom/android/server/location/MetokProxy;->mProviderToCalled:Ljava/lang/String;

    const-string/jumbo v2, "gps"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/android/server/location/MetokProxy;->mGps:Lcom/android/server/location/LocationProviderInterface;

    if-eqz v1, :cond_3

    .line 261
    iget-object v1, p0, Lcom/android/server/location/MetokProxy;->mGps:Lcom/android/server/location/LocationProviderInterface;

    invoke-interface {v1, p1, p2}, Lcom/android/server/location/LocationProviderInterface;->setRequest(Lcom/android/internal/location/ProviderRequest;Landroid/os/WorkSource;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 265
    :catch_0
    move-exception v0

    .line 266
    .local v0, "ex":Ljava/lang/Exception;
    const-string/jumbo v1, "MetokProxy"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/android/server/location/MetokProxy;->mProviderToCalled:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "locaiton request failed: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 262
    .end local v0    # "ex":Ljava/lang/Exception;
    :cond_3
    :try_start_2
    iget-object v1, p0, Lcom/android/server/location/MetokProxy;->mFused:Lcom/android/server/location/LocationProviderInterface;

    if-eqz v1, :cond_1

    .line 263
    iget-object v1, p0, Lcom/android/server/location/MetokProxy;->mFused:Lcom/android/server/location/LocationProviderInterface;

    invoke-interface {v1, p1, p2}, Lcom/android/server/location/LocationProviderInterface;->setRequest(Lcom/android/internal/location/ProviderRequest;Landroid/os/WorkSource;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0
.end method


# virtual methods
.method public canTakeOver(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 6
    .param p1, "provider"    # Ljava/lang/String;
    .param p2, "clientPackage"    # Ljava/lang/String;

    .prologue
    const/4 v5, 0x0

    .line 89
    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    .line 90
    :cond_0
    return v5

    .line 93
    :cond_1
    const-string/jumbo v2, "passive"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 94
    return v5

    .line 97
    :cond_2
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 99
    .local v1, "extras":Landroid/os/Bundle;
    :try_start_0
    const-string/jumbo v2, "metok_magic"

    const-string/jumbo v3, "metok"

    const-string/jumbo v4, "utf-8"

    invoke-virtual {v3, v4}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putByteArray(Ljava/lang/String;[B)V

    .line 100
    const-string/jumbo v2, "metok_client"

    const-string/jumbo v3, "utf-8"

    invoke-virtual {p2, v3}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putByteArray(Ljava/lang/String;[B)V

    .line 101
    const-string/jumbo v2, "metok_provider"

    const-string/jumbo v3, "utf-8"

    invoke-virtual {p1, v3}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putByteArray(Ljava/lang/String;[B)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 107
    const-string/jumbo v2, "metok_takeover"

    invoke-virtual {p0, v2, v1}, Lcom/android/server/location/MetokProxy;->sendExtraCommand(Ljava/lang/String;Landroid/os/Bundle;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 108
    iput-object p1, p0, Lcom/android/server/location/MetokProxy;->mProviderToCalled:Ljava/lang/String;

    .line 109
    const/4 v2, 0x1

    return v2

    .line 102
    :catch_0
    move-exception v0

    .line 103
    .local v0, "ex":Ljava/lang/Exception;
    const-string/jumbo v2, "MetokProxy"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "create bundle error: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 104
    return v5

    .line 112
    .end local v0    # "ex":Ljava/lang/Exception;
    :cond_3
    return v5
.end method

.method public disable()V
    .locals 6

    .prologue
    .line 230
    iget-object v3, p0, Lcom/android/server/location/MetokProxy;->mLock:Ljava/lang/Object;

    monitor-enter v3

    .line 231
    const/4 v4, 0x0

    :try_start_0
    iput-boolean v4, p0, Lcom/android/server/location/MetokProxy;->mEnabled:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v3

    .line 233
    invoke-direct {p0}, Lcom/android/server/location/MetokProxy;->getService()Lcom/android/internal/location/ILocationProvider;

    move-result-object v2

    .line 234
    .local v2, "service":Lcom/android/internal/location/ILocationProvider;
    if-nez v2, :cond_0

    return-void

    .line 230
    .end local v2    # "service":Lcom/android/internal/location/ILocationProvider;
    :catchall_0
    move-exception v4

    monitor-exit v3

    throw v4

    .line 237
    .restart local v2    # "service":Lcom/android/internal/location/ILocationProvider;
    :cond_0
    :try_start_1
    invoke-interface {v2}, Lcom/android/internal/location/ILocationProvider;->disable()V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 229
    :goto_0
    return-void

    .line 240
    :catch_0
    move-exception v1

    .line 242
    .local v1, "e":Ljava/lang/Exception;
    const-string/jumbo v3, "MetokProxy"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Exception from "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/server/location/MetokProxy;->mServiceWatcher:Lcom/android/server/location/MetokWatcher;

    invoke-virtual {v5}, Lcom/android/server/location/MetokWatcher;->getPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 238
    .end local v1    # "e":Ljava/lang/Exception;
    :catch_1
    move-exception v0

    .line 239
    .local v0, "e":Landroid/os/RemoteException;
    const-string/jumbo v3, "MetokProxy"

    invoke-static {v3, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 6
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "pw"    # Ljava/io/PrintWriter;
    .param p3, "args"    # [Ljava/lang/String;

    .prologue
    .line 302
    const-string/jumbo v3, "REMOTE SERVICE"

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    .line 303
    const-string/jumbo v3, " name="

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    move-result-object v3

    iget-object v4, p0, Lcom/android/server/location/MetokProxy;->mName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    .line 304
    const-string/jumbo v3, " pkg="

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    move-result-object v3

    iget-object v4, p0, Lcom/android/server/location/MetokProxy;->mServiceWatcher:Lcom/android/server/location/MetokWatcher;

    invoke-virtual {v4}, Lcom/android/server/location/MetokWatcher;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    .line 305
    const-string/jumbo v3, " version="

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, ""

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/server/location/MetokProxy;->mServiceWatcher:Lcom/android/server/location/MetokWatcher;

    invoke-virtual {v5}, Lcom/android/server/location/MetokWatcher;->getVersion()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    .line 306
    const/16 v3, 0xa

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->append(C)Ljava/io/PrintWriter;

    .line 308
    invoke-direct {p0}, Lcom/android/server/location/MetokProxy;->getService()Lcom/android/internal/location/ILocationProvider;

    move-result-object v2

    .line 309
    .local v2, "service":Lcom/android/internal/location/ILocationProvider;
    if-nez v2, :cond_0

    .line 310
    const-string/jumbo v3, "service down (null)"

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 311
    return-void

    .line 313
    :cond_0
    invoke-virtual {p2}, Ljava/io/PrintWriter;->flush()V

    .line 316
    :try_start_0
    invoke-interface {v2}, Lcom/android/internal/location/ILocationProvider;->asBinder()Landroid/os/IBinder;

    move-result-object v3

    invoke-interface {v3, p1, p3}, Landroid/os/IBinder;->dump(Ljava/io/FileDescriptor;[Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 301
    :goto_0
    return-void

    .line 320
    :catch_0
    move-exception v1

    .line 321
    .local v1, "e":Ljava/lang/Exception;
    const-string/jumbo v3, "service down (Exception)"

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 323
    const-string/jumbo v3, "MetokProxy"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Exception from "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/server/location/MetokProxy;->mServiceWatcher:Lcom/android/server/location/MetokWatcher;

    invoke-virtual {v5}, Lcom/android/server/location/MetokWatcher;->getPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 317
    .end local v1    # "e":Ljava/lang/Exception;
    :catch_1
    move-exception v0

    .line 318
    .local v0, "e":Landroid/os/RemoteException;
    const-string/jumbo v3, "service down (RemoteException)"

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 319
    const-string/jumbo v3, "MetokProxy"

    invoke-static {v3, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public enable()V
    .locals 6

    .prologue
    .line 212
    iget-object v3, p0, Lcom/android/server/location/MetokProxy;->mLock:Ljava/lang/Object;

    monitor-enter v3

    .line 213
    const/4 v4, 0x1

    :try_start_0
    iput-boolean v4, p0, Lcom/android/server/location/MetokProxy;->mEnabled:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v3

    .line 215
    invoke-direct {p0}, Lcom/android/server/location/MetokProxy;->getService()Lcom/android/internal/location/ILocationProvider;

    move-result-object v2

    .line 216
    .local v2, "service":Lcom/android/internal/location/ILocationProvider;
    if-nez v2, :cond_0

    return-void

    .line 212
    .end local v2    # "service":Lcom/android/internal/location/ILocationProvider;
    :catchall_0
    move-exception v4

    monitor-exit v3

    throw v4

    .line 219
    .restart local v2    # "service":Lcom/android/internal/location/ILocationProvider;
    :cond_0
    :try_start_1
    invoke-interface {v2}, Lcom/android/internal/location/ILocationProvider;->enable()V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 211
    :goto_0
    return-void

    .line 222
    :catch_0
    move-exception v1

    .line 224
    .local v1, "e":Ljava/lang/Exception;
    const-string/jumbo v3, "MetokProxy"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Exception from "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/server/location/MetokProxy;->mServiceWatcher:Lcom/android/server/location/MetokWatcher;

    invoke-virtual {v5}, Lcom/android/server/location/MetokWatcher;->getPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 220
    .end local v1    # "e":Ljava/lang/Exception;
    :catch_1
    move-exception v0

    .line 221
    .local v0, "e":Landroid/os/RemoteException;
    const-string/jumbo v3, "MetokProxy"

    invoke-static {v3, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public getConnectedPackageName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 85
    iget-object v0, p0, Lcom/android/server/location/MetokProxy;->mServiceWatcher:Lcom/android/server/location/MetokWatcher;

    invoke-virtual {v0}, Lcom/android/server/location/MetokWatcher;->getPackageName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 200
    iget-object v0, p0, Lcom/android/server/location/MetokProxy;->mName:Ljava/lang/String;

    return-object v0
.end method

.method public getProperties()Lcom/android/internal/location/ProviderProperties;
    .locals 2

    .prologue
    .line 205
    iget-object v0, p0, Lcom/android/server/location/MetokProxy;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 206
    :try_start_0
    iget-object v1, p0, Lcom/android/server/location/MetokProxy;->mProperties:Lcom/android/internal/location/ProviderProperties;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    .line 205
    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public getStatus(Landroid/os/Bundle;)I
    .locals 7
    .param p1, "extras"    # Landroid/os/Bundle;

    .prologue
    const/4 v6, 0x1

    .line 329
    invoke-direct {p0}, Lcom/android/server/location/MetokProxy;->getService()Lcom/android/internal/location/ILocationProvider;

    move-result-object v2

    .line 330
    .local v2, "service":Lcom/android/internal/location/ILocationProvider;
    if-nez v2, :cond_0

    return v6

    .line 333
    :cond_0
    :try_start_0
    invoke-interface {v2, p1}, Lcom/android/internal/location/ILocationProvider;->getStatus(Landroid/os/Bundle;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    return v3

    .line 336
    :catch_0
    move-exception v1

    .line 338
    .local v1, "e":Ljava/lang/Exception;
    const-string/jumbo v3, "MetokProxy"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Exception from "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/server/location/MetokProxy;->mServiceWatcher:Lcom/android/server/location/MetokWatcher;

    invoke-virtual {v5}, Lcom/android/server/location/MetokWatcher;->getPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 340
    .end local v1    # "e":Ljava/lang/Exception;
    :goto_0
    return v6

    .line 334
    :catch_1
    move-exception v0

    .line 335
    .local v0, "e":Landroid/os/RemoteException;
    const-string/jumbo v3, "MetokProxy"

    invoke-static {v3, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public getStatusUpdateTime()J
    .locals 8

    .prologue
    const-wide/16 v6, 0x0

    .line 345
    invoke-direct {p0}, Lcom/android/server/location/MetokProxy;->getService()Lcom/android/internal/location/ILocationProvider;

    move-result-object v2

    .line 346
    .local v2, "service":Lcom/android/internal/location/ILocationProvider;
    if-nez v2, :cond_0

    return-wide v6

    .line 349
    :cond_0
    :try_start_0
    invoke-interface {v2}, Lcom/android/internal/location/ILocationProvider;->getStatusUpdateTime()J
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v4

    return-wide v4

    .line 352
    :catch_0
    move-exception v1

    .line 354
    .local v1, "e":Ljava/lang/Exception;
    const-string/jumbo v3, "MetokProxy"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Exception from "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/server/location/MetokProxy;->mServiceWatcher:Lcom/android/server/location/MetokWatcher;

    invoke-virtual {v5}, Lcom/android/server/location/MetokWatcher;->getPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 356
    .end local v1    # "e":Ljava/lang/Exception;
    :goto_0
    return-wide v6

    .line 350
    :catch_1
    move-exception v0

    .line 351
    .local v0, "e":Landroid/os/RemoteException;
    const-string/jumbo v3, "MetokProxy"

    invoke-static {v3, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public isEnabled()Z
    .locals 2

    .prologue
    .line 248
    iget-object v0, p0, Lcom/android/server/location/MetokProxy;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 249
    :try_start_0
    iget-boolean v1, p0, Lcom/android/server/location/MetokProxy;->mEnabled:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return v1

    .line 248
    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public locationSanitized(Landroid/location/Location;)Landroid/location/Location;
    .locals 3
    .param p1, "location"    # Landroid/location/Location;

    .prologue
    const/4 v1, 0x0

    .line 116
    if-nez p1, :cond_0

    .line 117
    return-object v1

    .line 120
    :cond_0
    invoke-virtual {p1}, Landroid/location/Location;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    .line 121
    .local v0, "extras":Landroid/os/Bundle;
    if-eqz v0, :cond_2

    const-string/jumbo v1, "metok_magic"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 122
    sget-boolean v1, Lcom/android/server/location/MetokProxy;->D:Z

    if-eqz v1, :cond_1

    const-string/jumbo v1, "MetokProxy"

    const-string/jumbo v2, "location from metok"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 123
    :cond_1
    return-object p1

    .line 127
    :cond_2
    return-object p1
.end method

.method public sendExtraCommand(Ljava/lang/String;Landroid/os/Bundle;)Z
    .locals 7
    .param p1, "command"    # Ljava/lang/String;
    .param p2, "extras"    # Landroid/os/Bundle;

    .prologue
    const/4 v6, 0x0

    .line 361
    invoke-direct {p0}, Lcom/android/server/location/MetokProxy;->getService()Lcom/android/internal/location/ILocationProvider;

    move-result-object v2

    .line 362
    .local v2, "service":Lcom/android/internal/location/ILocationProvider;
    if-nez v2, :cond_0

    return v6

    .line 365
    :cond_0
    :try_start_0
    invoke-interface {v2, p1, p2}, Lcom/android/internal/location/ILocationProvider;->sendExtraCommand(Ljava/lang/String;Landroid/os/Bundle;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    return v3

    .line 368
    :catch_0
    move-exception v1

    .line 370
    .local v1, "e":Ljava/lang/Exception;
    const-string/jumbo v3, "MetokProxy"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Exception from "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/server/location/MetokProxy;->mServiceWatcher:Lcom/android/server/location/MetokWatcher;

    invoke-virtual {v5}, Lcom/android/server/location/MetokWatcher;->getPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 372
    .end local v1    # "e":Ljava/lang/Exception;
    :goto_0
    return v6

    .line 366
    :catch_1
    move-exception v0

    .line 367
    .local v0, "e":Landroid/os/RemoteException;
    const-string/jumbo v3, "MetokProxy"

    invoke-static {v3, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public setFusedProvider(Lcom/android/server/location/LocationProviderInterface;)V
    .locals 0
    .param p1, "fused"    # Lcom/android/server/location/LocationProviderInterface;

    .prologue
    .line 81
    iput-object p1, p0, Lcom/android/server/location/MetokProxy;->mFused:Lcom/android/server/location/LocationProviderInterface;

    .line 80
    return-void
.end method

.method public setGpsProvider(Lcom/android/server/location/LocationProviderInterface;)V
    .locals 0
    .param p1, "gps"    # Lcom/android/server/location/LocationProviderInterface;

    .prologue
    .line 77
    iput-object p1, p0, Lcom/android/server/location/MetokProxy;->mGps:Lcom/android/server/location/LocationProviderInterface;

    .line 76
    return-void
.end method

.method public setNetworkProvider(Lcom/android/server/location/LocationProviderInterface;)V
    .locals 0
    .param p1, "nlp"    # Lcom/android/server/location/LocationProviderInterface;

    .prologue
    .line 73
    iput-object p1, p0, Lcom/android/server/location/MetokProxy;->mNlp:Lcom/android/server/location/LocationProviderInterface;

    .line 72
    return-void
.end method

.method public setRequest(Lcom/android/internal/location/ProviderRequest;Landroid/os/WorkSource;)V
    .locals 7
    .param p1, "request"    # Lcom/android/internal/location/ProviderRequest;
    .param p2, "source"    # Landroid/os/WorkSource;

    .prologue
    .line 273
    iget-object v5, p0, Lcom/android/server/location/MetokProxy;->mLock:Ljava/lang/Object;

    monitor-enter v5

    .line 274
    :try_start_0
    iput-object p1, p0, Lcom/android/server/location/MetokProxy;->mRequest:Lcom/android/internal/location/ProviderRequest;

    .line 275
    iput-object p2, p0, Lcom/android/server/location/MetokProxy;->mWorksource:Landroid/os/WorkSource;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v5

    .line 277
    invoke-direct {p0}, Lcom/android/server/location/MetokProxy;->getService()Lcom/android/internal/location/ILocationProvider;

    move-result-object v3

    .line 278
    .local v3, "service":Lcom/android/internal/location/ILocationProvider;
    if-nez v3, :cond_0

    .line 279
    invoke-direct {p0, p1, p2}, Lcom/android/server/location/MetokProxy;->setRequestToOtherProvider(Lcom/android/internal/location/ProviderRequest;Landroid/os/WorkSource;)V

    .line 280
    return-void

    .line 273
    .end local v3    # "service":Lcom/android/internal/location/ILocationProvider;
    :catchall_0
    move-exception v4

    monitor-exit v5

    throw v4

    .line 283
    .restart local v3    # "service":Lcom/android/internal/location/ILocationProvider;
    :cond_0
    const/4 v2, 0x0

    .line 285
    .local v2, "exception":Z
    :try_start_1
    invoke-interface {v3, p1, p2}, Lcom/android/internal/location/ILocationProvider;->setRequest(Lcom/android/internal/location/ProviderRequest;Landroid/os/WorkSource;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 295
    :goto_0
    if-eqz v2, :cond_1

    .line 296
    invoke-direct {p0, p1, p2}, Lcom/android/server/location/MetokProxy;->setRequestToOtherProvider(Lcom/android/internal/location/ProviderRequest;Landroid/os/WorkSource;)V

    .line 272
    :cond_1
    return-void

    .line 289
    :catch_0
    move-exception v1

    .line 291
    .local v1, "e":Ljava/lang/Exception;
    const-string/jumbo v4, "MetokProxy"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "Exception from "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/android/server/location/MetokProxy;->mServiceWatcher:Lcom/android/server/location/MetokWatcher;

    invoke-virtual {v6}, Lcom/android/server/location/MetokWatcher;->getPackageName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 292
    const/4 v2, 0x1

    goto :goto_0

    .line 286
    .end local v1    # "e":Ljava/lang/Exception;
    :catch_1
    move-exception v0

    .line 287
    .local v0, "e":Landroid/os/RemoteException;
    const-string/jumbo v4, "MetokProxy"

    invoke-static {v4, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 288
    const/4 v2, 0x1

    goto :goto_0
.end method

.method public updateStatus(Z)V
    .locals 1
    .param p1, "enable"    # Z

    .prologue
    .line 131
    if-eqz p1, :cond_0

    iget-boolean v0, p0, Lcom/android/server/location/MetokProxy;->mEnabled:Z

    if-eqz v0, :cond_2

    .line 133
    :cond_0
    if-nez p1, :cond_1

    iget-boolean v0, p0, Lcom/android/server/location/MetokProxy;->mEnabled:Z

    if-eqz v0, :cond_1

    .line 134
    invoke-virtual {p0}, Lcom/android/server/location/MetokProxy;->disable()V

    .line 130
    :cond_1
    :goto_0
    return-void

    .line 132
    :cond_2
    invoke-virtual {p0}, Lcom/android/server/location/MetokProxy;->enable()V

    goto :goto_0
.end method
