.class abstract Lcom/android/server/accounts/AccountManagerService$StartAccountSession;
.super Lcom/android/server/accounts/AccountManagerService$Session;
.source "AccountManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/accounts/AccountManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x402
    name = "StartAccountSession"
.end annotation


# instance fields
.field private final mIsPasswordForwardingAllowed:Z

.field final synthetic this$0:Lcom/android/server/accounts/AccountManagerService;


# direct methods
.method public constructor <init>(Lcom/android/server/accounts/AccountManagerService;Lcom/android/server/accounts/AccountManagerService$UserAccounts;Landroid/accounts/IAccountManagerResponse;Ljava/lang/String;ZLjava/lang/String;ZZZ)V
    .locals 11
    .param p1, "this$0"    # Lcom/android/server/accounts/AccountManagerService;
    .param p2, "accounts"    # Lcom/android/server/accounts/AccountManagerService$UserAccounts;
    .param p3, "response"    # Landroid/accounts/IAccountManagerResponse;
    .param p4, "accountType"    # Ljava/lang/String;
    .param p5, "expectActivityLaunch"    # Z
    .param p6, "accountName"    # Ljava/lang/String;
    .param p7, "authDetailsRequired"    # Z
    .param p8, "updateLastAuthenticationTime"    # Z
    .param p9, "isPasswordForwardingAllowed"    # Z

    .prologue
    .line 2973
    iput-object p1, p0, Lcom/android/server/accounts/AccountManagerService$StartAccountSession;->this$0:Lcom/android/server/accounts/AccountManagerService;

    .line 2983
    const/4 v7, 0x1

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move/from16 v6, p5

    move-object/from16 v8, p6

    move/from16 v9, p7

    move/from16 v10, p8

    .line 2982
    invoke-direct/range {v1 .. v10}, Lcom/android/server/accounts/AccountManagerService$Session;-><init>(Lcom/android/server/accounts/AccountManagerService;Lcom/android/server/accounts/AccountManagerService$UserAccounts;Landroid/accounts/IAccountManagerResponse;Ljava/lang/String;ZZLjava/lang/String;ZZ)V

    .line 2985
    move/from16 v0, p9

    iput-boolean v0, p0, Lcom/android/server/accounts/AccountManagerService$StartAccountSession;->mIsPasswordForwardingAllowed:Z

    .line 2981
    return-void
.end method


