.class public Lcom/alibaba/fastjson/serializer/JavaBeanSerializer;
.super Lcom/alibaba/fastjson/serializer/SerializeFilterable;
.source "JavaBeanSerializer.java"

# interfaces
.implements Lcom/alibaba/fastjson/serializer/ObjectSerializer;


# instance fields
.field protected beanInfo:Lcom/alibaba/fastjson/serializer/SerializeBeanInfo;

.field protected final getters:[Lcom/alibaba/fastjson/serializer/FieldSerializer;

.field private volatile transient hashArray:[J

.field private volatile transient hashArrayMapping:[S

.field protected final sortedGetters:[Lcom/alibaba/fastjson/serializer/FieldSerializer;


# direct methods
.method public constructor <init>(Lcom/alibaba/fastjson/serializer/SerializeBeanInfo;)V
    .locals 6

    .prologue
    const/4 v1, 0x0

    .line 73
    invoke-direct {p0}, Lcom/alibaba/fastjson/serializer/SerializeFilterable;-><init>()V

    .line 74
    iput-object p1, p0, Lcom/alibaba/fastjson/serializer/JavaBeanSerializer;->beanInfo:Lcom/alibaba/fastjson/serializer/SerializeBeanInfo;

    .line 76
    iget-object v0, p1, Lcom/alibaba/fastjson/serializer/SerializeBeanInfo;->sortedFields:[Lcom/alibaba/fastjson/util/FieldInfo;

    array-length v0, v0

    new-array v0, v0, [Lcom/alibaba/fastjson/serializer/FieldSerializer;

    iput-object v0, p0, Lcom/alibaba/fastjson/serializer/JavaBeanSerializer;->sortedGetters:[Lcom/alibaba/fastjson/serializer/FieldSerializer;

    move v0, v1

    .line 77
    :goto_0
    iget-object v2, p0, Lcom/alibaba/fastjson/serializer/JavaBeanSerializer;->sortedGetters:[Lcom/alibaba/fastjson/serializer/FieldSerializer;

    array-length v2, v2

    if-lt v0, v2, :cond_0

    .line 81
    iget-object v0, p1, Lcom/alibaba/fastjson/serializer/SerializeBeanInfo;->fields:[Lcom/alibaba/fastjson/util/FieldInfo;

    iget-object v2, p1, Lcom/alibaba/fastjson/serializer/SerializeBeanInfo;->sortedFields:[Lcom/alibaba/fastjson/util/FieldInfo;

    if-eq v0, v2, :cond_1

    .line 84
    iget-object v0, p1, Lcom/alibaba/fastjson/serializer/SerializeBeanInfo;->fields:[Lcom/alibaba/fastjson/util/FieldInfo;

    array-length v0, v0

    new-array v0, v0, [Lcom/alibaba/fastjson/serializer/FieldSerializer;

    iput-object v0, p0, Lcom/alibaba/fastjson/serializer/JavaBeanSerializer;->getters:[Lcom/alibaba/fastjson/serializer/FieldSerializer;

    .line 85
    :goto_1
    iget-object v0, p0, Lcom/alibaba/fastjson/serializer/JavaBeanSerializer;->getters:[Lcom/alibaba/fastjson/serializer/FieldSerializer;

    array-length v0, v0

    if-lt v1, v0, :cond_2

    .line 89
    :goto_2
    return-void

    .line 78
    :cond_0
    iget-object v2, p0, Lcom/alibaba/fastjson/serializer/JavaBeanSerializer;->sortedGetters:[Lcom/alibaba/fastjson/serializer/FieldSerializer;

    new-instance v3, Lcom/alibaba/fastjson/serializer/FieldSerializer;

    iget-object v4, p1, Lcom/alibaba/fastjson/serializer/SerializeBeanInfo;->beanType:Ljava/lang/Class;

    iget-object v5, p1, Lcom/alibaba/fastjson/serializer/SerializeBeanInfo;->sortedFields:[Lcom/alibaba/fastjson/util/FieldInfo;

    aget-object v5, v5, v0

    invoke-direct {v3, v4, v5}, Lcom/alibaba/fastjson/serializer/FieldSerializer;-><init>(Ljava/lang/Class;Lcom/alibaba/fastjson/util/FieldInfo;)V

    aput-object v3, v2, v0

    .line 77
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 82
    :cond_1
    iget-object v0, p0, Lcom/alibaba/fastjson/serializer/JavaBeanSerializer;->sortedGetters:[Lcom/alibaba/fastjson/serializer/FieldSerializer;

    iput-object v0, p0, Lcom/alibaba/fastjson/serializer/JavaBeanSerializer;->getters:[Lcom/alibaba/fastjson/serializer/FieldSerializer;

    goto :goto_2

    .line 86
    :cond_2
    iget-object v0, p0, Lcom/alibaba/fastjson/serializer/JavaBeanSerializer;->getters:[Lcom/alibaba/fastjson/serializer/FieldSerializer;

    iget-object v2, p1, Lcom/alibaba/fastjson/serializer/SerializeBeanInfo;->fields:[Lcom/alibaba/fastjson/util/FieldInfo;

    aget-object v2, v2, v1

    iget-object v2, v2, Lcom/alibaba/fastjson/util/FieldInfo;->name:Ljava/lang/String;

    invoke-virtual {p0, v2}, Lcom/alibaba/fastjson/serializer/JavaBeanSerializer;->getFieldSerializer(Ljava/lang/String;)Lcom/alibaba/fastjson/serializer/FieldSerializer;

    move-result-object v2

    aput-object v2, v0, v1

    .line 85
    add-int/lit8 v1, v1, 0x1

    goto :goto_1
.end method

.method public constructor <init>(Ljava/lang/Class;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;)V"
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 46
    check-cast v0, Ljava/util/Map;

    invoke-direct {p0, p1, v0}, Lcom/alibaba/fastjson/serializer/JavaBeanSerializer;-><init>(Ljava/lang/Class;Ljava/util/Map;)V

    .line 47
    return-void
.end method

.method public constructor <init>(Ljava/lang/Class;Ljava/util/Map;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 70
    invoke-static {p1, p2, v0}, Lcom/alibaba/fastjson/util/TypeUtils;->buildBeanInfo(Ljava/lang/Class;Ljava/util/Map;Lcom/alibaba/fastjson/PropertyNamingStrategy;)Lcom/alibaba/fastjson/serializer/SerializeBeanInfo;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/alibaba/fastjson/serializer/JavaBeanSerializer;-><init>(Lcom/alibaba/fastjson/serializer/SerializeBeanInfo;)V

    .line 71
    return-void
.end method

.method public varargs constructor <init>(Ljava/lang/Class;[Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;[",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 50
    invoke-static {p2}, Lcom/alibaba/fastjson/serializer/JavaBeanSerializer;->createAliasMap([Ljava/lang/String;)Ljava/util/Map;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/alibaba/fastjson/serializer/JavaBeanSerializer;-><init>(Ljava/lang/Class;Ljava/util/Map;)V

    .line 51
    return-void
.end method

.method static varargs createAliasMap([Ljava/lang/String;)Ljava/util/Map;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 54
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 55
    array-length v2, p0

    const/4 v0, 0x0

    :goto_0
    if-lt v0, v2, :cond_0

    .line 59
    return-object v1

    .line 55
    :cond_0
    aget-object v3, p0, v0

    .line 56
    invoke-interface {v1, v3, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 55
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method


# virtual methods
.method protected applyLabel(Lcom/alibaba/fastjson/serializer/JSONSerializer;Ljava/lang/String;)Z
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 736
    iget-object v0, p1, Lcom/alibaba/fastjson/serializer/JSONSerializer;->labelFilters:Ljava/util/List;

    if-nez v0, :cond_2

    .line 744
    :cond_0
    iget-object v0, p0, Lcom/alibaba/fastjson/serializer/JavaBeanSerializer;->labelFilters:Ljava/util/List;

    if-nez v0, :cond_4

    .line 752
    :cond_1
    const/4 v0, 0x1

    return v0

    .line 737
    :cond_2
    iget-object v0, p1, Lcom/alibaba/fastjson/serializer/JSONSerializer;->labelFilters:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_3
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/fastjson/serializer/LabelFilter;

    .line 738
    invoke-interface {v0, p2}, Lcom/alibaba/fastjson/serializer/LabelFilter;->apply(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 739
    return v2

    .line 745
    :cond_4
    iget-object v0, p0, Lcom/alibaba/fastjson/serializer/JavaBeanSerializer;->labelFilters:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_5
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/fastjson/serializer/LabelFilter;

    .line 746
    invoke-interface {v0, p2}, Lcom/alibaba/fastjson/serializer/LabelFilter;->apply(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_5

    .line 747
    return v2
.end method

.method protected getBeanContext(I)Lcom/alibaba/fastjson/serializer/BeanContext;
    .locals 1

    .prologue
    .line 693
    iget-object v0, p0, Lcom/alibaba/fastjson/serializer/JavaBeanSerializer;->sortedGetters:[Lcom/alibaba/fastjson/serializer/FieldSerializer;

    aget-object v0, v0, p1

    iget-object v0, v0, Lcom/alibaba/fastjson/serializer/FieldSerializer;->fieldContext:Lcom/alibaba/fastjson/serializer/BeanContext;

    return-object v0
.end method

.method public getFieldSerializer(J)Lcom/alibaba/fastjson/serializer/FieldSerializer;
    .locals 13

    .prologue
    const/4 v12, -0x1

    const/4 v5, 0x0

    const/4 v1, 0x0

    .line 577
    iget-object v0, p0, Lcom/alibaba/fastjson/serializer/JavaBeanSerializer;->hashArray:[J

    if-eqz v0, :cond_0

    move-object v0, v5

    .line 600
    :goto_0
    iget-object v2, p0, Lcom/alibaba/fastjson/serializer/JavaBeanSerializer;->hashArray:[J

    invoke-static {v2, p1, p2}, Ljava/util/Arrays;->binarySearch([JJ)I

    move-result v4

    .line 601
    if-ltz v4, :cond_4

    .line 605
    iget-object v2, p0, Lcom/alibaba/fastjson/serializer/JavaBeanSerializer;->hashArrayMapping:[S

    if-eqz v2, :cond_5

    .line 637
    :goto_1
    iget-object v0, p0, Lcom/alibaba/fastjson/serializer/JavaBeanSerializer;->hashArrayMapping:[S

    aget-short v0, v0, v4

    .line 638
    if-ne v0, v12, :cond_c

    .line 642
    return-object v5

    .line 578
    :cond_0
    invoke-static {}, Lcom/alibaba/fastjson/PropertyNamingStrategy;->values()[Lcom/alibaba/fastjson/PropertyNamingStrategy;

    move-result-object v6

    .line 580
    iget-object v0, p0, Lcom/alibaba/fastjson/serializer/JavaBeanSerializer;->sortedGetters:[Lcom/alibaba/fastjson/serializer/FieldSerializer;

    array-length v0, v0

    array-length v2, v6

    mul-int/2addr v0, v2

    new-array v7, v0, [J

    move v0, v1

    move v2, v1

    .line 582
    :goto_2
    iget-object v3, p0, Lcom/alibaba/fastjson/serializer/JavaBeanSerializer;->sortedGetters:[Lcom/alibaba/fastjson/serializer/FieldSerializer;

    array-length v3, v3

    if-lt v0, v3, :cond_1

    .line 594
    invoke-static {v7, v1, v2}, Ljava/util/Arrays;->sort([JII)V

    .line 596
    new-array v0, v2, [J

    iput-object v0, p0, Lcom/alibaba/fastjson/serializer/JavaBeanSerializer;->hashArray:[J

    .line 597
    iget-object v0, p0, Lcom/alibaba/fastjson/serializer/JavaBeanSerializer;->hashArray:[J

    invoke-static {v7, v1, v0, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    move-object v0, v6

    goto :goto_0

    .line 583
    :cond_1
    iget-object v3, p0, Lcom/alibaba/fastjson/serializer/JavaBeanSerializer;->sortedGetters:[Lcom/alibaba/fastjson/serializer/FieldSerializer;

    aget-object v3, v3, v0

    iget-object v3, v3, Lcom/alibaba/fastjson/serializer/FieldSerializer;->fieldInfo:Lcom/alibaba/fastjson/util/FieldInfo;

    iget-object v8, v3, Lcom/alibaba/fastjson/util/FieldInfo;->name:Ljava/lang/String;

    .line 584
    add-int/lit8 v3, v2, 0x1

    invoke-static {v8}, Lcom/alibaba/fastjson/util/TypeUtils;->fnv1a_64(Ljava/lang/String;)J

    move-result-wide v10

    aput-wide v10, v7, v2

    move v2, v3

    move v3, v1

    .line 586
    :goto_3
    array-length v4, v6

    if-lt v3, v4, :cond_2

    .line 582
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 587
    :cond_2
    aget-object v4, v6, v3

    invoke-virtual {v4, v8}, Lcom/alibaba/fastjson/PropertyNamingStrategy;->translate(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 588
    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_3

    .line 591
    add-int/lit8 v4, v2, 0x1

    invoke-static {v9}, Lcom/alibaba/fastjson/util/TypeUtils;->fnv1a_64(Ljava/lang/String;)J

    move-result-wide v10

    aput-wide v10, v7, v2

    .line 586
    :goto_4
    add-int/lit8 v2, v3, 0x1

    move v3, v2

    move v2, v4

    goto :goto_3

    :cond_3
    move v4, v2

    .line 589
    goto :goto_4

    .line 602
    :cond_4
    return-object v5

    .line 606
    :cond_5
    if-eqz v0, :cond_6

    .line 610
    :goto_5
    iget-object v2, p0, Lcom/alibaba/fastjson/serializer/JavaBeanSerializer;->hashArray:[J

    array-length v2, v2

    new-array v6, v2, [S

    .line 611
    invoke-static {v6, v12}, Ljava/util/Arrays;->fill([SS)V

    move v2, v1

    .line 612
    :goto_6
    iget-object v3, p0, Lcom/alibaba/fastjson/serializer/JavaBeanSerializer;->sortedGetters:[Lcom/alibaba/fastjson/serializer/FieldSerializer;

    array-length v3, v3

    if-lt v2, v3, :cond_7

    .line 634
    iput-object v6, p0, Lcom/alibaba/fastjson/serializer/JavaBeanSerializer;->hashArrayMapping:[S

    goto :goto_1

    .line 607
    :cond_6
    invoke-static {}, Lcom/alibaba/fastjson/PropertyNamingStrategy;->values()[Lcom/alibaba/fastjson/PropertyNamingStrategy;

    move-result-object v0

    goto :goto_5

    .line 613
    :cond_7
    iget-object v3, p0, Lcom/alibaba/fastjson/serializer/JavaBeanSerializer;->sortedGetters:[Lcom/alibaba/fastjson/serializer/FieldSerializer;

    aget-object v3, v3, v2

    iget-object v3, v3, Lcom/alibaba/fastjson/serializer/FieldSerializer;->fieldInfo:Lcom/alibaba/fastjson/util/FieldInfo;

    iget-object v7, v3, Lcom/alibaba/fastjson/util/FieldInfo;->name:Ljava/lang/String;

    .line 615
    iget-object v3, p0, Lcom/alibaba/fastjson/serializer/JavaBeanSerializer;->hashArray:[J

    .line 616
    invoke-static {v7}, Lcom/alibaba/fastjson/util/TypeUtils;->fnv1a_64(Ljava/lang/String;)J

    move-result-wide v8

    .line 615
    invoke-static {v3, v8, v9}, Ljava/util/Arrays;->binarySearch([JJ)I

    move-result v3

    .line 617
    if-gez v3, :cond_8

    :goto_7
    move v3, v1

    .line 621
    :goto_8
    array-length v8, v0

    if-lt v3, v8, :cond_9

    .line 612
    add-int/lit8 v2, v2, 0x1

    goto :goto_6

    .line 618
    :cond_8
    int-to-short v8, v2

    int-to-short v8, v8

    aput-short v8, v6, v3

    goto :goto_7

    .line 622
    :cond_9
    aget-object v8, v0, v3

    invoke-virtual {v8, v7}, Lcom/alibaba/fastjson/PropertyNamingStrategy;->translate(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 623
    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_a

    .line 627
    iget-object v9, p0, Lcom/alibaba/fastjson/serializer/JavaBeanSerializer;->hashArray:[J

    .line 628
    invoke-static {v8}, Lcom/alibaba/fastjson/util/TypeUtils;->fnv1a_64(Ljava/lang/String;)J

    move-result-wide v10

    .line 627
    invoke-static {v9, v10, v11}, Ljava/util/Arrays;->binarySearch([JJ)I

    move-result v8

    .line 629
    if-gez v8, :cond_b

    .line 621
    :cond_a
    :goto_9
    add-int/lit8 v3, v3, 0x1

    goto :goto_8

    .line 630
    :cond_b
    int-to-short v9, v2

    int-to-short v9, v9

    aput-short v9, v6, v8

    goto :goto_9

    .line 639
    :cond_c
    iget-object v1, p0, Lcom/alibaba/fastjson/serializer/JavaBeanSerializer;->sortedGetters:[Lcom/alibaba/fastjson/serializer/FieldSerializer;

    aget-object v0, v1, v0

    return-object v0
.end method

.method public getFieldSerializer(Ljava/lang/String;)Lcom/alibaba/fastjson/serializer/FieldSerializer;
    .locals 5

    .prologue
    const/4 v4, 0x0

    const/4 v1, 0x0

    .line 549
    if-eqz p1, :cond_0

    .line 554
    iget-object v0, p0, Lcom/alibaba/fastjson/serializer/JavaBeanSerializer;->sortedGetters:[Lcom/alibaba/fastjson/serializer/FieldSerializer;

    array-length v0, v0

    add-int/lit8 v0, v0, -0x1

    .line 556
    :goto_0
    if-le v1, v0, :cond_1

    .line 572
    return-object v4

    .line 550
    :cond_0
    return-object v4

    .line 557
    :cond_1
    add-int v2, v1, v0

    ushr-int/lit8 v2, v2, 0x1

    .line 559
    iget-object v3, p0, Lcom/alibaba/fastjson/serializer/JavaBeanSerializer;->sortedGetters:[Lcom/alibaba/fastjson/serializer/FieldSerializer;

    aget-object v3, v3, v2

    iget-object v3, v3, Lcom/alibaba/fastjson/serializer/FieldSerializer;->fieldInfo:Lcom/alibaba/fastjson/util/FieldInfo;

    iget-object v3, v3, Lcom/alibaba/fastjson/util/FieldInfo;->name:Ljava/lang/String;

    .line 561
    invoke-virtual {v3, p1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v3

    .line 563
    if-ltz v3, :cond_2

    .line 565
    if-gtz v3, :cond_3

    .line 568
    iget-object v0, p0, Lcom/alibaba/fastjson/serializer/JavaBeanSerializer;->sortedGetters:[Lcom/alibaba/fastjson/serializer/FieldSerializer;

    aget-object v0, v0, v2

    return-object v0

    .line 564
    :cond_2
    add-int/lit8 v1, v2, 0x1

    goto :goto_0

    .line 566
    :cond_3
    add-int/lit8 v0, v2, -0x1

    goto :goto_0
.end method

.method protected getFieldType(I)Ljava/lang/reflect/Type;
    .locals 1

    .prologue
    .line 697
    iget-object v0, p0, Lcom/alibaba/fastjson/serializer/JavaBeanSerializer;->sortedGetters:[Lcom/alibaba/fastjson/serializer/FieldSerializer;

    aget-object v0, v0, p1

    iget-object v0, v0, Lcom/alibaba/fastjson/serializer/FieldSerializer;->fieldInfo:Lcom/alibaba/fastjson/util/FieldInfo;

    iget-object v0, v0, Lcom/alibaba/fastjson/util/FieldInfo;->fieldType:Ljava/lang/reflect/Type;

    return-object v0
.end method

.method public getFieldValue(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;
    .locals 4

    .prologue
    .line 516
    invoke-virtual {p0, p2}, Lcom/alibaba/fastjson/serializer/JavaBeanSerializer;->getFieldSerializer(Ljava/lang/String;)Lcom/alibaba/fastjson/serializer/FieldSerializer;

    move-result-object v0

    .line 517
    if-eqz v0, :cond_0

    .line 522
    :try_start_0
    invoke-virtual {v0, p1}, Lcom/alibaba/fastjson/serializer/FieldSerializer;->getPropertyValue(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v0

    return-object v0

    .line 518
    :cond_0
    new-instance v0, Lcom/alibaba/fastjson/JSONException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "field not found. "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 522
    :catch_0
    move-exception v0

    .line 524
    new-instance v1, Lcom/alibaba/fastjson/JSONException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "getFieldValue error."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    :catch_1
    move-exception v0

    .line 526
    new-instance v1, Lcom/alibaba/fastjson/JSONException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "getFieldValue error."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public getFieldValue(Ljava/lang/Object;Ljava/lang/String;JZ)Ljava/lang/Object;
    .locals 5

    .prologue
    const/4 v1, 0x0

    .line 531
    invoke-virtual {p0, p3, p4}, Lcom/alibaba/fastjson/serializer/JavaBeanSerializer;->getFieldSerializer(J)Lcom/alibaba/fastjson/serializer/FieldSerializer;

    move-result-object v0

    .line 532
    if-eqz v0, :cond_0

    .line 540
    :try_start_0
    invoke-virtual {v0, p1}, Lcom/alibaba/fastjson/serializer/FieldSerializer;->getPropertyValue(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v0

    return-object v0

    .line 533
    :cond_0
    if-nez p5, :cond_1

    .line 536
    return-object v1

    .line 534
    :cond_1
    new-instance v0, Lcom/alibaba/fastjson/JSONException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "field not found. "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 540
    :catch_0
    move-exception v0

    .line 542
    new-instance v1, Lcom/alibaba/fastjson/JSONException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "getFieldValue error."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    :catch_1
    move-exception v0

    .line 544
    new-instance v1, Lcom/alibaba/fastjson/JSONException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "getFieldValue error."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public getFieldValues(Ljava/lang/Object;)Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 646
    new-instance v1, Ljava/util/ArrayList;

    iget-object v0, p0, Lcom/alibaba/fastjson/serializer/JavaBeanSerializer;->sortedGetters:[Lcom/alibaba/fastjson/serializer/FieldSerializer;

    array-length v0, v0

    invoke-direct {v1, v0}, Ljava/util/ArrayList;-><init>(I)V

    .line 647
    iget-object v2, p0, Lcom/alibaba/fastjson/serializer/JavaBeanSerializer;->sortedGetters:[Lcom/alibaba/fastjson/serializer/FieldSerializer;

    array-length v3, v2

    const/4 v0, 0x0

    :goto_0
    if-lt v0, v3, :cond_0

    .line 651
    return-object v1

    .line 647
    :cond_0
    aget-object v4, v2, v0

    .line 648
    invoke-virtual {v4, p1}, Lcom/alibaba/fastjson/serializer/FieldSerializer;->getPropertyValue(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 647
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public getFieldValuesMap(Ljava/lang/Object;)Ljava/util/Map;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 683
    new-instance v1, Ljava/util/LinkedHashMap;

    iget-object v0, p0, Lcom/alibaba/fastjson/serializer/JavaBeanSerializer;->sortedGetters:[Lcom/alibaba/fastjson/serializer/FieldSerializer;

    array-length v0, v0

    invoke-direct {v1, v0}, Ljava/util/LinkedHashMap;-><init>(I)V

    .line 685
    iget-object v2, p0, Lcom/alibaba/fastjson/serializer/JavaBeanSerializer;->sortedGetters:[Lcom/alibaba/fastjson/serializer/FieldSerializer;

    array-length v3, v2

    const/4 v0, 0x0

    :goto_0
    if-lt v0, v3, :cond_0

    .line 689
    return-object v1

    .line 685
    :cond_0
    aget-object v4, v2, v0

    .line 686
    iget-object v5, v4, Lcom/alibaba/fastjson/serializer/FieldSerializer;->fieldInfo:Lcom/alibaba/fastjson/util/FieldInfo;

    iget-object v5, v5, Lcom/alibaba/fastjson/util/FieldInfo;->name:Ljava/lang/String;

    invoke-virtual {v4, p1}, Lcom/alibaba/fastjson/serializer/FieldSerializer;->getPropertyValue(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    invoke-interface {v1, v5, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 685
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public getObjectFieldValues(Ljava/lang/Object;)Ljava/util/List;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 656
    new-instance v1, Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/alibaba/fastjson/serializer/JavaBeanSerializer;->sortedGetters:[Lcom/alibaba/fastjson/serializer/FieldSerializer;

    array-length v2, v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 657
    iget-object v2, p0, Lcom/alibaba/fastjson/serializer/JavaBeanSerializer;->sortedGetters:[Lcom/alibaba/fastjson/serializer/FieldSerializer;

    array-length v3, v2

    :goto_0
    if-lt v0, v3, :cond_0

    .line 668
    return-object v1

    .line 657
    :cond_0
    aget-object v4, v2, v0

    .line 658
    iget-object v5, v4, Lcom/alibaba/fastjson/serializer/FieldSerializer;->fieldInfo:Lcom/alibaba/fastjson/util/FieldInfo;

    iget-object v5, v5, Lcom/alibaba/fastjson/util/FieldInfo;->fieldClass:Ljava/lang/Class;

    .line 659
    invoke-virtual {v5}, Ljava/lang/Class;->isPrimitive()Z

    move-result v6

    if-nez v6, :cond_1

    .line 662
    invoke-virtual {v5}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v5

    const-string/jumbo v6, "java.lang."

    invoke-virtual {v5, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_1

    .line 665
    invoke-virtual {v4, p1}, Lcom/alibaba/fastjson/serializer/FieldSerializer;->getPropertyValue(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 657
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public getSize(Ljava/lang/Object;)I
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 673
    iget-object v2, p0, Lcom/alibaba/fastjson/serializer/JavaBeanSerializer;->sortedGetters:[Lcom/alibaba/fastjson/serializer/FieldSerializer;

    array-length v3, v2

    move v1, v0

    :goto_0
    if-lt v1, v3, :cond_0

    .line 679
    return v0

    .line 673
    :cond_0
    aget-object v4, v2, v1

    .line 674
    invoke-virtual {v4, p1}, Lcom/alibaba/fastjson/serializer/FieldSerializer;->getPropertyValueDirect(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    .line 675
    if-nez v4, :cond_1

    .line 673
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 676
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method

.method public getType()Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation

    .prologue
    .line 66
    iget-object v0, p0, Lcom/alibaba/fastjson/serializer/JavaBeanSerializer;->beanInfo:Lcom/alibaba/fastjson/serializer/SerializeBeanInfo;

    iget-object v0, v0, Lcom/alibaba/fastjson/serializer/SerializeBeanInfo;->beanType:Ljava/lang/Class;

    return-object v0
.end method

.method protected isWriteAsArray(Lcom/alibaba/fastjson/serializer/JSONSerializer;)Z
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 505
    invoke-virtual {p0, p1, v0}, Lcom/alibaba/fastjson/serializer/JavaBeanSerializer;->isWriteAsArray(Lcom/alibaba/fastjson/serializer/JSONSerializer;I)Z

    move-result v0

    return v0
.end method

.method protected isWriteAsArray(Lcom/alibaba/fastjson/serializer/JSONSerializer;I)Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 509
    sget-object v1, Lcom/alibaba/fastjson/serializer/SerializerFeature;->BeanToArray:Lcom/alibaba/fastjson/serializer/SerializerFeature;

    iget v1, v1, Lcom/alibaba/fastjson/serializer/SerializerFeature;->mask:I

    .line 510
    iget-object v2, p0, Lcom/alibaba/fastjson/serializer/JavaBeanSerializer;->beanInfo:Lcom/alibaba/fastjson/serializer/SerializeBeanInfo;

    iget v2, v2, Lcom/alibaba/fastjson/serializer/SerializeBeanInfo;->features:I

    and-int/2addr v2, v1

    if-eqz v2, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    iget-object v2, p1, Lcom/alibaba/fastjson/serializer/JSONSerializer;->out:Lcom/alibaba/fastjson/serializer/SerializeWriter;

    iget-boolean v2, v2, Lcom/alibaba/fastjson/serializer/SerializeWriter;->beanToArray:Z

    if-nez v2, :cond_0

    and-int/2addr v1, p2

    if-nez v1, :cond_0

    goto :goto_0
.end method

.method public write(Lcom/alibaba/fastjson/serializer/JSONSerializer;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/reflect/Type;I)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 120
    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move v5, p5

    invoke-virtual/range {v0 .. v6}, Lcom/alibaba/fastjson/serializer/JavaBeanSerializer;->write(Lcom/alibaba/fastjson/serializer/JSONSerializer;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/reflect/Type;IZ)V

    .line 121
    return-void
.end method

.method protected write(Lcom/alibaba/fastjson/serializer/JSONSerializer;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/reflect/Type;IZ)V
    .locals 28
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 138
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/alibaba/fastjson/serializer/JSONSerializer;->out:Lcom/alibaba/fastjson/serializer/SerializeWriter;

    move-object/from16 v17, v0

    .line 140
    if-eqz p2, :cond_5

    .line 145
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move/from16 v3, p5

    invoke-virtual {v0, v1, v2, v3}, Lcom/alibaba/fastjson/serializer/JavaBeanSerializer;->writeReference(Lcom/alibaba/fastjson/serializer/JSONSerializer;Ljava/lang/Object;I)Z

    move-result v4

    if-nez v4, :cond_6

    .line 151
    move-object/from16 v0, v17

    iget-boolean v4, v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->sortField:Z

    if-nez v4, :cond_7

    .line 154
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/alibaba/fastjson/serializer/JavaBeanSerializer;->getters:[Lcom/alibaba/fastjson/serializer/FieldSerializer;

    move-object v12, v4

    .line 157
    :goto_0
    move-object/from16 v0, p1

    iget-object v5, v0, Lcom/alibaba/fastjson/serializer/JSONSerializer;->context:Lcom/alibaba/fastjson/serializer/SerialContext;

    .line 158
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/alibaba/fastjson/serializer/JavaBeanSerializer;->beanInfo:Lcom/alibaba/fastjson/serializer/SerializeBeanInfo;

    iget-object v4, v4, Lcom/alibaba/fastjson/serializer/SerializeBeanInfo;->beanType:Ljava/lang/Class;

    invoke-virtual {v4}, Ljava/lang/Class;->isEnum()Z

    move-result v4

    if-eqz v4, :cond_8

    .line 162
    :goto_1
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p5

    invoke-virtual {v0, v1, v2}, Lcom/alibaba/fastjson/serializer/JavaBeanSerializer;->isWriteAsArray(Lcom/alibaba/fastjson/serializer/JSONSerializer;I)Z

    move-result v18

    .line 165
    if-nez v18, :cond_9

    const/16 v4, 0x7b

    .line 166
    :goto_2
    if-nez v18, :cond_a

    const/16 v6, 0x7d

    move v13, v6

    .line 167
    :goto_3
    if-eqz p6, :cond_b

    .line 171
    :goto_4
    :try_start_0
    array-length v4, v12

    if-gtz v4, :cond_c

    .line 176
    :cond_0
    :goto_5
    const/4 v4, 0x0

    .line 178
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/alibaba/fastjson/serializer/JavaBeanSerializer;->beanInfo:Lcom/alibaba/fastjson/serializer/SerializeBeanInfo;

    iget v6, v6, Lcom/alibaba/fastjson/serializer/SerializeBeanInfo;->features:I

    sget-object v7, Lcom/alibaba/fastjson/serializer/SerializerFeature;->WriteClassName:Lcom/alibaba/fastjson/serializer/SerializerFeature;

    iget v7, v7, Lcom/alibaba/fastjson/serializer/SerializerFeature;->mask:I

    and-int/2addr v6, v7

    if-eqz v6, :cond_d

    .line 181
    :cond_1
    invoke-virtual/range {p2 .. p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v7

    .line 184
    move-object/from16 v0, p4

    if-ne v7, v0, :cond_e

    :cond_2
    move-object/from16 v6, p4

    .line 190
    :goto_6
    if-ne v7, v6, :cond_f

    .line 196
    :goto_7
    if-nez v4, :cond_10

    const/4 v4, 0x0

    .line 198
    :goto_8
    move-object/from16 v0, v17

    iget-boolean v6, v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->quoteFieldNames:Z

    if-nez v6, :cond_11

    :cond_3
    const/4 v6, 0x0

    move v14, v6

    .line 199
    :goto_9
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    invoke-virtual {v0, v1, v2, v4}, Lcom/alibaba/fastjson/serializer/JavaBeanSerializer;->writeBefore(Lcom/alibaba/fastjson/serializer/JSONSerializer;Ljava/lang/Object;C)C

    move-result v4

    const/16 v6, 0x2c

    .line 200
    if-eq v4, v6, :cond_12

    const/4 v4, 0x0

    .line 202
    :goto_a
    sget-object v6, Lcom/alibaba/fastjson/serializer/SerializerFeature;->SkipTransientField:Lcom/alibaba/fastjson/serializer/SerializerFeature;

    move-object/from16 v0, v17

    invoke-virtual {v0, v6}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->isEnabled(Lcom/alibaba/fastjson/serializer/SerializerFeature;)Z

    move-result v19

    .line 203
    sget-object v6, Lcom/alibaba/fastjson/serializer/SerializerFeature;->IgnoreNonFieldGetter:Lcom/alibaba/fastjson/serializer/SerializerFeature;

    move-object/from16 v0, v17

    invoke-virtual {v0, v6}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->isEnabled(Lcom/alibaba/fastjson/serializer/SerializerFeature;)Z

    move-result v20

    const/4 v6, 0x0

    move/from16 v16, v6

    move v15, v4

    .line 205
    :goto_b
    array-length v4, v12

    move/from16 v0, v16

    if-lt v0, v4, :cond_13

    .line 443
    if-nez v15, :cond_66

    const/4 v4, 0x0

    :goto_c
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    invoke-virtual {v0, v1, v2, v4}, Lcom/alibaba/fastjson/serializer/JavaBeanSerializer;->writeAfter(Lcom/alibaba/fastjson/serializer/JSONSerializer;Ljava/lang/Object;C)C

    .line 445
    array-length v4, v12
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-gtz v4, :cond_67

    .line 450
    :cond_4
    :goto_d
    if-eqz p6, :cond_68

    .line 467
    :goto_e
    move-object/from16 v0, p1

    iput-object v5, v0, Lcom/alibaba/fastjson/serializer/JSONSerializer;->context:Lcom/alibaba/fastjson/serializer/SerialContext;

    .line 469
    return-void

    .line 141
    :cond_5
    invoke-virtual/range {v17 .. v17}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->writeNull()V

    .line 142
    return-void

    .line 146
    :cond_6
    return-void

    .line 152
    :cond_7
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/alibaba/fastjson/serializer/JavaBeanSerializer;->sortedGetters:[Lcom/alibaba/fastjson/serializer/FieldSerializer;

    move-object v12, v4

    goto/16 :goto_0

    .line 159
    :cond_8
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/alibaba/fastjson/serializer/JavaBeanSerializer;->beanInfo:Lcom/alibaba/fastjson/serializer/SerializeBeanInfo;

    iget v8, v4, Lcom/alibaba/fastjson/serializer/SerializeBeanInfo;->features:I

    move-object/from16 v4, p1

    move-object/from16 v6, p2

    move-object/from16 v7, p3

    move/from16 v9, p5

    invoke-virtual/range {v4 .. v9}, Lcom/alibaba/fastjson/serializer/JSONSerializer;->setContext(Lcom/alibaba/fastjson/serializer/SerialContext;Ljava/lang/Object;Ljava/lang/Object;II)V

    goto/16 :goto_1

    :cond_9
    const/16 v4, 0x5b

    .line 165
    goto/16 :goto_2

    :cond_a
    const/16 v6, 0x5d

    move v13, v6

    .line 166
    goto/16 :goto_3

    .line 168
    :cond_b
    :try_start_1
    move-object/from16 v0, v17

    invoke-virtual {v0, v4}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->append(C)Lcom/alibaba/fastjson/serializer/SerializeWriter;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/16 :goto_4

    .line 468
    :catch_0
    move-exception v4

    :try_start_2
    const-string/jumbo v6, "write javaBean error, fastjson version 1.2.47"

    .line 455
    if-nez p2, :cond_69

    .line 458
    :goto_f
    if-nez p3, :cond_6a

    .line 461
    :goto_10
    invoke-virtual {v4}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v7

    if-nez v7, :cond_6b

    .line 465
    :goto_11
    new-instance v7, Lcom/alibaba/fastjson/JSONException;

    invoke-direct {v7, v6, v4}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v7
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :catchall_0
    move-exception v4

    .line 467
    move-object/from16 v0, p1

    iput-object v5, v0, Lcom/alibaba/fastjson/serializer/JSONSerializer;->context:Lcom/alibaba/fastjson/serializer/SerialContext;

    throw v4

    .line 171
    :cond_c
    :try_start_3
    sget-object v4, Lcom/alibaba/fastjson/serializer/SerializerFeature;->PrettyFormat:Lcom/alibaba/fastjson/serializer/SerializerFeature;

    move-object/from16 v0, v17

    invoke-virtual {v0, v4}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->isEnabled(Lcom/alibaba/fastjson/serializer/SerializerFeature;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 172
    invoke-virtual/range {p1 .. p1}, Lcom/alibaba/fastjson/serializer/JSONSerializer;->incrementIndent()V

    .line 173
    invoke-virtual/range {p1 .. p1}, Lcom/alibaba/fastjson/serializer/JSONSerializer;->println()V

    goto/16 :goto_5

    .line 178
    :cond_d
    sget-object v6, Lcom/alibaba/fastjson/serializer/SerializerFeature;->WriteClassName:Lcom/alibaba/fastjson/serializer/SerializerFeature;

    iget v6, v6, Lcom/alibaba/fastjson/serializer/SerializerFeature;->mask:I

    and-int v6, v6, p5

    if-nez v6, :cond_1

    .line 180
    move-object/from16 v0, p1

    move-object/from16 v1, p4

    move-object/from16 v2, p2

    invoke-virtual {v0, v1, v2}, Lcom/alibaba/fastjson/serializer/JSONSerializer;->isWriteClassName(Ljava/lang/reflect/Type;Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_1

    goto/16 :goto_7

    .line 184
    :cond_e
    move-object/from16 v0, p4

    instance-of v6, v0, Ljava/lang/reflect/WildcardType;

    if-eqz v6, :cond_2

    .line 185
    invoke-static/range {p4 .. p4}, Lcom/alibaba/fastjson/util/TypeUtils;->getClass(Ljava/lang/reflect/Type;)Ljava/lang/Class;

    move-result-object v6

    goto/16 :goto_6

    .line 191
    :cond_f
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/alibaba/fastjson/serializer/JavaBeanSerializer;->beanInfo:Lcom/alibaba/fastjson/serializer/SerializeBeanInfo;

    iget-object v4, v4, Lcom/alibaba/fastjson/serializer/SerializeBeanInfo;->typeKey:Ljava/lang/String;

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    invoke-virtual {v0, v1, v4, v2}, Lcom/alibaba/fastjson/serializer/JavaBeanSerializer;->writeClassName(Lcom/alibaba/fastjson/serializer/JSONSerializer;Ljava/lang/String;Ljava/lang/Object;)V

    .line 192
    const/4 v4, 0x1

    goto/16 :goto_7

    :cond_10
    const/16 v4, 0x2c

    .line 196
    goto/16 :goto_8

    .line 198
    :cond_11
    move-object/from16 v0, v17

    iget-boolean v6, v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->useSingleQuotes:Z

    if-nez v6, :cond_3

    const/4 v6, 0x1

    move v14, v6

    goto/16 :goto_9

    :cond_12
    const/4 v4, 0x1

    .line 200
    goto/16 :goto_a

    .line 206
    :cond_13
    aget-object v21, v12, v16

    .line 208
    move-object/from16 v0, v21

    iget-object v4, v0, Lcom/alibaba/fastjson/serializer/FieldSerializer;->fieldInfo:Lcom/alibaba/fastjson/util/FieldInfo;

    iget-object v4, v4, Lcom/alibaba/fastjson/util/FieldInfo;->field:Ljava/lang/reflect/Field;

    .line 209
    move-object/from16 v0, v21

    iget-object v0, v0, Lcom/alibaba/fastjson/serializer/FieldSerializer;->fieldInfo:Lcom/alibaba/fastjson/util/FieldInfo;

    move-object/from16 v22, v0

    .line 210
    move-object/from16 v0, v22

    iget-object v10, v0, Lcom/alibaba/fastjson/util/FieldInfo;->name:Ljava/lang/String;

    .line 211
    move-object/from16 v0, v22

    iget-object v0, v0, Lcom/alibaba/fastjson/util/FieldInfo;->fieldClass:Ljava/lang/Class;

    move-object/from16 v23, v0

    .line 213
    if-nez v19, :cond_17

    .line 221
    :cond_14
    if-nez v20, :cond_18

    .line 227
    :cond_15
    const/4 v4, 0x0

    .line 228
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    invoke-virtual {v0, v1, v2, v10}, Lcom/alibaba/fastjson/serializer/JavaBeanSerializer;->applyName(Lcom/alibaba/fastjson/serializer/JSONSerializer;Ljava/lang/Object;Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_19

    .line 230
    :cond_16
    if-nez v18, :cond_20

    move v4, v15

    .line 205
    :goto_12
    add-int/lit8 v6, v16, 0x1

    move/from16 v16, v6

    move v15, v4

    goto/16 :goto_b

    .line 214
    :cond_17
    if-eqz v4, :cond_14

    .line 215
    move-object/from16 v0, v22

    iget-boolean v6, v0, Lcom/alibaba/fastjson/util/FieldInfo;->fieldTransient:Z

    if-eqz v6, :cond_14

    move v4, v15

    .line 216
    goto :goto_12

    .line 222
    :cond_18
    if-nez v4, :cond_15

    move v4, v15

    .line 223
    goto :goto_12

    .line 228
    :cond_19
    move-object/from16 v0, v22

    iget-object v6, v0, Lcom/alibaba/fastjson/util/FieldInfo;->label:Ljava/lang/String;

    .line 229
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-virtual {v0, v1, v6}, Lcom/alibaba/fastjson/serializer/JavaBeanSerializer;->applyLabel(Lcom/alibaba/fastjson/serializer/JSONSerializer;Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_16

    .line 237
    :goto_13
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/alibaba/fastjson/serializer/JavaBeanSerializer;->beanInfo:Lcom/alibaba/fastjson/serializer/SerializeBeanInfo;

    iget-object v6, v6, Lcom/alibaba/fastjson/serializer/SerializeBeanInfo;->typeKey:Ljava/lang/String;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    if-nez v6, :cond_21

    .line 245
    :cond_1a
    if-nez v4, :cond_22

    .line 249
    :try_start_4
    move-object/from16 v0, v21

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson/serializer/FieldSerializer;->getPropertyValueDirect(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_4
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_4 .. :try_end_4} :catch_1
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    move-result-object v4

    .line 259
    :goto_14
    :try_start_5
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    invoke-virtual {v0, v1, v2, v10, v4}, Lcom/alibaba/fastjson/serializer/JavaBeanSerializer;->apply(Lcom/alibaba/fastjson/serializer/JSONSerializer;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_24

    const-class v6, Ljava/lang/String;

    .line 263
    move-object/from16 v0, v23

    if-eq v0, v6, :cond_25

    :cond_1b
    move-object v11, v4

    .line 270
    :goto_15
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    invoke-virtual {v0, v1, v2, v10, v11}, Lcom/alibaba/fastjson/serializer/JavaBeanSerializer;->processKey(Lcom/alibaba/fastjson/serializer/JSONSerializer;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v24

    .line 273
    move-object/from16 v0, v21

    iget-object v8, v0, Lcom/alibaba/fastjson/serializer/FieldSerializer;->fieldContext:Lcom/alibaba/fastjson/serializer/BeanContext;

    move-object/from16 v6, p0

    move-object/from16 v7, p1

    move-object/from16 v9, p2

    invoke-virtual/range {v6 .. v11}, Lcom/alibaba/fastjson/serializer/JavaBeanSerializer;->processValue(Lcom/alibaba/fastjson/serializer/JSONSerializer;Lcom/alibaba/fastjson/serializer/BeanContext;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    .line 276
    if-eqz v4, :cond_27

    move-object v6, v4

    .line 319
    :goto_16
    if-nez v6, :cond_3f

    .line 349
    :cond_1c
    :goto_17
    if-nez v15, :cond_4e

    .line 362
    :cond_1d
    :goto_18
    move-object/from16 v0, v24

    if-ne v0, v10, :cond_51

    .line 368
    if-ne v11, v6, :cond_53

    .line 374
    if-eqz v18, :cond_55

    .line 384
    :cond_1e
    :goto_19
    if-eqz v18, :cond_57

    .line 414
    move-object/from16 v0, v21

    move-object/from16 v1, p1

    invoke-virtual {v0, v1, v6}, Lcom/alibaba/fastjson/serializer/FieldSerializer;->writeValue(Lcom/alibaba/fastjson/serializer/JSONSerializer;Ljava/lang/Object;)V

    .line 418
    :goto_1a
    const/4 v4, 0x0

    .line 419
    move-object/from16 v0, v22

    iget-boolean v7, v0, Lcom/alibaba/fastjson/util/FieldInfo;->unwrapped:Z

    if-nez v7, :cond_61

    .line 438
    :cond_1f
    :goto_1b
    if-eqz v4, :cond_65

    move v4, v15

    goto/16 :goto_12

    .line 231
    :cond_20
    const/4 v4, 0x1

    goto :goto_13

    .line 237
    :cond_21
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/alibaba/fastjson/serializer/JavaBeanSerializer;->beanInfo:Lcom/alibaba/fastjson/serializer/SerializeBeanInfo;

    iget-object v6, v6, Lcom/alibaba/fastjson/serializer/SerializeBeanInfo;->typeKey:Ljava/lang/String;

    .line 238
    invoke-virtual {v10, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1a

    .line 239
    move-object/from16 v0, p1

    move-object/from16 v1, p4

    move-object/from16 v2, p2

    invoke-virtual {v0, v1, v2}, Lcom/alibaba/fastjson/serializer/JSONSerializer;->isWriteClassName(Ljava/lang/reflect/Type;Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1a

    move v4, v15

    .line 240
    goto/16 :goto_12

    :cond_22
    const/4 v4, 0x0

    .line 246
    goto :goto_14

    .line 256
    :catch_1
    move-exception v4

    .line 251
    sget-object v6, Lcom/alibaba/fastjson/serializer/SerializerFeature;->IgnoreErrorGetter:Lcom/alibaba/fastjson/serializer/SerializerFeature;

    move-object/from16 v0, v17

    invoke-virtual {v0, v6}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->isEnabled(Lcom/alibaba/fastjson/serializer/SerializerFeature;)Z

    move-result v6

    if-nez v6, :cond_23

    .line 254
    throw v4

    :cond_23
    const/4 v4, 0x0

    .line 252
    goto :goto_14

    :cond_24
    move v4, v15

    .line 260
    goto/16 :goto_12

    :cond_25
    const-string/jumbo v6, "trim"

    .line 263
    move-object/from16 v0, v22

    iget-object v7, v0, Lcom/alibaba/fastjson/util/FieldInfo;->format:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1b

    .line 264
    if-nez v4, :cond_26

    move-object v11, v4

    goto :goto_15

    .line 265
    :cond_26
    check-cast v4, Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    move-object v11, v4

    goto/16 :goto_15

    .line 277
    :cond_27
    move-object/from16 v0, v22

    iget v6, v0, Lcom/alibaba/fastjson/util/FieldInfo;->serialzeFeatures:I

    .line 278
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/alibaba/fastjson/serializer/JavaBeanSerializer;->beanInfo:Lcom/alibaba/fastjson/serializer/SerializeBeanInfo;

    iget-object v7, v7, Lcom/alibaba/fastjson/serializer/SerializeBeanInfo;->jsonType:Lcom/alibaba/fastjson/annotation/JSONType;

    if-nez v7, :cond_29

    :goto_1c
    const-class v7, Ljava/lang/Boolean;

    .line 282
    move-object/from16 v0, v23

    if-eq v0, v7, :cond_2a

    const-class v7, Ljava/lang/String;

    .line 290
    move-object/from16 v0, v23

    if-eq v0, v7, :cond_2f

    const-class v7, Ljava/lang/Number;

    .line 298
    move-object/from16 v0, v23

    invoke-virtual {v7, v0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v7

    if-nez v7, :cond_34

    const-class v7, Ljava/util/Collection;

    .line 306
    move-object/from16 v0, v23

    invoke-virtual {v7, v0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v7

    if-nez v7, :cond_39

    .line 314
    if-eqz v18, :cond_3e

    :cond_28
    :goto_1d
    move-object v6, v4

    goto/16 :goto_16

    .line 279
    :cond_29
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/alibaba/fastjson/serializer/JavaBeanSerializer;->beanInfo:Lcom/alibaba/fastjson/serializer/SerializeBeanInfo;

    iget-object v7, v7, Lcom/alibaba/fastjson/serializer/SerializeBeanInfo;->jsonType:Lcom/alibaba/fastjson/annotation/JSONType;

    invoke-interface {v7}, Lcom/alibaba/fastjson/annotation/JSONType;->serialzeFeatures()[Lcom/alibaba/fastjson/serializer/SerializerFeature;

    move-result-object v7

    invoke-static {v7}, Lcom/alibaba/fastjson/serializer/SerializerFeature;->of([Lcom/alibaba/fastjson/serializer/SerializerFeature;)I

    move-result v7

    or-int/2addr v6, v7

    goto :goto_1c

    .line 283
    :cond_2a
    sget-object v7, Lcom/alibaba/fastjson/serializer/SerializerFeature;->WriteNullBooleanAsFalse:Lcom/alibaba/fastjson/serializer/SerializerFeature;

    iget v7, v7, Lcom/alibaba/fastjson/serializer/SerializerFeature;->mask:I

    .line 284
    sget-object v8, Lcom/alibaba/fastjson/serializer/SerializerFeature;->WriteMapNullValue:Lcom/alibaba/fastjson/serializer/SerializerFeature;

    iget v8, v8, Lcom/alibaba/fastjson/serializer/SerializerFeature;->mask:I

    or-int/2addr v8, v7

    .line 285
    if-eqz v18, :cond_2d

    .line 287
    :cond_2b
    and-int/2addr v6, v7

    if-eqz v6, :cond_2e

    .line 288
    :cond_2c
    const/4 v4, 0x0

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    :goto_1e
    move-object v6, v4

    .line 290
    goto/16 :goto_16

    .line 285
    :cond_2d
    and-int v9, v6, v8

    if-nez v9, :cond_2b

    move-object/from16 v0, v17

    iget v9, v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->features:I

    and-int/2addr v8, v9

    if-nez v8, :cond_2b

    move v4, v15

    .line 286
    goto/16 :goto_12

    .line 287
    :cond_2e
    move-object/from16 v0, v17

    iget v6, v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->features:I

    and-int/2addr v6, v7

    if-nez v6, :cond_2c

    goto :goto_1e

    .line 291
    :cond_2f
    sget-object v7, Lcom/alibaba/fastjson/serializer/SerializerFeature;->WriteNullStringAsEmpty:Lcom/alibaba/fastjson/serializer/SerializerFeature;

    iget v7, v7, Lcom/alibaba/fastjson/serializer/SerializerFeature;->mask:I

    .line 292
    sget-object v8, Lcom/alibaba/fastjson/serializer/SerializerFeature;->WriteMapNullValue:Lcom/alibaba/fastjson/serializer/SerializerFeature;

    iget v8, v8, Lcom/alibaba/fastjson/serializer/SerializerFeature;->mask:I

    or-int/2addr v8, v7

    .line 293
    if-eqz v18, :cond_32

    .line 295
    :cond_30
    and-int/2addr v6, v7

    if-eqz v6, :cond_33

    :cond_31
    const-string/jumbo v4, ""

    :goto_1f
    move-object v6, v4

    .line 298
    goto/16 :goto_16

    .line 293
    :cond_32
    and-int v9, v6, v8

    if-nez v9, :cond_30

    move-object/from16 v0, v17

    iget v9, v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->features:I

    and-int/2addr v8, v9

    if-nez v8, :cond_30

    move v4, v15

    .line 294
    goto/16 :goto_12

    .line 295
    :cond_33
    move-object/from16 v0, v17

    iget v6, v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->features:I

    and-int/2addr v6, v7

    if-nez v6, :cond_31

    goto :goto_1f

    .line 299
    :cond_34
    sget-object v7, Lcom/alibaba/fastjson/serializer/SerializerFeature;->WriteNullNumberAsZero:Lcom/alibaba/fastjson/serializer/SerializerFeature;

    iget v7, v7, Lcom/alibaba/fastjson/serializer/SerializerFeature;->mask:I

    .line 300
    sget-object v8, Lcom/alibaba/fastjson/serializer/SerializerFeature;->WriteMapNullValue:Lcom/alibaba/fastjson/serializer/SerializerFeature;

    iget v8, v8, Lcom/alibaba/fastjson/serializer/SerializerFeature;->mask:I

    or-int/2addr v8, v7

    .line 301
    if-eqz v18, :cond_37

    .line 303
    :cond_35
    and-int/2addr v6, v7

    if-eqz v6, :cond_38

    :cond_36
    const/4 v4, 0x0

    .line 304
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    :goto_20
    move-object v6, v4

    .line 306
    goto/16 :goto_16

    .line 301
    :cond_37
    and-int v9, v6, v8

    if-nez v9, :cond_35

    move-object/from16 v0, v17

    iget v9, v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->features:I

    and-int/2addr v8, v9

    if-nez v8, :cond_35

    move v4, v15

    .line 302
    goto/16 :goto_12

    .line 303
    :cond_38
    move-object/from16 v0, v17

    iget v6, v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->features:I

    and-int/2addr v6, v7

    if-nez v6, :cond_36

    goto :goto_20

    .line 307
    :cond_39
    sget-object v7, Lcom/alibaba/fastjson/serializer/SerializerFeature;->WriteNullListAsEmpty:Lcom/alibaba/fastjson/serializer/SerializerFeature;

    iget v7, v7, Lcom/alibaba/fastjson/serializer/SerializerFeature;->mask:I

    .line 308
    sget-object v8, Lcom/alibaba/fastjson/serializer/SerializerFeature;->WriteMapNullValue:Lcom/alibaba/fastjson/serializer/SerializerFeature;

    iget v8, v8, Lcom/alibaba/fastjson/serializer/SerializerFeature;->mask:I

    or-int/2addr v8, v7

    .line 309
    if-eqz v18, :cond_3c

    .line 311
    :cond_3a
    and-int/2addr v6, v7

    if-eqz v6, :cond_3d

    .line 312
    :cond_3b
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v4

    goto/16 :goto_1d

    .line 309
    :cond_3c
    and-int v9, v6, v8

    if-nez v9, :cond_3a

    move-object/from16 v0, v17

    iget v9, v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->features:I

    and-int/2addr v8, v9

    if-nez v8, :cond_3a

    move v4, v15

    .line 310
    goto/16 :goto_12

    .line 311
    :cond_3d
    move-object/from16 v0, v17

    iget v6, v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->features:I

    and-int/2addr v6, v7

    if-nez v6, :cond_3b

    goto/16 :goto_1d

    .line 314
    :cond_3e
    move-object/from16 v0, v21

    iget-boolean v6, v0, Lcom/alibaba/fastjson/serializer/FieldSerializer;->writeNull:Z

    if-nez v6, :cond_28

    sget-object v6, Lcom/alibaba/fastjson/serializer/SerializerFeature;->WriteMapNullValue:Lcom/alibaba/fastjson/serializer/SerializerFeature;

    iget v6, v6, Lcom/alibaba/fastjson/serializer/SerializerFeature;->mask:I

    move-object/from16 v0, v17

    invoke-virtual {v0, v6}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->isEnabled(I)Z

    move-result v6

    if-nez v6, :cond_28

    move v4, v15

    .line 315
    goto/16 :goto_12

    .line 319
    :cond_3f
    move-object/from16 v0, v17

    iget-boolean v4, v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->notWriteDefaultValue:Z

    if-eqz v4, :cond_47

    .line 324
    :cond_40
    move-object/from16 v0, v22

    iget-object v7, v0, Lcom/alibaba/fastjson/util/FieldInfo;->fieldClass:Ljava/lang/Class;

    .line 325
    sget-object v4, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    if-eq v7, v4, :cond_48

    .line 328
    :cond_41
    sget-object v4, Ljava/lang/Short;->TYPE:Ljava/lang/Class;

    if-eq v7, v4, :cond_49

    .line 331
    :cond_42
    sget-object v4, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    if-eq v7, v4, :cond_4a

    .line 334
    :cond_43
    sget-object v4, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    if-eq v7, v4, :cond_4b

    .line 337
    :cond_44
    sget-object v4, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    if-eq v7, v4, :cond_4c

    .line 340
    :cond_45
    sget-object v4, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    if-eq v7, v4, :cond_4d

    .line 343
    :cond_46
    sget-object v4, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    if-ne v7, v4, :cond_1c

    instance-of v4, v6, Ljava/lang/Boolean;

    if-eqz v4, :cond_1c

    move-object v0, v6

    check-cast v0, Ljava/lang/Boolean;

    move-object v4, v0

    .line 344
    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    if-nez v4, :cond_1c

    move v4, v15

    .line 345
    goto/16 :goto_12

    .line 319
    :cond_47
    move-object/from16 v0, v22

    iget v4, v0, Lcom/alibaba/fastjson/util/FieldInfo;->serialzeFeatures:I

    sget-object v7, Lcom/alibaba/fastjson/serializer/SerializerFeature;->NotWriteDefaultValue:Lcom/alibaba/fastjson/serializer/SerializerFeature;

    iget v7, v7, Lcom/alibaba/fastjson/serializer/SerializerFeature;->mask:I

    and-int/2addr v4, v7

    if-nez v4, :cond_40

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/alibaba/fastjson/serializer/JavaBeanSerializer;->beanInfo:Lcom/alibaba/fastjson/serializer/SerializeBeanInfo;

    iget v4, v4, Lcom/alibaba/fastjson/serializer/SerializeBeanInfo;->features:I

    sget-object v7, Lcom/alibaba/fastjson/serializer/SerializerFeature;->NotWriteDefaultValue:Lcom/alibaba/fastjson/serializer/SerializerFeature;

    iget v7, v7, Lcom/alibaba/fastjson/serializer/SerializerFeature;->mask:I

    and-int/2addr v4, v7

    if-nez v4, :cond_40

    goto/16 :goto_17

    .line 325
    :cond_48
    instance-of v4, v6, Ljava/lang/Byte;

    if-eqz v4, :cond_41

    move-object v0, v6

    check-cast v0, Ljava/lang/Byte;

    move-object v4, v0

    .line 326
    invoke-virtual {v4}, Ljava/lang/Byte;->byteValue()B

    move-result v4

    if-nez v4, :cond_41

    move v4, v15

    .line 327
    goto/16 :goto_12

    .line 328
    :cond_49
    instance-of v4, v6, Ljava/lang/Short;

    if-eqz v4, :cond_42

    move-object v0, v6

    check-cast v0, Ljava/lang/Short;

    move-object v4, v0

    .line 329
    invoke-virtual {v4}, Ljava/lang/Short;->shortValue()S

    move-result v4

    if-nez v4, :cond_42

    move v4, v15

    .line 330
    goto/16 :goto_12

    .line 331
    :cond_4a
    instance-of v4, v6, Ljava/lang/Integer;

    if-eqz v4, :cond_43

    move-object v0, v6

    check-cast v0, Ljava/lang/Integer;

    move-object v4, v0

    .line 332
    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    if-nez v4, :cond_43

    move v4, v15

    .line 333
    goto/16 :goto_12

    .line 334
    :cond_4b
    instance-of v4, v6, Ljava/lang/Long;

    if-eqz v4, :cond_44

    move-object v0, v6

    check-cast v0, Ljava/lang/Long;

    move-object v4, v0

    .line 335
    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v8

    const-wide/16 v26, 0x0

    cmp-long v4, v8, v26

    if-nez v4, :cond_44

    move v4, v15

    .line 336
    goto/16 :goto_12

    .line 337
    :cond_4c
    instance-of v4, v6, Ljava/lang/Float;

    if-eqz v4, :cond_45

    move-object v0, v6

    check-cast v0, Ljava/lang/Float;

    move-object v4, v0

    .line 338
    invoke-virtual {v4}, Ljava/lang/Float;->floatValue()F

    move-result v4

    const/4 v8, 0x0

    cmpl-float v4, v4, v8

    if-nez v4, :cond_45

    move v4, v15

    .line 339
    goto/16 :goto_12

    .line 340
    :cond_4d
    instance-of v4, v6, Ljava/lang/Double;

    if-eqz v4, :cond_46

    move-object v0, v6

    check-cast v0, Ljava/lang/Double;

    move-object v4, v0

    .line 341
    invoke-virtual {v4}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v8

    const-wide/16 v26, 0x0

    cmpl-double v4, v8, v26

    if-nez v4, :cond_46

    move v4, v15

    .line 342
    goto/16 :goto_12

    .line 350
    :cond_4e
    move-object/from16 v0, v22

    iget-boolean v4, v0, Lcom/alibaba/fastjson/util/FieldInfo;->unwrapped:Z

    if-nez v4, :cond_50

    :cond_4f
    const/16 v4, 0x2c

    .line 356
    move-object/from16 v0, v17

    invoke-virtual {v0, v4}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write(I)V

    .line 357
    sget-object v4, Lcom/alibaba/fastjson/serializer/SerializerFeature;->PrettyFormat:Lcom/alibaba/fastjson/serializer/SerializerFeature;

    move-object/from16 v0, v17

    invoke-virtual {v0, v4}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->isEnabled(Lcom/alibaba/fastjson/serializer/SerializerFeature;)Z

    move-result v4

    if-eqz v4, :cond_1d

    .line 358
    invoke-virtual/range {p1 .. p1}, Lcom/alibaba/fastjson/serializer/JSONSerializer;->println()V

    goto/16 :goto_18

    .line 350
    :cond_50
    instance-of v4, v6, Ljava/util/Map;

    if-eqz v4, :cond_4f

    move-object v0, v6

    check-cast v0, Ljava/util/Map;

    move-object v4, v0

    .line 352
    invoke-interface {v4}, Ljava/util/Map;->size()I

    move-result v4

    if-nez v4, :cond_4f

    move v4, v15

    .line 353
    goto/16 :goto_12

    .line 363
    :cond_51
    if-eqz v18, :cond_52

    .line 367
    :goto_21
    move-object/from16 v0, p1

    invoke-virtual {v0, v6}, Lcom/alibaba/fastjson/serializer/JSONSerializer;->write(Ljava/lang/Object;)V

    goto/16 :goto_1a

    .line 364
    :cond_52
    const/4 v4, 0x1

    move-object/from16 v0, v17

    move-object/from16 v1, v24

    invoke-virtual {v0, v1, v4}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->writeFieldName(Ljava/lang/String;Z)V

    goto :goto_21

    .line 369
    :cond_53
    if-eqz v18, :cond_54

    .line 372
    :goto_22
    move-object/from16 v0, p1

    invoke-virtual {v0, v6}, Lcom/alibaba/fastjson/serializer/JSONSerializer;->write(Ljava/lang/Object;)V

    goto/16 :goto_1a

    .line 370
    :cond_54
    move-object/from16 v0, v21

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson/serializer/FieldSerializer;->writePrefix(Lcom/alibaba/fastjson/serializer/JSONSerializer;)V

    goto :goto_22

    .line 375
    :cond_55
    move-object/from16 v0, v22

    iget-boolean v4, v0, Lcom/alibaba/fastjson/util/FieldInfo;->unwrapped:Z

    if-nez v4, :cond_1e

    .line 376
    if-nez v14, :cond_56

    .line 379
    move-object/from16 v0, v21

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson/serializer/FieldSerializer;->writePrefix(Lcom/alibaba/fastjson/serializer/JSONSerializer;)V

    goto/16 :goto_19

    .line 377
    :cond_56
    move-object/from16 v0, v22

    iget-object v4, v0, Lcom/alibaba/fastjson/util/FieldInfo;->name_chars:[C

    const/4 v7, 0x0

    move-object/from16 v0, v22

    iget-object v8, v0, Lcom/alibaba/fastjson/util/FieldInfo;->name_chars:[C

    array-length v8, v8

    move-object/from16 v0, v17

    invoke-virtual {v0, v4, v7, v8}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write([CII)V

    goto/16 :goto_19

    .line 385
    :cond_57
    invoke-virtual/range {v22 .. v22}, Lcom/alibaba/fastjson/util/FieldInfo;->getAnnotation()Lcom/alibaba/fastjson/annotation/JSONField;

    move-result-object v4

    const-class v7, Ljava/lang/String;

    .line 386
    move-object/from16 v0, v23

    if-eq v0, v7, :cond_59

    .line 404
    :goto_23
    move-object/from16 v0, v22

    iget-boolean v4, v0, Lcom/alibaba/fastjson/util/FieldInfo;->unwrapped:Z

    if-nez v4, :cond_60

    .line 411
    :cond_58
    move-object/from16 v0, v21

    move-object/from16 v1, p1

    invoke-virtual {v0, v1, v6}, Lcom/alibaba/fastjson/serializer/FieldSerializer;->writeValue(Lcom/alibaba/fastjson/serializer/JSONSerializer;Ljava/lang/Object;)V

    goto/16 :goto_1a

    .line 386
    :cond_59
    if-nez v4, :cond_5b

    .line 387
    :cond_5a
    if-eqz v6, :cond_5c

    .line 395
    move-object v0, v6

    check-cast v0, Ljava/lang/String;

    move-object v4, v0

    .line 397
    move-object/from16 v0, v17

    iget-boolean v7, v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->useSingleQuotes:Z

    if-nez v7, :cond_5f

    .line 400
    const/4 v7, 0x0

    move-object/from16 v0, v17

    invoke-virtual {v0, v4, v7}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->writeStringWithDoubleQuote(Ljava/lang/String;C)V

    goto/16 :goto_1a

    .line 386
    :cond_5b
    invoke-interface {v4}, Lcom/alibaba/fastjson/annotation/JSONField;->serializeUsing()Ljava/lang/Class;

    move-result-object v4

    const-class v7, Ljava/lang/Void;

    if-eq v4, v7, :cond_5a

    goto :goto_23

    .line 388
    :cond_5c
    move-object/from16 v0, v17

    iget v4, v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->features:I

    sget-object v7, Lcom/alibaba/fastjson/serializer/SerializerFeature;->WriteNullStringAsEmpty:Lcom/alibaba/fastjson/serializer/SerializerFeature;

    iget v7, v7, Lcom/alibaba/fastjson/serializer/SerializerFeature;->mask:I

    and-int/2addr v4, v7

    if-eqz v4, :cond_5e

    :cond_5d
    const-string/jumbo v4, ""

    .line 390
    move-object/from16 v0, v17

    invoke-virtual {v0, v4}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->writeString(Ljava/lang/String;)V

    goto/16 :goto_1a

    .line 388
    :cond_5e
    move-object/from16 v0, v21

    iget v4, v0, Lcom/alibaba/fastjson/serializer/FieldSerializer;->features:I

    sget-object v7, Lcom/alibaba/fastjson/serializer/SerializerFeature;->WriteNullStringAsEmpty:Lcom/alibaba/fastjson/serializer/SerializerFeature;

    iget v7, v7, Lcom/alibaba/fastjson/serializer/SerializerFeature;->mask:I

    and-int/2addr v4, v7

    if-nez v4, :cond_5d

    .line 392
    invoke-virtual/range {v17 .. v17}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->writeNull()V

    goto/16 :goto_1a

    .line 398
    :cond_5f
    move-object/from16 v0, v17

    invoke-virtual {v0, v4}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->writeStringWithSingleQuote(Ljava/lang/String;)V

    goto/16 :goto_1a

    .line 404
    :cond_60
    instance-of v4, v6, Ljava/util/Map;

    if-eqz v4, :cond_58

    move-object v0, v6

    check-cast v0, Ljava/util/Map;

    move-object v4, v0

    .line 406
    invoke-interface {v4}, Ljava/util/Map;->size()I

    move-result v4

    if-nez v4, :cond_58

    .line 407
    const/4 v4, 0x0

    goto/16 :goto_12

    .line 419
    :cond_61
    instance-of v7, v6, Ljava/util/Map;

    if-eqz v7, :cond_1f

    .line 421
    check-cast v6, Ljava/util/Map;

    .line 422
    invoke-interface {v6}, Ljava/util/Map;->size()I

    move-result v7

    if-eqz v7, :cond_63

    .line 424
    sget-object v7, Lcom/alibaba/fastjson/serializer/SerializerFeature;->WriteMapNullValue:Lcom/alibaba/fastjson/serializer/SerializerFeature;

    move-object/from16 v0, p1

    invoke-virtual {v0, v7}, Lcom/alibaba/fastjson/serializer/JSONSerializer;->isEnabled(Lcom/alibaba/fastjson/serializer/SerializerFeature;)Z

    move-result v7

    if-nez v7, :cond_1f

    .line 425
    const/4 v7, 0x0

    .line 426
    invoke-interface {v6}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_62
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-nez v8, :cond_64

    move v6, v7

    .line 432
    :goto_24
    if-nez v6, :cond_1f

    .line 433
    const/4 v4, 0x1

    goto/16 :goto_1b

    .line 423
    :cond_63
    const/4 v4, 0x1

    goto/16 :goto_1b

    .line 426
    :cond_64
    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    .line 427
    if-eqz v8, :cond_62

    .line 428
    const/4 v6, 0x1

    goto :goto_24

    .line 439
    :cond_65
    const/4 v4, 0x1

    goto/16 :goto_12

    :cond_66
    const/16 v4, 0x2c

    .line 443
    goto/16 :goto_c

    .line 445
    :cond_67
    sget-object v4, Lcom/alibaba/fastjson/serializer/SerializerFeature;->PrettyFormat:Lcom/alibaba/fastjson/serializer/SerializerFeature;

    move-object/from16 v0, v17

    invoke-virtual {v0, v4}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->isEnabled(Lcom/alibaba/fastjson/serializer/SerializerFeature;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 446
    invoke-virtual/range {p1 .. p1}, Lcom/alibaba/fastjson/serializer/JSONSerializer;->decrementIdent()V

    .line 447
    invoke-virtual/range {p1 .. p1}, Lcom/alibaba/fastjson/serializer/JSONSerializer;->println()V

    goto/16 :goto_d

    .line 451
    :cond_68
    move-object/from16 v0, v17

    invoke-virtual {v0, v13}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->append(C)Lcom/alibaba/fastjson/serializer/SerializeWriter;
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto/16 :goto_e

    .line 456
    :cond_69
    :try_start_6
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, ", class "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual/range {p2 .. p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    goto/16 :goto_f

    .line 459
    :cond_6a
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, ", fieldName : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, p3

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    goto/16 :goto_10

    .line 462
    :cond_6b
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, ", "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v4}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    move-result-object v6

    goto/16 :goto_11
.end method

.method protected writeAfter(Lcom/alibaba/fastjson/serializer/JSONSerializer;Ljava/lang/Object;C)C
    .locals 2

    .prologue
    .line 720
    iget-object v0, p1, Lcom/alibaba/fastjson/serializer/JSONSerializer;->afterFilters:Ljava/util/List;

    if-nez v0, :cond_2

    .line 726
    :cond_0
    iget-object v0, p0, Lcom/alibaba/fastjson/serializer/JavaBeanSerializer;->afterFilters:Ljava/util/List;

    if-nez v0, :cond_3

    .line 732
    :cond_1
    return p3

    .line 721
    :cond_2
    iget-object v0, p1, Lcom/alibaba/fastjson/serializer/JSONSerializer;->afterFilters:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/fastjson/serializer/AfterFilter;

    .line 722
    invoke-virtual {v0, p1, p2, p3}, Lcom/alibaba/fastjson/serializer/AfterFilter;->writeAfter(Lcom/alibaba/fastjson/serializer/JSONSerializer;Ljava/lang/Object;C)C

    move-result p3

    goto :goto_0

    .line 727
    :cond_3
    iget-object v0, p0, Lcom/alibaba/fastjson/serializer/JavaBeanSerializer;->afterFilters:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/fastjson/serializer/AfterFilter;

    .line 728
    invoke-virtual {v0, p1, p2, p3}, Lcom/alibaba/fastjson/serializer/AfterFilter;->writeAfter(Lcom/alibaba/fastjson/serializer/JSONSerializer;Ljava/lang/Object;C)C

    move-result p3

    goto :goto_1
.end method

.method public writeAsArray(Lcom/alibaba/fastjson/serializer/JSONSerializer;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/reflect/Type;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 104
    invoke-virtual/range {p0 .. p5}, Lcom/alibaba/fastjson/serializer/JavaBeanSerializer;->write(Lcom/alibaba/fastjson/serializer/JSONSerializer;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/reflect/Type;I)V

    .line 105
    return-void
.end method

.method public writeAsArrayNonContext(Lcom/alibaba/fastjson/serializer/JSONSerializer;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/reflect/Type;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 112
    invoke-virtual/range {p0 .. p5}, Lcom/alibaba/fastjson/serializer/JavaBeanSerializer;->write(Lcom/alibaba/fastjson/serializer/JSONSerializer;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/reflect/Type;I)V

    .line 113
    return-void
.end method

.method protected writeBefore(Lcom/alibaba/fastjson/serializer/JSONSerializer;Ljava/lang/Object;C)C
    .locals 2

    .prologue
    .line 703
    iget-object v0, p1, Lcom/alibaba/fastjson/serializer/JSONSerializer;->beforeFilters:Ljava/util/List;

    if-nez v0, :cond_2

    .line 709
    :cond_0
    iget-object v0, p0, Lcom/alibaba/fastjson/serializer/JavaBeanSerializer;->beforeFilters:Ljava/util/List;

    if-nez v0, :cond_3

    .line 715
    :cond_1
    return p3

    .line 704
    :cond_2
    iget-object v0, p1, Lcom/alibaba/fastjson/serializer/JSONSerializer;->beforeFilters:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/fastjson/serializer/BeforeFilter;

    .line 705
    invoke-virtual {v0, p1, p2, p3}, Lcom/alibaba/fastjson/serializer/BeforeFilter;->writeBefore(Lcom/alibaba/fastjson/serializer/JSONSerializer;Ljava/lang/Object;C)C

    move-result p3

    goto :goto_0

    .line 710
    :cond_3
    iget-object v0, p0, Lcom/alibaba/fastjson/serializer/JavaBeanSerializer;->beforeFilters:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/fastjson/serializer/BeforeFilter;

    .line 711
    invoke-virtual {v0, p1, p2, p3}, Lcom/alibaba/fastjson/serializer/BeforeFilter;->writeBefore(Lcom/alibaba/fastjson/serializer/JSONSerializer;Ljava/lang/Object;C)C

    move-result p3

    goto :goto_1
.end method

.method protected writeClassName(Lcom/alibaba/fastjson/serializer/JSONSerializer;Ljava/lang/String;Ljava/lang/Object;)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 472
    if-eqz p2, :cond_0

    .line 475
    :goto_0
    iget-object v0, p1, Lcom/alibaba/fastjson/serializer/JSONSerializer;->out:Lcom/alibaba/fastjson/serializer/SerializeWriter;

    invoke-virtual {v0, p2, v1}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->writeFieldName(Ljava/lang/String;Z)V

    .line 476
    iget-object v0, p0, Lcom/alibaba/fastjson/serializer/JavaBeanSerializer;->beanInfo:Lcom/alibaba/fastjson/serializer/SerializeBeanInfo;

    iget-object v0, v0, Lcom/alibaba/fastjson/serializer/SerializeBeanInfo;->typeName:Ljava/lang/String;

    .line 477
    if-eqz v0, :cond_1

    .line 486
    :goto_1
    invoke-virtual {p1, v0}, Lcom/alibaba/fastjson/serializer/JSONSerializer;->write(Ljava/lang/String;)V

    .line 487
    return-void

    .line 473
    :cond_0
    iget-object v0, p1, Lcom/alibaba/fastjson/serializer/JSONSerializer;->config:Lcom/alibaba/fastjson/serializer/SerializeConfig;

    iget-object p2, v0, Lcom/alibaba/fastjson/serializer/SerializeConfig;->typeKey:Ljava/lang/String;

    goto :goto_0

    .line 478
    :cond_1
    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    .line 480
    invoke-static {v0}, Lcom/alibaba/fastjson/util/TypeUtils;->isProxy(Ljava/lang/Class;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 484
    :goto_2
    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    .line 481
    :cond_2
    invoke-virtual {v0}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v0

    goto :goto_2
.end method

.method public writeDirectNonContext(Lcom/alibaba/fastjson/serializer/JSONSerializer;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/reflect/Type;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 96
    invoke-virtual/range {p0 .. p5}, Lcom/alibaba/fastjson/serializer/JavaBeanSerializer;->write(Lcom/alibaba/fastjson/serializer/JSONSerializer;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/reflect/Type;I)V

    .line 97
    return-void
.end method

.method public writeNoneASM(Lcom/alibaba/fastjson/serializer/JSONSerializer;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/reflect/Type;I)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 128
    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move v5, p5

    invoke-virtual/range {v0 .. v6}, Lcom/alibaba/fastjson/serializer/JavaBeanSerializer;->write(Lcom/alibaba/fastjson/serializer/JSONSerializer;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/reflect/Type;IZ)V

    .line 129
    return-void
.end method

.method public writeReference(Lcom/alibaba/fastjson/serializer/JSONSerializer;Ljava/lang/Object;I)Z
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 490
    iget-object v0, p1, Lcom/alibaba/fastjson/serializer/JSONSerializer;->context:Lcom/alibaba/fastjson/serializer/SerialContext;

    .line 491
    sget-object v1, Lcom/alibaba/fastjson/serializer/SerializerFeature;->DisableCircularReferenceDetect:Lcom/alibaba/fastjson/serializer/SerializerFeature;

    iget v1, v1, Lcom/alibaba/fastjson/serializer/SerializerFeature;->mask:I

    .line 492
    if-nez v0, :cond_1

    .line 493
    :cond_0
    return v2

    .line 492
    :cond_1
    iget v0, v0, Lcom/alibaba/fastjson/serializer/SerialContext;->features:I

    and-int/2addr v0, v1

    if-nez v0, :cond_0

    and-int v0, p3, v1

    if-nez v0, :cond_0

    .line 496
    iget-object v0, p1, Lcom/alibaba/fastjson/serializer/JSONSerializer;->references:Ljava/util/IdentityHashMap;

    if-nez v0, :cond_3

    .line 500
    :cond_2
    return v2

    .line 496
    :cond_3
    iget-object v0, p1, Lcom/alibaba/fastjson/serializer/JSONSerializer;->references:Ljava/util/IdentityHashMap;

    invoke-virtual {v0, p2}, Ljava/util/IdentityHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 497
    invoke-virtual {p1, p2}, Lcom/alibaba/fastjson/serializer/JSONSerializer;->writeReference(Ljava/lang/Object;)V

    .line 498
    const/4 v0, 0x1

    return v0
.end method
