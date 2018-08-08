.class public Lcom/baidu/mobstat/PrefOperate;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getAppKey(Landroid/content/Context;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 103
    invoke-static {}, Lcom/baidu/mobstat/CooperService;->instance()Lcom/baidu/mobstat/CooperService;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/baidu/mobstat/CooperService;->getAppKey(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static loadMetaDataConfig(Landroid/content/Context;)V
    .locals 4

    .prologue
    const/16 v3, 0x18

    .line 12
    sget-object v0, Lcom/baidu/mobstat/SendStrategyEnum;->APP_START:Lcom/baidu/mobstat/SendStrategyEnum;

    :try_start_0
    const-string/jumbo v1, ""

    const-string/jumbo v1, "BaiduMobAd_EXCEPTION_LOG"

    .line 18
    invoke-static {p0, v1}, Lcom/baidu/mobstat/ff;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 22
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    if-eqz v2, :cond_4

    :cond_0
    :goto_0
    :try_start_1
    const-string/jumbo v1, ""

    const-string/jumbo v1, "BaiduMobAd_SEND_STRATEGY"

    .line 33
    invoke-static {p0, v1}, Lcom/baidu/mobstat/ff;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 37
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-result v2

    if-eqz v2, :cond_5

    :cond_1
    :goto_1
    :try_start_2
    const-string/jumbo v1, ""

    const-string/jumbo v1, "BaiduMobAd_TIME_INTERVAL"

    .line 62
    invoke-static {p0, v1}, Lcom/baidu/mobstat/ff;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 66
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    move-result v2

    if-eqz v2, :cond_8

    :cond_2
    :goto_2
    :try_start_3
    const-string/jumbo v0, ""

    const-string/jumbo v0, "BaiduMobAd_ONLY_WIFI"

    .line 81
    invoke-static {p0, v0}, Lcom/baidu/mobstat/ff;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 85
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3

    move-result v1

    if-eqz v1, :cond_9

    .line 96
    :cond_3
    :goto_3
    return-void

    :cond_4
    :try_start_4
    const-string/jumbo v2, "true"

    .line 22
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 23
    invoke-static {}, Lcom/baidu/mobstat/ExceptionAnalysis;->getInstance()Lcom/baidu/mobstat/ExceptionAnalysis;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, p0, v2}, Lcom/baidu/mobstat/ExceptionAnalysis;->openExceptionAnalysis(Landroid/content/Context;Z)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    goto :goto_0

    .line 28
    :catch_0
    move-exception v1

    goto :goto_0

    .line 38
    :cond_5
    :try_start_5
    sget-object v2, Lcom/baidu/mobstat/SendStrategyEnum;->APP_START:Lcom/baidu/mobstat/SendStrategyEnum;

    invoke-virtual {v2}, Lcom/baidu/mobstat/SendStrategyEnum;->name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_6

    .line 42
    sget-object v2, Lcom/baidu/mobstat/SendStrategyEnum;->ONCE_A_DAY:Lcom/baidu/mobstat/SendStrategyEnum;

    invoke-virtual {v2}, Lcom/baidu/mobstat/SendStrategyEnum;->name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_7

    .line 48
    sget-object v2, Lcom/baidu/mobstat/SendStrategyEnum;->SET_TIME_INTERVAL:Lcom/baidu/mobstat/SendStrategyEnum;

    .line 49
    invoke-virtual {v2}, Lcom/baidu/mobstat/SendStrategyEnum;->name()Ljava/lang/String;

    move-result-object v2

    .line 48
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 50
    sget-object v0, Lcom/baidu/mobstat/SendStrategyEnum;->SET_TIME_INTERVAL:Lcom/baidu/mobstat/SendStrategyEnum;

    .line 51
    invoke-static {}, Lcom/baidu/mobstat/BasicStoreTools;->getInstance()Lcom/baidu/mobstat/BasicStoreTools;

    move-result-object v1

    .line 52
    invoke-virtual {v0}, Lcom/baidu/mobstat/SendStrategyEnum;->ordinal()I

    move-result v2

    .line 51
    invoke-virtual {v1, p0, v2}, Lcom/baidu/mobstat/BasicStoreTools;->setSendStrategy(Landroid/content/Context;I)V

    goto :goto_1

    .line 57
    :catch_1
    move-exception v1

    goto :goto_1

    .line 39
    :cond_6
    sget-object v0, Lcom/baidu/mobstat/SendStrategyEnum;->APP_START:Lcom/baidu/mobstat/SendStrategyEnum;

    .line 40
    invoke-static {}, Lcom/baidu/mobstat/BasicStoreTools;->getInstance()Lcom/baidu/mobstat/BasicStoreTools;

    move-result-object v1

    .line 41
    invoke-virtual {v0}, Lcom/baidu/mobstat/SendStrategyEnum;->ordinal()I

    move-result v2

    .line 40
    invoke-virtual {v1, p0, v2}, Lcom/baidu/mobstat/BasicStoreTools;->setSendStrategy(Landroid/content/Context;I)V

    goto :goto_1

    .line 43
    :cond_7
    sget-object v0, Lcom/baidu/mobstat/SendStrategyEnum;->ONCE_A_DAY:Lcom/baidu/mobstat/SendStrategyEnum;

    .line 44
    invoke-static {}, Lcom/baidu/mobstat/BasicStoreTools;->getInstance()Lcom/baidu/mobstat/BasicStoreTools;

    move-result-object v1

    .line 45
    invoke-virtual {v0}, Lcom/baidu/mobstat/SendStrategyEnum;->ordinal()I

    move-result v2

    .line 44
    invoke-virtual {v1, p0, v2}, Lcom/baidu/mobstat/BasicStoreTools;->setSendStrategy(Landroid/content/Context;I)V

    .line 46
    invoke-static {}, Lcom/baidu/mobstat/BasicStoreTools;->getInstance()Lcom/baidu/mobstat/BasicStoreTools;

    move-result-object v1

    const/16 v2, 0x18

    invoke-virtual {v1, p0, v2}, Lcom/baidu/mobstat/BasicStoreTools;->setSendStrategyTime(Landroid/content/Context;I)V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_1

    goto/16 :goto_1

    .line 67
    :cond_8
    :try_start_6
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    .line 68
    invoke-virtual {v0}, Lcom/baidu/mobstat/SendStrategyEnum;->ordinal()I

    move-result v0

    sget-object v2, Lcom/baidu/mobstat/SendStrategyEnum;->SET_TIME_INTERVAL:Lcom/baidu/mobstat/SendStrategyEnum;

    .line 69
    invoke-virtual {v2}, Lcom/baidu/mobstat/SendStrategyEnum;->ordinal()I

    move-result v2

    if-ne v0, v2, :cond_2

    if-lez v1, :cond_2

    if-gt v1, v3, :cond_2

    .line 70
    invoke-static {}, Lcom/baidu/mobstat/BasicStoreTools;->getInstance()Lcom/baidu/mobstat/BasicStoreTools;

    move-result-object v0

    invoke-virtual {v0, p0, v1}, Lcom/baidu/mobstat/BasicStoreTools;->setSendStrategyTime(Landroid/content/Context;I)V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_2

    goto/16 :goto_2

    .line 76
    :catch_2
    move-exception v0

    goto/16 :goto_2

    :cond_9
    :try_start_7
    const-string/jumbo v1, "true"

    .line 86
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_a

    const-string/jumbo v1, "false"

    .line 88
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 89
    invoke-static {}, Lcom/baidu/mobstat/BasicStoreTools;->getInstance()Lcom/baidu/mobstat/BasicStoreTools;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1}, Lcom/baidu/mobstat/BasicStoreTools;->setOnlyWifi(Landroid/content/Context;Z)V

    goto/16 :goto_3

    .line 94
    :catch_3
    move-exception v0

    goto/16 :goto_3

    .line 87
    :cond_a
    invoke-static {}, Lcom/baidu/mobstat/BasicStoreTools;->getInstance()Lcom/baidu/mobstat/BasicStoreTools;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, p0, v1}, Lcom/baidu/mobstat/BasicStoreTools;->setOnlyWifi(Landroid/content/Context;Z)V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_3

    goto/16 :goto_3
