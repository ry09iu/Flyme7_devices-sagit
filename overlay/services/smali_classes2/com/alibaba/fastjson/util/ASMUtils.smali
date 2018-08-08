.class public Lcom/alibaba/fastjson/util/ASMUtils;
.super Ljava/lang/Object;
.source "ASMUtils.java"


# static fields
.field public static final IS_ANDROID:Z

.field public static final JAVA_VM_NAME:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    const-string/jumbo v0, "java.vm.name"

    .line 17
    invoke-static {v0}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/alibaba/fastjson/util/ASMUtils;->JAVA_VM_NAME:Ljava/lang/String;

    .line 19
    sget-object v0, Lcom/alibaba/fastjson/util/ASMUtils;->JAVA_VM_NAME:Ljava/lang/String;

    invoke-static {v0}, Lcom/alibaba/fastjson/util/ASMUtils;->isAndroid(Ljava/lang/String;)Z

    move-result v0

    sput-boolean v0, Lcom/alibaba/fastjson/util/ASMUtils;->IS_ANDROID:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static checkName(Ljava/lang/String;)Z
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/4 v1, 0x0

    move v0, v1

    .line 104
    :goto_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    if-lt v0, v2, :cond_0

    .line 111
    return v4

    .line 105
    :cond_0
    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v2

    .line 106
    if-ge v2, v4, :cond_2

    .line 107
    :cond_1
    return v1

    :cond_2
    const/16 v3, 0x7f

    .line 106
    if-gt v2, v3, :cond_1

    const/16 v3, 0x2e

    if-eq v2, v3, :cond_1

    .line 104
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public static desc(Ljava/lang/Class;)Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 46
    invoke-virtual {p0}, Ljava/lang/Class;->isPrimitive()Z

    move-result v0

    if-nez v0, :cond_0

    .line 48
    invoke-virtual {p0}, Ljava/lang/Class;->isArray()Z

    move-result v0

    if-nez v0, :cond_1

    .line 51
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "L"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p0}, Lcom/alibaba/fastjson/util/ASMUtils;->type(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ";"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 47
    :cond_0
    invoke-static {p0}, Lcom/alibaba/fastjson/util/ASMUtils;->getPrimitiveLetter(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 49
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object v1

    invoke-static {v1}, Lcom/alibaba/fastjson/util/ASMUtils;->desc(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static desc(Ljava/lang/reflect/Method;)Ljava/lang/String;
    .locals 4

    .prologue
    .line 34
    invoke-virtual {p0}, Ljava/lang/reflect/Method;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v1

    .line 35
    new-instance v2, Ljava/lang/StringBuilder;

    array-length v0, v1

    add-int/lit8 v0, v0, 0x1

    shl-int/lit8 v0, v0, 0x4

    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 36
    const/16 v0, 0x28

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const/4 v0, 0x0

    .line 37
    :goto_0
    array-length v3, v1

    if-lt v0, v3, :cond_0

    .line 40
    const/16 v0, 0x29

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 41
    invoke-virtual {p0}, Ljava/lang/reflect/Method;->getReturnType()Ljava/lang/Class;

    move-result-object v0

    invoke-static {v0}, Lcom/alibaba/fastjson/util/ASMUtils;->desc(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 42
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 38
    :cond_0
    aget-object v3, v1, v0

    invoke-static {v3}, Lcom/alibaba/fastjson/util/ASMUtils;->desc(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 37
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public static getMethodType(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Type;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/reflect/Type;"
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 95
    :try_start_0
    new-array v0, v0, [Ljava/lang/Class;

    invoke-virtual {p0, p1, v0}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 97
    invoke-virtual {v0}, Ljava/lang/reflect/Method;->getGenericReturnType()Ljava/lang/reflect/Type;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    return-object v0

    :catch_0
    move-exception v0

    const/4 v0, 0x0

    .line 99
    return-object v0
.end method

.method public static getPrimitiveLetter(Ljava/lang/Class;)Ljava/lang/String;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 70
    sget-object v0, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    if-eq v0, p0, :cond_0

    .line 72
    sget-object v0, Ljava/lang/Void;->TYPE:Ljava/lang/Class;

    if-eq v0, p0, :cond_1

    .line 74
    sget-object v0, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    if-eq v0, p0, :cond_2

    .line 76
    sget-object v0, Ljava/lang/Character;->TYPE:Ljava/lang/Class;

    if-eq v0, p0, :cond_3

    .line 78
    sget-object v0, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    if-eq v0, p0, :cond_4

    .line 80
    sget-object v0, Ljava/lang/Short;->TYPE:Ljava/lang/Class;

    if-eq v0, p0, :cond_5

    .line 82
    sget-object v0, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    if-eq v0, p0, :cond_6

    .line 84
    sget-object v0, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    if-eq v0, p0, :cond_7

    .line 86
    sget-object v0, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    if-eq v0, p0, :cond_8

    .line 90
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Type: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " is not a primitive type"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    const-string/jumbo v0, "I"

    .line 71
    return-object v0

    :cond_1
    const-string/jumbo v0, "V"

    .line 73
    return-object v0

    :cond_2
    const-string/jumbo v0, "Z"

    .line 75
    return-object v0

    :cond_3
    const-string/jumbo v0, "C"

    .line 77
    return-object v0

    :cond_4
    const-string/jumbo v0, "B"

    .line 79
    return-object v0

    :cond_5
    const-string/jumbo v0, "S"

    .line 81
    return-object v0

    :cond_6
    const-string/jumbo v0, "F"

    .line 83
    return-object v0

    :cond_7
    const-string/jumbo v0, "J"

    .line 85
    return-object v0

    :cond_8
    const-string/jumbo v0, "D"

    .line 87
    return-object v0
.end method

.method public static isAndroid(Ljava/lang/String;)Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 22
    if-eqz p0, :cond_1

    .line 26
    invoke-virtual {p0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "dalvik"

    .line 28
    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_2

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    .line 23
    :cond_1
    return v0

    :cond_2
    const-string/jumbo v2, "lemur"

    .line 29
    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0
.end method

.method public static lookupParameterNames(Ljava/lang/reflect/AccessibleObject;)[Ljava/lang/String;
    .locals 10

    .prologue
    const/4 v5, 0x0

    .line 116
    sget-boolean v0, Lcom/alibaba/fastjson/util/ASMUtils;->IS_ANDROID:Z

    if-nez v0, :cond_0

    .line 125
    instance-of v0, p0, Ljava/lang/reflect/Method;

    if-nez v0, :cond_1

    .line 132
    check-cast p0, Ljava/lang/reflect/Constructor;

    .line 133
    invoke-virtual {p0}, Ljava/lang/reflect/Constructor;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v3

    .line 134
    invoke-virtual {p0}, Ljava/lang/reflect/Constructor;->getDeclaringClass()Ljava/lang/Class;

    move-result-object v1

    const-string/jumbo v2, "<init>"

    .line 136
    invoke-virtual {p0}, Ljava/lang/reflect/Constructor;->getParameterAnnotations()[[Ljava/lang/annotation/Annotation;

    move-result-object v0

    move-object v9, v0

    move-object v0, v1

    move-object v1, v9

    .line 139
    :goto_0
    array-length v4, v3

    if-eqz v4, :cond_2

    .line 143
    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v4

    .line 144
    if-eqz v4, :cond_3

    .line 148
    :goto_1
    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    .line 149
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v7, 0x2e

    const/16 v8, 0x2f

    invoke-virtual {v0, v7, v8}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v6, ".class"

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 150
    invoke-virtual {v4, v0}, Ljava/lang/ClassLoader;->getResourceAsStream(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v4

    .line 152
    if-eqz v4, :cond_4

    .line 157
    :try_start_0
    new-instance v0, Lcom/alibaba/fastjson/asm/ClassReader;

    invoke-direct {v0, v4}, Lcom/alibaba/fastjson/asm/ClassReader;-><init>(Ljava/io/InputStream;)V

    .line 158
    new-instance v6, Lcom/alibaba/fastjson/asm/TypeCollector;

    invoke-direct {v6, v2, v3}, Lcom/alibaba/fastjson/asm/TypeCollector;-><init>(Ljava/lang/String;[Ljava/lang/Class;)V

    .line 159
    invoke-virtual {v0, v6}, Lcom/alibaba/fastjson/asm/ClassReader;->accept(Lcom/alibaba/fastjson/asm/TypeCollector;)V

    .line 160
    invoke-virtual {v6}, Lcom/alibaba/fastjson/asm/TypeCollector;->getParameterNamesForMethod()[Ljava/lang/String;

    move-result-object v6

    move v3, v5

    .line 162
    :goto_2
    array-length v0, v6
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-lt v3, v0, :cond_5

    .line 181
    invoke-static {v4}, Lcom/alibaba/fastjson/util/IOUtils;->close(Ljava/io/Closeable;)V

    .line 177
    return-object v6

    .line 117
    :cond_0
    new-array v0, v5, [Ljava/lang/String;

    return-object v0

    .line 126
    :cond_1
    check-cast p0, Ljava/lang/reflect/Method;

    .line 127
    invoke-virtual {p0}, Ljava/lang/reflect/Method;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v3

    .line 128
    invoke-virtual {p0}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v2

    .line 129
    invoke-virtual {p0}, Ljava/lang/reflect/Method;->getDeclaringClass()Ljava/lang/Class;

    move-result-object v1

    .line 130
    invoke-virtual {p0}, Ljava/lang/reflect/Method;->getParameterAnnotations()[[Ljava/lang/annotation/Annotation;

    move-result-object v0

    move-object v9, v0

    move-object v0, v1

    move-object v1, v9

    .line 131
    goto :goto_0

    .line 140
    :cond_2
    new-array v0, v5, [Ljava/lang/String;

    return-object v0

    .line 145
    :cond_3
    invoke-static {}, Ljava/lang/ClassLoader;->getSystemClassLoader()Ljava/lang/ClassLoader;

    move-result-object v4

    goto :goto_1

    .line 153
    :cond_4
    new-array v0, v5, [Ljava/lang/String;

    return-object v0

    .line 163
    :cond_5
    :try_start_1
    aget-object v7, v1, v3

    .line 164
    if-nez v7, :cond_7

    .line 162
    :cond_6
    add-int/lit8 v0, v3, 0x1

    move v3, v0

    goto :goto_2

    :cond_7
    move v2, v5

    .line 165
    :goto_3
    array-length v0, v7

    if-ge v2, v0, :cond_6

    .line 166
    aget-object v0, v7, v2

    instance-of v0, v0, Lcom/alibaba/fastjson/annotation/JSONField;

    if-nez v0, :cond_9

    .line 165
    :cond_8
    :goto_4
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_3

    .line 167
    :cond_9
    aget-object v0, v7, v2

    check-cast v0, Lcom/alibaba/fastjson/annotation/JSONField;

    .line 168
    invoke-interface {v0}, Lcom/alibaba/fastjson/annotation/JSONField;->name()Ljava/lang/String;

    move-result-object v0

    .line 169
    if-eqz v0, :cond_8

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v8

    if-lez v8, :cond_8

    .line 170
    aput-object v0, v6, v3
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_4

    .line 177
    :catch_0
    move-exception v0

    const/4 v0, 0x0

    .line 179
    :try_start_2
    new-array v0, v0, [Ljava/lang/String;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 181
    invoke-static {v4}, Lcom/alibaba/fastjson/util/IOUtils;->close(Ljava/io/Closeable;)V

    .line 179
    return-object v0

    :catchall_0
    move-exception v0

    .line 181
    invoke-static {v4}, Lcom/alibaba/fastjson/util/IOUtils;->close(Ljava/io/Closeable;)V

    throw v0
.end method

.method public static type(Ljava/lang/Class;)Ljava/lang/String;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 56
    invoke-virtual {p0}, Ljava/lang/Class;->isArray()Z

    move-result v0

    if-nez v0, :cond_0

    .line 59
    invoke-virtual {p0}, Ljava/lang/Class;->isPrimitive()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 63
    invoke-static {p0}, Lcom/alibaba/fastjson/util/ASMUtils;->getPrimitiveLetter(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 57
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object v1

    invoke-static {v1}, Lcom/alibaba/fastjson/util/ASMUtils;->desc(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 60
    :cond_1
    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    .line 61
    const/16 v1, 0x2e

    const/16 v2, 0x2f

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
