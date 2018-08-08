.class public Lcom/baidu/mobstat/HeadObject;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field A:Lorg/json/JSONObject;

.field B:Ljava/lang/String;

.field a:Z

.field b:Ljava/lang/String;

.field c:Ljava/lang/String;

.field d:Ljava/lang/String;

.field e:Ljava/lang/String;

.field f:Ljava/lang/String;

.field g:I

.field h:Ljava/lang/String;

.field i:Ljava/lang/String;

.field j:I

.field k:I

.field l:Ljava/lang/String;

.field m:Ljava/lang/String;

.field n:Ljava/lang/String;

.field o:Ljava/lang/String;

.field p:Ljava/lang/String;

.field q:Ljava/lang/String;

.field r:Ljava/lang/String;

.field s:Ljava/lang/String;

.field t:Ljava/lang/String;

.field u:Ljava/lang/String;

.field v:Ljava/lang/String;

.field w:Ljava/lang/String;

.field x:Ljava/lang/String;

.field y:Ljava/lang/String;

.field z:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/baidu/mobstat/HeadObject;->a:Z

    const-string/jumbo v0, "0"

    .line 21
    iput-object v0, p0, Lcom/baidu/mobstat/HeadObject;->d:Ljava/lang/String;

    .line 22
    iput-object v1, p0, Lcom/baidu/mobstat/HeadObject;->e:Ljava/lang/String;

    .line 23
    iput-object v1, p0, Lcom/baidu/mobstat/HeadObject;->f:Ljava/lang/String;

    const/4 v0, -0x1

    .line 25
    iput v0, p0, Lcom/baidu/mobstat/HeadObject;->g:I

    .line 30
    iput-object v1, p0, Lcom/baidu/mobstat/HeadObject;->l:Ljava/lang/String;

    return-void
.end method

