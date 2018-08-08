.class public Lcom/alibaba/fastjson/serializer/SerialContext;
.super Ljava/lang/Object;
.source "SerialContext.java"


# instance fields
.field public final features:I

.field public final fieldName:Ljava/lang/Object;

.field public final object:Ljava/lang/Object;

.field public final parent:Lcom/alibaba/fastjson/serializer/SerialContext;


# direct methods
.method public constructor <init>(Lcom/alibaba/fastjson/serializer/SerialContext;Ljava/lang/Object;Ljava/lang/Object;II)V
    .locals 0

    .prologue
    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 11
    iput-object p1, p0, Lcom/alibaba/fastjson/serializer/SerialContext;->parent:Lcom/alibaba/fastjson/serializer/SerialContext;

    .line 12
    iput-object p2, p0, Lcom/alibaba/fastjson/serializer/SerialContext;->object:Ljava/lang/Object;

    .line 13
    iput-object p3, p0, Lcom/alibaba/fastjson/serializer/SerialContext;->fieldName:Ljava/lang/Object;

    .line 14
    iput p4, p0, Lcom/alibaba/fastjson/serializer/SerialContext;->features:I

    .line 15
    return-void
.end method


# virtual methods
.method public getFieldName()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 88
    iget-object v0, p0, Lcom/alibaba/fastjson/serializer/SerialContext;->fieldName:Ljava/lang/Object;

    return-object v0
.end method

.method public getObject()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 81
    iget-object v0, p0, Lcom/alibaba/fastjson/serializer/SerialContext;->object:Ljava/lang/Object;

    return-object v0
.end method

.method public getParent()Lcom/alibaba/fastjson/serializer/SerialContext;
    .locals 1

    .prologue
    .line 74
    iget-object v0, p0, Lcom/alibaba/fastjson/serializer/SerialContext;->parent:Lcom/alibaba/fastjson/serializer/SerialContext;

    return-object v0
.end method

.method public getPath()Ljava/lang/String;
    .locals 1

    .prologue
    .line 95
    invoke-virtual {p0}, Lcom/alibaba/fastjson/serializer/SerialContext;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 18
    iget-object v0, p0, Lcom/alibaba/fastjson/serializer/SerialContext;->parent:Lcom/alibaba/fastjson/serializer/SerialContext;

    if-eqz v0, :cond_0

    .line 21
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 22
    invoke-virtual {p0, v0}, Lcom/alibaba/fastjson/serializer/SerialContext;->toString(Ljava/lang/StringBuilder;)V

    .line 23
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    const-string/jumbo v0, "$"

    .line 19
    return-object v0
.end method

.method protected toString(Ljava/lang/StringBuilder;)V
    .locals 9

    .prologue
    const/16 v8, 0x40

    const/16 v7, 0x28

    const/16 v6, 0x2e

    const/4 v1, 0x0

    const/16 v5, 0x5c

    .line 28
    iget-object v0, p0, Lcom/alibaba/fastjson/serializer/SerialContext;->parent:Lcom/alibaba/fastjson/serializer/SerialContext;

    if-eqz v0, :cond_0

    .line 31
    iget-object v0, p0, Lcom/alibaba/fastjson/serializer/SerialContext;->parent:Lcom/alibaba/fastjson/serializer/SerialContext;

    invoke-virtual {v0, p1}, Lcom/alibaba/fastjson/serializer/SerialContext;->toString(Ljava/lang/StringBuilder;)V

    .line 32
    iget-object v0, p0, Lcom/alibaba/fastjson/serializer/SerialContext;->fieldName:Ljava/lang/Object;

    if-eqz v0, :cond_1

    .line 34
    iget-object v0, p0, Lcom/alibaba/fastjson/serializer/SerialContext;->fieldName:Ljava/lang/Object;

    instance-of v0, v0, Ljava/lang/Integer;

    if-nez v0, :cond_2

    .line 39
    invoke-virtual {p1, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 41
    iget-object v0, p0, Lcom/alibaba/fastjson/serializer/SerialContext;->fieldName:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    move v0, v1

    move v2, v1

    .line 43
    :goto_0
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v4

    if-lt v0, v4, :cond_3

    .line 50
    if-nez v2, :cond_9

    .line 64
    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 68
    :goto_1
    return-void

    .line 29
    :cond_0
    const/16 v0, 0x24

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_1

    :cond_1
    const-string/jumbo v0, ".null"

    .line 33
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 35
    :cond_2
    const/16 v0, 0x5b

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 36
    iget-object v0, p0, Lcom/alibaba/fastjson/serializer/SerialContext;->fieldName:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 37
    const/16 v0, 0x5d

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 44
    :cond_3
    invoke-virtual {v3, v0}, Ljava/lang/String;->charAt(I)C

    move-result v4

    .line 45
    if-ne v4, v6, :cond_5

    .line 46
    :cond_4
    const/4 v2, 0x1

    .line 43
    :goto_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 45
    :cond_5
    if-eq v4, v8, :cond_4

    if-eq v4, v7, :cond_4

    if-eq v4, v5, :cond_4

    goto :goto_2

    .line 52
    :cond_6
    invoke-virtual {v3, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 53
    if-ne v0, v6, :cond_a

    .line 54
    :cond_7
    invoke-virtual {p1, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 55
    invoke-virtual {p1, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 61
    :cond_8
    :goto_3
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 51
    add-int/lit8 v1, v1, 0x1

    :cond_9
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v0

    if-lt v1, v0, :cond_6

    goto :goto_1

    .line 53
    :cond_a
    if-eq v0, v8, :cond_7

    if-eq v0, v7, :cond_7

    .line 56
    if-ne v0, v5, :cond_8

    .line 57
    invoke-virtual {p1, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 58
    invoke-virtual {p1, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 59
    invoke-virtual {p1, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_3
.end method
