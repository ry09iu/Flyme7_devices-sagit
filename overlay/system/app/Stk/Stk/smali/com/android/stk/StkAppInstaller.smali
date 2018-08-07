.class abstract Lcom/android/stk/StkAppInstaller;
.super Ljava/lang/Object;
.source "StkAppInstaller.java"


# direct methods
.method private constructor <init>()V
    .locals 2

    .prologue
    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    const-string/jumbo v0, "StkAppInstaller"

    const-string/jumbo v1, "init"

    invoke-static {v0, v1}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 39
    return-void
.end method

.method public static install(Landroid/content/Context;)V
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 44
    const/4 v0, 0x1

    invoke-static {p0, v0}, Lcom/android/stk/StkAppInstaller;->setAppState(Landroid/content/Context;Z)V

    .line 43
    return-void
.end method

.method private static setAppState(Landroid/content/Context;Z)V
    .locals 10
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "install"    # Z

    .prologue
    const/4 v7, 0x2

    const/4 v6, 0x1

    .line 52
    const-string/jumbo v8, "StkAppInstaller"

    const-string/jumbo v9, "[setAppState]+"

    invoke-static {v8, v9}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 53
    if-nez p0, :cond_0

    .line 54
    const-string/jumbo v6, "StkAppInstaller"

    const-string/jumbo v7, "[setAppState]- no context, just return."

    invoke-static {v6, v7}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 55
    return-void

    .line 57
    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    .line 58
    .local v4, "pm":Landroid/content/pm/PackageManager;
    if-nez v4, :cond_1

    .line 59
    const-string/jumbo v6, "StkAppInstaller"

    const-string/jumbo v7, "[setAppState]- no package manager, just return."

    invoke-static {v6, v7}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 60
    return-void

    .line 63
    :cond_1
    if-eqz p1, :cond_2

    .line 66
    new-instance v0, Landroid/content/ComponentName;

    const-string/jumbo v8, "com.android.stk"

    .line 67
    const-string/jumbo v9, "com.android.stk.StkLauncherActivity"

    .line 66
    invoke-direct {v0, v8, v9}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 68
    .local v0, "cLauncherName":Landroid/content/ComponentName;
    invoke-virtual {v4, v0}, Landroid/content/pm/PackageManager;->getComponentEnabledSetting(Landroid/content/ComponentName;)I

    move-result v8

    if-ne v8, v7, :cond_2

    .line 72
    const/4 v8, 0x1

    const/4 v9, 0x1

    .line 71
    :try_start_0
    invoke-virtual {v4, v0, v8, v9}, Landroid/content/pm/PackageManager;->setComponentEnabledSetting(Landroid/content/ComponentName;II)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 79
    .end local v0    # "cLauncherName":Landroid/content/ComponentName;
    :cond_2
    :goto_0
    new-instance v2, Landroid/content/ComponentName;

    const-string/jumbo v8, "com.android.stk"

    const-string/jumbo v9, "com.android.stk.StkMain"

    invoke-direct {v2, v8, v9}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 81
    .local v2, "cName":Landroid/content/ComponentName;
    new-instance v1, Landroid/content/ComponentName;

    const-string/jumbo v8, "com.android.stk"

    const-string/jumbo v9, "com.android.stk.StkMenuActivity"

    invoke-direct {v1, v8, v9}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 82
    .local v1, "cMenuActivityName":Landroid/content/ComponentName;
    if-eqz p1, :cond_4

    move v5, v6

    .line 85
    .local v5, "state":I
    :goto_1
    if-ne v6, v5, :cond_5

    .line 87
    invoke-virtual {v4, v2}, Landroid/content/pm/PackageManager;->getComponentEnabledSetting(Landroid/content/ComponentName;)I

    move-result v8

    .line 86
    if-ne v6, v8, :cond_5

    .line 91
    :cond_3
    const-string/jumbo v6, "StkAppInstaller"

    const-string/jumbo v7, "Need not change app state!!"

    invoke-static {v6, v7}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 109
    :goto_2
    const-string/jumbo v6, "StkAppInstaller"

    const-string/jumbo v7, "[setAppState]-"

    invoke-static {v6, v7}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 51
    return-void

    .line 73
    .end local v1    # "cMenuActivityName":Landroid/content/ComponentName;
    .end local v2    # "cName":Landroid/content/ComponentName;
    .end local v5    # "state":I
    .restart local v0    # "cLauncherName":Landroid/content/ComponentName;
    :catch_0
    move-exception v3

    .line 74
    .local v3, "e":Ljava/lang/Exception;
    const-string/jumbo v8, "StkAppInstaller"

    const-string/jumbo v9, "Could not change StkLauncherActivity state"

    invoke-static {v8, v9}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .end local v0    # "cLauncherName":Landroid/content/ComponentName;
    .end local v3    # "e":Ljava/lang/Exception;
    .restart local v1    # "cMenuActivityName":Landroid/content/ComponentName;
    .restart local v2    # "cName":Landroid/content/ComponentName;
    :cond_4
    move v5, v7

    .line 83
    goto :goto_1

    .line 88
    .restart local v5    # "state":I
    :cond_5
    if-ne v7, v5, :cond_6

    .line 90
    invoke-virtual {v4, v2}, Landroid/content/pm/PackageManager;->getComponentEnabledSetting(Landroid/content/ComponentName;)I

    move-result v6

    .line 89
    if-eq v7, v6, :cond_3

    .line 93
    :cond_6
    const-string/jumbo v6, "StkAppInstaller"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "Change app state["

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, "]"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 97
    if-eqz p1, :cond_7

    .line 98
    const/4 v6, 0x1

    :try_start_1
    invoke-virtual {v4, v2, v5, v6}, Landroid/content/pm/PackageManager;->setComponentEnabledSetting(Landroid/content/ComponentName;II)V

    .line 99
    const/4 v6, 0x1

    invoke-virtual {v4, v1, v5, v6}, Landroid/content/pm/PackageManager;->setComponentEnabledSetting(Landroid/content/ComponentName;II)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_2

    .line 105
    :catch_1
    move-exception v3

    .line 106
    .restart local v3    # "e":Ljava/lang/Exception;
    const-string/jumbo v6, "StkAppInstaller"

    const-string/jumbo v7, "Could not change STK app state"

    invoke-static {v6, v7}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    .line 101
    .end local v3    # "e":Ljava/lang/Exception;
    :cond_7
    const/4 v6, 0x0

    :try_start_2
    invoke-virtual {v4, v2, v5, v6}, Landroid/content/pm/PackageManager;->setComponentEnabledSetting(Landroid/content/ComponentName;II)V

    .line 102
    const/4 v6, 0x0

    invoke-virtual {v4, v1, v5, v6}, Landroid/content/pm/PackageManager;->setComponentEnabledSetting(Landroid/content/ComponentName;II)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_2
.end method

.method public static unInstall(Landroid/content/Context;)V
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 48
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/android/stk/StkAppInstaller;->setAppState(Landroid/content/Context;Z)V

    .line 47
    return-void
.end method