.end method

.method public static setAppChannel(Landroid/content/Context;Ljava/lang/String;Z)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 130
    if-nez p1, :cond_2

    .line 131
    :cond_0
    invoke-static {}, Lcom/baidu/mobstat/eh;->c()Lcom/baidu/mobstat/eh;

    move-result-object v0

    const-string/jumbo v1, "[WARNING] The channel you have set is empty"

    .line 132
    invoke-virtual {v0, v1}, Lcom/baidu/mobstat/eh;->c(Ljava/lang/String;)V

    .line 134
    :goto_0
    invoke-static {}, Lcom/baidu/mobstat/CooperService;->instance()Lcom/baidu/mobstat/CooperService;

    move-result-object v0

    invoke-virtual {v0}, Lcom/baidu/mobstat/CooperService;->getHeadObject()Lcom/baidu/mobstat/HeadObject;

    move-result-object v0

    iput-object p1, v0, Lcom/baidu/mobstat/HeadObject;->l:Ljava/lang/String;

    .line 135
    if-nez p2, :cond_3

    .line 141
    :cond_1
    :goto_1
    if-eqz p2, :cond_4

    .line 148
    :goto_2
    return-void

    :cond_2
    const-string/jumbo v0, ""

    .line 130
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 135
    :cond_3
    if-eqz p1, :cond_1

    const-string/jumbo v0, ""

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 136
    invoke-static {}, Lcom/baidu/mobstat/BasicStoreTools;->getInstance()Lcom/baidu/mobstat/BasicStoreTools;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/baidu/mobstat/BasicStoreTools;->setAppChannelWithPreference(Landroid/content/Context;Ljava/lang/String;)V

    .line 138
    invoke-static {}, Lcom/baidu/mobstat/BasicStoreTools;->getInstance()Lcom/baidu/mobstat/BasicStoreTools;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, p0, v1}, Lcom/baidu/mobstat/BasicStoreTools;->setAppChannelWithCode(Landroid/content/Context;Z)V

    goto :goto_1

    .line 144
    :cond_4
    invoke-static {}, Lcom/baidu/mobstat/BasicStoreTools;->getInstance()Lcom/baidu/mobstat/BasicStoreTools;

    move-result-object v0

    const-string/jumbo v1, ""

    invoke-virtual {v0, p0, v1}, Lcom/baidu/mobstat/BasicStoreTools;->setAppChannelWithPreference(Landroid/content/Context;Ljava/lang/String;)V

    .line 146
    invoke-static {}, Lcom/baidu/mobstat/BasicStoreTools;->getInstance()Lcom/baidu/mobstat/BasicStoreTools;

    move-result-object v0

    invoke-virtual {v0, p0, v2}, Lcom/baidu/mobstat/BasicStoreTools;->setAppChannelWithCode(Landroid/content/Context;Z)V

    goto :goto_2
