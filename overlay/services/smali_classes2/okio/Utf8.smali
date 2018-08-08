.class public final Lokio/Utf8;
.super Ljava/lang/Object;
.source "Utf8.java"


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 66
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 67
    return-void
.end method

.method public static size(Ljava/lang/String;)J
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 74
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    invoke-static {p0, v0, v1}, Lokio/Utf8;->size(Ljava/lang/String;II)J

    move-result-wide v0

    return-wide v0
.end method

.method public static size(Ljava/lang/String;II)J
    .locals 10

    .prologue
    const-wide/16 v8, 0x1

    const v6, 0xdfff

    const/4 v1, 0x0

    .line 82
    if-eqz p0, :cond_0

    .line 83
    if-ltz p1, :cond_1

    .line 84
    if-lt p2, p1, :cond_2

    .line 87
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-gt p2, v0, :cond_3

    const-wide/16 v2, 0x0

    .line 93
    :goto_0
    if-lt p1, p2, :cond_4

    .line 126
    return-wide v2

    .line 82
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "string == null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 83
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "beginIndex < 0: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 85
    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "endIndex < beginIndex: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " < "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 88
    :cond_3
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "endIndex > string.length: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " > "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 89
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 94
    :cond_4
    invoke-virtual {p0, p1}, Ljava/lang/String;->charAt(I)C

    move-result v4

    const/16 v0, 0x80

    .line 96
    if-lt v4, v0, :cond_6

    const/16 v0, 0x800

    .line 101
    if-lt v4, v0, :cond_7

    const v0, 0xd800

    .line 106
    if-ge v4, v0, :cond_8

    :cond_5
    const-wide/16 v4, 0x3

    .line 108
    add-long/2addr v2, v4

    .line 109
    add-int/lit8 v0, p1, 0x1

    :goto_1
    move p1, v0

    .line 124
    goto/16 :goto_0

    .line 98
    :cond_6
    add-long/2addr v2, v8

    .line 99
    add-int/lit8 v0, p1, 0x1

    goto :goto_1

    :cond_7
    const-wide/16 v4, 0x2

    .line 103
    add-long/2addr v2, v4

    .line 104
    add-int/lit8 v0, p1, 0x1

    goto :goto_1

    .line 106
    :cond_8
    if-gt v4, v6, :cond_5

    .line 112
    add-int/lit8 v0, p1, 0x1

    if-lt v0, p2, :cond_a

    move v0, v1

    :goto_2
    const v5, 0xdbff

    .line 113
    if-le v4, v5, :cond_b

    .line 115
    :cond_9
    add-long/2addr v2, v8

    .line 116
    add-int/lit8 v0, p1, 0x1

    goto :goto_1

    .line 112
    :cond_a
    add-int/lit8 v0, p1, 0x1

    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    goto :goto_2

    :cond_b
    const v4, 0xdc00

    .line 113
    if-lt v0, v4, :cond_9

    if-gt v0, v6, :cond_9

    const-wide/16 v4, 0x4

    .line 120
    add-long/2addr v2, v4

    .line 121
    add-int/lit8 v0, p1, 0x2

    goto :goto_1
.end method
