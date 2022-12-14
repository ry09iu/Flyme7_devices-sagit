.class Lcom/android/server/TextServicesManagerService$TextServicesSettings;
.super Ljava/lang/Object;
.source "TextServicesManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/TextServicesManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "TextServicesSettings"
.end annotation


# instance fields
.field private mCopyOnWrite:Z

.field private final mCopyOnWriteDataStore:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mCurrentProfileIds:[I
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "mLock"
    .end annotation
.end field

.field private mCurrentUserId:I

.field private mLock:Ljava/lang/Object;

.field private final mResolver:Landroid/content/ContentResolver;


# direct methods
.method public constructor <init>(Landroid/content/ContentResolver;IZ)V
    .locals 2
    .param p1, "resolver"    # Landroid/content/ContentResolver;
    .param p2, "userId"    # I
    .param p3, "copyOnWrite"    # Z

    .prologue
    const/4 v1, 0x0

    .line 1063
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1054
    new-array v0, v1, [I

    iput-object v0, p0, Lcom/android/server/TextServicesManagerService$TextServicesSettings;->mCurrentProfileIds:[I

    .line 1055
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/TextServicesManagerService$TextServicesSettings;->mLock:Ljava/lang/Object;

    .line 1060
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/TextServicesManagerService$TextServicesSettings;->mCopyOnWriteDataStore:Ljava/util/HashMap;

    .line 1061
    iput-boolean v1, p0, Lcom/android/server/TextServicesManagerService$TextServicesSettings;->mCopyOnWrite:Z

    .line 1065
    iput-object p1, p0, Lcom/android/server/TextServicesManagerService$TextServicesSettings;->mResolver:Landroid/content/ContentResolver;

    .line 1066
    invoke-virtual {p0, p2, p3}, Lcom/android/server/TextServicesManagerService$TextServicesSettings;->switchCurrentUser(IZ)V

    .line 1064
    return-void
.end method

.method private getBoolean(Ljava/lang/String;Z)Z
    .locals 3
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "defaultValue"    # Z

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 1132
    if-eqz p2, :cond_0

    move v0, v1

    :goto_0
    invoke-direct {p0, p1, v0}, Lcom/android/server/TextServicesManagerService$TextServicesSettings;->getInt(Ljava/lang/String;I)I

    move-result v0

    if-ne v0, v1, :cond_1

    :goto_1
    return v1

    :cond_0
    move v0, v2

    goto :goto_0

    :cond_1
    move v1, v2

    goto :goto_1
.end method

.method private getInt(Ljava/lang/String;I)I
    .locals 3
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "defaultValue"    # I

    .prologue
    .line 1120
    iget-boolean v1, p0, Lcom/android/server/TextServicesManagerService$TextServicesSettings;->mCopyOnWrite:Z

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/server/TextServicesManagerService$TextServicesSettings;->mCopyOnWriteDataStore:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1121
    iget-object v1, p0, Lcom/android/server/TextServicesManagerService$TextServicesSettings;->mCopyOnWriteDataStore:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 1122
    .local v0, "result":Ljava/lang/String;
    if-eqz v0, :cond_0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0

    .line 1124
    .end local v0    # "result":Ljava/lang/String;
    :cond_1
    iget-object v1, p0, Lcom/android/server/TextServicesManagerService$TextServicesSettings;->mResolver:Landroid/content/ContentResolver;

    iget v2, p0, Lcom/android/server/TextServicesManagerService$TextServicesSettings;->mCurrentUserId:I

    invoke-static {v1, p1, p2, v2}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v1

    return v1
.end method

.method private getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "defaultValue"    # Ljava/lang/String;

    .prologue
    .line 1103
    iget-boolean v1, p0, Lcom/android/server/TextServicesManagerService$TextServicesSettings;->mCopyOnWrite:Z

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/server/TextServicesManagerService$TextServicesSettings;->mCopyOnWriteDataStore:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1104
    iget-object v1, p0, Lcom/android/server/TextServicesManagerService$TextServicesSettings;->mCopyOnWriteDataStore:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 1108
    .local v0, "result":Ljava/lang/String;
    :goto_0
    if-eqz v0, :cond_1

    .end local v0    # "result":Ljava/lang/String;
    :goto_1
    return-object v0

    .line 1106
    :cond_0
    iget-object v1, p0, Lcom/android/server/TextServicesManagerService$TextServicesSettings;->mResolver:Landroid/content/ContentResolver;

    iget v2, p0, Lcom/android/server/TextServicesManagerService$TextServicesSettings;->mCurrentUserId:I

    invoke-static {v1, p1, v2}, Landroid/provider/Settings$Secure;->getStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    .restart local v0    # "result":Ljava/lang/String;
    goto :goto_0

    :cond_1
    move-object v0, p2

    .line 1108
    goto :goto_1
.end method

.method private putBoolean(Ljava/lang/String;Z)V
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Z

    .prologue
    .line 1128
    if-eqz p2, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-direct {p0, p1, v0}, Lcom/android/server/TextServicesManagerService$TextServicesSettings;->putInt(Ljava/lang/String;I)V

    .line 1127
    return-void

    .line 1128
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private putInt(Ljava/lang/String;I)V
    .locals 2
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # I

    .prologue
    .line 1112
    iget-boolean v0, p0, Lcom/android/server/TextServicesManagerService$TextServicesSettings;->mCopyOnWrite:Z

    if-eqz v0, :cond_0

    .line 1113
    iget-object v0, p0, Lcom/android/server/TextServicesManagerService$TextServicesSettings;->mCopyOnWriteDataStore:Ljava/util/HashMap;

    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1111
    :goto_0
    return-void

    .line 1115
    :cond_0
    iget-object v0, p0, Lcom/android/server/TextServicesManagerService$TextServicesSettings;->mResolver:Landroid/content/ContentResolver;

    iget v1, p0, Lcom/android/server/TextServicesManagerService$TextServicesSettings;->mCurrentUserId:I

    invoke-static {v0, p1, p2, v1}, Landroid/provider/Settings$Secure;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    goto :goto_0
.end method

.method private putString(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "str"    # Ljava/lang/String;

    .prologue
    .line 1093
    iget-boolean v0, p0, Lcom/android/server/TextServicesManagerService$TextServicesSettings;->mCopyOnWrite:Z

    if-eqz v0, :cond_0

    .line 1094
    iget-object v0, p0, Lcom/android/server/TextServicesManagerService$TextServicesSettings;->mCopyOnWriteDataStore:Ljava/util/HashMap;

    invoke-virtual {v0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1092
    :goto_0
    return-void

    .line 1096
    :cond_0
    iget-object v0, p0, Lcom/android/server/TextServicesManagerService$TextServicesSettings;->mResolver:Landroid/content/ContentResolver;

    iget v1, p0, Lcom/android/server/TextServicesManagerService$TextServicesSettings;->mCurrentUserId:I

    invoke-static {v0, p1, p2, v1}, Landroid/provider/Settings$Secure;->putStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;I)Z

    goto :goto_0
.end method


# virtual methods
.method public dumpLocked(Ljava/io/PrintWriter;Ljava/lang/String;)V
    .locals 2
    .param p1, "pw"    # Ljava/io/PrintWriter;
    .param p2, "prefix"    # Ljava/lang/String;

    .prologue
    .line 1188
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "mCurrentUserId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/server/TextServicesManagerService$TextServicesSettings;->mCurrentUserId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1189
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "mCurrentProfileIds="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/TextServicesManagerService$TextServicesSettings;->mCurrentProfileIds:[I

    invoke-static {v1}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1190
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "mCopyOnWrite="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/server/TextServicesManagerService$TextServicesSettings;->mCopyOnWrite:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1187
    return-void
.end method

.method public getCurrentUserId()I
    .locals 1

    .prologue
    .line 1153
    iget v0, p0, Lcom/android/server/TextServicesManagerService$TextServicesSettings;->mCurrentUserId:I

    return v0
.end method

.method public getSelectedSpellChecker()Ljava/lang/String;
    .locals 2

    .prologue
    .line 1176
    const-string/jumbo v0, "selected_spell_checker"

    const-string/jumbo v1, ""

    invoke-direct {p0, v0, v1}, Lcom/android/server/TextServicesManagerService$TextServicesSettings;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getSelectedSpellCheckerSubtype(I)I
    .locals 1
    .param p1, "defaultValue"    # I

    .prologue
    .line 1180
    const-string/jumbo v0, "selected_spell_checker_subtype"

    invoke-direct {p0, v0, p1}, Lcom/android/server/TextServicesManagerService$TextServicesSettings;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public isCurrentProfile(I)Z
    .locals 4
    .param p1, "userId"    # I

    .prologue
    const/4 v3, 0x1

    .line 1142
    iget-object v2, p0, Lcom/android/server/TextServicesManagerService$TextServicesSettings;->mLock:Ljava/lang/Object;

    monitor-enter v2

    .line 1143
    :try_start_0
    iget v1, p0, Lcom/android/server/TextServicesManagerService$TextServicesSettings;->mCurrentUserId:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-ne p1, v1, :cond_0

    monitor-exit v2

    return v3

    .line 1144
    :cond_0
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    :try_start_1
    iget-object v1, p0, Lcom/android/server/TextServicesManagerService$TextServicesSettings;->mCurrentProfileIds:[I

    array-length v1, v1

    if-ge v0, v1, :cond_2

    .line 1145
    iget-object v1, p0, Lcom/android/server/TextServicesManagerService$TextServicesSettings;->mCurrentProfileIds:[I

    aget v1, v1, v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-ne p1, v1, :cond_1

    monitor-exit v2

    return v3

    .line 1144
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1147
    :cond_2
    const/4 v1, 0x0

    monitor-exit v2

    return v1

    .line 1142
    .end local v0    # "i":I
    :catchall_0
    move-exception v1

    monitor-exit v2

    throw v1
.end method

.method public isSpellCheckerEnabled()Z
    .locals 2

    .prologue
    .line 1184
    const-string/jumbo v0, "spell_checker_enabled"

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Lcom/android/server/TextServicesManagerService$TextServicesSettings;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public putSelectedSpellChecker(Ljava/lang/String;)V
    .locals 2
    .param p1, "sciId"    # Ljava/lang/String;

    .prologue
    .line 1157
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1160
    const-string/jumbo v0, "selected_spell_checker"

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/android/server/TextServicesManagerService$TextServicesSettings;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1156
    :goto_0
    return-void

    .line 1162
    :cond_0
    const-string/jumbo v0, "selected_spell_checker"

    invoke-direct {p0, v0, p1}, Lcom/android/server/TextServicesManagerService$TextServicesSettings;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public putSelectedSpellCheckerSubtype(I)V
    .locals 1
    .param p1, "hashCode"    # I

    .prologue
    .line 1167
    const-string/jumbo v0, "selected_spell_checker_subtype"

    invoke-direct {p0, v0, p1}, Lcom/android/server/TextServicesManagerService$TextServicesSettings;->putInt(Ljava/lang/String;I)V

    .line 1166
    return-void
.end method

.method public setCurrentProfileIds([I)V
    .locals 2
    .param p1, "currentProfileIds"    # [I

    .prologue
    .line 1136
    iget-object v0, p0, Lcom/android/server/TextServicesManagerService$TextServicesSettings;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1137
    :try_start_0
    iput-object p1, p0, Lcom/android/server/TextServicesManagerService$TextServicesSettings;->mCurrentProfileIds:[I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    .line 1135
    return-void

    .line 1136
    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public setSpellCheckerEnabled(Z)V
    .locals 1
    .param p1, "enabled"    # Z

    .prologue
    .line 1171
    const-string/jumbo v0, "spell_checker_enabled"

    invoke-direct {p0, v0, p1}, Lcom/android/server/TextServicesManagerService$TextServicesSettings;->putBoolean(Ljava/lang/String;Z)V

    .line 1170
    return-void
.end method

.method public switchCurrentUser(IZ)V
    .locals 1
    .param p1, "userId"    # I
    .param p2, "copyOnWrite"    # Z

    .prologue
    .line 1082
    iget v0, p0, Lcom/android/server/TextServicesManagerService$TextServicesSettings;->mCurrentUserId:I

    if-ne v0, p1, :cond_0

    iget-boolean v0, p0, Lcom/android/server/TextServicesManagerService$TextServicesSettings;->mCopyOnWrite:Z

    if-eq v0, p2, :cond_1

    .line 1083
    :cond_0
    iget-object v0, p0, Lcom/android/server/TextServicesManagerService$TextServicesSettings;->mCopyOnWriteDataStore:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 1087
    :cond_1
    iput p1, p0, Lcom/android/server/TextServicesManagerService$TextServicesSettings;->mCurrentUserId:I

    .line 1088
    iput-boolean p2, p0, Lcom/android/server/TextServicesManagerService$TextServicesSettings;->mCopyOnWrite:Z

    .line 1077
    return-void
.end method
