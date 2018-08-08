.class Lcom/baidu/mobstat/ca;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/FilenameFilter;


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Lcom/baidu/mobstat/LogSender;


# direct methods
.method constructor <init>(Lcom/baidu/mobstat/LogSender;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 205
    iput-object p1, p0, Lcom/baidu/mobstat/ca;->b:Lcom/baidu/mobstat/LogSender;

    iput-object p2, p0, Lcom/baidu/mobstat/ca;->a:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public accept(Ljava/io/File;Ljava/lang/String;)Z
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 209
    iget-object v0, p0, Lcom/baidu/mobstat/ca;->a:Ljava/lang/String;

    invoke-virtual {p2, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 212
    return v1

    .line 210
    :cond_0
    const/4 v0, 0x1

    return v0
.end method
