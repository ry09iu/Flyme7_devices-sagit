.class Lcom/alibaba/fastjson/JSONPath$JSONPathParser;
.super Ljava/lang/Object;
.source "JSONPath.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/fastjson/JSONPath;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "JSONPathParser"
.end annotation


# instance fields
.field private ch:C

.field private level:I

.field private final path:Ljava/lang/String;

.field private pos:I


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 615
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 616
    iput-object p1, p0, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->path:Ljava/lang/String;

    .line 617
    invoke-virtual {p0}, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->next()V

    .line 618
    return-void
.end method

.method static isDigitFirst(C)Z
    .locals 1

    .prologue
    const/16 v0, 0x2d

    .line 1383
    if-ne p0, v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/16 v0, 0x2b

    if-eq p0, v0, :cond_0

    const/16 v0, 0x30

    if-ge p0, v0, :cond_2

    :goto_1
    const/4 v0, 0x0

    goto :goto_0

    :cond_2
    const/16 v0, 0x39

    if-le p0, v0, :cond_0

    goto :goto_1
.end method


# virtual methods
.method accept(C)V
    .locals 3

    .prologue
    .line 1502
    iget-char v0, p0, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->ch:C

    if-ne v0, p1, :cond_0

    .line 1506
    invoke-virtual {p0}, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->isEOF()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1509
    :goto_0
    return-void

    .line 1503
    :cond_0
    new-instance v0, Lcom/alibaba/fastjson/JSONPathException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "expect \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ", but \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-char v2, p0, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->ch:C

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "\'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/alibaba/fastjson/JSONPathException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1507
    :cond_1
    invoke-virtual {p0}, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->next()V

    goto :goto_0
.end method

