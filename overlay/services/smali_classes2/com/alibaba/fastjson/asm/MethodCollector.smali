.class public Lcom/alibaba/fastjson/asm/MethodCollector;
.super Ljava/lang/Object;
.source "MethodCollector.java"


# instance fields
.field private currentParameter:I

.field protected debugInfoPresent:Z

.field private final ignoreCount:I

.field private final paramCount:I

.field private final result:Ljava/lang/StringBuffer;


# direct methods
.method protected constructor <init>(II)V
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    iput p1, p0, Lcom/alibaba/fastjson/asm/MethodCollector;->ignoreCount:I

    .line 20
    iput p2, p0, Lcom/alibaba/fastjson/asm/MethodCollector;->paramCount:I

    .line 21
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    iput-object v1, p0, Lcom/alibaba/fastjson/asm/MethodCollector;->result:Ljava/lang/StringBuffer;

    .line 22
    iput v0, p0, Lcom/alibaba/fastjson/asm/MethodCollector;->currentParameter:I

    .line 24
    if-eqz p2, :cond_0

    :goto_0
    iput-boolean v0, p0, Lcom/alibaba/fastjson/asm/MethodCollector;->debugInfoPresent:Z

    .line 25
    return-void

    :cond_0
    const/4 v0, 0x1

    .line 24
    goto :goto_0
.end method


# virtual methods
.method protected getResult()Ljava/lang/String;
    .locals 2

    .prologue
    .line 39
    iget-object v0, p0, Lcom/alibaba/fastjson/asm/MethodCollector;->result:Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->length()I

    move-result v0

    if-nez v0, :cond_0

    const-string/jumbo v0, ""

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/alibaba/fastjson/asm/MethodCollector;->result:Ljava/lang/StringBuffer;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->substring(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method protected visitLocalVariable(Ljava/lang/String;I)V
    .locals 2

    .prologue
    .line 28
    iget v0, p0, Lcom/alibaba/fastjson/asm/MethodCollector;->ignoreCount:I

    if-ge p2, v0, :cond_1

    .line 36
    :cond_0
    :goto_0
    return-void

    .line 28
    :cond_1
    iget v0, p0, Lcom/alibaba/fastjson/asm/MethodCollector;->ignoreCount:I

    iget v1, p0, Lcom/alibaba/fastjson/asm/MethodCollector;->paramCount:I

    add-int/2addr v0, v1

    if-ge p2, v0, :cond_0

    .line 29
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "arg"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/alibaba/fastjson/asm/MethodCollector;->currentParameter:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 32
    :goto_1
    iget-object v0, p0, Lcom/alibaba/fastjson/asm/MethodCollector;->result:Ljava/lang/StringBuffer;

    const/16 v1, 0x2c

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 33
    iget-object v0, p0, Lcom/alibaba/fastjson/asm/MethodCollector;->result:Ljava/lang/StringBuffer;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 34
    iget v0, p0, Lcom/alibaba/fastjson/asm/MethodCollector;->currentParameter:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/alibaba/fastjson/asm/MethodCollector;->currentParameter:I

    goto :goto_0

    .line 30
    :cond_2
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/alibaba/fastjson/asm/MethodCollector;->debugInfoPresent:Z

    goto :goto_1
.end method
