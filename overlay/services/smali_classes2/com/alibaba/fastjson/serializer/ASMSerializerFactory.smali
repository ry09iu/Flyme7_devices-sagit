.class public Lcom/alibaba/fastjson/serializer/ASMSerializerFactory;
.super Ljava/lang/Object;
.source "ASMSerializerFactory.java"

# interfaces
.implements Lcom/alibaba/fastjson/asm/Opcodes;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alibaba/fastjson/serializer/ASMSerializerFactory$Context;
    }
.end annotation


# static fields
.field static final JSONSerializer:Ljava/lang/String;

.field static final JavaBeanSerializer:Ljava/lang/String;

.field static final JavaBeanSerializer_desc:Ljava/lang/String;

.field static final ObjectSerializer:Ljava/lang/String;

.field static final ObjectSerializer_desc:Ljava/lang/String;

.field static final SerialContext_desc:Ljava/lang/String;

.field static final SerializeFilterable_desc:Ljava/lang/String;

.field static final SerializeWriter:Ljava/lang/String;

.field static final SerializeWriter_desc:Ljava/lang/String;


# instance fields
.field protected final classLoader:Lcom/alibaba/fastjson/util/ASMClassLoader;

.field private final seed:Ljava/util/concurrent/atomic/AtomicLong;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const-class v0, Lcom/alibaba/fastjson/serializer/JSONSerializer;

    .line 32
    invoke-static {v0}, Lcom/alibaba/fastjson/util/ASMUtils;->type(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/alibaba/fastjson/serializer/ASMSerializerFactory;->JSONSerializer:Ljava/lang/String;

    const-class v0, Lcom/alibaba/fastjson/serializer/ObjectSerializer;

    .line 33
    invoke-static {v0}, Lcom/alibaba/fastjson/util/ASMUtils;->type(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/alibaba/fastjson/serializer/ASMSerializerFactory;->ObjectSerializer:Ljava/lang/String;

    .line 34
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "L"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/alibaba/fastjson/serializer/ASMSerializerFactory;->ObjectSerializer:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ";"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/alibaba/fastjson/serializer/ASMSerializerFactory;->ObjectSerializer_desc:Ljava/lang/String;

    const-class v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;

    .line 35
    invoke-static {v0}, Lcom/alibaba/fastjson/util/ASMUtils;->type(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/alibaba/fastjson/serializer/ASMSerializerFactory;->SerializeWriter:Ljava/lang/String;

    .line 36
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "L"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/alibaba/fastjson/serializer/ASMSerializerFactory;->SerializeWriter:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ";"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/alibaba/fastjson/serializer/ASMSerializerFactory;->SerializeWriter_desc:Ljava/lang/String;

    const-class v0, Lcom/alibaba/fastjson/serializer/JavaBeanSerializer;

    .line 37
    invoke-static {v0}, Lcom/alibaba/fastjson/util/ASMUtils;->type(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/alibaba/fastjson/serializer/ASMSerializerFactory;->JavaBeanSerializer:Ljava/lang/String;

    .line 38
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "L"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-class v1, Lcom/alibaba/fastjson/serializer/JavaBeanSerializer;

    invoke-static {v1}, Lcom/alibaba/fastjson/util/ASMUtils;->type(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ";"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/alibaba/fastjson/serializer/ASMSerializerFactory;->JavaBeanSerializer_desc:Ljava/lang/String;

    const-class v0, Lcom/alibaba/fastjson/serializer/SerialContext;

    .line 39
    invoke-static {v0}, Lcom/alibaba/fastjson/util/ASMUtils;->desc(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/alibaba/fastjson/serializer/ASMSerializerFactory;->SerialContext_desc:Ljava/lang/String;

    const-class v0, Lcom/alibaba/fastjson/serializer/SerializeFilterable;

    .line 40
    invoke-static {v0}, Lcom/alibaba/fastjson/util/ASMUtils;->desc(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/alibaba/fastjson/serializer/ASMSerializerFactory;->SerializeFilterable_desc:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    new-instance v0, Lcom/alibaba/fastjson/util/ASMClassLoader;

    invoke-direct {v0}, Lcom/alibaba/fastjson/util/ASMClassLoader;-><init>()V

    iput-object v0, p0, Lcom/alibaba/fastjson/serializer/ASMSerializerFactory;->classLoader:Lcom/alibaba/fastjson/util/ASMClassLoader;

    .line 30
    new-instance v0, Ljava/util/concurrent/atomic/AtomicLong;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicLong;-><init>()V

    iput-object v0, p0, Lcom/alibaba/fastjson/serializer/ASMSerializerFactory;->seed:Ljava/util/concurrent/atomic/AtomicLong;

    return-void
.end method

.method private _after(Lcom/alibaba/fastjson/asm/MethodVisitor;Lcom/alibaba/fastjson/serializer/ASMSerializerFactory$Context;)V
    .locals 5

    .prologue
    const/16 v1, 0x19

    const/4 v0, 0x0

    .line 1713
    invoke-interface {p1, v1, v0}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitVarInsn(II)V

    const/4 v0, 0x1

    .line 1714
    invoke-interface {p1, v1, v0}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitVarInsn(II)V

    const/4 v0, 0x2

    .line 1715
    invoke-interface {p1, v1, v0}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitVarInsn(II)V

    const/16 v0, 0x15

    const-string/jumbo v1, "seperator"

    .line 1716
    invoke-virtual {p2, v1}, Lcom/alibaba/fastjson/serializer/ASMSerializerFactory$Context;->var(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p1, v0, v1}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitVarInsn(II)V

    const/16 v0, 0xb6

    .line 1717
    sget-object v1, Lcom/alibaba/fastjson/serializer/ASMSerializerFactory;->JavaBeanSerializer:Ljava/lang/String;

    const-string/jumbo v2, "writeAfter"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "(L"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v4, Lcom/alibaba/fastjson/serializer/ASMSerializerFactory;->JSONSerializer:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ";Ljava/lang/Object;C)C"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {p1, v0, v1, v2, v3}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitMethodInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const/16 v0, 0x36

    const-string/jumbo v1, "seperator"

    .line 1719
    invoke-virtual {p2, v1}, Lcom/alibaba/fastjson/serializer/ASMSerializerFactory$Context;->var(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p1, v0, v1}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitVarInsn(II)V

    .line 1720
    return-void
.end method

.method private _apply(Lcom/alibaba/fastjson/asm/MethodVisitor;Lcom/alibaba/fastjson/util/FieldInfo;Lcom/alibaba/fastjson/serializer/ASMSerializerFactory$Context;)V
    .locals 6

    .prologue
    const/4 v5, 0x2

    const/4 v1, 0x0

    const/16 v4, 0x15

    const/16 v3, 0xb8

    const/16 v2, 0x19

    .line 1766
    iget-object v0, p2, Lcom/alibaba/fastjson/util/FieldInfo;->fieldClass:Ljava/lang/Class;

    .line 1768
    invoke-interface {p1, v2, v1}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitVarInsn(II)V

    const/4 v1, 0x1

    .line 1769
    invoke-interface {p1, v2, v1}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitVarInsn(II)V

    .line 1770
    invoke-interface {p1, v2, v5}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitVarInsn(II)V

    .line 1771
    sget v1, Lcom/alibaba/fastjson/serializer/ASMSerializerFactory$Context;->fieldName:I

    invoke-interface {p1, v2, v1}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitVarInsn(II)V

    .line 1773
    sget-object v1, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    if-eq v0, v1, :cond_0

    .line 1776
    sget-object v1, Ljava/lang/Short;->TYPE:Ljava/lang/Class;

    if-eq v0, v1, :cond_1

    .line 1779
    sget-object v1, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    if-eq v0, v1, :cond_2

    .line 1782
    sget-object v1, Ljava/lang/Character;->TYPE:Ljava/lang/Class;

    if-eq v0, v1, :cond_3

    .line 1785
    sget-object v1, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    if-eq v0, v1, :cond_4

    .line 1788
    sget-object v1, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    if-eq v0, v1, :cond_5

    .line 1791
    sget-object v1, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    if-eq v0, v1, :cond_6

    .line 1794
    sget-object v1, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    if-eq v0, v1, :cond_7

    const-class v1, Ljava/math/BigDecimal;

    .line 1797
    if-eq v0, v1, :cond_8

    const-class v1, Ljava/lang/String;

    .line 1799
    if-eq v0, v1, :cond_9

    .line 1801
    invoke-virtual {v0}, Ljava/lang/Class;->isEnum()Z

    move-result v1

    if-nez v1, :cond_a

    const-class v1, Ljava/util/List;

    .line 1803
    invoke-virtual {v1, v0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-nez v0, :cond_b

    const-string/jumbo v0, "object"

    .line 1806
    invoke-virtual {p3, v0}, Lcom/alibaba/fastjson/serializer/ASMSerializerFactory$Context;->var(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p1, v2, v0}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitVarInsn(II)V

    :goto_0
    const/16 v0, 0xb6

    .line 1808
    sget-object v1, Lcom/alibaba/fastjson/serializer/ASMSerializerFactory;->JavaBeanSerializer:Ljava/lang/String;

    const-string/jumbo v2, "apply"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "(L"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v4, Lcom/alibaba/fastjson/serializer/ASMSerializerFactory;->JSONSerializer:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ";Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)Z"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {p1, v0, v1, v2, v3}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitMethodInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1811
    return-void

    :cond_0
    const-string/jumbo v0, "byte"

    .line 1774
    invoke-virtual {p3, v0}, Lcom/alibaba/fastjson/serializer/ASMSerializerFactory$Context;->var(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p1, v4, v0}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitVarInsn(II)V

    const-string/jumbo v0, "java/lang/Byte"

    const-string/jumbo v1, "valueOf"

    const-string/jumbo v2, "(B)Ljava/lang/Byte;"

    .line 1775
    invoke-interface {p1, v3, v0, v1, v2}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitMethodInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    const-string/jumbo v0, "short"

    .line 1777
    invoke-virtual {p3, v0}, Lcom/alibaba/fastjson/serializer/ASMSerializerFactory$Context;->var(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p1, v4, v0}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitVarInsn(II)V

    const-string/jumbo v0, "java/lang/Short"

    const-string/jumbo v1, "valueOf"

    const-string/jumbo v2, "(S)Ljava/lang/Short;"

    .line 1778
    invoke-interface {p1, v3, v0, v1, v2}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitMethodInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    const-string/jumbo v0, "int"

    .line 1780
    invoke-virtual {p3, v0}, Lcom/alibaba/fastjson/serializer/ASMSerializerFactory$Context;->var(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p1, v4, v0}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitVarInsn(II)V

    const-string/jumbo v0, "java/lang/Integer"

    const-string/jumbo v1, "valueOf"

    const-string/jumbo v2, "(I)Ljava/lang/Integer;"

    .line 1781
    invoke-interface {p1, v3, v0, v1, v2}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitMethodInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_3
    const-string/jumbo v0, "char"

    .line 1783
    invoke-virtual {p3, v0}, Lcom/alibaba/fastjson/serializer/ASMSerializerFactory$Context;->var(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p1, v4, v0}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitVarInsn(II)V

    const-string/jumbo v0, "java/lang/Character"

    const-string/jumbo v1, "valueOf"

    const-string/jumbo v2, "(C)Ljava/lang/Character;"

    .line 1784
    invoke-interface {p1, v3, v0, v1, v2}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitMethodInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_4
    const/16 v0, 0x16

    const-string/jumbo v1, "long"

    .line 1786
    invoke-virtual {p3, v1, v5}, Lcom/alibaba/fastjson/serializer/ASMSerializerFactory$Context;->var(Ljava/lang/String;I)I

    move-result v1

    invoke-interface {p1, v0, v1}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitVarInsn(II)V

    const-string/jumbo v0, "java/lang/Long"

    const-string/jumbo v1, "valueOf"

    const-string/jumbo v2, "(J)Ljava/lang/Long;"

    .line 1787
    invoke-interface {p1, v3, v0, v1, v2}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitMethodInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_5
    const/16 v0, 0x17

    const-string/jumbo v1, "float"

    .line 1789
    invoke-virtual {p3, v1}, Lcom/alibaba/fastjson/serializer/ASMSerializerFactory$Context;->var(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p1, v0, v1}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitVarInsn(II)V

    const-string/jumbo v0, "java/lang/Float"

    const-string/jumbo v1, "valueOf"

    const-string/jumbo v2, "(F)Ljava/lang/Float;"

    .line 1790
    invoke-interface {p1, v3, v0, v1, v2}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitMethodInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_6
    const/16 v0, 0x18

    const-string/jumbo v1, "double"

    .line 1792
    invoke-virtual {p3, v1, v5}, Lcom/alibaba/fastjson/serializer/ASMSerializerFactory$Context;->var(Ljava/lang/String;I)I

    move-result v1

    invoke-interface {p1, v0, v1}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitVarInsn(II)V

    const-string/jumbo v0, "java/lang/Double"

    const-string/jumbo v1, "valueOf"

    const-string/jumbo v2, "(D)Ljava/lang/Double;"

    .line 1793
    invoke-interface {p1, v3, v0, v1, v2}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitMethodInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_7
    const-string/jumbo v0, "boolean"

    .line 1795
    invoke-virtual {p3, v0}, Lcom/alibaba/fastjson/serializer/ASMSerializerFactory$Context;->var(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p1, v4, v0}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitVarInsn(II)V

    const-string/jumbo v0, "java/lang/Boolean"

    const-string/jumbo v1, "valueOf"

    const-string/jumbo v2, "(Z)Ljava/lang/Boolean;"

    .line 1796
    invoke-interface {p1, v3, v0, v1, v2}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitMethodInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_8
    const-string/jumbo v0, "decimal"

    .line 1798
    invoke-virtual {p3, v0}, Lcom/alibaba/fastjson/serializer/ASMSerializerFactory$Context;->var(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p1, v2, v0}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitVarInsn(II)V

    goto/16 :goto_0

    :cond_9
    const-string/jumbo v0, "string"

    .line 1800
    invoke-virtual {p3, v0}, Lcom/alibaba/fastjson/serializer/ASMSerializerFactory$Context;->var(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p1, v2, v0}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitVarInsn(II)V

    goto/16 :goto_0

    :cond_a
    const-string/jumbo v0, "enum"

    .line 1802
    invoke-virtual {p3, v0}, Lcom/alibaba/fastjson/serializer/ASMSerializerFactory$Context;->var(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p1, v2, v0}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitVarInsn(II)V

    goto/16 :goto_0

    :cond_b
    const-string/jumbo v0, "list"

    .line 1804
    invoke-virtual {p3, v0}, Lcom/alibaba/fastjson/serializer/ASMSerializerFactory$Context;->var(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p1, v2, v0}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitVarInsn(II)V

    goto/16 :goto_0
.end method

.method private _before(Lcom/alibaba/fastjson/asm/MethodVisitor;Lcom/alibaba/fastjson/serializer/ASMSerializerFactory$Context;)V
    .locals 5

    .prologue
    const/16 v1, 0x19

    const/4 v0, 0x0

    .line 1703
    invoke-interface {p1, v1, v0}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitVarInsn(II)V

    const/4 v0, 0x1

    .line 1704
    invoke-interface {p1, v1, v0}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitVarInsn(II)V

    const/4 v0, 0x2

    .line 1705
    invoke-interface {p1, v1, v0}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitVarInsn(II)V

    const/16 v0, 0x15

    const-string/jumbo v1, "seperator"

    .line 1706
    invoke-virtual {p2, v1}, Lcom/alibaba/fastjson/serializer/ASMSerializerFactory$Context;->var(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p1, v0, v1}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitVarInsn(II)V

    const/16 v0, 0xb6

    .line 1707
    sget-object v1, Lcom/alibaba/fastjson/serializer/ASMSerializerFactory;->JavaBeanSerializer:Ljava/lang/String;

    const-string/jumbo v2, "writeBefore"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "(L"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v4, Lcom/alibaba/fastjson/serializer/ASMSerializerFactory;->JSONSerializer:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ";Ljava/lang/Object;C)C"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {p1, v0, v1, v2, v3}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitMethodInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const/16 v0, 0x36

    const-string/jumbo v1, "seperator"

    .line 1709
    invoke-virtual {p2, v1}, Lcom/alibaba/fastjson/serializer/ASMSerializerFactory$Context;->var(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p1, v0, v1}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitVarInsn(II)V

    .line 1710
    return-void
.end method

.method private _decimal(Ljava/lang/Class;Lcom/alibaba/fastjson/asm/MethodVisitor;Lcom/alibaba/fastjson/util/FieldInfo;Lcom/alibaba/fastjson/serializer/ASMSerializerFactory$Context;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;",
            "Lcom/alibaba/fastjson/asm/MethodVisitor;",
            "Lcom/alibaba/fastjson/util/FieldInfo;",
            "Lcom/alibaba/fastjson/serializer/ASMSerializerFactory$Context;",
            ")V"
        }
    .end annotation

    .prologue
    const/16 v6, 0xa7

    const/16 v4, 0x19

    .line 1217
    new-instance v0, Lcom/alibaba/fastjson/asm/Label;

    invoke-direct {v0}, Lcom/alibaba/fastjson/asm/Label;-><init>()V

    .line 1219
    invoke-direct {p0, p2, p3, p4, v0}, Lcom/alibaba/fastjson/serializer/ASMSerializerFactory;->_nameApply(Lcom/alibaba/fastjson/asm/MethodVisitor;Lcom/alibaba/fastjson/util/FieldInfo;Lcom/alibaba/fastjson/serializer/ASMSerializerFactory$Context;Lcom/alibaba/fastjson/asm/Label;)V

    .line 1220
    invoke-direct {p0, p2, p4, p3}, Lcom/alibaba/fastjson/serializer/ASMSerializerFactory;->_get(Lcom/alibaba/fastjson/asm/MethodVisitor;Lcom/alibaba/fastjson/serializer/ASMSerializerFactory$Context;Lcom/alibaba/fastjson/util/FieldInfo;)V

    const/16 v1, 0x3a

    const-string/jumbo v2, "decimal"

    .line 1221
    invoke-virtual {p4, v2}, Lcom/alibaba/fastjson/serializer/ASMSerializerFactory$Context;->var(Ljava/lang/String;)I

    move-result v2

    invoke-interface {p2, v1, v2}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitVarInsn(II)V

    .line 1223
    invoke-direct {p0, p2, p3, p4, v0}, Lcom/alibaba/fastjson/serializer/ASMSerializerFactory;->_filters(Lcom/alibaba/fastjson/asm/MethodVisitor;Lcom/alibaba/fastjson/util/FieldInfo;Lcom/alibaba/fastjson/serializer/ASMSerializerFactory$Context;Lcom/alibaba/fastjson/asm/Label;)V

    .line 1225
    new-instance v1, Lcom/alibaba/fastjson/asm/Label;

    invoke-direct {v1}, Lcom/alibaba/fastjson/asm/Label;-><init>()V

    .line 1226
    new-instance v2, Lcom/alibaba/fastjson/asm/Label;

    invoke-direct {v2}, Lcom/alibaba/fastjson/asm/Label;-><init>()V

    .line 1227
    new-instance v3, Lcom/alibaba/fastjson/asm/Label;

    invoke-direct {v3}, Lcom/alibaba/fastjson/asm/Label;-><init>()V

    .line 1229
    invoke-interface {p2, v1}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitLabel(Lcom/alibaba/fastjson/asm/Label;)V

    const-string/jumbo v1, "decimal"

    .line 1232
    invoke-virtual {p4, v1}, Lcom/alibaba/fastjson/serializer/ASMSerializerFactory$Context;->var(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p2, v4, v1}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitVarInsn(II)V

    const/16 v1, 0xc7

    .line 1233
    invoke-interface {p2, v1, v2}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitJumpInsn(ILcom/alibaba/fastjson/asm/Label;)V

    .line 1234
    invoke-direct {p0, p2, p3, p4}, Lcom/alibaba/fastjson/serializer/ASMSerializerFactory;->_if_write_null(Lcom/alibaba/fastjson/asm/MethodVisitor;Lcom/alibaba/fastjson/util/FieldInfo;Lcom/alibaba/fastjson/serializer/ASMSerializerFactory$Context;)V

    .line 1235
    invoke-interface {p2, v6, v3}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitJumpInsn(ILcom/alibaba/fastjson/asm/Label;)V

    .line 1237
    invoke-interface {p2, v2}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitLabel(Lcom/alibaba/fastjson/asm/Label;)V

    const-string/jumbo v1, "out"

    .line 1239
    invoke-virtual {p4, v1}, Lcom/alibaba/fastjson/serializer/ASMSerializerFactory$Context;->var(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p2, v4, v1}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitVarInsn(II)V

    const/16 v1, 0x15

    const-string/jumbo v2, "seperator"

    .line 1240
    invoke-virtual {p4, v2}, Lcom/alibaba/fastjson/serializer/ASMSerializerFactory$Context;->var(Ljava/lang/String;)I

    move-result v2

    invoke-interface {p2, v1, v2}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitVarInsn(II)V

    .line 1241
    sget v1, Lcom/alibaba/fastjson/serializer/ASMSerializerFactory$Context;->fieldName:I

    invoke-interface {p2, v4, v1}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitVarInsn(II)V

    const-string/jumbo v1, "decimal"

    .line 1242
    invoke-virtual {p4, v1}, Lcom/alibaba/fastjson/serializer/ASMSerializerFactory$Context;->var(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p2, v4, v1}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitVarInsn(II)V

    const/16 v1, 0xb6

    .line 1243
    sget-object v2, Lcom/alibaba/fastjson/serializer/ASMSerializerFactory;->SerializeWriter:Ljava/lang/String;

    const-string/jumbo v4, "writeFieldValue"

    const-string/jumbo v5, "(CLjava/lang/String;Ljava/math/BigDecimal;)V"

    invoke-interface {p2, v1, v2, v4, v5}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitMethodInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1246
    invoke-direct {p0, p2, p4}, Lcom/alibaba/fastjson/serializer/ASMSerializerFactory;->_seperator(Lcom/alibaba/fastjson/asm/MethodVisitor;Lcom/alibaba/fastjson/serializer/ASMSerializerFactory$Context;)V

    .line 1247
    invoke-interface {p2, v6, v3}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitJumpInsn(ILcom/alibaba/fastjson/asm/Label;)V

    .line 1249
    invoke-interface {p2, v3}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitLabel(Lcom/alibaba/fastjson/asm/Label;)V

    .line 1251
    invoke-interface {p2, v0}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitLabel(Lcom/alibaba/fastjson/asm/Label;)V

    .line 1252
    return-void
.end method

.method private _double(Ljava/lang/Class;Lcom/alibaba/fastjson/asm/MethodVisitor;Lcom/alibaba/fastjson/util/FieldInfo;Lcom/alibaba/fastjson/serializer/ASMSerializerFactory$Context;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;",
            "Lcom/alibaba/fastjson/asm/MethodVisitor;",
            "Lcom/alibaba/fastjson/util/FieldInfo;",
            "Lcom/alibaba/fastjson/serializer/ASMSerializerFactory$Context;",
            ")V"
        }
    .end annotation

    .prologue
    const/16 v4, 0x19

    const/4 v3, 0x2

    .line 1177
    new-instance v0, Lcom/alibaba/fastjson/asm/Label;

    invoke-direct {v0}, Lcom/alibaba/fastjson/asm/Label;-><init>()V

    .line 1179
    invoke-direct {p0, p2, p3, p4, v0}, Lcom/alibaba/fastjson/serializer/ASMSerializerFactory;->_nameApply(Lcom/alibaba/fastjson/asm/MethodVisitor;Lcom/alibaba/fastjson/util/FieldInfo;Lcom/alibaba/fastjson/serializer/ASMSerializerFactory$Context;Lcom/alibaba/fastjson/asm/Label;)V

    .line 1180
    invoke-direct {p0, p2, p4, p3}, Lcom/alibaba/fastjson/serializer/ASMSerializerFactory;->_get(Lcom/alibaba/fastjson/asm/MethodVisitor;Lcom/alibaba/fastjson/serializer/ASMSerializerFactory$Context;Lcom/alibaba/fastjson/util/FieldInfo;)V

    const/16 v1, 0x39

    const-string/jumbo v2, "double"

    .line 1181
    invoke-virtual {p4, v2, v3}, Lcom/alibaba/fastjson/serializer/ASMSerializerFactory$Context;->var(Ljava/lang/String;I)I

    move-result v2

    invoke-interface {p2, v1, v2}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitVarInsn(II)V

    .line 1183
    invoke-direct {p0, p2, p3, p4, v0}, Lcom/alibaba/fastjson/serializer/ASMSerializerFactory;->_filters(Lcom/alibaba/fastjson/asm/MethodVisitor;Lcom/alibaba/fastjson/util/FieldInfo;Lcom/alibaba/fastjson/serializer/ASMSerializerFactory$Context;Lcom/alibaba/fastjson/asm/Label;)V

    const-string/jumbo v1, "out"

    .line 1185
    invoke-virtual {p4, v1}, Lcom/alibaba/fastjson/serializer/ASMSerializerFactory$Context;->var(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p2, v4, v1}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitVarInsn(II)V

    const/16 v1, 0x15

    const-string/jumbo v2, "seperator"

    .line 1186
    invoke-virtual {p4, v2}, Lcom/alibaba/fastjson/serializer/ASMSerializerFactory$Context;->var(Ljava/lang/String;)I

    move-result v2

    invoke-interface {p2, v1, v2}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitVarInsn(II)V

    .line 1187
    sget v1, Lcom/alibaba/fastjson/serializer/ASMSerializerFactory$Context;->fieldName:I

    invoke-interface {p2, v4, v1}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitVarInsn(II)V

    const/16 v1, 0x18

    const-string/jumbo v2, "double"

    .line 1188
    invoke-virtual {p4, v2, v3}, Lcom/alibaba/fastjson/serializer/ASMSerializerFactory$Context;->var(Ljava/lang/String;I)I

    move-result v2

    invoke-interface {p2, v1, v2}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitVarInsn(II)V

    const/16 v1, 0xb6

    .line 1189
    sget-object v2, Lcom/alibaba/fastjson/serializer/ASMSerializerFactory;->SerializeWriter:Ljava/lang/String;

    const-string/jumbo v3, "writeFieldValue"

    const-string/jumbo v4, "(CLjava/lang/String;D)V"

    invoke-interface {p2, v1, v2, v3, v4}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitMethodInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1191
    invoke-direct {p0, p2, p4}, Lcom/alibaba/fastjson/serializer/ASMSerializerFactory;->_seperator(Lcom/alibaba/fastjson/asm/MethodVisitor;Lcom/alibaba/fastjson/serializer/ASMSerializerFactory$Context;)V

    .line 1193
    invoke-interface {p2, v0}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitLabel(Lcom/alibaba/fastjson/asm/Label;)V

    .line 1194
    return-void
.end method

.method private _enum(Ljava/lang/Class;Lcom/alibaba/fastjson/asm/MethodVisitor;Lcom/alibaba/fastjson/util/FieldInfo;Lcom/alibaba/fastjson/serializer/ASMSerializerFactory$Context;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;",
            "Lcom/alibaba/fastjson/asm/MethodVisitor;",
            "Lcom/alibaba/fastjson/util/FieldInfo;",
            "Lcom/alibaba/fastjson/serializer/ASMSerializerFactory$Context;",
            ")V"
        }
    .end annotation

    .prologue
    const/16 v7, 0x15

    const/16 v6, 0xb6

    const/16 v5, 0x19

    .line 1064
    new-instance v0, Lcom/alibaba/fastjson/asm/Label;

    invoke-direct {v0}, Lcom/alibaba/fastjson/asm/Label;-><init>()V

    .line 1065
    new-instance v1, Lcom/alibaba/fastjson/asm/Label;

    invoke-direct {v1}, Lcom/alibaba/fastjson/asm/Label;-><init>()V

    .line 1066
    new-instance v2, Lcom/alibaba/fastjson/asm/Label;

    invoke-direct {v2}, Lcom/alibaba/fastjson/asm/Label;-><init>()V

    .line 1068
    invoke-direct {p0, p2, p3, p4, v2}, Lcom/alibaba/fastjson/serializer/ASMSerializerFactory;->_nameApply(Lcom/alibaba/fastjson/asm/MethodVisitor;Lcom/alibaba/fastjson/util/FieldInfo;Lcom/alibaba/fastjson/serializer/ASMSerializerFactory$Context;Lcom/alibaba/fastjson/asm/Label;)V

    .line 1069
    invoke-direct {p0, p2, p4, p3}, Lcom/alibaba/fastjson/serializer/ASMSerializerFactory;->_get(Lcom/alibaba/fastjson/asm/MethodVisitor;Lcom/alibaba/fastjson/serializer/ASMSerializerFactory$Context;Lcom/alibaba/fastjson/util/FieldInfo;)V

    const/16 v3, 0xc0

    const-string/jumbo v4, "java/lang/Enum"

    .line 1070
    invoke-interface {p2, v3, v4}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitTypeInsn(ILjava/lang/String;)V

    const/16 v3, 0x3a

    const-string/jumbo v4, "enum"

    .line 1071
    invoke-virtual {p4, v4}, Lcom/alibaba/fastjson/serializer/ASMSerializerFactory$Context;->var(Ljava/lang/String;)I

    move-result v4

    invoke-interface {p2, v3, v4}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitVarInsn(II)V

    .line 1073
    invoke-direct {p0, p2, p3, p4, v2}, Lcom/alibaba/fastjson/serializer/ASMSerializerFactory;->_filters(Lcom/alibaba/fastjson/asm/MethodVisitor;Lcom/alibaba/fastjson/util/FieldInfo;Lcom/alibaba/fastjson/serializer/ASMSerializerFactory$Context;Lcom/alibaba/fastjson/asm/Label;)V

    const-string/jumbo v3, "enum"

    .line 1075
    invoke-virtual {p4, v3}, Lcom/alibaba/fastjson/serializer/ASMSerializerFactory$Context;->var(Ljava/lang/String;)I

    move-result v3

    invoke-interface {p2, v5, v3}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitVarInsn(II)V

    const/16 v3, 0xc7

    .line 1076
    invoke-interface {p2, v3, v0}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitJumpInsn(ILcom/alibaba/fastjson/asm/Label;)V

    .line 1077
    invoke-direct {p0, p2, p3, p4}, Lcom/alibaba/fastjson/serializer/ASMSerializerFactory;->_if_write_null(Lcom/alibaba/fastjson/asm/MethodVisitor;Lcom/alibaba/fastjson/util/FieldInfo;Lcom/alibaba/fastjson/serializer/ASMSerializerFactory$Context;)V

    const/16 v3, 0xa7

    .line 1078
    invoke-interface {p2, v3, v1}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitJumpInsn(ILcom/alibaba/fastjson/asm/Label;)V

    .line 1080
    invoke-interface {p2, v0}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitLabel(Lcom/alibaba/fastjson/asm/Label;)V

    .line 1082
    invoke-static {p4}, Lcom/alibaba/fastjson/serializer/ASMSerializerFactory$Context;->access$000(Lcom/alibaba/fastjson/serializer/ASMSerializerFactory$Context;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string/jumbo v0, "out"

    .line 1091
    invoke-virtual {p4, v0}, Lcom/alibaba/fastjson/serializer/ASMSerializerFactory$Context;->var(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p2, v5, v0}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitVarInsn(II)V

    const-string/jumbo v0, "seperator"

    .line 1092
    invoke-virtual {p4, v0}, Lcom/alibaba/fastjson/serializer/ASMSerializerFactory$Context;->var(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p2, v7, v0}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitVarInsn(II)V

    .line 1093
    sget-object v0, Lcom/alibaba/fastjson/serializer/ASMSerializerFactory;->SerializeWriter:Ljava/lang/String;

    const-string/jumbo v3, "write"

    const-string/jumbo v4, "(I)V"

    invoke-interface {p2, v6, v0, v3, v4}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitMethodInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v0, "out"

    .line 1095
    invoke-virtual {p4, v0}, Lcom/alibaba/fastjson/serializer/ASMSerializerFactory$Context;->var(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p2, v5, v0}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitVarInsn(II)V

    .line 1096
    sget v0, Lcom/alibaba/fastjson/serializer/ASMSerializerFactory$Context;->fieldName:I

    invoke-interface {p2, v5, v0}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitVarInsn(II)V

    const/4 v0, 0x3

    .line 1097
    invoke-interface {p2, v0}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitInsn(I)V

    .line 1098
    sget-object v0, Lcom/alibaba/fastjson/serializer/ASMSerializerFactory;->SerializeWriter:Ljava/lang/String;

    const-string/jumbo v3, "writeFieldName"

    const-string/jumbo v4, "(Ljava/lang/String;Z)V"

    invoke-interface {p2, v6, v0, v3, v4}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitMethodInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x1

    .line 1100
    invoke-interface {p2, v5, v0}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitVarInsn(II)V

    const-string/jumbo v0, "enum"

    .line 1101
    invoke-virtual {p4, v0}, Lcom/alibaba/fastjson/serializer/ASMSerializerFactory$Context;->var(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p2, v5, v0}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitVarInsn(II)V

    .line 1102
    sget v0, Lcom/alibaba/fastjson/serializer/ASMSerializerFactory$Context;->fieldName:I

    invoke-interface {p2, v5, v0}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitVarInsn(II)V

    .line 1103
    iget-object v0, p3, Lcom/alibaba/fastjson/util/FieldInfo;->fieldClass:Ljava/lang/Class;

    invoke-static {v0}, Lcom/alibaba/fastjson/util/ASMUtils;->desc(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/alibaba/fastjson/asm/Type;->getType(Ljava/lang/String;)Lcom/alibaba/fastjson/asm/Type;

    move-result-object v0

    invoke-interface {p2, v0}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitLdcInsn(Ljava/lang/Object;)V

    .line 1104
    iget v0, p3, Lcom/alibaba/fastjson/util/FieldInfo;->serialzeFeatures:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p2, v0}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitLdcInsn(Ljava/lang/Object;)V

    .line 1105
    sget-object v0, Lcom/alibaba/fastjson/serializer/ASMSerializerFactory;->JSONSerializer:Ljava/lang/String;

    const-string/jumbo v3, "writeWithFieldName"

    const-string/jumbo v4, "(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/reflect/Type;I)V"

    invoke-interface {p2, v6, v0, v3, v4}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitMethodInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1109
    :goto_0
    invoke-direct {p0, p2, p4}, Lcom/alibaba/fastjson/serializer/ASMSerializerFactory;->_seperator(Lcom/alibaba/fastjson/asm/MethodVisitor;Lcom/alibaba/fastjson/serializer/ASMSerializerFactory$Context;)V

    .line 1111
    invoke-interface {p2, v1}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitLabel(Lcom/alibaba/fastjson/asm/Label;)V

    .line 1112
    invoke-interface {p2, v2}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitLabel(Lcom/alibaba/fastjson/asm/Label;)V

    .line 1113
    return-void

    :cond_0
    const-string/jumbo v0, "out"

    .line 1083
    invoke-virtual {p4, v0}, Lcom/alibaba/fastjson/serializer/ASMSerializerFactory$Context;->var(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p2, v5, v0}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitVarInsn(II)V

    const-string/jumbo v0, "seperator"

    .line 1084
    invoke-virtual {p4, v0}, Lcom/alibaba/fastjson/serializer/ASMSerializerFactory$Context;->var(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p2, v7, v0}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitVarInsn(II)V

    .line 1085
    sget v0, Lcom/alibaba/fastjson/serializer/ASMSerializerFactory$Context;->fieldName:I

    invoke-interface {p2, v5, v0}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitVarInsn(II)V

    const-string/jumbo v0, "enum"

    .line 1086
    invoke-virtual {p4, v0}, Lcom/alibaba/fastjson/serializer/ASMSerializerFactory$Context;->var(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p2, v5, v0}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitVarInsn(II)V

    const-string/jumbo v0, "java/lang/Enum"

    const-string/jumbo v3, "name"

    const-string/jumbo v4, "()Ljava/lang/String;"

    .line 1087
    invoke-interface {p2, v6, v0, v3, v4}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitMethodInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1088
    sget-object v0, Lcom/alibaba/fastjson/serializer/ASMSerializerFactory;->SerializeWriter:Ljava/lang/String;

    const-string/jumbo v3, "writeFieldValueStringWithDoubleQuote"

    const-string/jumbo v4, "(CLjava/lang/String;Ljava/lang/String;)V"

    invoke-interface {p2, v6, v0, v3, v4}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitMethodInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private _filters(Lcom/alibaba/fastjson/asm/MethodVisitor;Lcom/alibaba/fastjson/util/FieldInfo;Lcom/alibaba/fastjson/serializer/ASMSerializerFactory$Context;Lcom/alibaba/fastjson/asm/Label;)V
    .locals 4

    .prologue
    .line 1530
    iget-boolean v0, p2, Lcom/alibaba/fastjson/util/FieldInfo;->fieldTransient:Z

    if-nez v0, :cond_0

    .line 1537
    :goto_0
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/alibaba/fastjson/serializer/ASMSerializerFactory;->_notWriteDefault(Lcom/alibaba/fastjson/asm/MethodVisitor;Lcom/alibaba/fastjson/util/FieldInfo;Lcom/alibaba/fastjson/serializer/ASMSerializerFactory$Context;Lcom/alibaba/fastjson/asm/Label;)V

    .line 1539
    invoke-static {p3}, Lcom/alibaba/fastjson/serializer/ASMSerializerFactory$Context;->access$000(Lcom/alibaba/fastjson/serializer/ASMSerializerFactory$Context;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 1543
    invoke-direct {p0, p1, p2, p3}, Lcom/alibaba/fastjson/serializer/ASMSerializerFactory;->_apply(Lcom/alibaba/fastjson/asm/MethodVisitor;Lcom/alibaba/fastjson/util/FieldInfo;Lcom/alibaba/fastjson/serializer/ASMSerializerFactory$Context;)V

    const/16 v0, 0x99

    .line 1544
    invoke-interface {p1, v0, p4}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitJumpInsn(ILcom/alibaba/fastjson/asm/Label;)V

    .line 1546
    invoke-direct {p0, p1, p2, p3}, Lcom/alibaba/fastjson/serializer/ASMSerializerFactory;->_processKey(Lcom/alibaba/fastjson/asm/MethodVisitor;Lcom/alibaba/fastjson/util/FieldInfo;Lcom/alibaba/fastjson/serializer/ASMSerializerFactory$Context;)V

    .line 1548
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/alibaba/fastjson/serializer/ASMSerializerFactory;->_processValue(Lcom/alibaba/fastjson/asm/MethodVisitor;Lcom/alibaba/fastjson/util/FieldInfo;Lcom/alibaba/fastjson/serializer/ASMSerializerFactory$Context;Lcom/alibaba/fastjson/asm/Label;)V

    .line 1549
    return-void

    :cond_0
    const/16 v0, 0x19

    const-string/jumbo v1, "out"

    .line 1531
    invoke-virtual {p3, v1}, Lcom/alibaba/fastjson/serializer/ASMSerializerFactory$Context;->var(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p1, v0, v1}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitVarInsn(II)V

    .line 1532
    sget-object v0, Lcom/alibaba/fastjson/serializer/SerializerFeature;->SkipTransientField:Lcom/alibaba/fastjson/serializer/SerializerFeature;

    iget v0, v0, Lcom/alibaba/fastjson/serializer/SerializerFeature;->mask:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p1, v0}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitLdcInsn(Ljava/lang/Object;)V

    const/16 v0, 0xb6

    .line 1533
    sget-object v1, Lcom/alibaba/fastjson/serializer/ASMSerializerFactory;->SerializeWriter:Ljava/lang/String;

    const-string/jumbo v2, "isEnabled"

    const-string/jumbo v3, "(I)Z"

    invoke-interface {p1, v0, v1, v2, v3}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitMethodInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const/16 v0, 0x9a

    .line 1534
    invoke-interface {p1, v0, p4}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitJumpInsn(ILcom/alibaba/fastjson/asm/Label;)V

    goto :goto_0

    .line 1540
    :cond_1
    return-void
.end method

.method private _float(Ljava/lang/Class;Lcom/alibaba/fastjson/asm/MethodVisitor;Lcom/alibaba/fastjson/util/FieldInfo;Lcom/alibaba/fastjson/serializer/ASMSerializerFactory$Context;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;",
            "Lcom/alibaba/fastjson/asm/MethodVisitor;",
            "Lcom/alibaba/fastjson/util/FieldInfo;",
            "Lcom/alibaba/fastjson/serializer/ASMSerializerFactory$Context;",
            ")V"
        }
    .end annotation

    .prologue
    const/16 v3, 0x19

    .line 1157
    new-instance v0, Lcom/alibaba/fastjson/asm/Label;

    invoke-direct {v0}, Lcom/alibaba/fastjson/asm/Label;-><init>()V

    .line 1159
    invoke-direct {p0, p2, p3, p4, v0}, Lcom/alibaba/fastjson/serializer/ASMSerializerFactory;->_nameApply(Lcom/alibaba/fastjson/asm/MethodVisitor;Lcom/alibaba/fastjson/util/FieldInfo;Lcom/alibaba/fastjson/serializer/ASMSerializerFactory$Context;Lcom/alibaba/fastjson/asm/Label;)V

    .line 1160
    invoke-direct {p0, p2, p4, p3}, Lcom/alibaba/fastjson/serializer/ASMSerializerFactory;->_get(Lcom/alibaba/fastjson/asm/MethodVisitor;Lcom/alibaba/fastjson/serializer/ASMSerializerFactory$Context;Lcom/alibaba/fastjson/util/FieldInfo;)V

    const/16 v1, 0x38

    const-string/jumbo v2, "float"

    .line 1161
    invoke-virtual {p4, v2}, Lcom/alibaba/fastjson/serializer/ASMSerializerFactory$Context;->var(Ljava/lang/String;)I

    move-result v2

    invoke-interface {p2, v1, v2}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitVarInsn(II)V

    .line 1163
    invoke-direct {p0, p2, p3, p4, v0}, Lcom/alibaba/fastjson/serializer/ASMSerializerFactory;->_filters(Lcom/alibaba/fastjson/asm/MethodVisitor;Lcom/alibaba/fastjson/util/FieldInfo;Lcom/alibaba/fastjson/serializer/ASMSerializerFactory$Context;Lcom/alibaba/fastjson/asm/Label;)V

    const-string/jumbo v1, "out"

    .line 1165
    invoke-virtual {p4, v1}, Lcom/alibaba/fastjson/serializer/ASMSerializerFactory$Context;->var(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p2, v3, v1}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitVarInsn(II)V

    const/16 v1, 0x15

    const-string/jumbo v2, "seperator"

    .line 1166
    invoke-virtual {p4, v2}, Lcom/alibaba/fastjson/serializer/ASMSerializerFactory$Context;->var(Ljava/lang/String;)I

    move-result v2

    invoke-interface {p2, v1, v2}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitVarInsn(II)V

    .line 1167
    sget v1, Lcom/alibaba/fastjson/serializer/ASMSerializerFactory$Context;->fieldName:I

    invoke-interface {p2, v3, v1}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitVarInsn(II)V

    const/16 v1, 0x17

    const-string/jumbo v2, "float"

    .line 1168
    invoke-virtual {p4, v2}, Lcom/alibaba/fastjson/serializer/ASMSerializerFactory$Context;->var(Ljava/lang/String;)I

    move-result v2

    invoke-interface {p2, v1, v2}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitVarInsn(II)V

    const/16 v1, 0xb6

    .line 1169
    sget-object v2, Lcom/alibaba/fastjson/serializer/ASMSerializerFactory;->SerializeWriter:Ljava/lang/String;

    const-string/jumbo v3, "writeFieldValue"

    const-string/jumbo v4, "(CLjava/lang/String;F)V"

    invoke-interface {p2, v1, v2, v3, v4}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitMethodInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1171
    invoke-direct {p0, p2, p4}, Lcom/alibaba/fastjson/serializer/ASMSerializerFactory;->_seperator(Lcom/alibaba/fastjson/asm/MethodVisitor;Lcom/alibaba/fastjson/serializer/ASMSerializerFactory$Context;)V

    .line 1173
    invoke-interface {p2, v0}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitLabel(Lcom/alibaba/fastjson/asm/Label;)V

    .line 1174
    return-void
.end method

.method private _get(Lcom/alibaba/fastjson/asm/MethodVisitor;Lcom/alibaba/fastjson/serializer/ASMSerializerFactory$Context;Lcom/alibaba/fastjson/util/FieldInfo;)V
    .locals 6

    .prologue
    const/16 v5, 0xc0

    const/16 v2, 0x19

    .line 1197
    iget-object v1, p3, Lcom/alibaba/fastjson/util/FieldInfo;->method:Ljava/lang/reflect/Method;

    .line 1198
    if-nez v1, :cond_1

    const-string/jumbo v0, "entity"

    .line 1206
    invoke-virtual {p2, v0}, Lcom/alibaba/fastjson/serializer/ASMSerializerFactory$Context;->var(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p1, v2, v0}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitVarInsn(II)V

    .line 1207
    iget-object v0, p3, Lcom/alibaba/fastjson/util/FieldInfo;->field:Ljava/lang/reflect/Field;

    const/16 v1, 0xb4

    .line 1208
    iget-object v2, p3, Lcom/alibaba/fastjson/util/FieldInfo;->declaringClass:Ljava/lang/Class;

    invoke-static {v2}, Lcom/alibaba/fastjson/util/ASMUtils;->type(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v3

    .line 1209
    invoke-virtual {v0}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v4

    invoke-static {v4}, Lcom/alibaba/fastjson/util/ASMUtils;->desc(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v4

    .line 1208
    invoke-interface {p1, v1, v2, v3, v4}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitFieldInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1210
    invoke-virtual {v0}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v0

    iget-object v1, p3, Lcom/alibaba/fastjson/util/FieldInfo;->fieldClass:Ljava/lang/Class;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1214
    :cond_0
    :goto_0
    return-void

    :cond_1
    const-string/jumbo v0, "entity"

    .line 1199
    invoke-virtual {p2, v0}, Lcom/alibaba/fastjson/serializer/ASMSerializerFactory$Context;->var(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p1, v2, v0}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitVarInsn(II)V

    .line 1200
    invoke-virtual {v1}, Ljava/lang/reflect/Method;->getDeclaringClass()Ljava/lang/Class;

    move-result-object v2

    .line 1201
    invoke-virtual {v2}, Ljava/lang/Class;->isInterface()Z

    move-result v0

    if-nez v0, :cond_2

    const/16 v0, 0xb6

    :goto_1
    invoke-static {v2}, Lcom/alibaba/fastjson/util/ASMUtils;->type(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1}, Lcom/alibaba/fastjson/util/ASMUtils;->desc(Ljava/lang/reflect/Method;)Ljava/lang/String;

    move-result-object v4

    invoke-interface {p1, v0, v2, v3, v4}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitMethodInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1202
    invoke-virtual {v1}, Ljava/lang/reflect/Method;->getReturnType()Ljava/lang/Class;

    move-result-object v0

    iget-object v1, p3, Lcom/alibaba/fastjson/util/FieldInfo;->fieldClass:Ljava/lang/Class;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1203
    iget-object v0, p3, Lcom/alibaba/fastjson/util/FieldInfo;->fieldClass:Ljava/lang/Class;

    invoke-static {v0}, Lcom/alibaba/fastjson/util/ASMUtils;->type(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v5, v0}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitTypeInsn(ILjava/lang/String;)V

    goto :goto_0

    :cond_2
    const/16 v0, 0xb9

    .line 1201
    goto :goto_1

    .line 1211
    :cond_3
    iget-object v0, p3, Lcom/alibaba/fastjson/util/FieldInfo;->fieldClass:Ljava/lang/Class;

    invoke-static {v0}, Lcom/alibaba/fastjson/util/ASMUtils;->type(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v5, v0}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitTypeInsn(ILjava/lang/String;)V

    goto :goto_0
.end method

.method private _getFieldSer(Lcom/alibaba/fastjson/serializer/ASMSerializerFactory$Context;Lcom/alibaba/fastjson/asm/MethodVisitor;Lcom/alibaba/fastjson/util/FieldInfo;)V
    .locals 9

    .prologue
    const/16 v8, 0xb4

    const/4 v7, 0x0

    const/16 v6, 0x19

    .line 2099
    new-instance v0, Lcom/alibaba/fastjson/asm/Label;

    invoke-direct {v0}, Lcom/alibaba/fastjson/asm/Label;-><init>()V

    .line 2100
    invoke-interface {p2, v6, v7}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitVarInsn(II)V

    .line 2101
    invoke-static {p1}, Lcom/alibaba/fastjson/serializer/ASMSerializerFactory$Context;->access$300(Lcom/alibaba/fastjson/serializer/ASMSerializerFactory$Context;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p3, Lcom/alibaba/fastjson/util/FieldInfo;->name:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "_asm_ser_"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    sget-object v3, Lcom/alibaba/fastjson/serializer/ASMSerializerFactory;->ObjectSerializer_desc:Ljava/lang/String;

    invoke-interface {p2, v8, v1, v2, v3}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitFieldInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const/16 v1, 0xc7

    .line 2102
    invoke-interface {p2, v1, v0}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitJumpInsn(ILcom/alibaba/fastjson/asm/Label;)V

    .line 2104
    invoke-interface {p2, v6, v7}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitVarInsn(II)V

    const/4 v1, 0x1

    .line 2105
    invoke-interface {p2, v6, v1}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitVarInsn(II)V

    .line 2106
    iget-object v1, p3, Lcom/alibaba/fastjson/util/FieldInfo;->fieldClass:Ljava/lang/Class;

    invoke-static {v1}, Lcom/alibaba/fastjson/util/ASMUtils;->desc(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/alibaba/fastjson/asm/Type;->getType(Ljava/lang/String;)Lcom/alibaba/fastjson/asm/Type;

    move-result-object v1

    invoke-interface {p2, v1}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitLdcInsn(Ljava/lang/Object;)V

    const/16 v1, 0xb6

    .line 2107
    sget-object v2, Lcom/alibaba/fastjson/serializer/ASMSerializerFactory;->JSONSerializer:Ljava/lang/String;

    const-string/jumbo v3, "getObjectWriter"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "(Ljava/lang/Class;)"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget-object v5, Lcom/alibaba/fastjson/serializer/ASMSerializerFactory;->ObjectSerializer_desc:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {p2, v1, v2, v3, v4}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitMethodInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const/16 v1, 0xb5

    .line 2110
    invoke-static {p1}, Lcom/alibaba/fastjson/serializer/ASMSerializerFactory$Context;->access$300(Lcom/alibaba/fastjson/serializer/ASMSerializerFactory$Context;)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p3, Lcom/alibaba/fastjson/util/FieldInfo;->name:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "_asm_ser_"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    sget-object v4, Lcom/alibaba/fastjson/serializer/ASMSerializerFactory;->ObjectSerializer_desc:Ljava/lang/String;

    invoke-interface {p2, v1, v2, v3, v4}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitFieldInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 2112
    invoke-interface {p2, v0}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitLabel(Lcom/alibaba/fastjson/asm/Label;)V

    .line 2114
    invoke-interface {p2, v6, v7}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitVarInsn(II)V

    .line 2115
    invoke-static {p1}, Lcom/alibaba/fastjson/serializer/ASMSerializerFactory$Context;->access$300(Lcom/alibaba/fastjson/serializer/ASMSerializerFactory$Context;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p3, Lcom/alibaba/fastjson/util/FieldInfo;->name:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "_asm_ser_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/alibaba/fastjson/serializer/ASMSerializerFactory;->ObjectSerializer_desc:Ljava/lang/String;

    invoke-interface {p2, v8, v0, v1, v2}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitFieldInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 2116
    return-void
.end method

.method private _getListFieldItemSer(Lcom/alibaba/fastjson/serializer/ASMSerializerFactory$Context;Lcom/alibaba/fastjson/asm/MethodVisitor;Lcom/alibaba/fastjson/util/FieldInfo;Ljava/lang/Class;)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/alibaba/fastjson/serializer/ASMSerializerFactory$Context;",
            "Lcom/alibaba/fastjson/asm/MethodVisitor;",
            "Lcom/alibaba/fastjson/util/FieldInfo;",
            "Ljava/lang/Class",
            "<*>;)V"
        }
    .end annotation

    .prologue
    const/16 v8, 0xb4

    const/4 v7, 0x0

    const/16 v6, 0x19

    .line 2076
    new-instance v0, Lcom/alibaba/fastjson/asm/Label;

    invoke-direct {v0}, Lcom/alibaba/fastjson/asm/Label;-><init>()V

    .line 2077
    invoke-interface {p2, v6, v7}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitVarInsn(II)V

    .line 2078
    invoke-static {p1}, Lcom/alibaba/fastjson/serializer/ASMSerializerFactory$Context;->access$300(Lcom/alibaba/fastjson/serializer/ASMSerializerFactory$Context;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p3, Lcom/alibaba/fastjson/util/FieldInfo;->name:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "_asm_list_item_ser_"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    sget-object v3, Lcom/alibaba/fastjson/serializer/ASMSerializerFactory;->ObjectSerializer_desc:Ljava/lang/String;

    invoke-interface {p2, v8, v1, v2, v3}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitFieldInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const/16 v1, 0xc7

    .line 2080
    invoke-interface {p2, v1, v0}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitJumpInsn(ILcom/alibaba/fastjson/asm/Label;)V

    .line 2082
    invoke-interface {p2, v6, v7}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitVarInsn(II)V

    const/4 v1, 0x1

    .line 2083
    invoke-interface {p2, v6, v1}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitVarInsn(II)V

    .line 2084
    invoke-static {p4}, Lcom/alibaba/fastjson/util/ASMUtils;->desc(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/alibaba/fastjson/asm/Type;->getType(Ljava/lang/String;)Lcom/alibaba/fastjson/asm/Type;

    move-result-object v1

    invoke-interface {p2, v1}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitLdcInsn(Ljava/lang/Object;)V

    const/16 v1, 0xb6

    .line 2085
    sget-object v2, Lcom/alibaba/fastjson/serializer/ASMSerializerFactory;->JSONSerializer:Ljava/lang/String;

    const-string/jumbo v3, "getObjectWriter"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "(Ljava/lang/Class;)"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget-object v5, Lcom/alibaba/fastjson/serializer/ASMSerializerFactory;->ObjectSerializer_desc:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {p2, v1, v2, v3, v4}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitMethodInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const/16 v1, 0xb5

    .line 2088
    invoke-static {p1}, Lcom/alibaba/fastjson/serializer/ASMSerializerFactory$Context;->access$300(Lcom/alibaba/fastjson/serializer/ASMSerializerFactory$Context;)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p3, Lcom/alibaba/fastjson/util/FieldInfo;->name:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "_asm_list_item_ser_"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    sget-object v4, Lcom/alibaba/fastjson/serializer/ASMSerializerFactory;->ObjectSerializer_desc:Ljava/lang/String;

    invoke-interface {p2, v1, v2, v3, v4}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitFieldInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 2091
    invoke-interface {p2, v0}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitLabel(Lcom/alibaba/fastjson/asm/Label;)V

    .line 2093
    invoke-interface {p2, v6, v7}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitVarInsn(II)V

    .line 2094
    invoke-static {p1}, Lcom/alibaba/fastjson/serializer/ASMSerializerFactory$Context;->access$300(Lcom/alibaba/fastjson/serializer/ASMSerializerFactory$Context;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p3, Lcom/alibaba/fastjson/util/FieldInfo;->name:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "_asm_list_item_ser_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/alibaba/fastjson/serializer/ASMSerializerFactory;->ObjectSerializer_desc:Ljava/lang/String;

    invoke-interface {p2, v8, v0, v1, v2}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitFieldInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 2096
    return-void
.end method

.method private _if_write_null(Lcom/alibaba/fastjson/asm/MethodVisitor;Lcom/alibaba/fastjson/util/FieldInfo;Lcom/alibaba/fastjson/serializer/ASMSerializerFactory$Context;)V
    .locals 11

    .prologue
    const/16 v10, 0xb6

    const/16 v9, 0x19

    const/4 v1, 0x0

    .line 1979
    iget-object v3, p2, Lcom/alibaba/fastjson/util/FieldInfo;->fieldClass:Ljava/lang/Class;

    .line 1981
    new-instance v0, Lcom/alibaba/fastjson/asm/Label;

    invoke-direct {v0}, Lcom/alibaba/fastjson/asm/Label;-><init>()V

    .line 1982
    new-instance v4, Lcom/alibaba/fastjson/asm/Label;

    invoke-direct {v4}, Lcom/alibaba/fastjson/asm/Label;-><init>()V

    .line 1983
    new-instance v5, Lcom/alibaba/fastjson/asm/Label;

    invoke-direct {v5}, Lcom/alibaba/fastjson/asm/Label;-><init>()V

    .line 1984
    new-instance v6, Lcom/alibaba/fastjson/asm/Label;

    invoke-direct {v6}, Lcom/alibaba/fastjson/asm/Label;-><init>()V

    .line 1986
    invoke-interface {p1, v0}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitLabel(Lcom/alibaba/fastjson/asm/Label;)V

    .line 1988
    invoke-virtual {p2}, Lcom/alibaba/fastjson/util/FieldInfo;->getAnnotation()Lcom/alibaba/fastjson/annotation/JSONField;

    move-result-object v0

    .line 1990
    if-nez v0, :cond_1

    move v0, v1

    .line 1993
    :goto_0
    invoke-static {p3}, Lcom/alibaba/fastjson/serializer/ASMSerializerFactory$Context;->access$400(Lcom/alibaba/fastjson/serializer/ASMSerializerFactory$Context;)Lcom/alibaba/fastjson/serializer/SerializeBeanInfo;

    move-result-object v2

    iget-object v2, v2, Lcom/alibaba/fastjson/serializer/SerializeBeanInfo;->jsonType:Lcom/alibaba/fastjson/annotation/JSONType;

    .line 1994
    if-nez v2, :cond_2

    :goto_1
    const-class v2, Ljava/lang/String;

    .line 1999
    if-eq v3, v2, :cond_3

    const-class v2, Ljava/lang/Number;

    .line 2002
    invoke-virtual {v2, v3}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v2

    if-nez v2, :cond_4

    const-class v2, Ljava/util/Collection;

    .line 2005
    invoke-virtual {v2, v3}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v2

    if-nez v2, :cond_5

    const-class v2, Ljava/lang/Boolean;

    .line 2008
    if-eq v2, v3, :cond_6

    .line 2012
    sget v2, Lcom/alibaba/fastjson/serializer/SerializerFeature;->WRITE_MAP_NULL_FEATURES:I

    .line 2015
    :goto_2
    and-int v7, v0, v2

    if-eqz v7, :cond_7

    .line 2022
    :goto_3
    invoke-interface {p1, v5}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitLabel(Lcom/alibaba/fastjson/asm/Label;)V

    const-string/jumbo v2, "out"

    .line 2024
    invoke-virtual {p3, v2}, Lcom/alibaba/fastjson/serializer/ASMSerializerFactory$Context;->var(Ljava/lang/String;)I

    move-result v2

    invoke-interface {p1, v9, v2}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitVarInsn(II)V

    const/16 v2, 0x15

    const-string/jumbo v5, "seperator"

    .line 2025
    invoke-virtual {p3, v5}, Lcom/alibaba/fastjson/serializer/ASMSerializerFactory$Context;->var(Ljava/lang/String;)I

    move-result v5

    invoke-interface {p1, v2, v5}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitVarInsn(II)V

    .line 2026
    sget-object v2, Lcom/alibaba/fastjson/serializer/ASMSerializerFactory;->SerializeWriter:Ljava/lang/String;

    const-string/jumbo v5, "write"

    const-string/jumbo v7, "(I)V"

    invoke-interface {p1, v10, v2, v5, v7}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitMethodInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 2028
    invoke-direct {p0, p1, p3}, Lcom/alibaba/fastjson/serializer/ASMSerializerFactory;->_writeFieldName(Lcom/alibaba/fastjson/asm/MethodVisitor;Lcom/alibaba/fastjson/serializer/ASMSerializerFactory$Context;)V

    const-string/jumbo v2, "out"

    .line 2030
    invoke-virtual {p3, v2}, Lcom/alibaba/fastjson/serializer/ASMSerializerFactory$Context;->var(Ljava/lang/String;)I

    move-result v2

    invoke-interface {p1, v9, v2}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitVarInsn(II)V

    .line 2031
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p1, v0}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitLdcInsn(Ljava/lang/Object;)V

    const-class v0, Ljava/lang/String;

    .line 2034
    if-ne v3, v0, :cond_8

    .line 2035
    :cond_0
    sget-object v0, Lcom/alibaba/fastjson/serializer/SerializerFeature;->WriteNullStringAsEmpty:Lcom/alibaba/fastjson/serializer/SerializerFeature;

    iget v0, v0, Lcom/alibaba/fastjson/serializer/SerializerFeature;->mask:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p1, v0}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitLdcInsn(Ljava/lang/Object;)V

    .line 2045
    :goto_4
    sget-object v0, Lcom/alibaba/fastjson/serializer/ASMSerializerFactory;->SerializeWriter:Ljava/lang/String;

    const-string/jumbo v1, "writeNull"

    const-string/jumbo v2, "(II)V"

    invoke-interface {p1, v10, v0, v1, v2}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitMethodInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 2048
    invoke-direct {p0, p1, p3}, Lcom/alibaba/fastjson/serializer/ASMSerializerFactory;->_seperator(Lcom/alibaba/fastjson/asm/MethodVisitor;Lcom/alibaba/fastjson/serializer/ASMSerializerFactory$Context;)V

    const/16 v0, 0xa7

    .line 2050
    invoke-interface {p1, v0, v6}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitJumpInsn(ILcom/alibaba/fastjson/asm/Label;)V

    .line 2052
    invoke-interface {p1, v4}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitLabel(Lcom/alibaba/fastjson/asm/Label;)V

    .line 2054
    invoke-interface {p1, v6}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitLabel(Lcom/alibaba/fastjson/asm/Label;)V

    .line 2055
    return-void

    .line 1991
    :cond_1
    invoke-interface {v0}, Lcom/alibaba/fastjson/annotation/JSONField;->serialzeFeatures()[Lcom/alibaba/fastjson/serializer/SerializerFeature;

    move-result-object v0

    invoke-static {v0}, Lcom/alibaba/fastjson/serializer/SerializerFeature;->of([Lcom/alibaba/fastjson/serializer/SerializerFeature;)I

    move-result v0

    goto/16 :goto_0

    .line 1995
    :cond_2
    invoke-interface {v2}, Lcom/alibaba/fastjson/annotation/JSONType;->serialzeFeatures()[Lcom/alibaba/fastjson/serializer/SerializerFeature;

    move-result-object v2

    invoke-static {v2}, Lcom/alibaba/fastjson/serializer/SerializerFeature;->of([Lcom/alibaba/fastjson/serializer/SerializerFeature;)I

    move-result v2

    or-int/2addr v0, v2

    goto/16 :goto_1

    .line 2000
    :cond_3
    sget-object v2, Lcom/alibaba/fastjson/serializer/SerializerFeature;->WriteMapNullValue:Lcom/alibaba/fastjson/serializer/SerializerFeature;

    invoke-virtual {v2}, Lcom/alibaba/fastjson/serializer/SerializerFeature;->getMask()I

    move-result v2

    sget-object v7, Lcom/alibaba/fastjson/serializer/SerializerFeature;->WriteNullStringAsEmpty:Lcom/alibaba/fastjson/serializer/SerializerFeature;

    .line 2001
    invoke-virtual {v7}, Lcom/alibaba/fastjson/serializer/SerializerFeature;->getMask()I

    move-result v7

    or-int/2addr v2, v7

    goto/16 :goto_2

    .line 2003
    :cond_4
    sget-object v2, Lcom/alibaba/fastjson/serializer/SerializerFeature;->WriteMapNullValue:Lcom/alibaba/fastjson/serializer/SerializerFeature;

    invoke-virtual {v2}, Lcom/alibaba/fastjson/serializer/SerializerFeature;->getMask()I

    move-result v2

    sget-object v7, Lcom/alibaba/fastjson/serializer/SerializerFeature;->WriteNullNumberAsZero:Lcom/alibaba/fastjson/serializer/SerializerFeature;

    .line 2004
    invoke-virtual {v7}, Lcom/alibaba/fastjson/serializer/SerializerFeature;->getMask()I

    move-result v7

    or-int/2addr v2, v7

    goto/16 :goto_2

    .line 2006
    :cond_5
    sget-object v2, Lcom/alibaba/fastjson/serializer/SerializerFeature;->WriteMapNullValue:Lcom/alibaba/fastjson/serializer/SerializerFeature;

    invoke-virtual {v2}, Lcom/alibaba/fastjson/serializer/SerializerFeature;->getMask()I

    move-result v2

    sget-object v7, Lcom/alibaba/fastjson/serializer/SerializerFeature;->WriteNullListAsEmpty:Lcom/alibaba/fastjson/serializer/SerializerFeature;

    .line 2007
    invoke-virtual {v7}, Lcom/alibaba/fastjson/serializer/SerializerFeature;->getMask()I

    move-result v7

    or-int/2addr v2, v7

    goto/16 :goto_2

    .line 2009
    :cond_6
    sget-object v2, Lcom/alibaba/fastjson/serializer/SerializerFeature;->WriteMapNullValue:Lcom/alibaba/fastjson/serializer/SerializerFeature;

    invoke-virtual {v2}, Lcom/alibaba/fastjson/serializer/SerializerFeature;->getMask()I

    move-result v2

    sget-object v7, Lcom/alibaba/fastjson/serializer/SerializerFeature;->WriteNullBooleanAsFalse:Lcom/alibaba/fastjson/serializer/SerializerFeature;

    .line 2010
    invoke-virtual {v7}, Lcom/alibaba/fastjson/serializer/SerializerFeature;->getMask()I

    move-result v7

    or-int/2addr v2, v7

    goto/16 :goto_2

    :cond_7
    const-string/jumbo v7, "out"

    .line 2016
    invoke-virtual {p3, v7}, Lcom/alibaba/fastjson/serializer/ASMSerializerFactory$Context;->var(Ljava/lang/String;)I

    move-result v7

    invoke-interface {p1, v9, v7}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitVarInsn(II)V

    .line 2017
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {p1, v2}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitLdcInsn(Ljava/lang/Object;)V

    .line 2018
    sget-object v2, Lcom/alibaba/fastjson/serializer/ASMSerializerFactory;->SerializeWriter:Ljava/lang/String;

    const-string/jumbo v7, "isEnabled"

    const-string/jumbo v8, "(I)Z"

    invoke-interface {p1, v10, v2, v7, v8}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitMethodInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const/16 v2, 0x99

    .line 2019
    invoke-interface {p1, v2, v4}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitJumpInsn(ILcom/alibaba/fastjson/asm/Label;)V

    goto/16 :goto_3

    :cond_8
    const-class v0, Ljava/lang/Character;

    .line 2034
    if-eq v3, v0, :cond_0

    const-class v0, Ljava/lang/Number;

    .line 2036
    invoke-virtual {v0, v3}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-nez v0, :cond_a

    const-class v0, Ljava/lang/Boolean;

    .line 2038
    if-eq v3, v0, :cond_b

    const-class v0, Ljava/util/Collection;

    .line 2040
    invoke-virtual {v0, v3}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_c

    .line 2041
    :cond_9
    sget-object v0, Lcom/alibaba/fastjson/serializer/SerializerFeature;->WriteNullListAsEmpty:Lcom/alibaba/fastjson/serializer/SerializerFeature;

    iget v0, v0, Lcom/alibaba/fastjson/serializer/SerializerFeature;->mask:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p1, v0}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitLdcInsn(Ljava/lang/Object;)V

    goto/16 :goto_4

    .line 2037
    :cond_a
    sget-object v0, Lcom/alibaba/fastjson/serializer/SerializerFeature;->WriteNullNumberAsZero:Lcom/alibaba/fastjson/serializer/SerializerFeature;

    iget v0, v0, Lcom/alibaba/fastjson/serializer/SerializerFeature;->mask:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p1, v0}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitLdcInsn(Ljava/lang/Object;)V

    goto/16 :goto_4

    .line 2039
    :cond_b
    sget-object v0, Lcom/alibaba/fastjson/serializer/SerializerFeature;->WriteNullBooleanAsFalse:Lcom/alibaba/fastjson/serializer/SerializerFeature;

    iget v0, v0, Lcom/alibaba/fastjson/serializer/SerializerFeature;->mask:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p1, v0}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitLdcInsn(Ljava/lang/Object;)V

    goto/16 :goto_4

    .line 2040
    :cond_c
    invoke-virtual {v3}, Ljava/lang/Class;->isArray()Z

    move-result v0

    if-nez v0, :cond_9

    .line 2043
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p1, v0}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitLdcInsn(Ljava/lang/Object;)V

    goto/16 :goto_4
.end method

.method private _int(Ljava/lang/Class;Lcom/alibaba/fastjson/asm/MethodVisitor;Lcom/alibaba/fastjson/util/FieldInfo;Lcom/alibaba/fastjson/serializer/ASMSerializerFactory$Context;IC)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;",
            "Lcom/alibaba/fastjson/asm/MethodVisitor;",
            "Lcom/alibaba/fastjson/util/FieldInfo;",
            "Lcom/alibaba/fastjson/serializer/ASMSerializerFactory$Context;",
            "IC)V"
        }
    .end annotation

    .prologue
    const/16 v3, 0x19

    const/16 v2, 0x15

    .line 1116
    new-instance v0, Lcom/alibaba/fastjson/asm/Label;

    invoke-direct {v0}, Lcom/alibaba/fastjson/asm/Label;-><init>()V

    .line 1118
    invoke-direct {p0, p2, p3, p4, v0}, Lcom/alibaba/fastjson/serializer/ASMSerializerFactory;->_nameApply(Lcom/alibaba/fastjson/asm/MethodVisitor;Lcom/alibaba/fastjson/util/FieldInfo;Lcom/alibaba/fastjson/serializer/ASMSerializerFactory$Context;Lcom/alibaba/fastjson/asm/Label;)V

    .line 1119
    invoke-direct {p0, p2, p4, p3}, Lcom/alibaba/fastjson/serializer/ASMSerializerFactory;->_get(Lcom/alibaba/fastjson/asm/MethodVisitor;Lcom/alibaba/fastjson/serializer/ASMSerializerFactory$Context;Lcom/alibaba/fastjson/util/FieldInfo;)V

    const/16 v1, 0x36

    .line 1120
    invoke-interface {p2, v1, p5}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitVarInsn(II)V

    .line 1122
    invoke-direct {p0, p2, p3, p4, v0}, Lcom/alibaba/fastjson/serializer/ASMSerializerFactory;->_filters(Lcom/alibaba/fastjson/asm/MethodVisitor;Lcom/alibaba/fastjson/util/FieldInfo;Lcom/alibaba/fastjson/serializer/ASMSerializerFactory$Context;Lcom/alibaba/fastjson/asm/Label;)V

    const-string/jumbo v1, "out"

    .line 1124
    invoke-virtual {p4, v1}, Lcom/alibaba/fastjson/serializer/ASMSerializerFactory$Context;->var(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p2, v3, v1}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitVarInsn(II)V

    const-string/jumbo v1, "seperator"

    .line 1125
    invoke-virtual {p4, v1}, Lcom/alibaba/fastjson/serializer/ASMSerializerFactory$Context;->var(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p2, v2, v1}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitVarInsn(II)V

    .line 1126
    sget v1, Lcom/alibaba/fastjson/serializer/ASMSerializerFactory$Context;->fieldName:I

    invoke-interface {p2, v3, v1}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitVarInsn(II)V

    .line 1127
    invoke-interface {p2, v2, p5}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitVarInsn(II)V

    const/16 v1, 0xb6

    .line 1129
    sget-object v2, Lcom/alibaba/fastjson/serializer/ASMSerializerFactory;->SerializeWriter:Ljava/lang/String;

    const-string/jumbo v3, "writeFieldValue"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "(CLjava/lang/String;"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, ")V"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {p2, v1, v2, v3, v4}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitMethodInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1131
    invoke-direct {p0, p2, p4}, Lcom/alibaba/fastjson/serializer/ASMSerializerFactory;->_seperator(Lcom/alibaba/fastjson/asm/MethodVisitor;Lcom/alibaba/fastjson/serializer/ASMSerializerFactory$Context;)V

    .line 1133
    invoke-interface {p2, v0}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitLabel(Lcom/alibaba/fastjson/asm/Label;)V

    .line 1134
    return-void
.end method

.method private _labelApply(Lcom/alibaba/fastjson/asm/MethodVisitor;Lcom/alibaba/fastjson/util/FieldInfo;Lcom/alibaba/fastjson/serializer/ASMSerializerFactory$Context;Lcom/alibaba/fastjson/asm/Label;)V
    .locals 5

    .prologue
    const/16 v1, 0x19

    const/4 v0, 0x0

    .line 1575
    invoke-interface {p1, v1, v0}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitVarInsn(II)V

    const/4 v0, 0x1

    .line 1576
    invoke-interface {p1, v1, v0}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitVarInsn(II)V

    .line 1577
    iget-object v0, p2, Lcom/alibaba/fastjson/util/FieldInfo;->label:Ljava/lang/String;

    invoke-interface {p1, v0}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitLdcInsn(Ljava/lang/Object;)V

    const/16 v0, 0xb6

    .line 1578
    sget-object v1, Lcom/alibaba/fastjson/serializer/ASMSerializerFactory;->JavaBeanSerializer:Ljava/lang/String;

    const-string/jumbo v2, "applyLabel"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "(L"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v4, Lcom/alibaba/fastjson/serializer/ASMSerializerFactory;->JSONSerializer:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ";Ljava/lang/String;)Z"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {p1, v0, v1, v2, v3}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitMethodInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const/16 v0, 0x99

    .line 1580
    invoke-interface {p1, v0, p4}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitJumpInsn(ILcom/alibaba/fastjson/asm/Label;)V

    .line 1581
    return-void
.end method

.method private _list(Ljava/lang/Class;Lcom/alibaba/fastjson/asm/MethodVisitor;Lcom/alibaba/fastjson/util/FieldInfo;Lcom/alibaba/fastjson/serializer/ASMSerializerFactory$Context;)V
    .locals 22
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;",
            "Lcom/alibaba/fastjson/asm/MethodVisitor;",
            "Lcom/alibaba/fastjson/util/FieldInfo;",
            "Lcom/alibaba/fastjson/serializer/ASMSerializerFactory$Context;",
            ")V"
        }
    .end annotation

    .prologue
    .line 1315
    move-object/from16 v0, p3

    iget-object v5, v0, Lcom/alibaba/fastjson/util/FieldInfo;->fieldType:Ljava/lang/reflect/Type;

    .line 1317
    invoke-static {v5}, Lcom/alibaba/fastjson/util/TypeUtils;->getCollectionItemType(Ljava/lang/reflect/Type;)Ljava/lang/reflect/Type;

    move-result-object v6

    const/4 v5, 0x0

    .line 1320
    instance-of v7, v6, Ljava/lang/Class;

    if-nez v7, :cond_4

    :goto_0
    const-class v7, Ljava/lang/Object;

    .line 1324
    if-ne v5, v7, :cond_5

    :cond_0
    const/4 v5, 0x0

    .line 1329
    :goto_1
    new-instance v8, Lcom/alibaba/fastjson/asm/Label;

    invoke-direct {v8}, Lcom/alibaba/fastjson/asm/Label;-><init>()V

    new-instance v7, Lcom/alibaba/fastjson/asm/Label;

    invoke-direct {v7}, Lcom/alibaba/fastjson/asm/Label;-><init>()V

    new-instance v9, Lcom/alibaba/fastjson/asm/Label;

    invoke-direct {v9}, Lcom/alibaba/fastjson/asm/Label;-><init>()V

    .line 1331
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move-object/from16 v2, p3

    move-object/from16 v3, p4

    invoke-direct {v0, v1, v2, v3, v8}, Lcom/alibaba/fastjson/serializer/ASMSerializerFactory;->_nameApply(Lcom/alibaba/fastjson/asm/MethodVisitor;Lcom/alibaba/fastjson/util/FieldInfo;Lcom/alibaba/fastjson/serializer/ASMSerializerFactory$Context;Lcom/alibaba/fastjson/asm/Label;)V

    .line 1332
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move-object/from16 v2, p4

    move-object/from16 v3, p3

    invoke-direct {v0, v1, v2, v3}, Lcom/alibaba/fastjson/serializer/ASMSerializerFactory;->_get(Lcom/alibaba/fastjson/asm/MethodVisitor;Lcom/alibaba/fastjson/serializer/ASMSerializerFactory$Context;Lcom/alibaba/fastjson/util/FieldInfo;)V

    const/16 v10, 0xc0

    const-string/jumbo v11, "java/util/List"

    .line 1333
    move-object/from16 v0, p2

    invoke-interface {v0, v10, v11}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitTypeInsn(ILjava/lang/String;)V

    const/16 v10, 0x3a

    const-string/jumbo v11, "list"

    .line 1334
    move-object/from16 v0, p4

    invoke-virtual {v0, v11}, Lcom/alibaba/fastjson/serializer/ASMSerializerFactory$Context;->var(Ljava/lang/String;)I

    move-result v11

    move-object/from16 v0, p2

    invoke-interface {v0, v10, v11}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitVarInsn(II)V

    .line 1336
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move-object/from16 v2, p3

    move-object/from16 v3, p4

    invoke-direct {v0, v1, v2, v3, v8}, Lcom/alibaba/fastjson/serializer/ASMSerializerFactory;->_filters(Lcom/alibaba/fastjson/asm/MethodVisitor;Lcom/alibaba/fastjson/util/FieldInfo;Lcom/alibaba/fastjson/serializer/ASMSerializerFactory$Context;Lcom/alibaba/fastjson/asm/Label;)V

    const/16 v10, 0x19

    const-string/jumbo v11, "list"

    .line 1338
    move-object/from16 v0, p4

    invoke-virtual {v0, v11}, Lcom/alibaba/fastjson/serializer/ASMSerializerFactory$Context;->var(Ljava/lang/String;)I

    move-result v11

    move-object/from16 v0, p2

    invoke-interface {v0, v10, v11}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitVarInsn(II)V

    const/16 v10, 0xc7

    .line 1339
    move-object/from16 v0, p2

    invoke-interface {v0, v10, v7}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitJumpInsn(ILcom/alibaba/fastjson/asm/Label;)V

    .line 1340
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move-object/from16 v2, p3

    move-object/from16 v3, p4

    invoke-direct {v0, v1, v2, v3}, Lcom/alibaba/fastjson/serializer/ASMSerializerFactory;->_if_write_null(Lcom/alibaba/fastjson/asm/MethodVisitor;Lcom/alibaba/fastjson/util/FieldInfo;Lcom/alibaba/fastjson/serializer/ASMSerializerFactory$Context;)V

    const/16 v10, 0xa7

    .line 1341
    move-object/from16 v0, p2

    invoke-interface {v0, v10, v9}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitJumpInsn(ILcom/alibaba/fastjson/asm/Label;)V

    .line 1343
    move-object/from16 v0, p2

    invoke-interface {v0, v7}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitLabel(Lcom/alibaba/fastjson/asm/Label;)V

    const/16 v7, 0x19

    const-string/jumbo v10, "out"

    .line 1345
    move-object/from16 v0, p4

    invoke-virtual {v0, v10}, Lcom/alibaba/fastjson/serializer/ASMSerializerFactory$Context;->var(Ljava/lang/String;)I

    move-result v10

    move-object/from16 v0, p2

    invoke-interface {v0, v7, v10}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitVarInsn(II)V

    const/16 v7, 0x15

    const-string/jumbo v10, "seperator"

    .line 1346
    move-object/from16 v0, p4

    invoke-virtual {v0, v10}, Lcom/alibaba/fastjson/serializer/ASMSerializerFactory$Context;->var(Ljava/lang/String;)I

    move-result v10

    move-object/from16 v0, p2

    invoke-interface {v0, v7, v10}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitVarInsn(II)V

    const/16 v7, 0xb6

    .line 1347
    sget-object v10, Lcom/alibaba/fastjson/serializer/ASMSerializerFactory;->SerializeWriter:Ljava/lang/String;

    const-string/jumbo v11, "write"

    const-string/jumbo v12, "(I)V"

    move-object/from16 v0, p2

    invoke-interface {v0, v7, v10, v11, v12}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitMethodInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1349
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move-object/from16 v2, p4

    invoke-direct {v0, v1, v2}, Lcom/alibaba/fastjson/serializer/ASMSerializerFactory;->_writeFieldName(Lcom/alibaba/fastjson/asm/MethodVisitor;Lcom/alibaba/fastjson/serializer/ASMSerializerFactory$Context;)V

    const/16 v7, 0x19

    const-string/jumbo v10, "list"

    .line 1352
    move-object/from16 v0, p4

    invoke-virtual {v0, v10}, Lcom/alibaba/fastjson/serializer/ASMSerializerFactory$Context;->var(Ljava/lang/String;)I

    move-result v10

    move-object/from16 v0, p2

    invoke-interface {v0, v7, v10}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitVarInsn(II)V

    const/16 v7, 0xb9

    const-string/jumbo v10, "java/util/List"

    const-string/jumbo v11, "size"

    const-string/jumbo v12, "()I"

    .line 1353
    move-object/from16 v0, p2

    invoke-interface {v0, v7, v10, v11, v12}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitMethodInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const/16 v7, 0x36

    const-string/jumbo v10, "size"

    .line 1354
    move-object/from16 v0, p4

    invoke-virtual {v0, v10}, Lcom/alibaba/fastjson/serializer/ASMSerializerFactory$Context;->var(Ljava/lang/String;)I

    move-result v10

    move-object/from16 v0, p2

    invoke-interface {v0, v7, v10}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitVarInsn(II)V

    .line 1356
    new-instance v7, Lcom/alibaba/fastjson/asm/Label;

    invoke-direct {v7}, Lcom/alibaba/fastjson/asm/Label;-><init>()V

    .line 1357
    new-instance v10, Lcom/alibaba/fastjson/asm/Label;

    invoke-direct {v10}, Lcom/alibaba/fastjson/asm/Label;-><init>()V

    const/16 v11, 0x15

    const-string/jumbo v12, "size"

    .line 1359
    move-object/from16 v0, p4

    invoke-virtual {v0, v12}, Lcom/alibaba/fastjson/serializer/ASMSerializerFactory$Context;->var(Ljava/lang/String;)I

    move-result v12

    move-object/from16 v0, p2

    invoke-interface {v0, v11, v12}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitVarInsn(II)V

    const/4 v11, 0x3

    .line 1360
    move-object/from16 v0, p2

    invoke-interface {v0, v11}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitInsn(I)V

    const/16 v11, 0xa0

    .line 1361
    move-object/from16 v0, p2

    invoke-interface {v0, v11, v7}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitJumpInsn(ILcom/alibaba/fastjson/asm/Label;)V

    const/16 v11, 0x19

    const-string/jumbo v12, "out"

    .line 1363
    move-object/from16 v0, p4

    invoke-virtual {v0, v12}, Lcom/alibaba/fastjson/serializer/ASMSerializerFactory$Context;->var(Ljava/lang/String;)I

    move-result v12

    move-object/from16 v0, p2

    invoke-interface {v0, v11, v12}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitVarInsn(II)V

    const-string/jumbo v11, "[]"

    .line 1364
    move-object/from16 v0, p2

    invoke-interface {v0, v11}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitLdcInsn(Ljava/lang/Object;)V

    const/16 v11, 0xb6

    .line 1365
    sget-object v12, Lcom/alibaba/fastjson/serializer/ASMSerializerFactory;->SerializeWriter:Ljava/lang/String;

    const-string/jumbo v13, "write"

    const-string/jumbo v14, "(Ljava/lang/String;)V"

    move-object/from16 v0, p2

    invoke-interface {v0, v11, v12, v13, v14}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitMethodInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const/16 v11, 0xa7

    .line 1367
    move-object/from16 v0, p2

    invoke-interface {v0, v11, v10}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitJumpInsn(ILcom/alibaba/fastjson/asm/Label;)V

    .line 1369
    move-object/from16 v0, p2

    invoke-interface {v0, v7}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitLabel(Lcom/alibaba/fastjson/asm/Label;)V

    .line 1371
    invoke-static/range {p4 .. p4}, Lcom/alibaba/fastjson/serializer/ASMSerializerFactory$Context;->access$200(Lcom/alibaba/fastjson/serializer/ASMSerializerFactory$Context;)Z

    move-result v7

    if-eqz v7, :cond_6

    :goto_2
    const-class v7, Ljava/lang/String;

    .line 1378
    if-eq v6, v7, :cond_7

    :cond_1
    const/16 v7, 0x19

    const-string/jumbo v11, "out"

    .line 1384
    move-object/from16 v0, p4

    invoke-virtual {v0, v11}, Lcom/alibaba/fastjson/serializer/ASMSerializerFactory$Context;->var(Ljava/lang/String;)I

    move-result v11

    move-object/from16 v0, p2

    invoke-interface {v0, v7, v11}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitVarInsn(II)V

    const/16 v7, 0x10

    const/16 v11, 0x5b

    .line 1385
    move-object/from16 v0, p2

    invoke-interface {v0, v7, v11}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitVarInsn(II)V

    const/16 v7, 0xb6

    .line 1386
    sget-object v11, Lcom/alibaba/fastjson/serializer/ASMSerializerFactory;->SerializeWriter:Ljava/lang/String;

    const-string/jumbo v12, "write"

    const-string/jumbo v13, "(I)V"

    move-object/from16 v0, p2

    invoke-interface {v0, v7, v11, v12, v13}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitMethodInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1388
    new-instance v11, Lcom/alibaba/fastjson/asm/Label;

    invoke-direct {v11}, Lcom/alibaba/fastjson/asm/Label;-><init>()V

    new-instance v7, Lcom/alibaba/fastjson/asm/Label;

    invoke-direct {v7}, Lcom/alibaba/fastjson/asm/Label;-><init>()V

    new-instance v12, Lcom/alibaba/fastjson/asm/Label;

    invoke-direct {v12}, Lcom/alibaba/fastjson/asm/Label;-><init>()V

    const/4 v13, 0x3

    .line 1390
    move-object/from16 v0, p2

    invoke-interface {v0, v13}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitInsn(I)V

    const/16 v13, 0x36

    const-string/jumbo v14, "i"

    .line 1391
    move-object/from16 v0, p4

    invoke-virtual {v0, v14}, Lcom/alibaba/fastjson/serializer/ASMSerializerFactory$Context;->var(Ljava/lang/String;)I

    move-result v14

    move-object/from16 v0, p2

    invoke-interface {v0, v13, v14}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitVarInsn(II)V

    .line 1394
    move-object/from16 v0, p2

    invoke-interface {v0, v11}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitLabel(Lcom/alibaba/fastjson/asm/Label;)V

    const/16 v13, 0x15

    const-string/jumbo v14, "i"

    .line 1395
    move-object/from16 v0, p4

    invoke-virtual {v0, v14}, Lcom/alibaba/fastjson/serializer/ASMSerializerFactory$Context;->var(Ljava/lang/String;)I

    move-result v14

    move-object/from16 v0, p2

    invoke-interface {v0, v13, v14}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitVarInsn(II)V

    const/16 v13, 0x15

    const-string/jumbo v14, "size"

    .line 1396
    move-object/from16 v0, p4

    invoke-virtual {v0, v14}, Lcom/alibaba/fastjson/serializer/ASMSerializerFactory$Context;->var(Ljava/lang/String;)I

    move-result v14

    move-object/from16 v0, p2

    invoke-interface {v0, v13, v14}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitVarInsn(II)V

    const/16 v13, 0xa2

    .line 1397
    move-object/from16 v0, p2

    invoke-interface {v0, v13, v12}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitJumpInsn(ILcom/alibaba/fastjson/asm/Label;)V

    const/16 v13, 0x15

    const-string/jumbo v14, "i"

    .line 1399
    move-object/from16 v0, p4

    invoke-virtual {v0, v14}, Lcom/alibaba/fastjson/serializer/ASMSerializerFactory$Context;->var(Ljava/lang/String;)I

    move-result v14

    move-object/from16 v0, p2

    invoke-interface {v0, v13, v14}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitVarInsn(II)V

    const/16 v13, 0x99

    .line 1400
    move-object/from16 v0, p2

    invoke-interface {v0, v13, v7}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitJumpInsn(ILcom/alibaba/fastjson/asm/Label;)V

    const/16 v13, 0x19

    const-string/jumbo v14, "out"

    .line 1402
    move-object/from16 v0, p4

    invoke-virtual {v0, v14}, Lcom/alibaba/fastjson/serializer/ASMSerializerFactory$Context;->var(Ljava/lang/String;)I

    move-result v14

    move-object/from16 v0, p2

    invoke-interface {v0, v13, v14}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitVarInsn(II)V

    const/16 v13, 0x10

    const/16 v14, 0x2c

    .line 1403
    move-object/from16 v0, p2

    invoke-interface {v0, v13, v14}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitVarInsn(II)V

    const/16 v13, 0xb6

    .line 1404
    sget-object v14, Lcom/alibaba/fastjson/serializer/ASMSerializerFactory;->SerializeWriter:Ljava/lang/String;

    const-string/jumbo v15, "write"

    const-string/jumbo v16, "(I)V"

    move-object/from16 v0, p2

    move-object/from16 v1, v16

    invoke-interface {v0, v13, v14, v15, v1}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitMethodInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1406
    move-object/from16 v0, p2

    invoke-interface {v0, v7}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitLabel(Lcom/alibaba/fastjson/asm/Label;)V

    const/16 v7, 0x19

    const-string/jumbo v13, "list"

    .line 1408
    move-object/from16 v0, p4

    invoke-virtual {v0, v13}, Lcom/alibaba/fastjson/serializer/ASMSerializerFactory$Context;->var(Ljava/lang/String;)I

    move-result v13

    move-object/from16 v0, p2

    invoke-interface {v0, v7, v13}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitVarInsn(II)V

    const/16 v7, 0x15

    const-string/jumbo v13, "i"

    .line 1409
    move-object/from16 v0, p4

    invoke-virtual {v0, v13}, Lcom/alibaba/fastjson/serializer/ASMSerializerFactory$Context;->var(Ljava/lang/String;)I

    move-result v13

    move-object/from16 v0, p2

    invoke-interface {v0, v7, v13}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitVarInsn(II)V

    const/16 v7, 0xb9

    const-string/jumbo v13, "java/util/List"

    const-string/jumbo v14, "get"

    const-string/jumbo v15, "(I)Ljava/lang/Object;"

    .line 1410
    move-object/from16 v0, p2

    invoke-interface {v0, v7, v13, v14, v15}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitMethodInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const/16 v7, 0x3a

    const-string/jumbo v13, "list_item"

    .line 1411
    move-object/from16 v0, p4

    invoke-virtual {v0, v13}, Lcom/alibaba/fastjson/serializer/ASMSerializerFactory$Context;->var(Ljava/lang/String;)I

    move-result v13

    move-object/from16 v0, p2

    invoke-interface {v0, v7, v13}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitVarInsn(II)V

    .line 1413
    new-instance v13, Lcom/alibaba/fastjson/asm/Label;

    invoke-direct {v13}, Lcom/alibaba/fastjson/asm/Label;-><init>()V

    new-instance v7, Lcom/alibaba/fastjson/asm/Label;

    invoke-direct {v7}, Lcom/alibaba/fastjson/asm/Label;-><init>()V

    const/16 v14, 0x19

    const-string/jumbo v15, "list_item"

    .line 1415
    move-object/from16 v0, p4

    invoke-virtual {v0, v15}, Lcom/alibaba/fastjson/serializer/ASMSerializerFactory$Context;->var(Ljava/lang/String;)I

    move-result v15

    move-object/from16 v0, p2

    invoke-interface {v0, v14, v15}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitVarInsn(II)V

    const/16 v14, 0xc7

    .line 1416
    move-object/from16 v0, p2

    invoke-interface {v0, v14, v7}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitJumpInsn(ILcom/alibaba/fastjson/asm/Label;)V

    const/16 v14, 0x19

    const-string/jumbo v15, "out"

    .line 1418
    move-object/from16 v0, p4

    invoke-virtual {v0, v15}, Lcom/alibaba/fastjson/serializer/ASMSerializerFactory$Context;->var(Ljava/lang/String;)I

    move-result v15

    move-object/from16 v0, p2

    invoke-interface {v0, v14, v15}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitVarInsn(II)V

    const/16 v14, 0xb6

    .line 1419
    sget-object v15, Lcom/alibaba/fastjson/serializer/ASMSerializerFactory;->SerializeWriter:Ljava/lang/String;

    const-string/jumbo v16, "writeNull"

    const-string/jumbo v17, "()V"

    move-object/from16 v0, p2

    move-object/from16 v1, v16

    move-object/from16 v2, v17

    invoke-interface {v0, v14, v15, v1, v2}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitMethodInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const/16 v14, 0xa7

    .line 1420
    move-object/from16 v0, p2

    invoke-interface {v0, v14, v13}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitJumpInsn(ILcom/alibaba/fastjson/asm/Label;)V

    .line 1422
    move-object/from16 v0, p2

    invoke-interface {v0, v7}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitLabel(Lcom/alibaba/fastjson/asm/Label;)V

    .line 1424
    new-instance v14, Lcom/alibaba/fastjson/asm/Label;

    invoke-direct {v14}, Lcom/alibaba/fastjson/asm/Label;-><init>()V

    new-instance v15, Lcom/alibaba/fastjson/asm/Label;

    invoke-direct {v15}, Lcom/alibaba/fastjson/asm/Label;-><init>()V

    .line 1425
    if-nez v5, :cond_8

    .line 1481
    :cond_2
    :goto_3
    move-object/from16 v0, p2

    invoke-interface {v0, v15}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitLabel(Lcom/alibaba/fastjson/asm/Label;)V

    const/16 v7, 0x19

    const/4 v15, 0x1

    .line 1483
    move-object/from16 v0, p2

    invoke-interface {v0, v7, v15}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitVarInsn(II)V

    const/16 v7, 0x19

    const-string/jumbo v15, "list_item"

    .line 1484
    move-object/from16 v0, p4

    invoke-virtual {v0, v15}, Lcom/alibaba/fastjson/serializer/ASMSerializerFactory$Context;->var(Ljava/lang/String;)I

    move-result v15

    move-object/from16 v0, p2

    invoke-interface {v0, v7, v15}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitVarInsn(II)V

    .line 1485
    invoke-static/range {p4 .. p4}, Lcom/alibaba/fastjson/serializer/ASMSerializerFactory$Context;->access$200(Lcom/alibaba/fastjson/serializer/ASMSerializerFactory$Context;)Z

    move-result v7

    if-nez v7, :cond_e

    const/16 v7, 0x15

    const-string/jumbo v15, "i"

    .line 1488
    move-object/from16 v0, p4

    invoke-virtual {v0, v15}, Lcom/alibaba/fastjson/serializer/ASMSerializerFactory$Context;->var(Ljava/lang/String;)I

    move-result v15

    move-object/from16 v0, p2

    invoke-interface {v0, v7, v15}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitVarInsn(II)V

    const/16 v7, 0xb8

    const-string/jumbo v15, "java/lang/Integer"

    const-string/jumbo v16, "valueOf"

    const-string/jumbo v17, "(I)Ljava/lang/Integer;"

    .line 1489
    move-object/from16 v0, p2

    move-object/from16 v1, v16

    move-object/from16 v2, v17

    invoke-interface {v0, v7, v15, v1, v2}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitMethodInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1492
    :goto_4
    if-nez v5, :cond_f

    :cond_3
    const/16 v5, 0xb6

    .line 1498
    sget-object v6, Lcom/alibaba/fastjson/serializer/ASMSerializerFactory;->JSONSerializer:Ljava/lang/String;

    const-string/jumbo v7, "writeWithFieldName"

    const-string/jumbo v15, "(Ljava/lang/Object;Ljava/lang/Object;)V"

    move-object/from16 v0, p2

    invoke-interface {v0, v5, v6, v7, v15}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitMethodInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1502
    :goto_5
    move-object/from16 v0, p2

    invoke-interface {v0, v14}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitLabel(Lcom/alibaba/fastjson/asm/Label;)V

    .line 1503
    move-object/from16 v0, p2

    invoke-interface {v0, v13}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitLabel(Lcom/alibaba/fastjson/asm/Label;)V

    const-string/jumbo v5, "i"

    .line 1505
    move-object/from16 v0, p4

    invoke-virtual {v0, v5}, Lcom/alibaba/fastjson/serializer/ASMSerializerFactory$Context;->var(Ljava/lang/String;)I

    move-result v5

    const/4 v6, 0x1

    move-object/from16 v0, p2

    invoke-interface {v0, v5, v6}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitIincInsn(II)V

    const/16 v5, 0xa7

    .line 1506
    move-object/from16 v0, p2

    invoke-interface {v0, v5, v11}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitJumpInsn(ILcom/alibaba/fastjson/asm/Label;)V

    .line 1508
    move-object/from16 v0, p2

    invoke-interface {v0, v12}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitLabel(Lcom/alibaba/fastjson/asm/Label;)V

    const/16 v5, 0x19

    const-string/jumbo v6, "out"

    .line 1510
    move-object/from16 v0, p4

    invoke-virtual {v0, v6}, Lcom/alibaba/fastjson/serializer/ASMSerializerFactory$Context;->var(Ljava/lang/String;)I

    move-result v6

    move-object/from16 v0, p2

    invoke-interface {v0, v5, v6}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitVarInsn(II)V

    const/16 v5, 0x10

    const/16 v6, 0x5d

    .line 1511
    move-object/from16 v0, p2

    invoke-interface {v0, v5, v6}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitVarInsn(II)V

    const/16 v5, 0xb6

    .line 1512
    sget-object v6, Lcom/alibaba/fastjson/serializer/ASMSerializerFactory;->SerializeWriter:Ljava/lang/String;

    const-string/jumbo v7, "write"

    const-string/jumbo v11, "(I)V"

    move-object/from16 v0, p2

    invoke-interface {v0, v5, v6, v7, v11}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitMethodInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :goto_6
    const/16 v5, 0x19

    const/4 v6, 0x1

    .line 1516
    move-object/from16 v0, p2

    invoke-interface {v0, v5, v6}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitVarInsn(II)V

    const/16 v5, 0xb6

    .line 1517
    sget-object v6, Lcom/alibaba/fastjson/serializer/ASMSerializerFactory;->JSONSerializer:Ljava/lang/String;

    const-string/jumbo v7, "popContext"

    const-string/jumbo v11, "()V"

    move-object/from16 v0, p2

    invoke-interface {v0, v5, v6, v7, v11}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitMethodInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1520
    move-object/from16 v0, p2

    invoke-interface {v0, v10}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitLabel(Lcom/alibaba/fastjson/asm/Label;)V

    .line 1522
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move-object/from16 v2, p4

    invoke-direct {v0, v1, v2}, Lcom/alibaba/fastjson/serializer/ASMSerializerFactory;->_seperator(Lcom/alibaba/fastjson/asm/MethodVisitor;Lcom/alibaba/fastjson/serializer/ASMSerializerFactory$Context;)V

    .line 1524
    move-object/from16 v0, p2

    invoke-interface {v0, v9}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitLabel(Lcom/alibaba/fastjson/asm/Label;)V

    .line 1526
    move-object/from16 v0, p2

    invoke-interface {v0, v8}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitLabel(Lcom/alibaba/fastjson/asm/Label;)V

    .line 1527
    return-void

    :cond_4
    move-object v5, v6

    .line 1321
    check-cast v5, Ljava/lang/Class;

    goto/16 :goto_0

    :cond_5
    const-class v7, Ljava/io/Serializable;

    .line 1324
    if-eq v5, v7, :cond_0

    goto/16 :goto_1

    :cond_6
    const/16 v7, 0x19

    const/4 v11, 0x1

    .line 1372
    move-object/from16 v0, p2

    invoke-interface {v0, v7, v11}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitVarInsn(II)V

    const/16 v7, 0x19

    const-string/jumbo v11, "list"

    .line 1373
    move-object/from16 v0, p4

    invoke-virtual {v0, v11}, Lcom/alibaba/fastjson/serializer/ASMSerializerFactory$Context;->var(Ljava/lang/String;)I

    move-result v11

    move-object/from16 v0, p2

    invoke-interface {v0, v7, v11}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitVarInsn(II)V

    const/16 v7, 0x19

    .line 1374
    sget v11, Lcom/alibaba/fastjson/serializer/ASMSerializerFactory$Context;->fieldName:I

    move-object/from16 v0, p2

    invoke-interface {v0, v7, v11}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitVarInsn(II)V

    const/16 v7, 0xb6

    .line 1375
    sget-object v11, Lcom/alibaba/fastjson/serializer/ASMSerializerFactory;->JSONSerializer:Ljava/lang/String;

    const-string/jumbo v12, "setContext"

    const-string/jumbo v13, "(Ljava/lang/Object;Ljava/lang/Object;)V"

    move-object/from16 v0, p2

    invoke-interface {v0, v7, v11, v12, v13}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitMethodInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_2

    .line 1379
    :cond_7
    invoke-static/range {p4 .. p4}, Lcom/alibaba/fastjson/serializer/ASMSerializerFactory$Context;->access$000(Lcom/alibaba/fastjson/serializer/ASMSerializerFactory$Context;)Z

    move-result v7

    if-eqz v7, :cond_1

    const/16 v5, 0x19

    const-string/jumbo v6, "out"

    .line 1380
    move-object/from16 v0, p4

    invoke-virtual {v0, v6}, Lcom/alibaba/fastjson/serializer/ASMSerializerFactory$Context;->var(Ljava/lang/String;)I

    move-result v6

    move-object/from16 v0, p2

    invoke-interface {v0, v5, v6}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitVarInsn(II)V

    const/16 v5, 0x19

    const-string/jumbo v6, "list"

    .line 1381
    move-object/from16 v0, p4

    invoke-virtual {v0, v6}, Lcom/alibaba/fastjson/serializer/ASMSerializerFactory$Context;->var(Ljava/lang/String;)I

    move-result v6

    move-object/from16 v0, p2

    invoke-interface {v0, v5, v6}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitVarInsn(II)V

    const/16 v5, 0xb6

    .line 1382
    sget-object v6, Lcom/alibaba/fastjson/serializer/ASMSerializerFactory;->SerializeWriter:Ljava/lang/String;

    const-string/jumbo v7, "write"

    const-string/jumbo v11, "(Ljava/util/List;)V"

    move-object/from16 v0, p2

    invoke-interface {v0, v5, v6, v7, v11}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitMethodInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_6

    .line 1425
    :cond_8
    invoke-virtual {v5}, Ljava/lang/Class;->getModifiers()I

    move-result v7

    invoke-static {v7}, Ljava/lang/reflect/Modifier;->isPublic(I)Z

    move-result v7

    if-eqz v7, :cond_2

    const/16 v7, 0x19

    const-string/jumbo v16, "list_item"

    .line 1426
    move-object/from16 v0, p4

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson/serializer/ASMSerializerFactory$Context;->var(Ljava/lang/String;)I

    move-result v16

    move-object/from16 v0, p2

    move/from16 v1, v16

    invoke-interface {v0, v7, v1}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitVarInsn(II)V

    const/16 v7, 0xb6

    const-string/jumbo v16, "java/lang/Object"

    const-string/jumbo v17, "getClass"

    const-string/jumbo v18, "()Ljava/lang/Class;"

    .line 1427
    move-object/from16 v0, p2

    move-object/from16 v1, v16

    move-object/from16 v2, v17

    move-object/from16 v3, v18

    invoke-interface {v0, v7, v1, v2, v3}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitMethodInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1428
    invoke-static {v5}, Lcom/alibaba/fastjson/util/ASMUtils;->desc(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/alibaba/fastjson/asm/Type;->getType(Ljava/lang/String;)Lcom/alibaba/fastjson/asm/Type;

    move-result-object v7

    move-object/from16 v0, p2

    invoke-interface {v0, v7}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitLdcInsn(Ljava/lang/Object;)V

    const/16 v7, 0xa6

    .line 1429
    move-object/from16 v0, p2

    invoke-interface {v0, v7, v15}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitJumpInsn(ILcom/alibaba/fastjson/asm/Label;)V

    .line 1431
    move-object/from16 v0, p0

    move-object/from16 v1, p4

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    invoke-direct {v0, v1, v2, v3, v5}, Lcom/alibaba/fastjson/serializer/ASMSerializerFactory;->_getListFieldItemSer(Lcom/alibaba/fastjson/serializer/ASMSerializerFactory$Context;Lcom/alibaba/fastjson/asm/MethodVisitor;Lcom/alibaba/fastjson/util/FieldInfo;Ljava/lang/Class;)V

    const/16 v7, 0x3a

    const-string/jumbo v16, "list_item_desc"

    .line 1433
    move-object/from16 v0, p4

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson/serializer/ASMSerializerFactory$Context;->var(Ljava/lang/String;)I

    move-result v16

    move-object/from16 v0, p2

    move/from16 v1, v16

    invoke-interface {v0, v7, v1}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitVarInsn(II)V

    .line 1435
    new-instance v16, Lcom/alibaba/fastjson/asm/Label;

    invoke-direct/range {v16 .. v16}, Lcom/alibaba/fastjson/asm/Label;-><init>()V

    new-instance v17, Lcom/alibaba/fastjson/asm/Label;

    invoke-direct/range {v17 .. v17}, Lcom/alibaba/fastjson/asm/Label;-><init>()V

    .line 1437
    invoke-static/range {p4 .. p4}, Lcom/alibaba/fastjson/serializer/ASMSerializerFactory$Context;->access$000(Lcom/alibaba/fastjson/serializer/ASMSerializerFactory$Context;)Z

    move-result v7

    if-nez v7, :cond_9

    :goto_7
    const/16 v7, 0x19

    const-string/jumbo v16, "list_item_desc"

    .line 1463
    move-object/from16 v0, p4

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson/serializer/ASMSerializerFactory$Context;->var(Ljava/lang/String;)I

    move-result v16

    move-object/from16 v0, p2

    move/from16 v1, v16

    invoke-interface {v0, v7, v1}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitVarInsn(II)V

    const/16 v7, 0x19

    const/16 v16, 0x1

    .line 1464
    move-object/from16 v0, p2

    move/from16 v1, v16

    invoke-interface {v0, v7, v1}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitVarInsn(II)V

    const/16 v7, 0x19

    const-string/jumbo v16, "list_item"

    .line 1465
    move-object/from16 v0, p4

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson/serializer/ASMSerializerFactory$Context;->var(Ljava/lang/String;)I

    move-result v16

    move-object/from16 v0, p2

    move/from16 v1, v16

    invoke-interface {v0, v7, v1}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitVarInsn(II)V

    .line 1466
    invoke-static/range {p4 .. p4}, Lcom/alibaba/fastjson/serializer/ASMSerializerFactory$Context;->access$200(Lcom/alibaba/fastjson/serializer/ASMSerializerFactory$Context;)Z

    move-result v7

    if-nez v7, :cond_d

    const/16 v7, 0x15

    const-string/jumbo v16, "i"

    .line 1469
    move-object/from16 v0, p4

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson/serializer/ASMSerializerFactory$Context;->var(Ljava/lang/String;)I

    move-result v16

    move-object/from16 v0, p2

    move/from16 v1, v16

    invoke-interface {v0, v7, v1}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitVarInsn(II)V

    const/16 v7, 0xb8

    const-string/jumbo v16, "java/lang/Integer"

    const-string/jumbo v18, "valueOf"

    const-string/jumbo v19, "(I)Ljava/lang/Integer;"

    .line 1470
    move-object/from16 v0, p2

    move-object/from16 v1, v16

    move-object/from16 v2, v18

    move-object/from16 v3, v19

    invoke-interface {v0, v7, v1, v2, v3}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitMethodInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1472
    :goto_8
    invoke-static {v5}, Lcom/alibaba/fastjson/util/ASMUtils;->desc(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/alibaba/fastjson/asm/Type;->getType(Ljava/lang/String;)Lcom/alibaba/fastjson/asm/Type;

    move-result-object v7

    move-object/from16 v0, p2

    invoke-interface {v0, v7}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitLdcInsn(Ljava/lang/Object;)V

    .line 1473
    move-object/from16 v0, p3

    iget v7, v0, Lcom/alibaba/fastjson/util/FieldInfo;->serialzeFeatures:I

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    move-object/from16 v0, p2

    invoke-interface {v0, v7}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitLdcInsn(Ljava/lang/Object;)V

    const/16 v7, 0xb9

    .line 1474
    sget-object v16, Lcom/alibaba/fastjson/serializer/ASMSerializerFactory;->ObjectSerializer:Ljava/lang/String;

    const-string/jumbo v18, "write"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v20, "(L"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    sget-object v20, Lcom/alibaba/fastjson/serializer/ASMSerializerFactory;->JSONSerializer:Ljava/lang/String;

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string/jumbo v20, ";Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/reflect/Type;I)V"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, p2

    move-object/from16 v1, v16

    move-object/from16 v2, v18

    move-object/from16 v3, v19

    invoke-interface {v0, v7, v1, v2, v3}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitMethodInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1477
    move-object/from16 v0, p2

    move-object/from16 v1, v17

    invoke-interface {v0, v1}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitLabel(Lcom/alibaba/fastjson/asm/Label;)V

    const/16 v7, 0xa7

    .line 1478
    move-object/from16 v0, p2

    invoke-interface {v0, v7, v14}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitJumpInsn(ILcom/alibaba/fastjson/asm/Label;)V

    goto/16 :goto_3

    .line 1438
    :cond_9
    invoke-static/range {p4 .. p4}, Lcom/alibaba/fastjson/serializer/ASMSerializerFactory$Context;->access$200(Lcom/alibaba/fastjson/serializer/ASMSerializerFactory$Context;)Z

    move-result v7

    if-nez v7, :cond_b

    :cond_a
    const-string/jumbo v7, "write"

    :goto_9
    const/16 v18, 0x19

    const-string/jumbo v19, "list_item_desc"

    .line 1441
    move-object/from16 v0, p4

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson/serializer/ASMSerializerFactory$Context;->var(Ljava/lang/String;)I

    move-result v19

    move-object/from16 v0, p2

    move/from16 v1, v18

    move/from16 v2, v19

    invoke-interface {v0, v1, v2}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitVarInsn(II)V

    const/16 v18, 0xc1

    .line 1442
    sget-object v19, Lcom/alibaba/fastjson/serializer/ASMSerializerFactory;->JavaBeanSerializer:Ljava/lang/String;

    move-object/from16 v0, p2

    move/from16 v1, v18

    move-object/from16 v2, v19

    invoke-interface {v0, v1, v2}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitTypeInsn(ILjava/lang/String;)V

    const/16 v18, 0x99

    .line 1443
    move-object/from16 v0, p2

    move/from16 v1, v18

    move-object/from16 v2, v16

    invoke-interface {v0, v1, v2}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitJumpInsn(ILcom/alibaba/fastjson/asm/Label;)V

    const/16 v18, 0x19

    const-string/jumbo v19, "list_item_desc"

    .line 1445
    move-object/from16 v0, p4

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson/serializer/ASMSerializerFactory$Context;->var(Ljava/lang/String;)I

    move-result v19

    move-object/from16 v0, p2

    move/from16 v1, v18

    move/from16 v2, v19

    invoke-interface {v0, v1, v2}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitVarInsn(II)V

    const/16 v18, 0xc0

    .line 1446
    sget-object v19, Lcom/alibaba/fastjson/serializer/ASMSerializerFactory;->JavaBeanSerializer:Ljava/lang/String;

    move-object/from16 v0, p2

    move/from16 v1, v18

    move-object/from16 v2, v19

    invoke-interface {v0, v1, v2}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitTypeInsn(ILjava/lang/String;)V

    const/16 v18, 0x19

    const/16 v19, 0x1

    .line 1447
    move-object/from16 v0, p2

    move/from16 v1, v18

    move/from16 v2, v19

    invoke-interface {v0, v1, v2}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitVarInsn(II)V

    const/16 v18, 0x19

    const-string/jumbo v19, "list_item"

    .line 1448
    move-object/from16 v0, p4

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson/serializer/ASMSerializerFactory$Context;->var(Ljava/lang/String;)I

    move-result v19

    move-object/from16 v0, p2

    move/from16 v1, v18

    move/from16 v2, v19

    invoke-interface {v0, v1, v2}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitVarInsn(II)V

    .line 1449
    invoke-static/range {p4 .. p4}, Lcom/alibaba/fastjson/serializer/ASMSerializerFactory$Context;->access$200(Lcom/alibaba/fastjson/serializer/ASMSerializerFactory$Context;)Z

    move-result v18

    if-nez v18, :cond_c

    const/16 v18, 0x15

    const-string/jumbo v19, "i"

    .line 1452
    move-object/from16 v0, p4

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson/serializer/ASMSerializerFactory$Context;->var(Ljava/lang/String;)I

    move-result v19

    move-object/from16 v0, p2

    move/from16 v1, v18

    move/from16 v2, v19

    invoke-interface {v0, v1, v2}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitVarInsn(II)V

    const/16 v18, 0xb8

    const-string/jumbo v19, "java/lang/Integer"

    const-string/jumbo v20, "valueOf"

    const-string/jumbo v21, "(I)Ljava/lang/Integer;"

    .line 1453
    move-object/from16 v0, p2

    move/from16 v1, v18

    move-object/from16 v2, v19

    move-object/from16 v3, v20

    move-object/from16 v4, v21

    invoke-interface {v0, v1, v2, v3, v4}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitMethodInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1455
    :goto_a
    invoke-static {v5}, Lcom/alibaba/fastjson/util/ASMUtils;->desc(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v18 .. v18}, Lcom/alibaba/fastjson/asm/Type;->getType(Ljava/lang/String;)Lcom/alibaba/fastjson/asm/Type;

    move-result-object v18

    move-object/from16 v0, p2

    move-object/from16 v1, v18

    invoke-interface {v0, v1}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitLdcInsn(Ljava/lang/Object;)V

    .line 1456
    move-object/from16 v0, p3

    iget v0, v0, Lcom/alibaba/fastjson/util/FieldInfo;->serialzeFeatures:I

    move/from16 v18, v0

    invoke-static/range {v18 .. v18}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v18

    move-object/from16 v0, p2

    move-object/from16 v1, v18

    invoke-interface {v0, v1}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitLdcInsn(Ljava/lang/Object;)V

    const/16 v18, 0xb6

    .line 1457
    sget-object v19, Lcom/alibaba/fastjson/serializer/ASMSerializerFactory;->JavaBeanSerializer:Ljava/lang/String;

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v21, "(L"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    sget-object v21, Lcom/alibaba/fastjson/serializer/ASMSerializerFactory;->JSONSerializer:Ljava/lang/String;

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string/jumbo v21, ";Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/reflect/Type;I)V"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, p2

    move/from16 v1, v18

    move-object/from16 v2, v19

    move-object/from16 v3, v20

    invoke-interface {v0, v1, v2, v7, v3}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitMethodInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const/16 v7, 0xa7

    .line 1459
    move-object/from16 v0, p2

    move-object/from16 v1, v17

    invoke-interface {v0, v7, v1}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitJumpInsn(ILcom/alibaba/fastjson/asm/Label;)V

    .line 1461
    move-object/from16 v0, p2

    move-object/from16 v1, v16

    invoke-interface {v0, v1}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitLabel(Lcom/alibaba/fastjson/asm/Label;)V

    goto/16 :goto_7

    .line 1438
    :cond_b
    invoke-static/range {p4 .. p4}, Lcom/alibaba/fastjson/serializer/ASMSerializerFactory$Context;->access$000(Lcom/alibaba/fastjson/serializer/ASMSerializerFactory$Context;)Z

    move-result v7

    if-eqz v7, :cond_a

    const-string/jumbo v7, "writeDirectNonContext"

    goto/16 :goto_9

    :cond_c
    const/16 v18, 0x1

    .line 1450
    move-object/from16 v0, p2

    move/from16 v1, v18

    invoke-interface {v0, v1}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitInsn(I)V

    goto :goto_a

    :cond_d
    const/4 v7, 0x1

    .line 1467
    move-object/from16 v0, p2

    invoke-interface {v0, v7}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitInsn(I)V

    goto/16 :goto_8

    :cond_e
    const/4 v7, 0x1

    .line 1486
    move-object/from16 v0, p2

    invoke-interface {v0, v7}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitInsn(I)V

    goto/16 :goto_4

    .line 1492
    :cond_f
    invoke-virtual {v5}, Ljava/lang/Class;->getModifiers()I

    move-result v5

    invoke-static {v5}, Ljava/lang/reflect/Modifier;->isPublic(I)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 1493
    check-cast v6, Ljava/lang/Class;

    invoke-static {v6}, Lcom/alibaba/fastjson/util/ASMUtils;->desc(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/alibaba/fastjson/asm/Type;->getType(Ljava/lang/String;)Lcom/alibaba/fastjson/asm/Type;

    move-result-object v5

    move-object/from16 v0, p2

    invoke-interface {v0, v5}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitLdcInsn(Ljava/lang/Object;)V

    .line 1494
    move-object/from16 v0, p3

    iget v5, v0, Lcom/alibaba/fastjson/util/FieldInfo;->serialzeFeatures:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    move-object/from16 v0, p2

    invoke-interface {v0, v5}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitLdcInsn(Ljava/lang/Object;)V

    const/16 v5, 0xb6

    .line 1495
    sget-object v6, Lcom/alibaba/fastjson/serializer/ASMSerializerFactory;->JSONSerializer:Ljava/lang/String;

    const-string/jumbo v7, "writeWithFieldName"

    const-string/jumbo v15, "(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/reflect/Type;I)V"

    move-object/from16 v0, p2

    invoke-interface {v0, v5, v6, v7, v15}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitMethodInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_5
.end method

.method private _long(Ljava/lang/Class;Lcom/alibaba/fastjson/asm/MethodVisitor;Lcom/alibaba/fastjson/util/FieldInfo;Lcom/alibaba/fastjson/serializer/ASMSerializerFactory$Context;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;",
            "Lcom/alibaba/fastjson/asm/MethodVisitor;",
            "Lcom/alibaba/fastjson/util/FieldInfo;",
            "Lcom/alibaba/fastjson/serializer/ASMSerializerFactory$Context;",
            ")V"
        }
    .end annotation

    .prologue
    const/16 v4, 0x19

    const/4 v3, 0x2

    .line 1137
    new-instance v0, Lcom/alibaba/fastjson/asm/Label;

    invoke-direct {v0}, Lcom/alibaba/fastjson/asm/Label;-><init>()V

    .line 1139
    invoke-direct {p0, p2, p3, p4, v0}, Lcom/alibaba/fastjson/serializer/ASMSerializerFactory;->_nameApply(Lcom/alibaba/fastjson/asm/MethodVisitor;Lcom/alibaba/fastjson/util/FieldInfo;Lcom/alibaba/fastjson/serializer/ASMSerializerFactory$Context;Lcom/alibaba/fastjson/asm/Label;)V

    .line 1140
    invoke-direct {p0, p2, p4, p3}, Lcom/alibaba/fastjson/serializer/ASMSerializerFactory;->_get(Lcom/alibaba/fastjson/asm/MethodVisitor;Lcom/alibaba/fastjson/serializer/ASMSerializerFactory$Context;Lcom/alibaba/fastjson/util/FieldInfo;)V

    const/16 v1, 0x37

    const-string/jumbo v2, "long"

    .line 1141
    invoke-virtual {p4, v2, v3}, Lcom/alibaba/fastjson/serializer/ASMSerializerFactory$Context;->var(Ljava/lang/String;I)I

    move-result v2

    invoke-interface {p2, v1, v2}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitVarInsn(II)V

    .line 1143
    invoke-direct {p0, p2, p3, p4, v0}, Lcom/alibaba/fastjson/serializer/ASMSerializerFactory;->_filters(Lcom/alibaba/fastjson/asm/MethodVisitor;Lcom/alibaba/fastjson/util/FieldInfo;Lcom/alibaba/fastjson/serializer/ASMSerializerFactory$Context;Lcom/alibaba/fastjson/asm/Label;)V

    const-string/jumbo v1, "out"

    .line 1145
    invoke-virtual {p4, v1}, Lcom/alibaba/fastjson/serializer/ASMSerializerFactory$Context;->var(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p2, v4, v1}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitVarInsn(II)V

    const/16 v1, 0x15

    const-string/jumbo v2, "seperator"

    .line 1146
    invoke-virtual {p4, v2}, Lcom/alibaba/fastjson/serializer/ASMSerializerFactory$Context;->var(Ljava/lang/String;)I

    move-result v2

    invoke-interface {p2, v1, v2}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitVarInsn(II)V

    .line 1147
    sget v1, Lcom/alibaba/fastjson/serializer/ASMSerializerFactory$Context;->fieldName:I

    invoke-interface {p2, v4, v1}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitVarInsn(II)V

    const/16 v1, 0x16

    const-string/jumbo v2, "long"

    .line 1148
    invoke-virtual {p4, v2, v3}, Lcom/alibaba/fastjson/serializer/ASMSerializerFactory$Context;->var(Ljava/lang/String;I)I

    move-result v2

    invoke-interface {p2, v1, v2}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitVarInsn(II)V

    const/16 v1, 0xb6

    .line 1149
    sget-object v2, Lcom/alibaba/fastjson/serializer/ASMSerializerFactory;->SerializeWriter:Ljava/lang/String;

    const-string/jumbo v3, "writeFieldValue"

    const-string/jumbo v4, "(CLjava/lang/String;J)V"

    invoke-interface {p2, v1, v2, v3, v4}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitMethodInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1151
    invoke-direct {p0, p2, p4}, Lcom/alibaba/fastjson/serializer/ASMSerializerFactory;->_seperator(Lcom/alibaba/fastjson/asm/MethodVisitor;Lcom/alibaba/fastjson/serializer/ASMSerializerFactory$Context;)V

    .line 1153
    invoke-interface {p2, v0}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitLabel(Lcom/alibaba/fastjson/asm/Label;)V

    .line 1154
    return-void
.end method

.method private _nameApply(Lcom/alibaba/fastjson/asm/MethodVisitor;Lcom/alibaba/fastjson/util/FieldInfo;Lcom/alibaba/fastjson/serializer/ASMSerializerFactory$Context;Lcom/alibaba/fastjson/asm/Label;)V
    .locals 6

    .prologue
    const/16 v5, 0xb6

    const/4 v1, 0x0

    const/16 v4, 0x19

    .line 1552
    invoke-static {p3}, Lcom/alibaba/fastjson/serializer/ASMSerializerFactory$Context;->access$000(Lcom/alibaba/fastjson/serializer/ASMSerializerFactory$Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1564
    :goto_0
    iget-object v0, p2, Lcom/alibaba/fastjson/util/FieldInfo;->field:Ljava/lang/reflect/Field;

    if-eqz v0, :cond_1

    .line 1572
    :goto_1
    return-void

    .line 1553
    :cond_0
    invoke-interface {p1, v4, v1}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitVarInsn(II)V

    const/4 v0, 0x1

    .line 1554
    invoke-interface {p1, v4, v0}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitVarInsn(II)V

    const/4 v0, 0x2

    .line 1555
    invoke-interface {p1, v4, v0}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitVarInsn(II)V

    .line 1556
    sget v0, Lcom/alibaba/fastjson/serializer/ASMSerializerFactory$Context;->fieldName:I

    invoke-interface {p1, v4, v0}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitVarInsn(II)V

    .line 1557
    sget-object v0, Lcom/alibaba/fastjson/serializer/ASMSerializerFactory;->JavaBeanSerializer:Ljava/lang/String;

    const-string/jumbo v1, "applyName"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "(L"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Lcom/alibaba/fastjson/serializer/ASMSerializerFactory;->JSONSerializer:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ";Ljava/lang/Object;Ljava/lang/String;)Z"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {p1, v5, v0, v1, v2}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitMethodInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const/16 v0, 0x99

    .line 1559
    invoke-interface {p1, v0, p4}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitJumpInsn(ILcom/alibaba/fastjson/asm/Label;)V

    .line 1561
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/alibaba/fastjson/serializer/ASMSerializerFactory;->_labelApply(Lcom/alibaba/fastjson/asm/MethodVisitor;Lcom/alibaba/fastjson/util/FieldInfo;Lcom/alibaba/fastjson/serializer/ASMSerializerFactory$Context;Lcom/alibaba/fastjson/asm/Label;)V

    goto :goto_0

    :cond_1
    const-string/jumbo v0, "out"

    .line 1565
    invoke-virtual {p3, v0}, Lcom/alibaba/fastjson/serializer/ASMSerializerFactory$Context;->var(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p1, v4, v0}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitVarInsn(II)V

    .line 1566
    sget-object v0, Lcom/alibaba/fastjson/serializer/SerializerFeature;->IgnoreNonFieldGetter:Lcom/alibaba/fastjson/serializer/SerializerFeature;

    iget v0, v0, Lcom/alibaba/fastjson/serializer/SerializerFeature;->mask:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p1, v0}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitLdcInsn(Ljava/lang/Object;)V

    .line 1567
    sget-object v0, Lcom/alibaba/fastjson/serializer/ASMSerializerFactory;->SerializeWriter:Ljava/lang/String;

    const-string/jumbo v1, "isEnabled"

    const-string/jumbo v2, "(I)Z"

    invoke-interface {p1, v5, v0, v1, v2}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitMethodInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const/16 v0, 0x9a

    .line 1570
    invoke-interface {p1, v0, p4}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitJumpInsn(ILcom/alibaba/fastjson/asm/Label;)V

    goto :goto_1
.end method

.method private _notWriteDefault(Lcom/alibaba/fastjson/asm/MethodVisitor;Lcom/alibaba/fastjson/util/FieldInfo;Lcom/alibaba/fastjson/serializer/ASMSerializerFactory$Context;Lcom/alibaba/fastjson/asm/Label;)V
    .locals 5

    .prologue
    const/16 v4, 0x15

    const/16 v3, 0x99

    .line 1723
    invoke-static {p3}, Lcom/alibaba/fastjson/serializer/ASMSerializerFactory$Context;->access$000(Lcom/alibaba/fastjson/serializer/ASMSerializerFactory$Context;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1727
    new-instance v0, Lcom/alibaba/fastjson/asm/Label;

    invoke-direct {v0}, Lcom/alibaba/fastjson/asm/Label;-><init>()V

    const-string/jumbo v1, "notWriteDefaultValue"

    .line 1729
    invoke-virtual {p3, v1}, Lcom/alibaba/fastjson/serializer/ASMSerializerFactory$Context;->var(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p1, v4, v1}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitVarInsn(II)V

    .line 1730
    invoke-interface {p1, v3, v0}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitJumpInsn(ILcom/alibaba/fastjson/asm/Label;)V

    .line 1732
    iget-object v1, p2, Lcom/alibaba/fastjson/util/FieldInfo;->fieldClass:Ljava/lang/Class;

    .line 1733
    sget-object v2, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    if-eq v1, v2, :cond_1

    .line 1736
    sget-object v2, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    if-eq v1, v2, :cond_2

    .line 1739
    sget-object v2, Ljava/lang/Short;->TYPE:Ljava/lang/Class;

    if-eq v1, v2, :cond_3

    .line 1742
    sget-object v2, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    if-eq v1, v2, :cond_4

    .line 1745
    sget-object v2, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    if-eq v1, v2, :cond_5

    .line 1750
    sget-object v2, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    if-eq v1, v2, :cond_6

    .line 1755
    sget-object v2, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    if-eq v1, v2, :cond_7

    .line 1762
    :goto_0
    invoke-interface {p1, v0}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitLabel(Lcom/alibaba/fastjson/asm/Label;)V

    .line 1763
    return-void

    .line 1724
    :cond_0
    return-void

    :cond_1
    const-string/jumbo v1, "boolean"

    .line 1734
    invoke-virtual {p3, v1}, Lcom/alibaba/fastjson/serializer/ASMSerializerFactory$Context;->var(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p1, v4, v1}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitVarInsn(II)V

    .line 1735
    invoke-interface {p1, v3, p4}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitJumpInsn(ILcom/alibaba/fastjson/asm/Label;)V

    goto :goto_0

    :cond_2
    const-string/jumbo v1, "byte"

    .line 1737
    invoke-virtual {p3, v1}, Lcom/alibaba/fastjson/serializer/ASMSerializerFactory$Context;->var(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p1, v4, v1}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitVarInsn(II)V

    .line 1738
    invoke-interface {p1, v3, p4}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitJumpInsn(ILcom/alibaba/fastjson/asm/Label;)V

    goto :goto_0

    :cond_3
    const-string/jumbo v1, "short"

    .line 1740
    invoke-virtual {p3, v1}, Lcom/alibaba/fastjson/serializer/ASMSerializerFactory$Context;->var(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p1, v4, v1}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitVarInsn(II)V

    .line 1741
    invoke-interface {p1, v3, p4}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitJumpInsn(ILcom/alibaba/fastjson/asm/Label;)V

    goto :goto_0

    :cond_4
    const-string/jumbo v1, "int"

    .line 1743
    invoke-virtual {p3, v1}, Lcom/alibaba/fastjson/serializer/ASMSerializerFactory$Context;->var(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p1, v4, v1}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitVarInsn(II)V

    .line 1744
    invoke-interface {p1, v3, p4}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitJumpInsn(ILcom/alibaba/fastjson/asm/Label;)V

    goto :goto_0

    :cond_5
    const/16 v1, 0x16

    const-string/jumbo v2, "long"

    .line 1746
    invoke-virtual {p3, v2}, Lcom/alibaba/fastjson/serializer/ASMSerializerFactory$Context;->var(Ljava/lang/String;)I

    move-result v2

    invoke-interface {p1, v1, v2}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitVarInsn(II)V

    const/16 v1, 0x9

    .line 1747
    invoke-interface {p1, v1}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitInsn(I)V

    const/16 v1, 0x94

    .line 1748
    invoke-interface {p1, v1}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitInsn(I)V

    .line 1749
    invoke-interface {p1, v3, p4}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitJumpInsn(ILcom/alibaba/fastjson/asm/Label;)V

    goto :goto_0

    :cond_6
    const/16 v1, 0x17

    const-string/jumbo v2, "float"

    .line 1751
    invoke-virtual {p3, v2}, Lcom/alibaba/fastjson/serializer/ASMSerializerFactory$Context;->var(Ljava/lang/String;)I

    move-result v2

    invoke-interface {p1, v1, v2}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitVarInsn(II)V

    const/16 v1, 0xb

    .line 1752
    invoke-interface {p1, v1}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitInsn(I)V

    const/16 v1, 0x95

    .line 1753
    invoke-interface {p1, v1}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitInsn(I)V

    .line 1754
    invoke-interface {p1, v3, p4}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitJumpInsn(ILcom/alibaba/fastjson/asm/Label;)V

    goto :goto_0

    :cond_7
    const/16 v1, 0x18

    const-string/jumbo v2, "double"

    .line 1756
    invoke-virtual {p3, v2}, Lcom/alibaba/fastjson/serializer/ASMSerializerFactory$Context;->var(Ljava/lang/String;)I

    move-result v2

    invoke-interface {p1, v1, v2}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitVarInsn(II)V

    const/16 v1, 0xe

    .line 1757
    invoke-interface {p1, v1}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitInsn(I)V

    const/16 v1, 0x97

    .line 1758
    invoke-interface {p1, v1}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitInsn(I)V

    .line 1759
    invoke-interface {p1, v3, p4}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitJumpInsn(ILcom/alibaba/fastjson/asm/Label;)V

    goto/16 :goto_0
.end method

.method private _object(Ljava/lang/Class;Lcom/alibaba/fastjson/asm/MethodVisitor;Lcom/alibaba/fastjson/util/FieldInfo;Lcom/alibaba/fastjson/serializer/ASMSerializerFactory$Context;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;",
            "Lcom/alibaba/fastjson/asm/MethodVisitor;",
            "Lcom/alibaba/fastjson/util/FieldInfo;",
            "Lcom/alibaba/fastjson/serializer/ASMSerializerFactory$Context;",
            ")V"
        }
    .end annotation

    .prologue
    .line 1050
    new-instance v0, Lcom/alibaba/fastjson/asm/Label;

    invoke-direct {v0}, Lcom/alibaba/fastjson/asm/Label;-><init>()V

    .line 1052
    invoke-direct {p0, p2, p3, p4, v0}, Lcom/alibaba/fastjson/serializer/ASMSerializerFactory;->_nameApply(Lcom/alibaba/fastjson/asm/MethodVisitor;Lcom/alibaba/fastjson/util/FieldInfo;Lcom/alibaba/fastjson/serializer/ASMSerializerFactory$Context;Lcom/alibaba/fastjson/asm/Label;)V

    .line 1053
    invoke-direct {p0, p2, p4, p3}, Lcom/alibaba/fastjson/serializer/ASMSerializerFactory;->_get(Lcom/alibaba/fastjson/asm/MethodVisitor;Lcom/alibaba/fastjson/serializer/ASMSerializerFactory$Context;Lcom/alibaba/fastjson/util/FieldInfo;)V

    const/16 v1, 0x3a

    const-string/jumbo v2, "object"

    .line 1054
    invoke-virtual {p4, v2}, Lcom/alibaba/fastjson/serializer/ASMSerializerFactory$Context;->var(Ljava/lang/String;)I

    move-result v2

    invoke-interface {p2, v1, v2}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitVarInsn(II)V

    .line 1056
    invoke-direct {p0, p2, p3, p4, v0}, Lcom/alibaba/fastjson/serializer/ASMSerializerFactory;->_filters(Lcom/alibaba/fastjson/asm/MethodVisitor;Lcom/alibaba/fastjson/util/FieldInfo;Lcom/alibaba/fastjson/serializer/ASMSerializerFactory$Context;Lcom/alibaba/fastjson/asm/Label;)V

    .line 1058
    invoke-direct {p0, p2, p3, p4, v0}, Lcom/alibaba/fastjson/serializer/ASMSerializerFactory;->_writeObject(Lcom/alibaba/fastjson/asm/MethodVisitor;Lcom/alibaba/fastjson/util/FieldInfo;Lcom/alibaba/fastjson/serializer/ASMSerializerFactory$Context;Lcom/alibaba/fastjson/asm/Label;)V

    .line 1060
    invoke-interface {p2, v0}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitLabel(Lcom/alibaba/fastjson/asm/Label;)V

    .line 1061
    return-void
.end method

.method private _processKey(Lcom/alibaba/fastjson/asm/MethodVisitor;Lcom/alibaba/fastjson/util/FieldInfo;Lcom/alibaba/fastjson/serializer/ASMSerializerFactory$Context;)V
    .locals 7

    .prologue
    const/4 v6, 0x2

    const/4 v2, 0x0

    const/16 v5, 0x15

    const/16 v4, 0xb8

    const/16 v3, 0x19

    .line 1921
    new-instance v0, Lcom/alibaba/fastjson/asm/Label;

    invoke-direct {v0}, Lcom/alibaba/fastjson/asm/Label;-><init>()V

    const-string/jumbo v1, "hasNameFilters"

    .line 1923
    invoke-virtual {p3, v1}, Lcom/alibaba/fastjson/serializer/ASMSerializerFactory$Context;->var(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p1, v5, v1}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitVarInsn(II)V

    const/16 v1, 0x99

    .line 1924
    invoke-interface {p1, v1, v0}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitJumpInsn(ILcom/alibaba/fastjson/asm/Label;)V

    .line 1926
    iget-object v1, p2, Lcom/alibaba/fastjson/util/FieldInfo;->fieldClass:Ljava/lang/Class;

    .line 1928
    invoke-interface {p1, v3, v2}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitVarInsn(II)V

    const/4 v2, 0x1

    .line 1929
    invoke-interface {p1, v3, v2}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitVarInsn(II)V

    .line 1930
    invoke-interface {p1, v3, v6}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitVarInsn(II)V

    .line 1931
    sget v2, Lcom/alibaba/fastjson/serializer/ASMSerializerFactory$Context;->fieldName:I

    invoke-interface {p1, v3, v2}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitVarInsn(II)V

    .line 1933
    sget-object v2, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    if-eq v1, v2, :cond_0

    .line 1936
    sget-object v2, Ljava/lang/Short;->TYPE:Ljava/lang/Class;

    if-eq v1, v2, :cond_1

    .line 1939
    sget-object v2, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    if-eq v1, v2, :cond_2

    .line 1942
    sget-object v2, Ljava/lang/Character;->TYPE:Ljava/lang/Class;

    if-eq v1, v2, :cond_3

    .line 1945
    sget-object v2, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    if-eq v1, v2, :cond_4

    .line 1948
    sget-object v2, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    if-eq v1, v2, :cond_5

    .line 1951
    sget-object v2, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    if-eq v1, v2, :cond_6

    .line 1954
    sget-object v2, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    if-eq v1, v2, :cond_7

    const-class v2, Ljava/math/BigDecimal;

    .line 1957
    if-eq v1, v2, :cond_8

    const-class v2, Ljava/lang/String;

    .line 1959
    if-eq v1, v2, :cond_9

    .line 1961
    invoke-virtual {v1}, Ljava/lang/Class;->isEnum()Z

    move-result v2

    if-nez v2, :cond_a

    const-class v2, Ljava/util/List;

    .line 1963
    invoke-virtual {v2, v1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v1

    if-nez v1, :cond_b

    const-string/jumbo v1, "object"

    .line 1966
    invoke-virtual {p3, v1}, Lcom/alibaba/fastjson/serializer/ASMSerializerFactory$Context;->var(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p1, v3, v1}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitVarInsn(II)V

    :goto_0
    const/16 v1, 0xb6

    .line 1969
    sget-object v2, Lcom/alibaba/fastjson/serializer/ASMSerializerFactory;->JavaBeanSerializer:Ljava/lang/String;

    const-string/jumbo v3, "processKey"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "(L"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget-object v5, Lcom/alibaba/fastjson/serializer/ASMSerializerFactory;->JSONSerializer:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, ";Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {p1, v1, v2, v3, v4}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitMethodInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const/16 v1, 0x3a

    .line 1973
    sget v2, Lcom/alibaba/fastjson/serializer/ASMSerializerFactory$Context;->fieldName:I

    invoke-interface {p1, v1, v2}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitVarInsn(II)V

    .line 1975
    invoke-interface {p1, v0}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitLabel(Lcom/alibaba/fastjson/asm/Label;)V

    .line 1976
    return-void

    :cond_0
    const-string/jumbo v1, "byte"

    .line 1934
    invoke-virtual {p3, v1}, Lcom/alibaba/fastjson/serializer/ASMSerializerFactory$Context;->var(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p1, v5, v1}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitVarInsn(II)V

    const-string/jumbo v1, "java/lang/Byte"

    const-string/jumbo v2, "valueOf"

    const-string/jumbo v3, "(B)Ljava/lang/Byte;"

    .line 1935
    invoke-interface {p1, v4, v1, v2, v3}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitMethodInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    const-string/jumbo v1, "short"

    .line 1937
    invoke-virtual {p3, v1}, Lcom/alibaba/fastjson/serializer/ASMSerializerFactory$Context;->var(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p1, v5, v1}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitVarInsn(II)V

    const-string/jumbo v1, "java/lang/Short"

    const-string/jumbo v2, "valueOf"

    const-string/jumbo v3, "(S)Ljava/lang/Short;"

    .line 1938
    invoke-interface {p1, v4, v1, v2, v3}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitMethodInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    const-string/jumbo v1, "int"

    .line 1940
    invoke-virtual {p3, v1}, Lcom/alibaba/fastjson/serializer/ASMSerializerFactory$Context;->var(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p1, v5, v1}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitVarInsn(II)V

    const-string/jumbo v1, "java/lang/Integer"

    const-string/jumbo v2, "valueOf"

    const-string/jumbo v3, "(I)Ljava/lang/Integer;"

    .line 1941
    invoke-interface {p1, v4, v1, v2, v3}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitMethodInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_3
    const-string/jumbo v1, "char"

    .line 1943
    invoke-virtual {p3, v1}, Lcom/alibaba/fastjson/serializer/ASMSerializerFactory$Context;->var(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p1, v5, v1}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitVarInsn(II)V

    const-string/jumbo v1, "java/lang/Character"

    const-string/jumbo v2, "valueOf"

    const-string/jumbo v3, "(C)Ljava/lang/Character;"

    .line 1944
    invoke-interface {p1, v4, v1, v2, v3}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitMethodInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_4
    const/16 v1, 0x16

    const-string/jumbo v2, "long"

    .line 1946
    invoke-virtual {p3, v2, v6}, Lcom/alibaba/fastjson/serializer/ASMSerializerFactory$Context;->var(Ljava/lang/String;I)I

    move-result v2

    invoke-interface {p1, v1, v2}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitVarInsn(II)V

    const-string/jumbo v1, "java/lang/Long"

    const-string/jumbo v2, "valueOf"

    const-string/jumbo v3, "(J)Ljava/lang/Long;"

    .line 1947
    invoke-interface {p1, v4, v1, v2, v3}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitMethodInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_5
    const/16 v1, 0x17

    const-string/jumbo v2, "float"

    .line 1949
    invoke-virtual {p3, v2}, Lcom/alibaba/fastjson/serializer/ASMSerializerFactory$Context;->var(Ljava/lang/String;)I

    move-result v2

    invoke-interface {p1, v1, v2}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitVarInsn(II)V

    const-string/jumbo v1, "java/lang/Float"

    const-string/jumbo v2, "valueOf"

    const-string/jumbo v3, "(F)Ljava/lang/Float;"

    .line 1950
    invoke-interface {p1, v4, v1, v2, v3}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitMethodInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_6
    const/16 v1, 0x18

    const-string/jumbo v2, "double"

    .line 1952
    invoke-virtual {p3, v2, v6}, Lcom/alibaba/fastjson/serializer/ASMSerializerFactory$Context;->var(Ljava/lang/String;I)I

    move-result v2

    invoke-interface {p1, v1, v2}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitVarInsn(II)V

    const-string/jumbo v1, "java/lang/Double"

    const-string/jumbo v2, "valueOf"

    const-string/jumbo v3, "(D)Ljava/lang/Double;"

    .line 1953
    invoke-interface {p1, v4, v1, v2, v3}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitMethodInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_7
    const-string/jumbo v1, "boolean"

    .line 1955
    invoke-virtual {p3, v1}, Lcom/alibaba/fastjson/serializer/ASMSerializerFactory$Context;->var(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p1, v5, v1}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitVarInsn(II)V

    const-string/jumbo v1, "java/lang/Boolean"

    const-string/jumbo v2, "valueOf"

    const-string/jumbo v3, "(Z)Ljava/lang/Boolean;"

    .line 1956
    invoke-interface {p1, v4, v1, v2, v3}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitMethodInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_8
    const-string/jumbo v1, "decimal"

    .line 1958
    invoke-virtual {p3, v1}, Lcom/alibaba/fastjson/serializer/ASMSerializerFactory$Context;->var(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p1, v3, v1}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitVarInsn(II)V

    goto/16 :goto_0

    :cond_9
    const-string/jumbo v1, "string"

    .line 1960
    invoke-virtual {p3, v1}, Lcom/alibaba/fastjson/serializer/ASMSerializerFactory$Context;->var(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p1, v3, v1}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitVarInsn(II)V

    goto/16 :goto_0

    :cond_a
    const-string/jumbo v1, "enum"

    .line 1962
    invoke-virtual {p3, v1}, Lcom/alibaba/fastjson/serializer/ASMSerializerFactory$Context;->var(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p1, v3, v1}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitVarInsn(II)V

    goto/16 :goto_0

    :cond_b
    const-string/jumbo v1, "list"

    .line 1964
    invoke-virtual {p3, v1}, Lcom/alibaba/fastjson/serializer/ASMSerializerFactory$Context;->var(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p1, v3, v1}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitVarInsn(II)V

    goto/16 :goto_0
.end method

.method private _processValue(Lcom/alibaba/fastjson/asm/MethodVisitor;Lcom/alibaba/fastjson/util/FieldInfo;Lcom/alibaba/fastjson/serializer/ASMSerializerFactory$Context;Lcom/alibaba/fastjson/asm/Label;)V
    .locals 7

    .prologue
    .line 1814
    new-instance v0, Lcom/alibaba/fastjson/asm/Label;

    invoke-direct {v0}, Lcom/alibaba/fastjson/asm/Label;-><init>()V

    .line 1816
    iget-object v1, p2, Lcom/alibaba/fastjson/util/FieldInfo;->fieldClass:Ljava/lang/Class;

    .line 1818
    invoke-virtual {v1}, Ljava/lang/Class;->isPrimitive()Z

    move-result v2

    if-nez v2, :cond_0

    :goto_0
    const/16 v2, 0x19

    const/4 v3, 0x0

    .line 1832
    invoke-interface {p1, v2, v3}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitVarInsn(II)V

    const/16 v2, 0x19

    const/4 v3, 0x1

    .line 1833
    invoke-interface {p1, v2, v3}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitVarInsn(II)V

    const/16 v2, 0x19

    const/4 v3, 0x0

    .line 1834
    invoke-interface {p1, v2, v3}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitVarInsn(II)V

    .line 1835
    iget-object v2, p2, Lcom/alibaba/fastjson/util/FieldInfo;->name:Ljava/lang/String;

    invoke-virtual {p3, v2}, Lcom/alibaba/fastjson/serializer/ASMSerializerFactory$Context;->getFieldOrinal(Ljava/lang/String;)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {p1, v2}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitLdcInsn(Ljava/lang/Object;)V

    const/16 v2, 0xb6

    .line 1836
    sget-object v3, Lcom/alibaba/fastjson/serializer/ASMSerializerFactory;->JavaBeanSerializer:Ljava/lang/String;

    const-string/jumbo v4, "getBeanContext"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "(I)"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-class v6, Lcom/alibaba/fastjson/serializer/BeanContext;

    invoke-static {v6}, Lcom/alibaba/fastjson/util/ASMUtils;->desc(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {p1, v2, v3, v4, v5}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitMethodInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const/16 v2, 0x19

    const/4 v3, 0x2

    .line 1837
    invoke-interface {p1, v2, v3}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitVarInsn(II)V

    const/16 v2, 0x19

    .line 1838
    sget v3, Lcom/alibaba/fastjson/serializer/ASMSerializerFactory$Context;->fieldName:I

    invoke-interface {p1, v2, v3}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitVarInsn(II)V

    const-string/jumbo v2, "Ljava/lang/Object;"

    .line 1841
    sget-object v3, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    if-eq v1, v3, :cond_1

    .line 1846
    sget-object v3, Ljava/lang/Short;->TYPE:Ljava/lang/Class;

    if-eq v1, v3, :cond_2

    .line 1851
    sget-object v3, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    if-eq v1, v3, :cond_3

    .line 1856
    sget-object v3, Ljava/lang/Character;->TYPE:Ljava/lang/Class;

    if-eq v1, v3, :cond_4

    .line 1861
    sget-object v3, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    if-eq v1, v3, :cond_5

    .line 1866
    sget-object v3, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    if-eq v1, v3, :cond_6

    .line 1871
    sget-object v3, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    if-eq v1, v3, :cond_7

    .line 1876
    sget-object v3, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    if-eq v1, v3, :cond_8

    const-class v3, Ljava/math/BigDecimal;

    .line 1881
    if-eq v1, v3, :cond_9

    const-class v3, Ljava/lang/String;

    .line 1885
    if-eq v1, v3, :cond_a

    .line 1889
    invoke-virtual {v1}, Ljava/lang/Class;->isEnum()Z

    move-result v3

    if-nez v3, :cond_b

    const-class v3, Ljava/util/List;

    .line 1893
    invoke-virtual {v3, v1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v1

    if-nez v1, :cond_c

    const/16 v1, 0x19

    const-string/jumbo v3, "object"

    .line 1898
    invoke-virtual {p3, v3}, Lcom/alibaba/fastjson/serializer/ASMSerializerFactory$Context;->var(Ljava/lang/String;)I

    move-result v3

    invoke-interface {p1, v1, v3}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitVarInsn(II)V

    const/16 v1, 0x3a

    .line 1899
    sget v3, Lcom/alibaba/fastjson/serializer/ASMSerializerFactory$Context;->original:I

    invoke-interface {p1, v1, v3}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitVarInsn(II)V

    const/16 v1, 0x19

    .line 1900
    sget v3, Lcom/alibaba/fastjson/serializer/ASMSerializerFactory$Context;->original:I

    invoke-interface {p1, v1, v3}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitVarInsn(II)V

    :goto_1
    const/16 v1, 0xb6

    .line 1903
    sget-object v3, Lcom/alibaba/fastjson/serializer/ASMSerializerFactory;->JavaBeanSerializer:Ljava/lang/String;

    const-string/jumbo v4, "processValue"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "(L"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    sget-object v6, Lcom/alibaba/fastjson/serializer/ASMSerializerFactory;->JSONSerializer:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, ";"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-class v6, Lcom/alibaba/fastjson/serializer/BeanContext;

    .line 1905
    invoke-static {v6}, Lcom/alibaba/fastjson/util/ASMUtils;->desc(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, "Ljava/lang/Object;Ljava/lang/String;"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v5, ")Ljava/lang/Object;"

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1903
    invoke-interface {p1, v1, v3, v4, v2}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitMethodInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const/16 v1, 0x3a

    .line 1909
    sget v2, Lcom/alibaba/fastjson/serializer/ASMSerializerFactory$Context;->processValue:I

    invoke-interface {p1, v1, v2}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitVarInsn(II)V

    const/16 v1, 0x19

    .line 1911
    sget v2, Lcom/alibaba/fastjson/serializer/ASMSerializerFactory$Context;->original:I

    invoke-interface {p1, v1, v2}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitVarInsn(II)V

    const/16 v1, 0x19

    .line 1912
    sget v2, Lcom/alibaba/fastjson/serializer/ASMSerializerFactory$Context;->processValue:I

    invoke-interface {p1, v1, v2}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitVarInsn(II)V

    const/16 v1, 0xa5

    .line 1913
    invoke-interface {p1, v1, v0}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitJumpInsn(ILcom/alibaba/fastjson/asm/Label;)V

    .line 1914
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/alibaba/fastjson/serializer/ASMSerializerFactory;->_writeObject(Lcom/alibaba/fastjson/asm/MethodVisitor;Lcom/alibaba/fastjson/util/FieldInfo;Lcom/alibaba/fastjson/serializer/ASMSerializerFactory$Context;Lcom/alibaba/fastjson/asm/Label;)V

    const/16 v1, 0xa7

    .line 1915
    invoke-interface {p1, v1, p4}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitJumpInsn(ILcom/alibaba/fastjson/asm/Label;)V

    .line 1917
    invoke-interface {p1, v0}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitLabel(Lcom/alibaba/fastjson/asm/Label;)V

    .line 1918
    return-void

    .line 1819
    :cond_0
    new-instance v2, Lcom/alibaba/fastjson/asm/Label;

    invoke-direct {v2}, Lcom/alibaba/fastjson/asm/Label;-><init>()V

    const/16 v3, 0x15

    const-string/jumbo v4, "checkValue"

    .line 1820
    invoke-virtual {p3, v4}, Lcom/alibaba/fastjson/serializer/ASMSerializerFactory$Context;->var(Ljava/lang/String;)I

    move-result v4

    invoke-interface {p1, v3, v4}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitVarInsn(II)V

    const/16 v3, 0x9a

    .line 1821
    invoke-interface {p1, v3, v2}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitJumpInsn(ILcom/alibaba/fastjson/asm/Label;)V

    const/4 v3, 0x1

    .line 1823
    invoke-interface {p1, v3}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitInsn(I)V

    const/16 v3, 0x59

    .line 1824
    invoke-interface {p1, v3}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitInsn(I)V

    const/16 v3, 0x3a

    .line 1825
    sget v4, Lcom/alibaba/fastjson/serializer/ASMSerializerFactory$Context;->original:I

    invoke-interface {p1, v3, v4}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitVarInsn(II)V

    const/16 v3, 0x3a

    .line 1826
    sget v4, Lcom/alibaba/fastjson/serializer/ASMSerializerFactory$Context;->processValue:I

    invoke-interface {p1, v3, v4}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitVarInsn(II)V

    const/16 v3, 0xa7

    .line 1827
    invoke-interface {p1, v3, v0}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitJumpInsn(ILcom/alibaba/fastjson/asm/Label;)V

    .line 1829
    invoke-interface {p1, v2}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitLabel(Lcom/alibaba/fastjson/asm/Label;)V

    goto/16 :goto_0

    :cond_1
    const/16 v1, 0x15

    const-string/jumbo v3, "byte"

    .line 1842
    invoke-virtual {p3, v3}, Lcom/alibaba/fastjson/serializer/ASMSerializerFactory$Context;->var(Ljava/lang/String;)I

    move-result v3

    invoke-interface {p1, v1, v3}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitVarInsn(II)V

    const/16 v1, 0xb8

    const-string/jumbo v3, "java/lang/Byte"

    const-string/jumbo v4, "valueOf"

    const-string/jumbo v5, "(B)Ljava/lang/Byte;"

    .line 1843
    invoke-interface {p1, v1, v3, v4, v5}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitMethodInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const/16 v1, 0x59

    .line 1844
    invoke-interface {p1, v1}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitInsn(I)V

    const/16 v1, 0x3a

    .line 1845
    sget v3, Lcom/alibaba/fastjson/serializer/ASMSerializerFactory$Context;->original:I

    invoke-interface {p1, v1, v3}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitVarInsn(II)V

    goto/16 :goto_1

    :cond_2
    const/16 v1, 0x15

    const-string/jumbo v3, "short"

    .line 1847
    invoke-virtual {p3, v3}, Lcom/alibaba/fastjson/serializer/ASMSerializerFactory$Context;->var(Ljava/lang/String;)I

    move-result v3

    invoke-interface {p1, v1, v3}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitVarInsn(II)V

    const/16 v1, 0xb8

    const-string/jumbo v3, "java/lang/Short"

    const-string/jumbo v4, "valueOf"

    const-string/jumbo v5, "(S)Ljava/lang/Short;"

    .line 1848
    invoke-interface {p1, v1, v3, v4, v5}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitMethodInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const/16 v1, 0x59

    .line 1849
    invoke-interface {p1, v1}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitInsn(I)V

    const/16 v1, 0x3a

    .line 1850
    sget v3, Lcom/alibaba/fastjson/serializer/ASMSerializerFactory$Context;->original:I

    invoke-interface {p1, v1, v3}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitVarInsn(II)V

    goto/16 :goto_1

    :cond_3
    const/16 v1, 0x15

    const-string/jumbo v3, "int"

    .line 1852
    invoke-virtual {p3, v3}, Lcom/alibaba/fastjson/serializer/ASMSerializerFactory$Context;->var(Ljava/lang/String;)I

    move-result v3

    invoke-interface {p1, v1, v3}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitVarInsn(II)V

    const/16 v1, 0xb8

    const-string/jumbo v3, "java/lang/Integer"

    const-string/jumbo v4, "valueOf"

    const-string/jumbo v5, "(I)Ljava/lang/Integer;"

    .line 1853
    invoke-interface {p1, v1, v3, v4, v5}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitMethodInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const/16 v1, 0x59

    .line 1854
    invoke-interface {p1, v1}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitInsn(I)V

    const/16 v1, 0x3a

    .line 1855
    sget v3, Lcom/alibaba/fastjson/serializer/ASMSerializerFactory$Context;->original:I

    invoke-interface {p1, v1, v3}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitVarInsn(II)V

    goto/16 :goto_1

    :cond_4
    const/16 v1, 0x15

    const-string/jumbo v3, "char"

    .line 1857
    invoke-virtual {p3, v3}, Lcom/alibaba/fastjson/serializer/ASMSerializerFactory$Context;->var(Ljava/lang/String;)I

    move-result v3

    invoke-interface {p1, v1, v3}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitVarInsn(II)V

    const/16 v1, 0xb8

    const-string/jumbo v3, "java/lang/Character"

    const-string/jumbo v4, "valueOf"

    const-string/jumbo v5, "(C)Ljava/lang/Character;"

    .line 1858
    invoke-interface {p1, v1, v3, v4, v5}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitMethodInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const/16 v1, 0x59

    .line 1859
    invoke-interface {p1, v1}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitInsn(I)V

    const/16 v1, 0x3a

    .line 1860
    sget v3, Lcom/alibaba/fastjson/serializer/ASMSerializerFactory$Context;->original:I

    invoke-interface {p1, v1, v3}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitVarInsn(II)V

    goto/16 :goto_1

    :cond_5
    const/16 v1, 0x16

    const-string/jumbo v3, "long"

    const/4 v4, 0x2

    .line 1862
    invoke-virtual {p3, v3, v4}, Lcom/alibaba/fastjson/serializer/ASMSerializerFactory$Context;->var(Ljava/lang/String;I)I

    move-result v3

    invoke-interface {p1, v1, v3}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitVarInsn(II)V

    const/16 v1, 0xb8

    const-string/jumbo v3, "java/lang/Long"

    const-string/jumbo v4, "valueOf"

    const-string/jumbo v5, "(J)Ljava/lang/Long;"

    .line 1863
    invoke-interface {p1, v1, v3, v4, v5}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitMethodInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const/16 v1, 0x59

    .line 1864
    invoke-interface {p1, v1}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitInsn(I)V

    const/16 v1, 0x3a

    .line 1865
    sget v3, Lcom/alibaba/fastjson/serializer/ASMSerializerFactory$Context;->original:I

    invoke-interface {p1, v1, v3}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitVarInsn(II)V

    goto/16 :goto_1

    :cond_6
    const/16 v1, 0x17

    const-string/jumbo v3, "float"

    .line 1867
    invoke-virtual {p3, v3}, Lcom/alibaba/fastjson/serializer/ASMSerializerFactory$Context;->var(Ljava/lang/String;)I

    move-result v3

    invoke-interface {p1, v1, v3}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitVarInsn(II)V

    const/16 v1, 0xb8

    const-string/jumbo v3, "java/lang/Float"

    const-string/jumbo v4, "valueOf"

    const-string/jumbo v5, "(F)Ljava/lang/Float;"

    .line 1868
    invoke-interface {p1, v1, v3, v4, v5}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitMethodInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const/16 v1, 0x59

    .line 1869
    invoke-interface {p1, v1}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitInsn(I)V

    const/16 v1, 0x3a

    .line 1870
    sget v3, Lcom/alibaba/fastjson/serializer/ASMSerializerFactory$Context;->original:I

    invoke-interface {p1, v1, v3}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitVarInsn(II)V

    goto/16 :goto_1

    :cond_7
    const/16 v1, 0x18

    const-string/jumbo v3, "double"

    const/4 v4, 0x2

    .line 1872
    invoke-virtual {p3, v3, v4}, Lcom/alibaba/fastjson/serializer/ASMSerializerFactory$Context;->var(Ljava/lang/String;I)I

    move-result v3

    invoke-interface {p1, v1, v3}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitVarInsn(II)V

    const/16 v1, 0xb8

    const-string/jumbo v3, "java/lang/Double"

    const-string/jumbo v4, "valueOf"

    const-string/jumbo v5, "(D)Ljava/lang/Double;"

    .line 1873
    invoke-interface {p1, v1, v3, v4, v5}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitMethodInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const/16 v1, 0x59

    .line 1874
    invoke-interface {p1, v1}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitInsn(I)V

    const/16 v1, 0x3a

    .line 1875
    sget v3, Lcom/alibaba/fastjson/serializer/ASMSerializerFactory$Context;->original:I

    invoke-interface {p1, v1, v3}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitVarInsn(II)V

    goto/16 :goto_1

    :cond_8
    const/16 v1, 0x15

    const-string/jumbo v3, "boolean"

    .line 1877
    invoke-virtual {p3, v3}, Lcom/alibaba/fastjson/serializer/ASMSerializerFactory$Context;->var(Ljava/lang/String;)I

    move-result v3

    invoke-interface {p1, v1, v3}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitVarInsn(II)V

    const/16 v1, 0xb8

    const-string/jumbo v3, "java/lang/Boolean"

    const-string/jumbo v4, "valueOf"

    const-string/jumbo v5, "(Z)Ljava/lang/Boolean;"

    .line 1878
    invoke-interface {p1, v1, v3, v4, v5}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitMethodInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const/16 v1, 0x59

    .line 1879
    invoke-interface {p1, v1}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitInsn(I)V

    const/16 v1, 0x3a

    .line 1880
    sget v3, Lcom/alibaba/fastjson/serializer/ASMSerializerFactory$Context;->original:I

    invoke-interface {p1, v1, v3}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitVarInsn(II)V

    goto/16 :goto_1

    :cond_9
    const/16 v1, 0x19

    const-string/jumbo v3, "decimal"

    .line 1882
    invoke-virtual {p3, v3}, Lcom/alibaba/fastjson/serializer/ASMSerializerFactory$Context;->var(Ljava/lang/String;)I

    move-result v3

    invoke-interface {p1, v1, v3}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitVarInsn(II)V

    const/16 v1, 0x3a

    .line 1883
    sget v3, Lcom/alibaba/fastjson/serializer/ASMSerializerFactory$Context;->original:I

    invoke-interface {p1, v1, v3}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitVarInsn(II)V

    const/16 v1, 0x19

    .line 1884
    sget v3, Lcom/alibaba/fastjson/serializer/ASMSerializerFactory$Context;->original:I

    invoke-interface {p1, v1, v3}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitVarInsn(II)V

    goto/16 :goto_1

    :cond_a
    const/16 v1, 0x19

    const-string/jumbo v3, "string"

    .line 1886
    invoke-virtual {p3, v3}, Lcom/alibaba/fastjson/serializer/ASMSerializerFactory$Context;->var(Ljava/lang/String;)I

    move-result v3

    invoke-interface {p1, v1, v3}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitVarInsn(II)V

    const/16 v1, 0x3a

    .line 1887
    sget v3, Lcom/alibaba/fastjson/serializer/ASMSerializerFactory$Context;->original:I

    invoke-interface {p1, v1, v3}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitVarInsn(II)V

    const/16 v1, 0x19

    .line 1888
    sget v3, Lcom/alibaba/fastjson/serializer/ASMSerializerFactory$Context;->original:I

    invoke-interface {p1, v1, v3}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitVarInsn(II)V

    goto/16 :goto_1

    :cond_b
    const/16 v1, 0x19

    const-string/jumbo v3, "enum"

    .line 1890
    invoke-virtual {p3, v3}, Lcom/alibaba/fastjson/serializer/ASMSerializerFactory$Context;->var(Ljava/lang/String;)I

    move-result v3

    invoke-interface {p1, v1, v3}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitVarInsn(II)V

    const/16 v1, 0x3a

    .line 1891
    sget v3, Lcom/alibaba/fastjson/serializer/ASMSerializerFactory$Context;->original:I

    invoke-interface {p1, v1, v3}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitVarInsn(II)V

    const/16 v1, 0x19

    .line 1892
    sget v3, Lcom/alibaba/fastjson/serializer/ASMSerializerFactory$Context;->original:I

    invoke-interface {p1, v1, v3}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitVarInsn(II)V

    goto/16 :goto_1

    :cond_c
    const/16 v1, 0x19

    const-string/jumbo v3, "list"

    .line 1894
    invoke-virtual {p3, v3}, Lcom/alibaba/fastjson/serializer/ASMSerializerFactory$Context;->var(Ljava/lang/String;)I

    move-result v3

    invoke-interface {p1, v1, v3}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitVarInsn(II)V

    const/16 v1, 0x3a

    .line 1895
    sget v3, Lcom/alibaba/fastjson/serializer/ASMSerializerFactory$Context;->original:I

    invoke-interface {p1, v1, v3}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitVarInsn(II)V

    const/16 v1, 0x19

    .line 1896
    sget v3, Lcom/alibaba/fastjson/serializer/ASMSerializerFactory$Context;->original:I

    invoke-interface {p1, v1, v3}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitVarInsn(II)V

    goto/16 :goto_1
.end method

.method private _seperator(Lcom/alibaba/fastjson/asm/MethodVisitor;Lcom/alibaba/fastjson/serializer/ASMSerializerFactory$Context;)V
    .locals 2

    .prologue
    const/16 v0, 0x10

    const/16 v1, 0x2c

    .line 2071
    invoke-interface {p1, v0, v1}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitVarInsn(II)V

    const/16 v0, 0x36

    const-string/jumbo v1, "seperator"

    .line 2072
    invoke-virtual {p2, v1}, Lcom/alibaba/fastjson/serializer/ASMSerializerFactory$Context;->var(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p1, v0, v1}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitVarInsn(II)V

    .line 2073
    return-void
.end method

.method private _string(Ljava/lang/Class;Lcom/alibaba/fastjson/asm/MethodVisitor;Lcom/alibaba/fastjson/util/FieldInfo;Lcom/alibaba/fastjson/serializer/ASMSerializerFactory$Context;)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;",
            "Lcom/alibaba/fastjson/asm/MethodVisitor;",
            "Lcom/alibaba/fastjson/util/FieldInfo;",
            "Lcom/alibaba/fastjson/serializer/ASMSerializerFactory$Context;",
            ")V"
        }
    .end annotation

    .prologue
    const/16 v8, 0x3a

    const/16 v7, 0x15

    const/16 v6, 0xb6

    const/16 v5, 0x19

    .line 1255
    new-instance v0, Lcom/alibaba/fastjson/asm/Label;

    invoke-direct {v0}, Lcom/alibaba/fastjson/asm/Label;-><init>()V

    .line 1257
    iget-object v1, p3, Lcom/alibaba/fastjson/util/FieldInfo;->name:Ljava/lang/String;

    invoke-static {p4}, Lcom/alibaba/fastjson/serializer/ASMSerializerFactory$Context;->access$400(Lcom/alibaba/fastjson/serializer/ASMSerializerFactory$Context;)Lcom/alibaba/fastjson/serializer/SerializeBeanInfo;

    move-result-object v2

    iget-object v2, v2, Lcom/alibaba/fastjson/serializer/SerializeBeanInfo;->typeKey:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 1266
    :goto_0
    invoke-direct {p0, p2, p3, p4, v0}, Lcom/alibaba/fastjson/serializer/ASMSerializerFactory;->_nameApply(Lcom/alibaba/fastjson/asm/MethodVisitor;Lcom/alibaba/fastjson/util/FieldInfo;Lcom/alibaba/fastjson/serializer/ASMSerializerFactory$Context;Lcom/alibaba/fastjson/asm/Label;)V

    .line 1267
    invoke-direct {p0, p2, p4, p3}, Lcom/alibaba/fastjson/serializer/ASMSerializerFactory;->_get(Lcom/alibaba/fastjson/asm/MethodVisitor;Lcom/alibaba/fastjson/serializer/ASMSerializerFactory$Context;Lcom/alibaba/fastjson/util/FieldInfo;)V

    const-string/jumbo v1, "string"

    .line 1268
    invoke-virtual {p4, v1}, Lcom/alibaba/fastjson/serializer/ASMSerializerFactory$Context;->var(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p2, v8, v1}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitVarInsn(II)V

    .line 1270
    invoke-direct {p0, p2, p3, p4, v0}, Lcom/alibaba/fastjson/serializer/ASMSerializerFactory;->_filters(Lcom/alibaba/fastjson/asm/MethodVisitor;Lcom/alibaba/fastjson/util/FieldInfo;Lcom/alibaba/fastjson/serializer/ASMSerializerFactory$Context;Lcom/alibaba/fastjson/asm/Label;)V

    .line 1272
    new-instance v1, Lcom/alibaba/fastjson/asm/Label;

    invoke-direct {v1}, Lcom/alibaba/fastjson/asm/Label;-><init>()V

    .line 1273
    new-instance v2, Lcom/alibaba/fastjson/asm/Label;

    invoke-direct {v2}, Lcom/alibaba/fastjson/asm/Label;-><init>()V

    const-string/jumbo v3, "string"

    .line 1276
    invoke-virtual {p4, v3}, Lcom/alibaba/fastjson/serializer/ASMSerializerFactory$Context;->var(Ljava/lang/String;)I

    move-result v3

    invoke-interface {p2, v5, v3}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitVarInsn(II)V

    const/16 v3, 0xc7

    .line 1277
    invoke-interface {p2, v3, v1}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitJumpInsn(ILcom/alibaba/fastjson/asm/Label;)V

    .line 1279
    invoke-direct {p0, p2, p3, p4}, Lcom/alibaba/fastjson/serializer/ASMSerializerFactory;->_if_write_null(Lcom/alibaba/fastjson/asm/MethodVisitor;Lcom/alibaba/fastjson/util/FieldInfo;Lcom/alibaba/fastjson/serializer/ASMSerializerFactory$Context;)V

    const/16 v3, 0xa7

    .line 1281
    invoke-interface {p2, v3, v2}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitJumpInsn(ILcom/alibaba/fastjson/asm/Label;)V

    .line 1283
    invoke-interface {p2, v1}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitLabel(Lcom/alibaba/fastjson/asm/Label;)V

    const-string/jumbo v1, "trim"

    .line 1286
    iget-object v3, p3, Lcom/alibaba/fastjson/util/FieldInfo;->format:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 1292
    :goto_1
    invoke-static {p4}, Lcom/alibaba/fastjson/serializer/ASMSerializerFactory$Context;->access$000(Lcom/alibaba/fastjson/serializer/ASMSerializerFactory$Context;)Z

    move-result v1

    if-nez v1, :cond_2

    const-string/jumbo v1, "out"

    .line 1300
    invoke-virtual {p4, v1}, Lcom/alibaba/fastjson/serializer/ASMSerializerFactory$Context;->var(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p2, v5, v1}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitVarInsn(II)V

    const-string/jumbo v1, "seperator"

    .line 1301
    invoke-virtual {p4, v1}, Lcom/alibaba/fastjson/serializer/ASMSerializerFactory$Context;->var(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p2, v7, v1}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitVarInsn(II)V

    .line 1302
    sget v1, Lcom/alibaba/fastjson/serializer/ASMSerializerFactory$Context;->fieldName:I

    invoke-interface {p2, v5, v1}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitVarInsn(II)V

    const-string/jumbo v1, "string"

    .line 1303
    invoke-virtual {p4, v1}, Lcom/alibaba/fastjson/serializer/ASMSerializerFactory$Context;->var(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p2, v5, v1}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitVarInsn(II)V

    .line 1304
    sget-object v1, Lcom/alibaba/fastjson/serializer/ASMSerializerFactory;->SerializeWriter:Ljava/lang/String;

    const-string/jumbo v3, "writeFieldValue"

    const-string/jumbo v4, "(CLjava/lang/String;Ljava/lang/String;)V"

    invoke-interface {p2, v6, v1, v3, v4}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitMethodInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1307
    :goto_2
    invoke-direct {p0, p2, p4}, Lcom/alibaba/fastjson/serializer/ASMSerializerFactory;->_seperator(Lcom/alibaba/fastjson/asm/MethodVisitor;Lcom/alibaba/fastjson/serializer/ASMSerializerFactory$Context;)V

    .line 1309
    invoke-interface {p2, v2}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitLabel(Lcom/alibaba/fastjson/asm/Label;)V

    .line 1311
    invoke-interface {p2, v0}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitLabel(Lcom/alibaba/fastjson/asm/Label;)V

    .line 1312
    return-void

    :cond_0
    const/4 v1, 0x1

    .line 1258
    invoke-interface {p2, v5, v1}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitVarInsn(II)V

    const/4 v1, 0x4

    .line 1259
    invoke-interface {p2, v5, v1}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitVarInsn(II)V

    const/4 v1, 0x2

    .line 1260
    invoke-interface {p2, v5, v1}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitVarInsn(II)V

    .line 1261
    sget-object v1, Lcom/alibaba/fastjson/serializer/ASMSerializerFactory;->JSONSerializer:Ljava/lang/String;

    const-string/jumbo v2, "isWriteClassName"

    const-string/jumbo v3, "(Ljava/lang/reflect/Type;Ljava/lang/Object;)Z"

    invoke-interface {p2, v6, v1, v2, v3}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitMethodInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const/16 v1, 0x9a

    .line 1263
    invoke-interface {p2, v1, v0}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitJumpInsn(ILcom/alibaba/fastjson/asm/Label;)V

    goto/16 :goto_0

    :cond_1
    const-string/jumbo v1, "string"

    .line 1287
    invoke-virtual {p4, v1}, Lcom/alibaba/fastjson/serializer/ASMSerializerFactory$Context;->var(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p2, v5, v1}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitVarInsn(II)V

    const-string/jumbo v1, "java/lang/String"

    const-string/jumbo v3, "trim"

    const-string/jumbo v4, "()Ljava/lang/String;"

    .line 1288
    invoke-interface {p2, v6, v1, v3, v4}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitMethodInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v1, "string"

    .line 1289
    invoke-virtual {p4, v1}, Lcom/alibaba/fastjson/serializer/ASMSerializerFactory$Context;->var(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p2, v8, v1}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitVarInsn(II)V

    goto :goto_1

    :cond_2
    const-string/jumbo v1, "out"

    .line 1293
    invoke-virtual {p4, v1}, Lcom/alibaba/fastjson/serializer/ASMSerializerFactory$Context;->var(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p2, v5, v1}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitVarInsn(II)V

    const-string/jumbo v1, "seperator"

    .line 1294
    invoke-virtual {p4, v1}, Lcom/alibaba/fastjson/serializer/ASMSerializerFactory$Context;->var(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p2, v7, v1}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitVarInsn(II)V

    .line 1295
    sget v1, Lcom/alibaba/fastjson/serializer/ASMSerializerFactory$Context;->fieldName:I

    invoke-interface {p2, v5, v1}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitVarInsn(II)V

    const-string/jumbo v1, "string"

    .line 1296
    invoke-virtual {p4, v1}, Lcom/alibaba/fastjson/serializer/ASMSerializerFactory$Context;->var(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p2, v5, v1}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitVarInsn(II)V

    .line 1297
    sget-object v1, Lcom/alibaba/fastjson/serializer/ASMSerializerFactory;->SerializeWriter:Ljava/lang/String;

    const-string/jumbo v3, "writeFieldValueStringWithDoubleQuoteCheck"

    const-string/jumbo v4, "(CLjava/lang/String;Ljava/lang/String;)V"

    invoke-interface {p2, v6, v1, v3, v4}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitMethodInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2
.end method

.method private _writeFieldName(Lcom/alibaba/fastjson/asm/MethodVisitor;Lcom/alibaba/fastjson/serializer/ASMSerializerFactory$Context;)V
    .locals 4

    .prologue
    const/16 v3, 0xb6

    const/16 v1, 0x19

    .line 2058
    invoke-static {p2}, Lcom/alibaba/fastjson/serializer/ASMSerializerFactory$Context;->access$000(Lcom/alibaba/fastjson/serializer/ASMSerializerFactory$Context;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string/jumbo v0, "out"

    .line 2063
    invoke-virtual {p2, v0}, Lcom/alibaba/fastjson/serializer/ASMSerializerFactory$Context;->var(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p1, v1, v0}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitVarInsn(II)V

    .line 2064
    sget v0, Lcom/alibaba/fastjson/serializer/ASMSerializerFactory$Context;->fieldName:I

    invoke-interface {p1, v1, v0}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitVarInsn(II)V

    const/4 v0, 0x3

    .line 2065
    invoke-interface {p1, v0}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitInsn(I)V

    .line 2066
    sget-object v0, Lcom/alibaba/fastjson/serializer/ASMSerializerFactory;->SerializeWriter:Ljava/lang/String;

    const-string/jumbo v1, "writeFieldName"

    const-string/jumbo v2, "(Ljava/lang/String;Z)V"

    invoke-interface {p1, v3, v0, v1, v2}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitMethodInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 2068
    :goto_0
    return-void

    :cond_0
    const-string/jumbo v0, "out"

    .line 2059
    invoke-virtual {p2, v0}, Lcom/alibaba/fastjson/serializer/ASMSerializerFactory$Context;->var(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p1, v1, v0}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitVarInsn(II)V

    .line 2060
    sget v0, Lcom/alibaba/fastjson/serializer/ASMSerializerFactory$Context;->fieldName:I

    invoke-interface {p1, v1, v0}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitVarInsn(II)V

    .line 2061
    sget-object v0, Lcom/alibaba/fastjson/serializer/ASMSerializerFactory;->SerializeWriter:Ljava/lang/String;

    const-string/jumbo v1, "writeFieldNameDirect"

    const-string/jumbo v2, "(Ljava/lang/String;)V"

    invoke-interface {p1, v3, v0, v1, v2}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitMethodInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private _writeObject(Lcom/alibaba/fastjson/asm/MethodVisitor;Lcom/alibaba/fastjson/util/FieldInfo;Lcom/alibaba/fastjson/serializer/ASMSerializerFactory$Context;Lcom/alibaba/fastjson/asm/Label;)V
    .locals 10

    .prologue
    .line 1584
    invoke-virtual {p2}, Lcom/alibaba/fastjson/util/FieldInfo;->getFormat()Ljava/lang/String;

    move-result-object v2

    .line 1585
    iget-object v0, p2, Lcom/alibaba/fastjson/util/FieldInfo;->fieldClass:Ljava/lang/Class;

    .line 1587
    new-instance v1, Lcom/alibaba/fastjson/asm/Label;

    invoke-direct {v1}, Lcom/alibaba/fastjson/asm/Label;-><init>()V

    .line 1590
    invoke-static {p3}, Lcom/alibaba/fastjson/serializer/ASMSerializerFactory$Context;->access$000(Lcom/alibaba/fastjson/serializer/ASMSerializerFactory$Context;)Z

    move-result v3

    if-nez v3, :cond_2

    const/16 v3, 0x19

    .line 1593
    sget v4, Lcom/alibaba/fastjson/serializer/ASMSerializerFactory$Context;->processValue:I

    invoke-interface {p1, v3, v4}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitVarInsn(II)V

    :goto_0
    const/16 v3, 0x59

    .line 1595
    invoke-interface {p1, v3}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitInsn(I)V

    const/16 v3, 0x3a

    const-string/jumbo v4, "object"

    .line 1596
    invoke-virtual {p3, v4}, Lcom/alibaba/fastjson/serializer/ASMSerializerFactory$Context;->var(Ljava/lang/String;)I

    move-result v4

    invoke-interface {p1, v3, v4}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitVarInsn(II)V

    const/16 v3, 0xc7

    .line 1597
    invoke-interface {p1, v3, v1}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitJumpInsn(ILcom/alibaba/fastjson/asm/Label;)V

    .line 1598
    invoke-direct {p0, p1, p2, p3}, Lcom/alibaba/fastjson/serializer/ASMSerializerFactory;->_if_write_null(Lcom/alibaba/fastjson/asm/MethodVisitor;Lcom/alibaba/fastjson/util/FieldInfo;Lcom/alibaba/fastjson/serializer/ASMSerializerFactory$Context;)V

    const/16 v3, 0xa7

    .line 1599
    invoke-interface {p1, v3, p4}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitJumpInsn(ILcom/alibaba/fastjson/asm/Label;)V

    .line 1601
    invoke-interface {p1, v1}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitLabel(Lcom/alibaba/fastjson/asm/Label;)V

    const/16 v1, 0x19

    const-string/jumbo v3, "out"

    .line 1603
    invoke-virtual {p3, v3}, Lcom/alibaba/fastjson/serializer/ASMSerializerFactory$Context;->var(Ljava/lang/String;)I

    move-result v3

    invoke-interface {p1, v1, v3}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitVarInsn(II)V

    const/16 v1, 0x15

    const-string/jumbo v3, "seperator"

    .line 1604
    invoke-virtual {p3, v3}, Lcom/alibaba/fastjson/serializer/ASMSerializerFactory$Context;->var(Ljava/lang/String;)I

    move-result v3

    invoke-interface {p1, v1, v3}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitVarInsn(II)V

    const/16 v1, 0xb6

    .line 1605
    sget-object v3, Lcom/alibaba/fastjson/serializer/ASMSerializerFactory;->SerializeWriter:Ljava/lang/String;

    const-string/jumbo v4, "write"

    const-string/jumbo v5, "(I)V"

    invoke-interface {p1, v1, v3, v4, v5}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitMethodInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1607
    invoke-direct {p0, p1, p3}, Lcom/alibaba/fastjson/serializer/ASMSerializerFactory;->_writeFieldName(Lcom/alibaba/fastjson/asm/MethodVisitor;Lcom/alibaba/fastjson/serializer/ASMSerializerFactory$Context;)V

    .line 1609
    new-instance v3, Lcom/alibaba/fastjson/asm/Label;

    invoke-direct {v3}, Lcom/alibaba/fastjson/asm/Label;-><init>()V

    new-instance v4, Lcom/alibaba/fastjson/asm/Label;

    invoke-direct {v4}, Lcom/alibaba/fastjson/asm/Label;-><init>()V

    .line 1610
    invoke-virtual {v0}, Ljava/lang/Class;->getModifiers()I

    move-result v1

    invoke-static {v1}, Ljava/lang/reflect/Modifier;->isPublic(I)Z

    move-result v1

    if-nez v1, :cond_3

    .line 1665
    :cond_0
    :goto_1
    invoke-interface {p1, v4}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitLabel(Lcom/alibaba/fastjson/asm/Label;)V

    const/16 v0, 0x19

    const/4 v1, 0x1

    .line 1667
    invoke-interface {p1, v0, v1}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitVarInsn(II)V

    .line 1668
    invoke-static {p3}, Lcom/alibaba/fastjson/serializer/ASMSerializerFactory$Context;->access$000(Lcom/alibaba/fastjson/serializer/ASMSerializerFactory$Context;)Z

    move-result v0

    if-nez v0, :cond_b

    const/16 v0, 0x19

    .line 1671
    sget v1, Lcom/alibaba/fastjson/serializer/ASMSerializerFactory$Context;->processValue:I

    invoke-interface {p1, v0, v1}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitVarInsn(II)V

    .line 1673
    :goto_2
    if-nez v2, :cond_c

    const/16 v0, 0x19

    .line 1678
    sget v1, Lcom/alibaba/fastjson/serializer/ASMSerializerFactory$Context;->fieldName:I

    invoke-interface {p1, v0, v1}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitVarInsn(II)V

    .line 1679
    iget-object v0, p2, Lcom/alibaba/fastjson/util/FieldInfo;->fieldType:Ljava/lang/reflect/Type;

    instance-of v0, v0, Ljava/lang/Class;

    if-nez v0, :cond_d

    .line 1684
    :cond_1
    iget-object v0, p2, Lcom/alibaba/fastjson/util/FieldInfo;->fieldClass:Ljava/lang/Class;

    const-class v1, Ljava/lang/String;

    if-eq v0, v1, :cond_e

    const/16 v0, 0x19

    const/4 v1, 0x0

    .line 1687
    invoke-interface {p1, v0, v1}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitVarInsn(II)V

    const/16 v0, 0xb4

    .line 1688
    invoke-static {p3}, Lcom/alibaba/fastjson/serializer/ASMSerializerFactory$Context;->access$300(Lcom/alibaba/fastjson/serializer/ASMSerializerFactory$Context;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p2, Lcom/alibaba/fastjson/util/FieldInfo;->name:Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v4, "_asm_fieldType"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v4, "Ljava/lang/reflect/Type;"

    invoke-interface {p1, v0, v1, v2, v4}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitFieldInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1691
    :goto_3
    iget v0, p2, Lcom/alibaba/fastjson/util/FieldInfo;->serialzeFeatures:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p1, v0}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitLdcInsn(Ljava/lang/Object;)V

    const/16 v0, 0xb6

    .line 1693
    sget-object v1, Lcom/alibaba/fastjson/serializer/ASMSerializerFactory;->JSONSerializer:Ljava/lang/String;

    const-string/jumbo v2, "writeWithFieldName"

    const-string/jumbo v4, "(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/reflect/Type;I)V"

    invoke-interface {p1, v0, v1, v2, v4}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitMethodInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1697
    :goto_4
    invoke-interface {p1, v3}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitLabel(Lcom/alibaba/fastjson/asm/Label;)V

    .line 1699
    invoke-direct {p0, p1, p3}, Lcom/alibaba/fastjson/serializer/ASMSerializerFactory;->_seperator(Lcom/alibaba/fastjson/asm/MethodVisitor;Lcom/alibaba/fastjson/serializer/ASMSerializerFactory$Context;)V

    .line 1700
    return-void

    :cond_2
    const/16 v3, 0x19

    const-string/jumbo v4, "object"

    .line 1591
    invoke-virtual {p3, v4}, Lcom/alibaba/fastjson/serializer/ASMSerializerFactory$Context;->var(Ljava/lang/String;)I

    move-result v4

    invoke-interface {p1, v3, v4}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitVarInsn(II)V

    goto/16 :goto_0

    .line 1611
    :cond_3
    invoke-static {v0}, Lcom/alibaba/fastjson/parser/ParserConfig;->isPrimitive2(Ljava/lang/Class;)Z

    move-result v1

    if-nez v1, :cond_0

    const/16 v1, 0x19

    const-string/jumbo v5, "object"

    .line 1613
    invoke-virtual {p3, v5}, Lcom/alibaba/fastjson/serializer/ASMSerializerFactory$Context;->var(Ljava/lang/String;)I

    move-result v5

    invoke-interface {p1, v1, v5}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitVarInsn(II)V

    const/16 v1, 0xb6

    const-string/jumbo v5, "java/lang/Object"

    const-string/jumbo v6, "getClass"

    const-string/jumbo v7, "()Ljava/lang/Class;"

    .line 1614
    invoke-interface {p1, v1, v5, v6, v7}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitMethodInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1615
    invoke-static {v0}, Lcom/alibaba/fastjson/util/ASMUtils;->desc(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/alibaba/fastjson/asm/Type;->getType(Ljava/lang/String;)Lcom/alibaba/fastjson/asm/Type;

    move-result-object v0

    invoke-interface {p1, v0}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitLdcInsn(Ljava/lang/Object;)V

    const/16 v0, 0xa6

    .line 1616
    invoke-interface {p1, v0, v4}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitJumpInsn(ILcom/alibaba/fastjson/asm/Label;)V

    .line 1618
    invoke-direct {p0, p3, p1, p2}, Lcom/alibaba/fastjson/serializer/ASMSerializerFactory;->_getFieldSer(Lcom/alibaba/fastjson/serializer/ASMSerializerFactory$Context;Lcom/alibaba/fastjson/asm/MethodVisitor;Lcom/alibaba/fastjson/util/FieldInfo;)V

    const/16 v0, 0x3a

    const-string/jumbo v1, "fied_ser"

    .line 1619
    invoke-virtual {p3, v1}, Lcom/alibaba/fastjson/serializer/ASMSerializerFactory$Context;->var(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p1, v0, v1}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitVarInsn(II)V

    .line 1621
    new-instance v5, Lcom/alibaba/fastjson/asm/Label;

    invoke-direct {v5}, Lcom/alibaba/fastjson/asm/Label;-><init>()V

    new-instance v6, Lcom/alibaba/fastjson/asm/Label;

    invoke-direct {v6}, Lcom/alibaba/fastjson/asm/Label;-><init>()V

    const/16 v0, 0x19

    const-string/jumbo v1, "fied_ser"

    .line 1622
    invoke-virtual {p3, v1}, Lcom/alibaba/fastjson/serializer/ASMSerializerFactory$Context;->var(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p1, v0, v1}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitVarInsn(II)V

    const/16 v0, 0xc1

    .line 1623
    sget-object v1, Lcom/alibaba/fastjson/serializer/ASMSerializerFactory;->JavaBeanSerializer:Ljava/lang/String;

    invoke-interface {p1, v0, v1}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitTypeInsn(ILjava/lang/String;)V

    const/16 v0, 0x99

    .line 1624
    invoke-interface {p1, v0, v5}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitJumpInsn(ILcom/alibaba/fastjson/asm/Label;)V

    .line 1626
    iget v0, p2, Lcom/alibaba/fastjson/util/FieldInfo;->serialzeFeatures:I

    sget-object v1, Lcom/alibaba/fastjson/serializer/SerializerFeature;->DisableCircularReferenceDetect:Lcom/alibaba/fastjson/serializer/SerializerFeature;

    iget v1, v1, Lcom/alibaba/fastjson/serializer/SerializerFeature;->mask:I

    and-int/2addr v0, v1

    if-nez v0, :cond_5

    const/4 v0, 0x0

    .line 1627
    :goto_5
    iget v1, p2, Lcom/alibaba/fastjson/util/FieldInfo;->serialzeFeatures:I

    sget-object v7, Lcom/alibaba/fastjson/serializer/SerializerFeature;->BeanToArray:Lcom/alibaba/fastjson/serializer/SerializerFeature;

    iget v7, v7, Lcom/alibaba/fastjson/serializer/SerializerFeature;->mask:I

    and-int/2addr v1, v7

    if-nez v1, :cond_6

    const/4 v1, 0x0

    .line 1629
    :goto_6
    if-eqz v0, :cond_7

    .line 1630
    :cond_4
    if-nez v1, :cond_9

    const-string/jumbo v0, "writeDirectNonContext"

    :goto_7
    const/16 v1, 0x19

    const-string/jumbo v7, "fied_ser"

    .line 1635
    invoke-virtual {p3, v7}, Lcom/alibaba/fastjson/serializer/ASMSerializerFactory$Context;->var(Ljava/lang/String;)I

    move-result v7

    invoke-interface {p1, v1, v7}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitVarInsn(II)V

    const/16 v1, 0xc0

    .line 1636
    sget-object v7, Lcom/alibaba/fastjson/serializer/ASMSerializerFactory;->JavaBeanSerializer:Ljava/lang/String;

    invoke-interface {p1, v1, v7}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitTypeInsn(ILjava/lang/String;)V

    const/16 v1, 0x19

    const/4 v7, 0x1

    .line 1637
    invoke-interface {p1, v1, v7}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitVarInsn(II)V

    const/16 v1, 0x19

    const-string/jumbo v7, "object"

    .line 1638
    invoke-virtual {p3, v7}, Lcom/alibaba/fastjson/serializer/ASMSerializerFactory$Context;->var(Ljava/lang/String;)I

    move-result v7

    invoke-interface {p1, v1, v7}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitVarInsn(II)V

    const/16 v1, 0x19

    .line 1639
    sget v7, Lcom/alibaba/fastjson/serializer/ASMSerializerFactory$Context;->fieldName:I

    invoke-interface {p1, v1, v7}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitVarInsn(II)V

    const/16 v1, 0x19

    const/4 v7, 0x0

    .line 1640
    invoke-interface {p1, v1, v7}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitVarInsn(II)V

    const/16 v1, 0xb4

    .line 1641
    invoke-static {p3}, Lcom/alibaba/fastjson/serializer/ASMSerializerFactory$Context;->access$300(Lcom/alibaba/fastjson/serializer/ASMSerializerFactory$Context;)Ljava/lang/String;

    move-result-object v7

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v9, p2, Lcom/alibaba/fastjson/util/FieldInfo;->name:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, "_asm_fieldType"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    const-string/jumbo v9, "Ljava/lang/reflect/Type;"

    invoke-interface {p1, v1, v7, v8, v9}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitFieldInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1643
    iget v1, p2, Lcom/alibaba/fastjson/util/FieldInfo;->serialzeFeatures:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {p1, v1}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitLdcInsn(Ljava/lang/Object;)V

    const/16 v1, 0xb6

    .line 1644
    sget-object v7, Lcom/alibaba/fastjson/serializer/ASMSerializerFactory;->JavaBeanSerializer:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "(L"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    sget-object v9, Lcom/alibaba/fastjson/serializer/ASMSerializerFactory;->JSONSerializer:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, ";Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/reflect/Type;I)V"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-interface {p1, v1, v7, v0, v8}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitMethodInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const/16 v0, 0xa7

    .line 1646
    invoke-interface {p1, v0, v6}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitJumpInsn(ILcom/alibaba/fastjson/asm/Label;)V

    .line 1648
    invoke-interface {p1, v5}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitLabel(Lcom/alibaba/fastjson/asm/Label;)V

    const/16 v0, 0x19

    const-string/jumbo v1, "fied_ser"

    .line 1650
    invoke-virtual {p3, v1}, Lcom/alibaba/fastjson/serializer/ASMSerializerFactory$Context;->var(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p1, v0, v1}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitVarInsn(II)V

    const/16 v0, 0x19

    const/4 v1, 0x1

    .line 1651
    invoke-interface {p1, v0, v1}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitVarInsn(II)V

    const/16 v0, 0x19

    const-string/jumbo v1, "object"

    .line 1652
    invoke-virtual {p3, v1}, Lcom/alibaba/fastjson/serializer/ASMSerializerFactory$Context;->var(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p1, v0, v1}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitVarInsn(II)V

    const/16 v0, 0x19

    .line 1653
    sget v1, Lcom/alibaba/fastjson/serializer/ASMSerializerFactory$Context;->fieldName:I

    invoke-interface {p1, v0, v1}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitVarInsn(II)V

    const/16 v0, 0x19

    const/4 v1, 0x0

    .line 1654
    invoke-interface {p1, v0, v1}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitVarInsn(II)V

    const/16 v0, 0xb4

    .line 1655
    invoke-static {p3}, Lcom/alibaba/fastjson/serializer/ASMSerializerFactory$Context;->access$300(Lcom/alibaba/fastjson/serializer/ASMSerializerFactory$Context;)Ljava/lang/String;

    move-result-object v1

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v7, p2, Lcom/alibaba/fastjson/util/FieldInfo;->name:Ljava/lang/String;

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v7, "_asm_fieldType"

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const-string/jumbo v7, "Ljava/lang/reflect/Type;"

    invoke-interface {p1, v0, v1, v5, v7}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitFieldInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1657
    iget v0, p2, Lcom/alibaba/fastjson/util/FieldInfo;->serialzeFeatures:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p1, v0}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitLdcInsn(Ljava/lang/Object;)V

    const/16 v0, 0xb9

    .line 1658
    sget-object v1, Lcom/alibaba/fastjson/serializer/ASMSerializerFactory;->ObjectSerializer:Ljava/lang/String;

    const-string/jumbo v5, "write"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "(L"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    sget-object v8, Lcom/alibaba/fastjson/serializer/ASMSerializerFactory;->JSONSerializer:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, ";Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/reflect/Type;I)V"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-interface {p1, v0, v1, v5, v7}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitMethodInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1661
    invoke-interface {p1, v6}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitLabel(Lcom/alibaba/fastjson/asm/Label;)V

    const/16 v0, 0xa7

    .line 1662
    invoke-interface {p1, v0, v3}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitJumpInsn(ILcom/alibaba/fastjson/asm/Label;)V

    goto/16 :goto_1

    :cond_5
    const/4 v0, 0x1

    .line 1626
    goto/16 :goto_5

    :cond_6
    const/4 v1, 0x1

    .line 1627
    goto/16 :goto_6

    .line 1629
    :cond_7
    invoke-static {p3}, Lcom/alibaba/fastjson/serializer/ASMSerializerFactory$Context;->access$200(Lcom/alibaba/fastjson/serializer/ASMSerializerFactory$Context;)Z

    move-result v0

    if-nez v0, :cond_8

    .line 1632
    :goto_8
    if-nez v1, :cond_a

    const-string/jumbo v0, "write"

    goto/16 :goto_7

    .line 1629
    :cond_8
    invoke-static {p3}, Lcom/alibaba/fastjson/serializer/ASMSerializerFactory$Context;->access$000(Lcom/alibaba/fastjson/serializer/ASMSerializerFactory$Context;)Z

    move-result v0

    if-nez v0, :cond_4

    goto :goto_8

    :cond_9
    const-string/jumbo v0, "writeAsArrayNonContext"

    goto/16 :goto_7

    :cond_a
    const-string/jumbo v0, "writeAsArray"

    goto/16 :goto_7

    :cond_b
    const/16 v0, 0x19

    const-string/jumbo v1, "object"

    .line 1669
    invoke-virtual {p3, v1}, Lcom/alibaba/fastjson/serializer/ASMSerializerFactory$Context;->var(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p1, v0, v1}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitVarInsn(II)V

    goto/16 :goto_2

    .line 1674
    :cond_c
    invoke-interface {p1, v2}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitLdcInsn(Ljava/lang/Object;)V

    const/16 v0, 0xb6

    .line 1675
    sget-object v1, Lcom/alibaba/fastjson/serializer/ASMSerializerFactory;->JSONSerializer:Ljava/lang/String;

    const-string/jumbo v2, "writeWithFormat"

    const-string/jumbo v4, "(Ljava/lang/Object;Ljava/lang/String;)V"

    invoke-interface {p1, v0, v1, v2, v4}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitMethodInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_4

    .line 1679
    :cond_d
    iget-object v0, p2, Lcom/alibaba/fastjson/util/FieldInfo;->fieldType:Ljava/lang/reflect/Type;

    check-cast v0, Ljava/lang/Class;

    .line 1680
    invoke-virtual {v0}, Ljava/lang/Class;->isPrimitive()Z

    move-result v0

    if-eqz v0, :cond_1

    const/16 v0, 0xb6

    .line 1681
    sget-object v1, Lcom/alibaba/fastjson/serializer/ASMSerializerFactory;->JSONSerializer:Ljava/lang/String;

    const-string/jumbo v2, "writeWithFieldName"

    const-string/jumbo v4, "(Ljava/lang/Object;Ljava/lang/Object;)V"

    invoke-interface {p1, v0, v1, v2, v4}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitMethodInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_4

    :cond_e
    const-class v0, Ljava/lang/String;

    .line 1685
    invoke-static {v0}, Lcom/alibaba/fastjson/util/ASMUtils;->desc(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/alibaba/fastjson/asm/Type;->getType(Ljava/lang/String;)Lcom/alibaba/fastjson/asm/Type;

    move-result-object v0

    invoke-interface {p1, v0}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitLdcInsn(Ljava/lang/Object;)V

    goto/16 :goto_3
.end method

.method private generateWriteAsArray(Ljava/lang/Class;Lcom/alibaba/fastjson/asm/MethodVisitor;[Lcom/alibaba/fastjson/util/FieldInfo;Lcom/alibaba/fastjson/serializer/ASMSerializerFactory$Context;)V
    .locals 24
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;",
            "Lcom/alibaba/fastjson/asm/MethodVisitor;",
            "[",
            "Lcom/alibaba/fastjson/util/FieldInfo;",
            "Lcom/alibaba/fastjson/serializer/ASMSerializerFactory$Context;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 422
    new-instance v5, Lcom/alibaba/fastjson/asm/Label;

    invoke-direct {v5}, Lcom/alibaba/fastjson/asm/Label;-><init>()V

    const/16 v6, 0x19

    const/4 v7, 0x1

    .line 423
    move-object/from16 v0, p2

    invoke-interface {v0, v6, v7}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitVarInsn(II)V

    const/16 v6, 0x19

    const/4 v7, 0x0

    .line 424
    move-object/from16 v0, p2

    invoke-interface {v0, v6, v7}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitVarInsn(II)V

    const/16 v6, 0xb6

    .line 425
    sget-object v7, Lcom/alibaba/fastjson/serializer/ASMSerializerFactory;->JSONSerializer:Ljava/lang/String;

    const-string/jumbo v8, "hasPropertyFilters"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "("

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    sget-object v10, Lcom/alibaba/fastjson/serializer/ASMSerializerFactory;->SerializeFilterable_desc:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string/jumbo v10, ")Z"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    move-object/from16 v0, p2

    invoke-interface {v0, v6, v7, v8, v9}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitMethodInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const/16 v6, 0x9a

    .line 426
    move-object/from16 v0, p2

    invoke-interface {v0, v6, v5}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitJumpInsn(ILcom/alibaba/fastjson/asm/Label;)V

    const/16 v6, 0x19

    const/4 v7, 0x0

    .line 427
    move-object/from16 v0, p2

    invoke-interface {v0, v6, v7}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitVarInsn(II)V

    const/16 v6, 0x19

    const/4 v7, 0x1

    .line 428
    move-object/from16 v0, p2

    invoke-interface {v0, v6, v7}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitVarInsn(II)V

    const/16 v6, 0x19

    const/4 v7, 0x2

    .line 429
    move-object/from16 v0, p2

    invoke-interface {v0, v6, v7}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitVarInsn(II)V

    const/16 v6, 0x19

    const/4 v7, 0x3

    .line 430
    move-object/from16 v0, p2

    invoke-interface {v0, v6, v7}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitVarInsn(II)V

    const/16 v6, 0x19

    const/4 v7, 0x4

    .line 431
    move-object/from16 v0, p2

    invoke-interface {v0, v6, v7}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitVarInsn(II)V

    const/16 v6, 0x15

    const/4 v7, 0x5

    .line 432
    move-object/from16 v0, p2

    invoke-interface {v0, v6, v7}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitVarInsn(II)V

    const/16 v6, 0xb7

    .line 433
    sget-object v7, Lcom/alibaba/fastjson/serializer/ASMSerializerFactory;->JavaBeanSerializer:Ljava/lang/String;

    const-string/jumbo v8, "writeNoneASM"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "(L"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    sget-object v10, Lcom/alibaba/fastjson/serializer/ASMSerializerFactory;->JSONSerializer:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string/jumbo v10, ";Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/reflect/Type;I)V"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    move-object/from16 v0, p2

    invoke-interface {v0, v6, v7, v8, v9}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitMethodInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const/16 v6, 0xb1

    .line 436
    move-object/from16 v0, p2

    invoke-interface {v0, v6}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitInsn(I)V

    .line 438
    move-object/from16 v0, p2

    invoke-interface {v0, v5}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitLabel(Lcom/alibaba/fastjson/asm/Label;)V

    const/16 v5, 0x19

    const-string/jumbo v6, "out"

    .line 439
    move-object/from16 v0, p4

    invoke-virtual {v0, v6}, Lcom/alibaba/fastjson/serializer/ASMSerializerFactory$Context;->var(Ljava/lang/String;)I

    move-result v6

    move-object/from16 v0, p2

    invoke-interface {v0, v5, v6}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitVarInsn(II)V

    const/16 v5, 0x10

    const/16 v6, 0x5b

    .line 440
    move-object/from16 v0, p2

    invoke-interface {v0, v5, v6}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitVarInsn(II)V

    const/16 v5, 0xb6

    .line 441
    sget-object v6, Lcom/alibaba/fastjson/serializer/ASMSerializerFactory;->SerializeWriter:Ljava/lang/String;

    const-string/jumbo v7, "write"

    const-string/jumbo v8, "(I)V"

    move-object/from16 v0, p2

    invoke-interface {v0, v5, v6, v7, v8}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitMethodInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 443
    move-object/from16 v0, p3

    array-length v9, v0

    .line 445
    if-eqz v9, :cond_0

    const/4 v5, 0x0

    move v8, v5

    .line 452
    :goto_0
    if-lt v8, v9, :cond_1

    .line 781
    return-void

    :cond_0
    const/16 v5, 0x19

    const-string/jumbo v6, "out"

    .line 446
    move-object/from16 v0, p4

    invoke-virtual {v0, v6}, Lcom/alibaba/fastjson/serializer/ASMSerializerFactory$Context;->var(Ljava/lang/String;)I

    move-result v6

    move-object/from16 v0, p2

    invoke-interface {v0, v5, v6}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitVarInsn(II)V

    const/16 v5, 0x10

    const/16 v6, 0x5d

    .line 447
    move-object/from16 v0, p2

    invoke-interface {v0, v5, v6}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitVarInsn(II)V

    const/16 v5, 0xb6

    .line 448
    sget-object v6, Lcom/alibaba/fastjson/serializer/ASMSerializerFactory;->SerializeWriter:Ljava/lang/String;

    const-string/jumbo v7, "write"

    const-string/jumbo v8, "(I)V"

    move-object/from16 v0, p2

    invoke-interface {v0, v5, v6, v7, v8}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitMethodInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 449
    return-void

    .line 453
    :cond_1
    add-int/lit8 v5, v9, -0x1

    if-eq v8, v5, :cond_3

    const/16 v5, 0x2c

    move v7, v5

    .line 455
    :goto_1
    aget-object v10, p3, v8

    .line 456
    iget-object v5, v10, Lcom/alibaba/fastjson/util/FieldInfo;->fieldClass:Ljava/lang/Class;

    .line 458
    iget-object v6, v10, Lcom/alibaba/fastjson/util/FieldInfo;->name:Ljava/lang/String;

    move-object/from16 v0, p2

    invoke-interface {v0, v6}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitLdcInsn(Ljava/lang/Object;)V

    const/16 v6, 0x3a

    .line 459
    sget v11, Lcom/alibaba/fastjson/serializer/ASMSerializerFactory$Context;->fieldName:I

    move-object/from16 v0, p2

    invoke-interface {v0, v6, v11}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitVarInsn(II)V

    .line 461
    sget-object v6, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    if-ne v5, v6, :cond_4

    :cond_2
    const/16 v5, 0x19

    const-string/jumbo v6, "out"

    .line 465
    move-object/from16 v0, p4

    invoke-virtual {v0, v6}, Lcom/alibaba/fastjson/serializer/ASMSerializerFactory$Context;->var(Ljava/lang/String;)I

    move-result v6

    move-object/from16 v0, p2

    invoke-interface {v0, v5, v6}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitVarInsn(II)V

    const/16 v5, 0x59

    .line 466
    move-object/from16 v0, p2

    invoke-interface {v0, v5}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitInsn(I)V

    .line 467
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move-object/from16 v2, p4

    invoke-direct {v0, v1, v2, v10}, Lcom/alibaba/fastjson/serializer/ASMSerializerFactory;->_get(Lcom/alibaba/fastjson/asm/MethodVisitor;Lcom/alibaba/fastjson/serializer/ASMSerializerFactory$Context;Lcom/alibaba/fastjson/util/FieldInfo;)V

    const/16 v5, 0xb6

    .line 468
    sget-object v6, Lcom/alibaba/fastjson/serializer/ASMSerializerFactory;->SerializeWriter:Ljava/lang/String;

    const-string/jumbo v10, "writeInt"

    const-string/jumbo v11, "(I)V"

    move-object/from16 v0, p2

    invoke-interface {v0, v5, v6, v10, v11}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitMethodInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const/16 v5, 0x10

    .line 469
    move-object/from16 v0, p2

    invoke-interface {v0, v5, v7}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitVarInsn(II)V

    const/16 v5, 0xb6

    .line 470
    sget-object v6, Lcom/alibaba/fastjson/serializer/ASMSerializerFactory;->SerializeWriter:Ljava/lang/String;

    const-string/jumbo v7, "write"

    const-string/jumbo v10, "(I)V"

    move-object/from16 v0, p2

    invoke-interface {v0, v5, v6, v7, v10}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitMethodInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 452
    :goto_2
    add-int/lit8 v5, v8, 0x1

    move v8, v5

    goto/16 :goto_0

    :cond_3
    const/16 v5, 0x5d

    move v7, v5

    .line 453
    goto :goto_1

    .line 461
    :cond_4
    sget-object v6, Ljava/lang/Short;->TYPE:Ljava/lang/Class;

    if-eq v5, v6, :cond_2

    sget-object v6, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    if-eq v5, v6, :cond_2

    .line 471
    sget-object v6, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    if-eq v5, v6, :cond_7

    .line 478
    sget-object v6, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    if-eq v5, v6, :cond_8

    .line 486
    sget-object v6, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    if-eq v5, v6, :cond_9

    .line 494
    sget-object v6, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    if-eq v5, v6, :cond_a

    .line 501
    sget-object v6, Ljava/lang/Character;->TYPE:Ljava/lang/Class;

    if-eq v5, v6, :cond_b

    const-class v6, Ljava/lang/String;

    .line 508
    if-eq v5, v6, :cond_c

    .line 513
    invoke-virtual {v5}, Ljava/lang/Class;->isEnum()Z

    move-result v6

    if-nez v6, :cond_d

    const-class v6, Ljava/util/List;

    .line 520
    invoke-virtual {v6, v5}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v6

    if-nez v6, :cond_e

    .line 695
    new-instance v6, Lcom/alibaba/fastjson/asm/Label;

    invoke-direct {v6}, Lcom/alibaba/fastjson/asm/Label;-><init>()V

    new-instance v11, Lcom/alibaba/fastjson/asm/Label;

    invoke-direct {v11}, Lcom/alibaba/fastjson/asm/Label;-><init>()V

    .line 697
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move-object/from16 v2, p4

    invoke-direct {v0, v1, v2, v10}, Lcom/alibaba/fastjson/serializer/ASMSerializerFactory;->_get(Lcom/alibaba/fastjson/asm/MethodVisitor;Lcom/alibaba/fastjson/serializer/ASMSerializerFactory$Context;Lcom/alibaba/fastjson/util/FieldInfo;)V

    const/16 v12, 0x59

    .line 698
    move-object/from16 v0, p2

    invoke-interface {v0, v12}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitInsn(I)V

    const/16 v12, 0x3a

    .line 699
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v14, "field_"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    iget-object v14, v10, Lcom/alibaba/fastjson/util/FieldInfo;->fieldClass:Ljava/lang/Class;

    invoke-virtual {v14}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    move-object/from16 v0, p4

    invoke-virtual {v0, v13}, Lcom/alibaba/fastjson/serializer/ASMSerializerFactory$Context;->var(Ljava/lang/String;)I

    move-result v13

    move-object/from16 v0, p2

    invoke-interface {v0, v12, v13}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitVarInsn(II)V

    const/16 v12, 0xc7

    .line 700
    move-object/from16 v0, p2

    invoke-interface {v0, v12, v11}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitJumpInsn(ILcom/alibaba/fastjson/asm/Label;)V

    const/16 v12, 0x19

    const-string/jumbo v13, "out"

    .line 702
    move-object/from16 v0, p4

    invoke-virtual {v0, v13}, Lcom/alibaba/fastjson/serializer/ASMSerializerFactory$Context;->var(Ljava/lang/String;)I

    move-result v13

    move-object/from16 v0, p2

    invoke-interface {v0, v12, v13}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitVarInsn(II)V

    const/16 v12, 0xb6

    .line 703
    sget-object v13, Lcom/alibaba/fastjson/serializer/ASMSerializerFactory;->SerializeWriter:Ljava/lang/String;

    const-string/jumbo v14, "writeNull"

    const-string/jumbo v15, "()V"

    move-object/from16 v0, p2

    invoke-interface {v0, v12, v13, v14, v15}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitMethodInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const/16 v12, 0xa7

    .line 704
    move-object/from16 v0, p2

    invoke-interface {v0, v12, v6}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitJumpInsn(ILcom/alibaba/fastjson/asm/Label;)V

    .line 706
    move-object/from16 v0, p2

    invoke-interface {v0, v11}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitLabel(Lcom/alibaba/fastjson/asm/Label;)V

    .line 708
    new-instance v11, Lcom/alibaba/fastjson/asm/Label;

    invoke-direct {v11}, Lcom/alibaba/fastjson/asm/Label;-><init>()V

    new-instance v12, Lcom/alibaba/fastjson/asm/Label;

    invoke-direct {v12}, Lcom/alibaba/fastjson/asm/Label;-><init>()V

    const/16 v13, 0x19

    .line 709
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v15, "field_"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    iget-object v15, v10, Lcom/alibaba/fastjson/util/FieldInfo;->fieldClass:Ljava/lang/Class;

    invoke-virtual {v15}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    move-object/from16 v0, p4

    invoke-virtual {v0, v14}, Lcom/alibaba/fastjson/serializer/ASMSerializerFactory$Context;->var(Ljava/lang/String;)I

    move-result v14

    move-object/from16 v0, p2

    invoke-interface {v0, v13, v14}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitVarInsn(II)V

    const/16 v13, 0xb6

    const-string/jumbo v14, "java/lang/Object"

    const-string/jumbo v15, "getClass"

    const-string/jumbo v16, "()Ljava/lang/Class;"

    .line 710
    move-object/from16 v0, p2

    move-object/from16 v1, v16

    invoke-interface {v0, v13, v14, v15, v1}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitMethodInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 711
    invoke-static {v5}, Lcom/alibaba/fastjson/util/ASMUtils;->desc(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v13

    invoke-static {v13}, Lcom/alibaba/fastjson/asm/Type;->getType(Ljava/lang/String;)Lcom/alibaba/fastjson/asm/Type;

    move-result-object v13

    move-object/from16 v0, p2

    invoke-interface {v0, v13}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitLdcInsn(Ljava/lang/Object;)V

    const/16 v13, 0xa6

    .line 712
    move-object/from16 v0, p2

    invoke-interface {v0, v13, v12}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitJumpInsn(ILcom/alibaba/fastjson/asm/Label;)V

    .line 714
    move-object/from16 v0, p0

    move-object/from16 v1, p4

    move-object/from16 v2, p2

    invoke-direct {v0, v1, v2, v10}, Lcom/alibaba/fastjson/serializer/ASMSerializerFactory;->_getFieldSer(Lcom/alibaba/fastjson/serializer/ASMSerializerFactory$Context;Lcom/alibaba/fastjson/asm/MethodVisitor;Lcom/alibaba/fastjson/util/FieldInfo;)V

    const/16 v13, 0x3a

    const-string/jumbo v14, "fied_ser"

    .line 715
    move-object/from16 v0, p4

    invoke-virtual {v0, v14}, Lcom/alibaba/fastjson/serializer/ASMSerializerFactory$Context;->var(Ljava/lang/String;)I

    move-result v14

    move-object/from16 v0, p2

    invoke-interface {v0, v13, v14}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitVarInsn(II)V

    .line 717
    new-instance v13, Lcom/alibaba/fastjson/asm/Label;

    invoke-direct {v13}, Lcom/alibaba/fastjson/asm/Label;-><init>()V

    new-instance v14, Lcom/alibaba/fastjson/asm/Label;

    invoke-direct {v14}, Lcom/alibaba/fastjson/asm/Label;-><init>()V

    .line 718
    invoke-static/range {p4 .. p4}, Lcom/alibaba/fastjson/serializer/ASMSerializerFactory$Context;->access$000(Lcom/alibaba/fastjson/serializer/ASMSerializerFactory$Context;)Z

    move-result v15

    if-nez v15, :cond_1c

    :cond_5
    :goto_3
    const/16 v13, 0x19

    const-string/jumbo v15, "fied_ser"

    .line 736
    move-object/from16 v0, p4

    invoke-virtual {v0, v15}, Lcom/alibaba/fastjson/serializer/ASMSerializerFactory$Context;->var(Ljava/lang/String;)I

    move-result v15

    move-object/from16 v0, p2

    invoke-interface {v0, v13, v15}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitVarInsn(II)V

    const/16 v13, 0x19

    const/4 v15, 0x1

    .line 737
    move-object/from16 v0, p2

    invoke-interface {v0, v13, v15}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitVarInsn(II)V

    const/16 v13, 0x19

    .line 738
    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v16, "field_"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    iget-object v0, v10, Lcom/alibaba/fastjson/util/FieldInfo;->fieldClass:Ljava/lang/Class;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    move-object/from16 v0, p4

    invoke-virtual {v0, v15}, Lcom/alibaba/fastjson/serializer/ASMSerializerFactory$Context;->var(Ljava/lang/String;)I

    move-result v15

    move-object/from16 v0, p2

    invoke-interface {v0, v13, v15}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitVarInsn(II)V

    const/16 v13, 0x19

    .line 739
    sget v15, Lcom/alibaba/fastjson/serializer/ASMSerializerFactory$Context;->fieldName:I

    move-object/from16 v0, p2

    invoke-interface {v0, v13, v15}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitVarInsn(II)V

    .line 740
    invoke-static {v5}, Lcom/alibaba/fastjson/util/ASMUtils;->desc(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/alibaba/fastjson/asm/Type;->getType(Ljava/lang/String;)Lcom/alibaba/fastjson/asm/Type;

    move-result-object v5

    move-object/from16 v0, p2

    invoke-interface {v0, v5}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitLdcInsn(Ljava/lang/Object;)V

    .line 741
    iget v5, v10, Lcom/alibaba/fastjson/util/FieldInfo;->serialzeFeatures:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    move-object/from16 v0, p2

    invoke-interface {v0, v5}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitLdcInsn(Ljava/lang/Object;)V

    const/16 v5, 0xb9

    .line 742
    sget-object v13, Lcom/alibaba/fastjson/serializer/ASMSerializerFactory;->ObjectSerializer:Ljava/lang/String;

    const-string/jumbo v15, "write"

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v17, "(L"

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    sget-object v17, Lcom/alibaba/fastjson/serializer/ASMSerializerFactory;->JSONSerializer:Ljava/lang/String;

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string/jumbo v17, ";Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/reflect/Type;I)V"

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, p2

    move-object/from16 v1, v16

    invoke-interface {v0, v5, v13, v15, v1}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitMethodInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 744
    move-object/from16 v0, p2

    invoke-interface {v0, v14}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitLabel(Lcom/alibaba/fastjson/asm/Label;)V

    const/16 v5, 0xa7

    .line 745
    move-object/from16 v0, p2

    invoke-interface {v0, v5, v11}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitJumpInsn(ILcom/alibaba/fastjson/asm/Label;)V

    .line 747
    move-object/from16 v0, p2

    invoke-interface {v0, v12}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitLabel(Lcom/alibaba/fastjson/asm/Label;)V

    .line 748
    invoke-virtual {v10}, Lcom/alibaba/fastjson/util/FieldInfo;->getFormat()Ljava/lang/String;

    move-result-object v5

    const/16 v12, 0x19

    const/4 v13, 0x1

    .line 750
    move-object/from16 v0, p2

    invoke-interface {v0, v12, v13}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitVarInsn(II)V

    const/16 v12, 0x19

    .line 751
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v14, "field_"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    iget-object v14, v10, Lcom/alibaba/fastjson/util/FieldInfo;->fieldClass:Ljava/lang/Class;

    invoke-virtual {v14}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    move-object/from16 v0, p4

    invoke-virtual {v0, v13}, Lcom/alibaba/fastjson/serializer/ASMSerializerFactory$Context;->var(Ljava/lang/String;)I

    move-result v13

    move-object/from16 v0, p2

    invoke-interface {v0, v12, v13}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitVarInsn(II)V

    .line 752
    if-nez v5, :cond_1d

    const/16 v5, 0x19

    .line 757
    sget v12, Lcom/alibaba/fastjson/serializer/ASMSerializerFactory$Context;->fieldName:I

    move-object/from16 v0, p2

    invoke-interface {v0, v5, v12}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitVarInsn(II)V

    .line 758
    iget-object v5, v10, Lcom/alibaba/fastjson/util/FieldInfo;->fieldType:Ljava/lang/reflect/Type;

    instance-of v5, v5, Ljava/lang/Class;

    if-nez v5, :cond_1e

    :cond_6
    const/16 v5, 0x19

    const/4 v12, 0x0

    .line 763
    move-object/from16 v0, p2

    invoke-interface {v0, v5, v12}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitVarInsn(II)V

    const/16 v5, 0xb4

    .line 764
    invoke-static/range {p4 .. p4}, Lcom/alibaba/fastjson/serializer/ASMSerializerFactory$Context;->access$300(Lcom/alibaba/fastjson/serializer/ASMSerializerFactory$Context;)Ljava/lang/String;

    move-result-object v12

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v14, v10, Lcom/alibaba/fastjson/util/FieldInfo;->name:Ljava/lang/String;

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string/jumbo v14, "_asm_fieldType"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    const-string/jumbo v14, "Ljava/lang/reflect/Type;"

    move-object/from16 v0, p2

    invoke-interface {v0, v5, v12, v13, v14}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitFieldInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 766
    iget v5, v10, Lcom/alibaba/fastjson/util/FieldInfo;->serialzeFeatures:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    move-object/from16 v0, p2

    invoke-interface {v0, v5}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitLdcInsn(Ljava/lang/Object;)V

    const/16 v5, 0xb6

    .line 768
    sget-object v10, Lcom/alibaba/fastjson/serializer/ASMSerializerFactory;->JSONSerializer:Ljava/lang/String;

    const-string/jumbo v12, "writeWithFieldName"

    const-string/jumbo v13, "(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/reflect/Type;I)V"

    move-object/from16 v0, p2

    invoke-interface {v0, v5, v10, v12, v13}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitMethodInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 772
    :goto_4
    move-object/from16 v0, p2

    invoke-interface {v0, v11}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitLabel(Lcom/alibaba/fastjson/asm/Label;)V

    .line 773
    move-object/from16 v0, p2

    invoke-interface {v0, v6}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitLabel(Lcom/alibaba/fastjson/asm/Label;)V

    const/16 v5, 0x19

    const-string/jumbo v6, "out"

    .line 776
    move-object/from16 v0, p4

    invoke-virtual {v0, v6}, Lcom/alibaba/fastjson/serializer/ASMSerializerFactory$Context;->var(Ljava/lang/String;)I

    move-result v6

    move-object/from16 v0, p2

    invoke-interface {v0, v5, v6}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitVarInsn(II)V

    const/16 v5, 0x10

    .line 777
    move-object/from16 v0, p2

    invoke-interface {v0, v5, v7}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitVarInsn(II)V

    const/16 v5, 0xb6

    .line 778
    sget-object v6, Lcom/alibaba/fastjson/serializer/ASMSerializerFactory;->SerializeWriter:Ljava/lang/String;

    const-string/jumbo v7, "write"

    const-string/jumbo v10, "(I)V"

    move-object/from16 v0, p2

    invoke-interface {v0, v5, v6, v7, v10}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitMethodInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_2

    :cond_7
    const/16 v5, 0x19

    const-string/jumbo v6, "out"

    .line 472
    move-object/from16 v0, p4

    invoke-virtual {v0, v6}, Lcom/alibaba/fastjson/serializer/ASMSerializerFactory$Context;->var(Ljava/lang/String;)I

    move-result v6

    move-object/from16 v0, p2

    invoke-interface {v0, v5, v6}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitVarInsn(II)V

    const/16 v5, 0x59

    .line 473
    move-object/from16 v0, p2

    invoke-interface {v0, v5}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitInsn(I)V

    .line 474
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move-object/from16 v2, p4

    invoke-direct {v0, v1, v2, v10}, Lcom/alibaba/fastjson/serializer/ASMSerializerFactory;->_get(Lcom/alibaba/fastjson/asm/MethodVisitor;Lcom/alibaba/fastjson/serializer/ASMSerializerFactory$Context;Lcom/alibaba/fastjson/util/FieldInfo;)V

    const/16 v5, 0xb6

    .line 475
    sget-object v6, Lcom/alibaba/fastjson/serializer/ASMSerializerFactory;->SerializeWriter:Ljava/lang/String;

    const-string/jumbo v10, "writeLong"

    const-string/jumbo v11, "(J)V"

    move-object/from16 v0, p2

    invoke-interface {v0, v5, v6, v10, v11}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitMethodInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const/16 v5, 0x10

    .line 476
    move-object/from16 v0, p2

    invoke-interface {v0, v5, v7}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitVarInsn(II)V

    const/16 v5, 0xb6

    .line 477
    sget-object v6, Lcom/alibaba/fastjson/serializer/ASMSerializerFactory;->SerializeWriter:Ljava/lang/String;

    const-string/jumbo v7, "write"

    const-string/jumbo v10, "(I)V"

    move-object/from16 v0, p2

    invoke-interface {v0, v5, v6, v7, v10}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitMethodInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_2

    :cond_8
    const/16 v5, 0x19

    const-string/jumbo v6, "out"

    .line 479
    move-object/from16 v0, p4

    invoke-virtual {v0, v6}, Lcom/alibaba/fastjson/serializer/ASMSerializerFactory$Context;->var(Ljava/lang/String;)I

    move-result v6

    move-object/from16 v0, p2

    invoke-interface {v0, v5, v6}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitVarInsn(II)V

    const/16 v5, 0x59

    .line 480
    move-object/from16 v0, p2

    invoke-interface {v0, v5}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitInsn(I)V

    .line 481
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move-object/from16 v2, p4

    invoke-direct {v0, v1, v2, v10}, Lcom/alibaba/fastjson/serializer/ASMSerializerFactory;->_get(Lcom/alibaba/fastjson/asm/MethodVisitor;Lcom/alibaba/fastjson/serializer/ASMSerializerFactory$Context;Lcom/alibaba/fastjson/util/FieldInfo;)V

    const/4 v5, 0x4

    .line 482
    move-object/from16 v0, p2

    invoke-interface {v0, v5}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitInsn(I)V

    const/16 v5, 0xb6

    .line 483
    sget-object v6, Lcom/alibaba/fastjson/serializer/ASMSerializerFactory;->SerializeWriter:Ljava/lang/String;

    const-string/jumbo v10, "writeFloat"

    const-string/jumbo v11, "(FZ)V"

    move-object/from16 v0, p2

    invoke-interface {v0, v5, v6, v10, v11}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitMethodInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const/16 v5, 0x10

    .line 484
    move-object/from16 v0, p2

    invoke-interface {v0, v5, v7}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitVarInsn(II)V

    const/16 v5, 0xb6

    .line 485
    sget-object v6, Lcom/alibaba/fastjson/serializer/ASMSerializerFactory;->SerializeWriter:Ljava/lang/String;

    const-string/jumbo v7, "write"

    const-string/jumbo v10, "(I)V"

    move-object/from16 v0, p2

    invoke-interface {v0, v5, v6, v7, v10}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitMethodInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_2

    :cond_9
    const/16 v5, 0x19

    const-string/jumbo v6, "out"

    .line 487
    move-object/from16 v0, p4

    invoke-virtual {v0, v6}, Lcom/alibaba/fastjson/serializer/ASMSerializerFactory$Context;->var(Ljava/lang/String;)I

    move-result v6

    move-object/from16 v0, p2

    invoke-interface {v0, v5, v6}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitVarInsn(II)V

    const/16 v5, 0x59

    .line 488
    move-object/from16 v0, p2

    invoke-interface {v0, v5}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitInsn(I)V

    .line 489
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move-object/from16 v2, p4

    invoke-direct {v0, v1, v2, v10}, Lcom/alibaba/fastjson/serializer/ASMSerializerFactory;->_get(Lcom/alibaba/fastjson/asm/MethodVisitor;Lcom/alibaba/fastjson/serializer/ASMSerializerFactory$Context;Lcom/alibaba/fastjson/util/FieldInfo;)V

    const/4 v5, 0x4

    .line 490
    move-object/from16 v0, p2

    invoke-interface {v0, v5}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitInsn(I)V

    const/16 v5, 0xb6

    .line 491
    sget-object v6, Lcom/alibaba/fastjson/serializer/ASMSerializerFactory;->SerializeWriter:Ljava/lang/String;

    const-string/jumbo v10, "writeDouble"

    const-string/jumbo v11, "(DZ)V"

    move-object/from16 v0, p2

    invoke-interface {v0, v5, v6, v10, v11}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitMethodInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const/16 v5, 0x10

    .line 492
    move-object/from16 v0, p2

    invoke-interface {v0, v5, v7}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitVarInsn(II)V

    const/16 v5, 0xb6

    .line 493
    sget-object v6, Lcom/alibaba/fastjson/serializer/ASMSerializerFactory;->SerializeWriter:Ljava/lang/String;

    const-string/jumbo v7, "write"

    const-string/jumbo v10, "(I)V"

    move-object/from16 v0, p2

    invoke-interface {v0, v5, v6, v7, v10}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitMethodInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_2

    :cond_a
    const/16 v5, 0x19

    const-string/jumbo v6, "out"

    .line 495
    move-object/from16 v0, p4

    invoke-virtual {v0, v6}, Lcom/alibaba/fastjson/serializer/ASMSerializerFactory$Context;->var(Ljava/lang/String;)I

    move-result v6

    move-object/from16 v0, p2

    invoke-interface {v0, v5, v6}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitVarInsn(II)V

    const/16 v5, 0x59

    .line 496
    move-object/from16 v0, p2

    invoke-interface {v0, v5}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitInsn(I)V

    .line 497
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move-object/from16 v2, p4

    invoke-direct {v0, v1, v2, v10}, Lcom/alibaba/fastjson/serializer/ASMSerializerFactory;->_get(Lcom/alibaba/fastjson/asm/MethodVisitor;Lcom/alibaba/fastjson/serializer/ASMSerializerFactory$Context;Lcom/alibaba/fastjson/util/FieldInfo;)V

    const/16 v5, 0xb6

    .line 498
    sget-object v6, Lcom/alibaba/fastjson/serializer/ASMSerializerFactory;->SerializeWriter:Ljava/lang/String;

    const-string/jumbo v10, "write"

    const-string/jumbo v11, "(Z)V"

    move-object/from16 v0, p2

    invoke-interface {v0, v5, v6, v10, v11}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitMethodInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const/16 v5, 0x10

    .line 499
    move-object/from16 v0, p2

    invoke-interface {v0, v5, v7}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitVarInsn(II)V

    const/16 v5, 0xb6

    .line 500
    sget-object v6, Lcom/alibaba/fastjson/serializer/ASMSerializerFactory;->SerializeWriter:Ljava/lang/String;

    const-string/jumbo v7, "write"

    const-string/jumbo v10, "(I)V"

    move-object/from16 v0, p2

    invoke-interface {v0, v5, v6, v7, v10}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitMethodInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_2

    :cond_b
    const/16 v5, 0x19

    const-string/jumbo v6, "out"

    .line 502
    move-object/from16 v0, p4

    invoke-virtual {v0, v6}, Lcom/alibaba/fastjson/serializer/ASMSerializerFactory$Context;->var(Ljava/lang/String;)I

    move-result v6

    move-object/from16 v0, p2

    invoke-interface {v0, v5, v6}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitVarInsn(II)V

    .line 503
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move-object/from16 v2, p4

    invoke-direct {v0, v1, v2, v10}, Lcom/alibaba/fastjson/serializer/ASMSerializerFactory;->_get(Lcom/alibaba/fastjson/asm/MethodVisitor;Lcom/alibaba/fastjson/serializer/ASMSerializerFactory$Context;Lcom/alibaba/fastjson/util/FieldInfo;)V

    const/16 v5, 0xb8

    const-string/jumbo v6, "java/lang/Character"

    const-string/jumbo v10, "toString"

    const-string/jumbo v11, "(C)Ljava/lang/String;"

    .line 504
    move-object/from16 v0, p2

    invoke-interface {v0, v5, v6, v10, v11}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitMethodInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const/16 v5, 0x10

    .line 505
    move-object/from16 v0, p2

    invoke-interface {v0, v5, v7}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitVarInsn(II)V

    const/16 v5, 0xb6

    .line 506
    sget-object v6, Lcom/alibaba/fastjson/serializer/ASMSerializerFactory;->SerializeWriter:Ljava/lang/String;

    const-string/jumbo v7, "writeString"

    const-string/jumbo v10, "(Ljava/lang/String;C)V"

    move-object/from16 v0, p2

    invoke-interface {v0, v5, v6, v7, v10}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitMethodInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_2

    :cond_c
    const/16 v5, 0x19

    const-string/jumbo v6, "out"

    .line 509
    move-object/from16 v0, p4

    invoke-virtual {v0, v6}, Lcom/alibaba/fastjson/serializer/ASMSerializerFactory$Context;->var(Ljava/lang/String;)I

    move-result v6

    move-object/from16 v0, p2

    invoke-interface {v0, v5, v6}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitVarInsn(II)V

    .line 510
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move-object/from16 v2, p4

    invoke-direct {v0, v1, v2, v10}, Lcom/alibaba/fastjson/serializer/ASMSerializerFactory;->_get(Lcom/alibaba/fastjson/asm/MethodVisitor;Lcom/alibaba/fastjson/serializer/ASMSerializerFactory$Context;Lcom/alibaba/fastjson/util/FieldInfo;)V

    const/16 v5, 0x10

    .line 511
    move-object/from16 v0, p2

    invoke-interface {v0, v5, v7}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitVarInsn(II)V

    const/16 v5, 0xb6

    .line 512
    sget-object v6, Lcom/alibaba/fastjson/serializer/ASMSerializerFactory;->SerializeWriter:Ljava/lang/String;

    const-string/jumbo v7, "writeString"

    const-string/jumbo v10, "(Ljava/lang/String;C)V"

    move-object/from16 v0, p2

    invoke-interface {v0, v5, v6, v7, v10}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitMethodInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_2

    :cond_d
    const/16 v5, 0x19

    const-string/jumbo v6, "out"

    .line 514
    move-object/from16 v0, p4

    invoke-virtual {v0, v6}, Lcom/alibaba/fastjson/serializer/ASMSerializerFactory$Context;->var(Ljava/lang/String;)I

    move-result v6

    move-object/from16 v0, p2

    invoke-interface {v0, v5, v6}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitVarInsn(II)V

    const/16 v5, 0x59

    .line 515
    move-object/from16 v0, p2

    invoke-interface {v0, v5}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitInsn(I)V

    .line 516
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move-object/from16 v2, p4

    invoke-direct {v0, v1, v2, v10}, Lcom/alibaba/fastjson/serializer/ASMSerializerFactory;->_get(Lcom/alibaba/fastjson/asm/MethodVisitor;Lcom/alibaba/fastjson/serializer/ASMSerializerFactory$Context;Lcom/alibaba/fastjson/util/FieldInfo;)V

    const/16 v5, 0xb6

    .line 517
    sget-object v6, Lcom/alibaba/fastjson/serializer/ASMSerializerFactory;->SerializeWriter:Ljava/lang/String;

    const-string/jumbo v10, "writeEnum"

    const-string/jumbo v11, "(Ljava/lang/Enum;)V"

    move-object/from16 v0, p2

    invoke-interface {v0, v5, v6, v10, v11}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitMethodInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const/16 v5, 0x10

    .line 518
    move-object/from16 v0, p2

    invoke-interface {v0, v5, v7}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitVarInsn(II)V

    const/16 v5, 0xb6

    .line 519
    sget-object v6, Lcom/alibaba/fastjson/serializer/ASMSerializerFactory;->SerializeWriter:Ljava/lang/String;

    const-string/jumbo v7, "write"

    const-string/jumbo v10, "(I)V"

    move-object/from16 v0, p2

    invoke-interface {v0, v5, v6, v7, v10}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitMethodInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_2

    .line 521
    :cond_e
    iget-object v5, v10, Lcom/alibaba/fastjson/util/FieldInfo;->fieldType:Ljava/lang/reflect/Type;

    .line 524
    instance-of v6, v5, Ljava/lang/Class;

    if-nez v6, :cond_13

    .line 527
    check-cast v5, Ljava/lang/reflect/ParameterizedType;

    invoke-interface {v5}, Ljava/lang/reflect/ParameterizedType;->getActualTypeArguments()[Ljava/lang/reflect/Type;

    move-result-object v5

    const/4 v6, 0x0

    aget-object v6, v5, v6

    :goto_5
    const/4 v5, 0x0

    .line 531
    instance-of v11, v6, Ljava/lang/Class;

    if-nez v11, :cond_14

    .line 539
    :cond_f
    :goto_6
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move-object/from16 v2, p4

    invoke-direct {v0, v1, v2, v10}, Lcom/alibaba/fastjson/serializer/ASMSerializerFactory;->_get(Lcom/alibaba/fastjson/asm/MethodVisitor;Lcom/alibaba/fastjson/serializer/ASMSerializerFactory$Context;Lcom/alibaba/fastjson/util/FieldInfo;)V

    const/16 v11, 0xc0

    const-string/jumbo v12, "java/util/List"

    .line 540
    move-object/from16 v0, p2

    invoke-interface {v0, v11, v12}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitTypeInsn(ILjava/lang/String;)V

    const/16 v11, 0x3a

    const-string/jumbo v12, "list"

    .line 541
    move-object/from16 v0, p4

    invoke-virtual {v0, v12}, Lcom/alibaba/fastjson/serializer/ASMSerializerFactory$Context;->var(Ljava/lang/String;)I

    move-result v12

    move-object/from16 v0, p2

    invoke-interface {v0, v11, v12}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitVarInsn(II)V

    const-class v11, Ljava/lang/String;

    .line 543
    if-eq v5, v11, :cond_15

    .line 549
    :cond_10
    new-instance v11, Lcom/alibaba/fastjson/asm/Label;

    invoke-direct {v11}, Lcom/alibaba/fastjson/asm/Label;-><init>()V

    new-instance v12, Lcom/alibaba/fastjson/asm/Label;

    invoke-direct {v12}, Lcom/alibaba/fastjson/asm/Label;-><init>()V

    const/16 v13, 0x19

    const-string/jumbo v14, "list"

    .line 551
    move-object/from16 v0, p4

    invoke-virtual {v0, v14}, Lcom/alibaba/fastjson/serializer/ASMSerializerFactory$Context;->var(Ljava/lang/String;)I

    move-result v14

    move-object/from16 v0, p2

    invoke-interface {v0, v13, v14}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitVarInsn(II)V

    const/16 v13, 0xc7

    .line 552
    move-object/from16 v0, p2

    invoke-interface {v0, v13, v12}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitJumpInsn(ILcom/alibaba/fastjson/asm/Label;)V

    const/16 v13, 0x19

    const-string/jumbo v14, "out"

    .line 554
    move-object/from16 v0, p4

    invoke-virtual {v0, v14}, Lcom/alibaba/fastjson/serializer/ASMSerializerFactory$Context;->var(Ljava/lang/String;)I

    move-result v14

    move-object/from16 v0, p2

    invoke-interface {v0, v13, v14}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitVarInsn(II)V

    const/16 v13, 0xb6

    .line 555
    sget-object v14, Lcom/alibaba/fastjson/serializer/ASMSerializerFactory;->SerializeWriter:Ljava/lang/String;

    const-string/jumbo v15, "writeNull"

    const-string/jumbo v16, "()V"

    move-object/from16 v0, p2

    move-object/from16 v1, v16

    invoke-interface {v0, v13, v14, v15, v1}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitMethodInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const/16 v13, 0xa7

    .line 556
    move-object/from16 v0, p2

    invoke-interface {v0, v13, v11}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitJumpInsn(ILcom/alibaba/fastjson/asm/Label;)V

    .line 558
    move-object/from16 v0, p2

    invoke-interface {v0, v12}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitLabel(Lcom/alibaba/fastjson/asm/Label;)V

    const/16 v12, 0x19

    const-string/jumbo v13, "list"

    .line 560
    move-object/from16 v0, p4

    invoke-virtual {v0, v13}, Lcom/alibaba/fastjson/serializer/ASMSerializerFactory$Context;->var(Ljava/lang/String;)I

    move-result v13

    move-object/from16 v0, p2

    invoke-interface {v0, v12, v13}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitVarInsn(II)V

    const/16 v12, 0xb9

    const-string/jumbo v13, "java/util/List"

    const-string/jumbo v14, "size"

    const-string/jumbo v15, "()I"

    .line 561
    move-object/from16 v0, p2

    invoke-interface {v0, v12, v13, v14, v15}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitMethodInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const/16 v12, 0x36

    const-string/jumbo v13, "size"

    .line 562
    move-object/from16 v0, p4

    invoke-virtual {v0, v13}, Lcom/alibaba/fastjson/serializer/ASMSerializerFactory$Context;->var(Ljava/lang/String;)I

    move-result v13

    move-object/from16 v0, p2

    invoke-interface {v0, v12, v13}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitVarInsn(II)V

    const/16 v12, 0x19

    const-string/jumbo v13, "out"

    .line 564
    move-object/from16 v0, p4

    invoke-virtual {v0, v13}, Lcom/alibaba/fastjson/serializer/ASMSerializerFactory$Context;->var(Ljava/lang/String;)I

    move-result v13

    move-object/from16 v0, p2

    invoke-interface {v0, v12, v13}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitVarInsn(II)V

    const/16 v12, 0x10

    const/16 v13, 0x5b

    .line 565
    move-object/from16 v0, p2

    invoke-interface {v0, v12, v13}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitVarInsn(II)V

    const/16 v12, 0xb6

    .line 566
    sget-object v13, Lcom/alibaba/fastjson/serializer/ASMSerializerFactory;->SerializeWriter:Ljava/lang/String;

    const-string/jumbo v14, "write"

    const-string/jumbo v15, "(I)V"

    move-object/from16 v0, p2

    invoke-interface {v0, v12, v13, v14, v15}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitMethodInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 568
    new-instance v12, Lcom/alibaba/fastjson/asm/Label;

    invoke-direct {v12}, Lcom/alibaba/fastjson/asm/Label;-><init>()V

    new-instance v13, Lcom/alibaba/fastjson/asm/Label;

    invoke-direct {v13}, Lcom/alibaba/fastjson/asm/Label;-><init>()V

    new-instance v14, Lcom/alibaba/fastjson/asm/Label;

    invoke-direct {v14}, Lcom/alibaba/fastjson/asm/Label;-><init>()V

    const/4 v15, 0x3

    .line 570
    move-object/from16 v0, p2

    invoke-interface {v0, v15}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitInsn(I)V

    const/16 v15, 0x36

    const-string/jumbo v16, "i"

    .line 571
    move-object/from16 v0, p4

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson/serializer/ASMSerializerFactory$Context;->var(Ljava/lang/String;)I

    move-result v16

    move-object/from16 v0, p2

    move/from16 v1, v16

    invoke-interface {v0, v15, v1}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitVarInsn(II)V

    .line 574
    move-object/from16 v0, p2

    invoke-interface {v0, v12}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitLabel(Lcom/alibaba/fastjson/asm/Label;)V

    const/16 v15, 0x15

    const-string/jumbo v16, "i"

    .line 575
    move-object/from16 v0, p4

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson/serializer/ASMSerializerFactory$Context;->var(Ljava/lang/String;)I

    move-result v16

    move-object/from16 v0, p2

    move/from16 v1, v16

    invoke-interface {v0, v15, v1}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitVarInsn(II)V

    const/16 v15, 0x15

    const-string/jumbo v16, "size"

    .line 576
    move-object/from16 v0, p4

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson/serializer/ASMSerializerFactory$Context;->var(Ljava/lang/String;)I

    move-result v16

    move-object/from16 v0, p2

    move/from16 v1, v16

    invoke-interface {v0, v15, v1}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitVarInsn(II)V

    const/16 v15, 0xa2

    .line 577
    move-object/from16 v0, p2

    invoke-interface {v0, v15, v14}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitJumpInsn(ILcom/alibaba/fastjson/asm/Label;)V

    const/16 v15, 0x15

    const-string/jumbo v16, "i"

    .line 579
    move-object/from16 v0, p4

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson/serializer/ASMSerializerFactory$Context;->var(Ljava/lang/String;)I

    move-result v16

    move-object/from16 v0, p2

    move/from16 v1, v16

    invoke-interface {v0, v15, v1}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitVarInsn(II)V

    const/16 v15, 0x99

    .line 580
    move-object/from16 v0, p2

    invoke-interface {v0, v15, v13}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitJumpInsn(ILcom/alibaba/fastjson/asm/Label;)V

    const/16 v15, 0x19

    const-string/jumbo v16, "out"

    .line 582
    move-object/from16 v0, p4

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson/serializer/ASMSerializerFactory$Context;->var(Ljava/lang/String;)I

    move-result v16

    move-object/from16 v0, p2

    move/from16 v1, v16

    invoke-interface {v0, v15, v1}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitVarInsn(II)V

    const/16 v15, 0x10

    const/16 v16, 0x2c

    .line 583
    move-object/from16 v0, p2

    move/from16 v1, v16

    invoke-interface {v0, v15, v1}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitVarInsn(II)V

    const/16 v15, 0xb6

    .line 584
    sget-object v16, Lcom/alibaba/fastjson/serializer/ASMSerializerFactory;->SerializeWriter:Ljava/lang/String;

    const-string/jumbo v17, "write"

    const-string/jumbo v18, "(I)V"

    move-object/from16 v0, p2

    move-object/from16 v1, v16

    move-object/from16 v2, v17

    move-object/from16 v3, v18

    invoke-interface {v0, v15, v1, v2, v3}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitMethodInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 586
    move-object/from16 v0, p2

    invoke-interface {v0, v13}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitLabel(Lcom/alibaba/fastjson/asm/Label;)V

    const/16 v13, 0x19

    const-string/jumbo v15, "list"

    .line 588
    move-object/from16 v0, p4

    invoke-virtual {v0, v15}, Lcom/alibaba/fastjson/serializer/ASMSerializerFactory$Context;->var(Ljava/lang/String;)I

    move-result v15

    move-object/from16 v0, p2

    invoke-interface {v0, v13, v15}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitVarInsn(II)V

    const/16 v13, 0x15

    const-string/jumbo v15, "i"

    .line 589
    move-object/from16 v0, p4

    invoke-virtual {v0, v15}, Lcom/alibaba/fastjson/serializer/ASMSerializerFactory$Context;->var(Ljava/lang/String;)I

    move-result v15

    move-object/from16 v0, p2

    invoke-interface {v0, v13, v15}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitVarInsn(II)V

    const/16 v13, 0xb9

    const-string/jumbo v15, "java/util/List"

    const-string/jumbo v16, "get"

    const-string/jumbo v17, "(I)Ljava/lang/Object;"

    .line 590
    move-object/from16 v0, p2

    move-object/from16 v1, v16

    move-object/from16 v2, v17

    invoke-interface {v0, v13, v15, v1, v2}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitMethodInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const/16 v13, 0x3a

    const-string/jumbo v15, "list_item"

    .line 591
    move-object/from16 v0, p4

    invoke-virtual {v0, v15}, Lcom/alibaba/fastjson/serializer/ASMSerializerFactory$Context;->var(Ljava/lang/String;)I

    move-result v15

    move-object/from16 v0, p2

    invoke-interface {v0, v13, v15}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitVarInsn(II)V

    .line 593
    new-instance v13, Lcom/alibaba/fastjson/asm/Label;

    invoke-direct {v13}, Lcom/alibaba/fastjson/asm/Label;-><init>()V

    new-instance v15, Lcom/alibaba/fastjson/asm/Label;

    invoke-direct {v15}, Lcom/alibaba/fastjson/asm/Label;-><init>()V

    const/16 v16, 0x19

    const-string/jumbo v17, "list_item"

    .line 595
    move-object/from16 v0, p4

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson/serializer/ASMSerializerFactory$Context;->var(Ljava/lang/String;)I

    move-result v17

    move-object/from16 v0, p2

    move/from16 v1, v16

    move/from16 v2, v17

    invoke-interface {v0, v1, v2}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitVarInsn(II)V

    const/16 v16, 0xc7

    .line 596
    move-object/from16 v0, p2

    move/from16 v1, v16

    invoke-interface {v0, v1, v15}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitJumpInsn(ILcom/alibaba/fastjson/asm/Label;)V

    const/16 v16, 0x19

    const-string/jumbo v17, "out"

    .line 598
    move-object/from16 v0, p4

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson/serializer/ASMSerializerFactory$Context;->var(Ljava/lang/String;)I

    move-result v17

    move-object/from16 v0, p2

    move/from16 v1, v16

    move/from16 v2, v17

    invoke-interface {v0, v1, v2}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitVarInsn(II)V

    const/16 v16, 0xb6

    .line 599
    sget-object v17, Lcom/alibaba/fastjson/serializer/ASMSerializerFactory;->SerializeWriter:Ljava/lang/String;

    const-string/jumbo v18, "writeNull"

    const-string/jumbo v19, "()V"

    move-object/from16 v0, p2

    move/from16 v1, v16

    move-object/from16 v2, v17

    move-object/from16 v3, v18

    move-object/from16 v4, v19

    invoke-interface {v0, v1, v2, v3, v4}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitMethodInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const/16 v16, 0xa7

    .line 600
    move-object/from16 v0, p2

    move/from16 v1, v16

    invoke-interface {v0, v1, v13}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitJumpInsn(ILcom/alibaba/fastjson/asm/Label;)V

    .line 602
    move-object/from16 v0, p2

    invoke-interface {v0, v15}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitLabel(Lcom/alibaba/fastjson/asm/Label;)V

    .line 604
    new-instance v15, Lcom/alibaba/fastjson/asm/Label;

    invoke-direct {v15}, Lcom/alibaba/fastjson/asm/Label;-><init>()V

    new-instance v16, Lcom/alibaba/fastjson/asm/Label;

    invoke-direct/range {v16 .. v16}, Lcom/alibaba/fastjson/asm/Label;-><init>()V

    .line 605
    if-nez v5, :cond_16

    .line 658
    :cond_11
    :goto_7
    move-object/from16 v0, p2

    move-object/from16 v1, v16

    invoke-interface {v0, v1}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitLabel(Lcom/alibaba/fastjson/asm/Label;)V

    const/16 v16, 0x19

    const/16 v17, 0x1

    .line 659
    move-object/from16 v0, p2

    move/from16 v1, v16

    move/from16 v2, v17

    invoke-interface {v0, v1, v2}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitVarInsn(II)V

    const/16 v16, 0x19

    const-string/jumbo v17, "list_item"

    .line 660
    move-object/from16 v0, p4

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson/serializer/ASMSerializerFactory$Context;->var(Ljava/lang/String;)I

    move-result v17

    move-object/from16 v0, p2

    move/from16 v1, v16

    move/from16 v2, v17

    invoke-interface {v0, v1, v2}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitVarInsn(II)V

    .line 661
    invoke-static/range {p4 .. p4}, Lcom/alibaba/fastjson/serializer/ASMSerializerFactory$Context;->access$200(Lcom/alibaba/fastjson/serializer/ASMSerializerFactory$Context;)Z

    move-result v16

    if-nez v16, :cond_1a

    const/16 v16, 0x15

    const-string/jumbo v17, "i"

    .line 664
    move-object/from16 v0, p4

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson/serializer/ASMSerializerFactory$Context;->var(Ljava/lang/String;)I

    move-result v17

    move-object/from16 v0, p2

    move/from16 v1, v16

    move/from16 v2, v17

    invoke-interface {v0, v1, v2}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitVarInsn(II)V

    const/16 v16, 0xb8

    const-string/jumbo v17, "java/lang/Integer"

    const-string/jumbo v18, "valueOf"

    const-string/jumbo v19, "(I)Ljava/lang/Integer;"

    .line 665
    move-object/from16 v0, p2

    move/from16 v1, v16

    move-object/from16 v2, v17

    move-object/from16 v3, v18

    move-object/from16 v4, v19

    invoke-interface {v0, v1, v2, v3, v4}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitMethodInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 667
    :goto_8
    if-nez v5, :cond_1b

    :cond_12
    const/16 v5, 0xb6

    .line 673
    sget-object v6, Lcom/alibaba/fastjson/serializer/ASMSerializerFactory;->JSONSerializer:Ljava/lang/String;

    const-string/jumbo v10, "writeWithFieldName"

    const-string/jumbo v16, "(Ljava/lang/Object;Ljava/lang/Object;)V"

    move-object/from16 v0, p2

    move-object/from16 v1, v16

    invoke-interface {v0, v5, v6, v10, v1}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitMethodInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 676
    :goto_9
    move-object/from16 v0, p2

    invoke-interface {v0, v15}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitLabel(Lcom/alibaba/fastjson/asm/Label;)V

    .line 677
    move-object/from16 v0, p2

    invoke-interface {v0, v13}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitLabel(Lcom/alibaba/fastjson/asm/Label;)V

    const-string/jumbo v5, "i"

    .line 679
    move-object/from16 v0, p4

    invoke-virtual {v0, v5}, Lcom/alibaba/fastjson/serializer/ASMSerializerFactory$Context;->var(Ljava/lang/String;)I

    move-result v5

    const/4 v6, 0x1

    move-object/from16 v0, p2

    invoke-interface {v0, v5, v6}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitIincInsn(II)V

    const/16 v5, 0xa7

    .line 680
    move-object/from16 v0, p2

    invoke-interface {v0, v5, v12}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitJumpInsn(ILcom/alibaba/fastjson/asm/Label;)V

    .line 682
    move-object/from16 v0, p2

    invoke-interface {v0, v14}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitLabel(Lcom/alibaba/fastjson/asm/Label;)V

    const/16 v5, 0x19

    const-string/jumbo v6, "out"

    .line 684
    move-object/from16 v0, p4

    invoke-virtual {v0, v6}, Lcom/alibaba/fastjson/serializer/ASMSerializerFactory$Context;->var(Ljava/lang/String;)I

    move-result v6

    move-object/from16 v0, p2

    invoke-interface {v0, v5, v6}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitVarInsn(II)V

    const/16 v5, 0x10

    const/16 v6, 0x5d

    .line 685
    move-object/from16 v0, p2

    invoke-interface {v0, v5, v6}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitVarInsn(II)V

    const/16 v5, 0xb6

    .line 686
    sget-object v6, Lcom/alibaba/fastjson/serializer/ASMSerializerFactory;->SerializeWriter:Ljava/lang/String;

    const-string/jumbo v10, "write"

    const-string/jumbo v12, "(I)V"

    move-object/from16 v0, p2

    invoke-interface {v0, v5, v6, v10, v12}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitMethodInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 688
    move-object/from16 v0, p2

    invoke-interface {v0, v11}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitLabel(Lcom/alibaba/fastjson/asm/Label;)V

    :goto_a
    const/16 v5, 0x19

    const-string/jumbo v6, "out"

    .line 691
    move-object/from16 v0, p4

    invoke-virtual {v0, v6}, Lcom/alibaba/fastjson/serializer/ASMSerializerFactory$Context;->var(Ljava/lang/String;)I

    move-result v6

    move-object/from16 v0, p2

    invoke-interface {v0, v5, v6}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitVarInsn(II)V

    const/16 v5, 0x10

    .line 692
    move-object/from16 v0, p2

    invoke-interface {v0, v5, v7}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitVarInsn(II)V

    const/16 v5, 0xb6

    .line 693
    sget-object v6, Lcom/alibaba/fastjson/serializer/ASMSerializerFactory;->SerializeWriter:Ljava/lang/String;

    const-string/jumbo v7, "write"

    const-string/jumbo v10, "(I)V"

    move-object/from16 v0, p2

    invoke-interface {v0, v5, v6, v7, v10}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitMethodInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_2

    :cond_13
    const-class v6, Ljava/lang/Object;

    goto/16 :goto_5

    :cond_14
    move-object v5, v6

    .line 532
    check-cast v5, Ljava/lang/Class;

    const-class v11, Ljava/lang/Object;

    .line 534
    if-ne v5, v11, :cond_f

    const/4 v5, 0x0

    .line 535
    goto/16 :goto_6

    .line 544
    :cond_15
    invoke-static/range {p4 .. p4}, Lcom/alibaba/fastjson/serializer/ASMSerializerFactory$Context;->access$000(Lcom/alibaba/fastjson/serializer/ASMSerializerFactory$Context;)Z

    move-result v11

    if-eqz v11, :cond_10

    const/16 v5, 0x19

    const-string/jumbo v6, "out"

    .line 545
    move-object/from16 v0, p4

    invoke-virtual {v0, v6}, Lcom/alibaba/fastjson/serializer/ASMSerializerFactory$Context;->var(Ljava/lang/String;)I

    move-result v6

    move-object/from16 v0, p2

    invoke-interface {v0, v5, v6}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitVarInsn(II)V

    const/16 v5, 0x19

    const-string/jumbo v6, "list"

    .line 546
    move-object/from16 v0, p4

    invoke-virtual {v0, v6}, Lcom/alibaba/fastjson/serializer/ASMSerializerFactory$Context;->var(Ljava/lang/String;)I

    move-result v6

    move-object/from16 v0, p2

    invoke-interface {v0, v5, v6}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitVarInsn(II)V

    const/16 v5, 0xb6

    .line 547
    sget-object v6, Lcom/alibaba/fastjson/serializer/ASMSerializerFactory;->SerializeWriter:Ljava/lang/String;

    const-string/jumbo v10, "write"

    const-string/jumbo v11, "(Ljava/util/List;)V"

    move-object/from16 v0, p2

    invoke-interface {v0, v5, v6, v10, v11}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitMethodInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_a

    .line 605
    :cond_16
    invoke-virtual {v5}, Ljava/lang/Class;->getModifiers()I

    move-result v17

    invoke-static/range {v17 .. v17}, Ljava/lang/reflect/Modifier;->isPublic(I)Z

    move-result v17

    if-eqz v17, :cond_11

    const/16 v17, 0x19

    const-string/jumbo v18, "list_item"

    .line 606
    move-object/from16 v0, p4

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson/serializer/ASMSerializerFactory$Context;->var(Ljava/lang/String;)I

    move-result v18

    move-object/from16 v0, p2

    move/from16 v1, v17

    move/from16 v2, v18

    invoke-interface {v0, v1, v2}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitVarInsn(II)V

    const/16 v17, 0xb6

    const-string/jumbo v18, "java/lang/Object"

    const-string/jumbo v19, "getClass"

    const-string/jumbo v20, "()Ljava/lang/Class;"

    .line 607
    move-object/from16 v0, p2

    move/from16 v1, v17

    move-object/from16 v2, v18

    move-object/from16 v3, v19

    move-object/from16 v4, v20

    invoke-interface {v0, v1, v2, v3, v4}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitMethodInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 608
    invoke-static {v5}, Lcom/alibaba/fastjson/util/ASMUtils;->desc(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v17

    invoke-static/range {v17 .. v17}, Lcom/alibaba/fastjson/asm/Type;->getType(Ljava/lang/String;)Lcom/alibaba/fastjson/asm/Type;

    move-result-object v17

    move-object/from16 v0, p2

    move-object/from16 v1, v17

    invoke-interface {v0, v1}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitLdcInsn(Ljava/lang/Object;)V

    const/16 v17, 0xa6

    .line 609
    move-object/from16 v0, p2

    move/from16 v1, v17

    move-object/from16 v2, v16

    invoke-interface {v0, v1, v2}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitJumpInsn(ILcom/alibaba/fastjson/asm/Label;)V

    .line 611
    move-object/from16 v0, p0

    move-object/from16 v1, p4

    move-object/from16 v2, p2

    invoke-direct {v0, v1, v2, v10, v5}, Lcom/alibaba/fastjson/serializer/ASMSerializerFactory;->_getListFieldItemSer(Lcom/alibaba/fastjson/serializer/ASMSerializerFactory$Context;Lcom/alibaba/fastjson/asm/MethodVisitor;Lcom/alibaba/fastjson/util/FieldInfo;Ljava/lang/Class;)V

    const/16 v17, 0x3a

    const-string/jumbo v18, "list_item_desc"

    .line 612
    move-object/from16 v0, p4

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson/serializer/ASMSerializerFactory$Context;->var(Ljava/lang/String;)I

    move-result v18

    move-object/from16 v0, p2

    move/from16 v1, v17

    move/from16 v2, v18

    invoke-interface {v0, v1, v2}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitVarInsn(II)V

    .line 614
    new-instance v17, Lcom/alibaba/fastjson/asm/Label;

    invoke-direct/range {v17 .. v17}, Lcom/alibaba/fastjson/asm/Label;-><init>()V

    new-instance v18, Lcom/alibaba/fastjson/asm/Label;

    invoke-direct/range {v18 .. v18}, Lcom/alibaba/fastjson/asm/Label;-><init>()V

    .line 616
    invoke-static/range {p4 .. p4}, Lcom/alibaba/fastjson/serializer/ASMSerializerFactory$Context;->access$000(Lcom/alibaba/fastjson/serializer/ASMSerializerFactory$Context;)Z

    move-result v19

    if-nez v19, :cond_17

    :goto_b
    const/16 v17, 0x19

    const-string/jumbo v19, "list_item_desc"

    .line 641
    move-object/from16 v0, p4

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson/serializer/ASMSerializerFactory$Context;->var(Ljava/lang/String;)I

    move-result v19

    move-object/from16 v0, p2

    move/from16 v1, v17

    move/from16 v2, v19

    invoke-interface {v0, v1, v2}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitVarInsn(II)V

    const/16 v17, 0x19

    const/16 v19, 0x1

    .line 642
    move-object/from16 v0, p2

    move/from16 v1, v17

    move/from16 v2, v19

    invoke-interface {v0, v1, v2}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitVarInsn(II)V

    const/16 v17, 0x19

    const-string/jumbo v19, "list_item"

    .line 643
    move-object/from16 v0, p4

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson/serializer/ASMSerializerFactory$Context;->var(Ljava/lang/String;)I

    move-result v19

    move-object/from16 v0, p2

    move/from16 v1, v17

    move/from16 v2, v19

    invoke-interface {v0, v1, v2}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitVarInsn(II)V

    .line 644
    invoke-static/range {p4 .. p4}, Lcom/alibaba/fastjson/serializer/ASMSerializerFactory$Context;->access$200(Lcom/alibaba/fastjson/serializer/ASMSerializerFactory$Context;)Z

    move-result v17

    if-nez v17, :cond_19

    const/16 v17, 0x15

    const-string/jumbo v19, "i"

    .line 647
    move-object/from16 v0, p4

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson/serializer/ASMSerializerFactory$Context;->var(Ljava/lang/String;)I

    move-result v19

    move-object/from16 v0, p2

    move/from16 v1, v17

    move/from16 v2, v19

    invoke-interface {v0, v1, v2}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitVarInsn(II)V

    const/16 v17, 0xb8

    const-string/jumbo v19, "java/lang/Integer"

    const-string/jumbo v20, "valueOf"

    const-string/jumbo v21, "(I)Ljava/lang/Integer;"

    .line 648
    move-object/from16 v0, p2

    move/from16 v1, v17

    move-object/from16 v2, v19

    move-object/from16 v3, v20

    move-object/from16 v4, v21

    invoke-interface {v0, v1, v2, v3, v4}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitMethodInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 650
    :goto_c
    invoke-static {v5}, Lcom/alibaba/fastjson/util/ASMUtils;->desc(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v17

    invoke-static/range {v17 .. v17}, Lcom/alibaba/fastjson/asm/Type;->getType(Ljava/lang/String;)Lcom/alibaba/fastjson/asm/Type;

    move-result-object v17

    move-object/from16 v0, p2

    move-object/from16 v1, v17

    invoke-interface {v0, v1}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitLdcInsn(Ljava/lang/Object;)V

    .line 651
    iget v0, v10, Lcom/alibaba/fastjson/util/FieldInfo;->serialzeFeatures:I

    move/from16 v17, v0

    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v17

    move-object/from16 v0, p2

    move-object/from16 v1, v17

    invoke-interface {v0, v1}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitLdcInsn(Ljava/lang/Object;)V

    const/16 v17, 0xb9

    .line 652
    sget-object v19, Lcom/alibaba/fastjson/serializer/ASMSerializerFactory;->ObjectSerializer:Ljava/lang/String;

    const-string/jumbo v20, "write"

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v22, "(L"

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    sget-object v22, Lcom/alibaba/fastjson/serializer/ASMSerializerFactory;->JSONSerializer:Ljava/lang/String;

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string/jumbo v22, ";Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/reflect/Type;I)V"

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    move-object/from16 v0, p2

    move/from16 v1, v17

    move-object/from16 v2, v19

    move-object/from16 v3, v20

    move-object/from16 v4, v21

    invoke-interface {v0, v1, v2, v3, v4}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitMethodInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 654
    move-object/from16 v0, p2

    move-object/from16 v1, v18

    invoke-interface {v0, v1}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitLabel(Lcom/alibaba/fastjson/asm/Label;)V

    const/16 v17, 0xa7

    .line 655
    move-object/from16 v0, p2

    move/from16 v1, v17

    invoke-interface {v0, v1, v15}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitJumpInsn(ILcom/alibaba/fastjson/asm/Label;)V

    goto/16 :goto_7

    :cond_17
    const/16 v19, 0x19

    const-string/jumbo v20, "list_item_desc"

    .line 617
    move-object/from16 v0, p4

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson/serializer/ASMSerializerFactory$Context;->var(Ljava/lang/String;)I

    move-result v20

    move-object/from16 v0, p2

    move/from16 v1, v19

    move/from16 v2, v20

    invoke-interface {v0, v1, v2}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitVarInsn(II)V

    const/16 v19, 0xc1

    .line 618
    sget-object v20, Lcom/alibaba/fastjson/serializer/ASMSerializerFactory;->JavaBeanSerializer:Ljava/lang/String;

    move-object/from16 v0, p2

    move/from16 v1, v19

    move-object/from16 v2, v20

    invoke-interface {v0, v1, v2}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitTypeInsn(ILjava/lang/String;)V

    const/16 v19, 0x99

    .line 619
    move-object/from16 v0, p2

    move/from16 v1, v19

    move-object/from16 v2, v17

    invoke-interface {v0, v1, v2}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitJumpInsn(ILcom/alibaba/fastjson/asm/Label;)V

    const/16 v19, 0x19

    const-string/jumbo v20, "list_item_desc"

    .line 621
    move-object/from16 v0, p4

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson/serializer/ASMSerializerFactory$Context;->var(Ljava/lang/String;)I

    move-result v20

    move-object/from16 v0, p2

    move/from16 v1, v19

    move/from16 v2, v20

    invoke-interface {v0, v1, v2}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitVarInsn(II)V

    const/16 v19, 0xc0

    .line 622
    sget-object v20, Lcom/alibaba/fastjson/serializer/ASMSerializerFactory;->JavaBeanSerializer:Ljava/lang/String;

    move-object/from16 v0, p2

    move/from16 v1, v19

    move-object/from16 v2, v20

    invoke-interface {v0, v1, v2}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitTypeInsn(ILjava/lang/String;)V

    const/16 v19, 0x19

    const/16 v20, 0x1

    .line 623
    move-object/from16 v0, p2

    move/from16 v1, v19

    move/from16 v2, v20

    invoke-interface {v0, v1, v2}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitVarInsn(II)V

    const/16 v19, 0x19

    const-string/jumbo v20, "list_item"

    .line 624
    move-object/from16 v0, p4

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson/serializer/ASMSerializerFactory$Context;->var(Ljava/lang/String;)I

    move-result v20

    move-object/from16 v0, p2

    move/from16 v1, v19

    move/from16 v2, v20

    invoke-interface {v0, v1, v2}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitVarInsn(II)V

    .line 625
    invoke-static/range {p4 .. p4}, Lcom/alibaba/fastjson/serializer/ASMSerializerFactory$Context;->access$200(Lcom/alibaba/fastjson/serializer/ASMSerializerFactory$Context;)Z

    move-result v19

    if-nez v19, :cond_18

    const/16 v19, 0x15

    const-string/jumbo v20, "i"

    .line 628
    move-object/from16 v0, p4

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson/serializer/ASMSerializerFactory$Context;->var(Ljava/lang/String;)I

    move-result v20

    move-object/from16 v0, p2

    move/from16 v1, v19

    move/from16 v2, v20

    invoke-interface {v0, v1, v2}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitVarInsn(II)V

    const/16 v19, 0xb8

    const-string/jumbo v20, "java/lang/Integer"

    const-string/jumbo v21, "valueOf"

    const-string/jumbo v22, "(I)Ljava/lang/Integer;"

    .line 629
    move-object/from16 v0, p2

    move/from16 v1, v19

    move-object/from16 v2, v20

    move-object/from16 v3, v21

    move-object/from16 v4, v22

    invoke-interface {v0, v1, v2, v3, v4}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitMethodInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 632
    :goto_d
    invoke-static {v5}, Lcom/alibaba/fastjson/util/ASMUtils;->desc(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v19 .. v19}, Lcom/alibaba/fastjson/asm/Type;->getType(Ljava/lang/String;)Lcom/alibaba/fastjson/asm/Type;

    move-result-object v19

    move-object/from16 v0, p2

    move-object/from16 v1, v19

    invoke-interface {v0, v1}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitLdcInsn(Ljava/lang/Object;)V

    .line 633
    iget v0, v10, Lcom/alibaba/fastjson/util/FieldInfo;->serialzeFeatures:I

    move/from16 v19, v0

    invoke-static/range {v19 .. v19}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v19

    move-object/from16 v0, p2

    move-object/from16 v1, v19

    invoke-interface {v0, v1}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitLdcInsn(Ljava/lang/Object;)V

    const/16 v19, 0xb6

    .line 634
    sget-object v20, Lcom/alibaba/fastjson/serializer/ASMSerializerFactory;->JavaBeanSerializer:Ljava/lang/String;

    const-string/jumbo v21, "writeAsArrayNonContext"

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v23, "(L"

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    sget-object v23, Lcom/alibaba/fastjson/serializer/ASMSerializerFactory;->JSONSerializer:Ljava/lang/String;

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    const-string/jumbo v23, ";Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/reflect/Type;I)V"

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, p2

    move/from16 v1, v19

    move-object/from16 v2, v20

    move-object/from16 v3, v21

    move-object/from16 v4, v22

    invoke-interface {v0, v1, v2, v3, v4}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitMethodInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const/16 v19, 0xa7

    .line 636
    move-object/from16 v0, p2

    move/from16 v1, v19

    move-object/from16 v2, v18

    invoke-interface {v0, v1, v2}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitJumpInsn(ILcom/alibaba/fastjson/asm/Label;)V

    .line 638
    move-object/from16 v0, p2

    move-object/from16 v1, v17

    invoke-interface {v0, v1}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitLabel(Lcom/alibaba/fastjson/asm/Label;)V

    goto/16 :goto_b

    :cond_18
    const/16 v19, 0x1

    .line 626
    move-object/from16 v0, p2

    move/from16 v1, v19

    invoke-interface {v0, v1}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitInsn(I)V

    goto :goto_d

    :cond_19
    const/16 v17, 0x1

    .line 645
    move-object/from16 v0, p2

    move/from16 v1, v17

    invoke-interface {v0, v1}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitInsn(I)V

    goto/16 :goto_c

    :cond_1a
    const/16 v16, 0x1

    .line 662
    move-object/from16 v0, p2

    move/from16 v1, v16

    invoke-interface {v0, v1}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitInsn(I)V

    goto/16 :goto_8

    .line 667
    :cond_1b
    invoke-virtual {v5}, Ljava/lang/Class;->getModifiers()I

    move-result v5

    invoke-static {v5}, Ljava/lang/reflect/Modifier;->isPublic(I)Z

    move-result v5

    if-eqz v5, :cond_12

    .line 668
    check-cast v6, Ljava/lang/Class;

    invoke-static {v6}, Lcom/alibaba/fastjson/util/ASMUtils;->desc(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/alibaba/fastjson/asm/Type;->getType(Ljava/lang/String;)Lcom/alibaba/fastjson/asm/Type;

    move-result-object v5

    move-object/from16 v0, p2

    invoke-interface {v0, v5}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitLdcInsn(Ljava/lang/Object;)V

    .line 669
    iget v5, v10, Lcom/alibaba/fastjson/util/FieldInfo;->serialzeFeatures:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    move-object/from16 v0, p2

    invoke-interface {v0, v5}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitLdcInsn(Ljava/lang/Object;)V

    const/16 v5, 0xb6

    .line 670
    sget-object v6, Lcom/alibaba/fastjson/serializer/ASMSerializerFactory;->JSONSerializer:Ljava/lang/String;

    const-string/jumbo v10, "writeWithFieldName"

    const-string/jumbo v16, "(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/reflect/Type;I)V"

    move-object/from16 v0, p2

    move-object/from16 v1, v16

    invoke-interface {v0, v5, v6, v10, v1}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitMethodInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_9

    .line 718
    :cond_1c
    invoke-virtual {v5}, Ljava/lang/Class;->getModifiers()I

    move-result v15

    invoke-static {v15}, Ljava/lang/reflect/Modifier;->isPublic(I)Z

    move-result v15

    if-eqz v15, :cond_5

    const/16 v15, 0x19

    const-string/jumbo v16, "fied_ser"

    .line 719
    move-object/from16 v0, p4

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson/serializer/ASMSerializerFactory$Context;->var(Ljava/lang/String;)I

    move-result v16

    move-object/from16 v0, p2

    move/from16 v1, v16

    invoke-interface {v0, v15, v1}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitVarInsn(II)V

    const/16 v15, 0xc1

    .line 720
    sget-object v16, Lcom/alibaba/fastjson/serializer/ASMSerializerFactory;->JavaBeanSerializer:Ljava/lang/String;

    move-object/from16 v0, p2

    move-object/from16 v1, v16

    invoke-interface {v0, v15, v1}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitTypeInsn(ILjava/lang/String;)V

    const/16 v15, 0x99

    .line 721
    move-object/from16 v0, p2

    invoke-interface {v0, v15, v13}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitJumpInsn(ILcom/alibaba/fastjson/asm/Label;)V

    const/16 v15, 0x19

    const-string/jumbo v16, "fied_ser"

    .line 723
    move-object/from16 v0, p4

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson/serializer/ASMSerializerFactory$Context;->var(Ljava/lang/String;)I

    move-result v16

    move-object/from16 v0, p2

    move/from16 v1, v16

    invoke-interface {v0, v15, v1}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitVarInsn(II)V

    const/16 v15, 0xc0

    .line 724
    sget-object v16, Lcom/alibaba/fastjson/serializer/ASMSerializerFactory;->JavaBeanSerializer:Ljava/lang/String;

    move-object/from16 v0, p2

    move-object/from16 v1, v16

    invoke-interface {v0, v15, v1}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitTypeInsn(ILjava/lang/String;)V

    const/16 v15, 0x19

    const/16 v16, 0x1

    .line 725
    move-object/from16 v0, p2

    move/from16 v1, v16

    invoke-interface {v0, v15, v1}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitVarInsn(II)V

    const/16 v15, 0x19

    .line 726
    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v17, "field_"

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    iget-object v0, v10, Lcom/alibaba/fastjson/util/FieldInfo;->fieldClass:Ljava/lang/Class;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v17

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, p4

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson/serializer/ASMSerializerFactory$Context;->var(Ljava/lang/String;)I

    move-result v16

    move-object/from16 v0, p2

    move/from16 v1, v16

    invoke-interface {v0, v15, v1}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitVarInsn(II)V

    const/16 v15, 0x19

    .line 727
    sget v16, Lcom/alibaba/fastjson/serializer/ASMSerializerFactory$Context;->fieldName:I

    move-object/from16 v0, p2

    move/from16 v1, v16

    invoke-interface {v0, v15, v1}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitVarInsn(II)V

    .line 728
    invoke-static {v5}, Lcom/alibaba/fastjson/util/ASMUtils;->desc(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v15

    invoke-static {v15}, Lcom/alibaba/fastjson/asm/Type;->getType(Ljava/lang/String;)Lcom/alibaba/fastjson/asm/Type;

    move-result-object v15

    move-object/from16 v0, p2

    invoke-interface {v0, v15}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitLdcInsn(Ljava/lang/Object;)V

    .line 729
    iget v15, v10, Lcom/alibaba/fastjson/util/FieldInfo;->serialzeFeatures:I

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    move-object/from16 v0, p2

    invoke-interface {v0, v15}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitLdcInsn(Ljava/lang/Object;)V

    const/16 v15, 0xb6

    .line 730
    sget-object v16, Lcom/alibaba/fastjson/serializer/ASMSerializerFactory;->JavaBeanSerializer:Ljava/lang/String;

    const-string/jumbo v17, "writeAsArrayNonContext"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v19, "(L"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    sget-object v19, Lcom/alibaba/fastjson/serializer/ASMSerializerFactory;->JSONSerializer:Ljava/lang/String;

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string/jumbo v19, ";Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/reflect/Type;I)V"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, p2

    move-object/from16 v1, v16

    move-object/from16 v2, v17

    move-object/from16 v3, v18

    invoke-interface {v0, v15, v1, v2, v3}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitMethodInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const/16 v15, 0xa7

    .line 732
    move-object/from16 v0, p2

    invoke-interface {v0, v15, v14}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitJumpInsn(ILcom/alibaba/fastjson/asm/Label;)V

    .line 734
    move-object/from16 v0, p2

    invoke-interface {v0, v13}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitLabel(Lcom/alibaba/fastjson/asm/Label;)V

    goto/16 :goto_3

    .line 753
    :cond_1d
    move-object/from16 v0, p2

    invoke-interface {v0, v5}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitLdcInsn(Ljava/lang/Object;)V

    const/16 v5, 0xb6

    .line 754
    sget-object v10, Lcom/alibaba/fastjson/serializer/ASMSerializerFactory;->JSONSerializer:Ljava/lang/String;

    const-string/jumbo v12, "writeWithFormat"

    const-string/jumbo v13, "(Ljava/lang/Object;Ljava/lang/String;)V"

    move-object/from16 v0, p2

    invoke-interface {v0, v5, v10, v12, v13}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitMethodInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_4

    .line 758
    :cond_1e
    iget-object v5, v10, Lcom/alibaba/fastjson/util/FieldInfo;->fieldType:Ljava/lang/reflect/Type;

    check-cast v5, Ljava/lang/Class;

    .line 759
    invoke-virtual {v5}, Ljava/lang/Class;->isPrimitive()Z

    move-result v5

    if-eqz v5, :cond_6

    const/16 v5, 0xb6

    .line 760
    sget-object v10, Lcom/alibaba/fastjson/serializer/ASMSerializerFactory;->JSONSerializer:Ljava/lang/String;

    const-string/jumbo v12, "writeWithFieldName"

    const-string/jumbo v13, "(Ljava/lang/Object;Ljava/lang/Object;)V"

    move-object/from16 v0, p2

    invoke-interface {v0, v5, v10, v12, v13}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitMethodInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_4
.end method

.method private generateWriteMethod(Ljava/lang/Class;Lcom/alibaba/fastjson/asm/MethodVisitor;[Lcom/alibaba/fastjson/util/FieldInfo;Lcom/alibaba/fastjson/serializer/ASMSerializerFactory$Context;)V
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;",
            "Lcom/alibaba/fastjson/asm/MethodVisitor;",
            "[",
            "Lcom/alibaba/fastjson/util/FieldInfo;",
            "Lcom/alibaba/fastjson/serializer/ASMSerializerFactory$Context;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 787
    new-instance v8, Lcom/alibaba/fastjson/asm/Label;

    invoke-direct {v8}, Lcom/alibaba/fastjson/asm/Label;-><init>()V

    .line 789
    array-length v9, p3

    .line 791
    invoke-static {p4}, Lcom/alibaba/fastjson/serializer/ASMSerializerFactory$Context;->access$000(Lcom/alibaba/fastjson/serializer/ASMSerializerFactory$Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 831
    :goto_0
    invoke-static {p4}, Lcom/alibaba/fastjson/serializer/ASMSerializerFactory$Context;->access$200(Lcom/alibaba/fastjson/serializer/ASMSerializerFactory$Context;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 851
    :goto_1
    invoke-static {p4}, Lcom/alibaba/fastjson/serializer/ASMSerializerFactory$Context;->access$000(Lcom/alibaba/fastjson/serializer/ASMSerializerFactory$Context;)Z

    move-result v0

    if-nez v0, :cond_6

    const-string/jumbo v0, "writeAsArrayNormal"

    .line 861
    :goto_2
    invoke-static {p4}, Lcom/alibaba/fastjson/serializer/ASMSerializerFactory$Context;->access$400(Lcom/alibaba/fastjson/serializer/ASMSerializerFactory$Context;)Lcom/alibaba/fastjson/serializer/SerializeBeanInfo;

    move-result-object v1

    iget v1, v1, Lcom/alibaba/fastjson/serializer/SerializeBeanInfo;->features:I

    sget-object v2, Lcom/alibaba/fastjson/serializer/SerializerFeature;->BeanToArray:Lcom/alibaba/fastjson/serializer/SerializerFeature;

    iget v2, v2, Lcom/alibaba/fastjson/serializer/SerializerFeature;->mask:I

    and-int/2addr v1, v2

    if-eqz v1, :cond_8

    const/16 v1, 0x19

    const/4 v2, 0x0

    .line 885
    invoke-interface {p2, v1, v2}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitVarInsn(II)V

    const/16 v1, 0x19

    const/4 v2, 0x1

    .line 886
    invoke-interface {p2, v1, v2}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitVarInsn(II)V

    const/16 v1, 0x19

    const/4 v2, 0x2

    .line 887
    invoke-interface {p2, v1, v2}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitVarInsn(II)V

    const/16 v1, 0x19

    const/4 v2, 0x3

    .line 888
    invoke-interface {p2, v1, v2}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitVarInsn(II)V

    const/16 v1, 0x19

    const/4 v2, 0x4

    .line 889
    invoke-interface {p2, v1, v2}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitVarInsn(II)V

    const/16 v1, 0x15

    const/4 v2, 0x5

    .line 890
    invoke-interface {p2, v1, v2}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitVarInsn(II)V

    const/16 v1, 0xb6

    .line 892
    invoke-static {p4}, Lcom/alibaba/fastjson/serializer/ASMSerializerFactory$Context;->access$300(Lcom/alibaba/fastjson/serializer/ASMSerializerFactory$Context;)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "(L"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v4, Lcom/alibaba/fastjson/serializer/ASMSerializerFactory;->JSONSerializer:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ";Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/reflect/Type;I)V"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 891
    invoke-interface {p2, v1, v2, v0, v3}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitMethodInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const/16 v0, 0xb1

    .line 895
    invoke-interface {p2, v0}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitInsn(I)V

    .line 898
    :goto_3
    invoke-static {p4}, Lcom/alibaba/fastjson/serializer/ASMSerializerFactory$Context;->access$200(Lcom/alibaba/fastjson/serializer/ASMSerializerFactory$Context;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 912
    :goto_4
    invoke-static {p4}, Lcom/alibaba/fastjson/serializer/ASMSerializerFactory$Context;->access$400(Lcom/alibaba/fastjson/serializer/ASMSerializerFactory$Context;)Lcom/alibaba/fastjson/serializer/SerializeBeanInfo;

    move-result-object v0

    iget v0, v0, Lcom/alibaba/fastjson/serializer/SerializeBeanInfo;->features:I

    sget-object v1, Lcom/alibaba/fastjson/serializer/SerializerFeature;->WriteClassName:Lcom/alibaba/fastjson/serializer/SerializerFeature;

    iget v1, v1, Lcom/alibaba/fastjson/serializer/SerializerFeature;->mask:I

    and-int/2addr v0, v1

    if-nez v0, :cond_a

    const/4 v0, 0x0

    .line 915
    :goto_5
    if-eqz v0, :cond_b

    .line 916
    :cond_0
    new-instance v1, Lcom/alibaba/fastjson/asm/Label;

    invoke-direct {v1}, Lcom/alibaba/fastjson/asm/Label;-><init>()V

    .line 917
    new-instance v2, Lcom/alibaba/fastjson/asm/Label;

    invoke-direct {v2}, Lcom/alibaba/fastjson/asm/Label;-><init>()V

    .line 918
    new-instance v3, Lcom/alibaba/fastjson/asm/Label;

    invoke-direct {v3}, Lcom/alibaba/fastjson/asm/Label;-><init>()V

    .line 920
    if-eqz v0, :cond_c

    :goto_6
    const/16 v0, 0x19

    const/4 v4, 0x4

    .line 930
    invoke-interface {p2, v0, v4}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitVarInsn(II)V

    const/16 v0, 0x19

    const/4 v4, 0x2

    .line 931
    invoke-interface {p2, v0, v4}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitVarInsn(II)V

    const/16 v0, 0xb6

    const-string/jumbo v4, "java/lang/Object"

    const-string/jumbo v5, "getClass"

    const-string/jumbo v6, "()Ljava/lang/Class;"

    .line 932
    invoke-interface {p2, v0, v4, v5, v6}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitMethodInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const/16 v0, 0xa5

    .line 933
    invoke-interface {p2, v0, v2}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitJumpInsn(ILcom/alibaba/fastjson/asm/Label;)V

    .line 935
    invoke-interface {p2, v3}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitLabel(Lcom/alibaba/fastjson/asm/Label;)V

    const/16 v0, 0x19

    const-string/jumbo v3, "out"

    .line 936
    invoke-virtual {p4, v3}, Lcom/alibaba/fastjson/serializer/ASMSerializerFactory$Context;->var(Ljava/lang/String;)I

    move-result v3

    invoke-interface {p2, v0, v3}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitVarInsn(II)V

    const/16 v0, 0x10

    const/16 v3, 0x7b

    .line 937
    invoke-interface {p2, v0, v3}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitVarInsn(II)V

    const/16 v0, 0xb6

    .line 938
    sget-object v3, Lcom/alibaba/fastjson/serializer/ASMSerializerFactory;->SerializeWriter:Ljava/lang/String;

    const-string/jumbo v4, "write"

    const-string/jumbo v5, "(I)V"

    invoke-interface {p2, v0, v3, v4, v5}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitMethodInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const/16 v0, 0x19

    const/4 v3, 0x0

    .line 940
    invoke-interface {p2, v0, v3}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitVarInsn(II)V

    const/16 v0, 0x19

    const/4 v3, 0x1

    .line 941
    invoke-interface {p2, v0, v3}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitVarInsn(II)V

    .line 942
    invoke-static {p4}, Lcom/alibaba/fastjson/serializer/ASMSerializerFactory$Context;->access$400(Lcom/alibaba/fastjson/serializer/ASMSerializerFactory$Context;)Lcom/alibaba/fastjson/serializer/SerializeBeanInfo;

    move-result-object v0

    iget-object v0, v0, Lcom/alibaba/fastjson/serializer/SerializeBeanInfo;->typeKey:Ljava/lang/String;

    if-nez v0, :cond_d

    const/4 v0, 0x1

    .line 945
    invoke-interface {p2, v0}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitInsn(I)V

    :goto_7
    const/16 v0, 0x19

    const/4 v3, 0x2

    .line 947
    invoke-interface {p2, v0, v3}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitVarInsn(II)V

    const/16 v0, 0xb6

    .line 949
    sget-object v3, Lcom/alibaba/fastjson/serializer/ASMSerializerFactory;->JavaBeanSerializer:Ljava/lang/String;

    const-string/jumbo v4, "writeClassName"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "(L"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    sget-object v6, Lcom/alibaba/fastjson/serializer/ASMSerializerFactory;->JSONSerializer:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, ";Ljava/lang/String;Ljava/lang/Object;)V"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {p2, v0, v3, v4, v5}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitMethodInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const/16 v0, 0x10

    const/16 v3, 0x2c

    .line 950
    invoke-interface {p2, v0, v3}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitVarInsn(II)V

    const/16 v0, 0xa7

    .line 951
    invoke-interface {p2, v0, v1}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitJumpInsn(ILcom/alibaba/fastjson/asm/Label;)V

    .line 953
    invoke-interface {p2, v2}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitLabel(Lcom/alibaba/fastjson/asm/Label;)V

    const/16 v0, 0x10

    const/16 v2, 0x7b

    .line 954
    invoke-interface {p2, v0, v2}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitVarInsn(II)V

    .line 956
    invoke-interface {p2, v1}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitLabel(Lcom/alibaba/fastjson/asm/Label;)V

    :goto_8
    const/16 v0, 0x36

    const-string/jumbo v1, "seperator"

    .line 961
    invoke-virtual {p4, v1}, Lcom/alibaba/fastjson/serializer/ASMSerializerFactory$Context;->var(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p2, v0, v1}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitVarInsn(II)V

    .line 963
    invoke-static {p4}, Lcom/alibaba/fastjson/serializer/ASMSerializerFactory$Context;->access$000(Lcom/alibaba/fastjson/serializer/ASMSerializerFactory$Context;)Z

    move-result v0

    if-eqz v0, :cond_e

    .line 967
    :goto_9
    invoke-static {p4}, Lcom/alibaba/fastjson/serializer/ASMSerializerFactory$Context;->access$000(Lcom/alibaba/fastjson/serializer/ASMSerializerFactory$Context;)Z

    move-result v0

    if-eqz v0, :cond_f

    :goto_a
    const/4 v0, 0x0

    move v7, v0

    .line 983
    :goto_b
    if-lt v7, v9, :cond_10

    .line 1017
    invoke-static {p4}, Lcom/alibaba/fastjson/serializer/ASMSerializerFactory$Context;->access$000(Lcom/alibaba/fastjson/serializer/ASMSerializerFactory$Context;)Z

    move-result v0

    if-eqz v0, :cond_1c

    .line 1021
    :goto_c
    new-instance v0, Lcom/alibaba/fastjson/asm/Label;

    invoke-direct {v0}, Lcom/alibaba/fastjson/asm/Label;-><init>()V

    .line 1022
    new-instance v1, Lcom/alibaba/fastjson/asm/Label;

    invoke-direct {v1}, Lcom/alibaba/fastjson/asm/Label;-><init>()V

    const/16 v2, 0x15

    const-string/jumbo v3, "seperator"

    .line 1024
    invoke-virtual {p4, v3}, Lcom/alibaba/fastjson/serializer/ASMSerializerFactory$Context;->var(Ljava/lang/String;)I

    move-result v3

    invoke-interface {p2, v2, v3}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitVarInsn(II)V

    const/16 v2, 0x10

    const/16 v3, 0x7b

    .line 1025
    invoke-interface {p2, v2, v3}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitIntInsn(II)V

    const/16 v2, 0xa0

    .line 1026
    invoke-interface {p2, v2, v0}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitJumpInsn(ILcom/alibaba/fastjson/asm/Label;)V

    const/16 v2, 0x19

    const-string/jumbo v3, "out"

    .line 1028
    invoke-virtual {p4, v3}, Lcom/alibaba/fastjson/serializer/ASMSerializerFactory$Context;->var(Ljava/lang/String;)I

    move-result v3

    invoke-interface {p2, v2, v3}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitVarInsn(II)V

    const/16 v2, 0x10

    const/16 v3, 0x7b

    .line 1029
    invoke-interface {p2, v2, v3}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitVarInsn(II)V

    const/16 v2, 0xb6

    .line 1030
    sget-object v3, Lcom/alibaba/fastjson/serializer/ASMSerializerFactory;->SerializeWriter:Ljava/lang/String;

    const-string/jumbo v4, "write"

    const-string/jumbo v5, "(I)V"

    invoke-interface {p2, v2, v3, v4, v5}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitMethodInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1032
    invoke-interface {p2, v0}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitLabel(Lcom/alibaba/fastjson/asm/Label;)V

    const/16 v0, 0x19

    const-string/jumbo v2, "out"

    .line 1034
    invoke-virtual {p4, v2}, Lcom/alibaba/fastjson/serializer/ASMSerializerFactory$Context;->var(Ljava/lang/String;)I

    move-result v2

    invoke-interface {p2, v0, v2}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitVarInsn(II)V

    const/16 v0, 0x10

    const/16 v2, 0x7d

    .line 1035
    invoke-interface {p2, v0, v2}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitVarInsn(II)V

    const/16 v0, 0xb6

    .line 1036
    sget-object v2, Lcom/alibaba/fastjson/serializer/ASMSerializerFactory;->SerializeWriter:Ljava/lang/String;

    const-string/jumbo v3, "write"

    const-string/jumbo v4, "(I)V"

    invoke-interface {p2, v0, v2, v3, v4}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitMethodInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1038
    invoke-interface {p2, v1}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitLabel(Lcom/alibaba/fastjson/asm/Label;)V

    .line 1039
    invoke-interface {p2, v8}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitLabel(Lcom/alibaba/fastjson/asm/Label;)V

    .line 1041
    invoke-static {p4}, Lcom/alibaba/fastjson/serializer/ASMSerializerFactory$Context;->access$200(Lcom/alibaba/fastjson/serializer/ASMSerializerFactory$Context;)Z

    move-result v0

    if-eqz v0, :cond_1d

    .line 1047
    :goto_d
    return-void

    .line 793
    :cond_1
    new-instance v2, Lcom/alibaba/fastjson/asm/Label;

    invoke-direct {v2}, Lcom/alibaba/fastjson/asm/Label;-><init>()V

    .line 794
    new-instance v3, Lcom/alibaba/fastjson/asm/Label;

    invoke-direct {v3}, Lcom/alibaba/fastjson/asm/Label;-><init>()V

    const/16 v0, 0x19

    const-string/jumbo v1, "out"

    .line 795
    invoke-virtual {p4, v1}, Lcom/alibaba/fastjson/serializer/ASMSerializerFactory$Context;->var(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p2, v0, v1}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitVarInsn(II)V

    .line 796
    sget-object v0, Lcom/alibaba/fastjson/serializer/SerializerFeature;->PrettyFormat:Lcom/alibaba/fastjson/serializer/SerializerFeature;

    iget v0, v0, Lcom/alibaba/fastjson/serializer/SerializerFeature;->mask:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p2, v0}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitLdcInsn(Ljava/lang/Object;)V

    const/16 v0, 0xb6

    .line 797
    sget-object v1, Lcom/alibaba/fastjson/serializer/ASMSerializerFactory;->SerializeWriter:Ljava/lang/String;

    const-string/jumbo v4, "isEnabled"

    const-string/jumbo v5, "(I)Z"

    invoke-interface {p2, v0, v1, v4, v5}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitMethodInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const/16 v0, 0x9a

    .line 798
    invoke-interface {p2, v0, v3}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitJumpInsn(ILcom/alibaba/fastjson/asm/Label;)V

    .line 800
    const/4 v1, 0x0

    .line 801
    array-length v4, p3

    const/4 v0, 0x0

    move v10, v0

    move v0, v1

    move v1, v10

    :goto_e
    if-lt v1, v4, :cond_2

    .line 807
    if-nez v0, :cond_4

    const/16 v0, 0xa7

    .line 813
    invoke-interface {p2, v0, v2}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitJumpInsn(ILcom/alibaba/fastjson/asm/Label;)V

    .line 816
    :goto_f
    invoke-interface {p2, v3}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitLabel(Lcom/alibaba/fastjson/asm/Label;)V

    const/16 v0, 0x19

    const/4 v1, 0x0

    .line 817
    invoke-interface {p2, v0, v1}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitVarInsn(II)V

    const/16 v0, 0x19

    const/4 v1, 0x1

    .line 818
    invoke-interface {p2, v0, v1}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitVarInsn(II)V

    const/16 v0, 0x19

    const/4 v1, 0x2

    .line 819
    invoke-interface {p2, v0, v1}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitVarInsn(II)V

    const/16 v0, 0x19

    const/4 v1, 0x3

    .line 820
    invoke-interface {p2, v0, v1}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitVarInsn(II)V

    const/16 v0, 0x19

    const/4 v1, 0x4

    .line 821
    invoke-interface {p2, v0, v1}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitVarInsn(II)V

    const/16 v0, 0x15

    const/4 v1, 0x5

    .line 822
    invoke-interface {p2, v0, v1}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitVarInsn(II)V

    const/16 v0, 0xb7

    .line 823
    sget-object v1, Lcom/alibaba/fastjson/serializer/ASMSerializerFactory;->JavaBeanSerializer:Ljava/lang/String;

    const-string/jumbo v3, "write"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "(L"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget-object v5, Lcom/alibaba/fastjson/serializer/ASMSerializerFactory;->JSONSerializer:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, ";Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/reflect/Type;I)V"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {p2, v0, v1, v3, v4}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitMethodInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const/16 v0, 0xb1

    .line 826
    invoke-interface {p2, v0}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitInsn(I)V

    .line 828
    invoke-interface {p2, v2}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitLabel(Lcom/alibaba/fastjson/asm/Label;)V

    goto/16 :goto_0

    .line 801
    :cond_2
    aget-object v5, p3, v1

    .line 802
    iget-object v5, v5, Lcom/alibaba/fastjson/util/FieldInfo;->method:Ljava/lang/reflect/Method;

    if-nez v5, :cond_3

    .line 801
    :goto_10
    add-int/lit8 v1, v1, 0x1

    goto :goto_e

    .line 803
    :cond_3
    const/4 v0, 0x1

    goto :goto_10

    :cond_4
    const/16 v0, 0x19

    const-string/jumbo v1, "out"

    .line 808
    invoke-virtual {p4, v1}, Lcom/alibaba/fastjson/serializer/ASMSerializerFactory$Context;->var(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p2, v0, v1}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitVarInsn(II)V

    .line 809
    sget-object v0, Lcom/alibaba/fastjson/serializer/SerializerFeature;->IgnoreErrorGetter:Lcom/alibaba/fastjson/serializer/SerializerFeature;

    iget v0, v0, Lcom/alibaba/fastjson/serializer/SerializerFeature;->mask:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p2, v0}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitLdcInsn(Ljava/lang/Object;)V

    const/16 v0, 0xb6

    .line 810
    sget-object v1, Lcom/alibaba/fastjson/serializer/ASMSerializerFactory;->SerializeWriter:Ljava/lang/String;

    const-string/jumbo v4, "isEnabled"

    const-string/jumbo v5, "(I)Z"

    invoke-interface {p2, v0, v1, v4, v5}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitMethodInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const/16 v0, 0x99

    .line 811
    invoke-interface {p2, v0, v2}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitJumpInsn(ILcom/alibaba/fastjson/asm/Label;)V

    goto/16 :goto_f

    .line 832
    :cond_5
    new-instance v0, Lcom/alibaba/fastjson/asm/Label;

    invoke-direct {v0}, Lcom/alibaba/fastjson/asm/Label;-><init>()V

    const/16 v1, 0x19

    const/4 v2, 0x0

    .line 835
    invoke-interface {p2, v1, v2}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitVarInsn(II)V

    const/16 v1, 0x19

    const/4 v2, 0x1

    .line 836
    invoke-interface {p2, v1, v2}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitVarInsn(II)V

    const/16 v1, 0x19

    const/4 v2, 0x2

    .line 837
    invoke-interface {p2, v1, v2}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitVarInsn(II)V

    const/16 v1, 0x15

    const/4 v2, 0x5

    .line 838
    invoke-interface {p2, v1, v2}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitVarInsn(II)V

    const/16 v1, 0xb6

    .line 839
    sget-object v2, Lcom/alibaba/fastjson/serializer/ASMSerializerFactory;->JavaBeanSerializer:Ljava/lang/String;

    const-string/jumbo v3, "writeReference"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "(L"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget-object v5, Lcom/alibaba/fastjson/serializer/ASMSerializerFactory;->JSONSerializer:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, ";Ljava/lang/Object;I)Z"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {p2, v1, v2, v3, v4}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitMethodInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const/16 v1, 0x99

    .line 842
    invoke-interface {p2, v1, v0}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitJumpInsn(ILcom/alibaba/fastjson/asm/Label;)V

    const/16 v1, 0xb1

    .line 844
    invoke-interface {p2, v1}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitInsn(I)V

    .line 846
    invoke-interface {p2, v0}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitLabel(Lcom/alibaba/fastjson/asm/Label;)V

    goto/16 :goto_1

    .line 852
    :cond_6
    invoke-static {p4}, Lcom/alibaba/fastjson/serializer/ASMSerializerFactory$Context;->access$200(Lcom/alibaba/fastjson/serializer/ASMSerializerFactory$Context;)Z

    move-result v0

    if-nez v0, :cond_7

    const-string/jumbo v0, "writeAsArray"

    goto/16 :goto_2

    :cond_7
    const-string/jumbo v0, "writeAsArrayNonContext"

    goto/16 :goto_2

    .line 862
    :cond_8
    new-instance v1, Lcom/alibaba/fastjson/asm/Label;

    invoke-direct {v1}, Lcom/alibaba/fastjson/asm/Label;-><init>()V

    const/16 v2, 0x19

    const-string/jumbo v3, "out"

    .line 864
    invoke-virtual {p4, v3}, Lcom/alibaba/fastjson/serializer/ASMSerializerFactory$Context;->var(Ljava/lang/String;)I

    move-result v3

    invoke-interface {p2, v2, v3}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitVarInsn(II)V

    .line 865
    sget-object v2, Lcom/alibaba/fastjson/serializer/SerializerFeature;->BeanToArray:Lcom/alibaba/fastjson/serializer/SerializerFeature;

    iget v2, v2, Lcom/alibaba/fastjson/serializer/SerializerFeature;->mask:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {p2, v2}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitLdcInsn(Ljava/lang/Object;)V

    const/16 v2, 0xb6

    .line 866
    sget-object v3, Lcom/alibaba/fastjson/serializer/ASMSerializerFactory;->SerializeWriter:Ljava/lang/String;

    const-string/jumbo v4, "isEnabled"

    const-string/jumbo v5, "(I)Z"

    invoke-interface {p2, v2, v3, v4, v5}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitMethodInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const/16 v2, 0x99

    .line 867
    invoke-interface {p2, v2, v1}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitJumpInsn(ILcom/alibaba/fastjson/asm/Label;)V

    const/16 v2, 0x19

    const/4 v3, 0x0

    .line 870
    invoke-interface {p2, v2, v3}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitVarInsn(II)V

    const/16 v2, 0x19

    const/4 v3, 0x1

    .line 871
    invoke-interface {p2, v2, v3}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitVarInsn(II)V

    const/16 v2, 0x19

    const/4 v3, 0x2

    .line 872
    invoke-interface {p2, v2, v3}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitVarInsn(II)V

    const/16 v2, 0x19

    const/4 v3, 0x3

    .line 873
    invoke-interface {p2, v2, v3}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitVarInsn(II)V

    const/16 v2, 0x19

    const/4 v3, 0x4

    .line 874
    invoke-interface {p2, v2, v3}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitVarInsn(II)V

    const/16 v2, 0x15

    const/4 v3, 0x5

    .line 875
    invoke-interface {p2, v2, v3}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitVarInsn(II)V

    const/16 v2, 0xb6

    .line 877
    invoke-static {p4}, Lcom/alibaba/fastjson/serializer/ASMSerializerFactory$Context;->access$300(Lcom/alibaba/fastjson/serializer/ASMSerializerFactory$Context;)Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "(L"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget-object v5, Lcom/alibaba/fastjson/serializer/ASMSerializerFactory;->JSONSerializer:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, ";Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/reflect/Type;I)V"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 876
    invoke-interface {p2, v2, v3, v0, v4}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitMethodInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const/16 v0, 0xb1

    .line 881
    invoke-interface {p2, v0}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitInsn(I)V

    .line 883
    invoke-interface {p2, v1}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitLabel(Lcom/alibaba/fastjson/asm/Label;)V

    goto/16 :goto_3

    :cond_9
    const/16 v0, 0x19

    const/4 v1, 0x1

    .line 899
    invoke-interface {p2, v0, v1}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitVarInsn(II)V

    const/16 v0, 0xb6

    .line 900
    sget-object v1, Lcom/alibaba/fastjson/serializer/ASMSerializerFactory;->JSONSerializer:Ljava/lang/String;

    const-string/jumbo v2, "getContext"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "()"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v4, Lcom/alibaba/fastjson/serializer/ASMSerializerFactory;->SerialContext_desc:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {p2, v0, v1, v2, v3}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitMethodInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const/16 v0, 0x3a

    const-string/jumbo v1, "parent"

    .line 901
    invoke-virtual {p4, v1}, Lcom/alibaba/fastjson/serializer/ASMSerializerFactory$Context;->var(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p2, v0, v1}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitVarInsn(II)V

    const/16 v0, 0x19

    const/4 v1, 0x1

    .line 903
    invoke-interface {p2, v0, v1}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitVarInsn(II)V

    const/16 v0, 0x19

    const-string/jumbo v1, "parent"

    .line 904
    invoke-virtual {p4, v1}, Lcom/alibaba/fastjson/serializer/ASMSerializerFactory$Context;->var(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p2, v0, v1}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitVarInsn(II)V

    const/16 v0, 0x19

    const/4 v1, 0x2

    .line 905
    invoke-interface {p2, v0, v1}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitVarInsn(II)V

    const/16 v0, 0x19

    const/4 v1, 0x3

    .line 906
    invoke-interface {p2, v0, v1}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitVarInsn(II)V

    .line 907
    invoke-static {p4}, Lcom/alibaba/fastjson/serializer/ASMSerializerFactory$Context;->access$400(Lcom/alibaba/fastjson/serializer/ASMSerializerFactory$Context;)Lcom/alibaba/fastjson/serializer/SerializeBeanInfo;

    move-result-object v0

    iget v0, v0, Lcom/alibaba/fastjson/serializer/SerializeBeanInfo;->features:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p2, v0}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitLdcInsn(Ljava/lang/Object;)V

    const/16 v0, 0xb6

    .line 908
    sget-object v1, Lcom/alibaba/fastjson/serializer/ASMSerializerFactory;->JSONSerializer:Ljava/lang/String;

    const-string/jumbo v2, "setContext"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v4, Lcom/alibaba/fastjson/serializer/ASMSerializerFactory;->SerialContext_desc:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "Ljava/lang/Object;Ljava/lang/Object;I)V"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {p2, v0, v1, v2, v3}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitMethodInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_4

    :cond_a
    const/4 v0, 0x1

    .line 912
    goto/16 :goto_5

    .line 915
    :cond_b
    invoke-static {p4}, Lcom/alibaba/fastjson/serializer/ASMSerializerFactory$Context;->access$000(Lcom/alibaba/fastjson/serializer/ASMSerializerFactory$Context;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/16 v0, 0x10

    const/16 v1, 0x7b

    .line 958
    invoke-interface {p2, v0, v1}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitVarInsn(II)V

    goto/16 :goto_8

    :cond_c
    const/16 v0, 0x19

    const/4 v4, 0x1

    .line 921
    invoke-interface {p2, v0, v4}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitVarInsn(II)V

    const/16 v0, 0x19

    const/4 v4, 0x4

    .line 922
    invoke-interface {p2, v0, v4}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitVarInsn(II)V

    const/16 v0, 0x19

    const/4 v4, 0x2

    .line 923
    invoke-interface {p2, v0, v4}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitVarInsn(II)V

    const/16 v0, 0xb6

    .line 924
    sget-object v4, Lcom/alibaba/fastjson/serializer/ASMSerializerFactory;->JSONSerializer:Ljava/lang/String;

    const-string/jumbo v5, "isWriteClassName"

    const-string/jumbo v6, "(Ljava/lang/reflect/Type;Ljava/lang/Object;)Z"

    invoke-interface {p2, v0, v4, v5, v6}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitMethodInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const/16 v0, 0x99

    .line 926
    invoke-interface {p2, v0, v2}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitJumpInsn(ILcom/alibaba/fastjson/asm/Label;)V

    goto/16 :goto_6

    .line 943
    :cond_d
    invoke-static {p4}, Lcom/alibaba/fastjson/serializer/ASMSerializerFactory$Context;->access$400(Lcom/alibaba/fastjson/serializer/ASMSerializerFactory$Context;)Lcom/alibaba/fastjson/serializer/SerializeBeanInfo;

    move-result-object v0

    iget-object v0, v0, Lcom/alibaba/fastjson/serializer/SerializeBeanInfo;->typeKey:Ljava/lang/String;

    invoke-interface {p2, v0}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitLdcInsn(Ljava/lang/Object;)V

    goto/16 :goto_7

    .line 964
    :cond_e
    invoke-direct {p0, p2, p4}, Lcom/alibaba/fastjson/serializer/ASMSerializerFactory;->_before(Lcom/alibaba/fastjson/asm/MethodVisitor;Lcom/alibaba/fastjson/serializer/ASMSerializerFactory$Context;)V

    goto/16 :goto_9

    :cond_f
    const/16 v0, 0x19

    const-string/jumbo v1, "out"

    .line 968
    invoke-virtual {p4, v1}, Lcom/alibaba/fastjson/serializer/ASMSerializerFactory$Context;->var(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p2, v0, v1}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitVarInsn(II)V

    const/16 v0, 0xb6

    .line 969
    sget-object v1, Lcom/alibaba/fastjson/serializer/ASMSerializerFactory;->SerializeWriter:Ljava/lang/String;

    const-string/jumbo v2, "isNotWriteDefaultValue"

    const-string/jumbo v3, "()Z"

    invoke-interface {p2, v0, v1, v2, v3}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitMethodInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const/16 v0, 0x36

    const-string/jumbo v1, "notWriteDefaultValue"

    .line 970
    invoke-virtual {p4, v1}, Lcom/alibaba/fastjson/serializer/ASMSerializerFactory$Context;->var(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p2, v0, v1}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitVarInsn(II)V

    const/16 v0, 0x19

    const/4 v1, 0x1

    .line 972
    invoke-interface {p2, v0, v1}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitVarInsn(II)V

    const/16 v0, 0x19

    const/4 v1, 0x0

    .line 973
    invoke-interface {p2, v0, v1}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitVarInsn(II)V

    const/16 v0, 0xb6

    .line 974
    sget-object v1, Lcom/alibaba/fastjson/serializer/ASMSerializerFactory;->JSONSerializer:Ljava/lang/String;

    const-string/jumbo v2, "checkValue"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v4, Lcom/alibaba/fastjson/serializer/ASMSerializerFactory;->SerializeFilterable_desc:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ")Z"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {p2, v0, v1, v2, v3}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitMethodInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const/16 v0, 0x36

    const-string/jumbo v1, "checkValue"

    .line 975
    invoke-virtual {p4, v1}, Lcom/alibaba/fastjson/serializer/ASMSerializerFactory$Context;->var(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p2, v0, v1}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitVarInsn(II)V

    const/16 v0, 0x19

    const/4 v1, 0x1

    .line 977
    invoke-interface {p2, v0, v1}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitVarInsn(II)V

    const/16 v0, 0x19

    const/4 v1, 0x0

    .line 978
    invoke-interface {p2, v0, v1}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitVarInsn(II)V

    const/16 v0, 0xb6

    .line 979
    sget-object v1, Lcom/alibaba/fastjson/serializer/ASMSerializerFactory;->JSONSerializer:Ljava/lang/String;

    const-string/jumbo v2, "hasNameFilters"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v4, Lcom/alibaba/fastjson/serializer/ASMSerializerFactory;->SerializeFilterable_desc:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ")Z"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {p2, v0, v1, v2, v3}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitMethodInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const/16 v0, 0x36

    const-string/jumbo v1, "hasNameFilters"

    .line 980
    invoke-virtual {p4, v1}, Lcom/alibaba/fastjson/serializer/ASMSerializerFactory$Context;->var(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p2, v0, v1}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitVarInsn(II)V

    goto/16 :goto_a

    .line 984
    :cond_10
    aget-object v3, p3, v7

    .line 985
    iget-object v0, v3, Lcom/alibaba/fastjson/util/FieldInfo;->fieldClass:Ljava/lang/Class;

    .line 987
    iget-object v1, v3, Lcom/alibaba/fastjson/util/FieldInfo;->name:Ljava/lang/String;

    invoke-interface {p2, v1}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitLdcInsn(Ljava/lang/Object;)V

    const/16 v1, 0x3a

    .line 988
    sget v2, Lcom/alibaba/fastjson/serializer/ASMSerializerFactory$Context;->fieldName:I

    invoke-interface {p2, v1, v2}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitVarInsn(II)V

    .line 990
    sget-object v1, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    if-ne v0, v1, :cond_12

    .line 993
    :cond_11
    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p4, v0}, Lcom/alibaba/fastjson/serializer/ASMSerializerFactory$Context;->var(Ljava/lang/String;)I

    move-result v5

    const/16 v6, 0x49

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v4, p4

    invoke-direct/range {v0 .. v6}, Lcom/alibaba/fastjson/serializer/ASMSerializerFactory;->_int(Ljava/lang/Class;Lcom/alibaba/fastjson/asm/MethodVisitor;Lcom/alibaba/fastjson/util/FieldInfo;Lcom/alibaba/fastjson/serializer/ASMSerializerFactory$Context;IC)V

    .line 983
    :goto_11
    add-int/lit8 v0, v7, 0x1

    move v7, v0

    goto/16 :goto_b

    .line 990
    :cond_12
    sget-object v1, Ljava/lang/Short;->TYPE:Ljava/lang/Class;

    if-eq v0, v1, :cond_11

    sget-object v1, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    if-eq v0, v1, :cond_11

    .line 994
    sget-object v1, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    if-eq v0, v1, :cond_13

    .line 996
    sget-object v1, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    if-eq v0, v1, :cond_14

    .line 998
    sget-object v1, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    if-eq v0, v1, :cond_15

    .line 1000
    sget-object v1, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    if-eq v0, v1, :cond_16

    .line 1002
    sget-object v1, Ljava/lang/Character;->TYPE:Ljava/lang/Class;

    if-eq v0, v1, :cond_17

    const-class v1, Ljava/lang/String;

    .line 1004
    if-eq v0, v1, :cond_18

    const-class v1, Ljava/math/BigDecimal;

    .line 1006
    if-eq v0, v1, :cond_19

    const-class v1, Ljava/util/List;

    .line 1008
    invoke-virtual {v1, v0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v1

    if-nez v1, :cond_1a

    .line 1010
    invoke-virtual {v0}, Ljava/lang/Class;->isEnum()Z

    move-result v0

    if-nez v0, :cond_1b

    .line 1013
    invoke-direct {p0, p1, p2, v3, p4}, Lcom/alibaba/fastjson/serializer/ASMSerializerFactory;->_object(Ljava/lang/Class;Lcom/alibaba/fastjson/asm/MethodVisitor;Lcom/alibaba/fastjson/util/FieldInfo;Lcom/alibaba/fastjson/serializer/ASMSerializerFactory$Context;)V

    goto :goto_11

    .line 995
    :cond_13
    invoke-direct {p0, p1, p2, v3, p4}, Lcom/alibaba/fastjson/serializer/ASMSerializerFactory;->_long(Ljava/lang/Class;Lcom/alibaba/fastjson/asm/MethodVisitor;Lcom/alibaba/fastjson/util/FieldInfo;Lcom/alibaba/fastjson/serializer/ASMSerializerFactory$Context;)V

    goto :goto_11

    .line 997
    :cond_14
    invoke-direct {p0, p1, p2, v3, p4}, Lcom/alibaba/fastjson/serializer/ASMSerializerFactory;->_float(Ljava/lang/Class;Lcom/alibaba/fastjson/asm/MethodVisitor;Lcom/alibaba/fastjson/util/FieldInfo;Lcom/alibaba/fastjson/serializer/ASMSerializerFactory$Context;)V

    goto :goto_11

    .line 999
    :cond_15
    invoke-direct {p0, p1, p2, v3, p4}, Lcom/alibaba/fastjson/serializer/ASMSerializerFactory;->_double(Ljava/lang/Class;Lcom/alibaba/fastjson/asm/MethodVisitor;Lcom/alibaba/fastjson/util/FieldInfo;Lcom/alibaba/fastjson/serializer/ASMSerializerFactory$Context;)V

    goto :goto_11

    :cond_16
    const-string/jumbo v0, "boolean"

    .line 1001
    invoke-virtual {p4, v0}, Lcom/alibaba/fastjson/serializer/ASMSerializerFactory$Context;->var(Ljava/lang/String;)I

    move-result v5

    const/16 v6, 0x5a

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v4, p4

    invoke-direct/range {v0 .. v6}, Lcom/alibaba/fastjson/serializer/ASMSerializerFactory;->_int(Ljava/lang/Class;Lcom/alibaba/fastjson/asm/MethodVisitor;Lcom/alibaba/fastjson/util/FieldInfo;Lcom/alibaba/fastjson/serializer/ASMSerializerFactory$Context;IC)V

    goto :goto_11

    :cond_17
    const-string/jumbo v0, "char"

    .line 1003
    invoke-virtual {p4, v0}, Lcom/alibaba/fastjson/serializer/ASMSerializerFactory$Context;->var(Ljava/lang/String;)I

    move-result v5

    const/16 v6, 0x43

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v4, p4

    invoke-direct/range {v0 .. v6}, Lcom/alibaba/fastjson/serializer/ASMSerializerFactory;->_int(Ljava/lang/Class;Lcom/alibaba/fastjson/asm/MethodVisitor;Lcom/alibaba/fastjson/util/FieldInfo;Lcom/alibaba/fastjson/serializer/ASMSerializerFactory$Context;IC)V

    goto :goto_11

    .line 1005
    :cond_18
    invoke-direct {p0, p1, p2, v3, p4}, Lcom/alibaba/fastjson/serializer/ASMSerializerFactory;->_string(Ljava/lang/Class;Lcom/alibaba/fastjson/asm/MethodVisitor;Lcom/alibaba/fastjson/util/FieldInfo;Lcom/alibaba/fastjson/serializer/ASMSerializerFactory$Context;)V

    goto :goto_11

    .line 1007
    :cond_19
    invoke-direct {p0, p1, p2, v3, p4}, Lcom/alibaba/fastjson/serializer/ASMSerializerFactory;->_decimal(Ljava/lang/Class;Lcom/alibaba/fastjson/asm/MethodVisitor;Lcom/alibaba/fastjson/util/FieldInfo;Lcom/alibaba/fastjson/serializer/ASMSerializerFactory$Context;)V

    goto :goto_11

    .line 1009
    :cond_1a
    invoke-direct {p0, p1, p2, v3, p4}, Lcom/alibaba/fastjson/serializer/ASMSerializerFactory;->_list(Ljava/lang/Class;Lcom/alibaba/fastjson/asm/MethodVisitor;Lcom/alibaba/fastjson/util/FieldInfo;Lcom/alibaba/fastjson/serializer/ASMSerializerFactory$Context;)V

    goto :goto_11

    .line 1011
    :cond_1b
    invoke-direct {p0, p1, p2, v3, p4}, Lcom/alibaba/fastjson/serializer/ASMSerializerFactory;->_enum(Ljava/lang/Class;Lcom/alibaba/fastjson/asm/MethodVisitor;Lcom/alibaba/fastjson/util/FieldInfo;Lcom/alibaba/fastjson/serializer/ASMSerializerFactory$Context;)V

    goto :goto_11

    .line 1018
    :cond_1c
    invoke-direct {p0, p2, p4}, Lcom/alibaba/fastjson/serializer/ASMSerializerFactory;->_after(Lcom/alibaba/fastjson/asm/MethodVisitor;Lcom/alibaba/fastjson/serializer/ASMSerializerFactory$Context;)V

    goto/16 :goto_c

    :cond_1d
    const/16 v0, 0x19

    const/4 v1, 0x1

    .line 1042
    invoke-interface {p2, v0, v1}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitVarInsn(II)V

    const/16 v0, 0x19

    const-string/jumbo v1, "parent"

    .line 1043
    invoke-virtual {p4, v1}, Lcom/alibaba/fastjson/serializer/ASMSerializerFactory$Context;->var(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p2, v0, v1}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitVarInsn(II)V

    const/16 v0, 0xb6

    .line 1044
    sget-object v1, Lcom/alibaba/fastjson/serializer/ASMSerializerFactory;->JSONSerializer:Ljava/lang/String;

    const-string/jumbo v2, "setContext"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v4, Lcom/alibaba/fastjson/serializer/ASMSerializerFactory;->SerialContext_desc:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ")V"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {p2, v0, v1, v2, v3}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitMethodInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_d
.end method


# virtual methods
.method public createJavaBeanSerializer(Lcom/alibaba/fastjson/serializer/SerializeBeanInfo;)Lcom/alibaba/fastjson/serializer/JavaBeanSerializer;
    .locals 27
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 107
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/alibaba/fastjson/serializer/SerializeBeanInfo;->beanType:Ljava/lang/Class;

    move-object/from16 v24, v0

    .line 108
    invoke-virtual/range {v24 .. v24}, Ljava/lang/Class;->isPrimitive()Z

    move-result v4

    if-nez v4, :cond_1

    const-class v4, Lcom/alibaba/fastjson/annotation/JSONType;

    .line 112
    move-object/from16 v0, v24

    invoke-static {v0, v4}, Lcom/alibaba/fastjson/util/TypeUtils;->getAnnotation(Ljava/lang/Class;Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v4

    move-object/from16 v21, v4

    check-cast v21, Lcom/alibaba/fastjson/annotation/JSONType;

    .line 114
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/alibaba/fastjson/serializer/SerializeBeanInfo;->fields:[Lcom/alibaba/fastjson/util/FieldInfo;

    move-object/from16 v25, v0

    .line 116
    move-object/from16 v0, v25

    array-length v5, v0

    const/4 v4, 0x0

    :goto_0
    if-lt v4, v5, :cond_2

    .line 124
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/alibaba/fastjson/serializer/SerializeBeanInfo;->sortedFields:[Lcom/alibaba/fastjson/util/FieldInfo;

    move-object/from16 v26, v0

    .line 126
    move-object/from16 v0, p1

    iget-object v4, v0, Lcom/alibaba/fastjson/serializer/SerializeBeanInfo;->sortedFields:[Lcom/alibaba/fastjson/util/FieldInfo;

    move-object/from16 v0, p1

    iget-object v5, v0, Lcom/alibaba/fastjson/serializer/SerializeBeanInfo;->fields:[Lcom/alibaba/fastjson/util/FieldInfo;

    if-eq v4, v5, :cond_5

    const/4 v4, 0x0

    move/from16 v22, v4

    .line 128
    :goto_1
    move-object/from16 v0, v26

    array-length v4, v0

    const/16 v5, 0x100

    if-gt v4, v5, :cond_6

    .line 132
    move-object/from16 v0, v26

    array-length v5, v0

    const/4 v4, 0x0

    :goto_2
    if-lt v4, v5, :cond_7

    .line 138
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "ASMSerializer_"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/alibaba/fastjson/serializer/ASMSerializerFactory;->seed:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v5}, Ljava/util/concurrent/atomic/AtomicLong;->incrementAndGet()J

    move-result-wide v6

    invoke-virtual {v4, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, "_"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual/range {v24 .. v24}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-class v5, Lcom/alibaba/fastjson/serializer/ASMSerializerFactory;

    .line 141
    invoke-virtual {v5}, Ljava/lang/Class;->getPackage()Ljava/lang/Package;

    move-result-object v5

    .line 142
    if-nez v5, :cond_9

    move-object/from16 v23, v4

    move-object v7, v4

    :goto_3
    const-class v4, Lcom/alibaba/fastjson/serializer/ASMSerializerFactory;

    .line 151
    invoke-virtual {v4}, Ljava/lang/Class;->getPackage()Ljava/lang/Package;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Package;->getName()Ljava/lang/String;

    .line 154
    new-instance v4, Lcom/alibaba/fastjson/asm/ClassWriter;

    invoke-direct {v4}, Lcom/alibaba/fastjson/asm/ClassWriter;-><init>()V

    const/16 v5, 0x31

    const/16 v6, 0x21

    .line 155
    sget-object v8, Lcom/alibaba/fastjson/serializer/ASMSerializerFactory;->JavaBeanSerializer:Ljava/lang/String;

    const/4 v9, 0x1

    new-array v9, v9, [Ljava/lang/String;

    const/4 v10, 0x0

    sget-object v11, Lcom/alibaba/fastjson/serializer/ASMSerializerFactory;->ObjectSerializer:Ljava/lang/String;

    aput-object v11, v9, v10

    invoke-virtual/range {v4 .. v9}, Lcom/alibaba/fastjson/asm/ClassWriter;->visit(IILjava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V

    .line 162
    move-object/from16 v0, v26

    array-length v6, v0

    const/4 v5, 0x0

    :goto_4
    if-lt v5, v6, :cond_a

    .line 182
    new-instance v8, Lcom/alibaba/fastjson/asm/MethodWriter;

    const/4 v10, 0x1

    const-string/jumbo v11, "<init>"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "("

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-class v6, Lcom/alibaba/fastjson/serializer/SerializeBeanInfo;

    invoke-static {v6}, Lcom/alibaba/fastjson/util/ASMUtils;->desc(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, ")V"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    const/4 v13, 0x0

    const/4 v14, 0x0

    move-object v9, v4

    invoke-direct/range {v8 .. v14}, Lcom/alibaba/fastjson/asm/MethodWriter;-><init>(Lcom/alibaba/fastjson/asm/ClassWriter;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V

    const/16 v5, 0x19

    const/4 v6, 0x0

    .line 183
    invoke-interface {v8, v5, v6}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitVarInsn(II)V

    const/16 v5, 0x19

    const/4 v6, 0x1

    .line 184
    invoke-interface {v8, v5, v6}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitVarInsn(II)V

    const/16 v5, 0xb7

    .line 185
    sget-object v6, Lcom/alibaba/fastjson/serializer/ASMSerializerFactory;->JavaBeanSerializer:Ljava/lang/String;

    const-string/jumbo v9, "<init>"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "("

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-class v11, Lcom/alibaba/fastjson/serializer/SerializeBeanInfo;

    invoke-static {v11}, Lcom/alibaba/fastjson/util/ASMUtils;->desc(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string/jumbo v11, ")V"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-interface {v8, v5, v6, v9, v10}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitMethodInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const/4 v5, 0x0

    .line 188
    :goto_5
    move-object/from16 v0, v26

    array-length v6, v0

    if-lt v5, v6, :cond_e

    const/16 v5, 0xb1

    .line 213
    invoke-interface {v8, v5}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitInsn(I)V

    const/4 v5, 0x4

    const/4 v6, 0x4

    .line 214
    invoke-interface {v8, v5, v6}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitMaxs(II)V

    .line 215
    invoke-interface {v8}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitEnd()V

    .line 217
    const/4 v5, 0x0

    .line 218
    if-nez v21, :cond_12

    :cond_0
    :goto_6
    const/4 v6, 0x0

    :goto_7
    const/4 v8, 0x3

    .line 230
    if-lt v6, v8, :cond_14

    .line 348
    if-eqz v22, :cond_1d

    :goto_8
    const/4 v6, 0x0

    move/from16 v16, v6

    :goto_9
    const/4 v6, 0x3

    .line 375
    move/from16 v0, v16

    if-lt v0, v6, :cond_1e

    .line 410
    invoke-virtual {v4}, Lcom/alibaba/fastjson/asm/ClassWriter;->toByteArray()[B

    move-result-object v4

    .line 412
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/alibaba/fastjson/serializer/ASMSerializerFactory;->classLoader:Lcom/alibaba/fastjson/util/ASMClassLoader;

    const/4 v6, 0x0

    array-length v7, v4

    move-object/from16 v0, v23

    invoke-virtual {v5, v0, v4, v6, v7}, Lcom/alibaba/fastjson/util/ASMClassLoader;->defineClassPublic(Ljava/lang/String;[BII)Ljava/lang/Class;

    move-result-object v4

    const/4 v5, 0x1

    .line 413
    new-array v5, v5, [Ljava/lang/Class;

    const/4 v6, 0x0

    const-class v7, Lcom/alibaba/fastjson/serializer/SerializeBeanInfo;

    aput-object v7, v5, v6

    invoke-virtual {v4, v5}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v4

    const/4 v5, 0x1

    .line 414
    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object p1, v5, v6

    invoke-virtual {v4, v5}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    .line 416
    check-cast v4, Lcom/alibaba/fastjson/serializer/JavaBeanSerializer;

    return-object v4

    .line 109
    :cond_1
    new-instance v4, Lcom/alibaba/fastjson/JSONException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "unsupportd class "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual/range {v24 .. v24}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 116
    :cond_2
    aget-object v6, v25, v4

    .line 117
    iget-object v7, v6, Lcom/alibaba/fastjson/util/FieldInfo;->field:Ljava/lang/reflect/Field;

    if-eqz v7, :cond_4

    .line 116
    :cond_3
    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_0

    .line 117
    :cond_4
    iget-object v7, v6, Lcom/alibaba/fastjson/util/FieldInfo;->method:Ljava/lang/reflect/Method;

    if-eqz v7, :cond_3

    iget-object v6, v6, Lcom/alibaba/fastjson/util/FieldInfo;->method:Ljava/lang/reflect/Method;

    .line 119
    invoke-virtual {v6}, Ljava/lang/reflect/Method;->getDeclaringClass()Ljava/lang/Class;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Class;->isInterface()Z

    move-result v6

    if-eqz v6, :cond_3

    .line 120
    new-instance v4, Lcom/alibaba/fastjson/serializer/JavaBeanSerializer;

    move-object/from16 v0, p1

    invoke-direct {v4, v0}, Lcom/alibaba/fastjson/serializer/JavaBeanSerializer;-><init>(Lcom/alibaba/fastjson/serializer/SerializeBeanInfo;)V

    return-object v4

    :cond_5
    const/4 v4, 0x1

    move/from16 v22, v4

    .line 126
    goto/16 :goto_1

    .line 129
    :cond_6
    new-instance v4, Lcom/alibaba/fastjson/serializer/JavaBeanSerializer;

    move-object/from16 v0, p1

    invoke-direct {v4, v0}, Lcom/alibaba/fastjson/serializer/JavaBeanSerializer;-><init>(Lcom/alibaba/fastjson/serializer/SerializeBeanInfo;)V

    return-object v4

    .line 132
    :cond_7
    aget-object v6, v26, v4

    .line 133
    invoke-virtual {v6}, Lcom/alibaba/fastjson/util/FieldInfo;->getMember()Ljava/lang/reflect/Member;

    move-result-object v6

    invoke-interface {v6}, Ljava/lang/reflect/Member;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/alibaba/fastjson/util/ASMUtils;->checkName(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_8

    .line 132
    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_2

    .line 134
    :cond_8
    new-instance v4, Lcom/alibaba/fastjson/serializer/JavaBeanSerializer;

    move-object/from16 v0, p1

    invoke-direct {v4, v0}, Lcom/alibaba/fastjson/serializer/JavaBeanSerializer;-><init>(Lcom/alibaba/fastjson/serializer/SerializeBeanInfo;)V

    return-object v4

    .line 143
    :cond_9
    invoke-virtual {v5}, Ljava/lang/Package;->getName()Ljava/lang/String;

    move-result-object v5

    .line 144
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v7, 0x2e

    const/16 v8, 0x2f

    invoke-virtual {v5, v7, v8}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, "/"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 145
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, "."

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v23, v4

    .line 146
    goto/16 :goto_3

    .line 162
    :cond_a
    aget-object v8, v26, v5

    .line 163
    iget-object v9, v8, Lcom/alibaba/fastjson/util/FieldInfo;->fieldClass:Ljava/lang/Class;

    invoke-virtual {v9}, Ljava/lang/Class;->isPrimitive()Z

    move-result v9

    if-eqz v9, :cond_c

    .line 162
    :cond_b
    :goto_a
    add-int/lit8 v5, v5, 0x1

    goto/16 :goto_4

    .line 163
    :cond_c
    iget-object v9, v8, Lcom/alibaba/fastjson/util/FieldInfo;->fieldClass:Ljava/lang/Class;

    const-class v10, Ljava/lang/String;

    if-eq v9, v10, :cond_b

    .line 169
    new-instance v9, Lcom/alibaba/fastjson/asm/FieldWriter;

    const/4 v10, 0x1

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v12, v8, Lcom/alibaba/fastjson/util/FieldInfo;->name:Ljava/lang/String;

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string/jumbo v12, "_asm_fieldType"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    const-string/jumbo v12, "Ljava/lang/reflect/Type;"

    invoke-direct {v9, v4, v10, v11, v12}, Lcom/alibaba/fastjson/asm/FieldWriter;-><init>(Lcom/alibaba/fastjson/asm/ClassWriter;ILjava/lang/String;Ljava/lang/String;)V

    .line 170
    invoke-virtual {v9}, Lcom/alibaba/fastjson/asm/FieldWriter;->visitEnd()V

    const-class v9, Ljava/util/List;

    .line 172
    iget-object v10, v8, Lcom/alibaba/fastjson/util/FieldInfo;->fieldClass:Ljava/lang/Class;

    invoke-virtual {v9, v10}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v9

    if-nez v9, :cond_d

    .line 178
    :goto_b
    new-instance v9, Lcom/alibaba/fastjson/asm/FieldWriter;

    const/4 v10, 0x1

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v8, v8, Lcom/alibaba/fastjson/util/FieldInfo;->name:Ljava/lang/String;

    invoke-virtual {v11, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v11, "_asm_ser_"

    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    sget-object v11, Lcom/alibaba/fastjson/serializer/ASMSerializerFactory;->ObjectSerializer_desc:Ljava/lang/String;

    invoke-direct {v9, v4, v10, v8, v11}, Lcom/alibaba/fastjson/asm/FieldWriter;-><init>(Lcom/alibaba/fastjson/asm/ClassWriter;ILjava/lang/String;Ljava/lang/String;)V

    .line 179
    invoke-virtual {v9}, Lcom/alibaba/fastjson/asm/FieldWriter;->visitEnd()V

    goto :goto_a

    .line 173
    :cond_d
    new-instance v9, Lcom/alibaba/fastjson/asm/FieldWriter;

    const/4 v10, 0x1

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v12, v8, Lcom/alibaba/fastjson/util/FieldInfo;->name:Ljava/lang/String;

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string/jumbo v12, "_asm_list_item_ser_"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    sget-object v12, Lcom/alibaba/fastjson/serializer/ASMSerializerFactory;->ObjectSerializer_desc:Ljava/lang/String;

    invoke-direct {v9, v4, v10, v11, v12}, Lcom/alibaba/fastjson/asm/FieldWriter;-><init>(Lcom/alibaba/fastjson/asm/ClassWriter;ILjava/lang/String;Ljava/lang/String;)V

    .line 175
    invoke-virtual {v9}, Lcom/alibaba/fastjson/asm/FieldWriter;->visitEnd()V

    goto :goto_b

    .line 189
    :cond_e
    aget-object v6, v26, v5

    .line 190
    iget-object v9, v6, Lcom/alibaba/fastjson/util/FieldInfo;->fieldClass:Ljava/lang/Class;

    invoke-virtual {v9}, Ljava/lang/Class;->isPrimitive()Z

    move-result v9

    if-eqz v9, :cond_10

    .line 188
    :cond_f
    :goto_c
    add-int/lit8 v5, v5, 0x1

    goto/16 :goto_5

    .line 190
    :cond_10
    iget-object v9, v6, Lcom/alibaba/fastjson/util/FieldInfo;->fieldClass:Ljava/lang/Class;

    const-class v10, Ljava/lang/String;

    if-eq v9, v10, :cond_f

    const/16 v9, 0x19

    const/4 v10, 0x0

    .line 196
    invoke-interface {v8, v9, v10}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitVarInsn(II)V

    .line 198
    iget-object v9, v6, Lcom/alibaba/fastjson/util/FieldInfo;->method:Ljava/lang/reflect/Method;

    if-nez v9, :cond_11

    const/16 v9, 0x19

    const/4 v10, 0x0

    .line 205
    invoke-interface {v8, v9, v10}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitVarInsn(II)V

    .line 206
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-interface {v8, v9}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitLdcInsn(Ljava/lang/Object;)V

    const/16 v9, 0xb7

    .line 207
    sget-object v10, Lcom/alibaba/fastjson/serializer/ASMSerializerFactory;->JavaBeanSerializer:Ljava/lang/String;

    const-string/jumbo v11, "getFieldType"

    const-string/jumbo v12, "(I)Ljava/lang/reflect/Type;"

    invoke-interface {v8, v9, v10, v11, v12}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitMethodInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :goto_d
    const/16 v9, 0xb5

    .line 210
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v6, v6, Lcom/alibaba/fastjson/util/FieldInfo;->name:Ljava/lang/String;

    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v10, "_asm_fieldType"

    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const-string/jumbo v10, "Ljava/lang/reflect/Type;"

    invoke-interface {v8, v9, v7, v6, v10}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitFieldInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_c

    .line 199
    :cond_11
    iget-object v9, v6, Lcom/alibaba/fastjson/util/FieldInfo;->declaringClass:Ljava/lang/Class;

    invoke-static {v9}, Lcom/alibaba/fastjson/util/ASMUtils;->desc(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Lcom/alibaba/fastjson/asm/Type;->getType(Ljava/lang/String;)Lcom/alibaba/fastjson/asm/Type;

    move-result-object v9

    invoke-interface {v8, v9}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitLdcInsn(Ljava/lang/Object;)V

    .line 200
    iget-object v9, v6, Lcom/alibaba/fastjson/util/FieldInfo;->method:Ljava/lang/reflect/Method;

    invoke-virtual {v9}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v9

    invoke-interface {v8, v9}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitLdcInsn(Ljava/lang/Object;)V

    const/16 v9, 0xb8

    const-class v10, Lcom/alibaba/fastjson/util/ASMUtils;

    .line 201
    invoke-static {v10}, Lcom/alibaba/fastjson/util/ASMUtils;->type(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v10

    const-string/jumbo v11, "getMethodType"

    const-string/jumbo v12, "(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Type;"

    invoke-interface {v8, v9, v10, v11, v12}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitMethodInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_d

    .line 219
    :cond_12
    invoke-interface/range {v21 .. v21}, Lcom/alibaba/fastjson/annotation/JSONType;->serialzeFeatures()[Lcom/alibaba/fastjson/serializer/SerializerFeature;

    move-result-object v8

    array-length v9, v8

    const/4 v6, 0x0

    :goto_e
    if-ge v6, v9, :cond_0

    aget-object v10, v8, v6

    .line 220
    sget-object v11, Lcom/alibaba/fastjson/serializer/SerializerFeature;->DisableCircularReferenceDetect:Lcom/alibaba/fastjson/serializer/SerializerFeature;

    if-eq v10, v11, :cond_13

    .line 219
    add-int/lit8 v6, v6, 0x1

    goto :goto_e

    .line 221
    :cond_13
    const/4 v5, 0x1

    goto/16 :goto_6

    .line 233
    :cond_14
    const/4 v12, 0x0

    .line 234
    if-eqz v6, :cond_17

    const/4 v8, 0x1

    .line 237
    if-eq v6, v8, :cond_18

    .line 240
    const/4 v12, 0x1

    .line 241
    const/4 v13, 0x1

    const-string/jumbo v17, "writeDirectNonContext"

    .line 245
    :goto_f
    new-instance v8, Lcom/alibaba/fastjson/serializer/ASMSerializerFactory$Context;

    move-object/from16 v9, v26

    move-object/from16 v10, p1

    move-object v11, v7

    invoke-direct/range {v8 .. v13}, Lcom/alibaba/fastjson/serializer/ASMSerializerFactory$Context;-><init>([Lcom/alibaba/fastjson/util/FieldInfo;Lcom/alibaba/fastjson/serializer/SerializeBeanInfo;Ljava/lang/String;ZZ)V

    .line 248
    new-instance v14, Lcom/alibaba/fastjson/asm/MethodWriter;

    const/16 v16, 0x1

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "(L"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    sget-object v10, Lcom/alibaba/fastjson/serializer/ASMSerializerFactory;->JSONSerializer:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string/jumbo v10, ";Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/reflect/Type;I)V"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    const/4 v9, 0x1

    new-array v0, v9, [Ljava/lang/String;

    move-object/from16 v20, v0

    const/4 v9, 0x0

    const-string/jumbo v10, "java/io/IOException"

    aput-object v10, v20, v9

    const/16 v19, 0x0

    move-object v15, v4

    invoke-direct/range {v14 .. v20}, Lcom/alibaba/fastjson/asm/MethodWriter;-><init>(Lcom/alibaba/fastjson/asm/ClassWriter;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V

    .line 258
    new-instance v9, Lcom/alibaba/fastjson/asm/Label;

    invoke-direct {v9}, Lcom/alibaba/fastjson/asm/Label;-><init>()V

    const/16 v10, 0x19

    const/4 v11, 0x2

    .line 259
    invoke-interface {v14, v10, v11}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitVarInsn(II)V

    const/16 v10, 0xc7

    .line 261
    invoke-interface {v14, v10, v9}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitJumpInsn(ILcom/alibaba/fastjson/asm/Label;)V

    const/16 v10, 0x19

    const/4 v11, 0x1

    .line 262
    invoke-interface {v14, v10, v11}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitVarInsn(II)V

    const/16 v10, 0xb6

    .line 263
    sget-object v11, Lcom/alibaba/fastjson/serializer/ASMSerializerFactory;->JSONSerializer:Ljava/lang/String;

    const-string/jumbo v12, "writeNull"

    const-string/jumbo v15, "()V"

    invoke-interface {v14, v10, v11, v12, v15}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitMethodInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const/16 v10, 0xb1

    .line 266
    invoke-interface {v14, v10}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitInsn(I)V

    .line 267
    invoke-interface {v14, v9}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitLabel(Lcom/alibaba/fastjson/asm/Label;)V

    const/16 v9, 0x19

    const/4 v10, 0x1

    .line 270
    invoke-interface {v14, v9, v10}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitVarInsn(II)V

    const/16 v9, 0xb4

    .line 271
    sget-object v10, Lcom/alibaba/fastjson/serializer/ASMSerializerFactory;->JSONSerializer:Ljava/lang/String;

    const-string/jumbo v11, "out"

    sget-object v12, Lcom/alibaba/fastjson/serializer/ASMSerializerFactory;->SerializeWriter_desc:Ljava/lang/String;

    invoke-interface {v14, v9, v10, v11, v12}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitFieldInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const/16 v9, 0x3a

    const-string/jumbo v10, "out"

    .line 272
    invoke-virtual {v8, v10}, Lcom/alibaba/fastjson/serializer/ASMSerializerFactory$Context;->var(Ljava/lang/String;)I

    move-result v10

    invoke-interface {v14, v9, v10}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitVarInsn(II)V

    .line 274
    if-eqz v22, :cond_19

    .line 300
    :cond_15
    :goto_10
    invoke-static {v8}, Lcom/alibaba/fastjson/serializer/ASMSerializerFactory$Context;->access$000(Lcom/alibaba/fastjson/serializer/ASMSerializerFactory$Context;)Z

    move-result v9

    if-nez v9, :cond_1c

    :cond_16
    :goto_11
    const/16 v9, 0x19

    const/4 v10, 0x2

    .line 339
    invoke-interface {v14, v9, v10}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitVarInsn(II)V

    const/16 v9, 0xc0

    .line 340
    invoke-static/range {v24 .. v24}, Lcom/alibaba/fastjson/util/ASMUtils;->type(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v10

    invoke-interface {v14, v9, v10}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitTypeInsn(ILjava/lang/String;)V

    const/16 v9, 0x3a

    const-string/jumbo v10, "entity"

    .line 341
    invoke-virtual {v8, v10}, Lcom/alibaba/fastjson/serializer/ASMSerializerFactory$Context;->var(Ljava/lang/String;)I

    move-result v10

    invoke-interface {v14, v9, v10}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitVarInsn(II)V

    .line 342
    move-object/from16 v0, p0

    move-object/from16 v1, v24

    move-object/from16 v2, v26

    invoke-direct {v0, v1, v14, v2, v8}, Lcom/alibaba/fastjson/serializer/ASMSerializerFactory;->generateWriteMethod(Ljava/lang/Class;Lcom/alibaba/fastjson/asm/MethodVisitor;[Lcom/alibaba/fastjson/util/FieldInfo;Lcom/alibaba/fastjson/serializer/ASMSerializerFactory$Context;)V

    const/16 v9, 0xb1

    .line 343
    invoke-interface {v14, v9}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitInsn(I)V

    const/4 v9, 0x7

    .line 344
    invoke-static {v8}, Lcom/alibaba/fastjson/serializer/ASMSerializerFactory$Context;->access$100(Lcom/alibaba/fastjson/serializer/ASMSerializerFactory$Context;)I

    move-result v8

    add-int/lit8 v8, v8, 0x2

    invoke-interface {v14, v9, v8}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitMaxs(II)V

    .line 345
    invoke-interface {v14}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitEnd()V

    .line 230
    add-int/lit8 v6, v6, 0x1

    goto/16 :goto_7

    :cond_17
    const-string/jumbo v17, "write"

    .line 236
    const/4 v12, 0x1

    move v13, v5

    goto/16 :goto_f

    :cond_18
    const-string/jumbo v17, "writeNormal"

    move v13, v5

    .line 238
    goto/16 :goto_f

    .line 275
    :cond_19
    invoke-static {v8}, Lcom/alibaba/fastjson/serializer/ASMSerializerFactory$Context;->access$000(Lcom/alibaba/fastjson/serializer/ASMSerializerFactory$Context;)Z

    move-result v9

    if-nez v9, :cond_15

    .line 277
    if-nez v21, :cond_1b

    .line 278
    :cond_1a
    new-instance v9, Lcom/alibaba/fastjson/asm/Label;

    invoke-direct {v9}, Lcom/alibaba/fastjson/asm/Label;-><init>()V

    const/16 v10, 0x19

    const-string/jumbo v11, "out"

    .line 280
    invoke-virtual {v8, v11}, Lcom/alibaba/fastjson/serializer/ASMSerializerFactory$Context;->var(Ljava/lang/String;)I

    move-result v11

    invoke-interface {v14, v10, v11}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitVarInsn(II)V

    const/16 v10, 0xb6

    .line 281
    sget-object v11, Lcom/alibaba/fastjson/serializer/ASMSerializerFactory;->SerializeWriter:Ljava/lang/String;

    const-string/jumbo v12, "isSortField"

    const-string/jumbo v15, "()Z"

    invoke-interface {v14, v10, v11, v12, v15}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitMethodInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const/16 v10, 0x9a

    .line 283
    invoke-interface {v14, v10, v9}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitJumpInsn(ILcom/alibaba/fastjson/asm/Label;)V

    const/16 v10, 0x19

    const/4 v11, 0x0

    .line 284
    invoke-interface {v14, v10, v11}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitVarInsn(II)V

    const/16 v10, 0x19

    const/4 v11, 0x1

    .line 285
    invoke-interface {v14, v10, v11}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitVarInsn(II)V

    const/16 v10, 0x19

    const/4 v11, 0x2

    .line 286
    invoke-interface {v14, v10, v11}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitVarInsn(II)V

    const/16 v10, 0x19

    const/4 v11, 0x3

    .line 287
    invoke-interface {v14, v10, v11}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitVarInsn(II)V

    const/16 v10, 0x19

    const/4 v11, 0x4

    .line 288
    invoke-interface {v14, v10, v11}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitVarInsn(II)V

    const/16 v10, 0x15

    const/4 v11, 0x5

    .line 289
    invoke-interface {v14, v10, v11}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitVarInsn(II)V

    const/16 v10, 0xb6

    const-string/jumbo v11, "writeUnsorted"

    .line 290
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v15, "(L"

    invoke-virtual {v12, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    sget-object v15, Lcom/alibaba/fastjson/serializer/ASMSerializerFactory;->JSONSerializer:Ljava/lang/String;

    invoke-virtual {v12, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string/jumbo v15, ";Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/reflect/Type;I)V"

    invoke-virtual {v12, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-interface {v14, v10, v7, v11, v12}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitMethodInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const/16 v10, 0xb1

    .line 293
    invoke-interface {v14, v10}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitInsn(I)V

    .line 295
    invoke-interface {v14, v9}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitLabel(Lcom/alibaba/fastjson/asm/Label;)V

    goto/16 :goto_10

    .line 277
    :cond_1b
    invoke-interface/range {v21 .. v21}, Lcom/alibaba/fastjson/annotation/JSONType;->alphabetic()Z

    move-result v9

    if-nez v9, :cond_1a

    goto/16 :goto_10

    .line 300
    :cond_1c
    if-nez v13, :cond_16

    .line 301
    new-instance v9, Lcom/alibaba/fastjson/asm/Label;

    invoke-direct {v9}, Lcom/alibaba/fastjson/asm/Label;-><init>()V

    .line 302
    new-instance v10, Lcom/alibaba/fastjson/asm/Label;

    invoke-direct {v10}, Lcom/alibaba/fastjson/asm/Label;-><init>()V

    const/16 v11, 0x19

    const/4 v12, 0x0

    .line 304
    invoke-interface {v14, v11, v12}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitVarInsn(II)V

    const/16 v11, 0x19

    const/4 v12, 0x1

    .line 305
    invoke-interface {v14, v11, v12}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitVarInsn(II)V

    const/16 v11, 0xb6

    .line 306
    sget-object v12, Lcom/alibaba/fastjson/serializer/ASMSerializerFactory;->JavaBeanSerializer:Ljava/lang/String;

    const-string/jumbo v13, "writeDirect"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v16, "(L"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    sget-object v16, Lcom/alibaba/fastjson/serializer/ASMSerializerFactory;->JSONSerializer:Ljava/lang/String;

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string/jumbo v16, ";)Z"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-interface {v14, v11, v12, v13, v15}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitMethodInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const/16 v11, 0x9a

    .line 307
    invoke-interface {v14, v11, v10}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitJumpInsn(ILcom/alibaba/fastjson/asm/Label;)V

    const/16 v11, 0x19

    const/4 v12, 0x0

    .line 309
    invoke-interface {v14, v11, v12}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitVarInsn(II)V

    const/16 v11, 0x19

    const/4 v12, 0x1

    .line 310
    invoke-interface {v14, v11, v12}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitVarInsn(II)V

    const/16 v11, 0x19

    const/4 v12, 0x2

    .line 311
    invoke-interface {v14, v11, v12}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitVarInsn(II)V

    const/16 v11, 0x19

    const/4 v12, 0x3

    .line 312
    invoke-interface {v14, v11, v12}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitVarInsn(II)V

    const/16 v11, 0x19

    const/4 v12, 0x4

    .line 313
    invoke-interface {v14, v11, v12}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitVarInsn(II)V

    const/16 v11, 0x15

    const/4 v12, 0x5

    .line 314
    invoke-interface {v14, v11, v12}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitVarInsn(II)V

    const/16 v11, 0xb6

    const-string/jumbo v12, "writeNormal"

    .line 315
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v15, "(L"

    invoke-virtual {v13, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    sget-object v15, Lcom/alibaba/fastjson/serializer/ASMSerializerFactory;->JSONSerializer:Ljava/lang/String;

    invoke-virtual {v13, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string/jumbo v15, ";Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/reflect/Type;I)V"

    invoke-virtual {v13, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-interface {v14, v11, v7, v12, v13}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitMethodInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const/16 v11, 0xb1

    .line 318
    invoke-interface {v14, v11}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitInsn(I)V

    .line 320
    invoke-interface {v14, v10}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitLabel(Lcom/alibaba/fastjson/asm/Label;)V

    const/16 v10, 0x19

    const-string/jumbo v11, "out"

    .line 321
    invoke-virtual {v8, v11}, Lcom/alibaba/fastjson/serializer/ASMSerializerFactory$Context;->var(Ljava/lang/String;)I

    move-result v11

    invoke-interface {v14, v10, v11}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitVarInsn(II)V

    .line 322
    sget-object v10, Lcom/alibaba/fastjson/serializer/SerializerFeature;->DisableCircularReferenceDetect:Lcom/alibaba/fastjson/serializer/SerializerFeature;

    iget v10, v10, Lcom/alibaba/fastjson/serializer/SerializerFeature;->mask:I

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-interface {v14, v10}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitLdcInsn(Ljava/lang/Object;)V

    const/16 v10, 0xb6

    .line 323
    sget-object v11, Lcom/alibaba/fastjson/serializer/ASMSerializerFactory;->SerializeWriter:Ljava/lang/String;

    const-string/jumbo v12, "isEnabled"

    const-string/jumbo v13, "(I)Z"

    invoke-interface {v14, v10, v11, v12, v13}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitMethodInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const/16 v10, 0x99

    .line 324
    invoke-interface {v14, v10, v9}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitJumpInsn(ILcom/alibaba/fastjson/asm/Label;)V

    const/16 v10, 0x19

    const/4 v11, 0x0

    .line 326
    invoke-interface {v14, v10, v11}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitVarInsn(II)V

    const/16 v10, 0x19

    const/4 v11, 0x1

    .line 327
    invoke-interface {v14, v10, v11}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitVarInsn(II)V

    const/16 v10, 0x19

    const/4 v11, 0x2

    .line 328
    invoke-interface {v14, v10, v11}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitVarInsn(II)V

    const/16 v10, 0x19

    const/4 v11, 0x3

    .line 329
    invoke-interface {v14, v10, v11}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitVarInsn(II)V

    const/16 v10, 0x19

    const/4 v11, 0x4

    .line 330
    invoke-interface {v14, v10, v11}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitVarInsn(II)V

    const/16 v10, 0x15

    const/4 v11, 0x5

    .line 331
    invoke-interface {v14, v10, v11}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitVarInsn(II)V

    const/16 v10, 0xb6

    const-string/jumbo v11, "writeDirectNonContext"

    .line 332
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v13, "(L"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    sget-object v13, Lcom/alibaba/fastjson/serializer/ASMSerializerFactory;->JSONSerializer:Ljava/lang/String;

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string/jumbo v13, ";Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/reflect/Type;I)V"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-interface {v14, v10, v7, v11, v12}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitMethodInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const/16 v10, 0xb1

    .line 334
    invoke-interface {v14, v10}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitInsn(I)V

    .line 336
    invoke-interface {v14, v9}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitLabel(Lcom/alibaba/fastjson/asm/Label;)V

    goto/16 :goto_11

    .line 350
    :cond_1d
    new-instance v8, Lcom/alibaba/fastjson/serializer/ASMSerializerFactory$Context;

    const/4 v12, 0x0

    move-object/from16 v9, v26

    move-object/from16 v10, p1

    move-object v11, v7

    move v13, v5

    invoke-direct/range {v8 .. v13}, Lcom/alibaba/fastjson/serializer/ASMSerializerFactory$Context;-><init>([Lcom/alibaba/fastjson/util/FieldInfo;Lcom/alibaba/fastjson/serializer/SerializeBeanInfo;Ljava/lang/String;ZZ)V

    .line 353
    new-instance v9, Lcom/alibaba/fastjson/asm/MethodWriter;

    const/4 v11, 0x1

    const-string/jumbo v12, "writeUnsorted"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "(L"

    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    sget-object v10, Lcom/alibaba/fastjson/serializer/ASMSerializerFactory;->JSONSerializer:Ljava/lang/String;

    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v10, ";Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/reflect/Type;I)V"

    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    const/4 v6, 0x1

    new-array v15, v6, [Ljava/lang/String;

    const/4 v6, 0x0

    const-string/jumbo v10, "java/io/IOException"

    aput-object v10, v15, v6

    const/4 v14, 0x0

    move-object v10, v4

    invoke-direct/range {v9 .. v15}, Lcom/alibaba/fastjson/asm/MethodWriter;-><init>(Lcom/alibaba/fastjson/asm/ClassWriter;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V

    const/16 v6, 0x19

    const/4 v10, 0x1

    .line 357
    invoke-interface {v9, v6, v10}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitVarInsn(II)V

    const/16 v6, 0xb4

    .line 358
    sget-object v10, Lcom/alibaba/fastjson/serializer/ASMSerializerFactory;->JSONSerializer:Ljava/lang/String;

    const-string/jumbo v11, "out"

    sget-object v12, Lcom/alibaba/fastjson/serializer/ASMSerializerFactory;->SerializeWriter_desc:Ljava/lang/String;

    invoke-interface {v9, v6, v10, v11, v12}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitFieldInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const/16 v6, 0x3a

    const-string/jumbo v10, "out"

    .line 359
    invoke-virtual {v8, v10}, Lcom/alibaba/fastjson/serializer/ASMSerializerFactory$Context;->var(Ljava/lang/String;)I

    move-result v10

    invoke-interface {v9, v6, v10}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitVarInsn(II)V

    const/16 v6, 0x19

    const/4 v10, 0x2

    .line 361
    invoke-interface {v9, v6, v10}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitVarInsn(II)V

    const/16 v6, 0xc0

    .line 362
    invoke-static/range {v24 .. v24}, Lcom/alibaba/fastjson/util/ASMUtils;->type(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v10

    invoke-interface {v9, v6, v10}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitTypeInsn(ILjava/lang/String;)V

    const/16 v6, 0x3a

    const-string/jumbo v10, "entity"

    .line 363
    invoke-virtual {v8, v10}, Lcom/alibaba/fastjson/serializer/ASMSerializerFactory$Context;->var(Ljava/lang/String;)I

    move-result v10

    invoke-interface {v9, v6, v10}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitVarInsn(II)V

    .line 365
    move-object/from16 v0, p0

    move-object/from16 v1, v24

    move-object/from16 v2, v25

    invoke-direct {v0, v1, v9, v2, v8}, Lcom/alibaba/fastjson/serializer/ASMSerializerFactory;->generateWriteMethod(Ljava/lang/Class;Lcom/alibaba/fastjson/asm/MethodVisitor;[Lcom/alibaba/fastjson/util/FieldInfo;Lcom/alibaba/fastjson/serializer/ASMSerializerFactory$Context;)V

    const/16 v6, 0xb1

    .line 367
    invoke-interface {v9, v6}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitInsn(I)V

    const/4 v6, 0x7

    .line 368
    invoke-static {v8}, Lcom/alibaba/fastjson/serializer/ASMSerializerFactory$Context;->access$100(Lcom/alibaba/fastjson/serializer/ASMSerializerFactory$Context;)I

    move-result v8

    add-int/lit8 v8, v8, 0x2

    invoke-interface {v9, v6, v8}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitMaxs(II)V

    .line 369
    invoke-interface {v9}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitEnd()V

    goto/16 :goto_8

    .line 378
    :cond_1e
    const/4 v12, 0x0

    .line 379
    if-eqz v16, :cond_1f

    const/4 v6, 0x1

    .line 382
    move/from16 v0, v16

    if-eq v0, v6, :cond_20

    .line 385
    const/4 v12, 0x1

    .line 386
    const/4 v13, 0x1

    const-string/jumbo v6, "writeAsArrayNonContext"

    .line 390
    :goto_12
    new-instance v8, Lcom/alibaba/fastjson/serializer/ASMSerializerFactory$Context;

    move-object/from16 v9, v26

    move-object/from16 v10, p1

    move-object v11, v7

    invoke-direct/range {v8 .. v13}, Lcom/alibaba/fastjson/serializer/ASMSerializerFactory$Context;-><init>([Lcom/alibaba/fastjson/util/FieldInfo;Lcom/alibaba/fastjson/serializer/SerializeBeanInfo;Ljava/lang/String;ZZ)V

    .line 393
    new-instance v9, Lcom/alibaba/fastjson/asm/MethodWriter;

    const/4 v11, 0x1

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "(L"

    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    sget-object v12, Lcom/alibaba/fastjson/serializer/ASMSerializerFactory;->JSONSerializer:Ljava/lang/String;

    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string/jumbo v12, ";Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/reflect/Type;I)V"

    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    const/4 v10, 0x1

    new-array v15, v10, [Ljava/lang/String;

    const/4 v10, 0x0

    const-string/jumbo v12, "java/io/IOException"

    aput-object v12, v15, v10

    const/4 v14, 0x0

    move-object v10, v4

    move-object v12, v6

    invoke-direct/range {v9 .. v15}, Lcom/alibaba/fastjson/asm/MethodWriter;-><init>(Lcom/alibaba/fastjson/asm/ClassWriter;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V

    const/16 v6, 0x19

    const/4 v10, 0x1

    .line 397
    invoke-interface {v9, v6, v10}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitVarInsn(II)V

    const/16 v6, 0xb4

    .line 398
    sget-object v10, Lcom/alibaba/fastjson/serializer/ASMSerializerFactory;->JSONSerializer:Ljava/lang/String;

    const-string/jumbo v11, "out"

    sget-object v12, Lcom/alibaba/fastjson/serializer/ASMSerializerFactory;->SerializeWriter_desc:Ljava/lang/String;

    invoke-interface {v9, v6, v10, v11, v12}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitFieldInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const/16 v6, 0x3a

    const-string/jumbo v10, "out"

    .line 399
    invoke-virtual {v8, v10}, Lcom/alibaba/fastjson/serializer/ASMSerializerFactory$Context;->var(Ljava/lang/String;)I

    move-result v10

    invoke-interface {v9, v6, v10}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitVarInsn(II)V

    const/16 v6, 0x19

    const/4 v10, 0x2

    .line 401
    invoke-interface {v9, v6, v10}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitVarInsn(II)V

    const/16 v6, 0xc0

    .line 402
    invoke-static/range {v24 .. v24}, Lcom/alibaba/fastjson/util/ASMUtils;->type(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v10

    invoke-interface {v9, v6, v10}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitTypeInsn(ILjava/lang/String;)V

    const/16 v6, 0x3a

    const-string/jumbo v10, "entity"

    .line 403
    invoke-virtual {v8, v10}, Lcom/alibaba/fastjson/serializer/ASMSerializerFactory$Context;->var(Ljava/lang/String;)I

    move-result v10

    invoke-interface {v9, v6, v10}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitVarInsn(II)V

    .line 404
    move-object/from16 v0, p0

    move-object/from16 v1, v24

    move-object/from16 v2, v26

    invoke-direct {v0, v1, v9, v2, v8}, Lcom/alibaba/fastjson/serializer/ASMSerializerFactory;->generateWriteAsArray(Ljava/lang/Class;Lcom/alibaba/fastjson/asm/MethodVisitor;[Lcom/alibaba/fastjson/util/FieldInfo;Lcom/alibaba/fastjson/serializer/ASMSerializerFactory$Context;)V

    const/16 v6, 0xb1

    .line 405
    invoke-interface {v9, v6}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitInsn(I)V

    const/4 v6, 0x7

    .line 406
    invoke-static {v8}, Lcom/alibaba/fastjson/serializer/ASMSerializerFactory$Context;->access$100(Lcom/alibaba/fastjson/serializer/ASMSerializerFactory$Context;)I

    move-result v8

    add-int/lit8 v8, v8, 0x2

    invoke-interface {v9, v6, v8}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitMaxs(II)V

    .line 407
    invoke-interface {v9}, Lcom/alibaba/fastjson/asm/MethodVisitor;->visitEnd()V

    .line 375
    add-int/lit8 v6, v16, 0x1

    move/from16 v16, v6

    goto/16 :goto_9

    :cond_1f
    const-string/jumbo v6, "writeAsArray"

    .line 381
    const/4 v12, 0x1

    move v13, v5

    goto/16 :goto_12

    :cond_20
    const-string/jumbo v6, "writeAsArrayNormal"

    move v13, v5

    .line 383
    goto/16 :goto_12
.end method
