.class Lcom/baidu/mobstat/o;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/baidu/mobstat/o$a;
    }
.end annotation


# static fields
.field static a:Lcom/baidu/mobstat/o;


# instance fields
.field private b:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 37
    new-instance v0, Lcom/baidu/mobstat/o;

    invoke-direct {v0}, Lcom/baidu/mobstat/o;-><init>()V

    sput-object v0, Lcom/baidu/mobstat/o;->a:Lcom/baidu/mobstat/o;

    return-void
.end method

.method constructor <init>()V
    .locals 1

    .prologue
    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string/jumbo v0, ""

    .line 39
    iput-object v0, p0, Lcom/baidu/mobstat/o;->b:Ljava/lang/String;

    return-void
.end method

.method private a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    .prologue
    const-string/jumbo v1, ""

    .line 217
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 218
    if-eqz v0, :cond_0

    const/4 v2, 0x0

    .line 223
    :try_start_0
    invoke-virtual {v0, p2, v2}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v0

    .line 224
    iget-object v0, v0, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 229
    :goto_0
    if-eqz v0, :cond_1

    :goto_1
    return-object v0

    .line 219
    :cond_0
    return-object v1

    .line 227
    :catch_0
    move-exception v0

    .line 226
    invoke-static {}, Lcom/baidu/mobstat/eg;->c()Lcom/baidu/mobstat/eg;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/baidu/mobstat/eg;->b(Ljava/lang/Throwable;)V

    move-object v0, v1

    goto :goto_0

    :cond_1
    const-string/jumbo v0, ""

    goto :goto_1
.end method

