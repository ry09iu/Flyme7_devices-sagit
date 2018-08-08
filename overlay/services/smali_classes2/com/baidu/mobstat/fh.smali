.class public final Lcom/baidu/mobstat/fh;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static a(J)Ljava/lang/String;
    .locals 4

    .prologue
    .line 37
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0, p0, p1}, Ljava/util/Date;-><init>(J)V

    .line 38
    new-instance v1, Ljava/text/SimpleDateFormat;

    const-string/jumbo v2, "yyyyMMdd"

    invoke-direct {v1, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    const-string/jumbo v2, "GMT+08:00"

    .line 40
    invoke-static {v2}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/text/SimpleDateFormat;->setTimeZone(Ljava/util/TimeZone;)V

    .line 41
    invoke-virtual {v1, v0}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    .line 42
    return-object v0
.end method

.method public static a(Landroid/content/Context;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 24
    invoke-static {p0}, Lcom/baidu/mobstat/e;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static a(Ljava/util/Map;)Ljava/util/HashMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 29
    if-nez p0, :cond_0

    .line 33
    :goto_0
    return-object v0

    .line 30
    :cond_0
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0, p0}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    goto :goto_0
.end method

.method public static a(Ljava/lang/Class;Ljava/lang/String;)Z
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;",
            "Ljava/lang/String;",
            ")Z"
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    const/4 v1, 0x0

    .line 48
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v4

    move v0, v1

    .line 49
    :goto_0
    array-length v2, v4

    if-lt v0, v2, :cond_0

    .line 74
    :goto_1
    return v1

    .line 50
    :cond_0
    aget-object v2, v4, v0

    .line 52
    invoke-virtual {v2}, Ljava/lang/StackTraceElement;->getMethodName()Ljava/lang/String;

    move-result-object v5

    .line 53
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 49
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 53
    :cond_2
    if-eqz p0, :cond_1

    invoke-virtual {v5, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 57
    invoke-virtual {v2}, Ljava/lang/StackTraceElement;->getClassName()Ljava/lang/String;

    move-result-object v2

    .line 60
    :try_start_0
    invoke-static {v2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 64
    :goto_2
    if-eqz v2, :cond_1

    .line 68
    invoke-virtual {p0, v2}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 v1, 0x1

    .line 69
    goto :goto_1

    .line 63
    :catch_0
    move-exception v2

    move-object v2, v3

    goto :goto_2
.end method
