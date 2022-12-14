.class public Lmiui/maml/data/Variables;
.super Ljava/lang/Object;
.source "Variables.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmiui/maml/data/Variables$BaseVarBucket;,
        Lmiui/maml/data/Variables$DoubleBucket;,
        Lmiui/maml/data/Variables$DoubleInfo;,
        Lmiui/maml/data/Variables$ValueInfo;,
        Lmiui/maml/data/Variables$VarBucket;
    }
.end annotation


# static fields
.field private static DBG:Z = false

.field private static final LOG_TAG:Ljava/lang/String; = "Variables"


# instance fields
.field private mDoubleBucket:Lmiui/maml/data/Variables$DoubleBucket;

.field private mObjectBucket:Lmiui/maml/data/Variables$VarBucket;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lmiui/maml/data/Variables$VarBucket",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static synthetic -get0()Z
    .locals 1

    sget-boolean v0, Lmiui/maml/data/Variables;->DBG:Z

    return v0
.end method

.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 15
    const/4 v0, 0x0

    sput-boolean v0, Lmiui/maml/data/Variables;->DBG:Z

    .line 12
    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 215
    new-instance v0, Lmiui/maml/data/Variables$DoubleBucket;

    invoke-direct {v0, v1}, Lmiui/maml/data/Variables$DoubleBucket;-><init>(Lmiui/maml/data/Variables$DoubleBucket;)V

    iput-object v0, p0, Lmiui/maml/data/Variables;->mDoubleBucket:Lmiui/maml/data/Variables$DoubleBucket;

    .line 216
    new-instance v0, Lmiui/maml/data/Variables$VarBucket;

    invoke-direct {v0, v1}, Lmiui/maml/data/Variables$VarBucket;-><init>(Lmiui/maml/data/Variables$VarBucket;)V

    iput-object v0, p0, Lmiui/maml/data/Variables;->mObjectBucket:Lmiui/maml/data/Variables$VarBucket;

    .line 12
    return-void
.end method

.method private static dbglog(Ljava/lang/String;)V
    .locals 1
    .param p0, "info"    # Ljava/lang/String;

    .prologue
    .line 439
    sget-boolean v0, Lmiui/maml/data/Variables;->DBG:Z

    if-eqz v0, :cond_0

    .line 440
    const-string/jumbo v0, "Variables"

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 438
    :cond_0
    return-void
.end method

.method private getArrInner(II)Ljava/lang/Object;
    .locals 6
    .param p1, "index"    # I
    .param p2, "arrIndex"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(II)TT;"
        }
    .end annotation

    .prologue
    const/4 v5, 0x0

    .line 425
    :try_start_0
    invoke-virtual {p0, p1}, Lmiui/maml/data/Variables;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/Object;

    .line 426
    .local v0, "arr":[Ljava/lang/Object;, "[TT;"
    if-nez v0, :cond_0

    .line 427
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "getArrInner: designated object is not an array. index:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lmiui/maml/data/Variables;->dbglog(Ljava/lang/String;)V

    .line 435
    .end local v0    # "arr":[Ljava/lang/Object;, "[TT;"
    :goto_0
    return-object v5

    .line 429
    .restart local v0    # "arr":[Ljava/lang/Object;, "[TT;"
    :cond_0
    aget-object v3, v0, p2
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v3

    .line 432
    .end local v0    # "arr":[Ljava/lang/Object;, "[TT;"
    :catch_0
    move-exception v2

    .line 433
    .local v2, "e":Ljava/lang/IndexOutOfBoundsException;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "getArrInner: designated index is invalid. index:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " arrIndex:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lmiui/maml/data/Variables;->dbglog(Ljava/lang/String;)V

    goto :goto_0

    .line 430
    .end local v2    # "e":Ljava/lang/IndexOutOfBoundsException;
    :catch_1
    move-exception v1

    .line 431
    .local v1, "e":Ljava/lang/ClassCastException;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "getArrInner: designated object type is not correct. index:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lmiui/maml/data/Variables;->dbglog(Ljava/lang/String;)V

    goto :goto_0
.end method


# virtual methods
.method public createArray(Ljava/lang/String;ILjava/lang/Class;)Z
    .locals 4
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "size"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I",
            "Ljava/lang/Class",
            "<*>;)Z"
        }
    .end annotation

    .prologue
    .local p3, "type":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const/4 v3, 0x0

    .line 251
    if-eqz p3, :cond_0

    if-gtz p2, :cond_1

    .line 252
    :cond_0
    return v3

    .line 254
    :cond_1
    invoke-virtual {p0, p1}, Lmiui/maml/data/Variables;->registerVariable(Ljava/lang/String;)I

    move-result v2

    .line 255
    .local v2, "id":I
    invoke-virtual {p0, v2}, Lmiui/maml/data/Variables;->get(I)Ljava/lang/Object;

    move-result-object v0

    .line 256
    .local v0, "array":Ljava/lang/Object;
    if-nez v0, :cond_2

    .line 258
    :try_start_0
    invoke-static {p3, p2}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;I)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 262
    invoke-virtual {p0, v2, v0}, Lmiui/maml/data/Variables;->put(ILjava/lang/Object;)V

    .line 263
    const/4 v3, 0x1

    return v3

    .line 259
    :catch_0
    move-exception v1

    .line 260
    .local v1, "e":Ljava/lang/Exception;
    return v3

    .line 265
    .end local v1    # "e":Ljava/lang/Exception;
    :cond_2
    return v3