.method buildArraySegement(Ljava/lang/String;)Lcom/alibaba/fastjson/JSONPath$Segement;
    .locals 10

    .prologue
    const/16 v9, 0x27

    const/4 v8, 0x2

    const/4 v3, 0x1

    const/4 v2, -0x1

    const/4 v0, 0x0

    .line 1542
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    .line 1543
    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v4

    .line 1544
    add-int/lit8 v5, v1, -0x1

    invoke-virtual {p1, v5}, Ljava/lang/String;->charAt(I)C

    move-result v5

    const/16 v6, 0x2c

    .line 1546
    invoke-virtual {p1, v6}, Ljava/lang/String;->indexOf(I)I

    move-result v6

    .line 1548
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v7

    if-gt v7, v8, :cond_2

    :cond_0
    const/16 v1, 0x3a

    .line 1565
    invoke-virtual {p1, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    .line 1567
    if-eq v6, v2, :cond_5

    .line 1580
    :cond_1
    if-ne v6, v2, :cond_7

    .line 1589
    if-ne v1, v2, :cond_9

    .line 1630
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0

    .line 1548
    :cond_2
    if-ne v4, v9, :cond_0

    if-ne v5, v9, :cond_0

    .line 1550
    if-eq v6, v2, :cond_3

    const-string/jumbo v1, ","

    .line 1555
    invoke-virtual {p1, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 1556
    array-length v2, v1

    new-array v2, v2, [Ljava/lang/String;

    .line 1557
    :goto_0
    array-length v4, v1

    if-lt v0, v4, :cond_4

    .line 1562
    new-instance v0, Lcom/alibaba/fastjson/JSONPath$MultiPropertySegement;

    invoke-direct {v0, v2}, Lcom/alibaba/fastjson/JSONPath$MultiPropertySegement;-><init>([Ljava/lang/String;)V

    return-object v0

    .line 1551
    :cond_3
    add-int/lit8 v1, v1, -0x1

    invoke-virtual {p1, v3, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 1552
    new-instance v2, Lcom/alibaba/fastjson/JSONPath$PropertySegement;

    invoke-direct {v2, v1, v0}, Lcom/alibaba/fastjson/JSONPath$PropertySegement;-><init>(Ljava/lang/String;Z)V

    return-object v2

    .line 1558
    :cond_4
    aget-object v4, v1, v0

    .line 1559
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v5

    add-int/lit8 v5, v5, -0x1

    invoke-virtual {v4, v3, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v0

    .line 1557
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1567
    :cond_5
    if-ne v1, v2, :cond_1

    .line 1568
    invoke-static {p1}, Lcom/alibaba/fastjson/util/TypeUtils;->isNumber(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_6

    .line 1576
    new-instance v1, Lcom/alibaba/fastjson/JSONPath$PropertySegement;

    invoke-direct {v1, p1, v0}, Lcom/alibaba/fastjson/JSONPath$PropertySegement;-><init>(Ljava/lang/String;Z)V

    return-object v1

    .line 1570
    :cond_6
    :try_start_0
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    .line 1571
    new-instance v2, Lcom/alibaba/fastjson/JSONPath$ArrayAccessSegement;

    invoke-direct {v2, v1}, Lcom/alibaba/fastjson/JSONPath$ArrayAccessSegement;-><init>(I)V
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v2

    :catch_0
    move-exception v1

    .line 1573
    new-instance v1, Lcom/alibaba/fastjson/JSONPath$PropertySegement;

    invoke-direct {v1, p1, v0}, Lcom/alibaba/fastjson/JSONPath$PropertySegement;-><init>(Ljava/lang/String;Z)V

    return-object v1

    :cond_7
    const-string/jumbo v1, ","

    .line 1581
    invoke-virtual {p1, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 1582
    array-length v2, v1

    new-array v2, v2, [I

    .line 1583
    :goto_1
    array-length v3, v1

    if-lt v0, v3, :cond_8

    .line 1586
    new-instance v0, Lcom/alibaba/fastjson/JSONPath$MultiIndexSegement;

    invoke-direct {v0, v2}, Lcom/alibaba/fastjson/JSONPath$MultiIndexSegement;-><init>([I)V

    return-object v0

    .line 1584
    :cond_8
    aget-object v3, v1, v0

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    aput v3, v2, v0

    .line 1583
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_9
    const-string/jumbo v1, ":"

    .line 1590
    invoke-virtual {p1, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    .line 1591
    array-length v1, v4

    new-array v5, v1, [I

    move v1, v0

    .line 1592
    :goto_2
    array-length v6, v4

    if-lt v1, v6, :cond_b

    .line 1605
    aget v4, v5, v0

    .line 1607
    array-length v0, v5

    if-gt v0, v3, :cond_e

    move v0, v2

    .line 1613
    :goto_3
    array-length v1, v5

    const/4 v2, 0x3

    if-eq v1, v2, :cond_f

    move v1, v3

    .line 1619
    :goto_4
    if-gez v0, :cond_10

    .line 1624
    :cond_a
    if-lez v1, :cond_11

    .line 1627
    new-instance v2, Lcom/alibaba/fastjson/JSONPath$RangeSegement;

    invoke-direct {v2, v4, v0, v1}, Lcom/alibaba/fastjson/JSONPath$RangeSegement;-><init>(III)V

    return-object v2

    .line 1593
    :cond_b
    aget-object v6, v4, v1

    .line 1594
    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v7

    if-eqz v7, :cond_c

    .line 1601
    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    aput v6, v5, v1

    .line 1592
    :goto_5
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 1595
    :cond_c
    if-eqz v1, :cond_d

    .line 1598
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0

    .line 1596
    :cond_d
    aput v0, v5, v1

    goto :goto_5

    .line 1608
    :cond_e
    aget v0, v5, v3

    goto :goto_3

    .line 1614
    :cond_f
    aget v1, v5, v8

    goto :goto_4

    .line 1619
    :cond_10
    if-ge v0, v4, :cond_a

    .line 1620
    new-instance v1, Ljava/lang/UnsupportedOperationException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "end must greater than or equals start. start "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ",  end "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1625
    :cond_11
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "step must greater than zero : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public explain()[Lcom/alibaba/fastjson/JSONPath$Segement;
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 1512
    iget-object v0, p0, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->path:Ljava/lang/String;

    if-nez v0, :cond_1

    .line 1513
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    .line 1512
    :cond_1
    iget-object v0, p0, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->path:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x8

    .line 1516
    new-array v0, v0, [Lcom/alibaba/fastjson/JSONPath$Segement;

    .line 1519
    :goto_0
    invoke-virtual {p0}, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->readSegement()Lcom/alibaba/fastjson/JSONPath$Segement;

    move-result-object v2

    .line 1520
    if-eqz v2, :cond_3

    .line 1524
    iget v1, p0, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->level:I

    array-length v3, v0

    if-eq v1, v3, :cond_2

    .line 1529
    :goto_1
    iget v1, p0, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->level:I

    add-int/lit8 v3, v1, 0x1

    iput v3, p0, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->level:I

    aput-object v2, v0, v1

    goto :goto_0

    .line 1525
    :cond_2
    iget v1, p0, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->level:I

    mul-int/lit8 v1, v1, 0x3

    div-int/lit8 v1, v1, 0x2

    new-array v1, v1, [Lcom/alibaba/fastjson/JSONPath$Segement;

    .line 1526
    iget v3, p0, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->level:I

    invoke-static {v0, v4, v1, v4, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    move-object v0, v1

    .line 1527
    goto :goto_1

    .line 1532
    :cond_3
    iget v1, p0, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->level:I

    array-length v2, v0

    if-eq v1, v2, :cond_4

    .line 1536
    iget v1, p0, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->level:I

    new-array v1, v1, [Lcom/alibaba/fastjson/JSONPath$Segement;

    .line 1537
    iget v2, p0, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->level:I

    invoke-static {v0, v4, v1, v4, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1538
    return-object v1

    .line 1533
    :cond_4
    return-object v0
.end method

.method filterRest(Lcom/alibaba/fastjson/JSONPath$Filter;)Lcom/alibaba/fastjson/JSONPath$Filter;
    .locals 5

    .prologue
    const/16 v4, 0x7c

    const/4 v0, 0x0

    const/16 v3, 0x26

    .line 1311
    iget-char v1, p0, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->ch:C

    if-eq v1, v3, :cond_1

    move v1, v0

    .line 1312
    :goto_0
    iget-char v2, p0, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->ch:C

    if-eq v2, v3, :cond_2

    :cond_0
    iget-char v2, p0, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->ch:C

    if-eq v2, v4, :cond_4

    .line 1324
    :goto_1
    return-object p1

    :cond_1
    const/4 v1, 0x1

    .line 1311
    goto :goto_0

    .line 1312
    :cond_2
    invoke-virtual {p0}, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->getNextChar()C

    move-result v2

    if-ne v2, v3, :cond_0

    .line 1313
    :cond_3
    invoke-virtual {p0}, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->next()V

    .line 1314
    invoke-virtual {p0}, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->next()V

    .line 1316
    :goto_2
    iget-char v2, p0, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->ch:C

    const/16 v3, 0x20

    if-eq v2, v3, :cond_5

    .line 1320
    invoke-virtual {p0, v0}, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->parseArrayAccessFilter(Z)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/fastjson/JSONPath$Filter;

    .line 1322
    new-instance v2, Lcom/alibaba/fastjson/JSONPath$FilterGroup;

    invoke-direct {v2, p1, v0, v1}, Lcom/alibaba/fastjson/JSONPath$FilterGroup;-><init>(Lcom/alibaba/fastjson/JSONPath$Filter;Lcom/alibaba/fastjson/JSONPath$Filter;Z)V

    move-object p1, v2

    goto :goto_1

    .line 1312
    :cond_4
    invoke-virtual {p0}, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->getNextChar()C

    move-result v2

    if-eq v2, v4, :cond_3

    goto :goto_1

    .line 1317
    :cond_5
    invoke-virtual {p0}, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->next()V

    goto :goto_2
.end method

.method getNextChar()C
    .locals 2

    .prologue
    .line 625
    iget-object v0, p0, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->path:Ljava/lang/String;

    iget v1, p0, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->pos:I

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    return v0
.end method

.method isEOF()Z
    .locals 2

    .prologue
    .line 629
    iget v0, p0, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->pos:I

    iget-object v1, p0, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->path:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-ge v0, v1, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method next()V
    .locals 3

    .prologue
    .line 621
    iget-object v0, p0, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->path:Ljava/lang/String;

    iget v1, p0, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->pos:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->pos:I

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    int-to-char v0, v0

    iput-char v0, p0, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->ch:C

    .line 622
    return-void
.end method

.method parseArrayAccess(Z)Lcom/alibaba/fastjson/JSONPath$Segement;
    .locals 2

    .prologue
    .line 728
    invoke-virtual {p0, p1}, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->parseArrayAccessFilter(Z)Ljava/lang/Object;

    move-result-object v0

    .line 729
    instance-of v1, v0, Lcom/alibaba/fastjson/JSONPath$Segement;

    if-nez v1, :cond_0

    .line 732
    new-instance v1, Lcom/alibaba/fastjson/JSONPath$FilterSegement;

    check-cast v0, Lcom/alibaba/fastjson/JSONPath$Filter;

    invoke-direct {v1, v0}, Lcom/alibaba/fastjson/JSONPath$FilterSegement;-><init>(Lcom/alibaba/fastjson/JSONPath$Filter;)V

    return-object v1

    .line 730
    :cond_0
    check-cast v0, Lcom/alibaba/fastjson/JSONPath$Segement;

    return-object v0
.end method

.method parseArrayAccessFilter(Z)Ljava/lang/Object;
    .locals 12

    .prologue
    .line 736
    if-nez p1, :cond_5

    .line 740
    :goto_0
    const/4 v0, 0x0

    .line 742
    iget-char v1, p0, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->ch:C

    const/16 v2, 0x3f

    if-eq v1, v2, :cond_6

    move v7, v0

    .line 753
    :goto_1
    if-eqz v7, :cond_8

    .line 754
    :cond_0
    invoke-virtual {p0}, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->readName()Ljava/lang/String;

    move-result-object v1

    .line 756
    invoke-virtual {p0}, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->skipWhitespace()V

    .line 758
    if-nez v7, :cond_c

    .line 776
    :cond_1
    if-nez p1, :cond_11

    .line 798
    :cond_2
    invoke-virtual {p0}, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->readOp()Lcom/alibaba/fastjson/JSONPath$Operator;

    move-result-object v4

    .line 800
    invoke-virtual {p0}, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->skipWhitespace()V

    .line 802
    sget-object v0, Lcom/alibaba/fastjson/JSONPath$Operator;->BETWEEN:Lcom/alibaba/fastjson/JSONPath$Operator;

    if-ne v4, v0, :cond_17

    .line 803
    :cond_3
    sget-object v0, Lcom/alibaba/fastjson/JSONPath$Operator;->NOT_BETWEEN:Lcom/alibaba/fastjson/JSONPath$Operator;

    if-eq v4, v0, :cond_19

    const/4 v6, 0x0

    .line 805
    :goto_2
    invoke-virtual {p0}, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->readValue()Ljava/lang/Object;

    move-result-object v2

    .line 807
    invoke-virtual {p0}, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->readName()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v3, "and"

    .line 809
    invoke-virtual {v3, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1a

    .line 813
    invoke-virtual {p0}, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->readValue()Ljava/lang/Object;

    move-result-object v4

    .line 815
    if-nez v2, :cond_1b

    .line 816
    :cond_4
    new-instance v0, Lcom/alibaba/fastjson/JSONPathException;

    iget-object v1, p0, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->path:Ljava/lang/String;

    invoke-direct {v0, v1}, Lcom/alibaba/fastjson/JSONPathException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 737
    :cond_5
    const/16 v0, 0x5b

    invoke-virtual {p0, v0}, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->accept(C)V

    goto :goto_0

    .line 743
    :cond_6
    invoke-virtual {p0}, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->next()V

    .line 744
    const/16 v0, 0x28

    invoke-virtual {p0, v0}, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->accept(C)V

    .line 745
    iget-char v0, p0, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->ch:C

    const/16 v1, 0x40

    if-eq v0, v1, :cond_7

    .line 750
    :goto_3
    const/4 v0, 0x1

    move v7, v0

    goto :goto_1

    .line 746
    :cond_7
    invoke-virtual {p0}, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->next()V

    .line 747
    const/16 v0, 0x2e

    invoke-virtual {p0, v0}, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->accept(C)V

    goto :goto_3

    .line 753
    :cond_8
    iget-char v0, p0, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->ch:C

    invoke-static {v0}, Lcom/alibaba/fastjson/util/IOUtils;->firstIdentifier(C)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1262
    iget v0, p0, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->pos:I

    add-int/lit8 v1, v0, -0x1

    .line 1263
    :goto_4
    iget-char v0, p0, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->ch:C

    const/16 v2, 0x5d

    if-ne v0, v2, :cond_8b

    .line 1277
    :cond_9
    if-nez p1, :cond_8f

    .line 1280
    iget-char v0, p0, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->ch:C

    const/16 v2, 0x2f

    if-ne v0, v2, :cond_90

    .line 1281
    :cond_a
    iget v0, p0, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->pos:I

    add-int/lit8 v0, v0, -0x1

    .line 1287
    :goto_5
    iget-object v2, p0, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->path:Ljava/lang/String;

    invoke-virtual {v2, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "\\."

    .line 1289
    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    const/4 v2, -0x1

    if-ne v1, v2, :cond_91

    .line 1301
    invoke-virtual {p0, v0}, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->buildArraySegement(Ljava/lang/String;)Lcom/alibaba/fastjson/JSONPath$Segement;

    move-result-object v0

    .line 1303
    if-nez p1, :cond_94

    .line 1307
    :cond_b
    :goto_6
    return-object v0

    .line 758
    :cond_c
    iget-char v0, p0, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->ch:C

    const/16 v2, 0x29

    if-ne v0, v2, :cond_1

    .line 759
    invoke-virtual {p0}, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->next()V

    .line 761
    new-instance v0, Lcom/alibaba/fastjson/JSONPath$NotNullSegement;

    invoke-direct {v0, v1}, Lcom/alibaba/fastjson/JSONPath$NotNullSegement;-><init>(Ljava/lang/String;)V

    .line 762
    :goto_7
    iget-char v1, p0, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->ch:C

    const/16 v2, 0x20

    if-eq v1, v2, :cond_e

    .line 766
    iget-char v1, p0, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->ch:C

    const/16 v2, 0x26

    if-ne v1, v2, :cond_f

    .line 767
    :cond_d
    invoke-virtual {p0, v0}, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->filterRest(Lcom/alibaba/fastjson/JSONPath$Filter;)Lcom/alibaba/fastjson/JSONPath$Filter;

    move-result-object v0

    .line 770
    :goto_8
    if-nez p1, :cond_10

    .line 773
    :goto_9
    return-object v0

    .line 763
    :cond_e
    invoke-virtual {p0}, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->next()V

    goto :goto_7

    .line 766
    :cond_f
    iget-char v1, p0, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->ch:C

    const/16 v2, 0x7c

    if-eq v1, v2, :cond_d

    goto :goto_8

    .line 771
    :cond_10
    const/16 v1, 0x5d

    invoke-virtual {p0, v1}, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->accept(C)V

    goto :goto_9

    .line 776
    :cond_11
    iget-char v0, p0, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->ch:C

    const/16 v2, 0x5d

    if-ne v0, v2, :cond_2

    .line 777
    invoke-virtual {p0}, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->next()V

    .line 778
    new-instance v0, Lcom/alibaba/fastjson/JSONPath$NotNullSegement;

    invoke-direct {v0, v1}, Lcom/alibaba/fastjson/JSONPath$NotNullSegement;-><init>(Ljava/lang/String;)V

    .line 779
    :goto_a
    iget-char v1, p0, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->ch:C

    const/16 v2, 0x20

    if-eq v1, v2, :cond_13

    .line 783
    iget-char v1, p0, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->ch:C

    const/16 v2, 0x26

    if-ne v1, v2, :cond_14

    .line 784
    :cond_12
    invoke-virtual {p0, v0}, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->filterRest(Lcom/alibaba/fastjson/JSONPath$Filter;)Lcom/alibaba/fastjson/JSONPath$Filter;

    move-result-object v0

    .line 787
    :goto_b
    const/16 v1, 0x29

    invoke-virtual {p0, v1}, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->accept(C)V

    .line 788
    if-nez v7, :cond_15

    .line 792
    :goto_c
    if-nez p1, :cond_16

    .line 795
    :goto_d
    return-object v0

    .line 780
    :cond_13
    invoke-virtual {p0}, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->next()V

    goto :goto_a

    .line 783
    :cond_14
    iget-char v1, p0, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->ch:C

    const/16 v2, 0x7c

    if-eq v1, v2, :cond_12

    goto :goto_b

    .line 789
    :cond_15
    const/16 v1, 0x29

    invoke-virtual {p0, v1}, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->accept(C)V

    goto :goto_c

    .line 793
    :cond_16
    const/16 v1, 0x5d

    invoke-virtual {p0, v1}, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->accept(C)V

    goto :goto_d

    .line 802
    :cond_17
    sget-object v0, Lcom/alibaba/fastjson/JSONPath$Operator;->NOT_BETWEEN:Lcom/alibaba/fastjson/JSONPath$Operator;

    if-eq v4, v0, :cond_3

    .line 828
    sget-object v0, Lcom/alibaba/fastjson/JSONPath$Operator;->IN:Lcom/alibaba/fastjson/JSONPath$Operator;

    if-ne v4, v0, :cond_1e

    .line 829
    :cond_18
    sget-object v0, Lcom/alibaba/fastjson/JSONPath$Operator;->NOT_IN:Lcom/alibaba/fastjson/JSONPath$Operator;

    if-eq v4, v0, :cond_22

    const/4 v0, 0x0

    move v2, v0

    .line 830
    :goto_e
    const/16 v0, 0x28

    invoke-virtual {p0, v0}, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->accept(C)V

    .line 832
    new-instance v5, Lcom/alibaba/fastjson/JSONArray;

    invoke-direct {v5}, Lcom/alibaba/fastjson/JSONArray;-><init>()V

    .line 834
    invoke-virtual {p0}, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->readValue()Ljava/lang/Object;

    move-result-object v0

    .line 835
    invoke-interface {v5, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 838
    :goto_f
    invoke-virtual {p0}, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->skipWhitespace()V

    .line 839
    iget-char v0, p0, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->ch:C

    const/16 v3, 0x2c

    if-ne v0, v3, :cond_23

    .line 842
    invoke-virtual {p0}, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->next()V

    .line 844
    invoke-virtual {p0}, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->readValue()Ljava/lang/Object;

    move-result-object v0

    .line 845
    invoke-interface {v5, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_f

    :cond_19
    const/4 v6, 0x1

    .line 803
    goto/16 :goto_2

    .line 810
    :cond_1a
    new-instance v0, Lcom/alibaba/fastjson/JSONPathException;

    iget-object v1, p0, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->path:Ljava/lang/String;

    invoke-direct {v0, v1}, Lcom/alibaba/fastjson/JSONPathException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 815
    :cond_1b
    if-eqz v4, :cond_4

    .line 819
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-static {v0}, Lcom/alibaba/fastjson/JSONPath;->isInt(Ljava/lang/Class;)Z

    move-result v0

    if-nez v0, :cond_1d

    .line 825
    :cond_1c
    new-instance v0, Lcom/alibaba/fastjson/JSONPathException;

    iget-object v1, p0, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->path:Ljava/lang/String;

    invoke-direct {v0, v1}, Lcom/alibaba/fastjson/JSONPathException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 819
    :cond_1d
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-static {v0}, Lcom/alibaba/fastjson/JSONPath;->isInt(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_1c

    .line 820
    new-instance v0, Lcom/alibaba/fastjson/JSONPath$IntBetweenSegement;

    check-cast v2, Ljava/lang/Number;

    invoke-virtual {v2}, Ljava/lang/Number;->longValue()J

    move-result-wide v2

    check-cast v4, Ljava/lang/Number;

    .line 821
    invoke-virtual {v4}, Ljava/lang/Number;->longValue()J

    move-result-wide v4

    invoke-direct/range {v0 .. v6}, Lcom/alibaba/fastjson/JSONPath$IntBetweenSegement;-><init>(Ljava/lang/String;JJZ)V

    .line 822
    return-object v0

    .line 828
    :cond_1e
    sget-object v0, Lcom/alibaba/fastjson/JSONPath$Operator;->NOT_IN:Lcom/alibaba/fastjson/JSONPath$Operator;

    if-eq v4, v0, :cond_18

    .line 1038
    iget-char v0, p0, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->ch:C

    const/16 v2, 0x27

    if-ne v0, v2, :cond_54

    .line 1039
    :cond_1f
    invoke-virtual {p0}, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->readString()Ljava/lang/String;

    move-result-object v0

    .line 1042
    sget-object v2, Lcom/alibaba/fastjson/JSONPath$Operator;->RLIKE:Lcom/alibaba/fastjson/JSONPath$Operator;

    if-eq v4, v2, :cond_56

    .line 1044
    sget-object v2, Lcom/alibaba/fastjson/JSONPath$Operator;->NOT_RLIKE:Lcom/alibaba/fastjson/JSONPath$Operator;

    if-eq v4, v2, :cond_57

    .line 1046
    sget-object v2, Lcom/alibaba/fastjson/JSONPath$Operator;->LIKE:Lcom/alibaba/fastjson/JSONPath$Operator;

    if-ne v4, v2, :cond_58

    :cond_20
    :goto_10
    const-string/jumbo v2, "%%"

    .line 1047
    invoke-virtual {v0, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    const/4 v3, -0x1

    if-ne v2, v3, :cond_59

    .line 1051
    sget-object v2, Lcom/alibaba/fastjson/JSONPath$Operator;->NOT_LIKE:Lcom/alibaba/fastjson/JSONPath$Operator;

    if-eq v4, v2, :cond_5a

    const/4 v5, 0x0

    :goto_11
    const/16 v2, 0x25

    .line 1053
    invoke-virtual {v0, v2}, Ljava/lang/String;->indexOf(I)I

    move-result v8

    const/4 v2, -0x1

    .line 1054
    if-eq v8, v2, :cond_5b

    const-string/jumbo v2, "%"

    .line 1062
    invoke-virtual {v0, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    const/4 v6, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    .line 1067
    if-eqz v8, :cond_5d

    .line 1078
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v8

    add-int/lit8 v8, v8, -0x1

    invoke-virtual {v0, v8}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v8, 0x25

    if-eq v0, v8, :cond_60

    .line 1081
    array-length v0, v2

    const/4 v6, 0x1

    if-eq v0, v6, :cond_61

    .line 1083
    array-length v0, v2

    const/4 v3, 0x2

    if-eq v0, v3, :cond_62

    const/4 v0, 0x0

    .line 1087
    aget-object v0, v2, v0

    .line 1088
    array-length v3, v2

    add-int/lit8 v3, v3, -0x1

    aget-object v3, v2, v3

    .line 1089
    array-length v4, v2

    add-int/lit8 v4, v4, -0x2

    new-array v4, v4, [Ljava/lang/String;

    const/4 v6, 0x1

    const/4 v8, 0x0

    .line 1090
    array-length v9, v4

    invoke-static {v2, v6, v4, v8, v9}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    move-object v2, v0

    .line 1094
    :goto_12
    new-instance v0, Lcom/alibaba/fastjson/JSONPath$MatchSegement;

    invoke-direct/range {v0 .. v5}, Lcom/alibaba/fastjson/JSONPath$MatchSegement;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Z)V

    .line 1101
    :goto_13
    iget-char v1, p0, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->ch:C

    const/16 v2, 0x20

    if-eq v1, v2, :cond_63

    .line 1105
    iget-char v1, p0, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->ch:C

    const/16 v2, 0x26

    if-ne v1, v2, :cond_64

    .line 1106
    :cond_21
    invoke-virtual {p0, v0}, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->filterRest(Lcom/alibaba/fastjson/JSONPath$Filter;)Lcom/alibaba/fastjson/JSONPath$Filter;

    move-result-object v0

    .line 1109
    :goto_14
    if-nez v7, :cond_65

    .line 1113
    :goto_15
    if-nez p1, :cond_66

    .line 1117
    :goto_16
    return-object v0

    :cond_22
    const/4 v0, 0x1

    move v2, v0

    .line 829
    goto/16 :goto_e

    .line 849
    :cond_23
    const/4 v4, 0x1

    .line 850
    const/4 v3, 0x1

    .line 851
    const/4 v0, 0x1

    .line 852
    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_24
    :goto_17
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-nez v8, :cond_26

    .line 872
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v6

    const/4 v8, 0x1

    if-eq v6, v8, :cond_2a

    .line 900
    :cond_25
    if-nez v4, :cond_31

    .line 952
    if-nez v0, :cond_3f

    .line 1004
    if-nez v3, :cond_4c

    .line 1035
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0

    .line 852
    :cond_26
    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    .line 853
    if-eqz v8, :cond_28

    .line 860
    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v8

    .line 861
    if-nez v4, :cond_29

    .line 867
    :cond_27
    :goto_18
    if-eqz v0, :cond_24

    const-class v9, Ljava/lang/String;

    if-eq v8, v9, :cond_24

    .line 868
    const/4 v0, 0x0

    goto :goto_17

    .line 854
    :cond_28
    if-eqz v4, :cond_24

    .line 855
    const/4 v4, 0x0

    goto :goto_17

    :cond_29
    const-class v9, Ljava/lang/Byte;

    .line 861
    if-eq v8, v9, :cond_27

    const-class v9, Ljava/lang/Short;

    if-eq v8, v9, :cond_27

    const-class v9, Ljava/lang/Integer;

    if-eq v8, v9, :cond_27

    const-class v9, Ljava/lang/Long;

    if-eq v8, v9, :cond_27

    .line 863
    const/4 v4, 0x0

    .line 864
    const/4 v3, 0x0

    goto :goto_18

    :cond_2a
    const/4 v6, 0x0

    .line 872
    invoke-interface {v5, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    if-nez v6, :cond_25

    .line 874
    if-nez v2, :cond_2c

    .line 877
    new-instance v0, Lcom/alibaba/fastjson/JSONPath$NullSegement;

    invoke-direct {v0, v1}, Lcom/alibaba/fastjson/JSONPath$NullSegement;-><init>(Ljava/lang/String;)V

    .line 880
    :goto_19
    iget-char v1, p0, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->ch:C

    const/16 v2, 0x20

    if-eq v1, v2, :cond_2d

    .line 884
    iget-char v1, p0, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->ch:C

    const/16 v2, 0x26

    if-ne v1, v2, :cond_2e

    .line 885
    :cond_2b
    invoke-virtual {p0, v0}, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->filterRest(Lcom/alibaba/fastjson/JSONPath$Filter;)Lcom/alibaba/fastjson/JSONPath$Filter;

    move-result-object v0

    .line 888
    :goto_1a
    const/16 v1, 0x29

    invoke-virtual {p0, v1}, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->accept(C)V

    .line 889
    if-nez v7, :cond_2f

    .line 893
    :goto_1b
    if-nez p1, :cond_30

    .line 897
    :goto_1c
    return-object v0

    .line 875
    :cond_2c
    new-instance v0, Lcom/alibaba/fastjson/JSONPath$NotNullSegement;

    invoke-direct {v0, v1}, Lcom/alibaba/fastjson/JSONPath$NotNullSegement;-><init>(Ljava/lang/String;)V

    goto :goto_19

    .line 881
    :cond_2d
    invoke-virtual {p0}, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->next()V

    goto :goto_19

    .line 884
    :cond_2e
    iget-char v1, p0, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->ch:C

    const/16 v2, 0x7c

    if-eq v1, v2, :cond_2b

    goto :goto_1a

    .line 890
    :cond_2f
    const/16 v1, 0x29

    invoke-virtual {p0, v1}, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->accept(C)V

    goto :goto_1b

    .line 894
    :cond_30
    const/16 v1, 0x5d

    invoke-virtual {p0, v1}, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->accept(C)V

    goto :goto_1c

    .line 901
    :cond_31
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v0

    const/4 v3, 0x1

    if-eq v0, v3, :cond_33

    .line 925
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v0

    new-array v4, v0, [J

    const/4 v0, 0x0

    move v3, v0

    .line 926
    :goto_1d
    array-length v0, v4

    if-lt v3, v0, :cond_3a

    .line 930
    new-instance v0, Lcom/alibaba/fastjson/JSONPath$IntInSegement;

    invoke-direct {v0, v1, v4, v2}, Lcom/alibaba/fastjson/JSONPath$IntInSegement;-><init>(Ljava/lang/String;[JZ)V

    .line 932
    :goto_1e
    iget-char v1, p0, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->ch:C

    const/16 v2, 0x20

    if-eq v1, v2, :cond_3b

    .line 936
    iget-char v1, p0, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->ch:C

    const/16 v2, 0x26

    if-ne v1, v2, :cond_3c

    .line 937
    :cond_32
    invoke-virtual {p0, v0}, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->filterRest(Lcom/alibaba/fastjson/JSONPath$Filter;)Lcom/alibaba/fastjson/JSONPath$Filter;

    move-result-object v0

    .line 940
    :goto_1f
    const/16 v1, 0x29

    invoke-virtual {p0, v1}, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->accept(C)V

    .line 941
    if-nez v7, :cond_3d

    .line 945
    :goto_20
    if-nez p1, :cond_3e

    .line 949
    :goto_21
    return-object v0

    :cond_33
    const/4 v0, 0x0

    .line 902
    invoke-interface {v5, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->longValue()J

    move-result-wide v4

    .line 903
    if-nez v2, :cond_35

    sget-object v0, Lcom/alibaba/fastjson/JSONPath$Operator;->EQ:Lcom/alibaba/fastjson/JSONPath$Operator;

    .line 904
    :goto_22
    new-instance v2, Lcom/alibaba/fastjson/JSONPath$IntOpSegement;

    invoke-direct {v2, v1, v4, v5, v0}, Lcom/alibaba/fastjson/JSONPath$IntOpSegement;-><init>(Ljava/lang/String;JLcom/alibaba/fastjson/JSONPath$Operator;)V

    .line 905
    :goto_23
    iget-char v0, p0, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->ch:C

    const/16 v1, 0x20

    if-eq v0, v1, :cond_36

    .line 909
    iget-char v0, p0, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->ch:C

    const/16 v1, 0x26

    if-ne v0, v1, :cond_37

    .line 910
    :cond_34
    invoke-virtual {p0, v2}, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->filterRest(Lcom/alibaba/fastjson/JSONPath$Filter;)Lcom/alibaba/fastjson/JSONPath$Filter;

    move-result-object v0

    .line 913
    :goto_24
    const/16 v1, 0x29

    invoke-virtual {p0, v1}, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->accept(C)V

    .line 914
    if-nez v7, :cond_38

    .line 918
    :goto_25
    if-nez p1, :cond_39

    .line 922
    :goto_26
    return-object v0

    .line 903
    :cond_35
    sget-object v0, Lcom/alibaba/fastjson/JSONPath$Operator;->NE:Lcom/alibaba/fastjson/JSONPath$Operator;

    goto :goto_22

    .line 906
    :cond_36
    invoke-virtual {p0}, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->next()V

    goto :goto_23

    .line 909
    :cond_37
    iget-char v0, p0, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->ch:C

    const/16 v1, 0x7c

    if-eq v0, v1, :cond_34

    move-object v0, v2

    goto :goto_24

    .line 915
    :cond_38
    const/16 v1, 0x29

    invoke-virtual {p0, v1}, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->accept(C)V

    goto :goto_25

    .line 919
    :cond_39
    const/16 v1, 0x5d

    invoke-virtual {p0, v1}, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->accept(C)V

    goto :goto_26

    .line 927
    :cond_3a
    invoke-interface {v5, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->longValue()J

    move-result-wide v8

    aput-wide v8, v4, v3

    .line 926
    add-int/lit8 v0, v3, 0x1

    move v3, v0

    goto :goto_1d

    .line 933
    :cond_3b
    invoke-virtual {p0}, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->next()V

    goto :goto_1e

    .line 936
    :cond_3c
    iget-char v1, p0, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->ch:C

    const/16 v2, 0x7c

    if-eq v1, v2, :cond_32

    goto :goto_1f

    .line 942
    :cond_3d
    const/16 v1, 0x29

    invoke-virtual {p0, v1}, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->accept(C)V

    goto :goto_20

    .line 946
    :cond_3e
    const/16 v1, 0x5d

    invoke-virtual {p0, v1}, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->accept(C)V

    goto :goto_21

    .line 953
    :cond_3f
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v0

    const/4 v3, 0x1

    if-eq v0, v3, :cond_41

    .line 979
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v0

    new-array v3, v0, [Ljava/lang/String;

    .line 980
    invoke-interface {v5, v3}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 982
    new-instance v0, Lcom/alibaba/fastjson/JSONPath$StringInSegement;

    invoke-direct {v0, v1, v3, v2}, Lcom/alibaba/fastjson/JSONPath$StringInSegement;-><init>(Ljava/lang/String;[Ljava/lang/String;Z)V

    .line 984
    :goto_27
    iget-char v1, p0, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->ch:C

    const/16 v2, 0x20

    if-eq v1, v2, :cond_48

    .line 988
    iget-char v1, p0, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->ch:C

    const/16 v2, 0x26

    if-ne v1, v2, :cond_49

    .line 989
    :cond_40
    invoke-virtual {p0, v0}, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->filterRest(Lcom/alibaba/fastjson/JSONPath$Filter;)Lcom/alibaba/fastjson/JSONPath$Filter;

    move-result-object v0

    .line 992
    :goto_28
    const/16 v1, 0x29

    invoke-virtual {p0, v1}, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->accept(C)V

    .line 993
    if-nez v7, :cond_4a

    .line 997
    :goto_29
    if-nez p1, :cond_4b

    .line 1001
    :goto_2a
    return-object v0

    :cond_41
    const/4 v0, 0x0

    .line 954
    invoke-interface {v5, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 956
    if-nez v2, :cond_43

    sget-object v2, Lcom/alibaba/fastjson/JSONPath$Operator;->EQ:Lcom/alibaba/fastjson/JSONPath$Operator;

    .line 957
    :goto_2b
    new-instance v3, Lcom/alibaba/fastjson/JSONPath$StringOpSegement;

    invoke-direct {v3, v1, v0, v2}, Lcom/alibaba/fastjson/JSONPath$StringOpSegement;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/alibaba/fastjson/JSONPath$Operator;)V

    .line 959
    :goto_2c
    iget-char v0, p0, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->ch:C

    const/16 v1, 0x20

    if-eq v0, v1, :cond_44

    .line 963
    iget-char v0, p0, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->ch:C

    const/16 v1, 0x26

    if-ne v0, v1, :cond_45

    .line 964
    :cond_42
    invoke-virtual {p0, v3}, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->filterRest(Lcom/alibaba/fastjson/JSONPath$Filter;)Lcom/alibaba/fastjson/JSONPath$Filter;

    move-result-object v0

    .line 967
    :goto_2d
    const/16 v1, 0x29

    invoke-virtual {p0, v1}, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->accept(C)V

    .line 968
    if-nez v7, :cond_46

    .line 972
    :goto_2e
    if-nez p1, :cond_47

    .line 976
    :goto_2f
    return-object v0

    .line 956
    :cond_43
    sget-object v2, Lcom/alibaba/fastjson/JSONPath$Operator;->NE:Lcom/alibaba/fastjson/JSONPath$Operator;

    goto :goto_2b

    .line 960
    :cond_44
    invoke-virtual {p0}, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->next()V

    goto :goto_2c

    .line 963
    :cond_45
    iget-char v0, p0, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->ch:C

    const/16 v1, 0x7c

    if-eq v0, v1, :cond_42

    move-object v0, v3

    goto :goto_2d

    .line 969
    :cond_46
    const/16 v1, 0x29

    invoke-virtual {p0, v1}, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->accept(C)V

    goto :goto_2e

    .line 973
    :cond_47
    const/16 v1, 0x5d

    invoke-virtual {p0, v1}, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->accept(C)V

    goto :goto_2f

    .line 985
    :cond_48
    invoke-virtual {p0}, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->next()V

    goto :goto_27

    .line 988
    :cond_49
    iget-char v1, p0, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->ch:C

    const/16 v2, 0x7c

    if-eq v1, v2, :cond_40

    goto :goto_28

    .line 994
    :cond_4a
    const/16 v1, 0x29

    invoke-virtual {p0, v1}, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->accept(C)V

    goto :goto_29

    .line 998
    :cond_4b
    const/16 v1, 0x5d

    invoke-virtual {p0, v1}, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->accept(C)V

    goto :goto_2a

    .line 1005
    :cond_4c
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v0

    new-array v4, v0, [Ljava/lang/Long;

    const/4 v0, 0x0

    move v3, v0

    .line 1006
    :goto_30
    array-length v0, v4

    if-lt v3, v0, :cond_4e

    .line 1013
    new-instance v0, Lcom/alibaba/fastjson/JSONPath$IntObjInSegement;

    invoke-direct {v0, v1, v4, v2}, Lcom/alibaba/fastjson/JSONPath$IntObjInSegement;-><init>(Ljava/lang/String;[Ljava/lang/Long;Z)V

    .line 1015
    :goto_31
    iget-char v1, p0, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->ch:C

    const/16 v2, 0x20

    if-eq v1, v2, :cond_50

    .line 1019
    iget-char v1, p0, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->ch:C

    const/16 v2, 0x26

    if-ne v1, v2, :cond_51

    .line 1020
    :cond_4d
    invoke-virtual {p0, v0}, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->filterRest(Lcom/alibaba/fastjson/JSONPath$Filter;)Lcom/alibaba/fastjson/JSONPath$Filter;

    move-result-object v0

    .line 1023
    :goto_32
    const/16 v1, 0x29

    invoke-virtual {p0, v1}, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->accept(C)V

    .line 1024
    if-nez v7, :cond_52

    .line 1028
    :goto_33
    if-nez p1, :cond_53

    .line 1032
    :goto_34
    return-object v0

    .line 1007
    :cond_4e
    invoke-interface {v5, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Number;

    .line 1008
    if-nez v0, :cond_4f

    .line 1006
    :goto_35
    add-int/lit8 v0, v3, 0x1

    move v3, v0

    goto :goto_30

    .line 1009
    :cond_4f
    invoke-virtual {v0}, Ljava/lang/Number;->longValue()J

    move-result-wide v8

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    aput-object v0, v4, v3

    goto :goto_35

    .line 1016
    :cond_50
    invoke-virtual {p0}, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->next()V

    goto :goto_31

    .line 1019
    :cond_51
    iget-char v1, p0, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->ch:C

    const/16 v2, 0x7c

    if-eq v1, v2, :cond_4d

    goto :goto_32

    .line 1025
    :cond_52
    const/16 v1, 0x29

    invoke-virtual {p0, v1}, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->accept(C)V

    goto :goto_33

    .line 1029
    :cond_53
    const/16 v1, 0x5d

    invoke-virtual {p0, v1}, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->accept(C)V

    goto :goto_34

    .line 1038
    :cond_54
    iget-char v0, p0, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->ch:C

    const/16 v2, 0x22

    if-eq v0, v2, :cond_1f

    .line 1120
    iget-char v0, p0, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->ch:C

    invoke-static {v0}, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->isDigitFirst(C)Z

    move-result v0

    if-nez v0, :cond_67

    .line 1159
    iget-char v0, p0, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->ch:C

    const/16 v2, 0x6e

    if-eq v0, v2, :cond_70

    .line 1190
    iget-char v0, p0, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->ch:C

    const/16 v2, 0x74

    if-eq v0, v2, :cond_79

    .line 1223
    iget-char v0, p0, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->ch:C

    const/16 v2, 0x66

    if-eq v0, v2, :cond_82

    .line 1258
    :cond_55
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0

    .line 1043
    :cond_56
    new-instance v2, Lcom/alibaba/fastjson/JSONPath$RlikeSegement;

    const/4 v3, 0x0

    invoke-direct {v2, v1, v0, v3}, Lcom/alibaba/fastjson/JSONPath$RlikeSegement;-><init>(Ljava/lang/String;Ljava/lang/String;Z)V

    move-object v0, v2

    goto/16 :goto_13

    .line 1045
    :cond_57
    new-instance v2, Lcom/alibaba/fastjson/JSONPath$RlikeSegement;

    const/4 v3, 0x1

    invoke-direct {v2, v1, v0, v3}, Lcom/alibaba/fastjson/JSONPath$RlikeSegement;-><init>(Ljava/lang/String;Ljava/lang/String;Z)V

    move-object v0, v2

    goto/16 :goto_13

    .line 1046
    :cond_58
    sget-object v2, Lcom/alibaba/fastjson/JSONPath$Operator;->NOT_LIKE:Lcom/alibaba/fastjson/JSONPath$Operator;

    if-eq v4, v2, :cond_20

    .line 1098
    new-instance v2, Lcom/alibaba/fastjson/JSONPath$StringOpSegement;

    invoke-direct {v2, v1, v0, v4}, Lcom/alibaba/fastjson/JSONPath$StringOpSegement;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/alibaba/fastjson/JSONPath$Operator;)V

    move-object v0, v2

    goto/16 :goto_13

    :cond_59
    const-string/jumbo v2, "%%"

    const-string/jumbo v3, "%"

    .line 1048
    invoke-virtual {v0, v2, v3}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_10

    :cond_5a
    const/4 v5, 0x1

    .line 1051
    goto/16 :goto_11

    .line 1055
    :cond_5b
    sget-object v2, Lcom/alibaba/fastjson/JSONPath$Operator;->LIKE:Lcom/alibaba/fastjson/JSONPath$Operator;

    if-eq v4, v2, :cond_5c

    .line 1058
    sget-object v2, Lcom/alibaba/fastjson/JSONPath$Operator;->NE:Lcom/alibaba/fastjson/JSONPath$Operator;

    .line 1060
    :goto_36
    new-instance v3, Lcom/alibaba/fastjson/JSONPath$StringOpSegement;

    invoke-direct {v3, v1, v0, v2}, Lcom/alibaba/fastjson/JSONPath$StringOpSegement;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/alibaba/fastjson/JSONPath$Operator;)V

    move-object v0, v3

    goto/16 :goto_13

    .line 1056
    :cond_5c
    sget-object v2, Lcom/alibaba/fastjson/JSONPath$Operator;->EQ:Lcom/alibaba/fastjson/JSONPath$Operator;

    goto :goto_36

    .line 1068
    :cond_5d
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v8

    add-int/lit8 v8, v8, -0x1

    invoke-virtual {v0, v8}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v8, 0x25

    if-eq v0, v8, :cond_5e

    .line 1072
    array-length v0, v2

    add-int/lit8 v0, v0, -0x1

    aget-object v3, v2, v0

    .line 1073
    array-length v0, v2

    const/4 v8, 0x2

    if-gt v0, v8, :cond_5f

    move-object v2, v6

    goto/16 :goto_12

    .line 1069
    :cond_5e
    array-length v0, v2

    add-int/lit8 v0, v0, -0x1

    new-array v4, v0, [Ljava/lang/String;

    const/4 v0, 0x1

    const/4 v8, 0x0

    .line 1070
    array-length v9, v4

    invoke-static {v2, v0, v4, v8, v9}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    move-object v2, v6

    goto/16 :goto_12

    .line 1074
    :cond_5f
    array-length v0, v2

    add-int/lit8 v0, v0, -0x2

    new-array v4, v0, [Ljava/lang/String;

    const/4 v0, 0x1

    const/4 v8, 0x0

    .line 1075
    array-length v9, v4

    invoke-static {v2, v0, v4, v8, v9}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    move-object v2, v6

    goto/16 :goto_12

    :cond_60
    move-object v4, v2

    move-object v2, v6

    .line 1079
    goto/16 :goto_12

    :cond_61
    const/4 v0, 0x0

    .line 1082
    aget-object v2, v2, v0

    goto/16 :goto_12

    :cond_62
    const/4 v0, 0x0

    .line 1084
    aget-object v0, v2, v0

    const/4 v3, 0x1

    .line 1085
    aget-object v3, v2, v3

    move-object v2, v0

    goto/16 :goto_12

    .line 1102
    :cond_63
    invoke-virtual {p0}, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->next()V

    goto/16 :goto_13

    .line 1105
    :cond_64
    iget-char v1, p0, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->ch:C

    const/16 v2, 0x7c

    if-eq v1, v2, :cond_21

    goto/16 :goto_14

    .line 1110
    :cond_65
    const/16 v1, 0x29

    invoke-virtual {p0, v1}, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->accept(C)V

    goto/16 :goto_15

    .line 1114
    :cond_66
    const/16 v1, 0x5d

    invoke-virtual {p0, v1}, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->accept(C)V

    goto/16 :goto_16

    .line 1121
    :cond_67
    invoke-virtual {p0}, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->readLongValue()J

    move-result-wide v8

    const-wide/16 v2, 0x0

    .line 1123
    iget-char v0, p0, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->ch:C

    const/16 v5, 0x2e

    if-eq v0, v5, :cond_69

    :goto_37
    const-wide/16 v10, 0x0

    .line 1130
    cmpl-double v0, v2, v10

    if-nez v0, :cond_6a

    .line 1131
    new-instance v0, Lcom/alibaba/fastjson/JSONPath$IntOpSegement;

    invoke-direct {v0, v1, v8, v9, v4}, Lcom/alibaba/fastjson/JSONPath$IntOpSegement;-><init>(Ljava/lang/String;JLcom/alibaba/fastjson/JSONPath$Operator;)V

    .line 1136
    :goto_38
    iget-char v1, p0, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->ch:C

    const/16 v4, 0x20

    if-eq v1, v4, :cond_6b

    .line 1140
    iget-char v1, p0, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->ch:C

    const/16 v4, 0x26

    if-ne v1, v4, :cond_6c

    .line 1141
    :cond_68
    invoke-virtual {p0, v0}, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->filterRest(Lcom/alibaba/fastjson/JSONPath$Filter;)Lcom/alibaba/fastjson/JSONPath$Filter;

    move-result-object v0

    .line 1144
    :goto_39
    if-nez v7, :cond_6d

    .line 1148
    :goto_3a
    if-nez p1, :cond_6e

    :goto_3b
    const-wide/16 v4, 0x0

    .line 1152
    cmpl-double v1, v2, v4

    if-nez v1, :cond_6f

    .line 1153
    return-object v0

    .line 1124
    :cond_69
    invoke-virtual {p0, v8, v9}, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->readDoubleValue(J)D

    move-result-wide v2

    goto :goto_37

    .line 1133
    :cond_6a
    new-instance v0, Lcom/alibaba/fastjson/JSONPath$DoubleOpSegement;

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/alibaba/fastjson/JSONPath$DoubleOpSegement;-><init>(Ljava/lang/String;DLcom/alibaba/fastjson/JSONPath$Operator;)V

    goto :goto_38

    .line 1137
    :cond_6b
    invoke-virtual {p0}, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->next()V

    goto :goto_38

    .line 1140
    :cond_6c
    iget-char v1, p0, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->ch:C

    const/16 v4, 0x7c

    if-eq v1, v4, :cond_68

    goto :goto_39

    .line 1145
    :cond_6d
    const/16 v1, 0x29

    invoke-virtual {p0, v1}, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->accept(C)V

    goto :goto_3a

    .line 1149
    :cond_6e
    const/16 v1, 0x5d

    invoke-virtual {p0, v1}, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->accept(C)V

    goto :goto_3b

    .line 1155
    :cond_6f
    return-object v0

    .line 1160
    :cond_70
    invoke-virtual {p0}, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->readName()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v2, "null"

    .line 1161
    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_55

    const/4 v0, 0x0

    .line 1163
    sget-object v2, Lcom/alibaba/fastjson/JSONPath$Operator;->EQ:Lcom/alibaba/fastjson/JSONPath$Operator;

    if-eq v4, v2, :cond_71

    .line 1165
    sget-object v2, Lcom/alibaba/fastjson/JSONPath$Operator;->NE:Lcom/alibaba/fastjson/JSONPath$Operator;

    if-eq v4, v2, :cond_72

    .line 1169
    :goto_3c
    if-nez v0, :cond_74

    .line 1179
    :goto_3d
    if-nez v7, :cond_77

    .line 1182
    :goto_3e
    const/16 v1, 0x5d

    invoke-virtual {p0, v1}, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->accept(C)V

    .line 1184
    if-nez v0, :cond_78

    .line 1188
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0

    .line 1164
    :cond_71
    new-instance v0, Lcom/alibaba/fastjson/JSONPath$NullSegement;

    invoke-direct {v0, v1}, Lcom/alibaba/fastjson/JSONPath$NullSegement;-><init>(Ljava/lang/String;)V

    goto :goto_3c

    .line 1166
    :cond_72
    new-instance v0, Lcom/alibaba/fastjson/JSONPath$NotNullSegement;

    invoke-direct {v0, v1}, Lcom/alibaba/fastjson/JSONPath$NotNullSegement;-><init>(Ljava/lang/String;)V

    goto :goto_3c

    .line 1171
    :cond_73
    invoke-virtual {p0}, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->next()V

    .line 1170
    :cond_74
    iget-char v1, p0, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->ch:C

    const/16 v2, 0x20

    if-eq v1, v2, :cond_73

    .line 1174
    iget-char v1, p0, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->ch:C

    const/16 v2, 0x26

    if-ne v1, v2, :cond_76

    .line 1175
    :cond_75
    invoke-virtual {p0, v0}, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->filterRest(Lcom/alibaba/fastjson/JSONPath$Filter;)Lcom/alibaba/fastjson/JSONPath$Filter;

    move-result-object v0

    goto :goto_3d

    .line 1174
    :cond_76
    iget-char v1, p0, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->ch:C

    const/16 v2, 0x7c

    if-eq v1, v2, :cond_75

    goto :goto_3d

    .line 1180
    :cond_77
    const/16 v1, 0x29

    invoke-virtual {p0, v1}, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->accept(C)V

    goto :goto_3e

    .line 1185
    :cond_78
    return-object v0

    .line 1191
    :cond_79
    invoke-virtual {p0}, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->readName()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v2, "true"

    .line 1193
    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_55

    const/4 v0, 0x0

    .line 1196
    sget-object v2, Lcom/alibaba/fastjson/JSONPath$Operator;->EQ:Lcom/alibaba/fastjson/JSONPath$Operator;

    if-eq v4, v2, :cond_7a

    .line 1198
    sget-object v2, Lcom/alibaba/fastjson/JSONPath$Operator;->NE:Lcom/alibaba/fastjson/JSONPath$Operator;

    if-eq v4, v2, :cond_7b

    .line 1202
    :goto_3f
    if-nez v0, :cond_7d

    .line 1212
    :goto_40
    if-nez v7, :cond_80

    .line 1215
    :goto_41
    const/16 v1, 0x5d

    invoke-virtual {p0, v1}, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->accept(C)V

    .line 1217
    if-nez v0, :cond_81

    .line 1221
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0

    .line 1197
    :cond_7a
    new-instance v0, Lcom/alibaba/fastjson/JSONPath$ValueSegment;

    sget-object v2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    const/4 v3, 0x1

    invoke-direct {v0, v1, v2, v3}, Lcom/alibaba/fastjson/JSONPath$ValueSegment;-><init>(Ljava/lang/String;Ljava/lang/Object;Z)V

    goto :goto_3f

    .line 1199
    :cond_7b
    new-instance v0, Lcom/alibaba/fastjson/JSONPath$ValueSegment;

    sget-object v2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3}, Lcom/alibaba/fastjson/JSONPath$ValueSegment;-><init>(Ljava/lang/String;Ljava/lang/Object;Z)V

    goto :goto_3f

    .line 1204
    :cond_7c
    invoke-virtual {p0}, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->next()V

    .line 1203
    :cond_7d
    iget-char v1, p0, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->ch:C

    const/16 v2, 0x20

    if-eq v1, v2, :cond_7c

    .line 1207
    iget-char v1, p0, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->ch:C

    const/16 v2, 0x26

    if-ne v1, v2, :cond_7f

    .line 1208
    :cond_7e
    invoke-virtual {p0, v0}, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->filterRest(Lcom/alibaba/fastjson/JSONPath$Filter;)Lcom/alibaba/fastjson/JSONPath$Filter;

    move-result-object v0

    goto :goto_40

    .line 1207
    :cond_7f
    iget-char v1, p0, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->ch:C

    const/16 v2, 0x7c

    if-eq v1, v2, :cond_7e

    goto :goto_40

    .line 1213
    :cond_80
    const/16 v1, 0x29

    invoke-virtual {p0, v1}, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->accept(C)V

    goto :goto_41

    .line 1218
    :cond_81
    return-object v0

    .line 1224
    :cond_82
    invoke-virtual {p0}, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->readName()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v2, "false"

    .line 1226
    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_55

    const/4 v0, 0x0

    .line 1229
    sget-object v2, Lcom/alibaba/fastjson/JSONPath$Operator;->EQ:Lcom/alibaba/fastjson/JSONPath$Operator;

    if-eq v4, v2, :cond_83

    .line 1231
    sget-object v2, Lcom/alibaba/fastjson/JSONPath$Operator;->NE:Lcom/alibaba/fastjson/JSONPath$Operator;

    if-eq v4, v2, :cond_84

    .line 1235
    :goto_42
    if-nez v0, :cond_86

    .line 1245
    :goto_43
    if-nez v7, :cond_89

    .line 1248
    :goto_44
    const/16 v1, 0x5d

    invoke-virtual {p0, v1}, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->accept(C)V

    .line 1250
    if-nez v0, :cond_8a

    .line 1254
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0

    .line 1230
    :cond_83
    new-instance v0, Lcom/alibaba/fastjson/JSONPath$ValueSegment;

    sget-object v2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    const/4 v3, 0x1

    invoke-direct {v0, v1, v2, v3}, Lcom/alibaba/fastjson/JSONPath$ValueSegment;-><init>(Ljava/lang/String;Ljava/lang/Object;Z)V

    goto :goto_42

    .line 1232
    :cond_84
    new-instance v0, Lcom/alibaba/fastjson/JSONPath$ValueSegment;

    sget-object v2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3}, Lcom/alibaba/fastjson/JSONPath$ValueSegment;-><init>(Ljava/lang/String;Ljava/lang/Object;Z)V

    goto :goto_42

    .line 1237
    :cond_85
    invoke-virtual {p0}, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->next()V

    .line 1236
    :cond_86
    iget-char v1, p0, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->ch:C

    const/16 v2, 0x20

    if-eq v1, v2, :cond_85

    .line 1240
    iget-char v1, p0, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->ch:C

    const/16 v2, 0x26

    if-ne v1, v2, :cond_88

    .line 1241
    :cond_87
    invoke-virtual {p0, v0}, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->filterRest(Lcom/alibaba/fastjson/JSONPath$Filter;)Lcom/alibaba/fastjson/JSONPath$Filter;

    move-result-object v0

    goto :goto_43

    .line 1240
    :cond_88
    iget-char v1, p0, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->ch:C

    const/16 v2, 0x7c

    if-eq v1, v2, :cond_87

    goto :goto_43

    .line 1246
    :cond_89
    const/16 v1, 0x29

    invoke-virtual {p0, v1}, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->accept(C)V

    goto :goto_44

    .line 1251
    :cond_8a
    return-object v0

    .line 1263
    :cond_8b
    iget-char v0, p0, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->ch:C

    const/16 v2, 0x2f

    if-eq v0, v2, :cond_9

    invoke-virtual {p0}, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->isEOF()Z

    move-result v0

    if-nez v0, :cond_9

    .line 1264
    iget-char v0, p0, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->ch:C

    const/16 v2, 0x2e

    if-eq v0, v2, :cond_8d

    .line 1270
    :cond_8c
    :goto_45
    iget-char v0, p0, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->ch:C

    const/16 v2, 0x5c

    if-eq v0, v2, :cond_8e

    .line 1273
    :goto_46
    invoke-virtual {p0}, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->next()V

    goto/16 :goto_4

    .line 1264
    :cond_8d
    if-nez v7, :cond_8c

    if-eqz v7, :cond_9

    goto :goto_45

    .line 1271
    :cond_8e
    invoke-virtual {p0}, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->next()V

    goto :goto_46

    .line 1278
    :cond_8f
    iget v0, p0, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->pos:I

    add-int/lit8 v0, v0, -0x1

    goto/16 :goto_5

    .line 1280
    :cond_90
    iget-char v0, p0, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->ch:C

    const/16 v2, 0x2e

    if-eq v0, v2, :cond_a

    .line 1283
    iget v0, p0, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->pos:I

    goto/16 :goto_5

    :cond_91
    const-string/jumbo v1, "\\\\\\."

    const-string/jumbo v2, "\\."

    .line 1290
    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "\\-"

    .line 1291
    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    const/4 v2, -0x1

    if-ne v1, v2, :cond_92

    .line 1295
    :goto_47
    if-nez v7, :cond_93

    .line 1298
    :goto_48
    new-instance v1, Lcom/alibaba/fastjson/JSONPath$PropertySegement;

    const/4 v2, 0x0

    invoke-direct {v1, v0, v2}, Lcom/alibaba/fastjson/JSONPath$PropertySegement;-><init>(Ljava/lang/String;Z)V

    return-object v1

    :cond_92
    const-string/jumbo v1, "\\\\-"

    const-string/jumbo v2, "-"

    .line 1292
    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_47

    .line 1296
    :cond_93
    const/16 v1, 0x29

    invoke-virtual {p0, v1}, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->accept(C)V

    goto :goto_48

    .line 1303
    :cond_94
    invoke-virtual {p0}, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->isEOF()Z

    move-result v1

    if-nez v1, :cond_b

    .line 1304
    const/16 v1, 0x5d

    invoke-virtual {p0, v1}, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->accept(C)V

    goto/16 :goto_6
.end method

.method protected readDoubleValue(J)D
    .locals 5

    .prologue
    .line 1344
    iget v0, p0, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->pos:I

    add-int/lit8 v0, v0, -0x1

    .line 1346
    invoke-virtual {p0}, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->next()V

    .line 1347
    :goto_0
    iget-char v1, p0, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->ch:C

    const/16 v2, 0x30

    if-ge v1, v2, :cond_1

    .line 1351
    :cond_0
    iget v1, p0, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->pos:I

    add-int/lit8 v1, v1, -0x1

    .line 1352
    iget-object v2, p0, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->path:Ljava/lang/String;

    invoke-virtual {v2, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 1353
    invoke-static {v0}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v0

    .line 1354
    long-to-double v2, p1

    add-double/2addr v0, v2

    .line 1355
    return-wide v0

    .line 1347
    :cond_1
    iget-char v1, p0, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->ch:C

    const/16 v2, 0x39

    if-gt v1, v2, :cond_0

    .line 1348
    invoke-virtual {p0}, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->next()V

    goto :goto_0
.end method

.method protected readLongValue()J
    .locals 3

    .prologue
    .line 1328
    iget v0, p0, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->pos:I

    add-int/lit8 v0, v0, -0x1

    .line 1329
    iget-char v1, p0, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->ch:C

    const/16 v2, 0x2b

    if-ne v1, v2, :cond_2

    .line 1330
    :cond_0
    invoke-virtual {p0}, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->next()V

    .line 1333
    :goto_0
    iget-char v1, p0, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->ch:C

    const/16 v2, 0x30

    if-ge v1, v2, :cond_3

    .line 1337
    :cond_1
    iget v1, p0, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->pos:I

    add-int/lit8 v1, v1, -0x1

    .line 1338
    iget-object v2, p0, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->path:Ljava/lang/String;

    invoke-virtual {v2, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 1339
    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0

    .line 1340
    return-wide v0

    .line 1329
    :cond_2
    iget-char v1, p0, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->ch:C

    const/16 v2, 0x2d

    if-eq v1, v2, :cond_0

    goto :goto_0

    .line 1333
    :cond_3
    iget-char v1, p0, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->ch:C

    const/16 v2, 0x39

    if-gt v1, v2, :cond_1

    .line 1334
    invoke-virtual {p0}, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->next()V

    goto :goto_0
.end method

.method readName()Ljava/lang/String;
    .locals 3

    .prologue
    const/16 v2, 0x5c

    .line 1450
    invoke-virtual {p0}, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->skipWhitespace()V

    .line 1452
    iget-char v0, p0, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->ch:C

    if-ne v0, v2, :cond_3

    .line 1456
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 1457
    :goto_0
    invoke-virtual {p0}, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->isEOF()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 1476
    :cond_1
    invoke-virtual {p0}, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->isEOF()Z

    move-result v1

    if-nez v1, :cond_6

    .line 1480
    :cond_2
    :goto_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1482
    return-object v0

    .line 1452
    :cond_3
    iget-char v0, p0, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->ch:C

    invoke-static {v0}, Lcom/alibaba/fastjson/util/IOUtils;->firstIdentifier(C)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1453
    new-instance v0, Lcom/alibaba/fastjson/JSONPathException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "illeal jsonpath syntax. "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->path:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/alibaba/fastjson/JSONPathException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1458
    :cond_4
    iget-char v1, p0, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->ch:C

    if-eq v1, v2, :cond_5

    .line 1468
    iget-char v1, p0, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->ch:C

    invoke-static {v1}, Lcom/alibaba/fastjson/util/IOUtils;->isIdent(C)Z

    move-result v1

    .line 1469
    if-eqz v1, :cond_1

    .line 1472
    iget-char v1, p0, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->ch:C

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1473
    invoke-virtual {p0}, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->next()V

    goto :goto_0

    .line 1459
    :cond_5
    invoke-virtual {p0}, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->next()V

    .line 1460
    iget-char v1, p0, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->ch:C

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1461
    invoke-virtual {p0}, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->isEOF()Z

    move-result v1

    if-nez v1, :cond_1

    .line 1464
    invoke-virtual {p0}, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->next()V

    goto :goto_0

    .line 1476
    :cond_6
    iget-char v1, p0, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->ch:C

    invoke-static {v1}, Lcom/alibaba/fastjson/util/IOUtils;->isIdent(C)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1477
    iget-char v1, p0, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->ch:C

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_1
.end method

.method protected readOp()Lcom/alibaba/fastjson/JSONPath$Operator;
    .locals 4

    .prologue
    const/4 v0, 0x0

    const/16 v3, 0x3d

    .line 1388
    iget-char v1, p0, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->ch:C

    if-eq v1, v3, :cond_0

    .line 1391
    iget-char v1, p0, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->ch:C

    const/16 v2, 0x21

    if-eq v1, v2, :cond_1

    .line 1395
    iget-char v1, p0, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->ch:C

    const/16 v2, 0x3c

    if-eq v1, v2, :cond_2

    .line 1403
    iget-char v1, p0, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->ch:C

    const/16 v2, 0x3e

    if-eq v1, v2, :cond_4

    .line 1413
    :goto_0
    if-eqz v0, :cond_6

    .line 1446
    :goto_1
    return-object v0

    .line 1389
    :cond_0
    invoke-virtual {p0}, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->next()V

    .line 1390
    sget-object v0, Lcom/alibaba/fastjson/JSONPath$Operator;->EQ:Lcom/alibaba/fastjson/JSONPath$Operator;

    goto :goto_0

    .line 1392
    :cond_1
    invoke-virtual {p0}, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->next()V

    .line 1393
    invoke-virtual {p0, v3}, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->accept(C)V

    .line 1394
    sget-object v0, Lcom/alibaba/fastjson/JSONPath$Operator;->NE:Lcom/alibaba/fastjson/JSONPath$Operator;

    goto :goto_0

    .line 1396
    :cond_2
    invoke-virtual {p0}, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->next()V

    .line 1397
    iget-char v0, p0, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->ch:C

    if-eq v0, v3, :cond_3

    .line 1401
    sget-object v0, Lcom/alibaba/fastjson/JSONPath$Operator;->LT:Lcom/alibaba/fastjson/JSONPath$Operator;

    goto :goto_0

    .line 1398
    :cond_3
    invoke-virtual {p0}, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->next()V

    .line 1399
    sget-object v0, Lcom/alibaba/fastjson/JSONPath$Operator;->LE:Lcom/alibaba/fastjson/JSONPath$Operator;

    goto :goto_0

    .line 1404
    :cond_4
    invoke-virtual {p0}, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->next()V

    .line 1405
    iget-char v0, p0, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->ch:C

    if-eq v0, v3, :cond_5

    .line 1409
    sget-object v0, Lcom/alibaba/fastjson/JSONPath$Operator;->GT:Lcom/alibaba/fastjson/JSONPath$Operator;

    goto :goto_0

    .line 1406
    :cond_5
    invoke-virtual {p0}, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->next()V

    .line 1407
    sget-object v0, Lcom/alibaba/fastjson/JSONPath$Operator;->GE:Lcom/alibaba/fastjson/JSONPath$Operator;

    goto :goto_0

    .line 1414
    :cond_6
    invoke-virtual {p0}, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->readName()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "not"

    .line 1416
    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_7

    const-string/jumbo v1, "like"

    .line 1433
    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_c

    const-string/jumbo v1, "rlike"

    .line 1435
    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_d

    const-string/jumbo v1, "in"

    .line 1437
    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_e

    const-string/jumbo v1, "between"

    .line 1439
    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_f

    .line 1442
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0

    .line 1417
    :cond_7
    invoke-virtual {p0}, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->skipWhitespace()V

    .line 1419
    invoke-virtual {p0}, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->readName()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "like"

    .line 1421
    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_8

    const-string/jumbo v1, "rlike"

    .line 1423
    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_9

    const-string/jumbo v1, "in"

    .line 1425
    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_a

    const-string/jumbo v1, "between"

    .line 1427
    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_b

    .line 1430
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0

    .line 1422
    :cond_8
    sget-object v0, Lcom/alibaba/fastjson/JSONPath$Operator;->NOT_LIKE:Lcom/alibaba/fastjson/JSONPath$Operator;

    goto/16 :goto_1

    .line 1424
    :cond_9
    sget-object v0, Lcom/alibaba/fastjson/JSONPath$Operator;->NOT_RLIKE:Lcom/alibaba/fastjson/JSONPath$Operator;

    goto/16 :goto_1

    .line 1426
    :cond_a
    sget-object v0, Lcom/alibaba/fastjson/JSONPath$Operator;->NOT_IN:Lcom/alibaba/fastjson/JSONPath$Operator;

    goto/16 :goto_1

    .line 1428
    :cond_b
    sget-object v0, Lcom/alibaba/fastjson/JSONPath$Operator;->NOT_BETWEEN:Lcom/alibaba/fastjson/JSONPath$Operator;

    goto/16 :goto_1

    .line 1434
    :cond_c
    sget-object v0, Lcom/alibaba/fastjson/JSONPath$Operator;->LIKE:Lcom/alibaba/fastjson/JSONPath$Operator;

    goto/16 :goto_1

    .line 1436
    :cond_d
    sget-object v0, Lcom/alibaba/fastjson/JSONPath$Operator;->RLIKE:Lcom/alibaba/fastjson/JSONPath$Operator;

    goto/16 :goto_1

    .line 1438
    :cond_e
    sget-object v0, Lcom/alibaba/fastjson/JSONPath$Operator;->IN:Lcom/alibaba/fastjson/JSONPath$Operator;

    goto/16 :goto_1

    .line 1440
    :cond_f
    sget-object v0, Lcom/alibaba/fastjson/JSONPath$Operator;->BETWEEN:Lcom/alibaba/fastjson/JSONPath$Operator;

    goto/16 :goto_1
.end method

.method readSegement()Lcom/alibaba/fastjson/JSONPath$Segement;
    .locals 7

    .prologue
    const/16 v6, 0x5b

    const/16 v5, 0x2a

    const/4 v0, 0x1

    const/16 v4, 0x2e

    const/4 v1, 0x0

    .line 633
    iget v2, p0, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->level:I

    if-eqz v2, :cond_1

    .line 641
    :cond_0
    :goto_0
    invoke-virtual {p0}, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->isEOF()Z

    move-result v2

    if-eqz v2, :cond_5

    const/4 v0, 0x0

    .line 713
    return-object v0

    .line 633
    :cond_1
    iget-object v2, p0, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->path:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-ne v2, v0, :cond_0

    .line 634
    iget-char v2, p0, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->ch:C

    invoke-static {v2}, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->isDigitFirst(C)Z

    move-result v2

    if-nez v2, :cond_3

    .line 637
    iget-char v2, p0, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->ch:C

    const/16 v3, 0x61

    if-ge v2, v3, :cond_4

    :cond_2
    iget-char v2, p0, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->ch:C

    const/16 v3, 0x41

    if-lt v2, v3, :cond_0

    iget-char v2, p0, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->ch:C

    const/16 v3, 0x5a

    if-gt v2, v3, :cond_0

    .line 638
    :goto_1
    new-instance v0, Lcom/alibaba/fastjson/JSONPath$PropertySegement;

    iget-char v2, p0, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->ch:C

    invoke-static {v2}, Ljava/lang/Character;->toString(C)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2, v1}, Lcom/alibaba/fastjson/JSONPath$PropertySegement;-><init>(Ljava/lang/String;Z)V

    return-object v0

    .line 635
    :cond_3
    iget-char v0, p0, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->ch:C

    add-int/lit8 v0, v0, -0x30

    .line 636
    new-instance v1, Lcom/alibaba/fastjson/JSONPath$ArrayAccessSegement;

    invoke-direct {v1, v0}, Lcom/alibaba/fastjson/JSONPath$ArrayAccessSegement;-><init>(I)V

    return-object v1

    .line 637
    :cond_4
    iget-char v2, p0, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->ch:C

    const/16 v3, 0x7a

    if-gt v2, v3, :cond_2

    goto :goto_1

    .line 642
    :cond_5
    invoke-virtual {p0}, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->skipWhitespace()V

    .line 644
    iget-char v2, p0, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->ch:C

    const/16 v3, 0x24

    if-eq v2, v3, :cond_9

    .line 649
    iget-char v2, p0, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->ch:C

    if-ne v2, v4, :cond_a

    .line 650
    :cond_6
    iget-char v2, p0, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->ch:C

    .line 652
    invoke-virtual {p0}, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->next()V

    .line 653
    if-eq v2, v4, :cond_b

    :cond_7
    move v0, v1

    .line 667
    :cond_8
    :goto_2
    iget-char v2, p0, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->ch:C

    if-eq v2, v5, :cond_c

    .line 675
    iget-char v2, p0, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->ch:C

    invoke-static {v2}, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->isDigitFirst(C)Z

    move-result v2

    if-nez v2, :cond_e

    .line 679
    invoke-virtual {p0}, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->readName()Ljava/lang/String;

    move-result-object v1

    .line 680
    iget-char v2, p0, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->ch:C

    const/16 v3, 0x28

    if-eq v2, v3, :cond_f

    .line 697
    new-instance v2, Lcom/alibaba/fastjson/JSONPath$PropertySegement;

    invoke-direct {v2, v1, v0}, Lcom/alibaba/fastjson/JSONPath$PropertySegement;-><init>(Ljava/lang/String;Z)V

    return-object v2

    .line 645
    :cond_9
    invoke-virtual {p0}, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->next()V

    goto :goto_0

    .line 649
    :cond_a
    iget-char v2, p0, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->ch:C

    const/16 v3, 0x2f

    if-eq v2, v3, :cond_6

    .line 700
    iget-char v2, p0, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->ch:C

    if-eq v2, v6, :cond_14

    .line 704
    iget v0, p0, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->level:I

    if-eqz v0, :cond_15

    .line 710
    new-instance v0, Lcom/alibaba/fastjson/JSONPathException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "not support jsonpath : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->path:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/alibaba/fastjson/JSONPathException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 653
    :cond_b
    iget-char v2, p0, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->ch:C

    if-ne v2, v4, :cond_7

    .line 654
    invoke-virtual {p0}, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->next()V

    .line 656
    iget-object v2, p0, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->path:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    iget v3, p0, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->pos:I

    add-int/lit8 v3, v3, 0x3

    if-le v2, v3, :cond_8

    iget-char v2, p0, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->ch:C

    if-ne v2, v6, :cond_8

    iget-object v2, p0, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->path:Ljava/lang/String;

    iget v3, p0, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->pos:I

    .line 658
    invoke-virtual {v2, v3}, Ljava/lang/String;->charAt(I)C

    move-result v2

    if-ne v2, v5, :cond_8

    iget-object v2, p0, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->path:Ljava/lang/String;

    iget v3, p0, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->pos:I

    add-int/lit8 v3, v3, 0x1

    .line 659
    invoke-virtual {v2, v3}, Ljava/lang/String;->charAt(I)C

    move-result v2

    const/16 v3, 0x5d

    if-ne v2, v3, :cond_8

    iget-object v2, p0, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->path:Ljava/lang/String;

    iget v3, p0, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->pos:I

    add-int/lit8 v3, v3, 0x2

    .line 660
    invoke-virtual {v2, v3}, Ljava/lang/String;->charAt(I)C

    move-result v2

    if-ne v2, v4, :cond_8

    .line 661
    invoke-virtual {p0}, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->next()V

    .line 662
    invoke-virtual {p0}, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->next()V

    .line 663
    invoke-virtual {p0}, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->next()V

    .line 664
    invoke-virtual {p0}, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->next()V

    goto/16 :goto_2

    .line 668
    :cond_c
    invoke-virtual {p0}, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->isEOF()Z

    move-result v0

    if-eqz v0, :cond_d

    .line 672
    :goto_3
    sget-object v0, Lcom/alibaba/fastjson/JSONPath$WildCardSegement;->instance:Lcom/alibaba/fastjson/JSONPath$WildCardSegement;

    return-object v0

    .line 669
    :cond_d
    invoke-virtual {p0}, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->next()V

    goto :goto_3

    .line 676
    :cond_e
    invoke-virtual {p0, v1}, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->parseArrayAccess(Z)Lcom/alibaba/fastjson/JSONPath$Segement;

    move-result-object v0

    return-object v0

    .line 681
    :cond_f
    invoke-virtual {p0}, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->next()V

    .line 682
    iget-char v0, p0, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->ch:C

    const/16 v2, 0x29

    if-eq v0, v2, :cond_10

    .line 694
    new-instance v0, Lcom/alibaba/fastjson/JSONPathException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "not support jsonpath : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->path:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/alibaba/fastjson/JSONPathException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 683
    :cond_10
    invoke-virtual {p0}, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->isEOF()Z

    move-result v0

    if-eqz v0, :cond_12

    :goto_4
    const-string/jumbo v0, "size"

    .line 687
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_13

    .line 688
    :cond_11
    sget-object v0, Lcom/alibaba/fastjson/JSONPath$SizeSegement;->instance:Lcom/alibaba/fastjson/JSONPath$SizeSegement;

    return-object v0

    .line 684
    :cond_12
    invoke-virtual {p0}, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->next()V

    goto :goto_4

    :cond_13
    const-string/jumbo v0, "length"

    .line 687
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_11

    .line 691
    new-instance v0, Lcom/alibaba/fastjson/JSONPathException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "not support jsonpath : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->path:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/alibaba/fastjson/JSONPathException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 701
    :cond_14
    invoke-virtual {p0, v0}, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->parseArrayAccess(Z)Lcom/alibaba/fastjson/JSONPath$Segement;

    move-result-object v0

    return-object v0

    .line 705
    :cond_15
    invoke-virtual {p0}, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->readName()Ljava/lang/String;

    move-result-object v0

    .line 707
    new-instance v2, Lcom/alibaba/fastjson/JSONPath$PropertySegement;

    invoke-direct {v2, v0, v1}, Lcom/alibaba/fastjson/JSONPath$PropertySegement;-><init>(Ljava/lang/String;Z)V

    return-object v2
.end method

.method readString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 1486
    iget-char v1, p0, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->ch:C

    .line 1487
    invoke-virtual {p0}, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->next()V

    .line 1489
    iget v0, p0, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->pos:I

    add-int/lit8 v2, v0, -0x1

    .line 1490
    :goto_0
    iget-char v0, p0, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->ch:C

    if-ne v0, v1, :cond_1

    .line 1494
    :cond_0
    iget-object v3, p0, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->path:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->isEOF()Z

    move-result v0

    if-nez v0, :cond_2

    iget v0, p0, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->pos:I

    add-int/lit8 v0, v0, -0x1

    :goto_1
    invoke-virtual {v3, v2, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 1496
    invoke-virtual {p0, v1}, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->accept(C)V

    .line 1498
    return-object v0

    .line 1490
    :cond_1
    invoke-virtual {p0}, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->isEOF()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1491
    invoke-virtual {p0}, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->next()V

    goto :goto_0

    .line 1494
    :cond_2
    iget v0, p0, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->pos:I

    goto :goto_1
.end method

.method protected readValue()Ljava/lang/Object;
    .locals 2

    .prologue
    .line 1359
    invoke-virtual {p0}, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->skipWhitespace()V

    .line 1361
    iget-char v0, p0, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->ch:C

    invoke-static {v0}, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->isDigitFirst(C)Z

    move-result v0

    if-nez v0, :cond_1

    .line 1365
    iget-char v0, p0, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->ch:C

    const/16 v1, 0x22

    if-ne v0, v1, :cond_2

    .line 1366
    :cond_0
    invoke-virtual {p0}, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->readString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 1362
    :cond_1
    invoke-virtual {p0}, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->readLongValue()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    return-object v0

    .line 1365
    :cond_2
    iget-char v0, p0, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->ch:C

    const/16 v1, 0x27

    if-eq v0, v1, :cond_0

    .line 1369
    iget-char v0, p0, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->ch:C

    const/16 v1, 0x6e

    if-eq v0, v1, :cond_3

    .line 1379
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0

    .line 1370
    :cond_3
    invoke-virtual {p0}, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->readName()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "null"

    .line 1372
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 1375
    new-instance v0, Lcom/alibaba/fastjson/JSONPathException;

    iget-object v1, p0, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->path:Ljava/lang/String;

    invoke-direct {v0, v1}, Lcom/alibaba/fastjson/JSONPathException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_4
    const/4 v0, 0x0

    .line 1373
    return-object v0
.end method

.method public final skipWhitespace()V
    .locals 3

    .prologue
    const/16 v2, 0x20

    .line 718
    :goto_0
    iget-char v0, p0, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->ch:C

    if-le v0, v2, :cond_0

    .line 725
    :goto_1
    return-void

    .line 718
    :cond_0
    iget-char v0, p0, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->ch:C

    if-ne v0, v2, :cond_2

    .line 719
    :cond_1
    invoke-virtual {p0}, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->next()V

    goto :goto_0

    .line 718
    :cond_2
    iget-char v0, p0, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->ch:C

    const/16 v1, 0xd

    if-eq v0, v1, :cond_1

    iget-char v0, p0, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->ch:C

    const/16 v1, 0xa

    if-eq v0, v1, :cond_1

    iget-char v0, p0, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->ch:C

    const/16 v1, 0x9

    if-eq v0, v1, :cond_1

    iget-char v0, p0, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->ch:C

    const/16 v1, 0xc

    if-eq v0, v1, :cond_1

    iget-char v0, p0, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->ch:C

    const/16 v1, 0x8

    if-eq v0, v1, :cond_1

    goto :goto_1
.end method
