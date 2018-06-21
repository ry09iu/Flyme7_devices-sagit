.class public Landroid/service/securespaces/SpaceEncryptionManager;
.super Ljava/lang/Object;
.source "SpaceEncryptionManager.java"


# static fields
.field public static final SERVICE_NAME:Ljava/lang/String; = "spaceencryption"

.field private static final TAG:Ljava/lang/String; = "SpaceEncryptionManager"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static ecryptfsMount(IILjava/lang/String;)I
    .locals 4
    .param p0, "userId"    # I
    .param p1, "authId"    # I
    .param p2, "authData"    # Ljava/lang/String;

    .prologue
    .line 54
    const-string/jumbo v2, "spaceencryption"

    invoke-static {v2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    .line 53
    invoke-static {v2}, Landroid/service/securespaces/ISpaceEncryptionService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/service/securespaces/ISpaceEncryptionService;

    move-result-object v1

    .line 56
    .local v1, "service":Landroid/service/securespaces/ISpaceEncryptionService;
    :try_start_0
    invoke-interface {v1, p0, p1, p2}, Landroid/service/securespaces/ISpaceEncryptionService;->ecryptfsMount(IILjava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    return v2

    .line 57
    :catch_0
    move-exception v0

    .line 58
    .local v0, "re":Landroid/os/RemoteException;
    const-string/jumbo v2, "SpaceEncryptionManager"

    const-string/jumbo v3, "Error connecting to SpaceEncryptionService"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 59
    const/4 v2, -0x1

    return v2
.end method

.method public static ecryptfsMountRemovable(I)V
    .locals 4
    .param p0, "userId"    # I

    .prologue
    .line 34
    const-string/jumbo v2, "spaceencryption"

    invoke-static {v2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    .line 33
    invoke-static {v2}, Landroid/service/securespaces/ISpaceEncryptionService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/service/securespaces/ISpaceEncryptionService;

    move-result-object v1

    .line 36
    .local v1, "service":Landroid/service/securespaces/ISpaceEncryptionService;
    :try_start_0
    invoke-interface {v1, p0}, Landroid/service/securespaces/ISpaceEncryptionService;->ecryptfsMountRemovable(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 32
    :goto_0
    return-void

    .line 37
    :catch_0
    move-exception v0

    .line 38
    .local v0, "re":Landroid/os/RemoteException;
    const-string/jumbo v2, "SpaceEncryptionManager"

    const-string/jumbo v3, "Error connecting to SpaceEncryptionService"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public static ecryptfsOverwrite(I)I
    .locals 4
    .param p0, "userId"    # I

    .prologue
    .line 87
    const-string/jumbo v2, "spaceencryption"

    invoke-static {v2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    .line 86
    invoke-static {v2}, Landroid/service/securespaces/ISpaceEncryptionService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/service/securespaces/ISpaceEncryptionService;

    move-result-object v1

    .line 89
    .local v1, "service":Landroid/service/securespaces/ISpaceEncryptionService;
    :try_start_0
    invoke-interface {v1, p0}, Landroid/service/securespaces/ISpaceEncryptionService;->ecryptfsOverwrite(I)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    return v2

    .line 90
    :catch_0
    move-exception v0

    .line 91
    .local v0, "re":Landroid/os/RemoteException;
    const-string/jumbo v2, "SpaceEncryptionManager"

    const-string/jumbo v3, "Error connecting to SpaceEncryptionService"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 92
    const/4 v2, -0x1

    return v2
.end method

.method public static ecryptfsUnmount(I)I
    .locals 4
    .param p0, "userId"    # I

    .prologue
    .line 65
    const-string/jumbo v2, "spaceencryption"

    invoke-static {v2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    .line 64
    invoke-static {v2}, Landroid/service/securespaces/ISpaceEncryptionService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/service/securespaces/ISpaceEncryptionService;

    move-result-object v1

    .line 67
    .local v1, "service":Landroid/service/securespaces/ISpaceEncryptionService;
    :try_start_0
    invoke-interface {v1, p0}, Landroid/service/securespaces/ISpaceEncryptionService;->ecryptfsUnmount(I)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    return v2

    .line 68
    :catch_0
    move-exception v0

    .line 69
    .local v0, "re":Landroid/os/RemoteException;
    const-string/jumbo v2, "SpaceEncryptionManager"

    const-string/jumbo v3, "Error connecting to SpaceEncryptionService"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 70
    const/4 v2, -0x1

    return v2
.end method

.method public static ecryptfsUnmountRemovable(I)V
    .locals 4
    .param p0, "userId"    # I

    .prologue
    .line 44
    const-string/jumbo v2, "spaceencryption"

    invoke-static {v2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    .line 43
    invoke-static {v2}, Landroid/service/securespaces/ISpaceEncryptionService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/service/securespaces/ISpaceEncryptionService;

    move-result-object v1

    .line 46
    .local v1, "service":Landroid/service/securespaces/ISpaceEncryptionService;
    :try_start_0
    invoke-interface {v1, p0}, Landroid/service/securespaces/ISpaceEncryptionService;->ecryptfsUnmountRemovable(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 42
    :goto_0
    return-void

    .line 47
    :catch_0
    move-exception v0

    .line 48
    .local v0, "re":Landroid/os/RemoteException;
    const-string/jumbo v2, "SpaceEncryptionManager"

    const-string/jumbo v3, "Error connecting to SpaceEncryptionService"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public static ecryptfsUpdate(IILjava/lang/String;)I
    .locals 4
    .param p0, "userId"    # I
    .param p1, "authId"    # I
    .param p2, "authData"    # Ljava/lang/String;

    .prologue
    .line 76
    const-string/jumbo v2, "spaceencryption"

    invoke-static {v2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    .line 75
    invoke-static {v2}, Landroid/service/securespaces/ISpaceEncryptionService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/service/securespaces/ISpaceEncryptionService;

    move-result-object v1

    .line 78
    .local v1, "service":Landroid/service/securespaces/ISpaceEncryptionService;
    :try_start_0
    invoke-interface {v1, p0, p1, p2}, Landroid/service/securespaces/ISpaceEncryptionService;->ecryptfsUpdate(IILjava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    return v2

    .line 79
    :catch_0
    move-exception v0

    .line 80
    .local v0, "re":Landroid/os/RemoteException;
    const-string/jumbo v2, "SpaceEncryptionManager"

    const-string/jumbo v3, "Error connecting to SpaceEncryptionService"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 81
    const/4 v2, -0x1

    return v2
.end method

.method public static isAuthProtected(I)Z
    .locals 4
    .param p0, "userId"    # I

    .prologue
    .line 120
    const-string/jumbo v2, "spaceencryption"

    invoke-static {v2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    .line 119
    invoke-static {v2}, Landroid/service/securespaces/ISpaceEncryptionService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/service/securespaces/ISpaceEncryptionService;

    move-result-object v1

    .line 122
    .local v1, "service":Landroid/service/securespaces/ISpaceEncryptionService;
    :try_start_0
    invoke-interface {v1, p0}, Landroid/service/securespaces/ISpaceEncryptionService;->isAuthProtected(I)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    return v2

    .line 123
    :catch_0
    move-exception v0

    .line 124
    .local v0, "re":Landroid/os/RemoteException;
    const-string/jumbo v2, "SpaceEncryptionManager"

    const-string/jumbo v3, "Error connecting to SpaceEncryptionService"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 125
    const/4 v2, 0x0

    return v2
.end method

.method public static isDataDirectoryTmpfs()Z
    .locals 4

    .prologue
    .line 262
    const-string/jumbo v2, "spaceencryption"

    invoke-static {v2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    .line 261
    invoke-static {v2}, Landroid/service/securespaces/ISpaceEncryptionService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/service/securespaces/ISpaceEncryptionService;

    move-result-object v1

    .line 264
    .local v1, "service":Landroid/service/securespaces/ISpaceEncryptionService;
    :try_start_0
    invoke-interface {v1}, Landroid/service/securespaces/ISpaceEncryptionService;->isDataDirectoryTmpfs()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    return v2

    .line 265
    :catch_0
    move-exception v0

    .line 266
    .local v0, "re":Landroid/os/RemoteException;
    const-string/jumbo v2, "SpaceEncryptionManager"

    const-string/jumbo v3, "Error connecting to SpaceEncryptionService"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 267
    const/4 v2, 0x1

    return v2
.end method

.method public static needAirlockUser(I)Z
    .locals 4
    .param p0, "userId"    # I

    .prologue
    .line 131
    const-string/jumbo v2, "spaceencryption"

    invoke-static {v2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    .line 130
    invoke-static {v2}, Landroid/service/securespaces/ISpaceEncryptionService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/service/securespaces/ISpaceEncryptionService;

    move-result-object v1

    .line 133
    .local v1, "service":Landroid/service/securespaces/ISpaceEncryptionService;
    :try_start_0
    invoke-interface {v1, p0}, Landroid/service/securespaces/ISpaceEncryptionService;->needAirlockUser(I)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    return v2

    .line 134
    :catch_0
    move-exception v0

    .line 135
    .local v0, "re":Landroid/os/RemoteException;
    const-string/jumbo v2, "SpaceEncryptionManager"

    const-string/jumbo v3, "Error connecting to SpaceEncryptionService"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 136
    const/4 v2, 0x0

    return v2
.end method

.method public static needsEcryptfsMount(I)Z
    .locals 4
    .param p0, "userId"    # I

    .prologue
    .line 98
    const-string/jumbo v2, "spaceencryption"

    invoke-static {v2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    .line 97
    invoke-static {v2}, Landroid/service/securespaces/ISpaceEncryptionService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/service/securespaces/ISpaceEncryptionService;

    move-result-object v1

    .line 100
    .local v1, "service":Landroid/service/securespaces/ISpaceEncryptionService;
    :try_start_0
    invoke-interface {v1, p0}, Landroid/service/securespaces/ISpaceEncryptionService;->needsEcryptfsMount(I)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    return v2

    .line 101
    :catch_0
    move-exception v0

    .line 102
    .local v0, "re":Landroid/os/RemoteException;
    const-string/jumbo v2, "SpaceEncryptionManager"

    const-string/jumbo v3, "Error connecting to SpaceEncryptionService"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 103
    const/4 v2, 0x0

    return v2
.end method

.method public static onWipeUserDataCompleted(I)V
    .locals 4
    .param p0, "userId"    # I

    .prologue
    .line 283
    const-string/jumbo v2, "spaceencryption"

    invoke-static {v2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    .line 282
    invoke-static {v2}, Landroid/service/securespaces/ISpaceEncryptionService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/service/securespaces/ISpaceEncryptionService;

    move-result-object v1

    .line 285
    .local v1, "service":Landroid/service/securespaces/ISpaceEncryptionService;
    :try_start_0
    invoke-interface {v1, p0}, Landroid/service/securespaces/ISpaceEncryptionService;->onWipeUserDataCompleted(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 281
    :goto_0
    return-void

    .line 286
    :catch_0
    move-exception v0

    .line 287
    .local v0, "re":Landroid/os/RemoteException;
    const-string/jumbo v2, "SpaceEncryptionManager"

    const-string/jumbo v3, "Error connecting to SpaceEncryptionService"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public static processEncryption(Landroid/content/pm/UserInfo;)Z
    .locals 4
    .param p0, "userInfo"    # Landroid/content/pm/UserInfo;

    .prologue
    .line 109
    const-string/jumbo v2, "spaceencryption"

    invoke-static {v2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    .line 108
    invoke-static {v2}, Landroid/service/securespaces/ISpaceEncryptionService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/service/securespaces/ISpaceEncryptionService;

    move-result-object v1

    .line 111
    .local v1, "service":Landroid/service/securespaces/ISpaceEncryptionService;
    :try_start_0
    invoke-interface {v1, p0}, Landroid/service/securespaces/ISpaceEncryptionService;->processEncryption(Landroid/content/pm/UserInfo;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    return v2

    .line 112
    :catch_0
    move-exception v0

    .line 113
    .local v0, "re":Landroid/os/RemoteException;
    const-string/jumbo v2, "SpaceEncryptionManager"

    const-string/jumbo v3, "Error connecting to SpaceEncryptionService"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 114
    const/4 v2, 0x0

    return v2
.end method

.method public static setAirlockWallpaperToUser(I)V
    .locals 4
    .param p0, "userIdOrig"    # I

    .prologue
    .line 153
    const-string/jumbo v2, "spaceencryption"

    invoke-static {v2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    .line 152
    invoke-static {v2}, Landroid/service/securespaces/ISpaceEncryptionService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/service/securespaces/ISpaceEncryptionService;

    move-result-object v1

    .line 155
    .local v1, "service":Landroid/service/securespaces/ISpaceEncryptionService;
    :try_start_0
    invoke-interface {v1, p0}, Landroid/service/securespaces/ISpaceEncryptionService;->setAirlockWallpaperToUser(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 151
    :goto_0
    return-void

    .line 156
    :catch_0
    move-exception v0

    .line 157
    .local v0, "re":Landroid/os/RemoteException;
    const-string/jumbo v2, "SpaceEncryptionManager"

    const-string/jumbo v3, "Error connecting to SpaceEncryptionService"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public static setOpAddExcludeFromWipe(Ljava/lang/String;ILjava/lang/String;)Z
    .locals 4
    .param p0, "uuid"    # Ljava/lang/String;
    .param p1, "userId"    # I
    .param p2, "packageName"    # Ljava/lang/String;

    .prologue
    .line 240
    const-string/jumbo v2, "spaceencryption"

    invoke-static {v2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    .line 239
    invoke-static {v2}, Landroid/service/securespaces/ISpaceEncryptionService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/service/securespaces/ISpaceEncryptionService;

    move-result-object v1

    .line 242
    .local v1, "service":Landroid/service/securespaces/ISpaceEncryptionService;
    :try_start_0
    invoke-interface {v1, p0, p1, p2}, Landroid/service/securespaces/ISpaceEncryptionService;->setOpAddExcludeFromWipe(Ljava/lang/String;ILjava/lang/String;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    return v2

    .line 243
    :catch_0
    move-exception v0

    .line 244
    .local v0, "re":Landroid/os/RemoteException;
    const-string/jumbo v2, "SpaceEncryptionManager"

    const-string/jumbo v3, "Error connecting to SpaceEncryptionService"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 245
    const/4 v2, 0x0

    return v2
.end method

.method public static setOpClearUserData(Ljava/lang/String;ILjava/lang/String;)Z
    .locals 4
    .param p0, "uuid"    # Ljava/lang/String;
    .param p1, "userId"    # I
    .param p2, "packageName"    # Ljava/lang/String;

    .prologue
    .line 229
    const-string/jumbo v2, "spaceencryption"

    invoke-static {v2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    .line 228
    invoke-static {v2}, Landroid/service/securespaces/ISpaceEncryptionService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/service/securespaces/ISpaceEncryptionService;

    move-result-object v1

    .line 231
    .local v1, "service":Landroid/service/securespaces/ISpaceEncryptionService;
    :try_start_0
    invoke-interface {v1, p0, p1, p2}, Landroid/service/securespaces/ISpaceEncryptionService;->setOpClearUserData(Ljava/lang/String;ILjava/lang/String;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    return v2

    .line 232
    :catch_0
    move-exception v0

    .line 233
    .local v0, "re":Landroid/os/RemoteException;
    const-string/jumbo v2, "SpaceEncryptionManager"

    const-string/jumbo v3, "Error connecting to SpaceEncryptionService"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 234
    const/4 v2, 0x0

    return v2
.end method

.method public static setOpCreateUserConfig(I)Z
    .locals 4
    .param p0, "userId"    # I

    .prologue
    .line 218
    const-string/jumbo v2, "spaceencryption"

    invoke-static {v2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    .line 217
    invoke-static {v2}, Landroid/service/securespaces/ISpaceEncryptionService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/service/securespaces/ISpaceEncryptionService;

    move-result-object v1

    .line 220
    .local v1, "service":Landroid/service/securespaces/ISpaceEncryptionService;
    :try_start_0
    invoke-interface {v1, p0}, Landroid/service/securespaces/ISpaceEncryptionService;->setOpCreateUserConfig(I)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    return v2

    .line 221
    :catch_0
    move-exception v0

    .line 222
    .local v0, "re":Landroid/os/RemoteException;
    const-string/jumbo v2, "SpaceEncryptionManager"

    const-string/jumbo v3, "Error connecting to SpaceEncryptionService"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 223
    const/4 v2, 0x0

    return v2
.end method

.method public static setOpCreateUserData(Ljava/lang/String;ILjava/lang/String;ILjava/lang/String;)Z
    .locals 7
    .param p0, "uuid"    # Ljava/lang/String;
    .param p1, "userId"    # I
    .param p2, "packageName"    # Ljava/lang/String;
    .param p3, "uid"    # I
    .param p4, "seinfo"    # Ljava/lang/String;

    .prologue
    .line 163
    const-string/jumbo v1, "spaceencryption"

    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    .line 162
    invoke-static {v1}, Landroid/service/securespaces/ISpaceEncryptionService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/service/securespaces/ISpaceEncryptionService;

    move-result-object v0

    .local v0, "service":Landroid/service/securespaces/ISpaceEncryptionService;
    move-object v1, p0

    move v2, p1

    move-object v3, p2

    move v4, p3

    move-object v5, p4

    .line 165
    :try_start_0
    invoke-interface/range {v0 .. v5}, Landroid/service/securespaces/ISpaceEncryptionService;->setOpCreateUserData(Ljava/lang/String;ILjava/lang/String;ILjava/lang/String;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    return v1

    .line 166
    :catch_0
    move-exception v6

    .line 167
    .local v6, "re":Landroid/os/RemoteException;
    const-string/jumbo v1, "SpaceEncryptionManager"

    const-string/jumbo v2, "Error connecting to SpaceEncryptionService"

    invoke-static {v1, v2, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 168
    const/4 v1, 0x0

    return v1
.end method

.method public static setOpDeleteCacheFiles(Ljava/lang/String;ILjava/lang/String;)Z
    .locals 4
    .param p0, "uuid"    # Ljava/lang/String;
    .param p1, "userId"    # I
    .param p2, "packageName"    # Ljava/lang/String;

    .prologue
    .line 196
    const-string/jumbo v2, "spaceencryption"

    invoke-static {v2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    .line 195
    invoke-static {v2}, Landroid/service/securespaces/ISpaceEncryptionService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/service/securespaces/ISpaceEncryptionService;

    move-result-object v1

    .line 198
    .local v1, "service":Landroid/service/securespaces/ISpaceEncryptionService;
    :try_start_0
    invoke-interface {v1, p0, p1, p2}, Landroid/service/securespaces/ISpaceEncryptionService;->setOpDeleteCacheFiles(Ljava/lang/String;ILjava/lang/String;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    return v2

    .line 199
    :catch_0
    move-exception v0

    .line 200
    .local v0, "re":Landroid/os/RemoteException;
    const-string/jumbo v2, "SpaceEncryptionManager"

    const-string/jumbo v3, "Error connecting to SpaceEncryptionService"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 201
    const/4 v2, 0x0

    return v2
.end method

.method public static setOpDeleteCodeCacheFiles(Ljava/lang/String;ILjava/lang/String;)Z
    .locals 4
    .param p0, "uuid"    # Ljava/lang/String;
    .param p1, "userId"    # I
    .param p2, "packageName"    # Ljava/lang/String;

    .prologue
    .line 207
    const-string/jumbo v2, "spaceencryption"

    invoke-static {v2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    .line 206
    invoke-static {v2}, Landroid/service/securespaces/ISpaceEncryptionService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/service/securespaces/ISpaceEncryptionService;

    move-result-object v1

    .line 209
    .local v1, "service":Landroid/service/securespaces/ISpaceEncryptionService;
    :try_start_0
    invoke-interface {v1, p0, p1, p2}, Landroid/service/securespaces/ISpaceEncryptionService;->setOpDeleteCodeCacheFiles(Ljava/lang/String;ILjava/lang/String;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    return v2

    .line 210
    :catch_0
    move-exception v0

    .line 211
    .local v0, "re":Landroid/os/RemoteException;
    const-string/jumbo v2, "SpaceEncryptionManager"

    const-string/jumbo v3, "Error connecting to SpaceEncryptionService"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 212
    const/4 v2, 0x0

    return v2
.end method

.method public static setOpDestroyAppData(Ljava/lang/String;Ljava/lang/String;IIJ)Z
    .locals 8
    .param p0, "uuid"    # Ljava/lang/String;
    .param p1, "pkgname"    # Ljava/lang/String;
    .param p2, "userid"    # I
    .param p3, "flags"    # I
    .param p4, "ceDataInode"    # J

    .prologue
    .line 251
    const-string/jumbo v2, "spaceencryption"

    invoke-static {v2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    .line 250
    invoke-static {v2}, Landroid/service/securespaces/ISpaceEncryptionService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/service/securespaces/ISpaceEncryptionService;

    move-result-object v1

    .local v1, "service":Landroid/service/securespaces/ISpaceEncryptionService;
    move-object v2, p0

    move-object v3, p1

    move v4, p2

    move v5, p3

    move-wide v6, p4

    .line 253
    :try_start_0
    invoke-interface/range {v1 .. v7}, Landroid/service/securespaces/ISpaceEncryptionService;->setOpDestroyAppData(Ljava/lang/String;Ljava/lang/String;IIJ)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    return v2

    .line 254
    :catch_0
    move-exception v0

    .line 255
    .local v0, "re":Landroid/os/RemoteException;
    const-string/jumbo v2, "SpaceEncryptionManager"

    const-string/jumbo v3, "Error connecting to SpaceEncryptionService"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 256
    const/4 v2, 0x0

    return v2
.end method

.method public static setOpLinkNativeLibraryDir(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)Z
    .locals 4
    .param p0, "uuid"    # Ljava/lang/String;
    .param p1, "userId"    # I
    .param p2, "dataPath"    # Ljava/lang/String;
    .param p3, "newNativePath32"    # Ljava/lang/String;

    .prologue
    .line 185
    const-string/jumbo v2, "spaceencryption"

    invoke-static {v2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    .line 184
    invoke-static {v2}, Landroid/service/securespaces/ISpaceEncryptionService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/service/securespaces/ISpaceEncryptionService;

    move-result-object v1

    .line 187
    .local v1, "service":Landroid/service/securespaces/ISpaceEncryptionService;
    :try_start_0
    invoke-interface {v1, p0, p1, p2, p3}, Landroid/service/securespaces/ISpaceEncryptionService;->setOpLinkNativeLibraryDir(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    return v2

    .line 188
    :catch_0
    move-exception v0

    .line 189
    .local v0, "re":Landroid/os/RemoteException;
    const-string/jumbo v2, "SpaceEncryptionManager"

    const-string/jumbo v3, "Error connecting to SpaceEncryptionService"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 190
    const/4 v2, 0x0

    return v2
.end method

.method public static setOpRemove(Ljava/lang/String;ILjava/lang/String;)Z
    .locals 4
    .param p0, "uuid"    # Ljava/lang/String;
    .param p1, "userId"    # I
    .param p2, "packageName"    # Ljava/lang/String;

    .prologue
    .line 174
    const-string/jumbo v2, "spaceencryption"

    invoke-static {v2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    .line 173
    invoke-static {v2}, Landroid/service/securespaces/ISpaceEncryptionService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/service/securespaces/ISpaceEncryptionService;

    move-result-object v1

    .line 176
    .local v1, "service":Landroid/service/securespaces/ISpaceEncryptionService;
    :try_start_0
    invoke-interface {v1, p0, p1, p2}, Landroid/service/securespaces/ISpaceEncryptionService;->setOpRemove(Ljava/lang/String;ILjava/lang/String;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    return v2

    .line 177
    :catch_0
    move-exception v0

    .line 178
    .local v0, "re":Landroid/os/RemoteException;
    const-string/jumbo v2, "SpaceEncryptionManager"

    const-string/jumbo v3, "Error connecting to SpaceEncryptionService"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 179
    const/4 v2, 0x0

    return v2
.end method

.method public static switchUser(I)Z
    .locals 4
    .param p0, "userId"    # I

    .prologue
    .line 142
    const-string/jumbo v2, "spaceencryption"

    invoke-static {v2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    .line 141
    invoke-static {v2}, Landroid/service/securespaces/ISpaceEncryptionService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/service/securespaces/ISpaceEncryptionService;

    move-result-object v1

    .line 144
    .local v1, "service":Landroid/service/securespaces/ISpaceEncryptionService;
    :try_start_0
    invoke-interface {v1, p0}, Landroid/service/securespaces/ISpaceEncryptionService;->switchUser(I)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    return v2

    .line 145
    :catch_0
    move-exception v0

    .line 146
    .local v0, "re":Landroid/os/RemoteException;
    const-string/jumbo v2, "SpaceEncryptionManager"

    const-string/jumbo v3, "Error connecting to SpaceEncryptionService"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 147
    const/4 v2, 0x0

    return v2
.end method

.method public static wipeRemovableUserDir(I)V
    .locals 4
    .param p0, "userId"    # I

    .prologue
    .line 273
    const-string/jumbo v2, "spaceencryption"

    invoke-static {v2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    .line 272
    invoke-static {v2}, Landroid/service/securespaces/ISpaceEncryptionService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/service/securespaces/ISpaceEncryptionService;

    move-result-object v1

    .line 275
    .local v1, "service":Landroid/service/securespaces/ISpaceEncryptionService;
    :try_start_0
    invoke-interface {v1, p0}, Landroid/service/securespaces/ISpaceEncryptionService;->wipeRemovableUserDir(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 271
    :goto_0
    return-void

    .line 276
    :catch_0
    move-exception v0

    .line 277
    .local v0, "re":Landroid/os/RemoteException;
    const-string/jumbo v2, "SpaceEncryptionManager"

    const-string/jumbo v3, "Error connecting to SpaceEncryptionService"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method
