.class public Lcom/alibaba/fastjson/util/AntiCollisionHashMap;
.super Ljava/util/AbstractMap;
.source "AntiCollisionHashMap.java"

# interfaces
.implements Ljava/util/Map;
.implements Ljava/lang/Cloneable;
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alibaba/fastjson/util/AntiCollisionHashMap$Entry;,
        Lcom/alibaba/fastjson/util/AntiCollisionHashMap$EntryIterator;,
        Lcom/alibaba/fastjson/util/AntiCollisionHashMap$EntrySet;,
        Lcom/alibaba/fastjson/util/AntiCollisionHashMap$HashIterator;,
        Lcom/alibaba/fastjson/util/AntiCollisionHashMap$KeyIterator;,
        Lcom/alibaba/fastjson/util/AntiCollisionHashMap$KeySet;,
        Lcom/alibaba/fastjson/util/AntiCollisionHashMap$ValueIterator;,
        Lcom/alibaba/fastjson/util/AntiCollisionHashMap$Values;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/util/AbstractMap",
        "<TK;TV;>;",
        "Ljava/util/Map",
        "<TK;TV;>;",
        "Ljava/lang/Cloneable;",
        "Ljava/io/Serializable;"
    }
.end annotation


# static fields
.field static final DEFAULT_INITIAL_CAPACITY:I = 0x10

.field static final DEFAULT_LOAD_FACTOR:F = 0.75f

.field static final KEY:I = 0x1000193

.field static final MAXIMUM_CAPACITY:I = 0x40000000

.field static final M_MASK:I = -0x789a012d

.field static final SEED:I = -0x7ee3623b

.field private static final serialVersionUID:J = 0x507dac1c31660d1L


# instance fields
.field private transient entrySet:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/util/Map$Entry",
            "<TK;TV;>;>;"
        }
    .end annotation
.end field

.field volatile transient keySet:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<TK;>;"
        }
    .end annotation
.end field

.field final loadFactor:F

.field volatile transient modCount:I

.field final random:I

.field transient size:I

.field transient table:[Lcom/alibaba/fastjson/util/AntiCollisionHashMap$Entry;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Lcom/alibaba/fastjson/util/AntiCollisionHashMap$Entry",
            "<TK;TV;>;"
        }
    .end annotation
.end field

.field threshold:I

