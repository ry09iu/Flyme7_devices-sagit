.class public final Lokhttp3/HttpUrl$Builder;
.super Ljava/lang/Object;
.source "HttpUrl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lokhttp3/HttpUrl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lokhttp3/HttpUrl$Builder$ParseResult;
    }
.end annotation


# instance fields
.field encodedFragment:Ljava/lang/String;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field encodedPassword:Ljava/lang/String;

.field final encodedPathSegments:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field encodedQueryNamesAndValues:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field encodedUsername:Ljava/lang/String;

.field host:Ljava/lang/String;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field port:I

.field scheme:Ljava/lang/String;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 987
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string/jumbo v0, ""

    .line 979
    iput-object v0, p0, Lokhttp3/HttpUrl$Builder;->encodedUsername:Ljava/lang/String;

    const-string/jumbo v0, ""

    .line 980
    iput-object v0, p0, Lokhttp3/HttpUrl$Builder;->encodedPassword:Ljava/lang/String;

    const/4 v0, -0x1

    .line 982
    iput v0, p0, Lokhttp3/HttpUrl$Builder;->port:I

    .line 983
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lokhttp3/HttpUrl$Builder;->encodedPathSegments:Ljava/util/List;

    .line 988
    iget-object v0, p0, Lokhttp3/HttpUrl$Builder;->encodedPathSegments:Ljava/util/List;

    const-string/jumbo v1, ""

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 989
    return-void
.end method

.method private addPathSegments(Ljava/lang/String;Z)Lokhttp3/HttpUrl$Builder;
    .locals 7

    .prologue
    const/4 v6, 0x0

    move v2, v6

    .line 1090
    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const-string/jumbo v1, "/\\"

    invoke-static {p1, v2, v0, v1}, Lokhttp3/internal/Util;->delimiterOffset(Ljava/lang/String;IILjava/lang/String;)I

    move-result v3

    .line 1091
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-lt v3, v0, :cond_1

    move v4, v6

    :goto_0
    move-object v0, p0

    move-object v1, p1

    move v5, p2

    .line 1092
    invoke-direct/range {v0 .. v5}, Lokhttp3/HttpUrl$Builder;->push(Ljava/lang/String;IIZZ)V

    .line 1093
    add-int/lit8 v2, v3, 0x1

    .line 1094
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-le v2, v0, :cond_0

    .line 1095
    return-object p0

    :cond_1
    const/4 v4, 0x1

    .line 1091
    goto :goto_0
.end method