.end method

.method public static setAppChannel(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 112
    if-nez p0, :cond_1

    .line 113
    :cond_0
    invoke-static {}, Lcom/baidu/mobstat/eh;->c()Lcom/baidu/mobstat/eh;

    move-result-object v0

    const-string/jumbo v1, "[WARNING] The channel you have set is empty"

    .line 114
    invoke-virtual {v0, v1}, Lcom/baidu/mobstat/eh;->c(Ljava/lang/String;)V

    .line 117
    :goto_0
    invoke-static {}, Lcom/baidu/mobstat/CooperService;->instance()Lcom/baidu/mobstat/CooperService;

    move-result-object v0

    invoke-virtual {v0}, Lcom/baidu/mobstat/CooperService;->getHeadObject()Lcom/baidu/mobstat/HeadObject;

    move-result-object v0

    iput-object p0, v0, Lcom/baidu/mobstat/HeadObject;->l:Ljava/lang/String;

    .line 118
    return-void

    :cond_1
    const-string/jumbo v0, ""

    .line 112
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0
.end method

.method public static setAppKey(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 99
    invoke-static {}, Lcom/baidu/mobstat/CooperService;->instance()Lcom/baidu/mobstat/CooperService;

    move-result-object v0

    invoke-virtual {v0}, Lcom/baidu/mobstat/CooperService;->getHeadObject()Lcom/baidu/mobstat/HeadObject;

    move-result-object v0

    iput-object p0, v0, Lcom/baidu/mobstat/HeadObject;->e:Ljava/lang/String;

    .line 100
    return-void
.end method
