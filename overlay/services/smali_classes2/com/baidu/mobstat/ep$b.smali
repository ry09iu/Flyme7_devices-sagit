.class public Lcom/baidu/mobstat/ep$b;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/baidu/mobstat/ep;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "b"
.end annotation


# instance fields
.field public a:Ljava/lang/String;

.field public b:Ljava/lang/String;

.field public c:Z

.field public d:I

.field final synthetic e:Lcom/baidu/mobstat/ep;


# direct methods
.method public constructor <init>(Lcom/baidu/mobstat/ep;Ljava/lang/String;Ljava/lang/String;ZI)V
    .locals 0

    .prologue
    .line 154
    iput-object p1, p0, Lcom/baidu/mobstat/ep$b;->e:Lcom/baidu/mobstat/ep;

    .line 155
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 156
    iput-object p2, p0, Lcom/baidu/mobstat/ep$b;->a:Ljava/lang/String;

    .line 157
    iput-object p3, p0, Lcom/baidu/mobstat/ep$b;->b:Ljava/lang/String;

    .line 158
    iput-boolean p4, p0, Lcom/baidu/mobstat/ep$b;->c:Z

    .line 159
    iput p5, p0, Lcom/baidu/mobstat/ep$b;->d:I

    .line 160
    return-void
.end method
