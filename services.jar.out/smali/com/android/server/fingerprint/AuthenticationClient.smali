.class public abstract Lcom/android/server/fingerprint/AuthenticationClient;
.super Lcom/android/server/fingerprint/ClientMonitor;
.source "AuthenticationClient.java"


# instance fields
.field private isFidoClient:Z

.field private mFidoIn:Landroid/hardware/fingerprint/FingerprintFidoIn;

.field private mFidoOut:Landroid/hardware/fingerprint/FingerprintFidoOut;

.field private mIsExecutedCancel:Z

.field private mOpId:J


# direct methods
.method public constructor <init>(Landroid/content/Context;JLandroid/os/IBinder;Landroid/hardware/fingerprint/IFingerprintServiceReceiver;IIJZLjava/lang/String;)V
    .locals 12
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "halDeviceId"    # J
    .param p4, "token"    # Landroid/os/IBinder;
    .param p5, "receiver"    # Landroid/hardware/fingerprint/IFingerprintServiceReceiver;
    .param p6, "targetUserId"    # I
    .param p7, "groupId"    # I
    .param p8, "opId"    # J
    .param p10, "restricted"    # Z
    .param p11, "owner"    # Ljava/lang/String;

    .prologue
    move-object v2, p0

    move-object v3, p1

    move-wide v4, p2

    move-object/from16 v6, p4

    move-object/from16 v7, p5

    move/from16 v8, p6

    move/from16 v9, p7

    move/from16 v10, p10

    move-object/from16 v11, p11

    .line 48
    invoke-direct/range {v2 .. v11}, Lcom/android/server/fingerprint/ClientMonitor;-><init>(Landroid/content/Context;JLandroid/os/IBinder;Landroid/hardware/fingerprint/IFingerprintServiceReceiver;IIZLjava/lang/String;)V

    .line 40
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/android/server/fingerprint/AuthenticationClient;->mIsExecutedCancel:Z

    .line 206
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/android/server/fingerprint/AuthenticationClient;->isFidoClient:Z

    .line 207
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/android/server/fingerprint/AuthenticationClient;->mFidoIn:Landroid/hardware/fingerprint/FingerprintFidoIn;

    .line 208
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/android/server/fingerprint/AuthenticationClient;->mFidoOut:Landroid/hardware/fingerprint/FingerprintFidoOut;

    .line 49
    move-wide/from16 v0, p8

    iput-wide v0, p0, Lcom/android/server/fingerprint/AuthenticationClient;->mOpId:J

    .line 47
    return-void
.end method


# virtual methods
.method public abstract handleFailedAttempt()Z
.end method

