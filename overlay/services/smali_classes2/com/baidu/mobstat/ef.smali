.class public abstract Lcom/baidu/mobstat/ef;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static a:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    const/4 v0, 0x2

    .line 25
    sput v0, Lcom/baidu/mobstat/ef;->a:I

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private a(ILjava/lang/String;)V
    .locals 1

    .prologue
    .line 119
    invoke-virtual {p0}, Lcom/baidu/mobstat/ef;->b()Z

    move-result v0

    if-nez v0, :cond_1

    .line 122
    :cond_0
    :goto_0
    return-void

    .line 119
    :cond_1
    sget v0, Lcom/baidu/mobstat/ef;->a:I

    if-lt p1, v0, :cond_0

    .line 120
    invoke-virtual {p0}, Lcom/baidu/mobstat/ef;->a()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0, p2}, Landroid/util/Log;->println(ILjava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private d(Ljava/lang/Throwable;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 100
    if-eqz p1, :cond_0

    move-object v0, p1

    .line 105
    :goto_0
    if-nez v0, :cond_1

    .line 112
    new-instance v0, Ljava/io/StringWriter;

    invoke-direct {v0}, Ljava/io/StringWriter;-><init>()V

    .line 113
    new-instance v1, Ljava/io/PrintWriter;

    invoke-direct {v1, v0}, Ljava/io/PrintWriter;-><init>(Ljava/io/Writer;)V

    .line 114
    invoke-virtual {p1, v1}, Ljava/lang/Throwable;->printStackTrace(Ljava/io/PrintWriter;)V

    .line 115
    invoke-virtual {v0}, Ljava/io/StringWriter;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    const-string/jumbo v0, ""

    .line 101
    return-object v0

    .line 106
    :cond_1
    instance-of v1, v0, Ljava/net/UnknownHostException;

    if-nez v1, :cond_2

    .line 109
    invoke-virtual {v0}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    goto :goto_0

    :cond_2
    const-string/jumbo v0, ""

    .line 107
    return-object v0
.end method


# virtual methods
.method public abstract a()Ljava/lang/String;
.end method

.method public a(Ljava/lang/String;)V
    .locals 1

    .prologue
    const/4 v0, 0x3

    .line 40
    invoke-direct {p0, v0, p1}, Lcom/baidu/mobstat/ef;->a(ILjava/lang/String;)V

    .line 41
    return-void
.end method

.method public a(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 3

    .prologue
    const/4 v0, 0x2

    .line 36
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/16 v2, 0xa

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-direct {p0, p2}, Lcom/baidu/mobstat/ef;->d(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/baidu/mobstat/ef;->a(ILjava/lang/String;)V

    .line 37
    return-void
.end method

.method public a(Ljava/lang/Throwable;)V
    .locals 2

    .prologue
    const/4 v0, 0x3

    .line 44
    invoke-direct {p0, p1}, Lcom/baidu/mobstat/ef;->d(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/baidu/mobstat/ef;->a(ILjava/lang/String;)V

    .line 45
    return-void
.end method

.method public b(Ljava/lang/String;)V
    .locals 1

    .prologue
    const/4 v0, 0x5

    .line 64
    invoke-direct {p0, v0, p1}, Lcom/baidu/mobstat/ef;->a(ILjava/lang/String;)V

    .line 65
    return-void
.end method

.method public b(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 3

    .prologue
    const/4 v0, 0x3

    .line 48
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/16 v2, 0xa

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-direct {p0, p2}, Lcom/baidu/mobstat/ef;->d(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/baidu/mobstat/ef;->a(ILjava/lang/String;)V

    .line 49
    return-void
.end method

.method public b(Ljava/lang/Throwable;)V
    .locals 2

    .prologue
    const/4 v0, 0x5

    .line 68
    invoke-direct {p0, p1}, Lcom/baidu/mobstat/ef;->d(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/baidu/mobstat/ef;->a(ILjava/lang/String;)V

    .line 69
    return-void
.end method

.method public abstract b()Z
.end method

.method public c(Ljava/lang/String;)V
    .locals 1

    .prologue
    const/4 v0, 0x6

    .line 76
    invoke-direct {p0, v0, p1}, Lcom/baidu/mobstat/ef;->a(ILjava/lang/String;)V

    .line 77
    return-void
.end method

.method public c(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 3

    .prologue
    const/4 v0, 0x4

    .line 60
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/16 v2, 0xa

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-direct {p0, p2}, Lcom/baidu/mobstat/ef;->d(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/baidu/mobstat/ef;->a(ILjava/lang/String;)V

    .line 61
    return-void
.end method

.method public c(Ljava/lang/Throwable;)V
    .locals 2

    .prologue
    const/4 v0, 0x6

    .line 80
    invoke-direct {p0, p1}, Lcom/baidu/mobstat/ef;->d(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/baidu/mobstat/ef;->a(ILjava/lang/String;)V

    .line 81
    return-void
.end method

.method public d(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 3

    .prologue
    const/4 v0, 0x6

    .line 84
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/16 v2, 0xa

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-direct {p0, p2}, Lcom/baidu/mobstat/ef;->d(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/baidu/mobstat/ef;->a(ILjava/lang/String;)V

    .line 85
    return-void
.end method
