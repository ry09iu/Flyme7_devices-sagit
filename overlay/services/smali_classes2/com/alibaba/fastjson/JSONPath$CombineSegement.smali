.class Lcom/alibaba/fastjson/JSONPath$CombineSegement;
.super Ljava/lang/Object;
.source "JSONPath.java"

# interfaces
.implements Lcom/alibaba/fastjson/JSONPath$Segement;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/fastjson/JSONPath;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "CombineSegement"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alibaba/fastjson/JSONPath$CombineSegement$Operator;
    }
.end annotation


# instance fields
.field public final left:Lcom/alibaba/fastjson/JSONPath$Segement;

.field public final operator:Lcom/alibaba/fastjson/JSONPath$CombineSegement$Operator;

.field public final right:Lcom/alibaba/fastjson/JSONPath$Segement;


# direct methods
.method public constructor <init>(Lcom/alibaba/fastjson/JSONPath$Segement;Lcom/alibaba/fastjson/JSONPath$Segement;Lcom/alibaba/fastjson/JSONPath$CombineSegement$Operator;)V
    .locals 0

    .prologue
    .line 2089
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2090
    iput-object p1, p0, Lcom/alibaba/fastjson/JSONPath$CombineSegement;->left:Lcom/alibaba/fastjson/JSONPath$Segement;

    .line 2091
    iput-object p2, p0, Lcom/alibaba/fastjson/JSONPath$CombineSegement;->right:Lcom/alibaba/fastjson/JSONPath$Segement;

    .line 2092
    iput-object p3, p0, Lcom/alibaba/fastjson/JSONPath$CombineSegement;->operator:Lcom/alibaba/fastjson/JSONPath$CombineSegement$Operator;

    .line 2093
    return-void
.end method


# virtual methods
.method public eval(Lcom/alibaba/fastjson/JSONPath;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 2096
    return-object v0
.end method
