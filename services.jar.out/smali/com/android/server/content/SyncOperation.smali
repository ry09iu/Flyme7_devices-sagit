.class public Lcom/android/server/content/SyncOperation;
.super Ljava/lang/Object;
.source "SyncOperation.java"


# static fields
.field public static final NO_JOB_ID:I = -0x1

.field public static final REASON_ACCOUNTS_UPDATED:I = -0x2

.field public static final REASON_BACKGROUND_DATA_SETTINGS_CHANGED:I = -0x1

.field public static final REASON_IS_SYNCABLE:I = -0x5

.field public static final REASON_MASTER_SYNC_AUTO:I = -0x7

.field private static REASON_NAMES:[Ljava/lang/String; = null

.field public static final REASON_PERIODIC:I = -0x4

.field public static final REASON_SERVICE_CHANGED:I = -0x3

.field public static final REASON_SYNC_AUTO:I = -0x6

.field public static final REASON_USER_START:I = -0x8

.field public static final TAG:Ljava/lang/String; = "SyncManager"


# instance fields
.field public final allowParallelSyncs:Z

.field public expectedRuntime:J

.field public final extras:Landroid/os/Bundle;

.field public final flexMillis:J

.field public final isPeriodic:Z

.field public jobId:I

.field public final key:Ljava/lang/String;

.field public miuiInitPeriodicFixed:Z

.field public final owningPackage:Ljava/lang/String;

.field public final owningUid:I

.field public final periodMillis:J

.field public final reason:I

.field retries:I

.field public final sourcePeriodicId:I

.field public final syncSource:I

.field public final target:Lcom/android/server/content/SyncStorageEngine$EndPoint;

.field public wakeLockName:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 55
    const/16 v0, 0x8

    new-array v0, v0, [Ljava/lang/String;

    .line 56
    const-string/jumbo v1, "DataSettingsChanged"

    const/4 v2, 0x0

    aput-object v1, v0, v2

    .line 57
    const-string/jumbo v1, "AccountsUpdated"

    const/4 v2, 0x1

    aput-object v1, v0, v2

    .line 58
    const-string/jumbo v1, "ServiceChanged"

    const/4 v2, 0x2

    aput-object v1, v0, v2

    .line 59
    const-string/jumbo v1, "Periodic"

    const/4 v2, 0x3

    aput-object v1, v0, v2

    .line 60
    const-string/jumbo v1, "IsSyncable"

    const/4 v2, 0x4

    aput-object v1, v0, v2

    .line 61
    const-string/jumbo v1, "AutoSync"

    const/4 v2, 0x5

    aput-object v1, v0, v2

    .line 62
    const-string/jumbo v1, "MasterSyncAuto"

    const/4 v2, 0x6

    aput-object v1, v0, v2

    .line 63
    const-string/jumbo v1, "UserStart"

    const/4 v2, 0x7

    aput-object v1, v0, v2

    .line 55
    sput-object v0, Lcom/android/server/content/SyncOperation;->REASON_NAMES:[Ljava/lang/String;

    .line 34
    return-void
.end method

.method public constructor <init>(Landroid/accounts/Account;IILjava/lang/String;IILjava/lang/String;Landroid/os/Bundle;Z)V
    .locals 8
    .param p1, "account"    # Landroid/accounts/Account;
    .param p2, "userId"    # I
    .param p3, "owningUid"    # I
    .param p4, "owningPackage"    # Ljava/lang/String;
    .param p5, "reason"    # I
    .param p6, "source"    # I
    .param p7, "provider"    # Ljava/lang/String;
    .param p8, "extras"    # Landroid/os/Bundle;
    .param p9, "allowParallelSyncs"    # Z

    .prologue
    .line 106
    new-instance v1, Lcom/android/server/content/SyncStorageEngine$EndPoint;

    invoke-direct {v1, p1, p7, p2}, Lcom/android/server/content/SyncStorageEngine$EndPoint;-><init>(Landroid/accounts/Account;Ljava/lang/String;I)V

    move-object v0, p0

    move v2, p3

    move-object v3, p4

    move v4, p5

    move v5, p6

    move-object/from16 v6, p8

    move/from16 v7, p9

    invoke-direct/range {v0 .. v7}, Lcom/android/server/content/SyncOperation;-><init>(Lcom/android/server/content/SyncStorageEngine$EndPoint;ILjava/lang/String;IILandroid/os/Bundle;Z)V

    .line 105
    return-void
.end method

.method public constructor <init>(Lcom/android/server/content/SyncOperation;)V
    .locals 2
    .param p1, "other"    # Lcom/android/server/content/SyncOperation;

    .prologue
    .line 152
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 153
    iget-object v0, p1, Lcom/android/server/content/SyncOperation;->target:Lcom/android/server/content/SyncStorageEngine$EndPoint;

    iput-object v0, p0, Lcom/android/server/content/SyncOperation;->target:Lcom/android/server/content/SyncStorageEngine$EndPoint;

    .line 154
    iget v0, p1, Lcom/android/server/content/SyncOperation;->owningUid:I

    iput v0, p0, Lcom/android/server/content/SyncOperation;->owningUid:I

    .line 155
    iget-object v0, p1, Lcom/android/server/content/SyncOperation;->owningPackage:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/server/content/SyncOperation;->owningPackage:Ljava/lang/String;

    .line 156
    iget v0, p1, Lcom/android/server/content/SyncOperation;->reason:I

    iput v0, p0, Lcom/android/server/content/SyncOperation;->reason:I

    .line 157
    iget v0, p1, Lcom/android/server/content/SyncOperation;->syncSource:I

    iput v0, p0, Lcom/android/server/content/SyncOperation;->syncSource:I

    .line 158
    iget-boolean v0, p1, Lcom/android/server/content/SyncOperation;->allowParallelSyncs:Z

    iput-boolean v0, p0, Lcom/android/server/content/SyncOperation;->allowParallelSyncs:Z

    .line 159
    new-instance v0, Landroid/os/Bundle;

    iget-object v1, p1, Lcom/android/server/content/SyncOperation;->extras:Landroid/os/Bundle;

    invoke-direct {v0, v1}, Landroid/os/Bundle;-><init>(Landroid/os/Bundle;)V

    iput-object v0, p0, Lcom/android/server/content/SyncOperation;->extras:Landroid/os/Bundle;

    .line 160
    invoke-virtual {p1}, Lcom/android/server/content/SyncOperation;->wakeLockName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/content/SyncOperation;->wakeLockName:Ljava/lang/String;

    .line 161
    iget-boolean v0, p1, Lcom/android/server/content/SyncOperation;->isPeriodic:Z

    iput-boolean v0, p0, Lcom/android/server/content/SyncOperation;->isPeriodic:Z

    .line 162
    iget v0, p1, Lcom/android/server/content/SyncOperation;->sourcePeriodicId:I

    iput v0, p0, Lcom/android/server/content/SyncOperation;->sourcePeriodicId:I

    .line 163
    iget-wide v0, p1, Lcom/android/server/content/SyncOperation;->periodMillis:J

    iput-wide v0, p0, Lcom/android/server/content/SyncOperation;->periodMillis:J

    .line 164
    iget-wide v0, p1, Lcom/android/server/content/SyncOperation;->flexMillis:J

    iput-wide v0, p0, Lcom/android/server/content/SyncOperation;->flexMillis:J

    .line 165
    iget-object v0, p1, Lcom/android/server/content/SyncOperation;->key:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/server/content/SyncOperation;->key:Ljava/lang/String;

    .line 152
    return-void
.end method

.method public constructor <init>(Lcom/android/server/content/SyncOperation;JJ)V
    .locals 14
    .param p1, "op"    # Lcom/android/server/content/SyncOperation;
    .param p2, "periodMillis"    # J
    .param p4, "flexMillis"    # J

    .prologue
    .line 117
    iget-object v1, p1, Lcom/android/server/content/SyncOperation;->target:Lcom/android/server/content/SyncStorageEngine$EndPoint;

    iget v2, p1, Lcom/android/server/content/SyncOperation;->owningUid:I

    iget-object v3, p1, Lcom/android/server/content/SyncOperation;->owningPackage:Ljava/lang/String;

    iget v4, p1, Lcom/android/server/content/SyncOperation;->reason:I

    iget v5, p1, Lcom/android/server/content/SyncOperation;->syncSource:I

    .line 118
    new-instance v6, Landroid/os/Bundle;

    iget-object v0, p1, Lcom/android/server/content/SyncOperation;->extras:Landroid/os/Bundle;

    invoke-direct {v6, v0}, Landroid/os/Bundle;-><init>(Landroid/os/Bundle;)V

    iget-boolean v7, p1, Lcom/android/server/content/SyncOperation;->allowParallelSyncs:Z

    iget-boolean v8, p1, Lcom/android/server/content/SyncOperation;->isPeriodic:Z

    iget v9, p1, Lcom/android/server/content/SyncOperation;->sourcePeriodicId:I

    move-object v0, p0

    move-wide/from16 v10, p2

    move-wide/from16 v12, p4

    .line 117
    invoke-direct/range {v0 .. v13}, Lcom/android/server/content/SyncOperation;-><init>(Lcom/android/server/content/SyncStorageEngine$EndPoint;ILjava/lang/String;IILandroid/os/Bundle;ZZIJJ)V

    .line 116
    return-void
.end method

.method private constructor <init>(Lcom/android/server/content/SyncStorageEngine$EndPoint;ILjava/lang/String;IILandroid/os/Bundle;Z)V
    .locals 14
    .param p1, "info"    # Lcom/android/server/content/SyncStorageEngine$EndPoint;
    .param p2, "owningUid"    # I
    .param p3, "owningPackage"    # Ljava/lang/String;
    .param p4, "reason"    # I
    .param p5, "source"    # I
    .param p6, "extras"    # Landroid/os/Bundle;
    .param p7, "allowParallelSyncs"    # Z

    .prologue
    .line 113
    const-wide/16 v10, 0x0

    const-wide/16 v12, 0x0

    .line 112
    const/4 v8, 0x0

    .line 113
    const/4 v9, -0x1

    move-object v0, p0

    move-object v1, p1

    move/from16 v2, p2

    move-object/from16 v3, p3

    move/from16 v4, p4

    move/from16 v5, p5

    move-object/from16 v6, p6

    move/from16 v7, p7

    .line 112
    invoke-direct/range {v0 .. v13}, Lcom/android/server/content/SyncOperation;-><init>(Lcom/android/server/content/SyncStorageEngine$EndPoint;ILjava/lang/String;IILandroid/os/Bundle;ZZIJJ)V

    .line 111
    return-void
.end method

.method public constructor <init>(Lcom/android/server/content/SyncStorageEngine$EndPoint;ILjava/lang/String;IILandroid/os/Bundle;ZZIJJ)V
    .locals 2
    .param p1, "info"    # Lcom/android/server/content/SyncStorageEngine$EndPoint;
    .param p2, "owningUid"    # I
    .param p3, "owningPackage"    # Ljava/lang/String;
    .param p4, "reason"    # I
    .param p5, "source"    # I
    .param p6, "extras"    # Landroid/os/Bundle;
    .param p7, "allowParallelSyncs"    # Z
    .param p8, "isPeriodic"    # Z
    .param p9, "sourcePeriodicId"    # I
    .param p10, "periodMillis"    # J
    .param p12, "flexMillis"    # J

    .prologue
    .line 122
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 126
    iput-object p1, p0, Lcom/android/server/content/SyncOperation;->target:Lcom/android/server/content/SyncStorageEngine$EndPoint;

    .line 127
    iput p2, p0, Lcom/android/server/content/SyncOperation;->owningUid:I

    .line 128
    iput-object p3, p0, Lcom/android/server/content/SyncOperation;->owningPackage:Ljava/lang/String;

    .line 129
    iput p4, p0, Lcom/android/server/content/SyncOperation;->reason:I

    .line 130
    iput p5, p0, Lcom/android/server/content/SyncOperation;->syncSource:I

    .line 131
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0, p6}, Landroid/os/Bundle;-><init>(Landroid/os/Bundle;)V

    iput-object v0, p0, Lcom/android/server/content/SyncOperation;->extras:Landroid/os/Bundle;

    .line 132
    iput-boolean p7, p0, Lcom/android/server/content/SyncOperation;->allowParallelSyncs:Z

    .line 133
    iput-boolean p8, p0, Lcom/android/server/content/SyncOperation;->isPeriodic:Z

    .line 134
    iput p9, p0, Lcom/android/server/content/SyncOperation;->sourcePeriodicId:I

    .line 135
    iput-wide p10, p0, Lcom/android/server/content/SyncOperation;->periodMillis:J

    .line 136
    iput-wide p12, p0, Lcom/android/server/content/SyncOperation;->flexMillis:J

    .line 137
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/server/content/SyncOperation;->jobId:I

    .line 138
    invoke-direct {p0}, Lcom/android/server/content/SyncOperation;->toKey()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/content/SyncOperation;->key:Ljava/lang/String;

    .line 125
    return-void
.end method

.method private static extrasToStringBuilder(Landroid/os/Bundle;Ljava/lang/StringBuilder;)V
    .locals 4
    .param p0, "bundle"    # Landroid/os/Bundle;
    .param p1, "sb"    # Ljava/lang/StringBuilder;

    .prologue
    .line 449
    const-string/jumbo v2, "["

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 450
    invoke-virtual {p0}, Landroid/os/Bundle;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "key$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 451
    .local v0, "key":Ljava/lang/String;
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0, v0}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 453
    .end local v0    # "key":Ljava/lang/String;
    :cond_0
    const-string/jumbo v2, "]"

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 448
    return-void
.end method

.method static maybeCreateFromJobExtras(Landroid/os/PersistableBundle;)Lcom/android/server/content/SyncOperation;
    .locals 30
    .param p0, "jobExtras"    # Landroid/os/PersistableBundle;

    .prologue
    .line 256
    const-string/jumbo v28, "SyncManagerJob"

    const/16 v29, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v28

    move/from16 v2, v29

    invoke-virtual {v0, v1, v2}, Landroid/os/PersistableBundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v28

    if-nez v28, :cond_0

    .line 257
    const/16 v28, 0x0

    return-object v28

    .line 260
    :cond_0
    const-string/jumbo v28, "accountName"

    move-object/from16 v0, p0

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Landroid/os/PersistableBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v19

    .line 261
    .local v19, "accountName":Ljava/lang/String;
    const-string/jumbo v28, "accountType"

    move-object/from16 v0, p0

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Landroid/os/PersistableBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v20

    .line 262
    .local v20, "accountType":Ljava/lang/String;
    const-string/jumbo v28, "provider"

    move-object/from16 v0, p0

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Landroid/os/PersistableBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v25

    .line 263
    .local v25, "provider":Ljava/lang/String;
    const-string/jumbo v28, "userId"

    const v29, 0x7fffffff

    move-object/from16 v0, p0

    move-object/from16 v1, v28

    move/from16 v2, v29

    invoke-virtual {v0, v1, v2}, Landroid/os/PersistableBundle;->getInt(Ljava/lang/String;I)I

    move-result v27

    .line 264
    .local v27, "userId":I
    const-string/jumbo v28, "owningUid"

    move-object/from16 v0, p0

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Landroid/os/PersistableBundle;->getInt(Ljava/lang/String;)I

    move-result v6

    .line 265
    .local v6, "owningUid":I
    const-string/jumbo v28, "owningPackage"

    move-object/from16 v0, p0

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Landroid/os/PersistableBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 266
    .local v7, "owningPackage":Ljava/lang/String;
    const-string/jumbo v28, "reason"

    const v29, 0x7fffffff

    move-object/from16 v0, p0

    move-object/from16 v1, v28

    move/from16 v2, v29

    invoke-virtual {v0, v1, v2}, Landroid/os/PersistableBundle;->getInt(Ljava/lang/String;I)I

    move-result v8

    .line 267
    .local v8, "reason":I
    const-string/jumbo v28, "source"

    const v29, 0x7fffffff

    move-object/from16 v0, p0

    move-object/from16 v1, v28

    move/from16 v2, v29

    invoke-virtual {v0, v1, v2}, Landroid/os/PersistableBundle;->getInt(Ljava/lang/String;I)I

    move-result v9

    .line 268
    .local v9, "source":I
    const-string/jumbo v28, "allowParallelSyncs"

    const/16 v29, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v28

    move/from16 v2, v29

    invoke-virtual {v0, v1, v2}, Landroid/os/PersistableBundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v11

    .line 269
    .local v11, "allowParallelSyncs":Z
    const-string/jumbo v28, "isPeriodic"

    const/16 v29, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v28

    move/from16 v2, v29

    invoke-virtual {v0, v1, v2}, Landroid/os/PersistableBundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v12

    .line 270
    .local v12, "isPeriodic":Z
    const-string/jumbo v28, "sourcePeriodicId"

    const/16 v29, -0x1

    move-object/from16 v0, p0

    move-object/from16 v1, v28

    move/from16 v2, v29

    invoke-virtual {v0, v1, v2}, Landroid/os/PersistableBundle;->getInt(Ljava/lang/String;I)I

    move-result v13

    .line 271
    .local v13, "initiatedBy":I
    const-string/jumbo v28, "periodMillis"

    move-object/from16 v0, p0

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Landroid/os/PersistableBundle;->getLong(Ljava/lang/String;)J

    move-result-wide v14

    .line 272
    .local v14, "periodMillis":J
    const-string/jumbo v28, "flexMillis"

    move-object/from16 v0, p0

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Landroid/os/PersistableBundle;->getLong(Ljava/lang/String;)J

    move-result-wide v16

    .line 273
    .local v16, "flexMillis":J
    new-instance v10, Landroid/os/Bundle;

    invoke-direct {v10}, Landroid/os/Bundle;-><init>()V

    .line 275
    .local v10, "extras":Landroid/os/Bundle;
    const-string/jumbo v28, "syncExtras"

    move-object/from16 v0, p0

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Landroid/os/PersistableBundle;->getPersistableBundle(Ljava/lang/String;)Landroid/os/PersistableBundle;

    move-result-object v26

    .line 276
    .local v26, "syncExtras":Landroid/os/PersistableBundle;
    if-eqz v26, :cond_1

    .line 277
    move-object/from16 v0, v26

    invoke-virtual {v10, v0}, Landroid/os/Bundle;->putAll(Landroid/os/PersistableBundle;)V

    .line 280
    :cond_1
    invoke-virtual/range {p0 .. p0}, Landroid/os/PersistableBundle;->keySet()Ljava/util/Set;

    move-result-object v28

    invoke-interface/range {v28 .. v28}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v23

    .local v23, "key$iterator":Ljava/util/Iterator;
    :cond_2
    :goto_0
    invoke-interface/range {v23 .. v23}, Ljava/util/Iterator;->hasNext()Z

    move-result v28

    if-eqz v28, :cond_3

    invoke-interface/range {v23 .. v23}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v22

    check-cast v22, Ljava/lang/String;

    .line 281
    .local v22, "key":Ljava/lang/String;
    if-eqz v22, :cond_2

    const-string/jumbo v28, "ACCOUNT:"

    move-object/from16 v0, v22

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v28

    if-eqz v28, :cond_2

    .line 282
    const/16 v28, 0x8

    move-object/from16 v0, v22

    move/from16 v1, v28

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v24

    .line 283
    .local v24, "newKey":Ljava/lang/String;
    move-object/from16 v0, p0

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/os/PersistableBundle;->getPersistableBundle(Ljava/lang/String;)Landroid/os/PersistableBundle;

    move-result-object v21

    .line 284
    .local v21, "accountsBundle":Landroid/os/PersistableBundle;
    new-instance v18, Landroid/accounts/Account;

    const-string/jumbo v28, "accountName"

    move-object/from16 v0, v21

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Landroid/os/PersistableBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v28

    .line 285
    const-string/jumbo v29, "accountType"

    move-object/from16 v0, v21

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Landroid/os/PersistableBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v29

    .line 284
    move-object/from16 v0, v18

    move-object/from16 v1, v28

    move-object/from16 v2, v29

    invoke-direct {v0, v1, v2}, Landroid/accounts/Account;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 286
    .local v18, "account":Landroid/accounts/Account;
    move-object/from16 v0, v24

    move-object/from16 v1, v18

    invoke-virtual {v10, v0, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    goto :goto_0

    .line 290
    .end local v18    # "account":Landroid/accounts/Account;
    .end local v21    # "accountsBundle":Landroid/os/PersistableBundle;
    .end local v22    # "key":Ljava/lang/String;
    .end local v24    # "newKey":Ljava/lang/String;
    :cond_3
    new-instance v18, Landroid/accounts/Account;

    invoke-direct/range {v18 .. v20}, Landroid/accounts/Account;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 292
    .restart local v18    # "account":Landroid/accounts/Account;
    new-instance v5, Lcom/android/server/content/SyncStorageEngine$EndPoint;

    move-object/from16 v0, v18

    move-object/from16 v1, v25

    move/from16 v2, v27

    invoke-direct {v5, v0, v1, v2}, Lcom/android/server/content/SyncStorageEngine$EndPoint;-><init>(Landroid/accounts/Account;Ljava/lang/String;I)V

    .line 293
    .local v5, "target":Lcom/android/server/content/SyncStorageEngine$EndPoint;
    new-instance v4, Lcom/android/server/content/SyncOperation;

    invoke-direct/range {v4 .. v17}, Lcom/android/server/content/SyncOperation;-><init>(Lcom/android/server/content/SyncStorageEngine$EndPoint;ILjava/lang/String;IILandroid/os/Bundle;ZZIJJ)V

    .line 295
    .local v4, "op":Lcom/android/server/content/SyncOperation;
    const-string/jumbo v28, "jobId"

    move-object/from16 v0, p0

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Landroid/os/PersistableBundle;->getInt(Ljava/lang/String;)I

    move-result v28

    move/from16 v0, v28

    iput v0, v4, Lcom/android/server/content/SyncOperation;->jobId:I

    .line 296
    const-string/jumbo v28, "expectedRuntime"

    move-object/from16 v0, p0

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Landroid/os/PersistableBundle;->getLong(Ljava/lang/String;)J

    move-result-wide v28

    move-wide/from16 v0, v28

    iput-wide v0, v4, Lcom/android/server/content/SyncOperation;->expectedRuntime:J

    .line 297
    const-string/jumbo v28, "retries"

    move-object/from16 v0, p0

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Landroid/os/PersistableBundle;->getInt(Ljava/lang/String;)I

    move-result v28

    move/from16 v0, v28

    iput v0, v4, Lcom/android/server/content/SyncOperation;->retries:I

    .line 300
    const-string/jumbo v28, "miui-init-periodic-sync-fix"

    const/16 v29, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v28

    move/from16 v2, v29

    invoke-virtual {v0, v1, v2}, Landroid/os/PersistableBundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v28

    move/from16 v0, v28

    iput-boolean v0, v4, Lcom/android/server/content/SyncOperation;->miuiInitPeriodicFixed:Z

    .line 302
    return-object v4
.end method

.method static reasonToString(Landroid/content/pm/PackageManager;I)Ljava/lang/String;
    .locals 6
    .param p0, "pm"    # Landroid/content/pm/PackageManager;
    .param p1, "reason"    # I

    .prologue
    const/4 v5, 0x0

    .line 400
    if-ltz p1, :cond_3

    .line 401
    if-eqz p0, :cond_2

    .line 402
    invoke-virtual {p0, p1}, Landroid/content/pm/PackageManager;->getPackagesForUid(I)[Ljava/lang/String;

    move-result-object v2

    .line 403
    .local v2, "packages":[Ljava/lang/String;
    if-eqz v2, :cond_0

    array-length v3, v2

    const/4 v4, 0x1

    if-ne v3, v4, :cond_0

    .line 404
    aget-object v3, v2, v5

    return-object v3

    .line 406
    :cond_0
    invoke-virtual {p0, p1}, Landroid/content/pm/PackageManager;->getNameForUid(I)Ljava/lang/String;

    move-result-object v1

    .line 407
    .local v1, "name":Ljava/lang/String;
    if-eqz v1, :cond_1

    .line 408
    return-object v1

    .line 410
    :cond_1
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    return-object v3

    .line 412
    .end local v1    # "name":Ljava/lang/String;
    .end local v2    # "packages":[Ljava/lang/String;
    :cond_2
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    return-object v3

    .line 415
    :cond_3
    neg-int v3, p1

    add-int/lit8 v0, v3, -0x1

    .line 416
    .local v0, "index":I
    sget-object v3, Lcom/android/server/content/SyncOperation;->REASON_NAMES:[Ljava/lang/String;

    array-length v3, v3

    if-lt v0, v3, :cond_4

    .line 417
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    return-object v3

    .line 419
    :cond_4
    sget-object v3, Lcom/android/server/content/SyncOperation;->REASON_NAMES:[Ljava/lang/String;

    aget-object v3, v3, v0

    return-object v3
.end method

.method private toKey()Ljava/lang/String;
    .locals 4

    .prologue
    .line 343
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 344
    .local v0, "sb":Ljava/lang/StringBuilder;
    const-string/jumbo v1, "provider: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/content/SyncOperation;->target:Lcom/android/server/content/SyncStorageEngine$EndPoint;

    iget-object v2, v2, Lcom/android/server/content/SyncStorageEngine$EndPoint;->provider:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 345
    const-string/jumbo v1, " account {name="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/content/SyncOperation;->target:Lcom/android/server/content/SyncStorageEngine$EndPoint;

    iget-object v2, v2, Lcom/android/server/content/SyncStorageEngine$EndPoint;->account:Landroid/accounts/Account;

    iget-object v2, v2, Landroid/accounts/Account;->name:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 346
    const-string/jumbo v2, ", user="

    .line 345
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 347
    iget-object v2, p0, Lcom/android/server/content/SyncOperation;->target:Lcom/android/server/content/SyncStorageEngine$EndPoint;

    iget v2, v2, Lcom/android/server/content/SyncStorageEngine$EndPoint;->userId:I

    .line 345
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 348
    const-string/jumbo v2, ", type="

    .line 345
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 349
    iget-object v2, p0, Lcom/android/server/content/SyncOperation;->target:Lcom/android/server/content/SyncStorageEngine$EndPoint;

    iget-object v2, v2, Lcom/android/server/content/SyncStorageEngine$EndPoint;->account:Landroid/accounts/Account;

    iget-object v2, v2, Landroid/accounts/Account;->type:Ljava/lang/String;

    .line 345
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 350
    const-string/jumbo v2, "}"

    .line 345
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 351
    const-string/jumbo v1, " isPeriodic: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/server/content/SyncOperation;->isPeriodic:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 352
    const-string/jumbo v1, " period: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Lcom/android/server/content/SyncOperation;->periodMillis:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 353
    const-string/jumbo v1, " flex: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Lcom/android/server/content/SyncOperation;->flexMillis:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 354
    const-string/jumbo v1, " extras: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 355
    iget-object v1, p0, Lcom/android/server/content/SyncOperation;->extras:Landroid/os/Bundle;

    invoke-static {v1, v0}, Lcom/android/server/content/SyncOperation;->extrasToStringBuilder(Landroid/os/Bundle;Ljava/lang/StringBuilder;)V

    .line 356
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method


# virtual methods
.method public createOneTimeSyncOperation()Lcom/android/server/content/SyncOperation;
    .locals 14

    .prologue
    .line 143
    iget-boolean v1, p0, Lcom/android/server/content/SyncOperation;->isPeriodic:Z

    if-nez v1, :cond_0

    .line 144
    const/4 v1, 0x0

    return-object v1

    .line 146
    :cond_0
    new-instance v0, Lcom/android/server/content/SyncOperation;

    iget-object v1, p0, Lcom/android/server/content/SyncOperation;->target:Lcom/android/server/content/SyncStorageEngine$EndPoint;

    iget v2, p0, Lcom/android/server/content/SyncOperation;->owningUid:I

    iget-object v3, p0, Lcom/android/server/content/SyncOperation;->owningPackage:Ljava/lang/String;

    iget v4, p0, Lcom/android/server/content/SyncOperation;->reason:I

    iget v5, p0, Lcom/android/server/content/SyncOperation;->syncSource:I

    .line 147
    new-instance v6, Landroid/os/Bundle;

    iget-object v7, p0, Lcom/android/server/content/SyncOperation;->extras:Landroid/os/Bundle;

    invoke-direct {v6, v7}, Landroid/os/Bundle;-><init>(Landroid/os/Bundle;)V

    iget-boolean v7, p0, Lcom/android/server/content/SyncOperation;->allowParallelSyncs:Z

    iget v9, p0, Lcom/android/server/content/SyncOperation;->jobId:I

    .line 148
    iget-wide v10, p0, Lcom/android/server/content/SyncOperation;->periodMillis:J

    iget-wide v12, p0, Lcom/android/server/content/SyncOperation;->flexMillis:J

    .line 147
    const/4 v8, 0x0

    .line 146
    invoke-direct/range {v0 .. v13}, Lcom/android/server/content/SyncOperation;-><init>(Lcom/android/server/content/SyncStorageEngine$EndPoint;ILjava/lang/String;IILandroid/os/Bundle;ZZIJJ)V

    .line 149
    .local v0, "op":Lcom/android/server/content/SyncOperation;
    return-object v0
.end method

.method dump(Landroid/content/pm/PackageManager;Z)Ljava/lang/String;
    .locals 4
    .param p1, "pm"    # Landroid/content/pm/PackageManager;
    .param p2, "useOneLine"    # Z

    .prologue
    .line 365
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 366
    .local v0, "sb":Ljava/lang/StringBuilder;
    const-string/jumbo v1, "JobId: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/server/content/SyncOperation;->jobId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 367
    const-string/jumbo v2, ", "

    .line 366
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 368
    iget-object v2, p0, Lcom/android/server/content/SyncOperation;->target:Lcom/android/server/content/SyncStorageEngine$EndPoint;

    iget-object v2, v2, Lcom/android/server/content/SyncStorageEngine$EndPoint;->account:Landroid/accounts/Account;

    iget-object v2, v2, Landroid/accounts/Account;->name:Ljava/lang/String;

    .line 366
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 369
    const-string/jumbo v2, " u"

    .line 366
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 370
    iget-object v2, p0, Lcom/android/server/content/SyncOperation;->target:Lcom/android/server/content/SyncStorageEngine$EndPoint;

    iget v2, v2, Lcom/android/server/content/SyncStorageEngine$EndPoint;->userId:I

    .line 366
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 370
    const-string/jumbo v2, " ("

    .line 366
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 371
    iget-object v2, p0, Lcom/android/server/content/SyncOperation;->target:Lcom/android/server/content/SyncStorageEngine$EndPoint;

    iget-object v2, v2, Lcom/android/server/content/SyncStorageEngine$EndPoint;->account:Landroid/accounts/Account;

    iget-object v2, v2, Landroid/accounts/Account;->type:Ljava/lang/String;

    .line 366
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 372
    const-string/jumbo v2, ")"

    .line 366
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 373
    const-string/jumbo v2, ", "

    .line 366
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 374
    iget-object v2, p0, Lcom/android/server/content/SyncOperation;->target:Lcom/android/server/content/SyncStorageEngine$EndPoint;

    iget-object v2, v2, Lcom/android/server/content/SyncStorageEngine$EndPoint;->provider:Ljava/lang/String;

    .line 366
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 375
    const-string/jumbo v2, ", "

    .line 366
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 376
    sget-object v1, Lcom/android/server/content/SyncStorageEngine;->SOURCES:[Ljava/lang/String;

    iget v2, p0, Lcom/android/server/content/SyncOperation;->syncSource:I

    aget-object v1, v1, v2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 377
    iget-object v1, p0, Lcom/android/server/content/SyncOperation;->extras:Landroid/os/Bundle;

    const-string/jumbo v2, "expedited"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 378
    const-string/jumbo v1, ", EXPEDITED"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 380
    :cond_0
    const-string/jumbo v1, ", reason: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 381
    iget v1, p0, Lcom/android/server/content/SyncOperation;->reason:I

    invoke-static {p1, v1}, Lcom/android/server/content/SyncOperation;->reasonToString(Landroid/content/pm/PackageManager;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 382
    iget-boolean v1, p0, Lcom/android/server/content/SyncOperation;->isPeriodic:Z

    if-eqz v1, :cond_1

    .line 383
    const-string/jumbo v1, ", period: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Lcom/android/server/content/SyncOperation;->periodMillis:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ", flexMillis: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Lcom/android/server/content/SyncOperation;->flexMillis:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 385
    :cond_1
    if-nez p2, :cond_2

    .line 386
    const-string/jumbo v1, "\n    "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 387
    const-string/jumbo v1, "owningUid="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 388
    iget v1, p0, Lcom/android/server/content/SyncOperation;->owningUid:I

    invoke-static {v0, v1}, Landroid/os/UserHandle;->formatUid(Ljava/lang/StringBuilder;I)V

    .line 389
    const-string/jumbo v1, " owningPackage="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 390
    iget-object v1, p0, Lcom/android/server/content/SyncOperation;->owningPackage:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 392
    :cond_2
    if-nez p2, :cond_3

    iget-object v1, p0, Lcom/android/server/content/SyncOperation;->extras:Landroid/os/Bundle;

    invoke-virtual {v1}, Landroid/os/Bundle;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 396
    :cond_3
    :goto_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 393
    :cond_4
    const-string/jumbo v1, "\n    "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 394
    iget-object v1, p0, Lcom/android/server/content/SyncOperation;->extras:Landroid/os/Bundle;

    invoke-static {v1, v0}, Lcom/android/server/content/SyncOperation;->extrasToStringBuilder(Landroid/os/Bundle;Ljava/lang/StringBuilder;)V

    goto :goto_0
.end method

.method findPriority()I
    .locals 1

    .prologue
    .line 334
    invoke-virtual {p0}, Lcom/android/server/content/SyncOperation;->isInitialization()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 335
    const/16 v0, 0x14

    return v0

    .line 336
    :cond_0
    invoke-virtual {p0}, Lcom/android/server/content/SyncOperation;->isExpedited()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 337
    const/16 v0, 0xa

    return v0

    .line 339
    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method ignoreBackoff()Z
    .locals 3

    .prologue
    .line 433
    iget-object v0, p0, Lcom/android/server/content/SyncOperation;->extras:Landroid/os/Bundle;

    const-string/jumbo v1, "ignore_backoff"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method isConflict(Lcom/android/server/content/SyncOperation;)Z
    .locals 3
    .param p1, "toRun"    # Lcom/android/server/content/SyncOperation;

    .prologue
    .line 311
    iget-object v0, p1, Lcom/android/server/content/SyncOperation;->target:Lcom/android/server/content/SyncStorageEngine$EndPoint;

    .line 312
    .local v0, "other":Lcom/android/server/content/SyncStorageEngine$EndPoint;
    iget-object v1, p0, Lcom/android/server/content/SyncOperation;->target:Lcom/android/server/content/SyncStorageEngine$EndPoint;

    iget-object v1, v1, Lcom/android/server/content/SyncStorageEngine$EndPoint;->account:Landroid/accounts/Account;

    iget-object v1, v1, Landroid/accounts/Account;->type:Ljava/lang/String;

    iget-object v2, v0, Lcom/android/server/content/SyncStorageEngine$EndPoint;->account:Landroid/accounts/Account;

    iget-object v2, v2, Landroid/accounts/Account;->type:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 313
    iget-object v1, p0, Lcom/android/server/content/SyncOperation;->target:Lcom/android/server/content/SyncStorageEngine$EndPoint;

    iget-object v1, v1, Lcom/android/server/content/SyncStorageEngine$EndPoint;->provider:Ljava/lang/String;

    iget-object v2, v0, Lcom/android/server/content/SyncStorageEngine$EndPoint;->provider:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    .line 312
    if-eqz v1, :cond_1

    .line 314
    iget-object v1, p0, Lcom/android/server/content/SyncOperation;->target:Lcom/android/server/content/SyncStorageEngine$EndPoint;

    iget v1, v1, Lcom/android/server/content/SyncStorageEngine$EndPoint;->userId:I

    iget v2, v0, Lcom/android/server/content/SyncStorageEngine$EndPoint;->userId:I

    if-ne v1, v2, :cond_1

    .line 315
    iget-boolean v1, p0, Lcom/android/server/content/SyncOperation;->allowParallelSyncs:Z

    if-eqz v1, :cond_0

    .line 316
    iget-object v1, p0, Lcom/android/server/content/SyncOperation;->target:Lcom/android/server/content/SyncStorageEngine$EndPoint;

    iget-object v1, v1, Lcom/android/server/content/SyncStorageEngine$EndPoint;->account:Landroid/accounts/Account;

    iget-object v1, v1, Landroid/accounts/Account;->name:Ljava/lang/String;

    iget-object v2, v0, Lcom/android/server/content/SyncStorageEngine$EndPoint;->account:Landroid/accounts/Account;

    iget-object v2, v2, Landroid/accounts/Account;->name:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    .line 312
    :goto_0
    return v1

    .line 315
    :cond_0
    const/4 v1, 0x1

    goto :goto_0

    .line 312
    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method isDerivedFromFailedPeriodicSync()Z
    .locals 2

    .prologue
    .line 330
    iget v0, p0, Lcom/android/server/content/SyncOperation;->sourcePeriodicId:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method isExpedited()Z
    .locals 3

    .prologue
    .line 429
    iget-object v0, p0, Lcom/android/server/content/SyncOperation;->extras:Landroid/os/Bundle;

    const-string/jumbo v1, "expedited"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method isIgnoreSettings()Z
    .locals 3

    .prologue
    .line 445
    iget-object v0, p0, Lcom/android/server/content/SyncOperation;->extras:Landroid/os/Bundle;

    const-string/jumbo v1, "ignore_settings"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method isInitialization()Z
    .locals 3

    .prologue
    .line 425
    iget-object v0, p0, Lcom/android/server/content/SyncOperation;->extras:Landroid/os/Bundle;

    const-string/jumbo v1, "initialize"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method isManual()Z
    .locals 3

    .prologue
    .line 441
    iget-object v0, p0, Lcom/android/server/content/SyncOperation;->extras:Landroid/os/Bundle;

    const-string/jumbo v1, "force"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method isNotAllowedOnMetered()Z
    .locals 3

    .prologue
    .line 437
    iget-object v0, p0, Lcom/android/server/content/SyncOperation;->extras:Landroid/os/Bundle;

    const-string/jumbo v1, "allow_metered"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method isReasonPeriodic()Z
    .locals 2

    .prologue
    .line 320
    iget v0, p0, Lcom/android/server/content/SyncOperation;->reason:I

    const/4 v1, -0x4

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method matchesPeriodicOperation(Lcom/android/server/content/SyncOperation;)Z
    .locals 6
    .param p1, "other"    # Lcom/android/server/content/SyncOperation;

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 324
    iget-object v2, p0, Lcom/android/server/content/SyncOperation;->target:Lcom/android/server/content/SyncStorageEngine$EndPoint;

    iget-object v3, p1, Lcom/android/server/content/SyncOperation;->target:Lcom/android/server/content/SyncStorageEngine$EndPoint;

    invoke-virtual {v2, v3}, Lcom/android/server/content/SyncStorageEngine$EndPoint;->matchesSpec(Lcom/android/server/content/SyncStorageEngine$EndPoint;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 325
    iget-object v2, p0, Lcom/android/server/content/SyncOperation;->extras:Landroid/os/Bundle;

    iget-object v3, p1, Lcom/android/server/content/SyncOperation;->extras:Landroid/os/Bundle;

    invoke-static {v2, v3, v0}, Lcom/android/server/content/SyncManager;->syncExtrasEquals(Landroid/os/Bundle;Landroid/os/Bundle;Z)Z

    move-result v2

    .line 324
    if-eqz v2, :cond_1

    .line 326
    iget-wide v2, p0, Lcom/android/server/content/SyncOperation;->periodMillis:J

    iget-wide v4, p1, Lcom/android/server/content/SyncOperation;->periodMillis:J

    cmp-long v2, v2, v4

    if-nez v2, :cond_1

    iget-wide v2, p0, Lcom/android/server/content/SyncOperation;->flexMillis:J

    iget-wide v4, p1, Lcom/android/server/content/SyncOperation;->flexMillis:J

    cmp-long v2, v2, v4

    if-nez v2, :cond_0

    .line 324
    :goto_0
    return v0

    :cond_0
    move v0, v1

    .line 326
    goto :goto_0

    :cond_1
    move v0, v1

    .line 324
    goto :goto_0
.end method

.method public toEventLog(I)[Ljava/lang/Object;
    .locals 3
    .param p1, "event"    # I

    .prologue
    .line 467
    const/4 v1, 0x4

    new-array v0, v1, [Ljava/lang/Object;

    .line 468
    .local v0, "logArray":[Ljava/lang/Object;
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    .line 469
    iget v1, p0, Lcom/android/server/content/SyncOperation;->syncSource:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x2

    aput-object v1, v0, v2

    .line 470
    iget-object v1, p0, Lcom/android/server/content/SyncOperation;->target:Lcom/android/server/content/SyncStorageEngine$EndPoint;

    iget-object v1, v1, Lcom/android/server/content/SyncStorageEngine$EndPoint;->provider:Ljava/lang/String;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    .line 471
    iget-object v1, p0, Lcom/android/server/content/SyncOperation;->target:Lcom/android/server/content/SyncStorageEngine$EndPoint;

    iget-object v1, v1, Lcom/android/server/content/SyncStorageEngine$EndPoint;->account:Landroid/accounts/Account;

    iget-object v1, v1, Landroid/accounts/Account;->name:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x3

    aput-object v1, v0, v2

    .line 472
    return-object v0
.end method

.method toJobInfoExtras()Landroid/os/PersistableBundle;
    .locals 12

    .prologue
    const/4 v11, 0x0

    const/4 v10, 0x1

    .line 183
    new-instance v2, Landroid/os/PersistableBundle;

    invoke-direct {v2}, Landroid/os/PersistableBundle;-><init>()V

    .line 185
    .local v2, "jobInfoExtras":Landroid/os/PersistableBundle;
    new-instance v5, Landroid/os/PersistableBundle;

    invoke-direct {v5}, Landroid/os/PersistableBundle;-><init>()V

    .line 186
    .local v5, "syncExtrasBundle":Landroid/os/PersistableBundle;
    iget-object v7, p0, Lcom/android/server/content/SyncOperation;->extras:Landroid/os/Bundle;

    invoke-virtual {v7}, Landroid/os/Bundle;->keySet()Ljava/util/Set;

    move-result-object v7

    invoke-interface {v7}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, "key$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_8

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 187
    .local v3, "key":Ljava/lang/String;
    iget-object v7, p0, Lcom/android/server/content/SyncOperation;->extras:Landroid/os/Bundle;

    invoke-virtual {v7, v3}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    .line 188
    .local v6, "value":Ljava/lang/Object;
    instance-of v7, v6, Landroid/accounts/Account;

    if-eqz v7, :cond_0

    move-object v0, v6

    .line 189
    check-cast v0, Landroid/accounts/Account;

    .line 190
    .local v0, "account":Landroid/accounts/Account;
    new-instance v1, Landroid/os/PersistableBundle;

    invoke-direct {v1}, Landroid/os/PersistableBundle;-><init>()V

    .line 191
    .local v1, "accountBundle":Landroid/os/PersistableBundle;
    const-string/jumbo v7, "accountName"

    iget-object v8, v0, Landroid/accounts/Account;->name:Ljava/lang/String;

    invoke-virtual {v1, v7, v8}, Landroid/os/PersistableBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 192
    const-string/jumbo v7, "accountType"

    iget-object v8, v0, Landroid/accounts/Account;->type:Ljava/lang/String;

    invoke-virtual {v1, v7, v8}, Landroid/os/PersistableBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 195
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "ACCOUNT:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v2, v7, v1}, Landroid/os/PersistableBundle;->putPersistableBundle(Ljava/lang/String;Landroid/os/PersistableBundle;)V

    goto :goto_0

    .line 196
    .end local v0    # "account":Landroid/accounts/Account;
    .end local v1    # "accountBundle":Landroid/os/PersistableBundle;
    :cond_0
    instance-of v7, v6, Ljava/lang/Long;

    if-eqz v7, :cond_1

    .line 197
    check-cast v6, Ljava/lang/Long;

    .end local v6    # "value":Ljava/lang/Object;
    invoke-virtual {v6}, Ljava/lang/Long;->longValue()J

    move-result-wide v8

    invoke-virtual {v5, v3, v8, v9}, Landroid/os/PersistableBundle;->putLong(Ljava/lang/String;J)V

    goto :goto_0

    .line 198
    .restart local v6    # "value":Ljava/lang/Object;
    :cond_1
    instance-of v7, v6, Ljava/lang/Integer;

    if-eqz v7, :cond_2

    .line 199
    check-cast v6, Ljava/lang/Integer;

    .end local v6    # "value":Ljava/lang/Object;
    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v7

    invoke-virtual {v5, v3, v7}, Landroid/os/PersistableBundle;->putInt(Ljava/lang/String;I)V

    goto :goto_0

    .line 200
    .restart local v6    # "value":Ljava/lang/Object;
    :cond_2
    instance-of v7, v6, Ljava/lang/Boolean;

    if-eqz v7, :cond_3

    .line 201
    check-cast v6, Ljava/lang/Boolean;

    .end local v6    # "value":Ljava/lang/Object;
    invoke-virtual {v6}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v7

    invoke-virtual {v5, v3, v7}, Landroid/os/PersistableBundle;->putBoolean(Ljava/lang/String;Z)V

    goto :goto_0

    .line 202
    .restart local v6    # "value":Ljava/lang/Object;
    :cond_3
    instance-of v7, v6, Ljava/lang/Float;

    if-eqz v7, :cond_4

    .line 203
    check-cast v6, Ljava/lang/Float;

    .end local v6    # "value":Ljava/lang/Object;
    invoke-virtual {v6}, Ljava/lang/Float;->floatValue()F

    move-result v7

    float-to-double v8, v7

    invoke-virtual {v5, v3, v8, v9}, Landroid/os/PersistableBundle;->putDouble(Ljava/lang/String;D)V

    goto :goto_0

    .line 204
    .restart local v6    # "value":Ljava/lang/Object;
    :cond_4
    instance-of v7, v6, Ljava/lang/Double;

    if-eqz v7, :cond_5

    .line 205
    check-cast v6, Ljava/lang/Double;

    .end local v6    # "value":Ljava/lang/Object;
    invoke-virtual {v6}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v8

    invoke-virtual {v5, v3, v8, v9}, Landroid/os/PersistableBundle;->putDouble(Ljava/lang/String;D)V

    goto/16 :goto_0

    .line 206
    .restart local v6    # "value":Ljava/lang/Object;
    :cond_5
    instance-of v7, v6, Ljava/lang/String;

    if-eqz v7, :cond_6

    .line 207
    check-cast v6, Ljava/lang/String;

    .end local v6    # "value":Ljava/lang/Object;
    invoke-virtual {v5, v3, v6}, Landroid/os/PersistableBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 208
    .restart local v6    # "value":Ljava/lang/Object;
    :cond_6
    if-nez v6, :cond_7

    .line 209
    invoke-virtual {v5, v3, v11}, Landroid/os/PersistableBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 211
    :cond_7
    const-string/jumbo v7, "SyncManager"

    const-string/jumbo v8, "Unknown extra type."

    invoke-static {v7, v8}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 216
    .end local v3    # "key":Ljava/lang/String;
    .end local v6    # "value":Ljava/lang/Object;
    :cond_8
    const-string/jumbo v7, "miui-init-periodic-sync-fix"

    invoke-virtual {v2, v7, v10}, Landroid/os/PersistableBundle;->putBoolean(Ljava/lang/String;Z)V

    .line 218
    const-string/jumbo v7, "syncExtras"

    invoke-virtual {v2, v7, v5}, Landroid/os/PersistableBundle;->putPersistableBundle(Ljava/lang/String;Landroid/os/PersistableBundle;)V

    .line 220
    const-string/jumbo v7, "SyncManagerJob"

    invoke-virtual {v2, v7, v10}, Landroid/os/PersistableBundle;->putBoolean(Ljava/lang/String;Z)V

    .line 222
    const-string/jumbo v7, "provider"

    iget-object v8, p0, Lcom/android/server/content/SyncOperation;->target:Lcom/android/server/content/SyncStorageEngine$EndPoint;

    iget-object v8, v8, Lcom/android/server/content/SyncStorageEngine$EndPoint;->provider:Ljava/lang/String;

    invoke-virtual {v2, v7, v8}, Landroid/os/PersistableBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 223
    const-string/jumbo v7, "accountName"

    iget-object v8, p0, Lcom/android/server/content/SyncOperation;->target:Lcom/android/server/content/SyncStorageEngine$EndPoint;

    iget-object v8, v8, Lcom/android/server/content/SyncStorageEngine$EndPoint;->account:Landroid/accounts/Account;

    iget-object v8, v8, Landroid/accounts/Account;->name:Ljava/lang/String;

    invoke-virtual {v2, v7, v8}, Landroid/os/PersistableBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 224
    const-string/jumbo v7, "accountType"

    iget-object v8, p0, Lcom/android/server/content/SyncOperation;->target:Lcom/android/server/content/SyncStorageEngine$EndPoint;

    iget-object v8, v8, Lcom/android/server/content/SyncStorageEngine$EndPoint;->account:Landroid/accounts/Account;

    iget-object v8, v8, Landroid/accounts/Account;->type:Ljava/lang/String;

    invoke-virtual {v2, v7, v8}, Landroid/os/PersistableBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 225
    const-string/jumbo v7, "userId"

    iget-object v8, p0, Lcom/android/server/content/SyncOperation;->target:Lcom/android/server/content/SyncStorageEngine$EndPoint;

    iget v8, v8, Lcom/android/server/content/SyncStorageEngine$EndPoint;->userId:I

    invoke-virtual {v2, v7, v8}, Landroid/os/PersistableBundle;->putInt(Ljava/lang/String;I)V

    .line 226
    const-string/jumbo v7, "owningUid"

    iget v8, p0, Lcom/android/server/content/SyncOperation;->owningUid:I

    invoke-virtual {v2, v7, v8}, Landroid/os/PersistableBundle;->putInt(Ljava/lang/String;I)V

    .line 227
    const-string/jumbo v7, "owningPackage"

    iget-object v8, p0, Lcom/android/server/content/SyncOperation;->owningPackage:Ljava/lang/String;

    invoke-virtual {v2, v7, v8}, Landroid/os/PersistableBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 228
    const-string/jumbo v7, "reason"

    iget v8, p0, Lcom/android/server/content/SyncOperation;->reason:I

    invoke-virtual {v2, v7, v8}, Landroid/os/PersistableBundle;->putInt(Ljava/lang/String;I)V

    .line 229
    const-string/jumbo v7, "source"

    iget v8, p0, Lcom/android/server/content/SyncOperation;->syncSource:I

    invoke-virtual {v2, v7, v8}, Landroid/os/PersistableBundle;->putInt(Ljava/lang/String;I)V

    .line 230
    const-string/jumbo v7, "allowParallelSyncs"

    iget-boolean v8, p0, Lcom/android/server/content/SyncOperation;->allowParallelSyncs:Z

    invoke-virtual {v2, v7, v8}, Landroid/os/PersistableBundle;->putBoolean(Ljava/lang/String;Z)V

    .line 231
    const-string/jumbo v7, "jobId"

    iget v8, p0, Lcom/android/server/content/SyncOperation;->jobId:I

    invoke-virtual {v2, v7, v8}, Landroid/os/PersistableBundle;->putInt(Ljava/lang/String;I)V

    .line 232
    const-string/jumbo v7, "isPeriodic"

    iget-boolean v8, p0, Lcom/android/server/content/SyncOperation;->isPeriodic:Z

    invoke-virtual {v2, v7, v8}, Landroid/os/PersistableBundle;->putBoolean(Ljava/lang/String;Z)V

    .line 233
    const-string/jumbo v7, "sourcePeriodicId"

    iget v8, p0, Lcom/android/server/content/SyncOperation;->sourcePeriodicId:I

    invoke-virtual {v2, v7, v8}, Landroid/os/PersistableBundle;->putInt(Ljava/lang/String;I)V

    .line 234
    const-string/jumbo v7, "periodMillis"

    iget-wide v8, p0, Lcom/android/server/content/SyncOperation;->periodMillis:J

    invoke-virtual {v2, v7, v8, v9}, Landroid/os/PersistableBundle;->putLong(Ljava/lang/String;J)V

    .line 235
    const-string/jumbo v7, "flexMillis"

    iget-wide v8, p0, Lcom/android/server/content/SyncOperation;->flexMillis:J

    invoke-virtual {v2, v7, v8, v9}, Landroid/os/PersistableBundle;->putLong(Ljava/lang/String;J)V

    .line 236
    const-string/jumbo v7, "expectedRuntime"

    iget-wide v8, p0, Lcom/android/server/content/SyncOperation;->expectedRuntime:J

    invoke-virtual {v2, v7, v8, v9}, Landroid/os/PersistableBundle;->putLong(Ljava/lang/String;J)V

    .line 237
    const-string/jumbo v7, "retries"

    iget v8, p0, Lcom/android/server/content/SyncOperation;->retries:I

    invoke-virtual {v2, v7, v8}, Landroid/os/PersistableBundle;->putInt(Ljava/lang/String;I)V

    .line 238
    return-object v2
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 361
    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/android/server/content/SyncOperation;->dump(Landroid/content/pm/PackageManager;Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method wakeLockName()Ljava/lang/String;
    .locals 2

    .prologue
    .line 457
    iget-object v0, p0, Lcom/android/server/content/SyncOperation;->wakeLockName:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 458
    iget-object v0, p0, Lcom/android/server/content/SyncOperation;->wakeLockName:Ljava/lang/String;

    return-object v0

    .line 460
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/android/server/content/SyncOperation;->target:Lcom/android/server/content/SyncStorageEngine$EndPoint;

    iget-object v1, v1, Lcom/android/server/content/SyncStorageEngine$EndPoint;->provider:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 461
    const-string/jumbo v1, "/"

    .line 460
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 461
    iget-object v1, p0, Lcom/android/server/content/SyncOperation;->target:Lcom/android/server/content/SyncStorageEngine$EndPoint;

    iget-object v1, v1, Lcom/android/server/content/SyncStorageEngine$EndPoint;->account:Landroid/accounts/Account;

    iget-object v1, v1, Landroid/accounts/Account;->type:Ljava/lang/String;

    .line 460
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 462
    const-string/jumbo v1, "/"

    .line 460
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 462
    iget-object v1, p0, Lcom/android/server/content/SyncOperation;->target:Lcom/android/server/content/SyncStorageEngine$EndPoint;

    iget-object v1, v1, Lcom/android/server/content/SyncStorageEngine$EndPoint;->account:Landroid/accounts/Account;

    iget-object v1, v1, Landroid/accounts/Account;->name:Ljava/lang/String;

    .line 460
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/content/SyncOperation;->wakeLockName:Ljava/lang/String;

    return-object v0
.end method
