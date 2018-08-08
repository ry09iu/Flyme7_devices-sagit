.class public Lcom/baidu/mobstat/l;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/baidu/mobstat/l$a;
    }
.end annotation


# static fields
.field static a:Lcom/baidu/mobstat/l;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 25
    new-instance v0, Lcom/baidu/mobstat/l;

    invoke-direct {v0}, Lcom/baidu/mobstat/l;-><init>()V

    sput-object v0, Lcom/baidu/mobstat/l;->a:Lcom/baidu/mobstat/l;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private a(Landroid/content/Context;Ljava/util/ArrayList;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/baidu/mobstat/l$a;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 106
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 107
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string/jumbo v1, ""

    .line 111
    :try_start_0
    new-instance v3, Lorg/json/JSONArray;

    invoke-direct {v3}, Lorg/json/JSONArray;-><init>()V

    .line 113
    invoke-virtual {p2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_0
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_1

    .line 122
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    const-string/jumbo v4, "app_apk"

    .line 123
    invoke-virtual {v0, v4, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string/jumbo v3, "meta-data"

    .line 124
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v3, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 127
    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    invoke-static {v0}, Lcom/baidu/mobstat/ev$a;->a([B)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 132
    :goto_1
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 135
    :goto_2
    return-void

    .line 113
    :cond_1
    :try_start_1
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/baidu/mobstat/l$a;

    .line 114
    invoke-virtual {v0}, Lcom/baidu/mobstat/l$a;->a()Lorg/json/JSONObject;

    move-result-object v0

    .line 115
    if-eqz v0, :cond_0

    .line 119
    invoke-virtual {v3, v0}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 130
    :catch_0
    move-exception v0

    .line 129
    invoke-static {}, Lcom/baidu/mobstat/eg;->c()Lcom/baidu/mobstat/eg;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/baidu/mobstat/eg;->b(Ljava/lang/Throwable;)V

    move-object v0, v1

    goto :goto_1

    .line 133
    :cond_2
    sget-object v1, Lcom/baidu/mobstat/t;->e:Lcom/baidu/mobstat/t;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3, v0}, Lcom/baidu/mobstat/t;->a(JLjava/lang/String;)J

    goto :goto_2
.end method

.method private b(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 37
    invoke-direct {p0, p1}, Lcom/baidu/mobstat/l;->c(Landroid/content/Context;)Ljava/util/ArrayList;

    move-result-object v0

    .line 38
    invoke-direct {p0, p1, v0}, Lcom/baidu/mobstat/l;->a(Landroid/content/Context;Ljava/util/ArrayList;)V

    .line 39
    return-void
.end method

.method private c(Landroid/content/Context;)Ljava/util/ArrayList;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/baidu/mobstat/l$a;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v8, 0x0

    .line 42
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 44
    invoke-direct {p0, p1}, Lcom/baidu/mobstat/l;->d(Landroid/content/Context;)Ljava/util/ArrayList;

    move-result-object v0

    .line 45
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_1

    .line 73
    return-object v2

    .line 45
    :cond_1
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/PackageInfo;

    .line 46
    iget-object v4, v0, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    .line 47
    if-eqz v4, :cond_0

    .line 51
    iget-object v5, v0, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    .line 52
    iget-object v6, v0, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    const-string/jumbo v1, ""

    .line 55
    iget-object v0, v0, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    .line 56
    if-nez v0, :cond_3

    :cond_2
    move-object v0, v1

    .line 60
    :goto_1
    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    invoke-static {v0}, Lcom/baidu/mobstat/fb$b;->a([B)Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v0, ""

    .line 63
    iget-object v4, v4, Landroid/content/pm/ApplicationInfo;->sourceDir:Ljava/lang/String;

    .line 64
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_4

    .line 69
    :goto_2
    new-instance v4, Lcom/baidu/mobstat/l$a;

    invoke-direct {v4, v5, v6, v1, v0}, Lcom/baidu/mobstat/l$a;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 70
    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 56
    :cond_3
    array-length v7, v0

    if-eqz v7, :cond_2

    .line 57
    aget-object v0, v0, v8

    invoke-virtual {v0}, Landroid/content/pm/Signature;->toChars()[C

    move-result-object v0

    .line 58
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    .line 65
    :cond_4
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 66
    invoke-static {v0}, Lcom/baidu/mobstat/fb$b;->a(Ljava/io/File;)Ljava/lang/String;

    move-result-object v0

    goto :goto_2
.end method

.method private d(Landroid/content/Context;)Ljava/util/ArrayList;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/content/pm/PackageInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 77
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 79
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    .line 80
    if-eqz v2, :cond_1

    .line 84
    new-instance v0, Ljava/util/ArrayList;

    const/4 v3, 0x1

    invoke-direct {v0, v3}, Ljava/util/ArrayList;-><init>(I)V

    const/16 v3, 0x40

    .line 86
    :try_start_0
    invoke-virtual {v2, v3}, Landroid/content/pm/PackageManager;->getInstalledPackages(I)Ljava/util/List;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 91
    :goto_0
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_2

    .line 102
    return-object v1

    .line 81
    :cond_1
    return-object v1

    .line 89
    :catch_0
    move-exception v2

    .line 88
    invoke-static {}, Lcom/baidu/mobstat/eg;->c()Lcom/baidu/mobstat/eg;

    move-result-object v3

    invoke-virtual {v3, v2}, Lcom/baidu/mobstat/eg;->b(Ljava/lang/Throwable;)V

    goto :goto_0

    .line 91
    :cond_2
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/PackageInfo;

    .line 92
    iget-object v3, v0, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    .line 93
    if-eqz v3, :cond_0

    .line 97
    iget v3, v3, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit8 v3, v3, 0x1

    if-nez v3, :cond_0

    .line 98
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1
.end method


# virtual methods
.method public declared-synchronized a(Landroid/content/Context;)V
    .locals 1

    .prologue
    monitor-enter p0

    .line 33
    :try_start_0
    invoke-direct {p0, p1}, Lcom/baidu/mobstat/l;->b(Landroid/content/Context;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    .line 34
    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
