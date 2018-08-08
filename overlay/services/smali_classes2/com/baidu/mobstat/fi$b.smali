.class public final enum Lcom/baidu/mobstat/fi$b;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/baidu/mobstat/fi;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/baidu/mobstat/fi$b;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lcom/baidu/mobstat/fi$b;

.field private static final synthetic b:[Lcom/baidu/mobstat/fi$b;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 16
    new-instance v0, Lcom/baidu/mobstat/fi$b;

    const-string/jumbo v1, "CLIENT"

    invoke-direct {v0, v1, v2}, Lcom/baidu/mobstat/fi$b;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/baidu/mobstat/fi$b;->a:Lcom/baidu/mobstat/fi$b;

    const/4 v0, 0x1

    .line 15
    new-array v0, v0, [Lcom/baidu/mobstat/fi$b;

    sget-object v1, Lcom/baidu/mobstat/fi$b;->a:Lcom/baidu/mobstat/fi$b;

    aput-object v1, v0, v2

    sput-object v0, Lcom/baidu/mobstat/fi$b;->b:[Lcom/baidu/mobstat/fi$b;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 15
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/baidu/mobstat/fi$b;
    .locals 1

    .prologue
    const-class v0, Lcom/baidu/mobstat/fi$b;

    .line 15
    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/baidu/mobstat/fi$b;

    return-object v0
.end method

.method public static values()[Lcom/baidu/mobstat/fi$b;
    .locals 1

    .prologue
    .line 15
    sget-object v0, Lcom/baidu/mobstat/fi$b;->b:[Lcom/baidu/mobstat/fi$b;

    invoke-virtual {v0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/baidu/mobstat/fi$b;

    return-object v0
.end method