.method private static canonicalizeHost(Ljava/lang/String;II)Ljava/lang/String;
    .locals 1

    .prologue
    .line 1591
    const/4 v0, 0x0

    invoke-static {p0, p1, p2, v0}, Lokhttp3/HttpUrl;->percentDecode(Ljava/lang/String;IIZ)Ljava/lang/String;

    move-result-object v0

    .line 1592
    invoke-static {v0}, Lokhttp3/internal/Util;->canonicalizeHost(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private isDot(Ljava/lang/String;)Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    const-string/jumbo v1, "."

    .line 1496
    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const-string/jumbo v1, "%2e"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0
.end method

.method private isDotDot(Ljava/lang/String;)Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    const-string/jumbo v1, ".."

    .line 1500
    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const-string/jumbo v1, "%2e."

    .line 1501
    invoke-virtual {p1, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string/jumbo v1, ".%2e"

    .line 1502
    invoke-virtual {p1, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string/jumbo v1, "%2e%2e"

    .line 1503
    invoke-virtual {p1, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0
.end method

.method private static parsePort(Ljava/lang/String;II)I
    .locals 10

    .prologue
    const/4 v9, -0x1

    :try_start_0
    const-string/jumbo v3, ""

    .line 1598
    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x1

    const/4 v8, 0x0

    move-object v0, p0

    move v1, p1

    move v2, p2

    invoke-static/range {v0 .. v8}, Lokhttp3/HttpUrl;->canonicalize(Ljava/lang/String;IILjava/lang/String;ZZZZLjava/nio/charset/Charset;)Ljava/lang/String;

    move-result-object v0

    .line 1599
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 1600
    if-gtz v0, :cond_1

    .line 1601
    :cond_0
    return v9

    :cond_1
    const v1, 0xffff

    .line 1600
    if-gt v0, v1, :cond_0

    return v0

    .line 1601
    :catch_0
    move-exception v0

    .line 1603
    return v9
.end method

.method private pop()V
    .locals 3

    .prologue
    .line 1517
    iget-object v0, p0, Lokhttp3/HttpUrl$Builder;->encodedPathSegments:Ljava/util/List;

    iget-object v1, p0, Lokhttp3/HttpUrl$Builder;->encodedPathSegments:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-interface {v0, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 1520
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    .line 1523
    :cond_0
    iget-object v0, p0, Lokhttp3/HttpUrl$Builder;->encodedPathSegments:Ljava/util/List;

    const-string/jumbo v1, ""

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1525
    :goto_0
    return-void

    .line 1520
    :cond_1
    iget-object v0, p0, Lokhttp3/HttpUrl$Builder;->encodedPathSegments:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1521
    iget-object v0, p0, Lokhttp3/HttpUrl$Builder;->encodedPathSegments:Ljava/util/List;

    iget-object v1, p0, Lokhttp3/HttpUrl$Builder;->encodedPathSegments:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    const-string/jumbo v2, ""

    invoke-interface {v0, v1, v2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method private static portColonOffset(Ljava/lang/String;II)I
    .locals 3

    .prologue
    move v0, p1

    .line 1574
    :goto_0
    if-lt v0, p2, :cond_0

    .line 1585
    return p2

    .line 1575
    :cond_0
    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    sparse-switch v1, :sswitch_data_0

    .line 1574
    :cond_1
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1578
    :cond_2
    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v2, 0x5d

    if-eq v1, v2, :cond_1

    .line 1577
    :sswitch_0
    add-int/lit8 v0, v0, 0x1

    if-lt v0, p2, :cond_2

    goto :goto_1

    .line 1582
    :sswitch_1
    return v0

    .line 1575
    :sswitch_data_0
    .sparse-switch
        0x3a -> :sswitch_1
        0x5b -> :sswitch_0
    .end sparse-switch
.end method

.method private push(Ljava/lang/String;IIZZ)V
    .locals 9

    .prologue
    const/4 v5, 0x0

    const-string/jumbo v3, " \"<>^`{}|/\\?#"

    .line 1476
    const/4 v7, 0x1

    const/4 v8, 0x0

    move-object v0, p1

    move v1, p2

    move v2, p3

    move v4, p5

    move v6, v5

    invoke-static/range {v0 .. v8}, Lokhttp3/HttpUrl;->canonicalize(Ljava/lang/String;IILjava/lang/String;ZZZZLjava/nio/charset/Charset;)Ljava/lang/String;

    move-result-object v1

    .line 1478
    invoke-direct {p0, v1}, Lokhttp3/HttpUrl$Builder;->isDot(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1481
    invoke-direct {p0, v1}, Lokhttp3/HttpUrl$Builder;->isDotDot(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 1485
    iget-object v0, p0, Lokhttp3/HttpUrl$Builder;->encodedPathSegments:Ljava/util/List;

    iget-object v2, p0, Lokhttp3/HttpUrl$Builder;->encodedPathSegments:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    .line 1488
    iget-object v0, p0, Lokhttp3/HttpUrl$Builder;->encodedPathSegments:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1490
    :goto_0
    if-nez p4, :cond_3

    .line 1493
    :goto_1
    return-void

    .line 1479
    :cond_0
    return-void

    .line 1482
    :cond_1
    invoke-direct {p0}, Lokhttp3/HttpUrl$Builder;->pop()V

    .line 1483
    return-void

    .line 1486
    :cond_2
    iget-object v0, p0, Lokhttp3/HttpUrl$Builder;->encodedPathSegments:Ljava/util/List;

    iget-object v2, p0, Lokhttp3/HttpUrl$Builder;->encodedPathSegments:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-interface {v0, v2, v1}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 1491
    :cond_3
    iget-object v0, p0, Lokhttp3/HttpUrl$Builder;->encodedPathSegments:Ljava/util/List;

    const-string/jumbo v1, ""

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1
.end method

.method private removeAllCanonicalQueryParameters(Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 1211
    iget-object v0, p0, Lokhttp3/HttpUrl$Builder;->encodedQueryNamesAndValues:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    :cond_0
    add-int/lit8 v0, v0, -0x2

    if-gez v0, :cond_1

    .line 1221
    return-void

    .line 1212
    :cond_1
    iget-object v1, p0, Lokhttp3/HttpUrl$Builder;->encodedQueryNamesAndValues:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1213
    iget-object v1, p0, Lokhttp3/HttpUrl$Builder;->encodedQueryNamesAndValues:Ljava/util/List;

    add-int/lit8 v2, v0, 0x1

    invoke-interface {v1, v2}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 1214
    iget-object v1, p0, Lokhttp3/HttpUrl$Builder;->encodedQueryNamesAndValues:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 1215
    iget-object v1, p0, Lokhttp3/HttpUrl$Builder;->encodedQueryNamesAndValues:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x0

    .line 1216
    iput-object v0, p0, Lokhttp3/HttpUrl$Builder;->encodedQueryNamesAndValues:Ljava/util/List;

    .line 1217
    return-void
.end method

.method private resolvePath(Ljava/lang/String;II)V
    .locals 7

    .prologue
    const/4 v5, 0x1

    const/4 v6, 0x0

    .line 1448
    if-eq p2, p3, :cond_1

    .line 1452
    invoke-virtual {p1, p2}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v1, 0x2f

    .line 1453
    if-ne v0, v1, :cond_2

    .line 1455
    :cond_0
    iget-object v0, p0, Lokhttp3/HttpUrl$Builder;->encodedPathSegments:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 1456
    iget-object v0, p0, Lokhttp3/HttpUrl$Builder;->encodedPathSegments:Ljava/util/List;

    const-string/jumbo v1, ""

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1457
    add-int/lit8 p2, p2, 0x1

    :goto_0
    move v2, p2

    .line 1464
    :goto_1
    if-lt v2, p3, :cond_3

    .line 1471
    return-void

    .line 1450
    :cond_1
    return-void

    :cond_2
    const/16 v1, 0x5c

    .line 1453
    if-eq v0, v1, :cond_0

    .line 1460
    iget-object v0, p0, Lokhttp3/HttpUrl$Builder;->encodedPathSegments:Ljava/util/List;

    iget-object v1, p0, Lokhttp3/HttpUrl$Builder;->encodedPathSegments:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    const-string/jumbo v2, ""

    invoke-interface {v0, v1, v2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_3
    const-string/jumbo v0, "/\\"

    .line 1465
    invoke-static {p1, v2, p3, v0}, Lokhttp3/internal/Util;->delimiterOffset(Ljava/lang/String;IILjava/lang/String;)I

    move-result v3

    .line 1466
    if-lt v3, p3, :cond_4

    move v4, v6

    :goto_2
    move-object v0, p0

    move-object v1, p1

    .line 1467
    invoke-direct/range {v0 .. v5}, Lokhttp3/HttpUrl$Builder;->push(Ljava/lang/String;IIZZ)V

    .line 1469
    if-nez v4, :cond_5

    :goto_3
    move v2, v3

    .line 1470
    goto :goto_1

    :cond_4
    move v4, v5

    .line 1466
    goto :goto_2

    .line 1469
    :cond_5
    add-int/lit8 v3, v3, 0x1

    goto :goto_3
.end method

.method private static schemeDelimiterOffset(Ljava/lang/String;II)I
    .locals 8

    .prologue
    const/16 v7, 0x7a

    const/16 v6, 0x61

    const/16 v5, 0x5a

    const/16 v4, 0x41

    const/4 v3, -0x1

    .line 1532
    sub-int v0, p2, p1

    const/4 v1, 0x2

    if-lt v0, v1, :cond_2

    .line 1534
    invoke-virtual {p0, p1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 1535
    if-ge v0, v6, :cond_3

    :cond_0
    if-ge v0, v4, :cond_4

    :cond_1
    return v3

    .line 1532
    :cond_2
    return v3

    .line 1535
    :cond_3
    if-gt v0, v7, :cond_0

    .line 1537
    :goto_0
    add-int/lit8 v0, p1, 0x1

    :goto_1
    if-lt v0, p2, :cond_5

    .line 1554
    return v3

    .line 1535
    :cond_4
    if-gt v0, v5, :cond_1

    goto :goto_0

    .line 1538
    :cond_5
    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    .line 1540
    if-ge v1, v6, :cond_a

    :cond_6
    if-ge v1, v4, :cond_b

    :cond_7
    const/16 v2, 0x30

    if-ge v1, v2, :cond_c

    :cond_8
    const/16 v2, 0x2b

    if-ne v1, v2, :cond_d

    .line 1537
    :cond_9
    :goto_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 1540
    :cond_a
    if-gt v1, v7, :cond_6

    goto :goto_2

    :cond_b
    if-gt v1, v5, :cond_7

    goto :goto_2

    :cond_c
    const/16 v2, 0x39

    if-gt v1, v2, :cond_8

    goto :goto_2

    :cond_d
    const/16 v2, 0x2d

    if-eq v1, v2, :cond_9

    const/16 v2, 0x2e

    if-eq v1, v2, :cond_9

    const/16 v2, 0x3a

    .line 1547
    if-eq v1, v2, :cond_e

    .line 1550
    return v3

    .line 1548
    :cond_e
    return v0
.end method

.method private static slashCount(Ljava/lang/String;II)I
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 1560
    :goto_0
    if-lt p1, p2, :cond_0

    .line 1569
    :goto_1
    return v0

    .line 1561
    :cond_0
    invoke-virtual {p0, p1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v2, 0x5c

    .line 1562
    if-ne v1, v2, :cond_2

    .line 1563
    :cond_1
    add-int/lit8 v0, v0, 0x1

    .line 1564
    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_2
    const/16 v2, 0x2f

    .line 1562
    if-eq v1, v2, :cond_1

    goto :goto_1
.end method


# virtual methods
.method public addEncodedPathSegment(Ljava/lang/String;)Lokhttp3/HttpUrl$Builder;
    .locals 6

    .prologue
    const/4 v2, 0x0

    .line 1068
    if-eqz p1, :cond_0

    .line 1071
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    const/4 v5, 0x1

    move-object v0, p0

    move-object v1, p1

    move v4, v2

    invoke-direct/range {v0 .. v5}, Lokhttp3/HttpUrl$Builder;->push(Ljava/lang/String;IIZZ)V

    .line 1072
    return-object p0

    .line 1069
    :cond_0
    new-instance v0, Ljava/lang/NullPointerException;

    const-string/jumbo v1, "encodedPathSegment == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public addEncodedPathSegments(Ljava/lang/String;)Lokhttp3/HttpUrl$Builder;
    .locals 2

    .prologue
    .line 1081
    if-eqz p1, :cond_0

    .line 1084
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lokhttp3/HttpUrl$Builder;->addPathSegments(Ljava/lang/String;Z)Lokhttp3/HttpUrl$Builder;

    move-result-object v0

    return-object v0

    .line 1082
    :cond_0
    new-instance v0, Ljava/lang/NullPointerException;

    const-string/jumbo v1, "encodedPathSegments == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public addEncodedQueryParameter(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/HttpUrl$Builder;
    .locals 8
    .param p2    # Ljava/lang/String;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    const/4 v3, 0x0

    const/4 v6, 0x0

    const/4 v2, 0x1

    .line 1171
    if-eqz p1, :cond_0

    .line 1172
    iget-object v0, p0, Lokhttp3/HttpUrl$Builder;->encodedQueryNamesAndValues:Ljava/util/List;

    if-eqz v0, :cond_1

    .line 1173
    :goto_0
    iget-object v7, p0, Lokhttp3/HttpUrl$Builder;->encodedQueryNamesAndValues:Ljava/util/List;

    const-string/jumbo v1, " \"\'<>#&="

    move-object v0, p1

    move v4, v2

    move v5, v2

    .line 1174
    invoke-static/range {v0 .. v5}, Lokhttp3/HttpUrl;->canonicalize(Ljava/lang/String;Ljava/lang/String;ZZZZ)Ljava/lang/String;

    move-result-object v0

    .line 1173
    invoke-interface {v7, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1175
    iget-object v7, p0, Lokhttp3/HttpUrl$Builder;->encodedQueryNamesAndValues:Ljava/util/List;

    if-nez p2, :cond_2

    move-object v0, v6

    :goto_1
    invoke-interface {v7, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1178
    return-object p0

    .line 1171
    :cond_0
    new-instance v0, Ljava/lang/NullPointerException;

    const-string/jumbo v1, "encodedName == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1172
    :cond_1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lokhttp3/HttpUrl$Builder;->encodedQueryNamesAndValues:Ljava/util/List;

    goto :goto_0

    :cond_2
    const-string/jumbo v1, " \"\'<>#&="

    move-object v0, p2

    move v4, v2

    move v5, v2

    .line 1176
    invoke-static/range {v0 .. v5}, Lokhttp3/HttpUrl;->canonicalize(Ljava/lang/String;Ljava/lang/String;ZZZZ)Ljava/lang/String;

    move-result-object v0

    goto :goto_1
.end method

.method public addPathSegment(Ljava/lang/String;)Lokhttp3/HttpUrl$Builder;
    .locals 6

    .prologue
    const/4 v2, 0x0

    .line 1053
    if-eqz p1, :cond_0

    .line 1054
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    move-object v0, p0

    move-object v1, p1

    move v4, v2

    move v5, v2

    invoke-direct/range {v0 .. v5}, Lokhttp3/HttpUrl$Builder;->push(Ljava/lang/String;IIZZ)V

    .line 1055
    return-object p0

    .line 1053
    :cond_0
    new-instance v0, Ljava/lang/NullPointerException;

    const-string/jumbo v1, "pathSegment == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public addPathSegments(Ljava/lang/String;)Lokhttp3/HttpUrl$Builder;
    .locals 2

    .prologue
    .line 1063
    if-eqz p1, :cond_0

    .line 1064
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lokhttp3/HttpUrl$Builder;->addPathSegments(Ljava/lang/String;Z)Lokhttp3/HttpUrl$Builder;

    move-result-object v0

    return-object v0

    .line 1063
    :cond_0
    new-instance v0, Ljava/lang/NullPointerException;

    const-string/jumbo v1, "pathSegments == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public addQueryParameter(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/HttpUrl$Builder;
    .locals 8
    .param p2    # Ljava/lang/String;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    const/4 v6, 0x0

    const/4 v4, 0x1

    const/4 v2, 0x0

    .line 1159
    if-eqz p1, :cond_0

    .line 1160
    iget-object v0, p0, Lokhttp3/HttpUrl$Builder;->encodedQueryNamesAndValues:Ljava/util/List;

    if-eqz v0, :cond_1

    .line 1161
    :goto_0
    iget-object v7, p0, Lokhttp3/HttpUrl$Builder;->encodedQueryNamesAndValues:Ljava/util/List;

    const-string/jumbo v1, " !\"#$&\'(),/:;<=>?@[]\\^`{|}~"

    move-object v0, p1

    move v3, v2

    move v5, v4

    .line 1162
    invoke-static/range {v0 .. v5}, Lokhttp3/HttpUrl;->canonicalize(Ljava/lang/String;Ljava/lang/String;ZZZZ)Ljava/lang/String;

    move-result-object v0

    .line 1161
    invoke-interface {v7, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1163
    iget-object v7, p0, Lokhttp3/HttpUrl$Builder;->encodedQueryNamesAndValues:Ljava/util/List;

    if-nez p2, :cond_2

    move-object v0, v6

    :goto_1
    invoke-interface {v7, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1166
    return-object p0

    .line 1159
    :cond_0
    new-instance v0, Ljava/lang/NullPointerException;

    const-string/jumbo v1, "name == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1160
    :cond_1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lokhttp3/HttpUrl$Builder;->encodedQueryNamesAndValues:Ljava/util/List;

    goto :goto_0

    :cond_2
    const-string/jumbo v1, " !\"#$&\'(),/:;<=>?@[]\\^`{|}~"

    move-object v0, p2

    move v3, v2

    move v5, v4

    .line 1164
    invoke-static/range {v0 .. v5}, Lokhttp3/HttpUrl;->canonicalize(Ljava/lang/String;Ljava/lang/String;ZZZZ)Ljava/lang/String;

    move-result-object v0

    goto :goto_1
.end method

.method public build()Lokhttp3/HttpUrl;
    .locals 2

    .prologue
    .line 1264
    iget-object v0, p0, Lokhttp3/HttpUrl$Builder;->scheme:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 1265
    iget-object v0, p0, Lokhttp3/HttpUrl$Builder;->host:Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 1266
    new-instance v0, Lokhttp3/HttpUrl;

    invoke-direct {v0, p0}, Lokhttp3/HttpUrl;-><init>(Lokhttp3/HttpUrl$Builder;)V

    return-object v0

    .line 1264
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "scheme == null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1265
    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "host == null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method effectivePort()I
    .locals 2

    .prologue
    .line 1049
    iget v0, p0, Lokhttp3/HttpUrl$Builder;->port:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lokhttp3/HttpUrl$Builder;->scheme:Ljava/lang/String;

    invoke-static {v0}, Lokhttp3/HttpUrl;->defaultPort(Ljava/lang/String;)I

    move-result v0

    :goto_0
    return v0

    :cond_0
    iget v0, p0, Lokhttp3/HttpUrl$Builder;->port:I

    goto :goto_0
.end method

.method public encodedFragment(Ljava/lang/String;)Lokhttp3/HttpUrl$Builder;
    .locals 6
    .param p1    # Ljava/lang/String;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    const/4 v0, 0x0

    const/4 v3, 0x0

    .line 1231
    if-nez p1, :cond_0

    .line 1233
    :goto_0
    iput-object v0, p0, Lokhttp3/HttpUrl$Builder;->encodedFragment:Ljava/lang/String;

    .line 1234
    return-object p0

    :cond_0
    const-string/jumbo v1, ""

    .line 1232
    const/4 v2, 0x1

    move-object v0, p1

    move v4, v3

    move v5, v3

    invoke-static/range {v0 .. v5}, Lokhttp3/HttpUrl;->canonicalize(Ljava/lang/String;Ljava/lang/String;ZZZZ)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public encodedPassword(Ljava/lang/String;)Lokhttp3/HttpUrl$Builder;
    .locals 6

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 1024
    if-eqz p1, :cond_0

    const-string/jumbo v1, " \"\':;<=>@[]^`{}|/\\?#"

    move-object v0, p1

    move v4, v3

    move v5, v2

    .line 1025
    invoke-static/range {v0 .. v5}, Lokhttp3/HttpUrl;->canonicalize(Ljava/lang/String;Ljava/lang/String;ZZZZ)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lokhttp3/HttpUrl$Builder;->encodedPassword:Ljava/lang/String;

    .line 1027
    return-object p0

    .line 1024
    :cond_0
    new-instance v0, Ljava/lang/NullPointerException;

    const-string/jumbo v1, "encodedPassword == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public encodedPath(Ljava/lang/String;)Lokhttp3/HttpUrl$Builder;
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 1133
    if-eqz p1, :cond_0

    const-string/jumbo v0, "/"

    .line 1134
    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1137
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    invoke-direct {p0, p1, v1, v0}, Lokhttp3/HttpUrl$Builder;->resolvePath(Ljava/lang/String;II)V

    .line 1138
    return-object p0

    .line 1133
    :cond_0
    new-instance v0, Ljava/lang/NullPointerException;

    const-string/jumbo v1, "encodedPath == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1135
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "unexpected encodedPath: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public encodedQuery(Ljava/lang/String;)Lokhttp3/HttpUrl$Builder;
    .locals 6
    .param p1    # Ljava/lang/String;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    const/4 v0, 0x0

    const/4 v2, 0x1

    .line 1150
    if-nez p1, :cond_0

    .line 1153
    :goto_0
    iput-object v0, p0, Lokhttp3/HttpUrl$Builder;->encodedQueryNamesAndValues:Ljava/util/List;

    .line 1154
    return-object p0

    :cond_0
    const-string/jumbo v1, " \"\'<>#"

    .line 1152
    const/4 v3, 0x0

    move-object v0, p1

    move v4, v2

    move v5, v2

    invoke-static/range {v0 .. v5}, Lokhttp3/HttpUrl;->canonicalize(Ljava/lang/String;Ljava/lang/String;ZZZZ)Ljava/lang/String;

    move-result-object v0

    .line 1151
    invoke-static {v0}, Lokhttp3/HttpUrl;->queryStringToNamesAndValues(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    goto :goto_0
.end method

.method public encodedUsername(Ljava/lang/String;)Lokhttp3/HttpUrl$Builder;
    .locals 6

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 1011
    if-eqz p1, :cond_0

    const-string/jumbo v1, " \"\':;<=>@[]^`{}|/\\?#"

    move-object v0, p1

    move v4, v3

    move v5, v2

    .line 1012
    invoke-static/range {v0 .. v5}, Lokhttp3/HttpUrl;->canonicalize(Ljava/lang/String;Ljava/lang/String;ZZZZ)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lokhttp3/HttpUrl$Builder;->encodedUsername:Ljava/lang/String;

    .line 1014
    return-object p0

    .line 1011
    :cond_0
    new-instance v0, Ljava/lang/NullPointerException;

    const-string/jumbo v1, "encodedUsername == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public fragment(Ljava/lang/String;)Lokhttp3/HttpUrl$Builder;
    .locals 6
    .param p1    # Ljava/lang/String;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    const/4 v0, 0x0

    const/4 v2, 0x0

    .line 1224
    if-nez p1, :cond_0

    .line 1226
    :goto_0
    iput-object v0, p0, Lokhttp3/HttpUrl$Builder;->encodedFragment:Ljava/lang/String;

    .line 1227
    return-object p0

    :cond_0
    const-string/jumbo v1, ""

    move-object v0, p1

    move v3, v2

    move v4, v2

    move v5, v2

    .line 1225
    invoke-static/range {v0 .. v5}, Lokhttp3/HttpUrl;->canonicalize(Ljava/lang/String;Ljava/lang/String;ZZZZ)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public host(Ljava/lang/String;)Lokhttp3/HttpUrl$Builder;
    .locals 3

    .prologue
    .line 1035
    if-eqz p1, :cond_0

    const/4 v0, 0x0

    .line 1036
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-static {p1, v0, v1}, Lokhttp3/HttpUrl$Builder;->canonicalizeHost(Ljava/lang/String;II)Ljava/lang/String;

    move-result-object v0

    .line 1037
    if-eqz v0, :cond_1

    .line 1038
    iput-object v0, p0, Lokhttp3/HttpUrl$Builder;->host:Ljava/lang/String;

    .line 1039
    return-object p0

    .line 1035
    :cond_0
    new-instance v0, Ljava/lang/NullPointerException;

    const-string/jumbo v1, "host == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1037
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "unexpected host: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method parse(Lokhttp3/HttpUrl;Ljava/lang/String;)Lokhttp3/HttpUrl$Builder$ParseResult;
    .locals 15
    .param p1    # Lokhttp3/HttpUrl;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    const/4 v1, 0x0

    .line 1322
    invoke-virtual/range {p2 .. p2}, Ljava/lang/String;->length()I

    move-result v2

    move-object/from16 v0, p2

    invoke-static {v0, v1, v2}, Lokhttp3/internal/Util;->skipLeadingAsciiWhitespace(Ljava/lang/String;II)I

    move-result v3

    .line 1323
    invoke-virtual/range {p2 .. p2}, Ljava/lang/String;->length()I

    move-result v1

    move-object/from16 v0, p2

    invoke-static {v0, v3, v1}, Lokhttp3/internal/Util;->skipTrailingAsciiWhitespace(Ljava/lang/String;II)I

    move-result v13

    .line 1326
    move-object/from16 v0, p2

    invoke-static {v0, v3, v13}, Lokhttp3/HttpUrl$Builder;->schemeDelimiterOffset(Ljava/lang/String;II)I

    move-result v1

    const/4 v2, -0x1

    .line 1327
    if-ne v1, v2, :cond_0

    .line 1337
    if-nez p1, :cond_4

    .line 1340
    sget-object v1, Lokhttp3/HttpUrl$Builder$ParseResult;->MISSING_SCHEME:Lokhttp3/HttpUrl$Builder$ParseResult;

    return-object v1

    :cond_0
    const-string/jumbo v4, "https:"

    const/4 v5, 0x0

    const/4 v6, 0x6

    .line 1328
    const/4 v2, 0x1

    move-object/from16 v1, p2

    invoke-virtual/range {v1 .. v6}, Ljava/lang/String;->regionMatches(ZILjava/lang/String;II)Z

    move-result v1

    if-nez v1, :cond_1

    const-string/jumbo v4, "http:"

    const/4 v5, 0x0

    const/4 v6, 0x5

    .line 1331
    const/4 v2, 0x1

    move-object/from16 v1, p2

    invoke-virtual/range {v1 .. v6}, Ljava/lang/String;->regionMatches(ZILjava/lang/String;II)Z

    move-result v1

    if-nez v1, :cond_3

    .line 1335
    sget-object v1, Lokhttp3/HttpUrl$Builder$ParseResult;->UNSUPPORTED_SCHEME:Lokhttp3/HttpUrl$Builder$ParseResult;

    return-object v1

    :cond_1
    const-string/jumbo v1, "https"

    .line 1329
    iput-object v1, p0, Lokhttp3/HttpUrl$Builder;->scheme:Ljava/lang/String;

    const-string/jumbo v1, "https:"

    .line 1330
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    add-int/2addr v3, v1

    .line 1344
    :goto_0
    const/4 v2, 0x0

    .line 1345
    const/4 v1, 0x0

    .line 1346
    move-object/from16 v0, p2

    invoke-static {v0, v3, v13}, Lokhttp3/HttpUrl$Builder;->slashCount(Ljava/lang/String;II)I

    move-result v4

    const/4 v5, 0x2

    .line 1347
    if-lt v4, v5, :cond_5

    .line 1357
    :cond_2
    add-int/2addr v3, v4

    move v10, v1

    move v11, v2

    move v2, v3

    :goto_1
    const-string/jumbo v1, "@/\\?#"

    .line 1360
    move-object/from16 v0, p2

    invoke-static {v0, v2, v13, v1}, Lokhttp3/internal/Util;->delimiterOffset(Ljava/lang/String;IILjava/lang/String;)I

    move-result v12

    .line 1361
    if-ne v12, v13, :cond_9

    const/4 v1, -0x1

    .line 1364
    :goto_2
    sparse-switch v1, :sswitch_data_0

    move v1, v10

    move v3, v2

    move v2, v11

    :goto_3
    move v10, v1

    move v11, v2

    move v2, v3

    .line 1410
    goto :goto_1

    :cond_3
    const-string/jumbo v1, "http"

    .line 1332
    iput-object v1, p0, Lokhttp3/HttpUrl$Builder;->scheme:Ljava/lang/String;

    const-string/jumbo v1, "http:"

    .line 1333
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    add-int/2addr v3, v1

    goto :goto_0

    .line 1338
    :cond_4
    move-object/from16 v0, p1

    iget-object v1, v0, Lokhttp3/HttpUrl;->scheme:Ljava/lang/String;

    iput-object v1, p0, Lokhttp3/HttpUrl$Builder;->scheme:Ljava/lang/String;

    goto :goto_0

    .line 1347
    :cond_5
    if-eqz p1, :cond_2

    move-object/from16 v0, p1

    iget-object v5, v0, Lokhttp3/HttpUrl;->scheme:Ljava/lang/String;

    iget-object v6, p0, Lokhttp3/HttpUrl$Builder;->scheme:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 1413
    invoke-virtual/range {p1 .. p1}, Lokhttp3/HttpUrl;->encodedUsername()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lokhttp3/HttpUrl$Builder;->encodedUsername:Ljava/lang/String;

    .line 1414
    invoke-virtual/range {p1 .. p1}, Lokhttp3/HttpUrl;->encodedPassword()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lokhttp3/HttpUrl$Builder;->encodedPassword:Ljava/lang/String;

    .line 1415
    move-object/from16 v0, p1

    iget-object v1, v0, Lokhttp3/HttpUrl;->host:Ljava/lang/String;

    iput-object v1, p0, Lokhttp3/HttpUrl$Builder;->host:Ljava/lang/String;

    .line 1416
    move-object/from16 v0, p1

    iget v1, v0, Lokhttp3/HttpUrl;->port:I

    iput v1, p0, Lokhttp3/HttpUrl$Builder;->port:I

    .line 1417
    iget-object v1, p0, Lokhttp3/HttpUrl$Builder;->encodedPathSegments:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 1418
    iget-object v1, p0, Lokhttp3/HttpUrl$Builder;->encodedPathSegments:Ljava/util/List;

    invoke-virtual/range {p1 .. p1}, Lokhttp3/HttpUrl;->encodedPathSegments()Ljava/util/List;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 1419
    if-ne v3, v13, :cond_10

    .line 1420
    :cond_6
    invoke-virtual/range {p1 .. p1}, Lokhttp3/HttpUrl;->encodedQuery()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lokhttp3/HttpUrl$Builder;->encodedQuery(Ljava/lang/String;)Lokhttp3/HttpUrl$Builder;

    :goto_4
    const-string/jumbo v1, "?#"

    .line 1425
    move-object/from16 v0, p2

    invoke-static {v0, v3, v13, v1}, Lokhttp3/internal/Util;->delimiterOffset(Ljava/lang/String;IILjava/lang/String;)I

    move-result v1

    .line 1426
    move-object/from16 v0, p2

    invoke-direct {p0, v0, v3, v1}, Lokhttp3/HttpUrl$Builder;->resolvePath(Ljava/lang/String;II)V

    .line 1430
    if-lt v1, v13, :cond_11

    :cond_7
    move v3, v1

    .line 1438
    :goto_5
    if-lt v3, v13, :cond_12

    .line 1443
    :cond_8
    :goto_6
    sget-object v1, Lokhttp3/HttpUrl$Builder$ParseResult;->SUCCESS:Lokhttp3/HttpUrl$Builder$ParseResult;

    return-object v1

    .line 1362
    :cond_9
    move-object/from16 v0, p2

    invoke-virtual {v0, v12}, Ljava/lang/String;->charAt(I)C

    move-result v1

    goto :goto_2

    .line 1367
    :sswitch_0
    if-eqz v10, :cond_a

    .line 1384
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lokhttp3/HttpUrl$Builder;->encodedPassword:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v3, "%40"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string/jumbo v4, " \"\':;<=>@[]^`{}|/\\?#"

    const/4 v5, 0x1

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x1

    const/4 v9, 0x0

    move-object/from16 v1, p2

    move v3, v12

    invoke-static/range {v1 .. v9}, Lokhttp3/HttpUrl;->canonicalize(Ljava/lang/String;IILjava/lang/String;ZZZZLjava/nio/charset/Charset;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v14, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lokhttp3/HttpUrl$Builder;->encodedPassword:Ljava/lang/String;

    .line 1388
    :goto_7
    add-int/lit8 v3, v12, 0x1

    move v1, v10

    move v2, v11

    .line 1389
    goto/16 :goto_3

    .line 1368
    :cond_a
    const/16 v1, 0x3a

    move-object/from16 v0, p2

    invoke-static {v0, v2, v12, v1}, Lokhttp3/internal/Util;->delimiterOffset(Ljava/lang/String;IIC)I

    move-result v3

    const-string/jumbo v4, " \"\':;<=>@[]^`{}|/\\?#"

    .line 1370
    const/4 v5, 0x1

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x1

    const/4 v9, 0x0

    move-object/from16 v1, p2

    invoke-static/range {v1 .. v9}, Lokhttp3/HttpUrl;->canonicalize(Ljava/lang/String;IILjava/lang/String;ZZZZLjava/nio/charset/Charset;)Ljava/lang/String;

    move-result-object v1

    .line 1373
    if-nez v11, :cond_b

    .line 1375
    :goto_8
    iput-object v1, p0, Lokhttp3/HttpUrl$Builder;->encodedUsername:Ljava/lang/String;

    .line 1376
    if-ne v3, v12, :cond_c

    .line 1382
    :goto_9
    const/4 v11, 0x1

    goto :goto_7

    .line 1374
    :cond_b
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lokhttp3/HttpUrl$Builder;->encodedUsername:Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v4, "%40"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_8

    .line 1377
    :cond_c
    const/4 v10, 0x1

    .line 1378
    add-int/lit8 v2, v3, 0x1

    const-string/jumbo v4, " \"\':;<=>@[]^`{}|/\\?#"

    const/4 v5, 0x1

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x1

    const/4 v9, 0x0

    move-object/from16 v1, p2

    move v3, v12

    invoke-static/range {v1 .. v9}, Lokhttp3/HttpUrl;->canonicalize(Ljava/lang/String;IILjava/lang/String;ZZZZLjava/nio/charset/Charset;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lokhttp3/HttpUrl$Builder;->encodedPassword:Ljava/lang/String;

    goto :goto_9

    .line 1397
    :sswitch_1
    move-object/from16 v0, p2

    invoke-static {v0, v2, v12}, Lokhttp3/HttpUrl$Builder;->portColonOffset(Ljava/lang/String;II)I

    move-result v1

    .line 1398
    add-int/lit8 v3, v1, 0x1

    if-lt v3, v12, :cond_e

    .line 1403
    move-object/from16 v0, p2

    invoke-static {v0, v2, v1}, Lokhttp3/HttpUrl$Builder;->canonicalizeHost(Ljava/lang/String;II)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lokhttp3/HttpUrl$Builder;->host:Ljava/lang/String;

    .line 1404
    iget-object v1, p0, Lokhttp3/HttpUrl$Builder;->scheme:Ljava/lang/String;

    invoke-static {v1}, Lokhttp3/HttpUrl;->defaultPort(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lokhttp3/HttpUrl$Builder;->port:I

    .line 1406
    :cond_d
    iget-object v1, p0, Lokhttp3/HttpUrl$Builder;->host:Ljava/lang/String;

    if-eqz v1, :cond_f

    move v3, v12

    .line 1408
    goto/16 :goto_4

    .line 1399
    :cond_e
    move-object/from16 v0, p2

    invoke-static {v0, v2, v1}, Lokhttp3/HttpUrl$Builder;->canonicalizeHost(Ljava/lang/String;II)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lokhttp3/HttpUrl$Builder;->host:Ljava/lang/String;

    .line 1400
    add-int/lit8 v1, v1, 0x1

    move-object/from16 v0, p2

    invoke-static {v0, v1, v12}, Lokhttp3/HttpUrl$Builder;->parsePort(Ljava/lang/String;II)I

    move-result v1

    iput v1, p0, Lokhttp3/HttpUrl$Builder;->port:I

    .line 1401
    iget v1, p0, Lokhttp3/HttpUrl$Builder;->port:I

    const/4 v2, -0x1

    if-ne v1, v2, :cond_d

    sget-object v1, Lokhttp3/HttpUrl$Builder$ParseResult;->INVALID_PORT:Lokhttp3/HttpUrl$Builder$ParseResult;

    return-object v1

    .line 1406
    :cond_f
    sget-object v1, Lokhttp3/HttpUrl$Builder$ParseResult;->INVALID_HOST:Lokhttp3/HttpUrl$Builder$ParseResult;

    return-object v1

    .line 1419
    :cond_10
    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v2, 0x23

    if-eq v1, v2, :cond_6

    goto/16 :goto_4

    .line 1430
    :cond_11
    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v2

    const/16 v3, 0x3f

    if-ne v2, v3, :cond_7

    .line 1431
    const/16 v2, 0x23

    move-object/from16 v0, p2

    invoke-static {v0, v1, v13, v2}, Lokhttp3/internal/Util;->delimiterOffset(Ljava/lang/String;IIC)I

    move-result v3

    .line 1432
    add-int/lit8 v2, v1, 0x1

    const-string/jumbo v4, " \"\'<>#"

    const/4 v5, 0x1

    const/4 v6, 0x0

    const/4 v7, 0x1

    const/4 v8, 0x1

    const/4 v9, 0x0

    move-object/from16 v1, p2

    invoke-static/range {v1 .. v9}, Lokhttp3/HttpUrl;->canonicalize(Ljava/lang/String;IILjava/lang/String;ZZZZLjava/nio/charset/Charset;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lokhttp3/HttpUrl;->queryStringToNamesAndValues(Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Lokhttp3/HttpUrl$Builder;->encodedQueryNamesAndValues:Ljava/util/List;

    goto/16 :goto_5

    .line 1438
    :cond_12
    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v2, 0x23

    if-ne v1, v2, :cond_8

    .line 1439
    add-int/lit8 v2, v3, 0x1

    const-string/jumbo v4, ""

    const/4 v5, 0x1

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object/from16 v1, p2

    move v3, v13

    invoke-static/range {v1 .. v9}, Lokhttp3/HttpUrl;->canonicalize(Ljava/lang/String;IILjava/lang/String;ZZZZLjava/nio/charset/Charset;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lokhttp3/HttpUrl$Builder;->encodedFragment:Ljava/lang/String;

    goto/16 :goto_6

    .line 1364
    nop

    :sswitch_data_0
    .sparse-switch
        -0x1 -> :sswitch_1
        0x23 -> :sswitch_1
        0x2f -> :sswitch_1
        0x3f -> :sswitch_1
        0x40 -> :sswitch_0
        0x5c -> :sswitch_1
    .end sparse-switch
.end method

.method public password(Ljava/lang/String;)Lokhttp3/HttpUrl$Builder;
    .locals 6

    .prologue
    const/4 v2, 0x0

    .line 1018
    if-eqz p1, :cond_0

    const-string/jumbo v1, " \"\':;<=>@[]^`{}|/\\?#"

    .line 1019
    const/4 v5, 0x1

    move-object v0, p1

    move v3, v2

    move v4, v2

    invoke-static/range {v0 .. v5}, Lokhttp3/HttpUrl;->canonicalize(Ljava/lang/String;Ljava/lang/String;ZZZZ)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lokhttp3/HttpUrl$Builder;->encodedPassword:Ljava/lang/String;

    .line 1020
    return-object p0

    .line 1018
    :cond_0
    new-instance v0, Ljava/lang/NullPointerException;

    const-string/jumbo v1, "password == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public port(I)Lokhttp3/HttpUrl$Builder;
    .locals 3

    .prologue
    .line 1043
    if-gtz p1, :cond_1

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "unexpected port: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    const v0, 0xffff

    if-gt p1, v0, :cond_0

    .line 1044
    iput p1, p0, Lokhttp3/HttpUrl$Builder;->port:I

    .line 1045
    return-object p0
.end method

.method public query(Ljava/lang/String;)Lokhttp3/HttpUrl$Builder;
    .locals 6
    .param p1    # Ljava/lang/String;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    const/4 v0, 0x0

    const/4 v4, 0x1

    const/4 v2, 0x0

    .line 1142
    if-nez p1, :cond_0

    .line 1145
    :goto_0
    iput-object v0, p0, Lokhttp3/HttpUrl$Builder;->encodedQueryNamesAndValues:Ljava/util/List;

    .line 1146
    return-object p0

    :cond_0
    const-string/jumbo v1, " \"\'<>#"

    move-object v0, p1

    move v3, v2

    move v5, v4

    .line 1143
    invoke-static/range {v0 .. v5}, Lokhttp3/HttpUrl;->canonicalize(Ljava/lang/String;Ljava/lang/String;ZZZZ)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lokhttp3/HttpUrl;->queryStringToNamesAndValues(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    goto :goto_0
.end method

.method reencodeForUri()Lokhttp3/HttpUrl$Builder;
    .locals 11

    .prologue
    const/4 v4, 0x0

    const/4 v2, 0x1

    .line 1242
    iget-object v0, p0, Lokhttp3/HttpUrl$Builder;->encodedPathSegments:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v7

    move v6, v4

    :goto_0
    if-lt v6, v7, :cond_1

    .line 1247
    iget-object v0, p0, Lokhttp3/HttpUrl$Builder;->encodedQueryNamesAndValues:Ljava/util/List;

    if-nez v0, :cond_2

    .line 1256
    :cond_0
    iget-object v0, p0, Lokhttp3/HttpUrl$Builder;->encodedFragment:Ljava/lang/String;

    if-nez v0, :cond_4

    .line 1260
    :goto_1
    return-object p0

    .line 1243
    :cond_1
    iget-object v0, p0, Lokhttp3/HttpUrl$Builder;->encodedPathSegments:Ljava/util/List;

    invoke-interface {v0, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 1244
    iget-object v8, p0, Lokhttp3/HttpUrl$Builder;->encodedPathSegments:Ljava/util/List;

    const-string/jumbo v1, "[]"

    move v3, v2

    move v5, v2

    .line 1245
    invoke-static/range {v0 .. v5}, Lokhttp3/HttpUrl;->canonicalize(Ljava/lang/String;Ljava/lang/String;ZZZZ)Ljava/lang/String;

    move-result-object v0

    .line 1244
    invoke-interface {v8, v6, v0}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 1242
    add-int/lit8 v0, v6, 0x1

    move v6, v0

    goto :goto_0

    .line 1248
    :cond_2
    iget-object v0, p0, Lokhttp3/HttpUrl$Builder;->encodedQueryNamesAndValues:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    move v0, v4

    :goto_2
    if-ge v0, v1, :cond_0

    .line 1249
    iget-object v3, p0, Lokhttp3/HttpUrl$Builder;->encodedQueryNamesAndValues:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 1250
    if-nez v5, :cond_3

    .line 1248
    :goto_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 1251
    :cond_3
    iget-object v3, p0, Lokhttp3/HttpUrl$Builder;->encodedQueryNamesAndValues:Ljava/util/List;

    const-string/jumbo v6, "\\^`{|}"

    move v7, v2

    move v8, v2

    move v9, v2

    move v10, v2

    .line 1252
    invoke-static/range {v5 .. v10}, Lokhttp3/HttpUrl;->canonicalize(Ljava/lang/String;Ljava/lang/String;ZZZZ)Ljava/lang/String;

    move-result-object v5

    .line 1251
    invoke-interface {v3, v0, v5}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    goto :goto_3

    .line 1257
    :cond_4
    iget-object v0, p0, Lokhttp3/HttpUrl$Builder;->encodedFragment:Ljava/lang/String;

    const-string/jumbo v1, " \"#<>\\^`{|}"

    move v3, v2

    move v5, v4

    invoke-static/range {v0 .. v5}, Lokhttp3/HttpUrl;->canonicalize(Ljava/lang/String;Ljava/lang/String;ZZZZ)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lokhttp3/HttpUrl$Builder;->encodedFragment:Ljava/lang/String;

    goto :goto_1
.end method

.method public removeAllEncodedQueryParameters(Ljava/lang/String;)Lokhttp3/HttpUrl$Builder;
    .locals 6

    .prologue
    const/4 v2, 0x1

    .line 1203
    if-eqz p1, :cond_0

    .line 1204
    iget-object v0, p0, Lokhttp3/HttpUrl$Builder;->encodedQueryNamesAndValues:Ljava/util/List;

    if-eqz v0, :cond_1

    const-string/jumbo v1, " \"\'<>#&="

    .line 1206
    const/4 v3, 0x0

    move-object v0, p1

    move v4, v2

    move v5, v2

    invoke-static/range {v0 .. v5}, Lokhttp3/HttpUrl;->canonicalize(Ljava/lang/String;Ljava/lang/String;ZZZZ)Ljava/lang/String;

    move-result-object v0

    .line 1205
    invoke-direct {p0, v0}, Lokhttp3/HttpUrl$Builder;->removeAllCanonicalQueryParameters(Ljava/lang/String;)V

    .line 1207
    return-object p0

    .line 1203
    :cond_0
    new-instance v0, Ljava/lang/NullPointerException;

    const-string/jumbo v1, "encodedName == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1204
    :cond_1
    return-object p0
.end method

.method public removeAllQueryParameters(Ljava/lang/String;)Lokhttp3/HttpUrl$Builder;
    .locals 6

    .prologue
    const/4 v4, 0x1

    const/4 v2, 0x0

    .line 1194
    if-eqz p1, :cond_0

    .line 1195
    iget-object v0, p0, Lokhttp3/HttpUrl$Builder;->encodedQueryNamesAndValues:Ljava/util/List;

    if-eqz v0, :cond_1

    const-string/jumbo v1, " !\"#$&\'(),/:;<=>?@[]\\^`{|}~"

    move-object v0, p1

    move v3, v2

    move v5, v4

    .line 1196
    invoke-static/range {v0 .. v5}, Lokhttp3/HttpUrl;->canonicalize(Ljava/lang/String;Ljava/lang/String;ZZZZ)Ljava/lang/String;

    move-result-object v0

    .line 1198
    invoke-direct {p0, v0}, Lokhttp3/HttpUrl$Builder;->removeAllCanonicalQueryParameters(Ljava/lang/String;)V

    .line 1199
    return-object p0

    .line 1194
    :cond_0
    new-instance v0, Ljava/lang/NullPointerException;

    const-string/jumbo v1, "name == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1195
    :cond_1
    return-object p0
.end method

.method public removePathSegment(I)Lokhttp3/HttpUrl$Builder;
    .locals 2

    .prologue
    .line 1125
    iget-object v0, p0, Lokhttp3/HttpUrl$Builder;->encodedPathSegments:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 1126
    iget-object v0, p0, Lokhttp3/HttpUrl$Builder;->encodedPathSegments:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1129
    :goto_0
    return-object p0

    .line 1127
    :cond_0
    iget-object v0, p0, Lokhttp3/HttpUrl$Builder;->encodedPathSegments:Ljava/util/List;

    const-string/jumbo v1, ""

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public scheme(Ljava/lang/String;)Lokhttp3/HttpUrl$Builder;
    .locals 3

    .prologue
    .line 992
    if-eqz p1, :cond_0

    const-string/jumbo v0, "http"

    .line 994
    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string/jumbo v0, "https"

    .line 996
    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 999
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "unexpected scheme: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 993
    :cond_0
    new-instance v0, Ljava/lang/NullPointerException;

    const-string/jumbo v1, "scheme == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    const-string/jumbo v0, "http"

    .line 995
    iput-object v0, p0, Lokhttp3/HttpUrl$Builder;->scheme:Ljava/lang/String;

    .line 1001
    :goto_0
    return-object p0

    :cond_2
    const-string/jumbo v0, "https"

    .line 997
    iput-object v0, p0, Lokhttp3/HttpUrl$Builder;->scheme:Ljava/lang/String;

    goto :goto_0
.end method

.method public setEncodedPathSegment(ILjava/lang/String;)Lokhttp3/HttpUrl$Builder;
    .locals 9

    .prologue
    const/4 v8, 0x0

    const/4 v4, 0x1

    const/4 v1, 0x0

    .line 1111
    if-eqz p2, :cond_1

    .line 1115
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v2

    const-string/jumbo v3, " \"<>^`{}|/\\?#"

    move-object v0, p2

    move v5, v1

    move v6, v1

    move v7, v4

    .line 1114
    invoke-static/range {v0 .. v8}, Lokhttp3/HttpUrl;->canonicalize(Ljava/lang/String;IILjava/lang/String;ZZZZLjava/nio/charset/Charset;)Ljava/lang/String;

    move-result-object v0

    .line 1117
    iget-object v1, p0, Lokhttp3/HttpUrl$Builder;->encodedPathSegments:Ljava/util/List;

    invoke-interface {v1, p1, v0}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 1118
    invoke-direct {p0, v0}, Lokhttp3/HttpUrl$Builder;->isDot(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1119
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "unexpected path segment: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1112
    :cond_1
    new-instance v0, Ljava/lang/NullPointerException;

    const-string/jumbo v1, "encodedPathSegment == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1118
    :cond_2
    invoke-direct {p0, v0}, Lokhttp3/HttpUrl$Builder;->isDotDot(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1121
    return-object p0
.end method

.method public setEncodedQueryParameter(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/HttpUrl$Builder;
    .locals 0
    .param p2    # Ljava/lang/String;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 1188
    invoke-virtual {p0, p1}, Lokhttp3/HttpUrl$Builder;->removeAllEncodedQueryParameters(Ljava/lang/String;)Lokhttp3/HttpUrl$Builder;

    .line 1189
    invoke-virtual {p0, p1, p2}, Lokhttp3/HttpUrl$Builder;->addEncodedQueryParameter(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/HttpUrl$Builder;

    .line 1190
    return-object p0
.end method

.method public setPathSegment(ILjava/lang/String;)Lokhttp3/HttpUrl$Builder;
    .locals 9

    .prologue
    const/4 v8, 0x0

    const/4 v1, 0x0

    .line 1099
    if-eqz p2, :cond_1

    .line 1101
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v2

    const-string/jumbo v3, " \"<>^`{}|/\\?#"

    .line 1100
    const/4 v7, 0x1

    move-object v0, p2

    move v4, v1

    move v5, v1

    move v6, v1

    invoke-static/range {v0 .. v8}, Lokhttp3/HttpUrl;->canonicalize(Ljava/lang/String;IILjava/lang/String;ZZZZLjava/nio/charset/Charset;)Ljava/lang/String;

    move-result-object v0

    .line 1103
    invoke-direct {p0, v0}, Lokhttp3/HttpUrl$Builder;->isDot(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1104
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "unexpected path segment: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1099
    :cond_1
    new-instance v0, Ljava/lang/NullPointerException;

    const-string/jumbo v1, "pathSegment == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1103
    :cond_2
    invoke-direct {p0, v0}, Lokhttp3/HttpUrl$Builder;->isDotDot(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 1106
    iget-object v1, p0, Lokhttp3/HttpUrl$Builder;->encodedPathSegments:Ljava/util/List;

    invoke-interface {v1, p1, v0}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 1107
    return-object p0
.end method

.method public setQueryParameter(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/HttpUrl$Builder;
    .locals 0
    .param p2    # Ljava/lang/String;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 1182
    invoke-virtual {p0, p1}, Lokhttp3/HttpUrl$Builder;->removeAllQueryParameters(Ljava/lang/String;)Lokhttp3/HttpUrl$Builder;

    .line 1183
    invoke-virtual {p0, p1, p2}, Lokhttp3/HttpUrl$Builder;->addQueryParameter(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/HttpUrl$Builder;

    .line 1184
    return-object p0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .prologue
    const/16 v3, 0x3a

    .line 1270
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 1271
    iget-object v1, p0, Lokhttp3/HttpUrl$Builder;->scheme:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v1, "://"

    .line 1272
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1274
    iget-object v1, p0, Lokhttp3/HttpUrl$Builder;->encodedUsername:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1

    .line 1275
    :cond_0
    iget-object v1, p0, Lokhttp3/HttpUrl$Builder;->encodedUsername:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1276
    iget-object v1, p0, Lokhttp3/HttpUrl$Builder;->encodedPassword:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1280
    :goto_0
    const/16 v1, 0x40

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1283
    :goto_1
    iget-object v1, p0, Lokhttp3/HttpUrl$Builder;->host:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    const/4 v2, -0x1

    if-ne v1, v2, :cond_3

    .line 1289
    iget-object v1, p0, Lokhttp3/HttpUrl$Builder;->host:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1292
    :goto_2
    invoke-virtual {p0}, Lokhttp3/HttpUrl$Builder;->effectivePort()I

    move-result v1

    .line 1293
    iget-object v2, p0, Lokhttp3/HttpUrl$Builder;->scheme:Ljava/lang/String;

    invoke-static {v2}, Lokhttp3/HttpUrl;->defaultPort(Ljava/lang/String;)I

    move-result v2

    if-ne v1, v2, :cond_4

    .line 1298
    :goto_3
    iget-object v1, p0, Lokhttp3/HttpUrl$Builder;->encodedPathSegments:Ljava/util/List;

    invoke-static {v0, v1}, Lokhttp3/HttpUrl;->pathSegmentsToString(Ljava/lang/StringBuilder;Ljava/util/List;)V

    .line 1300
    iget-object v1, p0, Lokhttp3/HttpUrl$Builder;->encodedQueryNamesAndValues:Ljava/util/List;

    if-nez v1, :cond_5

    .line 1305
    :goto_4
    iget-object v1, p0, Lokhttp3/HttpUrl$Builder;->encodedFragment:Ljava/lang/String;

    if-nez v1, :cond_6

    .line 1310
    :goto_5
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 1274
    :cond_1
    iget-object v1, p0, Lokhttp3/HttpUrl$Builder;->encodedPassword:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_1

    .line 1277
    :cond_2
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1278
    iget-object v1, p0, Lokhttp3/HttpUrl$Builder;->encodedPassword:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 1285
    :cond_3
    const/16 v1, 0x5b

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1286
    iget-object v1, p0, Lokhttp3/HttpUrl$Builder;->host:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1287
    const/16 v1, 0x5d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_2

    .line 1294
    :cond_4
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1295
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    goto :goto_3

    .line 1301
    :cond_5
    const/16 v1, 0x3f

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1302
    iget-object v1, p0, Lokhttp3/HttpUrl$Builder;->encodedQueryNamesAndValues:Ljava/util/List;

    invoke-static {v0, v1}, Lokhttp3/HttpUrl;->namesAndValuesToQueryString(Ljava/lang/StringBuilder;Ljava/util/List;)V

    goto :goto_4

    .line 1306
    :cond_6
    const/16 v1, 0x23

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1307
    iget-object v1, p0, Lokhttp3/HttpUrl$Builder;->encodedFragment:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_5
.end method

.method public username(Ljava/lang/String;)Lokhttp3/HttpUrl$Builder;
    .locals 6

    .prologue
    const/4 v2, 0x0

    .line 1005
    if-eqz p1, :cond_0

    const-string/jumbo v1, " \"\':;<=>@[]^`{}|/\\?#"

    .line 1006
    const/4 v5, 0x1

    move-object v0, p1

    move v3, v2

    move v4, v2

    invoke-static/range {v0 .. v5}, Lokhttp3/HttpUrl;->canonicalize(Ljava/lang/String;Ljava/lang/String;ZZZZ)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lokhttp3/HttpUrl$Builder;->encodedUsername:Ljava/lang/String;

    .line 1007
    return-object p0

    .line 1005
    :cond_0
    new-instance v0, Ljava/lang/NullPointerException;

    const-string/jumbo v1, "username == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
