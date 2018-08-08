.class public Lcom/baidu/mobstat/ExceptionAnalysis;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/baidu/mobstat/ExceptionAnalysis$Callback;
    }
.end annotation


# static fields
.field private static a:Lcom/baidu/mobstat/ExceptionAnalysis;


# instance fields
.field private b:Z

.field private c:Landroid/content/Context;

.field private d:Lcom/baidu/mobstat/HeadObject;

.field public mCallback:Lcom/baidu/mobstat/ExceptionAnalysis$Callback;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 22
    new-instance v0, Lcom/baidu/mobstat/ExceptionAnalysis;

    invoke-direct {v0}, Lcom/baidu/mobstat/ExceptionAnalysis;-><init>()V

    sput-object v0, Lcom/baidu/mobstat/ExceptionAnalysis;->a:Lcom/baidu/mobstat/ExceptionAnalysis;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .prologue
    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/baidu/mobstat/ExceptionAnalysis;->b:Z

    .line 33
    new-instance v0, Lcom/baidu/mobstat/HeadObject;

    invoke-direct {v0}, Lcom/baidu/mobstat/HeadObject;-><init>()V

    iput-object v0, p0, Lcom/baidu/mobstat/ExceptionAnalysis;->d:Lcom/baidu/mobstat/HeadObject;

    .line 39
    return-void
.end method

.method public constructor <init>(Lcom/baidu/mobstat/ExceptionAnalysis$Callback;)V
    .locals 1

    .prologue
    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/baidu/mobstat/ExceptionAnalysis;->b:Z

    .line 33
    new-instance v0, Lcom/baidu/mobstat/HeadObject;

    invoke-direct {v0}, Lcom/baidu/mobstat/HeadObject;-><init>()V

    iput-object v0, p0, Lcom/baidu/mobstat/ExceptionAnalysis;->d:Lcom/baidu/mobstat/HeadObject;

    .line 42
    iput-object p1, p0, Lcom/baidu/mobstat/ExceptionAnalysis;->mCallback:Lcom/baidu/mobstat/ExceptionAnalysis$Callback;

    .line 43
    return-void
.end method

.method private a()Lorg/json/JSONObject;
    .locals 3

    .prologue
    .line 179
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    :try_start_0
    const-string/jumbo v1, "app_session"

    const/4 v2, 0x0

    .line 181
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    :goto_0
    :try_start_1
    const-string/jumbo v1, "failed_cnt"

    const/4 v2, 0x0

    .line 188
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 193
    :goto_1
    return-object v0

    .line 191
    :catch_0
    move-exception v1

    goto :goto_1

    .line 184
    :catch_1
    move-exception v1

    goto :goto_0
.end method

