.class public Lcom/alibaba/fastjson/parser/deserializer/Jdk8DateCodec;
.super Lcom/alibaba/fastjson/parser/deserializer/ContextObjectDeserializer;
.source "Jdk8DateCodec.java"

# interfaces
.implements Lcom/alibaba/fastjson/serializer/ObjectSerializer;
.implements Lcom/alibaba/fastjson/serializer/ContextObjectSerializer;
.implements Lcom/alibaba/fastjson/parser/deserializer/ObjectDeserializer;


# static fields
.field private static final ISO_FIXED_FORMAT:Ljava/time/format/DateTimeFormatter;

.field private static final defaultFormatter:Ljava/time/format/DateTimeFormatter;

.field private static final defaultPatttern:Ljava/lang/String; = "yyyy-MM-dd HH:mm:ss"

.field private static final formatter_d10_cn:Ljava/time/format/DateTimeFormatter;

.field private static final formatter_d10_de:Ljava/time/format/DateTimeFormatter;

.field private static final formatter_d10_eur:Ljava/time/format/DateTimeFormatter;

.field private static final formatter_d10_in:Ljava/time/format/DateTimeFormatter;

.field private static final formatter_d10_kr:Ljava/time/format/DateTimeFormatter;

.field private static final formatter_d10_tw:Ljava/time/format/DateTimeFormatter;

.field private static final formatter_d10_us:Ljava/time/format/DateTimeFormatter;

.field private static final formatter_d8:Ljava/time/format/DateTimeFormatter;

.field private static final formatter_dt19_cn:Ljava/time/format/DateTimeFormatter;

.field private static final formatter_dt19_cn_1:Ljava/time/format/DateTimeFormatter;

.field private static final formatter_dt19_de:Ljava/time/format/DateTimeFormatter;

.field private static final formatter_dt19_eur:Ljava/time/format/DateTimeFormatter;

.field private static final formatter_dt19_in:Ljava/time/format/DateTimeFormatter;

.field private static final formatter_dt19_kr:Ljava/time/format/DateTimeFormatter;

.field private static final formatter_dt19_tw:Ljava/time/format/DateTimeFormatter;

.field private static final formatter_dt19_us:Ljava/time/format/DateTimeFormatter;

.field private static final formatter_iso8601:Ljava/time/format/DateTimeFormatter;

.field private static final formatter_iso8601_pattern:Ljava/lang/String; = "yyyy-MM-dd\'T\'HH:mm:ss"