.method private declared-synchronized a(Landroid/content/Context;)V
    .locals 3

    .prologue
    monitor-enter p0

    .line 73
    :try_start_0
    iget-boolean v0, p0, Lcom/baidu/mobstat/HeadObject;->a:Z

    if-nez v0, :cond_0

    const-string/jumbo v0, "android.permission.READ_PHONE_STATE"

    .line 77
    invoke-static {p1, v0}, Lcom/baidu/mobstat/ex;->e(Landroid/content/Context;Ljava/lang/String;)Z

    const-string/jumbo v0, "android.permission.INTERNET"

    .line 78
    invoke-static {p1, v0}, Lcom/baidu/mobstat/ex;->e(Landroid/content/Context;Ljava/lang/String;)Z

    const-string/jumbo v0, "android.permission.ACCESS_NETWORK_STATE"

    .line 79
    invoke-static {p1, v0}, Lcom/baidu/mobstat/ex;->e(Landroid/content/Context;Ljava/lang/String;)Z

    const-string/jumbo v0, "android.permission.WRITE_SETTINGS"

    .line 80
    invoke-static {p1, v0}, Lcom/baidu/mobstat/ex;->e(Landroid/content/Context;Ljava/lang/String;)Z

    const-string/jumbo v0, "phone"

    .line 82
    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    .line 84
    invoke-static {}, Lcom/baidu/mobstat/CooperService;->instance()Lcom/baidu/mobstat/CooperService;

    move-result-object v1

    invoke-virtual {v1}, Lcom/baidu/mobstat/CooperService;->getOSVersion()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/baidu/mobstat/HeadObject;->b:Ljava/lang/String;

    .line 85
    invoke-static {}, Lcom/baidu/mobstat/CooperService;->instance()Lcom/baidu/mobstat/CooperService;

    move-result-object v1

    invoke-virtual {v1}, Lcom/baidu/mobstat/CooperService;->getOSSysVersion()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/baidu/mobstat/HeadObject;->c:Ljava/lang/String;

    .line 86
    invoke-static {}, Lcom/baidu/mobstat/CooperService;->instance()Lcom/baidu/mobstat/CooperService;

    move-result-object v1

    invoke-virtual {v1}, Lcom/baidu/mobstat/CooperService;->getPhoneModel()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/baidu/mobstat/HeadObject;->n:Ljava/lang/String;

    .line 87
    invoke-static {}, Lcom/baidu/mobstat/CooperService;->instance()Lcom/baidu/mobstat/CooperService;

    move-result-object v1

    invoke-virtual {v1}, Lcom/baidu/mobstat/CooperService;->getManufacturer()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/baidu/mobstat/HeadObject;->o:Ljava/lang/String;

    .line 89
    invoke-static {}, Lcom/baidu/mobstat/CooperService;->instance()Lcom/baidu/mobstat/CooperService;

    move-result-object v1

    invoke-virtual {v1}, Lcom/baidu/mobstat/CooperService;->getUUID()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/baidu/mobstat/HeadObject;->z:Ljava/lang/String;

    .line 91
    invoke-static {}, Lcom/baidu/mobstat/CooperService;->instance()Lcom/baidu/mobstat/CooperService;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/baidu/mobstat/CooperService;->getHeaderExt(Landroid/content/Context;)Lorg/json/JSONObject;

    move-result-object v1

    iput-object v1, p0, Lcom/baidu/mobstat/HeadObject;->A:Lorg/json/JSONObject;

    .line 92
    invoke-static {}, Lcom/baidu/mobstat/CooperService;->instance()Lcom/baidu/mobstat/CooperService;

    move-result-object v1

    invoke-virtual {v1, v0, p1}, Lcom/baidu/mobstat/CooperService;->getDeviceId(Landroid/telephony/TelephonyManager;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/baidu/mobstat/HeadObject;->i:Ljava/lang/String;

    .line 93
    invoke-static {}, Lcom/baidu/mobstat/BasicStoreTools;->getInstance()Lcom/baidu/mobstat/BasicStoreTools;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/baidu/mobstat/BasicStoreTools;->getForTV(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string/jumbo v1, "0"

    :goto_0
    iput-object v1, p0, Lcom/baidu/mobstat/HeadObject;->d:Ljava/lang/String;

    .line 95
    invoke-static {p1}, Lcom/baidu/mobstat/ff;->w(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 100
    :goto_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/baidu/mobstat/HeadObject;->d:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "-0"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/baidu/mobstat/HeadObject;->d:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 104
    :try_start_1
    invoke-static {}, Lcom/baidu/mobstat/CooperService;->instance()Lcom/baidu/mobstat/CooperService;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/baidu/mobstat/CooperService;->isDeviceMacEnabled(Landroid/content/Context;)Z

    move-result v1

    .line 105
    invoke-static {}, Lcom/baidu/mobstat/CooperService;->instance()Lcom/baidu/mobstat/CooperService;

    move-result-object v2

    invoke-virtual {v2, p1, v1}, Lcom/baidu/mobstat/CooperService;->getMacAddress(Landroid/content/Context;Z)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/baidu/mobstat/HeadObject;->s:Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_8
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_2
    const/4 v1, 0x1

    .line 111
    :try_start_2
    invoke-static {v1, p1}, Lcom/baidu/mobstat/ff;->f(ILandroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/baidu/mobstat/HeadObject;->u:Ljava/lang/String;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_7
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :goto_3
    const/4 v1, 0x1

    .line 117
    :try_start_3
    invoke-static {p1, v1}, Lcom/baidu/mobstat/ff;->a(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/baidu/mobstat/HeadObject;->v:Ljava/lang/String;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_6
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 122
    :goto_4
    :try_start_4
    invoke-static {}, Lcom/baidu/mobstat/CooperService;->instance()Lcom/baidu/mobstat/CooperService;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, p1, v2}, Lcom/baidu/mobstat/CooperService;->getCUID(Landroid/content/Context;Z)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/baidu/mobstat/HeadObject;->f:Ljava/lang/String;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 129
    :try_start_5
    invoke-static {}, Lcom/baidu/mobstat/CooperService;->instance()Lcom/baidu/mobstat/CooperService;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/baidu/mobstat/CooperService;->getOperator(Landroid/telephony/TelephonyManager;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/baidu/mobstat/HeadObject;->m:Ljava/lang/String;
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 135
    :goto_5
    :try_start_6
    invoke-static {p1}, Lcom/baidu/mobstat/ff;->c(Landroid/content/Context;)I

    move-result v0

    iput v0, p0, Lcom/baidu/mobstat/HeadObject;->j:I

    .line 136
    invoke-static {p1}, Lcom/baidu/mobstat/ff;->d(Landroid/content/Context;)I

    move-result v0

    iput v0, p0, Lcom/baidu/mobstat/HeadObject;->k:I

    .line 137
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    .line 138
    iget v0, v0, Landroid/content/res/Configuration;->orientation:I
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_0
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    const/4 v1, 0x2

    .line 139
    if-eq v0, v1, :cond_3

    .line 148
    :goto_6
    :try_start_7
    invoke-static {}, Lcom/baidu/mobstat/CooperService;->instance()Lcom/baidu/mobstat/CooperService;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/baidu/mobstat/CooperService;->getAppChannel(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/baidu/mobstat/HeadObject;->l:Ljava/lang/String;

    .line 149
    invoke-static {}, Lcom/baidu/mobstat/CooperService;->instance()Lcom/baidu/mobstat/CooperService;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/baidu/mobstat/CooperService;->getAppKey(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/baidu/mobstat/HeadObject;->e:Ljava/lang/String;
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 152
    :try_start_8
    invoke-static {}, Lcom/baidu/mobstat/CooperService;->instance()Lcom/baidu/mobstat/CooperService;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/baidu/mobstat/CooperService;->getAppVersionCode(Landroid/content/Context;)I

    move-result v0

    iput v0, p0, Lcom/baidu/mobstat/HeadObject;->g:I

    .line 153
    invoke-static {}, Lcom/baidu/mobstat/CooperService;->instance()Lcom/baidu/mobstat/CooperService;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/baidu/mobstat/CooperService;->getAppVersionName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/baidu/mobstat/HeadObject;->h:Ljava/lang/String;
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_4
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    .line 159
    :goto_7
    :try_start_9
    invoke-static {}, Lcom/baidu/mobstat/CooperService;->instance()Lcom/baidu/mobstat/CooperService;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/baidu/mobstat/CooperService;->checkCellLocationSetting(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_4

    const-string/jumbo v0, "0_0_0"

    .line 162
    iput-object v0, p0, Lcom/baidu/mobstat/HeadObject;->p:Ljava/lang/String;
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_1
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    .line 169
    :goto_8
    :try_start_a
    invoke-static {}, Lcom/baidu/mobstat/CooperService;->instance()Lcom/baidu/mobstat/CooperService;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/baidu/mobstat/CooperService;->checkGPSLocationSetting(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_5

    const-string/jumbo v0, ""

    .line 172
    iput-object v0, p0, Lcom/baidu/mobstat/HeadObject;->q:Ljava/lang/String;
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_2
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    .line 179
    :goto_9
    :try_start_b
    invoke-static {}, Lcom/baidu/mobstat/CooperService;->instance()Lcom/baidu/mobstat/CooperService;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/baidu/mobstat/CooperService;->getLinkedWay(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/baidu/mobstat/HeadObject;->r:Ljava/lang/String;
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_3
    .catchall {:try_start_b .. :try_end_b} :catchall_0

    .line 185
    :goto_a
    :try_start_c
    invoke-static {}, Lcom/baidu/mobstat/ff;->b()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/baidu/mobstat/HeadObject;->w:Ljava/lang/String;

    .line 188
    sget-object v0, Landroid/os/Build;->BOARD:Ljava/lang/String;

    iput-object v0, p0, Lcom/baidu/mobstat/HeadObject;->x:Ljava/lang/String;

    .line 189
    sget-object v0, Landroid/os/Build;->BRAND:Ljava/lang/String;

    iput-object v0, p0, Lcom/baidu/mobstat/HeadObject;->y:Ljava/lang/String;

    .line 191
    invoke-static {}, Lcom/baidu/mobstat/CooperService;->instance()Lcom/baidu/mobstat/CooperService;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/baidu/mobstat/CooperService;->getUserId(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/baidu/mobstat/HeadObject;->B:Ljava/lang/String;

    .line 193
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/baidu/mobstat/HeadObject;->a:Z
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_0

    monitor-exit p0

    .line 194
    return-void

    :cond_0
    monitor-exit p0

    .line 74
    return-void

    :cond_1
    :try_start_d
    const-string/jumbo v1, "1"

    goto/16 :goto_0

    :cond_2
    const-string/jumbo v1, "2"

    .line 96
    iput-object v1, p0, Lcom/baidu/mobstat/HeadObject;->d:Ljava/lang/String;
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_0

    goto/16 :goto_1

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 140
    :cond_3
    :try_start_e
    iget v0, p0, Lcom/baidu/mobstat/HeadObject;->j:I

    iget v1, p0, Lcom/baidu/mobstat/HeadObject;->k:I

    xor-int/2addr v0, v1

    iput v0, p0, Lcom/baidu/mobstat/HeadObject;->j:I

    .line 141
    iget v0, p0, Lcom/baidu/mobstat/HeadObject;->j:I

    iget v1, p0, Lcom/baidu/mobstat/HeadObject;->k:I

    xor-int/2addr v0, v1

    iput v0, p0, Lcom/baidu/mobstat/HeadObject;->k:I

    .line 142
    iget v0, p0, Lcom/baidu/mobstat/HeadObject;->j:I

    iget v1, p0, Lcom/baidu/mobstat/HeadObject;->k:I

    xor-int/2addr v0, v1

    iput v0, p0, Lcom/baidu/mobstat/HeadObject;->j:I
    :try_end_e
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_e} :catch_0
    .catchall {:try_start_e .. :try_end_e} :catchall_0

    goto/16 :goto_6

    .line 146
    :catch_0
    move-exception v0

    goto/16 :goto_6

    .line 160
    :cond_4
    :try_start_f
    invoke-static {p1}, Lcom/baidu/mobstat/ff;->i(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/baidu/mobstat/HeadObject;->p:Ljava/lang/String;
    :try_end_f
    .catch Ljava/lang/Exception; {:try_start_f .. :try_end_f} :catch_1
    .catchall {:try_start_f .. :try_end_f} :catchall_0

    goto :goto_8

    .line 166
    :catch_1
    move-exception v0

    goto :goto_8

    .line 170
    :cond_5
    :try_start_10
    invoke-static {p1}, Lcom/baidu/mobstat/ff;->j(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/baidu/mobstat/HeadObject;->q:Ljava/lang/String;
    :try_end_10
    .catch Ljava/lang/Exception; {:try_start_10 .. :try_end_10} :catch_2
    .catchall {:try_start_10 .. :try_end_10} :catchall_0

    goto :goto_9

    .line 176
    :catch_2
    move-exception v0

    goto :goto_9

    .line 182
    :catch_3
    move-exception v0

    goto :goto_a

    .line 156
    :catch_4
    move-exception v0

    goto/16 :goto_7

    .line 132
    :catch_5
    move-exception v0

    goto/16 :goto_5

    .line 120
    :catch_6
    move-exception v1

    goto/16 :goto_4

    .line 114
    :catch_7
    move-exception v1

    goto/16 :goto_3

    .line 108
    :catch_8
    move-exception v1

    goto/16 :goto_2
.end method


# virtual methods
.method public declared-synchronized installHeader(Landroid/content/Context;Lorg/json/JSONObject;)V
    .locals 2

    .prologue
    monitor-enter p0

    .line 59
    :try_start_0
    invoke-direct {p0, p1}, Lcom/baidu/mobstat/HeadObject;->a(Landroid/content/Context;)V

    .line 62
    invoke-virtual {p2}, Lorg/json/JSONObject;->length()I

    move-result v0

    const/16 v1, 0xa

    if-gt v0, v1, :cond_0

    .line 66
    invoke-virtual {p0, p1, p2}, Lcom/baidu/mobstat/HeadObject;->updateHeader(Landroid/content/Context;Lorg/json/JSONObject;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    .line 67
    return-void

    :cond_0
    monitor-exit p0

    .line 63
    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public setHeaderExt(Lorg/json/JSONObject;)V
    .locals 0

    .prologue
    .line 262
    iput-object p1, p0, Lcom/baidu/mobstat/HeadObject;->A:Lorg/json/JSONObject;

    .line 263
    return-void
.end method

.method public setUserId(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 266
    iput-object p1, p0, Lcom/baidu/mobstat/HeadObject;->B:Ljava/lang/String;

    .line 267
    return-void
.end method

.method public declared-synchronized updateHeader(Landroid/content/Context;Lorg/json/JSONObject;)V
    .locals 4

    .prologue
    const/4 v1, 0x0

    monitor-enter p0

    :try_start_0
    const-string/jumbo v2, "o"

    const-string/jumbo v0, "Android"

    .line 198
    if-eqz v0, :cond_1

    const-string/jumbo v0, "Android"

    :goto_0
    invoke-virtual {p2, v2, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string/jumbo v0, "st"

    const/4 v2, 0x0

    .line 199
    invoke-virtual {p2, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string/jumbo v2, "s"

    .line 200
    iget-object v0, p0, Lcom/baidu/mobstat/HeadObject;->b:Ljava/lang/String;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/baidu/mobstat/HeadObject;->b:Ljava/lang/String;

    :goto_1
    invoke-virtual {p2, v2, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string/jumbo v2, "sv"

    .line 201
    iget-object v0, p0, Lcom/baidu/mobstat/HeadObject;->c:Ljava/lang/String;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/baidu/mobstat/HeadObject;->c:Ljava/lang/String;

    :goto_2
    invoke-virtual {p2, v2, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string/jumbo v2, "k"

    .line 202
    iget-object v0, p0, Lcom/baidu/mobstat/HeadObject;->e:Ljava/lang/String;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/baidu/mobstat/HeadObject;->e:Ljava/lang/String;

    :goto_3
    invoke-virtual {p2, v2, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string/jumbo v2, "pt"

    .line 203
    iget-object v0, p0, Lcom/baidu/mobstat/HeadObject;->d:Ljava/lang/String;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/baidu/mobstat/HeadObject;->d:Ljava/lang/String;

    :goto_4
    invoke-virtual {p2, v2, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string/jumbo v0, "i"

    const-string/jumbo v2, ""

    .line 204
    invoke-virtual {p2, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string/jumbo v0, "v"

    const-string/jumbo v2, "3.9.0.6"

    .line 205
    invoke-virtual {p2, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string/jumbo v0, "sc"

    const/4 v2, 0x0

    .line 206
    invoke-virtual {p2, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string/jumbo v0, "a"

    .line 207
    iget v2, p0, Lcom/baidu/mobstat/HeadObject;->g:I

    invoke-virtual {p2, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string/jumbo v2, "n"

    .line 208
    iget-object v0, p0, Lcom/baidu/mobstat/HeadObject;->h:Ljava/lang/String;

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/baidu/mobstat/HeadObject;->h:Ljava/lang/String;

    :goto_5
    invoke-virtual {p2, v2, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string/jumbo v0, "d"

    const-string/jumbo v2, ""

    .line 209
    invoke-virtual {p2, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string/jumbo v2, "mc"

    .line 210
    iget-object v0, p0, Lcom/baidu/mobstat/HeadObject;->s:Ljava/lang/String;

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/baidu/mobstat/HeadObject;->s:Ljava/lang/String;

    :goto_6
    invoke-virtual {p2, v2, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string/jumbo v2, "bm"

    .line 211
    iget-object v0, p0, Lcom/baidu/mobstat/HeadObject;->u:Ljava/lang/String;

    if-eqz v0, :cond_8

    iget-object v0, p0, Lcom/baidu/mobstat/HeadObject;->u:Ljava/lang/String;

    :goto_7
    invoke-virtual {p2, v2, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string/jumbo v2, "dd"

    .line 212
    iget-object v0, p0, Lcom/baidu/mobstat/HeadObject;->i:Ljava/lang/String;

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/baidu/mobstat/HeadObject;->i:Ljava/lang/String;

    :goto_8
    invoke-virtual {p2, v2, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string/jumbo v2, "ii"

    .line 213
    iget-object v0, p0, Lcom/baidu/mobstat/HeadObject;->f:Ljava/lang/String;

    if-eqz v0, :cond_a

    iget-object v0, p0, Lcom/baidu/mobstat/HeadObject;->f:Ljava/lang/String;

    :goto_9
    invoke-virtual {p2, v2, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string/jumbo v0, "tg"

    const/4 v2, 0x1

    .line 214
    invoke-virtual {p2, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string/jumbo v0, "w"

    .line 215
    iget v2, p0, Lcom/baidu/mobstat/HeadObject;->j:I

    invoke-virtual {p2, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string/jumbo v0, "h"

    .line 216
    iget v2, p0, Lcom/baidu/mobstat/HeadObject;->k:I

    invoke-virtual {p2, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string/jumbo v2, "dn"

    .line 217
    iget-object v0, p0, Lcom/baidu/mobstat/HeadObject;->v:Ljava/lang/String;

    if-eqz v0, :cond_b

    iget-object v0, p0, Lcom/baidu/mobstat/HeadObject;->v:Ljava/lang/String;

    :goto_a
    invoke-virtual {p2, v2, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string/jumbo v2, "c"

    .line 218
    iget-object v0, p0, Lcom/baidu/mobstat/HeadObject;->l:Ljava/lang/String;

    if-eqz v0, :cond_c

    iget-object v0, p0, Lcom/baidu/mobstat/HeadObject;->l:Ljava/lang/String;

    :goto_b
    invoke-virtual {p2, v2, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string/jumbo v2, "op"

    .line 219
    iget-object v0, p0, Lcom/baidu/mobstat/HeadObject;->m:Ljava/lang/String;

    if-eqz v0, :cond_d

    iget-object v0, p0, Lcom/baidu/mobstat/HeadObject;->m:Ljava/lang/String;

    :goto_c
    invoke-virtual {p2, v2, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string/jumbo v2, "m"

    .line 220
    iget-object v0, p0, Lcom/baidu/mobstat/HeadObject;->n:Ljava/lang/String;

    if-eqz v0, :cond_e

    iget-object v0, p0, Lcom/baidu/mobstat/HeadObject;->n:Ljava/lang/String;

    :goto_d
    invoke-virtual {p2, v2, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string/jumbo v2, "ma"

    .line 221
    iget-object v0, p0, Lcom/baidu/mobstat/HeadObject;->o:Ljava/lang/String;

    if-eqz v0, :cond_f

    iget-object v0, p0, Lcom/baidu/mobstat/HeadObject;->o:Ljava/lang/String;

    :goto_e
    invoke-virtual {p2, v2, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string/jumbo v0, "cl"

    .line 222
    iget-object v2, p0, Lcom/baidu/mobstat/HeadObject;->p:Ljava/lang/String;

    invoke-virtual {p2, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string/jumbo v2, "gl"

    .line 223
    iget-object v0, p0, Lcom/baidu/mobstat/HeadObject;->q:Ljava/lang/String;

    if-eqz v0, :cond_10

    iget-object v0, p0, Lcom/baidu/mobstat/HeadObject;->q:Ljava/lang/String;

    :goto_f
    invoke-virtual {p2, v2, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string/jumbo v2, "l"

    .line 224
    iget-object v0, p0, Lcom/baidu/mobstat/HeadObject;->r:Ljava/lang/String;

    if-eqz v0, :cond_11

    iget-object v0, p0, Lcom/baidu/mobstat/HeadObject;->r:Ljava/lang/String;

    :goto_10
    invoke-virtual {p2, v2, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string/jumbo v0, "t"

    .line 225
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {p2, v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    const-string/jumbo v0, "pn"

    const/4 v2, 0x1

    .line 226
    invoke-static {v2, p1}, Lcom/baidu/mobstat/ff;->h(ILandroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string/jumbo v2, "rom"

    .line 227
    iget-object v0, p0, Lcom/baidu/mobstat/HeadObject;->w:Ljava/lang/String;

    if-eqz v0, :cond_12

    iget-object v0, p0, Lcom/baidu/mobstat/HeadObject;->w:Ljava/lang/String;

    :goto_11
    invoke-virtual {p2, v2, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string/jumbo v2, "bo"

    .line 228
    iget-object v0, p0, Lcom/baidu/mobstat/HeadObject;->x:Ljava/lang/String;

    if-eqz v0, :cond_13

    iget-object v0, p0, Lcom/baidu/mobstat/HeadObject;->x:Ljava/lang/String;

    :goto_12
    invoke-virtual {p2, v2, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string/jumbo v2, "bd"

    .line 229
    iget-object v0, p0, Lcom/baidu/mobstat/HeadObject;->y:Ljava/lang/String;

    if-eqz v0, :cond_14

    iget-object v0, p0, Lcom/baidu/mobstat/HeadObject;->y:Ljava/lang/String;

    :goto_13
    invoke-virtual {p2, v2, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string/jumbo v0, "td"

    .line 230
    invoke-static {p1}, Lcom/baidu/mobstat/ff;->b(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string/jumbo v0, "at"

    const-string/jumbo v2, "0"

    .line 236
    invoke-virtual {p2, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 239
    invoke-static {p1}, Lcom/baidu/mobstat/ff;->u(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v2, "pl"

    .line 240
    invoke-virtual {p2, v2, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 244
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_15

    move-object v0, v1

    :goto_14
    const-string/jumbo v1, "scl"

    .line 247
    if-eqz v0, :cond_16

    :goto_15
    invoke-virtual {p2, v1, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string/jumbo v1, "sign"

    .line 249
    iget-object v0, p0, Lcom/baidu/mobstat/HeadObject;->z:Ljava/lang/String;

    if-eqz v0, :cond_17

    iget-object v0, p0, Lcom/baidu/mobstat/HeadObject;->z:Ljava/lang/String;

    :goto_16
    invoke-virtual {p2, v1, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 251
    iget-object v0, p0, Lcom/baidu/mobstat/HeadObject;->A:Lorg/json/JSONObject;

    if-nez v0, :cond_18

    :cond_0
    :goto_17
    const-string/jumbo v0, "uid"

    .line 255
    iget-object v1, p0, Lcom/baidu/mobstat/HeadObject;->B:Ljava/lang/String;

    invoke-virtual {p2, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_18
    monitor-exit p0

    .line 259
    return-void

    :cond_1
    :try_start_1
    const-string/jumbo v0, ""

    goto/16 :goto_0

    :cond_2
    const-string/jumbo v0, ""

    goto/16 :goto_1

    :cond_3
    const-string/jumbo v0, ""

    goto/16 :goto_2

    :cond_4
    const-string/jumbo v0, ""

    goto/16 :goto_3

    :cond_5
    const-string/jumbo v0, "0"

    goto/16 :goto_4

    :cond_6
    const-string/jumbo v0, ""

    goto/16 :goto_5

    :cond_7
    const-string/jumbo v0, ""

    goto/16 :goto_6

    :cond_8
    const-string/jumbo v0, ""

    goto/16 :goto_7

    :cond_9
    const-string/jumbo v0, ""

    goto/16 :goto_8

    :cond_a
    const-string/jumbo v0, ""

    goto/16 :goto_9

    :cond_b
    const-string/jumbo v0, ""

    goto/16 :goto_a

    :cond_c
    const-string/jumbo v0, ""

    goto/16 :goto_b

    :cond_d
    const-string/jumbo v0, ""

    goto/16 :goto_c

    :cond_e
    const-string/jumbo v0, ""

    goto/16 :goto_d

    :cond_f
    const-string/jumbo v0, ""

    goto/16 :goto_e

    :cond_10
    const-string/jumbo v0, ""

    goto/16 :goto_f

    :cond_11
    const-string/jumbo v0, ""

    goto/16 :goto_10

    :cond_12
    const-string/jumbo v0, ""

    goto/16 :goto_11

    :cond_13
    const-string/jumbo v0, ""

    goto/16 :goto_12

    :cond_14
    const-string/jumbo v0, ""

    goto/16 :goto_13

    .line 245
    :cond_15
    invoke-static {p1}, Lcom/baidu/mobstat/ff;->v(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_14

    :cond_16
    const-string/jumbo v0, ""

    goto/16 :goto_15

    :cond_17
    const-string/jumbo v0, ""

    goto/16 :goto_16

    .line 251
    :cond_18
    iget-object v0, p0, Lcom/baidu/mobstat/HeadObject;->A:Lorg/json/JSONObject;

    invoke-virtual {v0}, Lorg/json/JSONObject;->length()I

    move-result v0

    if-eqz v0, :cond_0

    const-string/jumbo v0, "ext"

    .line 252
    iget-object v1, p0, Lcom/baidu/mobstat/HeadObject;->A:Lorg/json/JSONObject;

    invoke-virtual {p2, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/16 :goto_17

    .line 258
    :catch_0
    move-exception v0

    goto/16 :goto_18

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