.method private a(Landroid/content/Context;)Lorg/json/JSONObject;
    .locals 6
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    const-string/jumbo v0, "activity"

    .line 198
    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    .line 199
    if-eqz v0, :cond_0

    .line 203
    new-instance v2, Landroid/app/ActivityManager$MemoryInfo;

    invoke-direct {v2}, Landroid/app/ActivityManager$MemoryInfo;-><init>()V

    .line 204
    invoke-virtual {v0, v2}, Landroid/app/ActivityManager;->getMemoryInfo(Landroid/app/ActivityManager$MemoryInfo;)V

    .line 206
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3}, Lorg/json/JSONObject;-><init>()V

    .line 208
    :try_start_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x10

    if-ge v0, v4, :cond_1

    :goto_0
    const-string/jumbo v0, "free"

    .line 212
    iget-wide v4, v2, Landroid/app/ActivityManager$MemoryInfo;->availMem:J

    invoke-virtual {v3, v0, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    const-string/jumbo v4, "low"

    .line 213
    iget-boolean v0, v2, Landroid/app/ActivityManager$MemoryInfo;->lowMemory:Z

    if-nez v0, :cond_2

    move v0, v1

    :goto_1
    invoke-virtual {v3, v4, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 218
    :goto_2
    return-object v3

    .line 200
    :cond_0
    return-object v2

    :cond_1
    const-string/jumbo v0, "total"

    .line 209
    iget-wide v4, v2, Landroid/app/ActivityManager$MemoryInfo;->totalMem:J

    invoke-virtual {v3, v0, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 216
    :catch_0
    move-exception v0

    goto :goto_2

    :cond_2
    const/4 v0, 0x1

    .line 213
    goto :goto_1
.end method

.method public static getInstance()Lcom/baidu/mobstat/ExceptionAnalysis;
    .locals 1

    .prologue
    .line 25
    sget-object v0, Lcom/baidu/mobstat/ExceptionAnalysis;->a:Lcom/baidu/mobstat/ExceptionAnalysis;

    return-object v0
.end method


# virtual methods
.method public openExceptionAnalysis(Landroid/content/Context;Z)V
    .locals 2

    .prologue
    .line 53
    if-nez p1, :cond_0

    .line 56
    :goto_0
    iget-object v0, p0, Lcom/baidu/mobstat/ExceptionAnalysis;->c:Landroid/content/Context;

    if-eqz v0, :cond_1

    .line 60
    iget-boolean v0, p0, Lcom/baidu/mobstat/ExceptionAnalysis;->b:Z

    if-nez v0, :cond_2

    .line 63
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/baidu/mobstat/ExceptionAnalysis;->b:Z

    .line 65
    invoke-static {}, Lcom/baidu/mobstat/bw;->a()Lcom/baidu/mobstat/bw;

    move-result-object v0

    .line 66
    iget-object v1, p0, Lcom/baidu/mobstat/ExceptionAnalysis;->c:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/baidu/mobstat/bw;->a(Landroid/content/Context;)V

    .line 67
    if-eqz p2, :cond_3

    .line 70
    :goto_1
    return-void

    .line 54
    :cond_0
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/baidu/mobstat/ExceptionAnalysis;->c:Landroid/content/Context;

    goto :goto_0

    .line 57
    :cond_1
    return-void

    .line 61
    :cond_2
    return-void

    .line 68
    :cond_3
    iget-object v0, p0, Lcom/baidu/mobstat/ExceptionAnalysis;->c:Landroid/content/Context;

    invoke-static {v0}, Lcom/baidu/mobstat/NativeCrashHandler;->init(Landroid/content/Context;)V

    goto :goto_1
.end method

.method public saveCrashInfo(Landroid/content/Context;JLjava/lang/String;Ljava/lang/String;II)V
    .locals 6

    .prologue
    .line 128
    invoke-static {}, Lcom/baidu/mobstat/BDStatCore;->instance()Lcom/baidu/mobstat/BDStatCore;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/baidu/mobstat/BDStatCore;->autoTrackSessionEndTime(Landroid/content/Context;)V

    .line 130
    if-nez p1, :cond_1

    .line 131
    :cond_0
    return-void

    .line 130
    :cond_1
    if-eqz p4, :cond_0

    invoke-virtual {p4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 135
    :try_start_0
    invoke-static {}, Lcom/baidu/mobstat/CooperService;->instance()Lcom/baidu/mobstat/CooperService;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/baidu/mobstat/CooperService;->getAppVersionName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 136
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    const-string/jumbo v2, "t"

    .line 138
    invoke-virtual {v1, v2, p2, p3}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    const-string/jumbo v2, "c"

    .line 139
    invoke-virtual {v1, v2, p4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string/jumbo v2, "y"

    .line 140
    invoke-virtual {v1, v2, p5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string/jumbo v2, "v"

    .line 141
    invoke-virtual {v1, v2, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string/jumbo v0, "ct"

    .line 142
    invoke-virtual {v1, v0, p6}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string/jumbo v0, "mem"

    .line 143
    invoke-direct {p0, p1}, Lcom/baidu/mobstat/ExceptionAnalysis;->a(Landroid/content/Context;)Lorg/json/JSONObject;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string/jumbo v0, "ty"

    .line 144
    invoke-virtual {v1, v0, p7}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 146
    new-instance v0, Lorg/json/JSONArray;

    invoke-direct {v0}, Lorg/json/JSONArray;-><init>()V

    .line 147
    invoke-virtual {v0, v1}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 149
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 150
    iget-object v2, p0, Lcom/baidu/mobstat/ExceptionAnalysis;->d:Lcom/baidu/mobstat/HeadObject;

    invoke-virtual {v2, p1, v1}, Lcom/baidu/mobstat/HeadObject;->installHeader(Landroid/content/Context;Lorg/json/JSONObject;)V

    const-string/jumbo v2, "ss"

    const/4 v3, 0x0

    .line 152
    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string/jumbo v2, "sq"

    const/4 v3, 0x0

    .line 154
    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 156
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    const-string/jumbo v3, "he"

    .line 157
    invoke-virtual {v2, v3, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string/jumbo v1, "pr"

    .line 158
    new-instance v3, Lorg/json/JSONArray;

    invoke-direct {v3}, Lorg/json/JSONArray;-><init>()V

    invoke-virtual {v2, v1, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string/jumbo v1, "ev"

    .line 159
    new-instance v3, Lorg/json/JSONArray;

    invoke-direct {v3}, Lorg/json/JSONArray;-><init>()V

    invoke-virtual {v2, v1, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string/jumbo v1, "ex"

    .line 160
    invoke-virtual {v2, v1, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string/jumbo v0, "trace"

    .line 161
    invoke-direct {p0}, Lcom/baidu/mobstat/ExceptionAnalysis;->a()Lorg/json/JSONObject;

    move-result-object v1

    invoke-virtual {v2, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 163
    iget-object v0, p0, Lcom/baidu/mobstat/ExceptionAnalysis;->mCallback:Lcom/baidu/mobstat/ExceptionAnalysis$Callback;

    if-nez v0, :cond_2

    .line 167
    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/baidu/mobstat/Config;->PREFIX_SEND_DATA:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-virtual {v0, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 168
    invoke-virtual {v2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {p1, v0, v1, v2}, Lcom/baidu/mobstat/ex;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 170
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "dump exception, exception: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 171
    invoke-static {}, Lcom/baidu/mobstat/eh;->c()Lcom/baidu/mobstat/eh;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/baidu/mobstat/eh;->a(Ljava/lang/String;)V

    .line 175
    :goto_1
    return-void

    .line 164
    :cond_2
    iget-object v0, p0, Lcom/baidu/mobstat/ExceptionAnalysis;->mCallback:Lcom/baidu/mobstat/ExceptionAnalysis$Callback;

    invoke-interface {v0, v2}, Lcom/baidu/mobstat/ExceptionAnalysis$Callback;->onCallback(Lorg/json/JSONObject;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 174
    :catch_0
    move-exception v0

    goto :goto_1
.end method

.method public saveCrashInfo(Landroid/content/Context;Ljava/lang/Throwable;Z)V
    .locals 8

    .prologue
    const/4 v6, 0x0

    .line 80
    if-nez p1, :cond_0

    .line 83
    :goto_0
    iget-object v0, p0, Lcom/baidu/mobstat/ExceptionAnalysis;->c:Landroid/content/Context;

    if-eqz v0, :cond_1

    .line 87
    invoke-virtual {p2}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v0, ""

    .line 89
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 102
    :goto_1
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_4

    move-object v5, v0

    .line 106
    :goto_2
    new-instance v0, Ljava/io/StringWriter;

    invoke-direct {v0}, Ljava/io/StringWriter;-><init>()V

    .line 107
    new-instance v1, Ljava/io/PrintWriter;

    invoke-direct {v1, v0}, Ljava/io/PrintWriter;-><init>(Ljava/io/Writer;)V

    invoke-virtual {p2, v1}, Ljava/lang/Throwable;->printStackTrace(Ljava/io/PrintWriter;)V

    .line 108
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    .line 111
    if-eqz p3, :cond_5

    move v7, v6

    .line 121
    :goto_3
    iget-object v1, p0, Lcom/baidu/mobstat/ExceptionAnalysis;->c:Landroid/content/Context;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    move-object v0, p0

    invoke-virtual/range {v0 .. v7}, Lcom/baidu/mobstat/ExceptionAnalysis;->saveCrashInfo(Landroid/content/Context;JLjava/lang/String;Ljava/lang/String;II)V

    .line 123
    return-void

    .line 81
    :cond_0
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/baidu/mobstat/ExceptionAnalysis;->c:Landroid/content/Context;

    goto :goto_0

    .line 84
    :cond_1
    return-void

    :cond_2
    :try_start_0
    const-string/jumbo v0, ":"

    .line 91
    invoke-virtual {v1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 92
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    const/4 v3, 0x1

    if-gt v2, v3, :cond_3

    move-object v0, v1

    .line 95
    goto :goto_1

    :cond_3
    const/4 v2, 0x0

    .line 93
    aget-object v0, v0, v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 99
    :catch_0
    move-exception v0

    const-string/jumbo v0, ""

    goto :goto_1

    :cond_4
    move-object v5, v1

    .line 103
    goto :goto_2

    .line 112
    :cond_5
    instance-of v0, p2, Ljava/lang/Exception;

    if-nez v0, :cond_6

    .line 114
    instance-of v0, p2, Ljava/lang/Error;

    if-nez v0, :cond_7

    const/16 v7, 0xd

    .line 117
    goto :goto_3

    :cond_6
    const/16 v7, 0xb

    .line 113
    goto :goto_3

    :cond_7
    const/16 v7, 0xc

    .line 115
    goto :goto_3
.end method
