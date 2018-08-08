.class Lcom/baidu/mobstat/dm;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Lcom/baidu/mobstat/dc;


# direct methods
.method constructor <init>(Lcom/baidu/mobstat/dc;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 394
    iput-object p1, p0, Lcom/baidu/mobstat/dm;->b:Lcom/baidu/mobstat/dc;

    iput-object p2, p0, Lcom/baidu/mobstat/dm;->a:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 398
    invoke-static {}, Lcom/baidu/mobstat/db;->a()Lcom/baidu/mobstat/db;

    move-result-object v0

    iget-object v1, p0, Lcom/baidu/mobstat/dm;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/baidu/mobstat/db;->a(Ljava/lang/String;)V

    .line 399
    return-void
.end method