.end method

.method public existsArrItem(II)Z
    .locals 4
    .param p1, "index"    # I
    .param p2, "arrIndex"    # I

    .prologue
    const/4 v2, 0x0

    .line 239
    invoke-virtual {p0, p1}, Lmiui/maml/data/Variables;->get(I)Ljava/lang/Object;

    move-result-object v0

    .line 240
    .local v0, "arr":Ljava/lang/Object;
    if-nez v0, :cond_0

    .line 241
    return v2

    .line 244
    :cond_0
    if-ltz p2, :cond_1

    :try_start_0
    invoke-static {v0}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    if-ge p2, v3, :cond_1

    const/4 v2, 0x1

    :cond_1
    return v2

    .line 245
    :catch_0
    move-exception v1

    .line 247
    .local v1, "e":Ljava/lang/RuntimeException;
    return v2
.end method

.method public existsDouble(I)Z
    .locals 1
    .param p1, "index"    # I

    .prologue
    .line 231
    iget-object v0, p0, Lmiui/maml/data/Variables;->mDoubleBucket:Lmiui/maml/data/Variables$DoubleBucket;

    invoke-virtual {v0, p1}, Lmiui/maml/data/Variables$DoubleBucket;->exists(I)Z

    move-result v0

    return v0
.end method

.method public existsDouble(Ljava/lang/String;)Z
    .locals 1
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 227
    iget-object v0, p0, Lmiui/maml/data/Variables;->mDoubleBucket:Lmiui/maml/data/Variables$DoubleBucket;

    invoke-virtual {v0, p1}, Lmiui/maml/data/Variables$DoubleBucket;->exists(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public existsObj(Ljava/lang/String;)Z
    .locals 1
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 235
    iget-object v0, p0, Lmiui/maml/data/Variables;->mObjectBucket:Lmiui/maml/data/Variables$VarBucket;

    invoke-virtual {v0, p1}, Lmiui/maml/data/Variables$VarBucket;->exists(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public get(I)Ljava/lang/Object;
    .locals 1
    .param p1, "index"    # I

    .prologue
    .line 312
    iget-object v0, p0, Lmiui/maml/data/Variables;->mObjectBucket:Lmiui/maml/data/Variables$VarBucket;

    invoke-virtual {v0, p1}, Lmiui/maml/data/Variables$VarBucket;->get(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public get(Ljava/lang/String;)Ljava/lang/Object;
    .locals 1
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 308
    invoke-virtual {p0, p1}, Lmiui/maml/data/Variables;->registerVariable(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lmiui/maml/data/Variables;->get(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getArr(II)Ljava/lang/Object;
    .locals 1
    .param p1, "index"    # I
    .param p2, "arrIndex"    # I

    .prologue
    .line 337
    invoke-direct {p0, p1, p2}, Lmiui/maml/data/Variables;->getArrInner(II)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getArrDouble(II)D
    .locals 4
    .param p1, "index"    # I
    .param p2, "arrIndex"    # I

    .prologue
    .line 342
    :try_start_0
    invoke-virtual {p0, p1}, Lmiui/maml/data/Variables;->get(I)Ljava/lang/Object;

    move-result-object v0

    .line 343
    .local v0, "arr":Ljava/lang/Object;
    if-nez v0, :cond_0

    .line 344
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "getArrDouble: designated array does not exist. index:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lmiui/maml/data/Variables;->dbglog(Ljava/lang/String;)V

    .line 353
    .end local v0    # "arr":Ljava/lang/Object;
    :goto_0
    const-wide/16 v2, 0x0

    return-wide v2

    .line 345
    .restart local v0    # "arr":Ljava/lang/Object;
    :cond_0
    instance-of v2, v0, [Z

    if-eqz v2, :cond_2

    .line 346
    check-cast v0, [Z

    .end local v0    # "arr":Ljava/lang/Object;
    aget-boolean v2, v0, p1

    if-eqz v2, :cond_1

    const/4 v2, 0x1

    :goto_1
    int-to-double v2, v2

    return-wide v2

    :cond_1
    const/4 v2, 0x0

    goto :goto_1

    .line 348
    .restart local v0    # "arr":Ljava/lang/Object;
    :cond_2
    invoke-static {v0, p2}, Ljava/lang/reflect/Array;->getDouble(Ljava/lang/Object;I)D
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v2

    return-wide v2

    .line 350
    .end local v0    # "arr":Ljava/lang/Object;
    :catch_0
    move-exception v1

    .line 351
    .local v1, "e":Ljava/lang/Exception;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "getArrDouble: designated index is invalid. index:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " arrIndex:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lmiui/maml/data/Variables;->dbglog(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public getArrString(II)Ljava/lang/String;
    .locals 1
    .param p1, "index"    # I
    .param p2, "arrIndex"    # I

    .prologue
    .line 357
    invoke-direct {p0, p1, p2}, Lmiui/maml/data/Variables;->getArrInner(II)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public getDouble(I)D
    .locals 2
    .param p1, "index"    # I

    .prologue
    .line 316
    iget-object v0, p0, Lmiui/maml/data/Variables;->mDoubleBucket:Lmiui/maml/data/Variables$DoubleBucket;

    invoke-virtual {v0, p1}, Lmiui/maml/data/Variables$DoubleBucket;->get(I)D

    move-result-wide v0

    return-wide v0
.end method

.method public getDouble(Ljava/lang/String;)D
    .locals 2
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 320
    invoke-virtual {p0, p1}, Lmiui/maml/data/Variables;->registerDoubleVariable(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lmiui/maml/data/Variables;->getDouble(I)D

    move-result-wide v0

    return-wide v0
.end method

.method public getString(I)Ljava/lang/String;
    .locals 2
    .param p1, "index"    # I

    .prologue
    .line 325
    :try_start_0
    invoke-virtual {p0, p1}, Lmiui/maml/data/Variables;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    .line 326
    :catch_0
    move-exception v0

    .line 328
    .local v0, "e":Ljava/lang/ClassCastException;
    const/4 v1, 0x0

    return-object v1
.end method

.method public getString(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 332
    invoke-virtual {p0, p1}, Lmiui/maml/data/Variables;->registerVariable(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lmiui/maml/data/Variables;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getVer(IZ)I
    .locals 1
    .param p1, "index"    # I
    .param p2, "isNumber"    # Z

    .prologue
    .line 445
    if-eqz p2, :cond_0

    iget-object v0, p0, Lmiui/maml/data/Variables;->mDoubleBucket:Lmiui/maml/data/Variables$DoubleBucket;

    invoke-virtual {v0, p1}, Lmiui/maml/data/Variables$DoubleBucket;->getVer(I)I

    move-result v0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lmiui/maml/data/Variables;->mObjectBucket:Lmiui/maml/data/Variables$VarBucket;

    invoke-virtual {v0, p1}, Lmiui/maml/data/Variables$VarBucket;->getVer(I)I

    move-result v0

    goto :goto_0
.end method

.method public final put(ID)V
    .locals 2
    .param p1, "index"    # I
    .param p2, "value"    # D

    .prologue
    .line 279
    iget-object v0, p0, Lmiui/maml/data/Variables;->mDoubleBucket:Lmiui/maml/data/Variables$DoubleBucket;

    invoke-virtual {v0, p1, p2, p3}, Lmiui/maml/data/Variables$DoubleBucket;->put(ID)V

    .line 278
    return-void
.end method

.method public final put(ILjava/lang/Object;)V
    .locals 1
    .param p1, "index"    # I
    .param p2, "value"    # Ljava/lang/Object;

    .prologue
    .line 304
    iget-object v0, p0, Lmiui/maml/data/Variables;->mObjectBucket:Lmiui/maml/data/Variables$VarBucket;

    invoke-virtual {v0, p1, p2}, Lmiui/maml/data/Variables$VarBucket;->put(ILjava/lang/Object;)V

    .line 303
    return-void
.end method

.method public final put(Ljava/lang/String;D)V
    .locals 2
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # D

    .prologue
    .line 275
    invoke-virtual {p0, p1}, Lmiui/maml/data/Variables;->registerDoubleVariable(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0, p2, p3}, Lmiui/maml/data/Variables;->put(ID)V

    .line 274
    return-void
.end method

.method public put(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/Object;

    .prologue
    .line 300
    invoke-virtual {p0, p1}, Lmiui/maml/data/Variables;->registerVariable(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0, p2}, Lmiui/maml/data/Variables;->put(ILjava/lang/Object;)V

    .line 299
    return-void
.end method

.method public putArr(IID)Z
    .locals 11
    .param p1, "index"    # I
    .param p2, "arrIndex"    # I
    .param p3, "value"    # D

    .prologue
    const/4 v6, 0x1

    const/4 v7, 0x0

    .line 393
    :try_start_0
    invoke-virtual {p0, p1}, Lmiui/maml/data/Variables;->get(I)Ljava/lang/Object;

    move-result-object v2

    .line 394
    .local v2, "array":Ljava/lang/Object;
    if-nez v2, :cond_0

    .line 395
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "putArr: designated array does not exist. index:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lmiui/maml/data/Variables;->dbglog(Ljava/lang/String;)V

    .line 396
    return v7

    .line 398
    :cond_0
    instance-of v4, v2, [D

    if-eqz v4, :cond_2

    .line 399
    move-object v0, v2

    check-cast v0, [D

    move-object v4, v0

    aput-wide p3, v4, p2

    .line 415
    :cond_1
    :goto_0
    invoke-virtual {p0, p1, v2}, Lmiui/maml/data/Variables;->put(ILjava/lang/Object;)V

    .line 416
    return v6

    .line 400
    :cond_2
    instance-of v4, v2, [B

    if-eqz v4, :cond_3

    .line 401
    move-object v0, v2

    check-cast v0, [B

    move-object v4, v0

    double-to-long v8, p3

    long-to-int v5, v8

    int-to-byte v5, v5

    aput-byte v5, v4, p2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 417
    .end local v2    # "array":Ljava/lang/Object;
    :catch_0
    move-exception v3

    .line 418
    .local v3, "e":Ljava/lang/Exception;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "putArr: failed. index:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " arrIndex:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, "\n"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v3}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lmiui/maml/data/Variables;->dbglog(Ljava/lang/String;)V

    .line 420
    return v7

    .line 402
    .end local v3    # "e":Ljava/lang/Exception;
    .restart local v2    # "array":Ljava/lang/Object;
    :cond_3
    :try_start_1
    instance-of v4, v2, [C

    if-eqz v4, :cond_4

    .line 403
    move-object v0, v2

    check-cast v0, [C

    move-object v4, v0

    double-to-long v8, p3

    long-to-int v5, v8

    int-to-char v5, v5

    aput-char v5, v4, p2

    goto :goto_0

    .line 404
    :cond_4
    instance-of v4, v2, [F

    if-eqz v4, :cond_5

    .line 405
    move-object v0, v2

    check-cast v0, [F

    move-object v4, v0

    double-to-float v5, p3

    aput v5, v4, p2

    goto :goto_0

    .line 406
    :cond_5
    instance-of v4, v2, [I

    if-eqz v4, :cond_6

    .line 407
    move-object v0, v2

    check-cast v0, [I

    move-object v4, v0

    double-to-long v8, p3

    long-to-int v5, v8

    aput v5, v4, p2

    goto :goto_0

    .line 408
    :cond_6
    instance-of v4, v2, [J

    if-eqz v4, :cond_7

    .line 409
    move-object v0, v2

    check-cast v0, [J

    move-object v4, v0

    double-to-long v8, p3

    aput-wide v8, v4, p2

    goto :goto_0

    .line 410
    :cond_7
    instance-of v4, v2, [S

    if-eqz v4, :cond_8

    .line 411
    move-object v0, v2

    check-cast v0, [S

    move-object v4, v0

    double-to-long v8, p3

    long-to-int v5, v8

    int-to-short v5, v5

    aput-short v5, v4, p2

    goto/16 :goto_0

    .line 412
    :cond_8
    instance-of v4, v2, [Z

    if-eqz v4, :cond_1

    .line 413
    move-object v0, v2

    check-cast v0, [Z

    move-object v4, v0

    const-wide/16 v8, 0x0

    cmpl-double v5, p3, v8

    if-lez v5, :cond_9

    move v5, v6

    :goto_1
    aput-boolean v5, v4, p2
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0

    :cond_9
    move v5, v7

    goto :goto_1
.end method

.method public putArr(IILjava/lang/Object;)Z
    .locals 5
    .param p1, "index"    # I
    .param p2, "arrIndex"    # I
    .param p3, "value"    # Ljava/lang/Object;

    .prologue
    .line 362
    :try_start_0
    invoke-virtual {p0, p1}, Lmiui/maml/data/Variables;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/Object;

    .line 363
    .local v0, "arr":[Ljava/lang/Object;
    if-nez v0, :cond_0

    .line 364
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "putArr: designated array does not exist. index:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lmiui/maml/data/Variables;->dbglog(Ljava/lang/String;)V

    .line 376
    .end local v0    # "arr":[Ljava/lang/Object;
    :goto_0
    const/4 v3, 0x0

    return v3

    .line 366
    .restart local v0    # "arr":[Ljava/lang/Object;
    :cond_0
    aput-object p3, v0, p2

    .line 368
    invoke-virtual {p0, p1, v0}, Lmiui/maml/data/Variables;->put(ILjava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    .line 369
    const/4 v3, 0x1

    return v3

    .line 373
    .end local v0    # "arr":[Ljava/lang/Object;
    :catch_0
    move-exception v2

    .line 374
    .local v2, "e":Ljava/lang/IndexOutOfBoundsException;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "putArr: designated array index is invalid. index:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " arrIndex:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lmiui/maml/data/Variables;->dbglog(Ljava/lang/String;)V

    goto :goto_0

    .line 371
    .end local v2    # "e":Ljava/lang/IndexOutOfBoundsException;
    :catch_1
    move-exception v1

    .line 372
    .local v1, "e":Ljava/lang/ClassCastException;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "putArr: designated object is not an object array. index:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lmiui/maml/data/Variables;->dbglog(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public putArrDouble(IILjava/lang/Object;)Z
    .locals 4
    .param p1, "index"    # I
    .param p2, "arrIndex"    # I
    .param p3, "value"    # Ljava/lang/Object;

    .prologue
    .line 380
    instance-of v1, p3, Ljava/lang/Number;

    if-eqz v1, :cond_0

    .line 381
    check-cast p3, Ljava/lang/Number;

    .end local p3    # "value":Ljava/lang/Object;
    invoke-virtual {p3}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v2

    invoke-virtual {p0, p1, p2, v2, v3}, Lmiui/maml/data/Variables;->putArr(IID)Z

    move-result v1

    return v1

    .line 382
    .restart local p3    # "value":Ljava/lang/Object;
    :cond_0
    instance-of v1, p3, Ljava/lang/String;

    if-eqz v1, :cond_1

    .line 384
    :try_start_0
    check-cast p3, Ljava/lang/String;

    .end local p3    # "value":Ljava/lang/Object;
    invoke-static {p3}, Lmiui/maml/util/Utils;->parseDouble(Ljava/lang/String;)D

    move-result-wide v2

    invoke-virtual {p0, p1, p2, v2, v3}, Lmiui/maml/data/Variables;->putArr(IID)Z
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    return v1

    .line 385
    :catch_0
    move-exception v0

    .line 388
    :cond_1
    const/4 v1, 0x0

    return v1
.end method

.method public final putDouble(ILjava/lang/Object;)Z
    .locals 6
    .param p1, "index"    # I
    .param p2, "value"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x0

    const/4 v2, 0x1

    .line 283
    instance-of v3, p2, Ljava/lang/Number;

    if-eqz v3, :cond_0

    .line 284
    check-cast p2, Ljava/lang/Number;

    .end local p2    # "value":Ljava/lang/Object;
    invoke-virtual {p2}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v4

    invoke-virtual {p0, p1, v4, v5}, Lmiui/maml/data/Variables;->put(ID)V

    .line 285
    return v2

    .line 286
    .restart local p2    # "value":Ljava/lang/Object;
    :cond_0
    instance-of v3, p2, Ljava/lang/Boolean;

    if-eqz v3, :cond_2

    .line 287
    check-cast p2, Ljava/lang/Boolean;

    .end local p2    # "value":Ljava/lang/Object;
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-eqz v3, :cond_1

    move v1, v2

    :cond_1
    int-to-double v4, v1

    invoke-virtual {p0, p1, v4, v5}, Lmiui/maml/data/Variables;->put(ID)V

    .line 288
    return v2

    .line 289
    .restart local p2    # "value":Ljava/lang/Object;
    :cond_2
    instance-of v3, p2, Ljava/lang/String;

    if-eqz v3, :cond_3

    .line 291
    :try_start_0
    check-cast p2, Ljava/lang/String;

    .end local p2    # "value":Ljava/lang/Object;
    invoke-static {p2}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v4

    invoke-virtual {p0, p1, v4, v5}, Lmiui/maml/data/Variables;->put(ID)V
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 292
    return v2

    .line 293
    :catch_0
    move-exception v0

    .line 296
    :cond_3
    return v1
.end method

.method public final putNum(Ljava/lang/String;D)V
    .locals 0
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # D
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 271
    invoke-virtual {p0, p1, p2, p3}, Lmiui/maml/data/Variables;->put(Ljava/lang/String;D)V

    .line 270
    return-void
.end method

.method public registerDoubleVariable(Ljava/lang/String;)I
    .locals 1
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 219
    iget-object v0, p0, Lmiui/maml/data/Variables;->mDoubleBucket:Lmiui/maml/data/Variables$DoubleBucket;

    invoke-virtual {v0, p1}, Lmiui/maml/data/Variables$DoubleBucket;->registerVariable(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public registerVariable(Ljava/lang/String;)I
    .locals 1
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 223
    iget-object v0, p0, Lmiui/maml/data/Variables;->mObjectBucket:Lmiui/maml/data/Variables$VarBucket;

    invoke-virtual {v0, p1}, Lmiui/maml/data/Variables$VarBucket;->registerVariable(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public reset()V
    .locals 1

    .prologue
    .line 450
    iget-object v0, p0, Lmiui/maml/data/Variables;->mDoubleBucket:Lmiui/maml/data/Variables$DoubleBucket;

    invoke-virtual {v0}, Lmiui/maml/data/Variables$DoubleBucket;->reset()V

    .line 451
    iget-object v0, p0, Lmiui/maml/data/Variables;->mObjectBucket:Lmiui/maml/data/Variables$VarBucket;

    invoke-virtual {v0}, Lmiui/maml/data/Variables$VarBucket;->reset()V

    .line 449
    return-void
.end method
