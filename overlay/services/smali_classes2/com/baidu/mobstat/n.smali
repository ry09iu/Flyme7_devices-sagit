.class Lcom/baidu/mobstat/n;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field static final a:Lcom/baidu/mobstat/n;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 32
    new-instance v0, Lcom/baidu/mobstat/n;

    invoke-direct {v0}, Lcom/baidu/mobstat/n;-><init>()V

    sput-object v0, Lcom/baidu/mobstat/n;->a:Lcom/baidu/mobstat/n;

    return-void
.end method

.method constructor <init>()V
    .locals 0

    .prologue
    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private a(Ljava/lang/String;)J
    .locals 4

    .prologue
    const-wide/16 v0, 0x0

    .line 140
    if-nez p1, :cond_1

    .line 147
    :cond_0
    :goto_0
    return-wide v0

    .line 141
    :cond_1
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 142
    if-eqz v2, :cond_0

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 143
    invoke-virtual {v2}, Ljava/io/File;->lastModified()J

    move-result-wide v0

    goto :goto_0
.end method

.method private a(ZLjava/lang/String;Ljava/lang/String;Landroid/content/pm/PackageInfo;Lorg/json/JSONArray;)V
    .locals 9

    .prologue
    const-wide/16 v2, 0x0

    .line 101
    if-nez p1, :cond_1

    .line 108
    :cond_0
    :try_start_0
    iget-wide v0, p4, Landroid/content/pm/PackageInfo;->firstInstallTime:J
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 116
    :goto_0
    :try_start_1
    iget-wide v2, p4, Landroid/content/pm/PackageInfo;->lastUpdateTime:J
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1

    .line 121
    :goto_1
    invoke-direct {p0, p3}, Lcom/baidu/mobstat/n;->a(Ljava/lang/String;)J

    move-result-wide v4

    .line 123
    new-instance v6, Lorg/json/JSONObject;

    invoke-direct {v6}, Lorg/json/JSONObject;-><init>()V

    :try_start_2
    const-string/jumbo v7, "n"

    .line 125
    iget-object v8, p4, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v6, v7, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string/jumbo v7, "a"

    .line 126
    invoke-virtual {v6, v7, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string/jumbo v7, "v"

    .line 127
    iget-object v8, p4, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    invoke-static {v8}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string/jumbo v7, "f"

    .line 128
    invoke-virtual {v6, v7, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    const-string/jumbo v0, "l"

    .line 129
    invoke-virtual {v6, v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    const-string/jumbo v0, "m"

    .line 130
    invoke-virtual {v6, v0, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 131
    invoke-virtual {p5, v6}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_2

    .line 135
    :goto_2
    return-void

    .line 101
    :cond_1
    iget-object v0, p4, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    const-string/jumbo v1, "com.android."

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 102
    return-void

    .line 111
    :catch_0
    move-exception v0

    .line 110
    invoke-static {}, Lcom/baidu/mobstat/eg;->c()Lcom/baidu/mobstat/eg;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/baidu/mobstat/eg;->b(Ljava/lang/Throwable;)V

    move-wide v0, v2

    goto :goto_0

    .line 119
    :catch_1
    move-exception v4

    .line 118
    invoke-static {}, Lcom/baidu/mobstat/eg;->c()Lcom/baidu/mobstat/eg;

    move-result-object v5

    invoke-virtual {v5, v4}, Lcom/baidu/mobstat/eg;->b(Ljava/lang/Throwable;)V

    goto :goto_1

    .line 134
    :catch_2
    move-exception v0

    .line 133
    invoke-static {}, Lcom/baidu/mobstat/eg;->c()Lcom/baidu/mobstat/eg;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/baidu/mobstat/eg;->b(Ljava/lang/Throwable;)V

    goto :goto_2
.end method

.method private b(Landroid/content/Context;Z)V
    .locals 10

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 44
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v8

    .line 45
    if-eqz v8, :cond_1

    .line 49
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, v7}, Ljava/util/ArrayList;-><init>(I)V

    const/4 v1, 0x0

    .line 52
    :try_start_0
    invoke-virtual {v8, v1}, Landroid/content/pm/PackageManager;->getInstalledPackages(I)Ljava/util/List;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 57
    :goto_0
    new-instance v5, Lorg/json/JSONArray;

    invoke-direct {v5}, Lorg/json/JSONArray;-><init>()V

    .line 59
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :cond_0
    :goto_1
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_2

    .line 74
    invoke-virtual {v5}, Lorg/json/JSONArray;->length()I

    move-result v0

    if-eqz v0, :cond_4

    .line 78
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 79
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v2, "|"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 80
    if-nez p2, :cond_5

    :goto_2
    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string/jumbo v0, ""

    .line 84
    :try_start_1
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    const-string/jumbo v3, "app_list"

    .line 85
    invoke-virtual {v2, v3, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string/jumbo v3, "meta-data"

    .line 86
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v3, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 88
    invoke-virtual {v2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    invoke-static {v1}, Lcom/baidu/mobstat/ev$a;->a([B)Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v0

    .line 93
    :goto_3
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 97
    :goto_4
    return-void

    .line 46
    :cond_1
    return-void

    .line 55
    :catch_0
    move-exception v1

    .line 54
    invoke-static {}, Lcom/baidu/mobstat/eg;->c()Lcom/baidu/mobstat/eg;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/baidu/mobstat/eg;->b(Ljava/lang/Throwable;)V

    goto :goto_0

    .line 59
    :cond_2
    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/pm/PackageInfo;

    .line 60
    iget-object v1, v4, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    .line 61
    if-eqz v1, :cond_0

    .line 65
    iget v0, v1, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit8 v0, v0, 0x1

    if-nez v0, :cond_3

    move v0, v6

    .line 66
    :goto_5
    invoke-virtual {v1, v8}, Landroid/content/pm/ApplicationInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    .line 68
    iget-object v3, v1, Landroid/content/pm/ApplicationInfo;->sourceDir:Ljava/lang/String;

    .line 69
    if-ne p2, v0, :cond_0

    move-object v0, p0

    move v1, p2

    .line 70
    invoke-direct/range {v0 .. v5}, Lcom/baidu/mobstat/n;->a(ZLjava/lang/String;Ljava/lang/String;Landroid/content/pm/PackageInfo;Lorg/json/JSONArray;)V

    goto/16 :goto_1

    :cond_3
    move v0, v7

    .line 65
    goto :goto_5

    .line 75
    :cond_4
    return-void

    :cond_5
    move v6, v7

    .line 80
    goto :goto_2

    .line 94
    :cond_6
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 95
    sget-object v1, Lcom/baidu/mobstat/t;->b:Lcom/baidu/mobstat/t;

    invoke-virtual {v1, v2, v3, v0}, Lcom/baidu/mobstat/t;->a(JLjava/lang/String;)J

    goto :goto_4

    .line 91
    :catch_1
    move-exception v1

    goto :goto_3
.end method


# virtual methods
.method public declared-synchronized a(Landroid/content/Context;Z)V
    .locals 1

    .prologue
    monitor-enter p0

    .line 35
    :try_start_0
    invoke-direct {p0, p1, p2}, Lcom/baidu/mobstat/n;->b(Landroid/content/Context;Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    .line 36
    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
