.class public Lcom/android/server/content/SyncOperationInjector;
.super Ljava/lang/Object;
.source "SyncOperationInjector.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static compareByXiaomiPriority(Lcom/android/server/content/SyncOperation;Lcom/android/server/content/SyncOperation;)I
    .locals 3
    .param p0, "operation1"    # Lcom/android/server/content/SyncOperation;
    .param p1, "operation2"    # Lcom/android/server/content/SyncOperation;

    .prologue
    .line 9
    const/4 v0, -0x1

    .line 10
    .local v0, "priority1":I
    iget-object v2, p0, Lcom/android/server/content/SyncOperation;->target:Lcom/android/server/content/SyncStorageEngine$EndPoint;

    iget-object v2, v2, Lcom/android/server/content/SyncStorageEngine$EndPoint;->account:Landroid/accounts/Account;

    invoke-static {v2}, Lcom/android/server/content/SyncOperationInjector;->isXiaomiAccount(Landroid/accounts/Account;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 11
    iget-object v2, p0, Lcom/android/server/content/SyncOperation;->target:Lcom/android/server/content/SyncStorageEngine$EndPoint;

    iget-object v2, v2, Lcom/android/server/content/SyncStorageEngine$EndPoint;->provider:Ljava/lang/String;

    invoke-static {v2}, Lcom/android/server/content/SyncOperationInjector;->getXiaomiAuthorityPriority(Ljava/lang/String;)I

    move-result v0

    .line 13
    :cond_0
    const/4 v1, -0x1

    .line 14
    .local v1, "priority2":I
    iget-object v2, p1, Lcom/android/server/content/SyncOperation;->target:Lcom/android/server/content/SyncStorageEngine$EndPoint;

    iget-object v2, v2, Lcom/android/server/content/SyncStorageEngine$EndPoint;->account:Landroid/accounts/Account;

    invoke-static {v2}, Lcom/android/server/content/SyncOperationInjector;->isXiaomiAccount(Landroid/accounts/Account;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 15
    iget-object v2, p1, Lcom/android/server/content/SyncOperation;->target:Lcom/android/server/content/SyncStorageEngine$EndPoint;

    iget-object v2, v2, Lcom/android/server/content/SyncStorageEngine$EndPoint;->provider:Ljava/lang/String;

    invoke-static {v2}, Lcom/android/server/content/SyncOperationInjector;->getXiaomiAuthorityPriority(Ljava/lang/String;)I

    move-result v1

    .line 18
    :cond_1
    if-le v0, v1, :cond_2

    .line 19
    const/4 v2, -0x1

    return v2

    .line 20
    :cond_2
    if-ge v0, v1, :cond_3

    .line 21
    const/4 v2, 0x1

    return v2

    .line 23
    :cond_3
    const/4 v2, 0x0

    return v2
.end method

.method private static getXiaomiAuthorityPriority(Ljava/lang/String;)I
    .locals 7
    .param p0, "authority"    # Ljava/lang/String;

    .prologue
    .line 38
    const-string/jumbo v1, "com.android.contacts"

    .line 39
    .local v1, "AUTHORITY_CONTACTS":Ljava/lang/String;
    const-string/jumbo v5, "wifi"

    .line 40
    .local v5, "AUTHORITY_WLAN":Ljava/lang/String;
    const-string/jumbo v4, "sms"

    .line 41
    .local v4, "AUTHORITY_SMS":Ljava/lang/String;
    const-string/jumbo v2, "com.miui.gallery.cloud.provider"

    .line 42
    .local v2, "AUTHORITY_GALLERY":Ljava/lang/String;
    const-string/jumbo v0, "call_log"

    .line 43
    .local v0, "AUTHORITY_CALLLOG":Ljava/lang/String;
    const-string/jumbo v3, "notes"

    .line 44
    .local v3, "AUTHORITY_NOTES":Ljava/lang/String;
    const-string/jumbo v6, "wifi"

    invoke-virtual {v6, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 45
    const/16 v6, 0x3c

    return v6

    .line 46
    :cond_0
    const-string/jumbo v6, "com.android.contacts"

    invoke-virtual {v6, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 47
    const/16 v6, 0x32

    return v6

    .line 48
    :cond_1
    const-string/jumbo v6, "call_log"

    invoke-virtual {v6, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 49
    const/16 v6, 0x28

    return v6

    .line 50
    :cond_2
    const-string/jumbo v6, "sms"

    invoke-virtual {v6, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 51
    const/16 v6, 0x1e

    return v6

    .line 52
    :cond_3
    const-string/jumbo v6, "notes"

    invoke-virtual {v6, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_4

    .line 53
    const/16 v6, 0x14

    return v6

    .line 54
    :cond_4
    const-string/jumbo v6, "com.miui.gallery.cloud.provider"

    invoke-virtual {v6, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_5

    .line 55
    const/16 v6, 0xa

    return v6

    .line 57
    :cond_5
    const/4 v6, 0x0

    return v6
.end method

.method private static isXiaomiAccount(Landroid/accounts/Account;)Z
    .locals 4
    .param p0, "account"    # Landroid/accounts/Account;

    .prologue
    const/4 v3, 0x0

    .line 27
    const-string/jumbo v0, "com.xiaomi"

    .line 28
    .local v0, "XIAOMI_ACCOUNT_TYPE":Ljava/lang/String;
    if-nez p0, :cond_0

    .line 29
    return v3

    .line 31
    :cond_0
    const-string/jumbo v1, "com.xiaomi"

    iget-object v2, p0, Landroid/accounts/Account;->type:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 32
    const/4 v1, 0x1

    return v1

    .line 34
    :cond_1
    return v3
.end method
