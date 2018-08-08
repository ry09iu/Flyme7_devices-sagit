.class public Lcom/alibaba/fastjson/serializer/DateCodec;
.super Lcom/alibaba/fastjson/parser/deserializer/AbstractDateDeserializer;
.source "DateCodec.java"

# interfaces
.implements Lcom/alibaba/fastjson/serializer/ObjectSerializer;
.implements Lcom/alibaba/fastjson/parser/deserializer/ObjectDeserializer;


# static fields
.field public static final instance:Lcom/alibaba/fastjson/serializer/DateCodec;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 42
    new-instance v0, Lcom/alibaba/fastjson/serializer/DateCodec;

    invoke-direct {v0}, Lcom/alibaba/fastjson/serializer/DateCodec;-><init>()V

    sput-object v0, Lcom/alibaba/fastjson/serializer/DateCodec;->instance:Lcom/alibaba/fastjson/serializer/DateCodec;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 40
    invoke-direct {p0}, Lcom/alibaba/fastjson/parser/deserializer/AbstractDateDeserializer;-><init>()V

    return-void
.end method


# virtual methods
.method public cast(Lcom/alibaba/fastjson/parser/DefaultJSONParser;Ljava/lang/reflect/Type;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/alibaba/fastjson/parser/DefaultJSONParser;",
            "Ljava/lang/reflect/Type;",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            ")TT;"
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    const/4 v4, 0x0

    .line 165
    if-eqz p4, :cond_0

    .line 169
    instance-of v0, p4, Ljava/util/Date;

    if-nez v0, :cond_1

    .line 171
    instance-of v0, p4, Ljava/lang/Number;

    if-nez v0, :cond_2

    .line 173
    instance-of v0, p4, Ljava/lang/String;

    if-nez v0, :cond_3

    .line 248
    new-instance v0, Lcom/alibaba/fastjson/JSONException;

    const-string/jumbo v1, "parse error"

    invoke-direct {v0, v1}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 166
    :cond_0
    return-object v2

    .line 170
    :cond_1
    return-object p4

    .line 172
    :cond_2
    new-instance v0, Ljava/util/Date;

    check-cast p4, Ljava/lang/Number;

    invoke-virtual {p4}, Ljava/lang/Number;->longValue()J

    move-result-wide v2

    invoke-direct {v0, v2, v3}, Ljava/util/Date;-><init>(J)V

    return-object v0

    .line 174
    :cond_3
    check-cast p4, Ljava/lang/String;

    .line 175
    invoke-virtual {p4}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_5

    .line 180
    new-instance v1, Lcom/alibaba/fastjson/parser/JSONScanner;

    invoke-direct {v1, p4}, Lcom/alibaba/fastjson/parser/JSONScanner;-><init>(Ljava/lang/String;)V

    .line 182
    const/4 v0, 0x0

    :try_start_0
    invoke-virtual {v1, v0}, Lcom/alibaba/fastjson/parser/JSONScanner;->scanISO8601DateIfMatch(Z)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-nez v0, :cond_6

    .line 192
    invoke-virtual {v1}, Lcom/alibaba/fastjson/parser/JSONScanner;->close()V

    .line 196
    invoke-virtual {p4}, Ljava/lang/String;->length()I

    move-result v0

    invoke-virtual {p1}, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->getDateFomartPattern()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-ne v0, v1, :cond_8

    .line 198
    :cond_4
    invoke-virtual {p1}, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->getDateFormat()Ljava/text/DateFormat;

    move-result-object v0

    .line 200
    :try_start_1
    invoke-virtual {v0, p4}, Ljava/text/DateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;
    :try_end_1
    .catch Ljava/text/ParseException; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v0

    return-object v0

    .line 176
    :cond_5
    return-object v2

    .line 183
    :cond_6
    :try_start_2
    invoke-virtual {v1}, Lcom/alibaba/fastjson/parser/JSONScanner;->getCalendar()Ljava/util/Calendar;

    move-result-object v0

    const-class v2, Ljava/util/Calendar;

    .line 185
    if-eq p2, v2, :cond_7

    .line 189
    invoke-virtual {v0}, Ljava/util/Calendar;->getTime()Ljava/util/Date;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result-object v0

    .line 192
    invoke-virtual {v1}, Lcom/alibaba/fastjson/parser/JSONScanner;->close()V

    .line 189
    return-object v0

    .line 192
    :cond_7
    invoke-virtual {v1}, Lcom/alibaba/fastjson/parser/JSONScanner;->close()V

    .line 186
    return-object v0

    .line 193
    :catchall_0
    move-exception v0

    .line 192
    invoke-virtual {v1}, Lcom/alibaba/fastjson/parser/JSONScanner;->close()V

    throw v0

    .line 197
    :cond_8
    invoke-virtual {p4}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v1, 0x16

    if-eq v0, v1, :cond_b

    :goto_0
    const-string/jumbo v0, "/Date("

    .line 206
    invoke-virtual {p4, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_c

    :cond_9
    :goto_1
    const-string/jumbo v0, "0000-00-00"

    .line 211
    invoke-virtual {v0, p4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_d

    .line 214
    :cond_a
    return-object v2

    .line 197
    :cond_b
    invoke-virtual {p1}, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->getDateFomartPattern()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "yyyyMMddHHmmssSSSZ"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    goto :goto_0

    .line 200
    :catch_0
    move-exception v0

    goto :goto_0

    :cond_c
    const-string/jumbo v0, ")/"

    .line 206
    invoke-virtual {p4, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_9

    const/4 v0, 0x6

    .line 207
    invoke-virtual {p4}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, -0x2

    invoke-virtual {p4, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p4

    goto :goto_1

    :cond_d
    const-string/jumbo v0, "0000-00-00T00:00:00"

    .line 212
    invoke-virtual {v0, p4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_a

    const-string/jumbo v0, "0001-01-01T00:00:00+08:00"

    .line 213
    invoke-virtual {v0, p4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_a

    const/16 v0, 0x7c

    .line 217
    invoke-virtual {p4, v0}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v0

    const/16 v1, 0x14

    .line 218
    if-gt v0, v1, :cond_f

    .line 244
    :cond_e
    :goto_2
    invoke-static {p4}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0

    .line 245
    new-instance v2, Ljava/util/Date;

    invoke-direct {v2, v0, v1}, Ljava/util/Date;-><init>(J)V

    return-object v2

    .line 219
    :cond_f
    add-int/lit8 v1, v0, 0x1

    invoke-virtual {p4, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    .line 220
    invoke-static {v1}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v1

    const-string/jumbo v2, "GMT"

    .line 221
    invoke-virtual {v1}, Ljava/util/TimeZone;->getID()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_e

    .line 222
    invoke-virtual {p4, v4, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 223
    new-instance v2, Lcom/alibaba/fastjson/parser/JSONScanner;

    invoke-direct {v2, v0}, Lcom/alibaba/fastjson/parser/JSONScanner;-><init>(Ljava/lang/String;)V

    .line 225
    const/4 v0, 0x0

    :try_start_3
    invoke-virtual {v2, v0}, Lcom/alibaba/fastjson/parser/JSONScanner;->scanISO8601DateIfMatch(Z)Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    move-result v0

    if-nez v0, :cond_10

    .line 237
    invoke-virtual {v2}, Lcom/alibaba/fastjson/parser/JSONScanner;->close()V

    goto :goto_2

    .line 226
    :cond_10
    :try_start_4
    invoke-virtual {v2}, Lcom/alibaba/fastjson/parser/JSONScanner;->getCalendar()Ljava/util/Calendar;

    move-result-object v0

    .line 228
    invoke-virtual {v0, v1}, Ljava/util/Calendar;->setTimeZone(Ljava/util/TimeZone;)V

    const-class v1, Ljava/util/Calendar;

    .line 230
    if-eq p2, v1, :cond_11

    .line 234
    invoke-virtual {v0}, Ljava/util/Calendar;->getTime()Ljava/util/Date;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    move-result-object v0

    .line 237
    invoke-virtual {v2}, Lcom/alibaba/fastjson/parser/JSONScanner;->close()V

    .line 234
    return-object v0

    .line 237
    :cond_11
    invoke-virtual {v2}, Lcom/alibaba/fastjson/parser/JSONScanner;->close()V

    .line 231
    return-object v0

    .line 238
    :catchall_1
    move-exception v0

    .line 237
    invoke-virtual {v2}, Lcom/alibaba/fastjson/parser/JSONScanner;->close()V

    throw v0
.end method

.method public getFastMatchToken()I
    .locals 1

    .prologue
    const/4 v0, 0x2

    .line 252
    return v0
.end method

.method public write(Lcom/alibaba/fastjson/serializer/JSONSerializer;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/reflect/Type;I)V
    .locals 14
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 45
    iget-object v4, p1, Lcom/alibaba/fastjson/serializer/JSONSerializer;->out:Lcom/alibaba/fastjson/serializer/SerializeWriter;

    .line 47
    if-eqz p2, :cond_1

    .line 53
    move-object/from16 v0, p2

    instance-of v2, v0, Ljava/util/Date;

    if-nez v2, :cond_2

    .line 56
    invoke-static/range {p2 .. p2}, Lcom/alibaba/fastjson/util/TypeUtils;->castToDate(Ljava/lang/Object;)Ljava/util/Date;

    move-result-object v2

    .line 59
    :goto_0
    sget-object v3, Lcom/alibaba/fastjson/serializer/SerializerFeature;->WriteDateUseDateFormat:Lcom/alibaba/fastjson/serializer/SerializerFeature;

    invoke-virtual {v4, v3}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->isEnabled(Lcom/alibaba/fastjson/serializer/SerializerFeature;)Z

    move-result v3

    if-nez v3, :cond_3

    .line 70
    sget-object v3, Lcom/alibaba/fastjson/serializer/SerializerFeature;->WriteClassName:Lcom/alibaba/fastjson/serializer/SerializerFeature;

    invoke-virtual {v4, v3}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->isEnabled(Lcom/alibaba/fastjson/serializer/SerializerFeature;)Z

    move-result v3

    if-nez v3, :cond_5

    .line 87
    :cond_0
    invoke-virtual {v2}, Ljava/util/Date;->getTime()J

    move-result-wide v6

    .line 88
    sget-object v2, Lcom/alibaba/fastjson/serializer/SerializerFeature;->UseISO8601DateFormat:Lcom/alibaba/fastjson/serializer/SerializerFeature;

    invoke-virtual {v4, v2}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->isEnabled(Lcom/alibaba/fastjson/serializer/SerializerFeature;)Z

    move-result v2

    if-nez v2, :cond_7

    .line 158
    invoke-virtual {v4, v6, v7}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->writeLong(J)V

    .line 160
    :goto_1
    return-void

    .line 48
    :cond_1
    invoke-virtual {v4}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->writeNull()V

    .line 49
    return-void

    :cond_2
    move-object/from16 v2, p2

    .line 54
    check-cast v2, Ljava/util/Date;

    goto :goto_0

    .line 60
    :cond_3
    invoke-virtual {p1}, Lcom/alibaba/fastjson/serializer/JSONSerializer;->getDateFormat()Ljava/text/DateFormat;

    move-result-object v3

    .line 61
    if-eqz v3, :cond_4

    .line 65
    :goto_2
    invoke-virtual {v3, v2}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v2

    .line 66
    invoke-virtual {v4, v2}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->writeString(Ljava/lang/String;)V

    .line 67
    return-void

    .line 62
    :cond_4
    new-instance v3, Ljava/text/SimpleDateFormat;

    sget-object v5, Lcom/alibaba/fastjson/JSON;->DEFFAULT_DATE_FORMAT:Ljava/lang/String;

    iget-object v6, p1, Lcom/alibaba/fastjson/serializer/JSONSerializer;->locale:Ljava/util/Locale;

    invoke-direct {v3, v5, v6}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    .line 63
    iget-object v5, p1, Lcom/alibaba/fastjson/serializer/JSONSerializer;->timeZone:Ljava/util/TimeZone;

    invoke-virtual {v3, v5}, Ljava/text/DateFormat;->setTimeZone(Ljava/util/TimeZone;)V

    goto :goto_2

    .line 71
    :cond_5
    invoke-virtual/range {p2 .. p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    move-object/from16 v0, p4

    if-eq v3, v0, :cond_0

    .line 72
    invoke-virtual/range {p2 .. p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    const-class v3, Ljava/util/Date;

    if-eq v2, v3, :cond_6

    const/16 v2, 0x7b

    .line 77
    invoke-virtual {v4, v2}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write(I)V

    .line 78
    sget-object v2, Lcom/alibaba/fastjson/JSON;->DEFAULT_TYPE_KEY:Ljava/lang/String;

    invoke-virtual {v4, v2}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->writeFieldName(Ljava/lang/String;)V

    .line 79
    invoke-virtual/range {p2 .. p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Lcom/alibaba/fastjson/serializer/JSONSerializer;->write(Ljava/lang/String;)V

    const-string/jumbo v2, "val"

    .line 80
    check-cast p2, Ljava/util/Date;

    invoke-virtual/range {p2 .. p2}, Ljava/util/Date;->getTime()J

    move-result-wide v6

    const/16 v3, 0x2c

    invoke-virtual {v4, v3, v2, v6, v7}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->writeFieldValue(CLjava/lang/String;J)V

    const/16 v2, 0x7d

    .line 81
    invoke-virtual {v4, v2}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write(I)V

    .line 83
    :goto_3
    return-void

    :cond_6
    const-string/jumbo v2, "new Date("

    .line 73
    invoke-virtual {v4, v2}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write(Ljava/lang/String;)V

    .line 74
    check-cast p2, Ljava/util/Date;

    invoke-virtual/range {p2 .. p2}, Ljava/util/Date;->getTime()J

    move-result-wide v2

    invoke-virtual {v4, v2, v3}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->writeLong(J)V

    const/16 v2, 0x29

    .line 75
    invoke-virtual {v4, v2}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write(I)V

    goto :goto_3

    .line 89
    :cond_7
    sget-object v2, Lcom/alibaba/fastjson/serializer/SerializerFeature;->UseSingleQuotes:Lcom/alibaba/fastjson/serializer/SerializerFeature;

    invoke-virtual {v4, v2}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->isEnabled(Lcom/alibaba/fastjson/serializer/SerializerFeature;)Z

    move-result v2

    if-nez v2, :cond_9

    const/16 v2, 0x22

    .line 90
    :goto_4
    invoke-virtual {v4, v2}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write(I)V

    .line 92
    iget-object v3, p1, Lcom/alibaba/fastjson/serializer/JSONSerializer;->timeZone:Ljava/util/TimeZone;

    iget-object v5, p1, Lcom/alibaba/fastjson/serializer/JSONSerializer;->locale:Ljava/util/Locale;

    invoke-static {v3, v5}, Ljava/util/Calendar;->getInstance(Ljava/util/TimeZone;Ljava/util/Locale;)Ljava/util/Calendar;

    move-result-object v5

    .line 93
    invoke-virtual {v5, v6, v7}, Ljava/util/Calendar;->setTimeInMillis(J)V

    const/4 v3, 0x1

    .line 95
    invoke-virtual {v5, v3}, Ljava/util/Calendar;->get(I)I

    move-result v6

    const/4 v3, 0x2

    .line 96
    invoke-virtual {v5, v3}, Ljava/util/Calendar;->get(I)I

    move-result v3

    add-int/lit8 v7, v3, 0x1

    const/4 v3, 0x5

    .line 97
    invoke-virtual {v5, v3}, Ljava/util/Calendar;->get(I)I

    move-result v8

    const/16 v3, 0xb

    .line 98
    invoke-virtual {v5, v3}, Ljava/util/Calendar;->get(I)I

    move-result v9

    const/16 v3, 0xc

    .line 99
    invoke-virtual {v5, v3}, Ljava/util/Calendar;->get(I)I

    move-result v10

    const/16 v3, 0xd

    .line 100
    invoke-virtual {v5, v3}, Ljava/util/Calendar;->get(I)I

    move-result v11

    const/16 v3, 0xe

    .line 101
    invoke-virtual {v5, v3}, Ljava/util/Calendar;->get(I)I

    move-result v12

    .line 104
    if-nez v12, :cond_a

    .line 115
    if-eqz v11, :cond_b

    :cond_8
    const-string/jumbo v3, "0000-00-00T00:00:00"

    .line 121
    invoke-virtual {v3}, Ljava/lang/String;->toCharArray()[C

    move-result-object v3

    const/16 v12, 0x13

    .line 122
    invoke-static {v11, v12, v3}, Lcom/alibaba/fastjson/util/IOUtils;->getChars(II[C)V

    const/16 v11, 0x10

    .line 123
    invoke-static {v10, v11, v3}, Lcom/alibaba/fastjson/util/IOUtils;->getChars(II[C)V

    const/16 v10, 0xd

    .line 124
    invoke-static {v9, v10, v3}, Lcom/alibaba/fastjson/util/IOUtils;->getChars(II[C)V

    const/16 v9, 0xa

    .line 125
    invoke-static {v8, v9, v3}, Lcom/alibaba/fastjson/util/IOUtils;->getChars(II[C)V

    const/4 v8, 0x7

    .line 126
    invoke-static {v7, v8, v3}, Lcom/alibaba/fastjson/util/IOUtils;->getChars(II[C)V

    const/4 v7, 0x4

    .line 127
    invoke-static {v6, v7, v3}, Lcom/alibaba/fastjson/util/IOUtils;->getChars(II[C)V

    .line 131
    :goto_5
    invoke-virtual {v4, v3}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write([C)V

    .line 133
    invoke-virtual {v5}, Ljava/util/Calendar;->getTimeZone()Ljava/util/TimeZone;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/TimeZone;->getRawOffset()I

    move-result v3

    const v5, 0x36ee80

    div-int/2addr v3, v5

    .line 134
    if-eqz v3, :cond_c

    const/16 v5, 0x9

    .line 137
    if-gt v3, v5, :cond_d

    .line 140
    if-gtz v3, :cond_e

    const/16 v5, -0x9

    .line 144
    if-lt v3, v5, :cond_f

    .line 147
    if-ltz v3, :cond_10

    :goto_6
    const-string/jumbo v3, ":00"

    .line 153
    invoke-virtual {v4, v3}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->append(Ljava/lang/CharSequence;)Lcom/alibaba/fastjson/serializer/SerializeWriter;

    .line 156
    :goto_7
    invoke-virtual {v4, v2}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write(I)V

    goto/16 :goto_1

    :cond_9
    const/16 v2, 0x27

    .line 89
    goto/16 :goto_4

    :cond_a
    const-string/jumbo v3, "0000-00-00T00:00:00.000"

    .line 105
    invoke-virtual {v3}, Ljava/lang/String;->toCharArray()[C

    move-result-object v3

    const/16 v13, 0x17

    .line 106
    invoke-static {v12, v13, v3}, Lcom/alibaba/fastjson/util/IOUtils;->getChars(II[C)V

    const/16 v12, 0x13

    .line 107
    invoke-static {v11, v12, v3}, Lcom/alibaba/fastjson/util/IOUtils;->getChars(II[C)V

    const/16 v11, 0x10

    .line 108
    invoke-static {v10, v11, v3}, Lcom/alibaba/fastjson/util/IOUtils;->getChars(II[C)V

    const/16 v10, 0xd

    .line 109
    invoke-static {v9, v10, v3}, Lcom/alibaba/fastjson/util/IOUtils;->getChars(II[C)V

    const/16 v9, 0xa

    .line 110
    invoke-static {v8, v9, v3}, Lcom/alibaba/fastjson/util/IOUtils;->getChars(II[C)V

    const/4 v8, 0x7

    .line 111
    invoke-static {v7, v8, v3}, Lcom/alibaba/fastjson/util/IOUtils;->getChars(II[C)V

    const/4 v7, 0x4

    .line 112
    invoke-static {v6, v7, v3}, Lcom/alibaba/fastjson/util/IOUtils;->getChars(II[C)V

    goto :goto_5

    .line 115
    :cond_b
    if-nez v10, :cond_8

    if-nez v9, :cond_8

    const-string/jumbo v3, "0000-00-00"

    .line 116
    invoke-virtual {v3}, Ljava/lang/String;->toCharArray()[C

    move-result-object v3

    const/16 v9, 0xa

    .line 117
    invoke-static {v8, v9, v3}, Lcom/alibaba/fastjson/util/IOUtils;->getChars(II[C)V

    const/4 v8, 0x7

    .line 118
    invoke-static {v7, v8, v3}, Lcom/alibaba/fastjson/util/IOUtils;->getChars(II[C)V

    const/4 v7, 0x4

    .line 119
    invoke-static {v6, v7, v3}, Lcom/alibaba/fastjson/util/IOUtils;->getChars(II[C)V

    goto :goto_5

    :cond_c
    const/16 v3, 0x5a

    .line 135
    invoke-virtual {v4, v3}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write(I)V

    goto :goto_7

    :cond_d
    const/16 v5, 0x2b

    .line 138
    invoke-virtual {v4, v5}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write(I)V

    .line 139
    invoke-virtual {v4, v3}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->writeInt(I)V

    goto :goto_6

    :cond_e
    const/16 v5, 0x2b

    .line 141
    invoke-virtual {v4, v5}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write(I)V

    const/16 v5, 0x30

    .line 142
    invoke-virtual {v4, v5}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write(I)V

    .line 143
    invoke-virtual {v4, v3}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->writeInt(I)V

    goto :goto_6

    :cond_f
    const/16 v5, 0x2d

    .line 145
    invoke-virtual {v4, v5}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write(I)V

    .line 146
    invoke-virtual {v4, v3}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->writeInt(I)V

    goto :goto_6

    :cond_10
    const/16 v5, 0x2d

    .line 148
    invoke-virtual {v4, v5}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write(I)V

    const/16 v5, 0x30

    .line 149
    invoke-virtual {v4, v5}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write(I)V

    .line 150
    invoke-virtual {v4, v3}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->writeInt(I)V

    goto/16 :goto_6
.end method
