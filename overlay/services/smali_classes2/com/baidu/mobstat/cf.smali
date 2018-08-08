.class Lcom/baidu/mobstat/cf;
.super Lcom/baidu/mobstat/ew;
.source "SourceFile"


# static fields
.field private static final a:Ljava/lang/String;

.field private static b:Lcom/baidu/mobstat/cf;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    const-string/jumbo v0, "baidu_mtj_sdk_record"

    .line 15
    sput-object v0, Lcom/baidu/mobstat/cf;->a:Ljava/lang/String;

    .line 25
    new-instance v0, Lcom/baidu/mobstat/cf;

    invoke-direct {v0}, Lcom/baidu/mobstat/cf;-><init>()V

    sput-object v0, Lcom/baidu/mobstat/cf;->b:Lcom/baidu/mobstat/cf;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 30
    invoke-direct {p0}, Lcom/baidu/mobstat/ew;-><init>()V

    .line 31
    return-void
.end method

.method public static a()Lcom/baidu/mobstat/cf;
    .locals 1

    .prologue
    .line 39
    sget-object v0, Lcom/baidu/mobstat/cf;->b:Lcom/baidu/mobstat/cf;

    return-object v0
.end method


# virtual methods
.method public a(Landroid/content/Context;)Ljava/lang/Long;
    .locals 4

    .prologue
    const-string/jumbo v0, "session_first_visit_time"

    const-wide/16 v2, 0x0

    .line 65
    invoke-virtual {p0, p1, v0, v2, v3}, Lcom/baidu/mobstat/cf;->getLong(Landroid/content/Context;Ljava/lang/String;J)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    return-object v0
.end method

.method public a(Landroid/content/Context;J)V
    .locals 2

    .prologue
    const-string/jumbo v0, "session_first_visit_time"

    .line 56
    invoke-virtual {p0, p1, v0, p2, p3}, Lcom/baidu/mobstat/cf;->putLong(Landroid/content/Context;Ljava/lang/String;J)V

    .line 57
    return-void
.end method

.method public a(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1

    .prologue
    const-string/jumbo v0, "session_today_visit_count"

    .line 107
    invoke-virtual {p0, p1, v0, p2}, Lcom/baidu/mobstat/cf;->putString(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 108
    return-void
.end method

.method public b(Landroid/content/Context;)Ljava/lang/Long;
    .locals 4

    .prologue
    const-string/jumbo v0, "session_last_visit_time"

    const-wide/16 v2, 0x0

    .line 82
    invoke-virtual {p0, p1, v0, v2, v3}, Lcom/baidu/mobstat/cf;->getLong(Landroid/content/Context;Ljava/lang/String;J)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    return-object v0
.end method

.method public b(Landroid/content/Context;J)V
    .locals 2

    .prologue
    const-string/jumbo v0, "session_last_visit_time"

    .line 73
    invoke-virtual {p0, p1, v0, p2, p3}, Lcom/baidu/mobstat/cf;->putLong(Landroid/content/Context;Ljava/lang/String;J)V

    .line 74
    return-void
.end method

.method public b(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1

    .prologue
    const-string/jumbo v0, "session_recent_visit"

    .line 122
    invoke-virtual {p0, p1, v0, p2}, Lcom/baidu/mobstat/cf;->putString(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 123
    return-void
.end method

.method public c(Landroid/content/Context;)Ljava/lang/Long;
    .locals 4

    .prologue
    const-string/jumbo v0, "session_visit_interval"

    const-wide/16 v2, 0x0

    .line 99
    invoke-virtual {p0, p1, v0, v2, v3}, Lcom/baidu/mobstat/cf;->getLong(Landroid/content/Context;Ljava/lang/String;J)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    return-object v0
.end method

.method public c(Landroid/content/Context;J)V
    .locals 2

    .prologue
    const-string/jumbo v0, "session_visit_interval"

    .line 90
    invoke-virtual {p0, p1, v0, p2, p3}, Lcom/baidu/mobstat/cf;->putLong(Landroid/content/Context;Ljava/lang/String;J)V

    .line 91
    return-void
.end method

.method public d(Landroid/content/Context;)Ljava/lang/String;
    .locals 2

    .prologue
    const-string/jumbo v0, "session_today_visit_count"

    const-string/jumbo v1, ""

    .line 114
    invoke-virtual {p0, p1, v0, v1}, Lcom/baidu/mobstat/cf;->getString(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public e(Landroid/content/Context;)Ljava/lang/String;
    .locals 2

    .prologue
    const-string/jumbo v0, "session_recent_visit"

    const-string/jumbo v1, ""

    .line 131
    invoke-virtual {p0, p1, v0, v1}, Lcom/baidu/mobstat/cf;->getString(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;
    .locals 2

    .prologue
    .line 44
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xb

    if-ge v0, v1, :cond_0

    .line 47
    sget-object v0, Lcom/baidu/mobstat/cf;->a:Ljava/lang/String;

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    return-object v0

    .line 45
    :cond_0
    sget-object v0, Lcom/baidu/mobstat/cf;->a:Ljava/lang/String;

    const/4 v1, 0x4

    invoke-virtual {p1, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    return-object v0
.end method