# virtual methods
.method public onResult(Landroid/os/Bundle;)V
    .locals 11
    .param p1, "result"    # Landroid/os/Bundle;

    .prologue
    const/4 v9, 0x2

    const/4 v10, 0x5

    .line 2990
    const/4 v7, 0x1

    invoke-static {p1, v7}, Landroid/os/Bundle;->setDefusable(Landroid/os/Bundle;Z)Landroid/os/Bundle;

    .line 2991
    iget v7, p0, Lcom/android/server/accounts/AccountManagerService$StartAccountSession;->mNumResults:I

    add-int/lit8 v7, v7, 0x1

    iput v7, p0, Lcom/android/server/accounts/AccountManagerService$StartAccountSession;->mNumResults:I

    .line 2992
    const/4 v4, 0x0

    .line 2993
    .local v4, "intent":Landroid/content/Intent;
    if-eqz p1, :cond_0

    .line 2994
    const-string/jumbo v7, "intent"

    invoke-virtual {p1, v7}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v4

    .end local v4    # "intent":Landroid/content/Intent;
    check-cast v4, Landroid/content/Intent;

    .local v4, "intent":Landroid/content/Intent;
    if-eqz v4, :cond_0

    .line 2996
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v7

    .line 2995
    invoke-virtual {p0, v7, v4}, Lcom/android/server/accounts/AccountManagerService$StartAccountSession;->checkKeyIntent(ILandroid/content/Intent;)Z

    move-result v7

    if-nez v7, :cond_0

    .line 2999
    const-string/jumbo v7, "invalid intent in bundle returned"

    .line 2998
    invoke-virtual {p0, v10, v7}, Lcom/android/server/accounts/AccountManagerService$StartAccountSession;->onError(ILjava/lang/String;)V

    .line 3000
    return-void

    .line 3004
    .end local v4    # "intent":Landroid/content/Intent;
    :cond_0
    iget-boolean v7, p0, Lcom/android/server/accounts/AccountManagerService$StartAccountSession;->mExpectActivityLaunch:Z

    if-eqz v7, :cond_1

    if-eqz p1, :cond_1

    .line 3005
    const-string/jumbo v7, "intent"

    invoke-virtual {p1, v7}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v7

    .line 3004
    if-eqz v7, :cond_1

    .line 3006
    iget-object v5, p0, Lcom/android/server/accounts/AccountManagerService$StartAccountSession;->mResponse:Landroid/accounts/IAccountManagerResponse;

    .line 3010
    .local v5, "response":Landroid/accounts/IAccountManagerResponse;
    :goto_0
    if-nez v5, :cond_2

    .line 3011
    return-void

    .line 3008
    .end local v5    # "response":Landroid/accounts/IAccountManagerResponse;
    :cond_1
    invoke-virtual {p0}, Lcom/android/server/accounts/AccountManagerService$StartAccountSession;->getResponseAndClose()Landroid/accounts/IAccountManagerResponse;

    move-result-object v5

    .restart local v5    # "response":Landroid/accounts/IAccountManagerResponse;
    goto :goto_0

    .line 3013
    :cond_2
    if-nez p1, :cond_4

    .line 3014
    const-string/jumbo v7, "AccountManagerService"

    invoke-static {v7, v9}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v7

    if-eqz v7, :cond_3

    .line 3015
    const-string/jumbo v7, "AccountManagerService"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/android/server/accounts/AccountManagerService$StartAccountSession;->getClass()Ljava/lang/Class;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, " calling onError() on response "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 3018
    :cond_3
    iget-object v7, p0, Lcom/android/server/accounts/AccountManagerService$StartAccountSession;->this$0:Lcom/android/server/accounts/AccountManagerService;

    .line 3019
    const-string/jumbo v8, "null bundle returned"

    .line 3018
    invoke-static {v7, v5, v10, v8}, Lcom/android/server/accounts/AccountManagerService;->-wrap19(Lcom/android/server/accounts/AccountManagerService;Landroid/accounts/IAccountManagerResponse;ILjava/lang/String;)V

    .line 3020
    return-void

    .line 3023
    :cond_4
    const-string/jumbo v7, "errorCode"

    const/4 v8, -0x1

    invoke-virtual {p1, v7, v8}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v7

    if-lez v7, :cond_5

    if-nez v4, :cond_5

    .line 3026
    iget-object v7, p0, Lcom/android/server/accounts/AccountManagerService$StartAccountSession;->this$0:Lcom/android/server/accounts/AccountManagerService;

    const-string/jumbo v8, "errorCode"

    invoke-virtual {p1, v8}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v8

    .line 3027
    const-string/jumbo v9, "errorMessage"

    invoke-virtual {p1, v9}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 3026
    invoke-static {v7, v5, v8, v9}, Lcom/android/server/accounts/AccountManagerService;->-wrap19(Lcom/android/server/accounts/AccountManagerService;Landroid/accounts/IAccountManagerResponse;ILjava/lang/String;)V

    .line 3028
    return-void

    .line 3032
    :cond_5
    iget-boolean v7, p0, Lcom/android/server/accounts/AccountManagerService$StartAccountSession;->mIsPasswordForwardingAllowed:Z

    if-nez v7, :cond_6

    .line 3033
    const-string/jumbo v7, "password"

    invoke-virtual {p1, v7}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    .line 3037
    :cond_6
    const-string/jumbo v7, "authtoken"

    invoke-virtual {p1, v7}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    .line 3039
    const-string/jumbo v7, "AccountManagerService"

    invoke-static {v7, v9}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v7

    if-eqz v7, :cond_7

    .line 3040
    const-string/jumbo v7, "AccountManagerService"

    .line 3041
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/android/server/accounts/AccountManagerService$StartAccountSession;->getClass()Ljava/lang/Class;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, " calling onResult() on response "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 3040
    invoke-static {v7, v8}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 3048
    :cond_7
    const-string/jumbo v7, "accountSessionBundle"

    invoke-virtual {p1, v7}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v6

    .line 3049
    .local v6, "sessionBundle":Landroid/os/Bundle;
    if-eqz v6, :cond_8

    .line 3050
    const-string/jumbo v7, "accountType"

    invoke-virtual {v6, v7}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 3051
    .local v0, "accountType":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_9

    .line 3052
    iget-object v7, p0, Lcom/android/server/accounts/AccountManagerService$StartAccountSession;->mAccountType:Ljava/lang/String;

    invoke-virtual {v7, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_9

    .line 3057
    :goto_1
    const-string/jumbo v7, "accountType"

    iget-object v8, p0, Lcom/android/server/accounts/AccountManagerService$StartAccountSession;->mAccountType:Ljava/lang/String;

    invoke-virtual {v6, v7, v8}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 3061
    :try_start_0
    invoke-static {}, Lcom/android/server/accounts/CryptoHelper;->getInstance()Lcom/android/server/accounts/CryptoHelper;

    move-result-object v1

    .line 3062
    .local v1, "cryptoHelper":Lcom/android/server/accounts/CryptoHelper;
    invoke-virtual {v1, v6}, Lcom/android/server/accounts/CryptoHelper;->encryptBundle(Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v3

    .line 3063
    .local v3, "encryptedBundle":Landroid/os/Bundle;
    const-string/jumbo v7, "accountSessionBundle"

    invoke-virtual {p1, v7, v3}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V
    :try_end_0
    .catch Ljava/security/GeneralSecurityException; {:try_start_0 .. :try_end_0} :catch_0

    .line 3074
    .end local v0    # "accountType":Ljava/lang/String;
    .end local v1    # "cryptoHelper":Lcom/android/server/accounts/CryptoHelper;
    .end local v3    # "encryptedBundle":Landroid/os/Bundle;
    :cond_8
    iget-object v7, p0, Lcom/android/server/accounts/AccountManagerService$StartAccountSession;->this$0:Lcom/android/server/accounts/AccountManagerService;

    invoke-static {v7, v5, p1}, Lcom/android/server/accounts/AccountManagerService;->-wrap20(Lcom/android/server/accounts/AccountManagerService;Landroid/accounts/IAccountManagerResponse;Landroid/os/Bundle;)V

    .line 2989
    return-void

    .line 3053
    .restart local v0    # "accountType":Ljava/lang/String;
    :cond_9
    const-string/jumbo v7, "AccountManagerService"

    const-string/jumbo v8, "Account type in session bundle doesn\'t match request."

    invoke-static {v7, v8}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 3064
    :catch_0
    move-exception v2

    .line 3065
    .local v2, "e":Ljava/security/GeneralSecurityException;
    const-string/jumbo v7, "AccountManagerService"

    const/4 v8, 0x3

    invoke-static {v7, v8}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v7

    if-eqz v7, :cond_a

    .line 3066
    const-string/jumbo v7, "AccountManagerService"

    const-string/jumbo v8, "Failed to encrypt session bundle!"

    invoke-static {v7, v8, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 3068
    :cond_a
    iget-object v7, p0, Lcom/android/server/accounts/AccountManagerService$StartAccountSession;->this$0:Lcom/android/server/accounts/AccountManagerService;

    .line 3069
    const-string/jumbo v8, "failed to encrypt session bundle"

    .line 3068
    invoke-static {v7, v5, v10, v8}, Lcom/android/server/accounts/AccountManagerService;->-wrap19(Lcom/android/server/accounts/AccountManagerService;Landroid/accounts/IAccountManagerResponse;ILjava/lang/String;)V

    .line 3070
    return-void
.end method