.method public onAuthenticated(II)Z
    .locals 12
    .param p1, "fingerId"    # I
    .param p2, "groupId"    # I

    .prologue
    const/4 v1, 0x0

    const/4 v11, 0x1

    .line 54
    const/4 v10, 0x0

    .line 55
    .local v10, "result":Z
    if-eqz p1, :cond_3

    const/4 v6, 0x1

    .line 58
    .local v6, "authenticated":Z
    :goto_0
    invoke-virtual {p0}, Lcom/android/server/fingerprint/AuthenticationClient;->getOwnerString()Ljava/lang/String;

    move-result-object v2

    if-eqz v6, :cond_0

    move v1, v11

    :cond_0
    invoke-static {v2, v1}, Lcom/android/server/fingerprint/FingerprintServiceInjector;->reportFingerEvent(Ljava/lang/String;I)V

    .line 59
    invoke-virtual {p0}, Lcom/android/server/fingerprint/AuthenticationClient;->getReceiver()Landroid/hardware/fingerprint/IFingerprintServiceReceiver;

    move-result-object v9

    .line 60
    .local v9, "receiver":Landroid/hardware/fingerprint/IFingerprintServiceReceiver;
    if-eqz v9, :cond_7

    .line 62
    :try_start_0
    invoke-virtual {p0}, Lcom/android/server/fingerprint/AuthenticationClient;->getContext()Landroid/content/Context;

    move-result-object v1

    const/16 v2, 0xfc

    invoke-static {v1, v2, v6}, Lcom/android/internal/logging/MetricsLogger;->action(Landroid/content/Context;IZ)V

    .line 64
    if-nez v6, :cond_4

    .line 65
    invoke-virtual {p0}, Lcom/android/server/fingerprint/AuthenticationClient;->getHalDeviceId()J

    move-result-wide v2

    invoke-interface {v9, v2, v3}, Landroid/hardware/fingerprint/IFingerprintServiceReceiver;->onAuthenticationFailed(J)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 88
    :goto_1
    if-nez v6, :cond_8

    .line 89
    if-eqz v9, :cond_1

    .line 90
    invoke-virtual {p0}, Lcom/android/server/fingerprint/AuthenticationClient;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/android/server/fingerprint/FingerprintUtils;->vibrateFingerprintError(Landroid/content/Context;)V

    .line 93
    :cond_1
    invoke-virtual {p0}, Lcom/android/server/fingerprint/AuthenticationClient;->handleFailedAttempt()Z

    move-result v8

    .line 95
    .local v8, "inLockoutMode":Z
    if-eqz v8, :cond_2

    .line 101
    :try_start_1
    const-string/jumbo v1, "FingerprintService"

    const-string/jumbo v2, "Forcing lockout (fp driver code should do this!) And daemon.cancel"

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 102
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lcom/android/server/fingerprint/AuthenticationClient;->stop(Z)I

    .line 103
    if-eqz v9, :cond_2

    .line 104
    invoke-virtual {p0}, Lcom/android/server/fingerprint/AuthenticationClient;->getHalDeviceId()J

    move-result-wide v2

    .line 105
    const/4 v1, 0x7

    .line 104
    invoke-interface {v9, v2, v3, v1}, Landroid/hardware/fingerprint/IFingerprintServiceReceiver;->onError(JI)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    .line 112
    :cond_2
    :goto_2
    or-int/2addr v10, v8

    .line 122
    .end local v8    # "inLockoutMode":Z
    .local v10, "result":Z
    :goto_3
    return v10

    .line 55
    .end local v6    # "authenticated":Z
    .end local v9    # "receiver":Landroid/hardware/fingerprint/IFingerprintServiceReceiver;
    .local v10, "result":Z
    :cond_3
    const/4 v6, 0x0

    .restart local v6    # "authenticated":Z
    goto :goto_0

    .line 68
    .restart local v9    # "receiver":Landroid/hardware/fingerprint/IFingerprintServiceReceiver;
    :cond_4
    :try_start_2
    const-string/jumbo v1, "FingerprintService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "onAuthenticated(owner="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Lcom/android/server/fingerprint/AuthenticationClient;->getOwnerString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 69
    const-string/jumbo v3, ", id="

    .line 68
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 69
    const-string/jumbo v3, ", gp="

    .line 68
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 70
    const-string/jumbo v3, ", isFidoClient="

    .line 68
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 70
    iget-boolean v3, p0, Lcom/android/server/fingerprint/AuthenticationClient;->isFidoClient:Z

    .line 68
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 70
    const-string/jumbo v3, ", mFidoOut="

    .line 68
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 70
    iget-object v3, p0, Lcom/android/server/fingerprint/AuthenticationClient;->mFidoOut:Landroid/hardware/fingerprint/FingerprintFidoOut;

    .line 68
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 70
    const-string/jumbo v3, ")"

    .line 68
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 72
    invoke-virtual {p0}, Lcom/android/server/fingerprint/AuthenticationClient;->getIsRestricted()Z

    move-result v1

    if-nez v1, :cond_5

    .line 73
    new-instance v0, Landroid/hardware/fingerprint/Fingerprint;

    const-string/jumbo v1, ""

    invoke-virtual {p0}, Lcom/android/server/fingerprint/AuthenticationClient;->getHalDeviceId()J

    move-result-wide v4

    move v2, p2

    move v3, p1

    invoke-direct/range {v0 .. v5}, Landroid/hardware/fingerprint/Fingerprint;-><init>(Ljava/lang/CharSequence;IIJ)V

    .line 75
    :goto_4
    iget-boolean v1, p0, Lcom/android/server/fingerprint/AuthenticationClient;->isFidoClient:Z

    if-eqz v1, :cond_6

    iget-object v1, p0, Lcom/android/server/fingerprint/AuthenticationClient;->mFidoOut:Landroid/hardware/fingerprint/FingerprintFidoOut;

    if-eqz v1, :cond_6

    .line 76
    invoke-virtual {p0}, Lcom/android/server/fingerprint/AuthenticationClient;->getHalDeviceId()J

    move-result-wide v2

    iget-object v1, p0, Lcom/android/server/fingerprint/AuthenticationClient;->mFidoOut:Landroid/hardware/fingerprint/FingerprintFidoOut;

    invoke-interface {v9, v2, v3, v0, v1}, Landroid/hardware/fingerprint/IFingerprintServiceReceiver;->onAuthenticationFidoSucceeded(JLandroid/hardware/fingerprint/Fingerprint;Landroid/hardware/fingerprint/FingerprintFidoOut;)V
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0

    goto/16 :goto_1

    .line 81
    :catch_0
    move-exception v7

    .line 82
    .local v7, "e":Landroid/os/RemoteException;
    const-string/jumbo v1, "FingerprintService"

    const-string/jumbo v2, "Failed to notify Authenticated:"

    invoke-static {v1, v2, v7}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 83
    const/4 v10, 0x1

    goto/16 :goto_1

    .line 74
    .end local v7    # "e":Landroid/os/RemoteException;
    :cond_5
    const/4 v0, 0x0

    .local v0, "fp":Landroid/hardware/fingerprint/Fingerprint;
    goto :goto_4

    .line 78
    .end local v0    # "fp":Landroid/hardware/fingerprint/Fingerprint;
    :cond_6
    :try_start_3
    invoke-virtual {p0}, Lcom/android/server/fingerprint/AuthenticationClient;->getHalDeviceId()J

    move-result-wide v2

    invoke-virtual {p0}, Lcom/android/server/fingerprint/AuthenticationClient;->getTargetUserId()I

    move-result v1

    invoke-interface {v9, v2, v3, v0, v1}, Landroid/hardware/fingerprint/IFingerprintServiceReceiver;->onAuthenticationSucceeded(JLandroid/hardware/fingerprint/Fingerprint;I)V
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_0

    goto/16 :goto_1

    .line 86
    :cond_7
    const/4 v10, 0x1

    goto/16 :goto_1

    .line 108
    .restart local v8    # "inLockoutMode":Z
    :catch_1
    move-exception v7

    .line 109
    .restart local v7    # "e":Landroid/os/RemoteException;
    const-string/jumbo v1, "FingerprintService"

    const-string/jumbo v2, "Failed to notify lockout:"

    invoke-static {v1, v2, v7}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_2

    .line 119
    .end local v7    # "e":Landroid/os/RemoteException;
    .end local v8    # "inLockoutMode":Z
    :cond_8
    or-int/2addr v10, v11

    .line 120
    .local v10, "result":Z
    invoke-virtual {p0}, Lcom/android/server/fingerprint/AuthenticationClient;->resetFailedAttempts()V

    goto/16 :goto_3
.end method

.method public onEnrollResult(III)Z
    .locals 2
    .param p1, "fingerId"    # I
    .param p2, "groupId"    # I
    .param p3, "rem"    # I

    .prologue
    .line 189
    const-string/jumbo v0, "FingerprintService"

    const-string/jumbo v1, "onEnrollResult() called for authenticate!"

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 190
    const/4 v0, 0x1

    return v0
.end method

.method public onEnumerationResult(II)Z
    .locals 2
    .param p1, "fingerId"    # I
    .param p2, "groupId"    # I

    .prologue
    .line 201
    const-string/jumbo v0, "FingerprintService"

    const-string/jumbo v1, "onEnumerationResult() called for authenticate!"

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 202
    const/4 v0, 0x1

    return v0
.end method

.method public onRemoved(II)Z
    .locals 2
    .param p1, "fingerId"    # I
    .param p2, "groupId"    # I

    .prologue
    .line 195
    const-string/jumbo v0, "FingerprintService"

    const-string/jumbo v1, "onRemoved() called for authenticate!"

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 196
    const/4 v0, 0x1

    return v0
.end method

.method public abstract resetFailedAttempts()V
.end method

.method public setFidoIn(Landroid/hardware/fingerprint/FingerprintFidoIn;)V
    .locals 1
    .param p1, "fidoIn"    # Landroid/hardware/fingerprint/FingerprintFidoIn;

    .prologue
    .line 210
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/fingerprint/AuthenticationClient;->isFidoClient:Z

    .line 211
    iput-object p1, p0, Lcom/android/server/fingerprint/AuthenticationClient;->mFidoIn:Landroid/hardware/fingerprint/FingerprintFidoIn;

    .line 209
    return-void
.end method

.method public setFidoOut(Landroid/hardware/fingerprint/FingerprintFidoOut;)V
    .locals 0
    .param p1, "fidoOut"    # Landroid/hardware/fingerprint/FingerprintFidoOut;

    .prologue
    .line 214
    iput-object p1, p0, Lcom/android/server/fingerprint/AuthenticationClient;->mFidoOut:Landroid/hardware/fingerprint/FingerprintFidoOut;

    .line 213
    return-void
.end method

.method public start()I
    .locals 11

    .prologue
    const/4 v10, 0x3

    const/4 v9, 0x0

    .line 130
    invoke-virtual {p0}, Lcom/android/server/fingerprint/AuthenticationClient;->getFingerprintDaemon()Landroid/hardware/fingerprint/IFingerprintDaemon;

    move-result-object v1

    .line 131
    .local v1, "daemon":Landroid/hardware/fingerprint/IFingerprintDaemon;
    if-nez v1, :cond_0

    .line 132
    const-string/jumbo v2, "FingerprintService"

    const-string/jumbo v3, "start authentication: no fingeprintd!"

    invoke-static {v2, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 133
    return v10

    .line 138
    :cond_0
    :try_start_0
    iget-boolean v2, p0, Lcom/android/server/fingerprint/AuthenticationClient;->isFidoClient:Z

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/android/server/fingerprint/AuthenticationClient;->mFidoIn:Landroid/hardware/fingerprint/FingerprintFidoIn;

    if-eqz v2, :cond_1

    .line 139
    iget-wide v2, p0, Lcom/android/server/fingerprint/AuthenticationClient;->mOpId:J

    invoke-virtual {p0}, Lcom/android/server/fingerprint/AuthenticationClient;->getGroupId()I

    move-result v4

    iget-object v5, p0, Lcom/android/server/fingerprint/AuthenticationClient;->mFidoIn:Landroid/hardware/fingerprint/FingerprintFidoIn;

    invoke-virtual {v5}, Landroid/hardware/fingerprint/FingerprintFidoIn;->getNonce()[B

    move-result-object v5

    iget-object v6, p0, Lcom/android/server/fingerprint/AuthenticationClient;->mFidoIn:Landroid/hardware/fingerprint/FingerprintFidoIn;

    invoke-virtual {v6}, Landroid/hardware/fingerprint/FingerprintFidoIn;->getAAID()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->getBytes()[B

    move-result-object v6

    invoke-interface/range {v1 .. v6}, Landroid/hardware/fingerprint/IFingerprintDaemon;->authenticateFido(JI[B[B)I

    move-result v8

    .line 143
    .local v8, "tempRes":I
    :goto_0
    move v7, v8

    .line 145
    .local v7, "result":I
    if-eqz v7, :cond_2

    .line 146
    const-string/jumbo v2, "FingerprintService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "startAuthentication failed, result="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 147
    invoke-virtual {p0}, Lcom/android/server/fingerprint/AuthenticationClient;->getContext()Landroid/content/Context;

    move-result-object v2

    const-string/jumbo v3, "fingeprintd_auth_start_error"

    invoke-static {v2, v3, v7}, Lcom/android/internal/logging/MetricsLogger;->histogram(Landroid/content/Context;Ljava/lang/String;I)V

    .line 148
    const/4 v2, 0x1

    invoke-virtual {p0, v2}, Lcom/android/server/fingerprint/AuthenticationClient;->onError(I)Z

    .line 149
    return v7

    .line 141
    .end local v7    # "result":I
    .end local v8    # "tempRes":I
    :cond_1
    iget-wide v2, p0, Lcom/android/server/fingerprint/AuthenticationClient;->mOpId:J

    invoke-virtual {p0}, Lcom/android/server/fingerprint/AuthenticationClient;->getGroupId()I

    move-result v4

    invoke-interface {v1, v2, v3, v4}, Landroid/hardware/fingerprint/IFingerprintDaemon;->authenticate(JI)I

    move-result v8

    .restart local v8    # "tempRes":I
    goto :goto_0

    .line 151
    .restart local v7    # "result":I
    :cond_2
    const-string/jumbo v2, "FingerprintService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "client "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p0}, Lcom/android/server/fingerprint/AuthenticationClient;->getOwnerString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " is authenticating..."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 156
    return v9

    .line 152
    .end local v7    # "result":I
    .end local v8    # "tempRes":I
    :catch_0
    move-exception v0

    .line 153
    .local v0, "e":Landroid/os/RemoteException;
    const-string/jumbo v2, "FingerprintService"

    const-string/jumbo v3, "startAuthentication failed"

    invoke-static {v2, v3, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 154
    return v10
.end method

.method public stop(Z)I
    .locals 8
    .param p1, "initiatedByClient"    # Z

    .prologue
    const/4 v7, 0x3

    const/4 v6, 0x0

    .line 162
    iget-boolean v3, p0, Lcom/android/server/fingerprint/AuthenticationClient;->mIsExecutedCancel:Z

    if-eqz v3, :cond_0

    .line 163
    const-string/jumbo v3, "FingerprintService"

    const-string/jumbo v4, "stopAuthentication: is called, so return."

    invoke-static {v3, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 164
    return v6

    .line 166
    :cond_0
    const/4 v3, 0x1

    iput-boolean v3, p0, Lcom/android/server/fingerprint/AuthenticationClient;->mIsExecutedCancel:Z

    .line 168
    invoke-virtual {p0}, Lcom/android/server/fingerprint/AuthenticationClient;->getFingerprintDaemon()Landroid/hardware/fingerprint/IFingerprintDaemon;

    move-result-object v0

    .line 169
    .local v0, "daemon":Landroid/hardware/fingerprint/IFingerprintDaemon;
    if-nez v0, :cond_1

    .line 170
    const-string/jumbo v3, "FingerprintService"

    const-string/jumbo v4, "stopAuthentication: no fingeprintd!"

    invoke-static {v3, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 171
    return v7

    .line 174
    :cond_1
    :try_start_0
    invoke-interface {v0}, Landroid/hardware/fingerprint/IFingerprintDaemon;->cancelAuthentication()I

    move-result v2

    .line 175
    .local v2, "result":I
    if-eqz v2, :cond_2

    .line 176
    const-string/jumbo v3, "FingerprintService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "stopAuthentication failed, result="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 177
    return v2

    .line 179
    :cond_2
    const-string/jumbo v3, "FingerprintService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "client "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p0}, Lcom/android/server/fingerprint/AuthenticationClient;->getOwnerString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " is no longer authenticating"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 184
    return v6

    .line 180
    .end local v2    # "result":I
    :catch_0
    move-exception v1

    .line 181
    .local v1, "e":Landroid/os/RemoteException;
    const-string/jumbo v3, "FingerprintService"

    const-string/jumbo v4, "stopAuthentication failed"

    invoke-static {v3, v4, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 182
    return v7
.end method
