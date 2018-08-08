.class public abstract Lcom/alibaba/fastjson/parser/deserializer/FieldDeserializer;
.super Ljava/lang/Object;
.source "FieldDeserializer.java"


# instance fields
.field protected beanContext:Lcom/alibaba/fastjson/serializer/BeanContext;

.field protected final clazz:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation
.end field

.field public final fieldInfo:Lcom/alibaba/fastjson/util/FieldInfo;


# direct methods
.method public constructor <init>(Ljava/lang/Class;Lcom/alibaba/fastjson/util/FieldInfo;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;",
            "Lcom/alibaba/fastjson/util/FieldInfo;",
            ")V"
        }
    .end annotation

    .prologue
    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    iput-object p1, p0, Lcom/alibaba/fastjson/parser/deserializer/FieldDeserializer;->clazz:Ljava/lang/Class;

    .line 28
    iput-object p2, p0, Lcom/alibaba/fastjson/parser/deserializer/FieldDeserializer;->fieldInfo:Lcom/alibaba/fastjson/util/FieldInfo;

    .line 29
    return-void
.end method


# virtual methods
.method public getFastMatchToken()I
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 35
    return v0
.end method

.method public abstract parseField(Lcom/alibaba/fastjson/parser/DefaultJSONParser;Ljava/lang/Object;Ljava/lang/reflect/Type;Ljava/util/Map;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/alibaba/fastjson/parser/DefaultJSONParser;",
            "Ljava/lang/Object;",
            "Ljava/lang/reflect/Type;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation
.end method

.method public setValue(Ljava/lang/Object;I)V
    .locals 1

    .prologue
    .line 43
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/alibaba/fastjson/parser/deserializer/FieldDeserializer;->setValue(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 44
    return-void
.end method

.method public setValue(Ljava/lang/Object;J)V
    .locals 2

    .prologue
    .line 47
    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/alibaba/fastjson/parser/deserializer/FieldDeserializer;->setValue(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 48
    return-void
.end method

.method public setValue(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 4

    .prologue
    .line 56
    if-eqz p2, :cond_3

    .line 59
    :cond_0
    iget-object v0, p0, Lcom/alibaba/fastjson/parser/deserializer/FieldDeserializer;->fieldInfo:Lcom/alibaba/fastjson/util/FieldInfo;

    iget-object v0, v0, Lcom/alibaba/fastjson/util/FieldInfo;->fieldClass:Ljava/lang/Class;

    const-class v1, Ljava/lang/String;

    if-eq v0, v1, :cond_4

    :cond_1
    move-object v1, p2

    .line 66
    :goto_0
    :try_start_0
    iget-object v0, p0, Lcom/alibaba/fastjson/parser/deserializer/FieldDeserializer;->fieldInfo:Lcom/alibaba/fastjson/util/FieldInfo;

    iget-object v0, v0, Lcom/alibaba/fastjson/util/FieldInfo;->method:Ljava/lang/reflect/Method;

    .line 67
    if-nez v0, :cond_6

    .line 113
    iget-object v0, p0, Lcom/alibaba/fastjson/parser/deserializer/FieldDeserializer;->fieldInfo:Lcom/alibaba/fastjson/util/FieldInfo;

    iget-object v0, v0, Lcom/alibaba/fastjson/util/FieldInfo;->field:Ljava/lang/reflect/Field;

    .line 115
    iget-object v2, p0, Lcom/alibaba/fastjson/parser/deserializer/FieldDeserializer;->fieldInfo:Lcom/alibaba/fastjson/util/FieldInfo;

    iget-boolean v2, v2, Lcom/alibaba/fastjson/util/FieldInfo;->getOnly:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-nez v2, :cond_10

    .line 156
    if-nez v0, :cond_19

    .line 164
    :cond_2
    :goto_1
    return-void

    .line 56
    :cond_3
    iget-object v0, p0, Lcom/alibaba/fastjson/parser/deserializer/FieldDeserializer;->fieldInfo:Lcom/alibaba/fastjson/util/FieldInfo;

    iget-object v0, v0, Lcom/alibaba/fastjson/util/FieldInfo;->fieldClass:Ljava/lang/Class;

    .line 57
    invoke-virtual {v0}, Ljava/lang/Class;->isPrimitive()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 58
    return-void

    .line 59
    :cond_4
    iget-object v0, p0, Lcom/alibaba/fastjson/parser/deserializer/FieldDeserializer;->fieldInfo:Lcom/alibaba/fastjson/util/FieldInfo;

    iget-object v0, v0, Lcom/alibaba/fastjson/util/FieldInfo;->format:Ljava/lang/String;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/alibaba/fastjson/parser/deserializer/FieldDeserializer;->fieldInfo:Lcom/alibaba/fastjson/util/FieldInfo;

    iget-object v0, v0, Lcom/alibaba/fastjson/util/FieldInfo;->format:Ljava/lang/String;

    const-string/jumbo v1, "trim"

    .line 61
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5

    move-object v1, p2

    goto :goto_0

    .line 62
    :cond_5
    check-cast p2, Ljava/lang/String;

    invoke-virtual {p2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p2

    move-object v1, p2

    goto :goto_0

    .line 68
    :cond_6
    :try_start_1
    iget-object v2, p0, Lcom/alibaba/fastjson/parser/deserializer/FieldDeserializer;->fieldInfo:Lcom/alibaba/fastjson/util/FieldInfo;

    iget-boolean v2, v2, Lcom/alibaba/fastjson/util/FieldInfo;->getOnly:Z

    if-nez v2, :cond_7

    const/4 v2, 0x1

    .line 110
    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object v1, v2, v3

    invoke-virtual {v0, p1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    .line 163
    :catch_0
    move-exception v0

    .line 162
    new-instance v1, Lcom/alibaba/fastjson/JSONException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "set property error, "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/alibaba/fastjson/parser/deserializer/FieldDeserializer;->fieldInfo:Lcom/alibaba/fastjson/util/FieldInfo;

    iget-object v3, v3, Lcom/alibaba/fastjson/util/FieldInfo;->name:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 69
    :cond_7
    :try_start_2
    iget-object v2, p0, Lcom/alibaba/fastjson/parser/deserializer/FieldDeserializer;->fieldInfo:Lcom/alibaba/fastjson/util/FieldInfo;

    iget-object v2, v2, Lcom/alibaba/fastjson/util/FieldInfo;->fieldClass:Ljava/lang/Class;

    const-class v3, Ljava/util/concurrent/atomic/AtomicInteger;

    if-eq v2, v3, :cond_9

    .line 74
    iget-object v2, p0, Lcom/alibaba/fastjson/parser/deserializer/FieldDeserializer;->fieldInfo:Lcom/alibaba/fastjson/util/FieldInfo;

    iget-object v2, v2, Lcom/alibaba/fastjson/util/FieldInfo;->fieldClass:Ljava/lang/Class;

    const-class v3, Ljava/util/concurrent/atomic/AtomicLong;

    if-eq v2, v3, :cond_a

    .line 79
    iget-object v2, p0, Lcom/alibaba/fastjson/parser/deserializer/FieldDeserializer;->fieldInfo:Lcom/alibaba/fastjson/util/FieldInfo;

    iget-object v2, v2, Lcom/alibaba/fastjson/util/FieldInfo;->fieldClass:Ljava/lang/Class;

    const-class v3, Ljava/util/concurrent/atomic/AtomicBoolean;

    if-eq v2, v3, :cond_b

    const-class v2, Ljava/util/Map;

    .line 84
    invoke-virtual {v0}, Ljava/lang/reflect/Method;->getReturnType()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v2

    if-nez v2, :cond_c

    const/4 v2, 0x0

    .line 96
    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v0, p1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Collection;

    .line 97
    if-eqz v0, :cond_2

    if-eqz v1, :cond_2

    .line 98
    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    move-result-object v2

    if-ne v0, v2, :cond_f

    .line 102
    :cond_8
    return-void

    :cond_9
    const/4 v2, 0x0

    .line 70
    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v0, p1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/concurrent/atomic/AtomicInteger;

    .line 71
    if-eqz v0, :cond_2

    .line 72
    check-cast v1, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    goto/16 :goto_1

    :cond_a
    const/4 v2, 0x0

    .line 75
    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v0, p1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/concurrent/atomic/AtomicLong;

    .line 76
    if-eqz v0, :cond_2

    .line 77
    check-cast v1, Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Ljava/util/concurrent/atomic/AtomicLong;->set(J)V

    goto/16 :goto_1

    :cond_b
    const/4 v2, 0x0

    .line 80
    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v0, p1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 81
    if-eqz v0, :cond_2

    .line 82
    check-cast v1, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    goto/16 :goto_1

    :cond_c
    const/4 v2, 0x0

    .line 85
    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v0, p1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    .line 86
    if-eqz v0, :cond_2

    .line 87
    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v2

    if-ne v0, v2, :cond_e

    .line 90
    :cond_d
    return-void

    .line 88
    :cond_e
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "java.util.Collections$Unmodifiable"

    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_d

    .line 93
    check-cast v1, Ljava/util/Map;

    invoke-interface {v0, v1}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    goto/16 :goto_1

    .line 99
    :cond_f
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v2

    if-eq v0, v2, :cond_8

    .line 100
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "java.util.Collections$Unmodifiable"

    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_8

    .line 105
    invoke-interface {v0}, Ljava/util/Collection;->clear()V

    .line 106
    check-cast v1, Ljava/util/Collection;

    invoke-interface {v0, v1}, Ljava/util/Collection;->addAll(Ljava/util/Collection;)Z

    goto/16 :goto_1

    .line 116
    :cond_10
    iget-object v2, p0, Lcom/alibaba/fastjson/parser/deserializer/FieldDeserializer;->fieldInfo:Lcom/alibaba/fastjson/util/FieldInfo;

    iget-object v2, v2, Lcom/alibaba/fastjson/util/FieldInfo;->fieldClass:Ljava/lang/Class;

    const-class v3, Ljava/util/concurrent/atomic/AtomicInteger;

    if-eq v2, v3, :cond_12

    .line 121
    iget-object v2, p0, Lcom/alibaba/fastjson/parser/deserializer/FieldDeserializer;->fieldInfo:Lcom/alibaba/fastjson/util/FieldInfo;

    iget-object v2, v2, Lcom/alibaba/fastjson/util/FieldInfo;->fieldClass:Ljava/lang/Class;

    const-class v3, Ljava/util/concurrent/atomic/AtomicLong;

    if-eq v2, v3, :cond_13

    .line 126
    iget-object v2, p0, Lcom/alibaba/fastjson/parser/deserializer/FieldDeserializer;->fieldInfo:Lcom/alibaba/fastjson/util/FieldInfo;

    iget-object v2, v2, Lcom/alibaba/fastjson/util/FieldInfo;->fieldClass:Ljava/lang/Class;

    const-class v3, Ljava/util/concurrent/atomic/AtomicBoolean;

    if-eq v2, v3, :cond_14

    const-class v2, Ljava/util/Map;

    .line 131
    iget-object v3, p0, Lcom/alibaba/fastjson/parser/deserializer/FieldDeserializer;->fieldInfo:Lcom/alibaba/fastjson/util/FieldInfo;

    iget-object v3, v3, Lcom/alibaba/fastjson/util/FieldInfo;->fieldClass:Ljava/lang/Class;

    invoke-virtual {v2, v3}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v2

    if-nez v2, :cond_15

    .line 142
    invoke-virtual {v0, p1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Collection;

    .line 143
    if-eqz v0, :cond_2

    if-eqz v1, :cond_2

    .line 144
    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    move-result-object v2

    if-ne v0, v2, :cond_18

    .line 148
    :cond_11
    return-void

    .line 117
    :cond_12
    invoke-virtual {v0, p1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/concurrent/atomic/AtomicInteger;

    .line 118
    if-eqz v0, :cond_2

    .line 119
    check-cast v1, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    goto/16 :goto_1

    .line 122
    :cond_13
    invoke-virtual {v0, p1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/concurrent/atomic/AtomicLong;

    .line 123
    if-eqz v0, :cond_2

    .line 124
    check-cast v1, Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Ljava/util/concurrent/atomic/AtomicLong;->set(J)V

    goto/16 :goto_1

    .line 127
    :cond_14
    invoke-virtual {v0, p1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 128
    if-eqz v0, :cond_2

    .line 129
    check-cast v1, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    goto/16 :goto_1

    .line 132
    :cond_15
    invoke-virtual {v0, p1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    .line 133
    if-eqz v0, :cond_2

    .line 134
    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v2

    if-ne v0, v2, :cond_17

    .line 137
    :cond_16
    return-void

    .line 135
    :cond_17
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "java.util.Collections$Unmodifiable"

    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_16

    .line 139
    check-cast v1, Ljava/util/Map;

    invoke-interface {v0, v1}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    goto/16 :goto_1

    .line 145
    :cond_18
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v2

    if-eq v0, v2, :cond_11

    .line 146
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "java.util.Collections$Unmodifiable"

    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_11

    .line 151
    invoke-interface {v0}, Ljava/util/Collection;->clear()V

    .line 152
    check-cast v1, Ljava/util/Collection;

    invoke-interface {v0, v1}, Ljava/util/Collection;->addAll(Ljava/util/Collection;)Z

    goto/16 :goto_1

    .line 157
    :cond_19
    invoke-virtual {v0, p1, v1}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto/16 :goto_1
.end method

.method public setValue(Ljava/lang/Object;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 51
    invoke-virtual {p0, p1, p2}, Lcom/alibaba/fastjson/parser/deserializer/FieldDeserializer;->setValue(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 52
    return-void
.end method

.method public setValue(Ljava/lang/Object;Z)V
    .locals 1

    .prologue
    .line 39
    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/alibaba/fastjson/parser/deserializer/FieldDeserializer;->setValue(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 40
    return-void
.end method

.method public setWrappedValue(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 2

    .prologue
    .line 167
    new-instance v0, Lcom/alibaba/fastjson/JSONException;

    const-string/jumbo v1, "TODO"

    invoke-direct {v0, v1}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
