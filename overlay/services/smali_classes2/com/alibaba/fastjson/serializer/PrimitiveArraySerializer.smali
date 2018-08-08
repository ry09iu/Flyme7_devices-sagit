.class public Lcom/alibaba/fastjson/serializer/PrimitiveArraySerializer;
.super Ljava/lang/Object;
.source "PrimitiveArraySerializer.java"

# interfaces
.implements Lcom/alibaba/fastjson/serializer/ObjectSerializer;


# static fields
.field public static instance:Lcom/alibaba/fastjson/serializer/PrimitiveArraySerializer;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 26
    new-instance v0, Lcom/alibaba/fastjson/serializer/PrimitiveArraySerializer;

    invoke-direct {v0}, Lcom/alibaba/fastjson/serializer/PrimitiveArraySerializer;-><init>()V

    sput-object v0, Lcom/alibaba/fastjson/serializer/PrimitiveArraySerializer;->instance:Lcom/alibaba/fastjson/serializer/PrimitiveArraySerializer;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final write(Lcom/alibaba/fastjson/serializer/JSONSerializer;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/reflect/Type;I)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/16 v6, 0x5d

    const/16 v3, 0x5b

    const/16 v5, 0x2c

    const/4 v0, 0x0

    .line 29
    iget-object v1, p1, Lcom/alibaba/fastjson/serializer/JSONSerializer;->out:Lcom/alibaba/fastjson/serializer/SerializeWriter;

    .line 31
    if-eqz p2, :cond_0

    .line 36
    instance-of v2, p2, [I

    if-nez v2, :cond_1

    .line 49
    instance-of v2, p2, [S

    if-nez v2, :cond_4

    .line 62
    instance-of v2, p2, [J

    if-nez v2, :cond_7

    .line 76
    instance-of v2, p2, [Z

    if-nez v2, :cond_a

    .line 89
    instance-of v2, p2, [F

    if-nez v2, :cond_d

    .line 108
    instance-of v2, p2, [D

    if-nez v2, :cond_11

    .line 127
    instance-of v0, p2, [B

    if-nez v0, :cond_15

    .line 133
    check-cast p2, [C

    check-cast p2, [C

    .line 134
    invoke-virtual {v1, p2}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->writeString([C)V

    .line 135
    return-void

    .line 32
    :cond_0
    sget-object v0, Lcom/alibaba/fastjson/serializer/SerializerFeature;->WriteNullListAsEmpty:Lcom/alibaba/fastjson/serializer/SerializerFeature;

    invoke-virtual {v1, v0}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->writeNull(Lcom/alibaba/fastjson/serializer/SerializerFeature;)V

    .line 33
    return-void

    .line 37
    :cond_1
    check-cast p2, [I

    check-cast p2, [I

    .line 38
    invoke-virtual {v1, v3}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write(I)V

    .line 39
    :goto_0
    array-length v2, p2

    if-lt v0, v2, :cond_2

    .line 45
    invoke-virtual {v1, v6}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write(I)V

    .line 46
    return-void

    .line 40
    :cond_2
    if-nez v0, :cond_3

    .line 43
    :goto_1
    aget v2, p2, v0

    invoke-virtual {v1, v2}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->writeInt(I)V

    .line 39
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 41
    :cond_3
    invoke-virtual {v1, v5}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write(I)V

    goto :goto_1

    .line 50
    :cond_4
    check-cast p2, [S

    check-cast p2, [S

    .line 51
    invoke-virtual {v1, v3}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write(I)V

    .line 52
    :goto_2
    array-length v2, p2

    if-lt v0, v2, :cond_5

    .line 58
    invoke-virtual {v1, v6}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write(I)V

    .line 59
    return-void

    .line 53
    :cond_5
    if-nez v0, :cond_6

    .line 56
    :goto_3
    aget-short v2, p2, v0

    invoke-virtual {v1, v2}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->writeInt(I)V

    .line 52
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 54
    :cond_6
    invoke-virtual {v1, v5}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write(I)V

    goto :goto_3

    .line 63
    :cond_7
    check-cast p2, [J

    check-cast p2, [J

    .line 65
    invoke-virtual {v1, v3}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write(I)V

    .line 66
    :goto_4
    array-length v2, p2

    if-lt v0, v2, :cond_8

    .line 72
    invoke-virtual {v1, v6}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write(I)V

    .line 73
    return-void

    .line 67
    :cond_8
    if-nez v0, :cond_9

    .line 70
    :goto_5
    aget-wide v2, p2, v0

    invoke-virtual {v1, v2, v3}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->writeLong(J)V

    .line 66
    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    .line 68
    :cond_9
    invoke-virtual {v1, v5}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write(I)V

    goto :goto_5

    .line 77
    :cond_a
    check-cast p2, [Z

    check-cast p2, [Z

    .line 78
    invoke-virtual {v1, v3}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write(I)V

    .line 79
    :goto_6
    array-length v2, p2

    if-lt v0, v2, :cond_b

    .line 85
    invoke-virtual {v1, v6}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write(I)V

    .line 86
    return-void

    .line 80
    :cond_b
    if-nez v0, :cond_c

    .line 83
    :goto_7
    aget-boolean v2, p2, v0

    invoke-virtual {v1, v2}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write(Z)V

    .line 79
    add-int/lit8 v0, v0, 0x1

    goto :goto_6

    .line 81
    :cond_c
    invoke-virtual {v1, v5}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write(I)V

    goto :goto_7

    .line 90
    :cond_d
    check-cast p2, [F

    check-cast p2, [F

    .line 91
    invoke-virtual {v1, v3}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write(I)V

    .line 92
    :goto_8
    array-length v2, p2

    if-lt v0, v2, :cond_e

    .line 104
    invoke-virtual {v1, v6}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write(I)V

    .line 105
    return-void

    .line 93
    :cond_e
    if-nez v0, :cond_f

    .line 97
    :goto_9
    aget v2, p2, v0

    .line 98
    invoke-static {v2}, Ljava/lang/Float;->isNaN(F)Z

    move-result v3

    if-nez v3, :cond_10

    .line 101
    invoke-static {v2}, Ljava/lang/Float;->toString(F)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->append(Ljava/lang/CharSequence;)Lcom/alibaba/fastjson/serializer/SerializeWriter;

    .line 92
    :goto_a
    add-int/lit8 v0, v0, 0x1

    goto :goto_8

    .line 94
    :cond_f
    invoke-virtual {v1, v5}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write(I)V

    goto :goto_9

    .line 99
    :cond_10
    invoke-virtual {v1}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->writeNull()V

    goto :goto_a

    .line 109
    :cond_11
    check-cast p2, [D

    check-cast p2, [D

    .line 110
    invoke-virtual {v1, v3}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write(I)V

    .line 111
    :goto_b
    array-length v2, p2

    if-lt v0, v2, :cond_12

    .line 123
    invoke-virtual {v1, v6}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write(I)V

    .line 124
    return-void

    .line 112
    :cond_12
    if-nez v0, :cond_13

    .line 116
    :goto_c
    aget-wide v2, p2, v0

    .line 117
    invoke-static {v2, v3}, Ljava/lang/Double;->isNaN(D)Z

    move-result v4

    if-nez v4, :cond_14

    .line 120
    invoke-static {v2, v3}, Ljava/lang/Double;->toString(D)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->append(Ljava/lang/CharSequence;)Lcom/alibaba/fastjson/serializer/SerializeWriter;

    .line 111
    :goto_d
    add-int/lit8 v0, v0, 0x1

    goto :goto_b

    .line 113
    :cond_13
    invoke-virtual {v1, v5}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write(I)V

    goto :goto_c

    .line 118
    :cond_14
    invoke-virtual {v1}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->writeNull()V

    goto :goto_d

    .line 128
    :cond_15
    check-cast p2, [B

    check-cast p2, [B

    .line 129
    invoke-virtual {v1, p2}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->writeByteArray([B)V

    .line 130
    return-void
.end method