.method private a(Landroid/content/Context;I)Ljava/util/ArrayList;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "I)",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/baidu/mobstat/o$a;",
            ">;"
        }
    .end annotation

    .prologue
    .line 80
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-ge v0, v1, :cond_0

    .line 84
    invoke-direct {p0, p1, p2}, Lcom/baidu/mobstat/o;->b(Landroid/content/Context;I)Ljava/util/ArrayList;

    move-result-object v0

    return-object v0

    .line 81
    :cond_0
    invoke-direct {p0, p1, p2}, Lcom/baidu/mobstat/o;->c(Landroid/content/Context;I)Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method private a(Landroid/content/Context;Ljava/util/ArrayList;Z)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/baidu/mobstat/o$a;",
            ">;Z)V"
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 262
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 263
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-virtual {v1, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v3, "|"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 264
    if-nez p3, :cond_1

    :goto_0
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string/jumbo v1, ""

    .line 268
    :try_start_0
    new-instance v3, Lorg/json/JSONArray;

    invoke-direct {v3}, Lorg/json/JSONArray;-><init>()V

    .line 270
    invoke-virtual {p2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_0
    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_2

    .line 277
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    const-string/jumbo v4, "app_trace"

    .line 278
    invoke-virtual {v0, v4, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string/jumbo v3, "meta-data"

    .line 279
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v3, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 282
    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    invoke-static {v0}, Lcom/baidu/mobstat/ev$a;->a([B)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 287
    :goto_2
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 290
    :goto_3
    return-void

    :cond_1
    const/4 v0, 0x1

    .line 264
    goto :goto_0

    .line 270
    :cond_2
    :try_start_1
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/baidu/mobstat/o$a;

    .line 271
    invoke-virtual {v0}, Lcom/baidu/mobstat/o$a;->a()Lorg/json/JSONObject;

    move-result-object v0

    .line 272
    if-eqz v0, :cond_0

    .line 273
    invoke-virtual {v3, v0}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    .line 285
    :catch_0
    move-exception v0

    .line 284
    invoke-static {}, Lcom/baidu/mobstat/eg;->c()Lcom/baidu/mobstat/eg;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/baidu/mobstat/eg;->b(Ljava/lang/Throwable;)V

    move-object v0, v1

    goto :goto_2

    .line 288
    :cond_3
    sget-object v1, Lcom/baidu/mobstat/t;->c:Lcom/baidu/mobstat/t;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3, v0}, Lcom/baidu/mobstat/t;->a(JLjava/lang/String;)J

    goto :goto_3
.end method

.method private a(Landroid/content/Context;ZI)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 61
    invoke-direct {p0, p1, p3}, Lcom/baidu/mobstat/o;->a(Landroid/content/Context;I)Ljava/util/ArrayList;

    move-result-object v1

    .line 62
    if-nez v1, :cond_1

    .line 63
    :cond_0
    return-void

    .line 62
    :cond_1
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-eqz v0, :cond_0

    .line 66
    if-nez p2, :cond_3

    .line 74
    :cond_2
    :goto_0
    invoke-direct {p0, p1, v1, p2}, Lcom/baidu/mobstat/o;->a(Landroid/content/Context;Ljava/util/ArrayList;Z)V

    .line 75
    return-void

    .line 67
    :cond_3
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/baidu/mobstat/o$a;

    invoke-virtual {v0}, Lcom/baidu/mobstat/o$a;->b()Ljava/lang/String;

    move-result-object v0

    .line 69
    iget-object v2, p0, Lcom/baidu/mobstat/o;->b:Ljava/lang/String;

    invoke-direct {p0, v0, v2}, Lcom/baidu/mobstat/o;->a(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 70
    iput-object v0, p0, Lcom/baidu/mobstat/o;->b:Ljava/lang/String;

    goto :goto_0
.end method

.method private a(I)Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    const/16 v1, 0x64

    .line 197
    if-ne p1, v1, :cond_1

    :cond_0
    const/4 v0, 0x1

    .line 203
    :goto_0
    return v0

    :cond_1
    const/16 v1, 0xc8

    .line 197
    if-eq p1, v1, :cond_0

    const/16 v1, 0xe6

    if-eq p1, v1, :cond_0

    goto :goto_0
.end method

.method private a(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 207
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 211
    :cond_0
    return v1

    .line 207
    :cond_1
    iget-object v0, p0, Lcom/baidu/mobstat/o;->b:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 208
    const/4 v0, 0x1

    return v0
.end method

.method private b(Landroid/content/Context;I)Ljava/util/ArrayList;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "I)",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/baidu/mobstat/o$a;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    const-string/jumbo v0, "activity"

    .line 97
    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    const/16 v2, 0x32

    .line 102
    :try_start_0
    invoke-virtual {v0, v2}, Landroid/app/ActivityManager;->getRunningTasks(I)Ljava/util/List;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 107
    :goto_0
    if-eqz v0, :cond_2

    .line 112
    new-instance v1, Ljava/util/LinkedHashMap;

    invoke-direct {v1}, Ljava/util/LinkedHashMap;-><init>()V

    .line 114
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_3

    .line 142
    :cond_1
    new-instance v0, Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/LinkedHashMap;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    return-object v0

    .line 105
    :catch_0
    move-exception v0

    .line 104
    invoke-static {}, Lcom/baidu/mobstat/eg;->c()Lcom/baidu/mobstat/eg;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/baidu/mobstat/eg;->b(Ljava/lang/Throwable;)V

    move-object v0, v1

    goto :goto_0

    .line 108
    :cond_2
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    return-object v0

    .line 114
    :cond_3
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager$RunningTaskInfo;

    .line 115
    invoke-virtual {v1}, Ljava/util/LinkedHashMap;->size()I

    move-result v3

    if-gt v3, p2, :cond_1

    .line 119
    iget-object v0, v0, Landroid/app/ActivityManager$RunningTaskInfo;->topActivity:Landroid/content/ComponentName;

    .line 120
    if-eqz v0, :cond_0

    .line 124
    invoke-virtual {v0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v0

    .line 125
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 129
    invoke-direct {p0, p1, v0}, Lcom/baidu/mobstat/o;->b(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 133
    invoke-virtual {v1, v0}, Ljava/util/LinkedHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 137
    invoke-direct {p0, p1, v0}, Lcom/baidu/mobstat/o;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 138
    new-instance v4, Lcom/baidu/mobstat/o$a;

    const-string/jumbo v5, ""

    invoke-direct {v4, v0, v3, v5}, Lcom/baidu/mobstat/o$a;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 139
    invoke-virtual {v1, v0, v4}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1
.end method

.method private b(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 235
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    .line 236
    if-eqz v1, :cond_0

    const/4 v2, 0x0

    .line 241
    :try_start_0
    invoke-virtual {v1, p2, v2}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v1

    .line 242
    iget-object v1, v1, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    .line 243
    if-eqz v1, :cond_1

    .line 247
    iget v1, v1, Landroid/content/pm/ApplicationInfo;->flags:I
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    and-int/lit8 v1, v1, 0x1

    if-nez v1, :cond_2

    .line 252
    :goto_0
    return v0

    .line 237
    :cond_0
    return v0

    .line 244
    :cond_1
    return v0

    :cond_2
    const/4 v0, 0x1

    .line 247
    goto :goto_0

    .line 250
    :catch_0
    move-exception v1

    .line 249
    invoke-static {}, Lcom/baidu/mobstat/eg;->c()Lcom/baidu/mobstat/eg;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/baidu/mobstat/eg;->b(Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method private c(Landroid/content/Context;I)Ljava/util/ArrayList;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "I)",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/baidu/mobstat/o$a;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    const-string/jumbo v0, "activity"

    .line 146
    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    .line 147
    invoke-virtual {v0}, Landroid/app/ActivityManager;->getRunningAppProcesses()Ljava/util/List;

    move-result-object v3

    .line 149
    if-eqz v3, :cond_1

    .line 154
    new-instance v4, Ljava/util/LinkedHashMap;

    invoke-direct {v4}, Ljava/util/LinkedHashMap;-><init>()V

    move v1, v2

    .line 156
    :goto_0
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v0

    if-lt v1, v0, :cond_2

    .line 191
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/LinkedHashMap;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    return-object v0

    .line 150
    :cond_1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    return-object v0

    .line 157
    :cond_2
    invoke-virtual {v4}, Ljava/util/LinkedHashMap;->size()I

    move-result v0

    if-gt v0, p2, :cond_0

    .line 161
    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager$RunningAppProcessInfo;

    .line 163
    iget v5, v0, Landroid/app/ActivityManager$RunningAppProcessInfo;->importance:I

    invoke-direct {p0, v5}, Lcom/baidu/mobstat/o;->a(I)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 167
    iget-object v5, v0, Landroid/app/ActivityManager$RunningAppProcessInfo;->pkgList:[Ljava/lang/String;

    .line 168
    if-nez v5, :cond_4

    .line 156
    :cond_3
    :goto_1
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 168
    :cond_4
    array-length v5, v5

    if-eqz v5, :cond_3

    .line 172
    iget-object v5, v0, Landroid/app/ActivityManager$RunningAppProcessInfo;->pkgList:[Ljava/lang/String;

    aget-object v5, v5, v2

    .line 173
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_3

    .line 177
    invoke-direct {p0, p1, v5}, Lcom/baidu/mobstat/o;->b(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_3

    .line 181
    invoke-virtual {v4, v5}, Ljava/util/LinkedHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_3

    .line 185
    invoke-direct {p0, p1, v5}, Lcom/baidu/mobstat/o;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 186
    iget v0, v0, Landroid/app/ActivityManager$RunningAppProcessInfo;->importance:I

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    .line 187
    new-instance v7, Lcom/baidu/mobstat/o$a;

    invoke-direct {v7, v5, v6, v0}, Lcom/baidu/mobstat/o$a;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 188
    invoke-virtual {v4, v5, v7}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1
.end method


# virtual methods
.method public declared-synchronized a(Landroid/content/Context;Z)V
    .locals 1

    .prologue
    monitor-enter p0

    const/4 v0, 0x1

    .line 48
    if-eqz p2, :cond_0

    .line 52
    :goto_0
    :try_start_0
    invoke-direct {p0, p1, p2, v0}, Lcom/baidu/mobstat/o;->a(Landroid/content/Context;ZI)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    .line 53
    return-void

    :cond_0
    const/16 v0, 0x14

    .line 49
    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
