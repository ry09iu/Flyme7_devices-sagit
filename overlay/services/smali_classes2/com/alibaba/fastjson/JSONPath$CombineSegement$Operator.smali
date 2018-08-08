.class final enum Lcom/alibaba/fastjson/JSONPath$CombineSegement$Operator;
.super Ljava/lang/Enum;
.source "JSONPath.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/fastjson/JSONPath$CombineSegement;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4018
    name = "Operator"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/alibaba/fastjson/JSONPath$CombineSegement$Operator;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/alibaba/fastjson/JSONPath$CombineSegement$Operator;

.field public static final enum And:Lcom/alibaba/fastjson/JSONPath$CombineSegement$Operator;

.field public static final enum Or:Lcom/alibaba/fastjson/JSONPath$CombineSegement$Operator;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 2101
    new-instance v0, Lcom/alibaba/fastjson/JSONPath$CombineSegement$Operator;

    const-string/jumbo v1, "And"

    invoke-direct {v0, v1, v2}, Lcom/alibaba/fastjson/JSONPath$CombineSegement$Operator;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/alibaba/fastjson/JSONPath$CombineSegement$Operator;->And:Lcom/alibaba/fastjson/JSONPath$CombineSegement$Operator;

    new-instance v0, Lcom/alibaba/fastjson/JSONPath$CombineSegement$Operator;

    const-string/jumbo v1, "Or"

    invoke-direct {v0, v1, v3}, Lcom/alibaba/fastjson/JSONPath$CombineSegement$Operator;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/alibaba/fastjson/JSONPath$CombineSegement$Operator;->Or:Lcom/alibaba/fastjson/JSONPath$CombineSegement$Operator;

    const/4 v0, 0x2

    .line 2100
    new-array v0, v0, [Lcom/alibaba/fastjson/JSONPath$CombineSegement$Operator;

    sget-object v1, Lcom/alibaba/fastjson/JSONPath$CombineSegement$Operator;->And:Lcom/alibaba/fastjson/JSONPath$CombineSegement$Operator;

    aput-object v1, v0, v2

    sget-object v1, Lcom/alibaba/fastjson/JSONPath$CombineSegement$Operator;->Or:Lcom/alibaba/fastjson/JSONPath$CombineSegement$Operator;

    aput-object v1, v0, v3

    sput-object v0, Lcom/alibaba/fastjson/JSONPath$CombineSegement$Operator;->$VALUES:[Lcom/alibaba/fastjson/JSONPath$CombineSegement$Operator;

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
    .line 2100
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/alibaba/fastjson/JSONPath$CombineSegement$Operator;
    .locals 1

    .prologue
    const-class v0, Lcom/alibaba/fastjson/JSONPath$CombineSegement$Operator;

    .line 2100
    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/alibaba/fastjson/JSONPath$CombineSegement$Operator;

    return-object v0
.end method

.method public static values()[Lcom/alibaba/fastjson/JSONPath$CombineSegement$Operator;
    .locals 1

    .prologue
    .line 2100
    sget-object v0, Lcom/alibaba/fastjson/JSONPath$CombineSegement$Operator;->$VALUES:[Lcom/alibaba/fastjson/JSONPath$CombineSegement$Operator;

    invoke-virtual {v0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/alibaba/fastjson/JSONPath$CombineSegement$Operator;

    return-object v0
.end method