.field public static final instance:Lcom/alibaba/fastjson/parser/deserializer/Jdk8DateCodec;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 27
    new-instance v0, Lcom/alibaba/fastjson/parser/deserializer/Jdk8DateCodec;

    invoke-direct {v0}, Lcom/alibaba/fastjson/parser/deserializer/Jdk8DateCodec;-><init>()V

    sput-object v0, Lcom/alibaba/fastjson/parser/deserializer/Jdk8DateCodec;->instance:Lcom/alibaba/fastjson/parser/deserializer/Jdk8DateCodec;

    const-string/jumbo v0, "yyyy-MM-dd HH:mm:ss"

    .line 30
    invoke-static {v0}, Ljava/time/format/DateTimeFormatter;->ofPattern(Ljava/lang/String;)Ljava/time/format/DateTimeFormatter;

    move-result-object v0

    sput-object v0, Lcom/alibaba/fastjson/parser/deserializer/Jdk8DateCodec;->defaultFormatter:Ljava/time/format/DateTimeFormatter;

    const-string/jumbo v0, "yyyy/MM/dd HH:mm:ss"

    .line 31
    invoke-static {v0}, Ljava/time/format/DateTimeFormatter;->ofPattern(Ljava/lang/String;)Ljava/time/format/DateTimeFormatter;

    move-result-object v0

    sput-object v0, Lcom/alibaba/fastjson/parser/deserializer/Jdk8DateCodec;->formatter_dt19_tw:Ljava/time/format/DateTimeFormatter;

    const-string/jumbo v0, "yyyy\u5e74M\u6708d\u65e5 HH:mm:ss"

    .line 32
    invoke-static {v0}, Ljava/time/format/DateTimeFormatter;->ofPattern(Ljava/lang/String;)Ljava/time/format/DateTimeFormatter;

    move-result-object v0

    sput-object v0, Lcom/alibaba/fastjson/parser/deserializer/Jdk8DateCodec;->formatter_dt19_cn:Ljava/time/format/DateTimeFormatter;

    const-string/jumbo v0, "yyyy\u5e74M\u6708d\u65e5 H\u65f6m\u5206s\u79d2"

    .line 33
    invoke-static {v0}, Ljava/time/format/DateTimeFormatter;->ofPattern(Ljava/lang/String;)Ljava/time/format/DateTimeFormatter;

    move-result-object v0

    sput-object v0, Lcom/alibaba/fastjson/parser/deserializer/Jdk8DateCodec;->formatter_dt19_cn_1:Ljava/time/format/DateTimeFormatter;

    const-string/jumbo v0, "yyyy\ub144M\uc6d4d\uc77c HH:mm:ss"

    .line 34
    invoke-static {v0}, Ljava/time/format/DateTimeFormatter;->ofPattern(Ljava/lang/String;)Ljava/time/format/DateTimeFormatter;

    move-result-object v0

    sput-object v0, Lcom/alibaba/fastjson/parser/deserializer/Jdk8DateCodec;->formatter_dt19_kr:Ljava/time/format/DateTimeFormatter;

    const-string/jumbo v0, "MM/dd/yyyy HH:mm:ss"

    .line 35
    invoke-static {v0}, Ljava/time/format/DateTimeFormatter;->ofPattern(Ljava/lang/String;)Ljava/time/format/DateTimeFormatter;

    move-result-object v0

    sput-object v0, Lcom/alibaba/fastjson/parser/deserializer/Jdk8DateCodec;->formatter_dt19_us:Ljava/time/format/DateTimeFormatter;

    const-string/jumbo v0, "dd/MM/yyyy HH:mm:ss"

    .line 36
    invoke-static {v0}, Ljava/time/format/DateTimeFormatter;->ofPattern(Ljava/lang/String;)Ljava/time/format/DateTimeFormatter;

    move-result-object v0

    sput-object v0, Lcom/alibaba/fastjson/parser/deserializer/Jdk8DateCodec;->formatter_dt19_eur:Ljava/time/format/DateTimeFormatter;

    const-string/jumbo v0, "dd.MM.yyyy HH:mm:ss"

    .line 37
    invoke-static {v0}, Ljava/time/format/DateTimeFormatter;->ofPattern(Ljava/lang/String;)Ljava/time/format/DateTimeFormatter;

    move-result-object v0

    sput-object v0, Lcom/alibaba/fastjson/parser/deserializer/Jdk8DateCodec;->formatter_dt19_de:Ljava/time/format/DateTimeFormatter;

    const-string/jumbo v0, "dd-MM-yyyy HH:mm:ss"

    .line 38
    invoke-static {v0}, Ljava/time/format/DateTimeFormatter;->ofPattern(Ljava/lang/String;)Ljava/time/format/DateTimeFormatter;

    move-result-object v0

    sput-object v0, Lcom/alibaba/fastjson/parser/deserializer/Jdk8DateCodec;->formatter_dt19_in:Ljava/time/format/DateTimeFormatter;

    const-string/jumbo v0, "yyyyMMdd"

    .line 40
    invoke-static {v0}, Ljava/time/format/DateTimeFormatter;->ofPattern(Ljava/lang/String;)Ljava/time/format/DateTimeFormatter;

    move-result-object v0

    sput-object v0, Lcom/alibaba/fastjson/parser/deserializer/Jdk8DateCodec;->formatter_d8:Ljava/time/format/DateTimeFormatter;

    const-string/jumbo v0, "yyyy/MM/dd"

    .line 41
    invoke-static {v0}, Ljava/time/format/DateTimeFormatter;->ofPattern(Ljava/lang/String;)Ljava/time/format/DateTimeFormatter;

    move-result-object v0

    sput-object v0, Lcom/alibaba/fastjson/parser/deserializer/Jdk8DateCodec;->formatter_d10_tw:Ljava/time/format/DateTimeFormatter;

    const-string/jumbo v0, "yyyy\u5e74M\u6708d\u65e5"

    .line 42
    invoke-static {v0}, Ljava/time/format/DateTimeFormatter;->ofPattern(Ljava/lang/String;)Ljava/time/format/DateTimeFormatter;

    move-result-object v0

    sput-object v0, Lcom/alibaba/fastjson/parser/deserializer/Jdk8DateCodec;->formatter_d10_cn:Ljava/time/format/DateTimeFormatter;

    const-string/jumbo v0, "yyyy\ub144M\uc6d4d\uc77c"

    .line 43
    invoke-static {v0}, Ljava/time/format/DateTimeFormatter;->ofPattern(Ljava/lang/String;)Ljava/time/format/DateTimeFormatter;

    move-result-object v0

    sput-object v0, Lcom/alibaba/fastjson/parser/deserializer/Jdk8DateCodec;->formatter_d10_kr:Ljava/time/format/DateTimeFormatter;

    const-string/jumbo v0, "MM/dd/yyyy"

    .line 44
    invoke-static {v0}, Ljava/time/format/DateTimeFormatter;->ofPattern(Ljava/lang/String;)Ljava/time/format/DateTimeFormatter;

    move-result-object v0

    sput-object v0, Lcom/alibaba/fastjson/parser/deserializer/Jdk8DateCodec;->formatter_d10_us:Ljava/time/format/DateTimeFormatter;

    const-string/jumbo v0, "dd/MM/yyyy"

    .line 45
    invoke-static {v0}, Ljava/time/format/DateTimeFormatter;->ofPattern(Ljava/lang/String;)Ljava/time/format/DateTimeFormatter;

    move-result-object v0

    sput-object v0, Lcom/alibaba/fastjson/parser/deserializer/Jdk8DateCodec;->formatter_d10_eur:Ljava/time/format/DateTimeFormatter;

    const-string/jumbo v0, "dd.MM.yyyy"

    .line 46
    invoke-static {v0}, Ljava/time/format/DateTimeFormatter;->ofPattern(Ljava/lang/String;)Ljava/time/format/DateTimeFormatter;

    move-result-object v0

    sput-object v0, Lcom/alibaba/fastjson/parser/deserializer/Jdk8DateCodec;->formatter_d10_de:Ljava/time/format/DateTimeFormatter;

    const-string/jumbo v0, "dd-MM-yyyy"

    .line 47
    invoke-static {v0}, Ljava/time/format/DateTimeFormatter;->ofPattern(Ljava/lang/String;)Ljava/time/format/DateTimeFormatter;

    move-result-object v0

    sput-object v0, Lcom/alibaba/fastjson/parser/deserializer/Jdk8DateCodec;->formatter_d10_in:Ljava/time/format/DateTimeFormatter;

    const-string/jumbo v0, "yyyy-MM-dd HH:mm:ss"

    .line 50
    invoke-static {v0}, Ljava/time/format/DateTimeFormatter;->ofPattern(Ljava/lang/String;)Ljava/time/format/DateTimeFormatter;

    move-result-object v0

    invoke-static {}, Ljava/time/ZoneId;->systemDefault()Ljava/time/ZoneId;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/time/format/DateTimeFormatter;->withZone(Ljava/time/ZoneId;)Ljava/time/format/DateTimeFormatter;

    move-result-object v0

    sput-object v0, Lcom/alibaba/fastjson/parser/deserializer/Jdk8DateCodec;->ISO_FIXED_FORMAT:Ljava/time/format/DateTimeFormatter;

    const-string/jumbo v0, "yyyy-MM-dd\'T\'HH:mm:ss"

    .line 53
    invoke-static {v0}, Ljava/time/format/DateTimeFormatter;->ofPattern(Ljava/lang/String;)Ljava/time/format/DateTimeFormatter;

    move-result-object v0

    sput-object v0, Lcom/alibaba/fastjson/parser/deserializer/Jdk8DateCodec;->formatter_iso8601:Ljava/time/format/DateTimeFormatter;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 25
    invoke-direct {p0}, Lcom/alibaba/fastjson/parser/deserializer/ContextObjectDeserializer;-><init>()V

    return-void
.end method

.method private write(Lcom/alibaba/fastjson/serializer/SerializeWriter;Ljava/time/temporal/TemporalAccessor;Ljava/lang/String;)V
    .locals 1

    .prologue
    const-string/jumbo v0, "yyyy-MM-dd\'T\'HH:mm:ss"

    .line 410
    if-eq p3, v0, :cond_0

    .line 413
    invoke-static {p3}, Ljava/time/format/DateTimeFormatter;->ofPattern(Ljava/lang/String;)Ljava/time/format/DateTimeFormatter;

    move-result-object v0

    .line 416
    :goto_0
    invoke-virtual {v0, p2}, Ljava/time/format/DateTimeFormatter;->format(Ljava/time/temporal/TemporalAccessor;)Ljava/lang/String;

    move-result-object v0

    .line 417
    invoke-virtual {p1, v0}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->writeString(Ljava/lang/String;)V

    .line 418
    return-void

    .line 411
    :cond_0
    sget-object v0, Lcom/alibaba/fastjson/parser/deserializer/Jdk8DateCodec;->formatter_iso8601:Ljava/time/format/DateTimeFormatter;

    goto :goto_0