.field volatile transient values:Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Collection",
            "<TV;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 130
    invoke-direct {p0}, Ljava/util/AbstractMap;-><init>()V

    .line 13
    iput-object v2, p0, Lcom/alibaba/fastjson/util/AntiCollisionHashMap;->keySet:Ljava/util/Set;

    .line 14
    iput-object v2, p0, Lcom/alibaba/fastjson/util/AntiCollisionHashMap;->values:Ljava/util/Collection;

    .line 83
    new-instance v0, Ljava/util/Random;

    invoke-direct {v0}, Ljava/util/Random;-><init>()V

    const v1, 0x1869f

    invoke-virtual {v0, v1}, Ljava/util/Random;->nextInt(I)I

    move-result v0

    iput v0, p0, Lcom/alibaba/fastjson/util/AntiCollisionHashMap;->random:I

    .line 797
    iput-object v2, p0, Lcom/alibaba/fastjson/util/AntiCollisionHashMap;->entrySet:Ljava/util/Set;

    const/high16 v0, 0x3f400000    # 0.75f

    .line 131
    iput v0, p0, Lcom/alibaba/fastjson/util/AntiCollisionHashMap;->loadFactor:F

    const/16 v0, 0xc

    .line 132
    iput v0, p0, Lcom/alibaba/fastjson/util/AntiCollisionHashMap;->threshold:I

    const/16 v0, 0x10

    .line 133
    new-array v0, v0, [Lcom/alibaba/fastjson/util/AntiCollisionHashMap$Entry;

    iput-object v0, p0, Lcom/alibaba/fastjson/util/AntiCollisionHashMap;->table:[Lcom/alibaba/fastjson/util/AntiCollisionHashMap$Entry;

    .line 134
    invoke-virtual {p0}, Lcom/alibaba/fastjson/util/AntiCollisionHashMap;->init()V

    .line 135
    return-void
.end method

.method public constructor <init>(I)V
    .locals 1

    .prologue
    const/high16 v0, 0x3f400000    # 0.75f

    .line 123
    invoke-direct {p0, p1, v0}, Lcom/alibaba/fastjson/util/AntiCollisionHashMap;-><init>(IF)V

    .line 124
    return-void
.end method

.method public constructor <init>(IF)V
    .locals 6

    .prologue
    const/high16 v2, 0x40000000    # 2.0f

    const/4 v0, 0x1

    const/4 v5, 0x0

    const/4 v1, 0x0

    .line 92
    invoke-direct {p0}, Ljava/util/AbstractMap;-><init>()V

    .line 13
    iput-object v5, p0, Lcom/alibaba/fastjson/util/AntiCollisionHashMap;->keySet:Ljava/util/Set;

    .line 14
    iput-object v5, p0, Lcom/alibaba/fastjson/util/AntiCollisionHashMap;->values:Ljava/util/Collection;

    .line 83
    new-instance v3, Ljava/util/Random;

    invoke-direct {v3}, Ljava/util/Random;-><init>()V

    const v4, 0x1869f

    invoke-virtual {v3, v4}, Ljava/util/Random;->nextInt(I)I

    move-result v3

    iput v3, p0, Lcom/alibaba/fastjson/util/AntiCollisionHashMap;->random:I

    .line 797
    iput-object v5, p0, Lcom/alibaba/fastjson/util/AntiCollisionHashMap;->entrySet:Ljava/util/Set;

    .line 93
    if-ltz p1, :cond_1

    .line 96
    if-gt p1, v2, :cond_2

    :goto_0
    const/4 v2, 0x0

    .line 98
    cmpg-float v2, p2, v2

    if-gtz v2, :cond_0

    move v1, v0

    :cond_0
    if-nez v1, :cond_3

    invoke-static {p2}, Ljava/lang/Float;->isNaN(F)Z

    move-result v1

    if-nez v1, :cond_3

    .line 104
    :goto_1
    if-lt v0, p1, :cond_4

    .line 107
    iput p2, p0, Lcom/alibaba/fastjson/util/AntiCollisionHashMap;->loadFactor:F

    .line 108
    int-to-float v1, v0

    mul-float/2addr v1, p2

    float-to-int v1, v1

    iput v1, p0, Lcom/alibaba/fastjson/util/AntiCollisionHashMap;->threshold:I

    .line 109
    new-array v0, v0, [Lcom/alibaba/fastjson/util/AntiCollisionHashMap$Entry;

    iput-object v0, p0, Lcom/alibaba/fastjson/util/AntiCollisionHashMap;->table:[Lcom/alibaba/fastjson/util/AntiCollisionHashMap$Entry;

    .line 110
    invoke-virtual {p0}, Lcom/alibaba/fastjson/util/AntiCollisionHashMap;->init()V

    .line 111
    return-void

    .line 94
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Illegal initial capacity: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    move p1, v2

    .line 97
    goto :goto_0

    .line 99
    :cond_3
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Illegal load factor: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 105
    :cond_4
    shl-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method

.method public constructor <init>(Ljava/util/Map;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<+TK;+TV;>;)V"
        }
    .end annotation

    .prologue
    const/high16 v2, 0x3f400000    # 0.75f

    .line 149
    invoke-interface {p1}, Ljava/util/Map;->size()I

    move-result v0

    int-to-float v0, v0

    div-float/2addr v0, v2

    float-to-int v0, v0

    add-int/lit8 v0, v0, 0x1

    const/16 v1, 0x10

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    invoke-direct {p0, v0, v2}, Lcom/alibaba/fastjson/util/AntiCollisionHashMap;-><init>(IF)V

    .line 151
    invoke-direct {p0, p1}, Lcom/alibaba/fastjson/util/AntiCollisionHashMap;->putAllForCreate(Ljava/util/Map;)V

    .line 152
    return-void
.end method

.method private containsNullValue()Z
    .locals 5

    .prologue
    const/4 v1, 0x0

    .line 588
    iget-object v3, p0, Lcom/alibaba/fastjson/util/AntiCollisionHashMap;->table:[Lcom/alibaba/fastjson/util/AntiCollisionHashMap$Entry;

    move v0, v1

    .line 589
    :goto_0
    array-length v2, v3

    if-lt v0, v2, :cond_0

    .line 593
    return v1

    .line 590
    :cond_0
    aget-object v2, v3, v0

    :goto_1
    if-nez v2, :cond_1

    .line 589
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 591
    :cond_1
    iget-object v4, v2, Lcom/alibaba/fastjson/util/AntiCollisionHashMap$Entry;->value:Ljava/lang/Object;

    if-eqz v4, :cond_2

    .line 590
    iget-object v2, v2, Lcom/alibaba/fastjson/util/AntiCollisionHashMap$Entry;->next:Lcom/alibaba/fastjson/util/AntiCollisionHashMap$Entry;

    goto :goto_1

    .line 592
    :cond_2
    const/4 v0, 0x1

    return v0
.end method

.method private entrySet0()Ljava/util/Set;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Ljava/util/Map$Entry",
            "<TK;TV;>;>;"
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 892
    iget-object v0, p0, Lcom/alibaba/fastjson/util/AntiCollisionHashMap;->entrySet:Ljava/util/Set;

    .line 893
    if-nez v0, :cond_0

    new-instance v0, Lcom/alibaba/fastjson/util/AntiCollisionHashMap$EntrySet;

    invoke-direct {v0, p0, v1}, Lcom/alibaba/fastjson/util/AntiCollisionHashMap$EntrySet;-><init>(Lcom/alibaba/fastjson/util/AntiCollisionHashMap;Lcom/alibaba/fastjson/util/AntiCollisionHashMap$1;)V

    iput-object v0, p0, Lcom/alibaba/fastjson/util/AntiCollisionHashMap;->entrySet:Ljava/util/Set;

    :cond_0
    return-object v0
.end method

.method private getForNullKey()Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TV;"
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 248
    iget-object v0, p0, Lcom/alibaba/fastjson/util/AntiCollisionHashMap;->table:[Lcom/alibaba/fastjson/util/AntiCollisionHashMap$Entry;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    :goto_0
    if-nez v0, :cond_0

    .line 252
    return-object v2

    .line 249
    :cond_0
    iget-object v1, v0, Lcom/alibaba/fastjson/util/AntiCollisionHashMap$Entry;->key:Ljava/lang/Object;

    if-eqz v1, :cond_1

    .line 248
    iget-object v0, v0, Lcom/alibaba/fastjson/util/AntiCollisionHashMap$Entry;->next:Lcom/alibaba/fastjson/util/AntiCollisionHashMap$Entry;

    goto :goto_0

    .line 250
    :cond_1
    iget-object v0, v0, Lcom/alibaba/fastjson/util/AntiCollisionHashMap$Entry;->value:Ljava/lang/Object;

    return-object v0
.end method

.method static hash(I)I
    .locals 3

    .prologue
    .line 177
    mul-int v0, p0, p0

    .line 178
    ushr-int/lit8 v1, v0, 0x14

    ushr-int/lit8 v2, v0, 0xc

    xor-int/2addr v1, v2

    xor-int/2addr v0, v1

    .line 179
    ushr-int/lit8 v1, v0, 0x7

    xor-int/2addr v1, v0

    ushr-int/lit8 v0, v0, 0x4

    xor-int/2addr v0, v1

    return v0
.end method

.method private hashString(Ljava/lang/String;)I
    .locals 3

    .prologue
    .line 86
    iget v0, p0, Lcom/alibaba/fastjson/util/AntiCollisionHashMap;->random:I

    const v1, -0x7ee3623b

    mul-int/2addr v1, v0

    const/4 v0, 0x0

    .line 87
    :goto_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    if-lt v0, v2, :cond_0

    .line 89
    shr-int/lit8 v0, v1, 0x1

    xor-int/2addr v0, v1

    const v1, -0x789a012d

    and-int/2addr v0, v1

    return v0

    :cond_0
    const v2, 0x1000193

    .line 88
    mul-int/2addr v1, v2

    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v2

    xor-int/2addr v1, v2

    .line 87
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method static indexFor(II)I
    .locals 1

    .prologue
    .line 186
    add-int/lit8 v0, p1, -0x1

    and-int/2addr v0, p0

    return v0
.end method

.method private putAllForCreate(Ljava/util/Map;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<+TK;+TV;>;)V"
        }
    .end annotation

    .prologue
    .line 370
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_0

    .line 374
    return-void

    .line 371
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 372
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    invoke-direct {p0, v2, v0}, Lcom/alibaba/fastjson/util/AntiCollisionHashMap;->putForCreate(Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_0
.end method

.method private putForCreate(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV;)V"
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 346
    if-eqz p1, :cond_0

    instance-of v0, p1, Ljava/lang/String;

    if-nez v0, :cond_1

    .line 348
    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v0

    invoke-static {v0}, Lcom/alibaba/fastjson/util/AntiCollisionHashMap;->hash(I)I

    move-result v0

    .line 349
    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/alibaba/fastjson/util/AntiCollisionHashMap;->table:[Lcom/alibaba/fastjson/util/AntiCollisionHashMap$Entry;

    array-length v1, v1

    invoke-static {v0, v1}, Lcom/alibaba/fastjson/util/AntiCollisionHashMap;->indexFor(II)I

    move-result v2

    .line 356
    iget-object v1, p0, Lcom/alibaba/fastjson/util/AntiCollisionHashMap;->table:[Lcom/alibaba/fastjson/util/AntiCollisionHashMap$Entry;

    aget-object v1, v1, v2

    :goto_1
    if-nez v1, :cond_2

    .line 365
    invoke-virtual {p0, v0, p1, p2, v2}, Lcom/alibaba/fastjson/util/AntiCollisionHashMap;->createEntry(ILjava/lang/Object;Ljava/lang/Object;I)V

    .line 366
    return-void

    :cond_1
    move-object v0, p1

    .line 346
    check-cast v0, Ljava/lang/String;

    .line 347
    invoke-direct {p0, v0}, Lcom/alibaba/fastjson/util/AntiCollisionHashMap;->hashString(Ljava/lang/String;)I

    move-result v0

    invoke-static {v0}, Lcom/alibaba/fastjson/util/AntiCollisionHashMap;->hash(I)I

    move-result v0

    goto :goto_0

    .line 358
    :cond_2
    iget v3, v1, Lcom/alibaba/fastjson/util/AntiCollisionHashMap$Entry;->hash:I

    if-eq v3, v0, :cond_4

    .line 356
    :cond_3
    :goto_2
    iget-object v1, v1, Lcom/alibaba/fastjson/util/AntiCollisionHashMap$Entry;->next:Lcom/alibaba/fastjson/util/AntiCollisionHashMap$Entry;

    goto :goto_1

    .line 358
    :cond_4
    iget-object v3, v1, Lcom/alibaba/fastjson/util/AntiCollisionHashMap$Entry;->key:Ljava/lang/Object;

    if-ne v3, p1, :cond_6

    .line 360
    :cond_5
    iput-object p2, v1, Lcom/alibaba/fastjson/util/AntiCollisionHashMap$Entry;->value:Ljava/lang/Object;

    .line 361
    return-void

    .line 358
    :cond_6
    if-eqz p1, :cond_3

    .line 359
    invoke-virtual {p1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_5

    goto :goto_2
.end method

.method private putForNullKey(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TV;)TV;"
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 327
    iget-object v0, p0, Lcom/alibaba/fastjson/util/AntiCollisionHashMap;->table:[Lcom/alibaba/fastjson/util/AntiCollisionHashMap$Entry;

    aget-object v0, v0, v3

    :goto_0
    if-nez v0, :cond_0

    .line 335
    iget v0, p0, Lcom/alibaba/fastjson/util/AntiCollisionHashMap;->modCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/alibaba/fastjson/util/AntiCollisionHashMap;->modCount:I

    .line 336
    invoke-virtual {p0, v3, v2, p1, v3}, Lcom/alibaba/fastjson/util/AntiCollisionHashMap;->addEntry(ILjava/lang/Object;Ljava/lang/Object;I)V

    .line 337
    return-object v2

    .line 328
    :cond_0
    iget-object v1, v0, Lcom/alibaba/fastjson/util/AntiCollisionHashMap$Entry;->key:Ljava/lang/Object;

    if-eqz v1, :cond_1

    .line 327
    iget-object v0, v0, Lcom/alibaba/fastjson/util/AntiCollisionHashMap$Entry;->next:Lcom/alibaba/fastjson/util/AntiCollisionHashMap$Entry;

    goto :goto_0

    .line 329
    :cond_1
    iget-object v1, v0, Lcom/alibaba/fastjson/util/AntiCollisionHashMap$Entry;->value:Ljava/lang/Object;

    .line 330
    iput-object p1, v0, Lcom/alibaba/fastjson/util/AntiCollisionHashMap$Entry;->value:Ljava/lang/Object;

    .line 331
    invoke-virtual {v0, p0}, Lcom/alibaba/fastjson/util/AntiCollisionHashMap$Entry;->recordAccess(Lcom/alibaba/fastjson/util/AntiCollisionHashMap;)V

    .line 332
    return-object v1
.end method

.method private readObject(Ljava/io/ObjectInputStream;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    .prologue
    .line 964
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->defaultReadObject()V

    .line 967
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readInt()I

    move-result v0

    .line 968
    new-array v0, v0, [Lcom/alibaba/fastjson/util/AntiCollisionHashMap$Entry;

    iput-object v0, p0, Lcom/alibaba/fastjson/util/AntiCollisionHashMap;->table:[Lcom/alibaba/fastjson/util/AntiCollisionHashMap$Entry;

    .line 970
    invoke-virtual {p0}, Lcom/alibaba/fastjson/util/AntiCollisionHashMap;->init()V

    .line 973
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readInt()I

    move-result v1

    const/4 v0, 0x0

    .line 976
    :goto_0
    if-lt v0, v1, :cond_0

    .line 981
    return-void

    .line 977
    :cond_0
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v2

    .line 978
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v3

    .line 979
    invoke-direct {p0, v2, v3}, Lcom/alibaba/fastjson/util/AntiCollisionHashMap;->putForCreate(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 976
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method private writeObject(Ljava/io/ObjectOutputStream;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 933
    iget v1, p0, Lcom/alibaba/fastjson/util/AntiCollisionHashMap;->size:I

    if-gtz v1, :cond_0

    move-object v1, v0

    .line 937
    :goto_0
    invoke-virtual {p1}, Ljava/io/ObjectOutputStream;->defaultWriteObject()V

    .line 940
    iget-object v0, p0, Lcom/alibaba/fastjson/util/AntiCollisionHashMap;->table:[Lcom/alibaba/fastjson/util/AntiCollisionHashMap$Entry;

    array-length v0, v0

    invoke-virtual {p1, v0}, Ljava/io/ObjectOutputStream;->writeInt(I)V

    .line 943
    iget v0, p0, Lcom/alibaba/fastjson/util/AntiCollisionHashMap;->size:I

    invoke-virtual {p1, v0}, Ljava/io/ObjectOutputStream;->writeInt(I)V

    .line 946
    if-nez v1, :cond_2

    .line 953
    :goto_1
    return-void

    .line 933
    :cond_0
    invoke-direct {p0}, Lcom/alibaba/fastjson/util/AntiCollisionHashMap;->entrySet0()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    move-object v1, v0

    goto :goto_0

    .line 948
    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 949
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    .line 950
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    .line 947
    :cond_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_1

    goto :goto_1
.end method


# virtual methods
.method addEntry(ILjava/lang/Object;Ljava/lang/Object;I)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ITK;TV;I)V"
        }
    .end annotation

    .prologue
    .line 696
    iget-object v0, p0, Lcom/alibaba/fastjson/util/AntiCollisionHashMap;->table:[Lcom/alibaba/fastjson/util/AntiCollisionHashMap$Entry;

    aget-object v0, v0, p4

    .line 697
    iget-object v1, p0, Lcom/alibaba/fastjson/util/AntiCollisionHashMap;->table:[Lcom/alibaba/fastjson/util/AntiCollisionHashMap$Entry;

    new-instance v2, Lcom/alibaba/fastjson/util/AntiCollisionHashMap$Entry;

    invoke-direct {v2, p1, p2, p3, v0}, Lcom/alibaba/fastjson/util/AntiCollisionHashMap$Entry;-><init>(ILjava/lang/Object;Ljava/lang/Object;Lcom/alibaba/fastjson/util/AntiCollisionHashMap$Entry;)V

    aput-object v2, v1, p4

    .line 698
    iget v0, p0, Lcom/alibaba/fastjson/util/AntiCollisionHashMap;->size:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/alibaba/fastjson/util/AntiCollisionHashMap;->size:I

    iget v1, p0, Lcom/alibaba/fastjson/util/AntiCollisionHashMap;->threshold:I

    if-ge v0, v1, :cond_0

    .line 700
    :goto_0
    return-void

    .line 699
    :cond_0
    iget-object v0, p0, Lcom/alibaba/fastjson/util/AntiCollisionHashMap;->table:[Lcom/alibaba/fastjson/util/AntiCollisionHashMap$Entry;

    array-length v0, v0

    mul-int/lit8 v0, v0, 0x2

    invoke-virtual {p0, v0}, Lcom/alibaba/fastjson/util/AntiCollisionHashMap;->resize(I)V

    goto :goto_0
.end method

.method capacity()I
    .locals 1

    .prologue
    .line 985
    iget-object v0, p0, Lcom/alibaba/fastjson/util/AntiCollisionHashMap;->table:[Lcom/alibaba/fastjson/util/AntiCollisionHashMap$Entry;

    array-length v0, v0

    return v0
.end method

.method public clear()V
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 556
    iget v0, p0, Lcom/alibaba/fastjson/util/AntiCollisionHashMap;->modCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/alibaba/fastjson/util/AntiCollisionHashMap;->modCount:I

    .line 557
    iget-object v2, p0, Lcom/alibaba/fastjson/util/AntiCollisionHashMap;->table:[Lcom/alibaba/fastjson/util/AntiCollisionHashMap$Entry;

    move v0, v1

    .line 558
    :goto_0
    array-length v3, v2

    if-lt v0, v3, :cond_0

    .line 560
    iput v1, p0, Lcom/alibaba/fastjson/util/AntiCollisionHashMap;->size:I

    .line 561
    return-void

    :cond_0
    const/4 v3, 0x0

    .line 559
    aput-object v3, v2, v0

    .line 558
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public clone()Ljava/lang/Object;
    .locals 4

    .prologue
    const/4 v1, 0x0

    const/4 v3, 0x0

    .line 605
    :try_start_0
    invoke-super {p0}, Ljava/util/AbstractMap;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/fastjson/util/AntiCollisionHashMap;
    :try_end_0
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 609
    :goto_0
    iget-object v2, p0, Lcom/alibaba/fastjson/util/AntiCollisionHashMap;->table:[Lcom/alibaba/fastjson/util/AntiCollisionHashMap$Entry;

    array-length v2, v2

    new-array v2, v2, [Lcom/alibaba/fastjson/util/AntiCollisionHashMap$Entry;

    iput-object v2, v0, Lcom/alibaba/fastjson/util/AntiCollisionHashMap;->table:[Lcom/alibaba/fastjson/util/AntiCollisionHashMap$Entry;

    .line 610
    iput-object v1, v0, Lcom/alibaba/fastjson/util/AntiCollisionHashMap;->entrySet:Ljava/util/Set;

    .line 611
    iput v3, v0, Lcom/alibaba/fastjson/util/AntiCollisionHashMap;->modCount:I

    .line 612
    iput v3, v0, Lcom/alibaba/fastjson/util/AntiCollisionHashMap;->size:I

    .line 613
    invoke-virtual {v0}, Lcom/alibaba/fastjson/util/AntiCollisionHashMap;->init()V

    .line 614
    invoke-direct {v0, p0}, Lcom/alibaba/fastjson/util/AntiCollisionHashMap;->putAllForCreate(Ljava/util/Map;)V

    .line 616
    return-object v0

    .line 608
    :catch_0
    move-exception v0

    move-object v0, v1

    goto :goto_0
.end method

.method public containsKey(Ljava/lang/Object;)Z
    .locals 1

    .prologue
    .line 265
    invoke-virtual {p0, p1}, Lcom/alibaba/fastjson/util/AntiCollisionHashMap;->getEntry(Ljava/lang/Object;)Lcom/alibaba/fastjson/util/AntiCollisionHashMap$Entry;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public containsValue(Ljava/lang/Object;)Z
    .locals 5

    .prologue
    const/4 v1, 0x0

    .line 573
    if-eqz p1, :cond_0

    .line 576
    iget-object v3, p0, Lcom/alibaba/fastjson/util/AntiCollisionHashMap;->table:[Lcom/alibaba/fastjson/util/AntiCollisionHashMap$Entry;

    move v0, v1

    .line 577
    :goto_0
    array-length v2, v3

    if-lt v0, v2, :cond_1

    .line 581
    return v1

    .line 574
    :cond_0
    invoke-direct {p0}, Lcom/alibaba/fastjson/util/AntiCollisionHashMap;->containsNullValue()Z

    move-result v0

    return v0

    .line 578
    :cond_1
    aget-object v2, v3, v0

    :goto_1
    if-nez v2, :cond_2

    .line 577
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 579
    :cond_2
    iget-object v4, v2, Lcom/alibaba/fastjson/util/AntiCollisionHashMap$Entry;->value:Ljava/lang/Object;

    invoke-virtual {p1, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_3

    .line 578
    iget-object v2, v2, Lcom/alibaba/fastjson/util/AntiCollisionHashMap$Entry;->next:Lcom/alibaba/fastjson/util/AntiCollisionHashMap$Entry;

    goto :goto_1

    .line 580
    :cond_3
    const/4 v0, 0x1

    return v0
.end method

.method createEntry(ILjava/lang/Object;Ljava/lang/Object;I)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ITK;TV;I)V"
        }
    .end annotation

    .prologue
    .line 711
    iget-object v0, p0, Lcom/alibaba/fastjson/util/AntiCollisionHashMap;->table:[Lcom/alibaba/fastjson/util/AntiCollisionHashMap$Entry;

    aget-object v0, v0, p4

    .line 712
    iget-object v1, p0, Lcom/alibaba/fastjson/util/AntiCollisionHashMap;->table:[Lcom/alibaba/fastjson/util/AntiCollisionHashMap$Entry;

    new-instance v2, Lcom/alibaba/fastjson/util/AntiCollisionHashMap$Entry;

    invoke-direct {v2, p1, p2, p3, v0}, Lcom/alibaba/fastjson/util/AntiCollisionHashMap$Entry;-><init>(ILjava/lang/Object;Ljava/lang/Object;Lcom/alibaba/fastjson/util/AntiCollisionHashMap$Entry;)V

    aput-object v2, v1, p4

    .line 713
    iget v0, p0, Lcom/alibaba/fastjson/util/AntiCollisionHashMap;->size:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/alibaba/fastjson/util/AntiCollisionHashMap;->size:I

    .line 714
    return-void
.end method

.method public entrySet()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Ljava/util/Map$Entry",
            "<TK;TV;>;>;"
        }
    .end annotation

    .prologue
    .line 888
    invoke-direct {p0}, Lcom/alibaba/fastjson/util/AntiCollisionHashMap;->entrySet0()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public get(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")TV;"
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 226
    if-eqz p1, :cond_0

    .line 229
    instance-of v0, p1, Ljava/lang/String;

    if-nez v0, :cond_1

    .line 232
    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v0

    invoke-static {v0}, Lcom/alibaba/fastjson/util/AntiCollisionHashMap;->hash(I)I

    move-result v0

    .line 233
    :goto_0
    iget-object v1, p0, Lcom/alibaba/fastjson/util/AntiCollisionHashMap;->table:[Lcom/alibaba/fastjson/util/AntiCollisionHashMap$Entry;

    iget-object v2, p0, Lcom/alibaba/fastjson/util/AntiCollisionHashMap;->table:[Lcom/alibaba/fastjson/util/AntiCollisionHashMap$Entry;

    array-length v2, v2

    invoke-static {v0, v2}, Lcom/alibaba/fastjson/util/AntiCollisionHashMap;->indexFor(II)I

    move-result v2

    aget-object v1, v1, v2

    :goto_1
    if-nez v1, :cond_2

    .line 238
    return-object v3

    .line 227
    :cond_0
    invoke-direct {p0}, Lcom/alibaba/fastjson/util/AntiCollisionHashMap;->getForNullKey()Ljava/lang/Object;

    move-result-object v0

    return-object v0

    :cond_1
    move-object v0, p1

    .line 230
    check-cast v0, Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/alibaba/fastjson/util/AntiCollisionHashMap;->hashString(Ljava/lang/String;)I

    move-result v0

    invoke-static {v0}, Lcom/alibaba/fastjson/util/AntiCollisionHashMap;->hash(I)I

    move-result v0

    goto :goto_0

    .line 235
    :cond_2
    iget v2, v1, Lcom/alibaba/fastjson/util/AntiCollisionHashMap$Entry;->hash:I

    if-eq v2, v0, :cond_3

    .line 233
    :goto_2
    iget-object v1, v1, Lcom/alibaba/fastjson/util/AntiCollisionHashMap$Entry;->next:Lcom/alibaba/fastjson/util/AntiCollisionHashMap$Entry;

    goto :goto_1

    .line 235
    :cond_3
    iget-object v2, v1, Lcom/alibaba/fastjson/util/AntiCollisionHashMap$Entry;->key:Ljava/lang/Object;

    if-ne v2, p1, :cond_5

    .line 236
    :cond_4
    iget-object v0, v1, Lcom/alibaba/fastjson/util/AntiCollisionHashMap$Entry;->value:Ljava/lang/Object;

    return-object v0

    .line 235
    :cond_5
    invoke-virtual {p1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4

    goto :goto_2
.end method

.method final getEntry(Ljava/lang/Object;)Lcom/alibaba/fastjson/util/AntiCollisionHashMap$Entry;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")",
            "Lcom/alibaba/fastjson/util/AntiCollisionHashMap$Entry",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    const/4 v3, 0x0

    .line 273
    if-eqz p1, :cond_0

    instance-of v0, p1, Ljava/lang/String;

    if-nez v0, :cond_1

    .line 275
    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v0

    invoke-static {v0}, Lcom/alibaba/fastjson/util/AntiCollisionHashMap;->hash(I)I

    move-result v0

    .line 276
    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/alibaba/fastjson/util/AntiCollisionHashMap;->table:[Lcom/alibaba/fastjson/util/AntiCollisionHashMap$Entry;

    iget-object v2, p0, Lcom/alibaba/fastjson/util/AntiCollisionHashMap;->table:[Lcom/alibaba/fastjson/util/AntiCollisionHashMap$Entry;

    array-length v2, v2

    invoke-static {v0, v2}, Lcom/alibaba/fastjson/util/AntiCollisionHashMap;->indexFor(II)I

    move-result v2

    aget-object v1, v1, v2

    :goto_1
    if-nez v1, :cond_2

    .line 282
    return-object v3

    :cond_1
    move-object v0, p1

    .line 273
    check-cast v0, Ljava/lang/String;

    .line 274
    invoke-direct {p0, v0}, Lcom/alibaba/fastjson/util/AntiCollisionHashMap;->hashString(Ljava/lang/String;)I

    move-result v0

    invoke-static {v0}, Lcom/alibaba/fastjson/util/AntiCollisionHashMap;->hash(I)I

    move-result v0

    goto :goto_0

    .line 278
    :cond_2
    iget v2, v1, Lcom/alibaba/fastjson/util/AntiCollisionHashMap$Entry;->hash:I

    if-eq v2, v0, :cond_4

    .line 276
    :cond_3
    :goto_2
    iget-object v1, v1, Lcom/alibaba/fastjson/util/AntiCollisionHashMap$Entry;->next:Lcom/alibaba/fastjson/util/AntiCollisionHashMap$Entry;

    goto :goto_1

    .line 278
    :cond_4
    iget-object v2, v1, Lcom/alibaba/fastjson/util/AntiCollisionHashMap$Entry;->key:Ljava/lang/Object;

    if-ne v2, p1, :cond_6

    .line 280
    :cond_5
    return-object v1

    .line 278
    :cond_6
    if-eqz p1, :cond_3

    .line 279
    invoke-virtual {p1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_5

    goto :goto_2
.end method

.method init()V
    .locals 0

    .prologue
    .line 164
    return-void
.end method

.method public isEmpty()Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 204
    iget v1, p0, Lcom/alibaba/fastjson/util/AntiCollisionHashMap;->size:I

    if-eqz v1, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public keySet()Ljava/util/Set;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<TK;>;"
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 812
    iget-object v0, p0, Lcom/alibaba/fastjson/util/AntiCollisionHashMap;->keySet:Ljava/util/Set;

    .line 813
    if-nez v0, :cond_0

    new-instance v0, Lcom/alibaba/fastjson/util/AntiCollisionHashMap$KeySet;

    invoke-direct {v0, p0, v1}, Lcom/alibaba/fastjson/util/AntiCollisionHashMap$KeySet;-><init>(Lcom/alibaba/fastjson/util/AntiCollisionHashMap;Lcom/alibaba/fastjson/util/AntiCollisionHashMap$1;)V

    iput-object v0, p0, Lcom/alibaba/fastjson/util/AntiCollisionHashMap;->keySet:Ljava/util/Set;

    :cond_0
    return-object v0
.end method

.method loadFactor()F
    .locals 1

    .prologue
    .line 989
    iget v0, p0, Lcom/alibaba/fastjson/util/AntiCollisionHashMap;->loadFactor:F

    return v0
.end method

.method newEntryIterator()Ljava/util/Iterator;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator",
            "<",
            "Ljava/util/Map$Entry",
            "<TK;TV;>;>;"
        }
    .end annotation

    .prologue
    .line 792
    new-instance v0, Lcom/alibaba/fastjson/util/AntiCollisionHashMap$EntryIterator;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/alibaba/fastjson/util/AntiCollisionHashMap$EntryIterator;-><init>(Lcom/alibaba/fastjson/util/AntiCollisionHashMap;Lcom/alibaba/fastjson/util/AntiCollisionHashMap$1;)V

    return-object v0
.end method

.method newKeyIterator()Ljava/util/Iterator;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator",
            "<TK;>;"
        }
    .end annotation

    .prologue
    .line 784
    new-instance v0, Lcom/alibaba/fastjson/util/AntiCollisionHashMap$KeyIterator;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/alibaba/fastjson/util/AntiCollisionHashMap$KeyIterator;-><init>(Lcom/alibaba/fastjson/util/AntiCollisionHashMap;Lcom/alibaba/fastjson/util/AntiCollisionHashMap$1;)V

    return-object v0
.end method

.method newValueIterator()Ljava/util/Iterator;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator",
            "<TV;>;"
        }
    .end annotation

    .prologue
    .line 788
    new-instance v0, Lcom/alibaba/fastjson/util/AntiCollisionHashMap$ValueIterator;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/alibaba/fastjson/util/AntiCollisionHashMap$ValueIterator;-><init>(Lcom/alibaba/fastjson/util/AntiCollisionHashMap;Lcom/alibaba/fastjson/util/AntiCollisionHashMap$1;)V

    return-object v0
.end method

.method public put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV;)TV;"
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    .line 300
    if-eqz p1, :cond_0

    .line 303
    instance-of v0, p1, Ljava/lang/String;

    if-nez v0, :cond_1

    .line 306
    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v0

    invoke-static {v0}, Lcom/alibaba/fastjson/util/AntiCollisionHashMap;->hash(I)I

    move-result v0

    .line 307
    :goto_0
    iget-object v1, p0, Lcom/alibaba/fastjson/util/AntiCollisionHashMap;->table:[Lcom/alibaba/fastjson/util/AntiCollisionHashMap$Entry;

    array-length v1, v1

    invoke-static {v0, v1}, Lcom/alibaba/fastjson/util/AntiCollisionHashMap;->indexFor(II)I

    move-result v2

    .line 308
    iget-object v1, p0, Lcom/alibaba/fastjson/util/AntiCollisionHashMap;->table:[Lcom/alibaba/fastjson/util/AntiCollisionHashMap$Entry;

    aget-object v1, v1, v2

    :goto_1
    if-nez v1, :cond_2

    .line 318
    iget v1, p0, Lcom/alibaba/fastjson/util/AntiCollisionHashMap;->modCount:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/alibaba/fastjson/util/AntiCollisionHashMap;->modCount:I

    .line 319
    invoke-virtual {p0, v0, p1, p2, v2}, Lcom/alibaba/fastjson/util/AntiCollisionHashMap;->addEntry(ILjava/lang/Object;Ljava/lang/Object;I)V

    .line 320
    return-object v4

    .line 301
    :cond_0
    invoke-direct {p0, p2}, Lcom/alibaba/fastjson/util/AntiCollisionHashMap;->putForNullKey(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0

    :cond_1
    move-object v0, p1

    .line 304
    check-cast v0, Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/alibaba/fastjson/util/AntiCollisionHashMap;->hashString(Ljava/lang/String;)I

    move-result v0

    invoke-static {v0}, Lcom/alibaba/fastjson/util/AntiCollisionHashMap;->hash(I)I

    move-result v0

    goto :goto_0

    .line 310
    :cond_2
    iget v3, v1, Lcom/alibaba/fastjson/util/AntiCollisionHashMap$Entry;->hash:I

    if-eq v3, v0, :cond_3

    .line 308
    :goto_2
    iget-object v1, v1, Lcom/alibaba/fastjson/util/AntiCollisionHashMap$Entry;->next:Lcom/alibaba/fastjson/util/AntiCollisionHashMap$Entry;

    goto :goto_1

    .line 310
    :cond_3
    iget-object v3, v1, Lcom/alibaba/fastjson/util/AntiCollisionHashMap$Entry;->key:Ljava/lang/Object;

    if-ne v3, p1, :cond_5

    .line 311
    :cond_4
    iget-object v0, v1, Lcom/alibaba/fastjson/util/AntiCollisionHashMap$Entry;->value:Ljava/lang/Object;

    .line 312
    iput-object p2, v1, Lcom/alibaba/fastjson/util/AntiCollisionHashMap$Entry;->value:Ljava/lang/Object;

    .line 313
    invoke-virtual {v1, p0}, Lcom/alibaba/fastjson/util/AntiCollisionHashMap$Entry;->recordAccess(Lcom/alibaba/fastjson/util/AntiCollisionHashMap;)V

    .line 314
    return-object v0

    .line 310
    :cond_5
    invoke-virtual {p1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_4

    goto :goto_2
.end method

.method public putAll(Ljava/util/Map;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<+TK;+TV;>;)V"
        }
    .end annotation

    .prologue
    const/high16 v1, 0x40000000    # 2.0f

    .line 436
    invoke-interface {p1}, Ljava/util/Map;->size()I

    move-result v0

    .line 437
    if-eqz v0, :cond_1

    .line 449
    iget v2, p0, Lcom/alibaba/fastjson/util/AntiCollisionHashMap;->threshold:I

    if-gt v0, v2, :cond_2

    .line 461
    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_5

    .line 465
    return-void

    .line 438
    :cond_1
    return-void

    .line 450
    :cond_2
    int-to-float v0, v0

    iget v2, p0, Lcom/alibaba/fastjson/util/AntiCollisionHashMap;->loadFactor:F

    div-float/2addr v0, v2

    const/high16 v2, 0x3f800000    # 1.0f

    add-float/2addr v0, v2

    float-to-int v0, v0

    .line 451
    if-gt v0, v1, :cond_3

    .line 453
    :goto_2
    iget-object v1, p0, Lcom/alibaba/fastjson/util/AntiCollisionHashMap;->table:[Lcom/alibaba/fastjson/util/AntiCollisionHashMap$Entry;

    array-length v1, v1

    .line 454
    :goto_3
    if-lt v1, v0, :cond_4

    .line 456
    iget-object v0, p0, Lcom/alibaba/fastjson/util/AntiCollisionHashMap;->table:[Lcom/alibaba/fastjson/util/AntiCollisionHashMap$Entry;

    array-length v0, v0

    if-le v1, v0, :cond_0

    .line 457
    invoke-virtual {p0, v1}, Lcom/alibaba/fastjson/util/AntiCollisionHashMap;->resize(I)V

    goto :goto_0

    :cond_3
    move v0, v1

    .line 452
    goto :goto_2

    .line 455
    :cond_4
    shl-int/lit8 v1, v1, 0x1

    goto :goto_3

    .line 462
    :cond_5
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 463
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p0, v2, v0}, Lcom/alibaba/fastjson/util/AntiCollisionHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1
.end method

.method public remove(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")TV;"
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 478
    invoke-virtual {p0, p1}, Lcom/alibaba/fastjson/util/AntiCollisionHashMap;->removeEntryForKey(Ljava/lang/Object;)Lcom/alibaba/fastjson/util/AntiCollisionHashMap$Entry;

    move-result-object v1

    .line 479
    if-eqz v1, :cond_0

    iget-object v0, v1, Lcom/alibaba/fastjson/util/AntiCollisionHashMap$Entry;->value:Ljava/lang/Object;

    :cond_0
    return-object v0
.end method

.method final removeEntryForKey(Ljava/lang/Object;)Lcom/alibaba/fastjson/util/AntiCollisionHashMap$Entry;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")",
            "Lcom/alibaba/fastjson/util/AntiCollisionHashMap$Entry",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 488
    if-eqz p1, :cond_0

    instance-of v0, p1, Ljava/lang/String;

    if-nez v0, :cond_1

    .line 490
    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v0

    invoke-static {v0}, Lcom/alibaba/fastjson/util/AntiCollisionHashMap;->hash(I)I

    move-result v0

    .line 491
    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/alibaba/fastjson/util/AntiCollisionHashMap;->table:[Lcom/alibaba/fastjson/util/AntiCollisionHashMap$Entry;

    array-length v1, v1

    invoke-static {v0, v1}, Lcom/alibaba/fastjson/util/AntiCollisionHashMap;->indexFor(II)I

    move-result v4

    .line 492
    iget-object v1, p0, Lcom/alibaba/fastjson/util/AntiCollisionHashMap;->table:[Lcom/alibaba/fastjson/util/AntiCollisionHashMap$Entry;

    aget-object v1, v1, v4

    move-object v3, v1

    .line 495
    :goto_1
    if-nez v1, :cond_2

    .line 513
    return-object v1

    :cond_1
    move-object v0, p1

    .line 488
    check-cast v0, Ljava/lang/String;

    .line 489
    invoke-direct {p0, v0}, Lcom/alibaba/fastjson/util/AntiCollisionHashMap;->hashString(Ljava/lang/String;)I

    move-result v0

    invoke-static {v0}, Lcom/alibaba/fastjson/util/AntiCollisionHashMap;->hash(I)I

    move-result v0

    goto :goto_0

    .line 496
    :cond_2
    iget-object v2, v1, Lcom/alibaba/fastjson/util/AntiCollisionHashMap$Entry;->next:Lcom/alibaba/fastjson/util/AntiCollisionHashMap$Entry;

    .line 498
    iget v5, v1, Lcom/alibaba/fastjson/util/AntiCollisionHashMap$Entry;->hash:I

    if-eq v5, v0, :cond_4

    :cond_3
    :goto_2
    move-object v3, v1

    move-object v1, v2

    .line 511
    goto :goto_1

    .line 498
    :cond_4
    iget-object v5, v1, Lcom/alibaba/fastjson/util/AntiCollisionHashMap$Entry;->key:Ljava/lang/Object;

    if-ne v5, p1, :cond_6

    .line 500
    :cond_5
    iget v0, p0, Lcom/alibaba/fastjson/util/AntiCollisionHashMap;->modCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/alibaba/fastjson/util/AntiCollisionHashMap;->modCount:I

    .line 501
    iget v0, p0, Lcom/alibaba/fastjson/util/AntiCollisionHashMap;->size:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/alibaba/fastjson/util/AntiCollisionHashMap;->size:I

    .line 502
    if-eq v3, v1, :cond_7

    .line 505
    iput-object v2, v3, Lcom/alibaba/fastjson/util/AntiCollisionHashMap$Entry;->next:Lcom/alibaba/fastjson/util/AntiCollisionHashMap$Entry;

    .line 506
    :goto_3
    invoke-virtual {v1, p0}, Lcom/alibaba/fastjson/util/AntiCollisionHashMap$Entry;->recordRemoval(Lcom/alibaba/fastjson/util/AntiCollisionHashMap;)V

    .line 507
    return-object v1

    .line 498
    :cond_6
    if-eqz p1, :cond_3

    .line 499
    invoke-virtual {p1, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_5

    goto :goto_2

    .line 503
    :cond_7
    iget-object v0, p0, Lcom/alibaba/fastjson/util/AntiCollisionHashMap;->table:[Lcom/alibaba/fastjson/util/AntiCollisionHashMap$Entry;

    aput-object v2, v0, v4

    goto :goto_3
.end method

.method final removeMapping(Ljava/lang/Object;)Lcom/alibaba/fastjson/util/AntiCollisionHashMap$Entry;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")",
            "Lcom/alibaba/fastjson/util/AntiCollisionHashMap$Entry",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 520
    instance-of v0, p1, Ljava/util/Map$Entry;

    if-eqz v0, :cond_0

    .line 523
    check-cast p1, Ljava/util/Map$Entry;

    .line 524
    invoke-interface {p1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    .line 525
    if-eqz v0, :cond_1

    instance-of v1, v0, Ljava/lang/String;

    if-nez v1, :cond_2

    .line 527
    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    invoke-static {v0}, Lcom/alibaba/fastjson/util/AntiCollisionHashMap;->hash(I)I

    move-result v0

    .line 528
    :goto_0
    iget-object v1, p0, Lcom/alibaba/fastjson/util/AntiCollisionHashMap;->table:[Lcom/alibaba/fastjson/util/AntiCollisionHashMap$Entry;

    array-length v1, v1

    invoke-static {v0, v1}, Lcom/alibaba/fastjson/util/AntiCollisionHashMap;->indexFor(II)I

    move-result v4

    .line 529
    iget-object v1, p0, Lcom/alibaba/fastjson/util/AntiCollisionHashMap;->table:[Lcom/alibaba/fastjson/util/AntiCollisionHashMap$Entry;

    aget-object v1, v1, v4

    move-object v3, v1

    .line 532
    :goto_1
    if-nez v1, :cond_3

    .line 548
    return-object v1

    .line 521
    :cond_0
    return-object v2

    :cond_1
    move v0, v1

    .line 525
    goto :goto_0

    :cond_2
    check-cast v0, Ljava/lang/String;

    .line 526
    invoke-direct {p0, v0}, Lcom/alibaba/fastjson/util/AntiCollisionHashMap;->hashString(Ljava/lang/String;)I

    move-result v0

    invoke-static {v0}, Lcom/alibaba/fastjson/util/AntiCollisionHashMap;->hash(I)I

    move-result v0

    goto :goto_0

    .line 533
    :cond_3
    iget-object v2, v1, Lcom/alibaba/fastjson/util/AntiCollisionHashMap$Entry;->next:Lcom/alibaba/fastjson/util/AntiCollisionHashMap$Entry;

    .line 534
    iget v5, v1, Lcom/alibaba/fastjson/util/AntiCollisionHashMap$Entry;->hash:I

    if-eq v5, v0, :cond_5

    :cond_4
    move-object v3, v1

    move-object v1, v2

    .line 546
    goto :goto_1

    .line 534
    :cond_5
    invoke-virtual {v1, p1}, Lcom/alibaba/fastjson/util/AntiCollisionHashMap$Entry;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 535
    iget v0, p0, Lcom/alibaba/fastjson/util/AntiCollisionHashMap;->modCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/alibaba/fastjson/util/AntiCollisionHashMap;->modCount:I

    .line 536
    iget v0, p0, Lcom/alibaba/fastjson/util/AntiCollisionHashMap;->size:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/alibaba/fastjson/util/AntiCollisionHashMap;->size:I

    .line 537
    if-eq v3, v1, :cond_6

    .line 540
    iput-object v2, v3, Lcom/alibaba/fastjson/util/AntiCollisionHashMap$Entry;->next:Lcom/alibaba/fastjson/util/AntiCollisionHashMap$Entry;

    .line 541
    :goto_2
    invoke-virtual {v1, p0}, Lcom/alibaba/fastjson/util/AntiCollisionHashMap$Entry;->recordRemoval(Lcom/alibaba/fastjson/util/AntiCollisionHashMap;)V

    .line 542
    return-object v1

    .line 538
    :cond_6
    iget-object v0, p0, Lcom/alibaba/fastjson/util/AntiCollisionHashMap;->table:[Lcom/alibaba/fastjson/util/AntiCollisionHashMap$Entry;

    aput-object v2, v0, v4

    goto :goto_2
.end method

.method resize(I)V
    .locals 2

    .prologue
    .line 391
    iget-object v0, p0, Lcom/alibaba/fastjson/util/AntiCollisionHashMap;->table:[Lcom/alibaba/fastjson/util/AntiCollisionHashMap$Entry;

    .line 392
    array-length v0, v0

    const/high16 v1, 0x40000000    # 2.0f

    .line 393
    if-eq v0, v1, :cond_0

    .line 398
    new-array v0, p1, [Lcom/alibaba/fastjson/util/AntiCollisionHashMap$Entry;

    .line 399
    invoke-virtual {p0, v0}, Lcom/alibaba/fastjson/util/AntiCollisionHashMap;->transfer([Lcom/alibaba/fastjson/util/AntiCollisionHashMap$Entry;)V

    .line 400
    iput-object v0, p0, Lcom/alibaba/fastjson/util/AntiCollisionHashMap;->table:[Lcom/alibaba/fastjson/util/AntiCollisionHashMap$Entry;

    .line 401
    int-to-float v0, p1

    iget v1, p0, Lcom/alibaba/fastjson/util/AntiCollisionHashMap;->loadFactor:F

    mul-float/2addr v0, v1

    float-to-int v0, v0

    iput v0, p0, Lcom/alibaba/fastjson/util/AntiCollisionHashMap;->threshold:I

    .line 402
    return-void

    :cond_0
    const v0, 0x7fffffff

    .line 394
    iput v0, p0, Lcom/alibaba/fastjson/util/AntiCollisionHashMap;->threshold:I

    .line 395
    return-void
.end method

.method public size()I
    .locals 1

    .prologue
    .line 195
    iget v0, p0, Lcom/alibaba/fastjson/util/AntiCollisionHashMap;->size:I

    return v0
.end method

.method transfer([Lcom/alibaba/fastjson/util/AntiCollisionHashMap$Entry;)V
    .locals 8

    .prologue
    const/4 v7, 0x0

    .line 408
    iget-object v3, p0, Lcom/alibaba/fastjson/util/AntiCollisionHashMap;->table:[Lcom/alibaba/fastjson/util/AntiCollisionHashMap$Entry;

    .line 409
    array-length v4, p1

    const/4 v0, 0x0

    .line 410
    :goto_0
    array-length v1, v3

    if-lt v0, v1, :cond_0

    .line 423
    return-void

    .line 411
    :cond_0
    aget-object v1, v3, v0

    .line 412
    if-nez v1, :cond_2

    .line 410
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 413
    :cond_2
    aput-object v7, v3, v0

    .line 415
    :goto_1
    iget-object v2, v1, Lcom/alibaba/fastjson/util/AntiCollisionHashMap$Entry;->next:Lcom/alibaba/fastjson/util/AntiCollisionHashMap$Entry;

    .line 416
    iget v5, v1, Lcom/alibaba/fastjson/util/AntiCollisionHashMap$Entry;->hash:I

    invoke-static {v5, v4}, Lcom/alibaba/fastjson/util/AntiCollisionHashMap;->indexFor(II)I

    move-result v5

    .line 417
    aget-object v6, p1, v5

    iput-object v6, v1, Lcom/alibaba/fastjson/util/AntiCollisionHashMap$Entry;->next:Lcom/alibaba/fastjson/util/AntiCollisionHashMap$Entry;

    .line 418
    aput-object v1, p1, v5

    .line 420
    if-eqz v2, :cond_1

    move-object v1, v2

    goto :goto_1
.end method

.method public values()Ljava/util/Collection;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection",
            "<TV;>;"
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 851
    iget-object v0, p0, Lcom/alibaba/fastjson/util/AntiCollisionHashMap;->values:Ljava/util/Collection;

    .line 852
    if-nez v0, :cond_0

    new-instance v0, Lcom/alibaba/fastjson/util/AntiCollisionHashMap$Values;

    invoke-direct {v0, p0, v1}, Lcom/alibaba/fastjson/util/AntiCollisionHashMap$Values;-><init>(Lcom/alibaba/fastjson/util/AntiCollisionHashMap;Lcom/alibaba/fastjson/util/AntiCollisionHashMap$1;)V

    iput-object v0, p0, Lcom/alibaba/fastjson/util/AntiCollisionHashMap;->values:Ljava/util/Collection;

    :cond_0
    return-object v0
.end method
