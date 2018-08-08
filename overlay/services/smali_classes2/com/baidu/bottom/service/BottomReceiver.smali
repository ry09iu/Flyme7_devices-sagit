.class public Lcom/baidu/bottom/service/BottomReceiver;
.super Landroid/content/BroadcastReceiver;
.source "SourceFile"


# static fields
.field private static a:Lcom/baidu/mobstat/fe;

.field private static b:J

.field private static c:J


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 25
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method public static synthetic a()J
    .locals 2

    .prologue
    .line 25
    sget-wide v0, Lcom/baidu/bottom/service/BottomReceiver;->b:J

    return-wide v0
.end method

.method public static synthetic a(J)J
    .locals 0

    .prologue
    .line 25
    sput-wide p0, Lcom/baidu/bottom/service/BottomReceiver;->b:J

    return-wide p0
.end method

.method public static synthetic a(Lcom/baidu/mobstat/fe;)Lcom/baidu/mobstat/fe;
    .locals 0

    .prologue
    .line 25
    sput-object p0, Lcom/baidu/bottom/service/BottomReceiver;->a:Lcom/baidu/mobstat/fe;

    return-object p0
.end method

.method private a(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 8

    .prologue
    const/4 v0, 0x0

    .line 76
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    .line 77
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 78
    sget-wide v4, Lcom/baidu/bottom/service/BottomReceiver;->c:J

    sub-long/2addr v4, v2

    invoke-static {v4, v5}, Ljava/lang/Math;->abs(J)J

    move-result-wide v4

    const-wide/16 v6, 0x7530

    cmp-long v4, v4, v6

    if-gtz v4, :cond_0

    const/4 v0, 0x1

    :cond_0
    if-nez v0, :cond_2

    const-string/jumbo v0, "android.net.wifi.STATE_CHANGE"

    .line 79
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 84
    :cond_1
    sput-wide v2, Lcom/baidu/bottom/service/BottomReceiver;->c:J

    .line 86
    invoke-static {p1}, Lcom/baidu/mobstat/k;->a(Landroid/content/Context;)V

    .line 88
    :cond_2
    :goto_0
    return-void

    :cond_3
    const-string/jumbo v0, "android.net.wifi.WIFI_STATE_CHANGED"

    .line 80
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string/jumbo v0, "android.net.conn.CONNECTIVITY_CHANGE"

    .line 81
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string/jumbo v0, "android.net.wifi.SCAN_RESULTS"

    .line 82
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    goto :goto_0
.end method

.method public static synthetic a(Lcom/baidu/bottom/service/BottomReceiver;Landroid/content/Context;Landroid/content/Intent;)V
    .locals 0

    .prologue
    .line 25
    invoke-direct {p0, p1, p2}, Lcom/baidu/bottom/service/BottomReceiver;->b(Landroid/content/Context;Landroid/content/Intent;)V

    return-void
.end method

.method private b(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 91
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "android.intent.action.PACKAGE_ADDED"

    .line 93
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 97
    :cond_0
    invoke-virtual {p2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v2

    .line 98
    if-nez v2, :cond_2

    .line 102
    :goto_0
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 106
    :goto_1
    return-void

    :cond_1
    const-string/jumbo v2, "android.intent.action.PACKAGE_REMOVED"

    .line 93
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string/jumbo v2, "android.intent.action.PACKAGE_REPLACED"

    .line 94
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    goto :goto_1

    .line 99
    :cond_2
    invoke-virtual {v2}, Landroid/net/Uri;->getSchemeSpecificPart()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 103
    :cond_3
    invoke-static {p1, v1, v0}, Lcom/baidu/mobstat/k;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1
.end method

.method public static synthetic b(Lcom/baidu/bottom/service/BottomReceiver;Landroid/content/Context;Landroid/content/Intent;)V
    .locals 0

    .prologue
    .line 25
    invoke-direct {p0, p1, p2}, Lcom/baidu/bottom/service/BottomReceiver;->a(Landroid/content/Context;Landroid/content/Intent;)V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2

    .prologue
    .line 35
    sget-object v0, Lcom/baidu/bottom/service/BottomReceiver;->a:Lcom/baidu/mobstat/fe;

    if-nez v0, :cond_0

    .line 40
    new-instance v0, Lcom/baidu/mobstat/fe;

    invoke-direct {v0}, Lcom/baidu/mobstat/fe;-><init>()V

    .line 41
    invoke-virtual {v0}, Lcom/baidu/mobstat/fe;->a()Z

    move-result v1

    if-nez v1, :cond_1

    .line 73
    :goto_0
    return-void

    .line 36
    :cond_0
    invoke-static {}, Lcom/baidu/mobstat/eg;->c()Lcom/baidu/mobstat/eg;

    move-result-object v0

    const-string/jumbo v1, "Bottom has alread analyzed."

    invoke-virtual {v0, v1}, Lcom/baidu/mobstat/eg;->a(Ljava/lang/String;)V

    .line 37
    return-void

    .line 42
    :cond_1
    sput-object v0, Lcom/baidu/bottom/service/BottomReceiver;->a:Lcom/baidu/mobstat/fe;

    .line 44
    new-instance v1, Lcom/baidu/mobstat/ao;

    invoke-direct {v1, p0, p1, p2, v0}, Lcom/baidu/mobstat/ao;-><init>(Lcom/baidu/bottom/service/BottomReceiver;Landroid/content/Context;Landroid/content/Intent;Lcom/baidu/mobstat/fe;)V

    .line 71
    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    goto :goto_0
.end method