.end method


# virtual methods
.method public deserialze(Lcom/alibaba/fastjson/parser/DefaultJSONParser;Ljava/lang/reflect/Type;Ljava/lang/Object;Ljava/lang/String;I)Ljava/lang/Object;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/alibaba/fastjson/parser/DefaultJSONParser;",
            "Ljava/lang/reflect/Type;",
            "Ljava/lang/Object;",
            "Ljava/lang/String;",
            "I)TT;"
        }
    .end annotation

    .prologue
    const/16 v5, 0x17

    const/16 v4, 0x8

    const/4 v1, 0x0

    .line 57
    iget-object v0, p1, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->lexer:Lcom/alibaba/fastjson/parser/JSONLexer;

    .line 58
    invoke-interface {v0}, Lcom/alibaba/fastjson/parser/JSONLexer;->token()I

    move-result v2

    if-eq v2, v4, :cond_0

    .line 63
    invoke-interface {v0}, Lcom/alibaba/fastjson/parser/JSONLexer;->token()I

    move-result v2

    const/4 v3, 0x4

    if-eq v2, v3, :cond_1

    .line 143
    invoke-interface {v0}, Lcom/alibaba/fastjson/parser/JSONLexer;->token()I

    move-result v1

    const/4 v2, 0x2

    if-eq v1, v2, :cond_14

    .line 159
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0

    .line 59
    :cond_0
    invoke-interface {v0}, Lcom/alibaba/fastjson/parser/JSONLexer;->nextToken()V

    .line 60
    return-object v1

    .line 64
    :cond_1
    invoke-interface {v0}, Lcom/alibaba/fastjson/parser/JSONLexer;->stringVal()Ljava/lang/String;

    move-result-object v2

    .line 65
    invoke-interface {v0}, Lcom/alibaba/fastjson/parser/JSONLexer;->nextToken()V

    .line 68
    if-nez p4, :cond_2

    move-object v0, v1

    :goto_0
    const-string/jumbo v3, ""

    .line 76
    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_4

    const-class v3, Ljava/time/LocalDateTime;

    .line 80
    if-eq p2, v3, :cond_5

    const-class v3, Ljava/time/LocalDate;

    .line 89
    if-eq p2, v3, :cond_8

    const-class v3, Ljava/time/LocalTime;

    .line 100
    if-eq p2, v3, :cond_a

    const-class v3, Ljava/time/ZonedDateTime;

    .line 110
    if-eq p2, v3, :cond_c

    const-class v0, Ljava/time/OffsetDateTime;

    .line 118
    if-eq p2, v0, :cond_e

    const-class v0, Ljava/time/OffsetTime;

    .line 122
    if-eq p2, v0, :cond_f

    const-class v0, Ljava/time/ZoneId;

    .line 126
    if-eq p2, v0, :cond_10

    const-class v0, Ljava/time/Period;

    .line 130
    if-eq p2, v0, :cond_11

    const-class v0, Ljava/time/Duration;

    .line 134
    if-eq p2, v0, :cond_12

    const-class v0, Ljava/time/Instant;

    .line 138
    if-eq p2, v0, :cond_13

    .line 161
    return-object v1

    :cond_2
    const-string/jumbo v0, "yyyy-MM-dd HH:mm:ss"

    .line 69
    invoke-virtual {v0, p4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 72
    invoke-static {p4}, Ljava/time/format/DateTimeFormatter;->ofPattern(Ljava/lang/String;)Ljava/time/format/DateTimeFormatter;

    move-result-object v0

    goto :goto_0

    .line 70
    :cond_3
    sget-object v0, Lcom/alibaba/fastjson/parser/deserializer/Jdk8DateCodec;->defaultFormatter:Ljava/time/format/DateTimeFormatter;

    goto :goto_0

    .line 77
    :cond_4
    return-object v1

    .line 82
    :cond_5
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v3, 0xa

    if-ne v1, v3, :cond_7

    .line 83
    :cond_6
    invoke-virtual {p0, v2, p4, v0}, Lcom/alibaba/fastjson/parser/deserializer/Jdk8DateCodec;->parseLocalDate(Ljava/lang/String;Ljava/lang/String;Ljava/time/format/DateTimeFormatter;)Ljava/time/LocalDate;

    move-result-object v0

    .line 84
    sget-object v1, Ljava/time/LocalTime;->MIN:Ljava/time/LocalTime;

    invoke-static {v0, v1}, Ljava/time/LocalDateTime;->of(Ljava/time/LocalDate;Ljava/time/LocalTime;)Ljava/time/LocalDateTime;

    move-result-object v0

    .line 88
    :goto_1
    return-object v0

    .line 82
    :cond_7
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v1

    if-eq v1, v4, :cond_6

    .line 86
    invoke-virtual {p0, v2, v0}, Lcom/alibaba/fastjson/parser/deserializer/Jdk8DateCodec;->parseDateTime(Ljava/lang/String;Ljava/time/format/DateTimeFormatter;)Ljava/time/LocalDateTime;

    move-result-object v0

    goto :goto_1

    .line 91
    :cond_8
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v1

    if-eq v1, v5, :cond_9

    .line 96
    invoke-virtual {p0, v2, p4, v0}, Lcom/alibaba/fastjson/parser/deserializer/Jdk8DateCodec;->parseLocalDate(Ljava/lang/String;Ljava/lang/String;Ljava/time/format/DateTimeFormatter;)Ljava/time/LocalDate;

    move-result-object v0

    .line 99
    :goto_2
    return-object v0

    .line 92
    :cond_9
    invoke-static {v2}, Ljava/time/LocalDateTime;->parse(Ljava/lang/CharSequence;)Ljava/time/LocalDateTime;

    move-result-object v0

    .line 93
    invoke-virtual {v0}, Ljava/time/LocalDateTime;->getYear()I

    move-result v1

    invoke-virtual {v0}, Ljava/time/LocalDateTime;->getMonthValue()I

    move-result v2

    .line 94
    invoke-virtual {v0}, Ljava/time/LocalDateTime;->getDayOfMonth()I

    move-result v0

    .line 93
    invoke-static {v1, v2, v0}, Ljava/time/LocalDate;->of(III)Ljava/time/LocalDate;

    move-result-object v0

    goto :goto_2

    .line 102
    :cond_a
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v0

    if-eq v0, v5, :cond_b

    .line 107
    invoke-static {v2}, Ljava/time/LocalTime;->parse(Ljava/lang/CharSequence;)Ljava/time/LocalTime;

    move-result-object v0

    .line 109
    :goto_3
    return-object v0

    .line 103
    :cond_b
    invoke-static {v2}, Ljava/time/LocalDateTime;->parse(Ljava/lang/CharSequence;)Ljava/time/LocalDateTime;

    move-result-object v0

    .line 104
    invoke-virtual {v0}, Ljava/time/LocalDateTime;->getHour()I

    move-result v1

    invoke-virtual {v0}, Ljava/time/LocalDateTime;->getMinute()I

    move-result v2

    .line 105
    invoke-virtual {v0}, Ljava/time/LocalDateTime;->getSecond()I

    move-result v3

    invoke-virtual {v0}, Ljava/time/LocalDateTime;->getNano()I

    move-result v0

    .line 104
    invoke-static {v1, v2, v3, v0}, Ljava/time/LocalTime;->of(IIII)Ljava/time/LocalTime;

    move-result-object v0

    goto :goto_3

    .line 111
    :cond_c
    sget-object v1, Lcom/alibaba/fastjson/parser/deserializer/Jdk8DateCodec;->defaultFormatter:Ljava/time/format/DateTimeFormatter;

    if-eq v0, v1, :cond_d

    .line 115
    :goto_4
    invoke-virtual {p0, v2, v0}, Lcom/alibaba/fastjson/parser/deserializer/Jdk8DateCodec;->parseZonedDateTime(Ljava/lang/String;Ljava/time/format/DateTimeFormatter;)Ljava/time/ZonedDateTime;

    move-result-object v0

    .line 117
    return-object v0

    .line 112
    :cond_d
    sget-object v0, Lcom/alibaba/fastjson/parser/deserializer/Jdk8DateCodec;->ISO_FIXED_FORMAT:Ljava/time/format/DateTimeFormatter;

    goto :goto_4

    .line 119
    :cond_e
    invoke-static {v2}, Ljava/time/OffsetDateTime;->parse(Ljava/lang/CharSequence;)Ljava/time/OffsetDateTime;

    move-result-object v0

    .line 121
    return-object v0

    .line 123
    :cond_f
    invoke-static {v2}, Ljava/time/OffsetTime;->parse(Ljava/lang/CharSequence;)Ljava/time/OffsetTime;

    move-result-object v0

    .line 125
    return-object v0

    .line 127
    :cond_10
    invoke-static {v2}, Ljava/time/ZoneId;->of(Ljava/lang/String;)Ljava/time/ZoneId;

    move-result-object v0

    .line 129
    return-object v0

    .line 131
    :cond_11
    invoke-static {v2}, Ljava/time/Period;->parse(Ljava/lang/CharSequence;)Ljava/time/Period;

    move-result-object v0

    .line 133
    return-object v0

    .line 135
    :cond_12
    invoke-static {v2}, Ljava/time/Duration;->parse(Ljava/lang/CharSequence;)Ljava/time/Duration;

    move-result-object v0

    .line 137
    return-object v0

    .line 139
    :cond_13
    invoke-static {v2}, Ljava/time/Instant;->parse(Ljava/lang/CharSequence;)Ljava/time/Instant;

    move-result-object v0

    .line 141
    return-object v0

    .line 144
    :cond_14
    invoke-interface {v0}, Lcom/alibaba/fastjson/parser/JSONLexer;->longValue()J

    move-result-wide v2

    .line 145
    invoke-interface {v0}, Lcom/alibaba/fastjson/parser/JSONLexer;->nextToken()V

    const-class v0, Ljava/time/LocalDateTime;

    .line 147
    if-eq p2, v0, :cond_15

    const-class v0, Ljava/time/LocalDate;

    .line 150
    if-eq p2, v0, :cond_16

    const-class v0, Ljava/time/LocalTime;

    .line 153
    if-eq p2, v0, :cond_17

    .line 157
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0

    .line 148
    :cond_15
    invoke-static {v2, v3}, Ljava/time/Instant;->ofEpochMilli(J)Ljava/time/Instant;

    move-result-object v0

    sget-object v1, Lcom/alibaba/fastjson/JSON;->defaultTimeZone:Ljava/util/TimeZone;

    invoke-virtual {v1}, Ljava/util/TimeZone;->toZoneId()Ljava/time/ZoneId;

    move-result-object v1

    invoke-static {v0, v1}, Ljava/time/LocalDateTime;->ofInstant(Ljava/time/Instant;Ljava/time/ZoneId;)Ljava/time/LocalDateTime;

    move-result-object v0

    return-object v0

    .line 151
    :cond_16
    invoke-static {v2, v3}, Ljava/time/Instant;->ofEpochMilli(J)Ljava/time/Instant;

    move-result-object v0

    sget-object v1, Lcom/alibaba/fastjson/JSON;->defaultTimeZone:Ljava/util/TimeZone;

    invoke-virtual {v1}, Ljava/util/TimeZone;->toZoneId()Ljava/time/ZoneId;

    move-result-object v1

    invoke-static {v0, v1}, Ljava/time/LocalDateTime;->ofInstant(Ljava/time/Instant;Ljava/time/ZoneId;)Ljava/time/LocalDateTime;

    move-result-object v0

    invoke-virtual {v0}, Ljava/time/LocalDateTime;->toLocalDate()Ljava/time/LocalDate;

    move-result-object v0

    return-object v0

    .line 154
    :cond_17
    invoke-static {v2, v3}, Ljava/time/Instant;->ofEpochMilli(J)Ljava/time/Instant;

    move-result-object v0

    sget-object v1, Lcom/alibaba/fastjson/JSON;->defaultTimeZone:Ljava/util/TimeZone;

    invoke-virtual {v1}, Ljava/util/TimeZone;->toZoneId()Ljava/time/ZoneId;

    move-result-object v1

    invoke-static {v0, v1}, Ljava/time/LocalDateTime;->ofInstant(Ljava/time/Instant;Ljava/time/ZoneId;)Ljava/time/LocalDateTime;

    move-result-object v0

    invoke-virtual {v0}, Ljava/time/LocalDateTime;->toLocalTime()Ljava/time/LocalTime;

    move-result-object v0

    return-object v0
.end method

.method public getFastMatchToken()I
    .locals 1

    .prologue
    const/4 v0, 0x4

    .line 362
    return v0
.end method

.method protected parseDateTime(Ljava/lang/String;Ljava/time/format/DateTimeFormatter;)Ljava/time/LocalDateTime;
    .locals 11

    .prologue
    const/16 v10, 0xc

    const/4 v9, 0x4

    const/16 v8, 0x2f

    const/4 v7, 0x0

    const/16 v6, 0x2d

    .line 165
    if-eqz p2, :cond_1

    .line 229
    :cond_0
    :goto_0
    if-eqz p2, :cond_16

    .line 231
    invoke-static {p1, p2}, Ljava/time/LocalDateTime;->parse(Ljava/lang/CharSequence;Ljava/time/format/DateTimeFormatter;)Ljava/time/LocalDateTime;

    move-result-object v0

    .line 229
    :goto_1
    return-object v0

    .line 166
    :cond_1
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v1, 0x13

    if-eq v0, v1, :cond_3

    .line 215
    :cond_2
    :goto_2
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v1, 0x11

    if-lt v0, v1, :cond_0

    .line 216
    invoke-virtual {p1, v9}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v1, 0x5e74

    .line 217
    if-eq v0, v1, :cond_14

    const v1, 0xb144

    .line 223
    if-ne v0, v1, :cond_0

    .line 224
    sget-object p2, Lcom/alibaba/fastjson/parser/deserializer/Jdk8DateCodec;->formatter_dt19_kr:Ljava/time/format/DateTimeFormatter;

    goto :goto_0

    .line 167
    :cond_3
    invoke-virtual {p1, v9}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/4 v1, 0x7

    .line 168
    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v2, 0xa

    .line 169
    invoke-virtual {p1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v2

    const/16 v3, 0xd

    .line 170
    invoke-virtual {p1, v3}, Ljava/lang/String;->charAt(I)C

    move-result v3

    const/16 v4, 0x10

    .line 171
    invoke-virtual {p1, v4}, Ljava/lang/String;->charAt(I)C

    move-result v4

    const/16 v5, 0x3a

    .line 172
    if-ne v3, v5, :cond_2

    const/16 v3, 0x3a

    if-ne v4, v3, :cond_2

    .line 173
    if-eq v0, v6, :cond_9

    .line 179
    :cond_4
    if-eq v0, v6, :cond_b

    .line 181
    :cond_5
    if-eq v0, v8, :cond_c

    .line 184
    :cond_6
    invoke-virtual {p1, v7}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/4 v2, 0x1

    .line 185
    invoke-virtual {p1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v2

    const/4 v3, 0x2

    .line 186
    invoke-virtual {p1, v3}, Ljava/lang/String;->charAt(I)C

    move-result v3

    const/4 v4, 0x3

    .line 187
    invoke-virtual {p1, v4}, Ljava/lang/String;->charAt(I)C

    move-result v4

    const/4 v5, 0x5

    .line 188
    invoke-virtual {p1, v5}, Ljava/lang/String;->charAt(I)C

    move-result v5

    .line 189
    if-eq v3, v8, :cond_d

    :cond_7
    const/16 v0, 0x2e

    .line 206
    if-eq v3, v0, :cond_13

    .line 208
    :cond_8
    if-ne v3, v6, :cond_2

    if-ne v5, v6, :cond_2

    .line 209
    sget-object p2, Lcom/alibaba/fastjson/parser/deserializer/Jdk8DateCodec;->formatter_dt19_in:Ljava/time/format/DateTimeFormatter;

    goto :goto_2

    .line 173
    :cond_9
    if-ne v1, v6, :cond_4

    const/16 v0, 0x54

    .line 174
    if-eq v2, v0, :cond_a

    const/16 v0, 0x20

    .line 176
    if-ne v2, v0, :cond_2

    .line 177
    sget-object p2, Lcom/alibaba/fastjson/parser/deserializer/Jdk8DateCodec;->defaultFormatter:Ljava/time/format/DateTimeFormatter;

    goto :goto_2

    .line 175
    :cond_a
    sget-object p2, Ljava/time/format/DateTimeFormatter;->ISO_LOCAL_DATE_TIME:Ljava/time/format/DateTimeFormatter;

    goto :goto_2

    .line 179
    :cond_b
    if-ne v1, v6, :cond_5

    .line 180
    sget-object p2, Lcom/alibaba/fastjson/parser/deserializer/Jdk8DateCodec;->defaultFormatter:Ljava/time/format/DateTimeFormatter;

    goto :goto_2

    .line 181
    :cond_c
    if-ne v1, v8, :cond_6

    .line 182
    sget-object p2, Lcom/alibaba/fastjson/parser/deserializer/Jdk8DateCodec;->formatter_dt19_tw:Ljava/time/format/DateTimeFormatter;

    goto :goto_2

    .line 189
    :cond_d
    if-ne v5, v8, :cond_7

    .line 190
    add-int/lit8 v1, v1, -0x30

    mul-int/lit8 v1, v1, 0xa

    add-int/lit8 v2, v2, -0x30

    add-int/2addr v1, v2

    .line 191
    add-int/lit8 v2, v4, -0x30

    mul-int/lit8 v2, v2, 0xa

    add-int/lit8 v0, v0, -0x30

    add-int/2addr v0, v2

    .line 192
    if-gt v1, v10, :cond_f

    .line 194
    if-gt v0, v10, :cond_10

    .line 197
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "US"

    .line 199
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_11

    const-string/jumbo v1, "BR"

    .line 201
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_12

    .line 203
    :cond_e
    sget-object p2, Lcom/alibaba/fastjson/parser/deserializer/Jdk8DateCodec;->formatter_dt19_eur:Ljava/time/format/DateTimeFormatter;

    goto/16 :goto_2

    .line 193
    :cond_f
    sget-object p2, Lcom/alibaba/fastjson/parser/deserializer/Jdk8DateCodec;->formatter_dt19_eur:Ljava/time/format/DateTimeFormatter;

    goto/16 :goto_2

    .line 195
    :cond_10
    sget-object p2, Lcom/alibaba/fastjson/parser/deserializer/Jdk8DateCodec;->formatter_dt19_us:Ljava/time/format/DateTimeFormatter;

    goto/16 :goto_2

    .line 200
    :cond_11
    sget-object p2, Lcom/alibaba/fastjson/parser/deserializer/Jdk8DateCodec;->formatter_dt19_us:Ljava/time/format/DateTimeFormatter;

    goto/16 :goto_2

    :cond_12
    const-string/jumbo v1, "AU"

    .line 202
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_e

    goto/16 :goto_2

    :cond_13
    const/16 v0, 0x2e

    .line 206
    if-ne v5, v0, :cond_8

    .line 207
    sget-object p2, Lcom/alibaba/fastjson/parser/deserializer/Jdk8DateCodec;->formatter_dt19_de:Ljava/time/format/DateTimeFormatter;

    goto/16 :goto_2

    .line 218
    :cond_14
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v1, 0x79d2

    if-eq v0, v1, :cond_15

    .line 221
    sget-object p2, Lcom/alibaba/fastjson/parser/deserializer/Jdk8DateCodec;->formatter_dt19_cn:Ljava/time/format/DateTimeFormatter;

    goto/16 :goto_0

    .line 219
    :cond_15
    sget-object p2, Lcom/alibaba/fastjson/parser/deserializer/Jdk8DateCodec;->formatter_dt19_cn_1:Ljava/time/format/DateTimeFormatter;

    goto/16 :goto_0

    .line 230
    :cond_16
    invoke-static {p1}, Ljava/time/LocalDateTime;->parse(Ljava/lang/CharSequence;)Ljava/time/LocalDateTime;

    move-result-object v0

    goto/16 :goto_1
.end method

.method protected parseLocalDate(Ljava/lang/String;Ljava/lang/String;Ljava/time/format/DateTimeFormatter;)Ljava/time/LocalDate;
    .locals 10

    .prologue
    const/16 v9, 0x2d

    const/16 v8, 0xc

    const/4 v7, 0x4

    const/16 v6, 0x2f

    const/4 v2, 0x0

    .line 235
    if-eqz p3, :cond_1

    .line 286
    :cond_0
    :goto_0
    if-eqz p3, :cond_11

    .line 288
    invoke-static {p1, p3}, Ljava/time/LocalDate;->parse(Ljava/lang/CharSequence;Ljava/time/format/DateTimeFormatter;)Ljava/time/LocalDate;

    move-result-object v0

    .line 286
    :goto_1
    return-object v0

    .line 236
    :cond_1
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v1, 0x8

    if-eq v0, v1, :cond_3

    .line 240
    :goto_2
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v1, 0xa

    if-eq v0, v1, :cond_4

    .line 276
    :cond_2
    :goto_3
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v1, 0x9

    if-lt v0, v1, :cond_0

    .line 277
    invoke-virtual {p1, v7}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v1, 0x5e74

    .line 278
    if-eq v0, v1, :cond_10

    const v1, 0xb144

    .line 280
    if-ne v0, v1, :cond_0

    .line 281
    sget-object p3, Lcom/alibaba/fastjson/parser/deserializer/Jdk8DateCodec;->formatter_d10_kr:Ljava/time/format/DateTimeFormatter;

    goto :goto_0

    .line 237
    :cond_3
    sget-object p3, Lcom/alibaba/fastjson/parser/deserializer/Jdk8DateCodec;->formatter_d8:Ljava/time/format/DateTimeFormatter;

    goto :goto_2

    .line 241
    :cond_4
    invoke-virtual {p1, v7}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/4 v1, 0x7

    .line 242
    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    .line 243
    if-eq v0, v6, :cond_8

    .line 247
    :cond_5
    :goto_4
    invoke-virtual {p1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/4 v2, 0x1

    .line 248
    invoke-virtual {p1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v2

    const/4 v3, 0x2

    .line 249
    invoke-virtual {p1, v3}, Ljava/lang/String;->charAt(I)C

    move-result v3

    const/4 v4, 0x3

    .line 250
    invoke-virtual {p1, v4}, Ljava/lang/String;->charAt(I)C

    move-result v4

    const/4 v5, 0x5

    .line 251
    invoke-virtual {p1, v5}, Ljava/lang/String;->charAt(I)C

    move-result v5

    .line 252
    if-eq v3, v6, :cond_9

    :cond_6
    const/16 v0, 0x2e

    .line 269
    if-eq v3, v0, :cond_f

    .line 271
    :cond_7
    if-ne v3, v9, :cond_2

    if-ne v5, v9, :cond_2

    .line 272
    sget-object p3, Lcom/alibaba/fastjson/parser/deserializer/Jdk8DateCodec;->formatter_d10_in:Ljava/time/format/DateTimeFormatter;

    goto :goto_3

    .line 243
    :cond_8
    if-ne v1, v6, :cond_5

    .line 244
    sget-object p3, Lcom/alibaba/fastjson/parser/deserializer/Jdk8DateCodec;->formatter_d10_tw:Ljava/time/format/DateTimeFormatter;

    goto :goto_4

    .line 252
    :cond_9
    if-ne v5, v6, :cond_6

    .line 253
    add-int/lit8 v1, v1, -0x30

    mul-int/lit8 v1, v1, 0xa

    add-int/lit8 v2, v2, -0x30

    add-int/2addr v1, v2

    .line 254
    add-int/lit8 v2, v4, -0x30

    mul-int/lit8 v2, v2, 0xa

    add-int/lit8 v0, v0, -0x30

    add-int/2addr v0, v2

    .line 255
    if-gt v1, v8, :cond_b

    .line 257
    if-gt v0, v8, :cond_c

    .line 260
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "US"

    .line 262
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_d

    const-string/jumbo v1, "BR"

    .line 264
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_e

    .line 266
    :cond_a
    sget-object p3, Lcom/alibaba/fastjson/parser/deserializer/Jdk8DateCodec;->formatter_d10_eur:Ljava/time/format/DateTimeFormatter;

    goto :goto_3

    .line 256
    :cond_b
    sget-object p3, Lcom/alibaba/fastjson/parser/deserializer/Jdk8DateCodec;->formatter_d10_eur:Ljava/time/format/DateTimeFormatter;

    goto/16 :goto_3

    .line 258
    :cond_c
    sget-object p3, Lcom/alibaba/fastjson/parser/deserializer/Jdk8DateCodec;->formatter_d10_us:Ljava/time/format/DateTimeFormatter;

    goto/16 :goto_3

    .line 263
    :cond_d
    sget-object p3, Lcom/alibaba/fastjson/parser/deserializer/Jdk8DateCodec;->formatter_d10_us:Ljava/time/format/DateTimeFormatter;

    goto/16 :goto_3

    :cond_e
    const-string/jumbo v1, "AU"

    .line 265
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_a

    goto/16 :goto_3

    :cond_f
    const/16 v0, 0x2e

    .line 269
    if-ne v5, v0, :cond_7

    .line 270
    sget-object p3, Lcom/alibaba/fastjson/parser/deserializer/Jdk8DateCodec;->formatter_d10_de:Ljava/time/format/DateTimeFormatter;

    goto/16 :goto_3

    .line 279
    :cond_10
    sget-object p3, Lcom/alibaba/fastjson/parser/deserializer/Jdk8DateCodec;->formatter_d10_cn:Ljava/time/format/DateTimeFormatter;

    goto/16 :goto_0

    .line 287
    :cond_11
    invoke-static {p1}, Ljava/time/LocalDate;->parse(Ljava/lang/CharSequence;)Ljava/time/LocalDate;

    move-result-object v0

    goto/16 :goto_1
.end method

.method protected parseZonedDateTime(Ljava/lang/String;Ljava/time/format/DateTimeFormatter;)Ljava/time/ZonedDateTime;
    .locals 11

    .prologue
    const/16 v10, 0xc

    const/4 v9, 0x4

    const/16 v8, 0x2f

    const/4 v7, 0x0

    const/16 v6, 0x2d

    .line 292
    if-eqz p2, :cond_1

    .line 356
    :cond_0
    :goto_0
    if-eqz p2, :cond_16

    .line 358
    invoke-static {p1, p2}, Ljava/time/ZonedDateTime;->parse(Ljava/lang/CharSequence;Ljava/time/format/DateTimeFormatter;)Ljava/time/ZonedDateTime;

    move-result-object v0

    .line 356
    :goto_1
    return-object v0

    .line 293
    :cond_1
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v1, 0x13

    if-eq v0, v1, :cond_3

    .line 342
    :cond_2
    :goto_2
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v1, 0x11

    if-lt v0, v1, :cond_0

    .line 343
    invoke-virtual {p1, v9}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v1, 0x5e74

    .line 344
    if-eq v0, v1, :cond_14

    const v1, 0xb144

    .line 350
    if-ne v0, v1, :cond_0

    .line 351
    sget-object p2, Lcom/alibaba/fastjson/parser/deserializer/Jdk8DateCodec;->formatter_dt19_kr:Ljava/time/format/DateTimeFormatter;

    goto :goto_0

    .line 294
    :cond_3
    invoke-virtual {p1, v9}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/4 v1, 0x7

    .line 295
    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v2, 0xa

    .line 296
    invoke-virtual {p1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v2

    const/16 v3, 0xd

    .line 297
    invoke-virtual {p1, v3}, Ljava/lang/String;->charAt(I)C

    move-result v3

    const/16 v4, 0x10

    .line 298
    invoke-virtual {p1, v4}, Ljava/lang/String;->charAt(I)C

    move-result v4

    const/16 v5, 0x3a

    .line 299
    if-ne v3, v5, :cond_2

    const/16 v3, 0x3a

    if-ne v4, v3, :cond_2

    .line 300
    if-eq v0, v6, :cond_9

    .line 306
    :cond_4
    if-eq v0, v6, :cond_b

    .line 308
    :cond_5
    if-eq v0, v8, :cond_c

    .line 311
    :cond_6
    invoke-virtual {p1, v7}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/4 v2, 0x1

    .line 312
    invoke-virtual {p1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v2

    const/4 v3, 0x2

    .line 313
    invoke-virtual {p1, v3}, Ljava/lang/String;->charAt(I)C

    move-result v3

    const/4 v4, 0x3

    .line 314
    invoke-virtual {p1, v4}, Ljava/lang/String;->charAt(I)C

    move-result v4

    const/4 v5, 0x5

    .line 315
    invoke-virtual {p1, v5}, Ljava/lang/String;->charAt(I)C

    move-result v5

    .line 316
    if-eq v3, v8, :cond_d

    :cond_7
    const/16 v0, 0x2e

    .line 333
    if-eq v3, v0, :cond_13

    .line 335
    :cond_8
    if-ne v3, v6, :cond_2

    if-ne v5, v6, :cond_2

    .line 336
    sget-object p2, Lcom/alibaba/fastjson/parser/deserializer/Jdk8DateCodec;->formatter_dt19_in:Ljava/time/format/DateTimeFormatter;

    goto :goto_2

    .line 300
    :cond_9
    if-ne v1, v6, :cond_4

    const/16 v0, 0x54

    .line 301
    if-eq v2, v0, :cond_a

    const/16 v0, 0x20

    .line 303
    if-ne v2, v0, :cond_2

    .line 304
    sget-object p2, Lcom/alibaba/fastjson/parser/deserializer/Jdk8DateCodec;->defaultFormatter:Ljava/time/format/DateTimeFormatter;

    goto :goto_2

    .line 302
    :cond_a
    sget-object p2, Ljava/time/format/DateTimeFormatter;->ISO_LOCAL_DATE_TIME:Ljava/time/format/DateTimeFormatter;

    goto :goto_2

    .line 306
    :cond_b
    if-ne v1, v6, :cond_5

    .line 307
    sget-object p2, Lcom/alibaba/fastjson/parser/deserializer/Jdk8DateCodec;->defaultFormatter:Ljava/time/format/DateTimeFormatter;

    goto :goto_2

    .line 308
    :cond_c
    if-ne v1, v8, :cond_6

    .line 309
    sget-object p2, Lcom/alibaba/fastjson/parser/deserializer/Jdk8DateCodec;->formatter_dt19_tw:Ljava/time/format/DateTimeFormatter;

    goto :goto_2

    .line 316
    :cond_d
    if-ne v5, v8, :cond_7

    .line 317
    add-int/lit8 v1, v1, -0x30

    mul-int/lit8 v1, v1, 0xa

    add-int/lit8 v2, v2, -0x30

    add-int/2addr v1, v2

    .line 318
    add-int/lit8 v2, v4, -0x30

    mul-int/lit8 v2, v2, 0xa

    add-int/lit8 v0, v0, -0x30

    add-int/2addr v0, v2

    .line 319
    if-gt v1, v10, :cond_f

    .line 321
    if-gt v0, v10, :cond_10

    .line 324
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "US"

    .line 326
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_11

    const-string/jumbo v1, "BR"

    .line 328
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_12

    .line 330
    :cond_e
    sget-object p2, Lcom/alibaba/fastjson/parser/deserializer/Jdk8DateCodec;->formatter_dt19_eur:Ljava/time/format/DateTimeFormatter;

    goto/16 :goto_2

    .line 320
    :cond_f
    sget-object p2, Lcom/alibaba/fastjson/parser/deserializer/Jdk8DateCodec;->formatter_dt19_eur:Ljava/time/format/DateTimeFormatter;

    goto/16 :goto_2

    .line 322
    :cond_10
    sget-object p2, Lcom/alibaba/fastjson/parser/deserializer/Jdk8DateCodec;->formatter_dt19_us:Ljava/time/format/DateTimeFormatter;

    goto/16 :goto_2

    .line 327
    :cond_11
    sget-object p2, Lcom/alibaba/fastjson/parser/deserializer/Jdk8DateCodec;->formatter_dt19_us:Ljava/time/format/DateTimeFormatter;

    goto/16 :goto_2

    :cond_12
    const-string/jumbo v1, "AU"

    .line 329
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_e

    goto/16 :goto_2

    :cond_13
    const/16 v0, 0x2e

    .line 333
    if-ne v5, v0, :cond_8

    .line 334
    sget-object p2, Lcom/alibaba/fastjson/parser/deserializer/Jdk8DateCodec;->formatter_dt19_de:Ljava/time/format/DateTimeFormatter;

    goto/16 :goto_2

    .line 345
    :cond_14
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v1, 0x79d2

    if-eq v0, v1, :cond_15

    .line 348
    sget-object p2, Lcom/alibaba/fastjson/parser/deserializer/Jdk8DateCodec;->formatter_dt19_cn:Ljava/time/format/DateTimeFormatter;

    goto/16 :goto_0

    .line 346
    :cond_15
    sget-object p2, Lcom/alibaba/fastjson/parser/deserializer/Jdk8DateCodec;->formatter_dt19_cn_1:Ljava/time/format/DateTimeFormatter;

    goto/16 :goto_0

    .line 357
    :cond_16
    invoke-static {p1}, Ljava/time/ZonedDateTime;->parse(Ljava/lang/CharSequence;)Ljava/time/ZonedDateTime;

    move-result-object v0

    goto/16 :goto_1
.end method

.method public write(Lcom/alibaba/fastjson/serializer/JSONSerializer;Ljava/lang/Object;Lcom/alibaba/fastjson/serializer/BeanContext;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 403
    iget-object v0, p1, Lcom/alibaba/fastjson/serializer/JSONSerializer;->out:Lcom/alibaba/fastjson/serializer/SerializeWriter;

    .line 404
    invoke-virtual {p3}, Lcom/alibaba/fastjson/serializer/BeanContext;->getFormat()Ljava/lang/String;

    move-result-object v1

    .line 405
    check-cast p2, Ljava/time/temporal/TemporalAccessor;

    invoke-direct {p0, v0, p2, v1}, Lcom/alibaba/fastjson/parser/deserializer/Jdk8DateCodec;->write(Lcom/alibaba/fastjson/serializer/SerializeWriter;Ljava/time/temporal/TemporalAccessor;Ljava/lang/String;)V

    .line 406
    return-void
.end method

.method public write(Lcom/alibaba/fastjson/serializer/JSONSerializer;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/reflect/Type;I)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 367
    iget-object v1, p1, Lcom/alibaba/fastjson/serializer/JSONSerializer;->out:Lcom/alibaba/fastjson/serializer/SerializeWriter;

    .line 368
    if-eqz p2, :cond_0

    .line 371
    if-eqz p4, :cond_1

    :goto_0
    const-class v0, Ljava/time/LocalDateTime;

    .line 375
    if-eq p4, v0, :cond_2

    .line 397
    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->writeString(Ljava/lang/String;)V

    .line 400
    :goto_1
    return-void

    .line 369
    :cond_0
    invoke-virtual {v1}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->writeNull()V

    goto :goto_1

    .line 372
    :cond_1
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p4

    goto :goto_0

    .line 376
    :cond_2
    sget-object v0, Lcom/alibaba/fastjson/serializer/SerializerFeature;->UseISO8601DateFormat:Lcom/alibaba/fastjson/serializer/SerializerFeature;

    invoke-virtual {v0}, Lcom/alibaba/fastjson/serializer/SerializerFeature;->getMask()I

    move-result v2

    .line 377
    check-cast p2, Ljava/time/LocalDateTime;

    .line 378
    invoke-virtual {p1}, Lcom/alibaba/fastjson/serializer/JSONSerializer;->getDateFormatPattern()Ljava/lang/String;

    move-result-object v0

    .line 380
    if-eqz v0, :cond_5

    :cond_3
    sget-object v2, Lcom/alibaba/fastjson/serializer/SerializerFeature;->UseISO8601DateFormat:Lcom/alibaba/fastjson/serializer/SerializerFeature;

    invoke-virtual {p1, v2}, Lcom/alibaba/fastjson/serializer/JSONSerializer;->isEnabled(Lcom/alibaba/fastjson/serializer/SerializerFeature;)Z

    move-result v2

    if-nez v2, :cond_6

    .line 384
    :goto_2
    invoke-virtual {p2}, Ljava/time/LocalDateTime;->getNano()I

    move-result v2

    if-nez v2, :cond_7

    .line 386
    :cond_4
    if-eqz v0, :cond_8

    .line 389
    :goto_3
    invoke-direct {p0, v1, p2, v0}, Lcom/alibaba/fastjson/parser/deserializer/Jdk8DateCodec;->write(Lcom/alibaba/fastjson/serializer/SerializeWriter;Ljava/time/temporal/TemporalAccessor;Ljava/lang/String;)V

    goto :goto_1

    .line 380
    :cond_5
    and-int/2addr v2, p5

    if-eqz v2, :cond_3

    :cond_6
    const-string/jumbo v0, "yyyy-MM-dd\'T\'HH:mm:ss"

    goto :goto_2

    .line 384
    :cond_7
    if-nez v0, :cond_4

    .line 390
    sget-object v0, Lcom/alibaba/fastjson/serializer/SerializerFeature;->WriteDateUseDateFormat:Lcom/alibaba/fastjson/serializer/SerializerFeature;

    invoke-virtual {v1, v0}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->isEnabled(Lcom/alibaba/fastjson/serializer/SerializerFeature;)Z

    move-result v0

    if-nez v0, :cond_9

    .line 394
    sget-object v0, Lcom/alibaba/fastjson/JSON;->defaultTimeZone:Ljava/util/TimeZone;

    invoke-virtual {v0}, Ljava/util/TimeZone;->toZoneId()Ljava/time/ZoneId;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/time/LocalDateTime;->atZone(Ljava/time/ZoneId;)Ljava/time/ZonedDateTime;

    move-result-object v0

    invoke-virtual {v0}, Ljava/time/ZonedDateTime;->toInstant()Ljava/time/Instant;

    move-result-object v0

    invoke-virtual {v0}, Ljava/time/Instant;->toEpochMilli()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->writeLong(J)V

    goto :goto_1

    .line 387
    :cond_8
    sget-object v0, Lcom/alibaba/fastjson/JSON;->DEFFAULT_DATE_FORMAT:Ljava/lang/String;

    goto :goto_3

    .line 392
    :cond_9
    sget-object v0, Lcom/alibaba/fastjson/JSON;->DEFFAULT_DATE_FORMAT:Ljava/lang/String;

    invoke-direct {p0, v1, p2, v0}, Lcom/alibaba/fastjson/parser/deserializer/Jdk8DateCodec;->write(Lcom/alibaba/fastjson/serializer/SerializeWriter;Ljava/time/temporal/TemporalAccessor;Ljava/lang/String;)V

    goto :goto_1
.end method
