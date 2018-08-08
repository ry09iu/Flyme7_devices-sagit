.class public Lcom/alibaba/fastjson/serializer/CalendarCodec;
.super Ljava/lang/Object;
.source "CalendarCodec.java"

# interfaces
.implements Lcom/alibaba/fastjson/serializer/ObjectSerializer;
.implements Lcom/alibaba/fastjson/parser/deserializer/ObjectDeserializer;


# static fields
.field public static final instance:Lcom/alibaba/fastjson/serializer/CalendarCodec;


# instance fields
.field private dateFactory:Ljavax/xml/datatype/DatatypeFactory;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 21
    new-instance v0, Lcom/alibaba/fastjson/serializer/CalendarCodec;

    invoke-direct {v0}, Lcom/alibaba/fastjson/serializer/CalendarCodec;-><init>()V

    sput-object v0, Lcom/alibaba/fastjson/serializer/CalendarCodec;->instance:Lcom/alibaba/fastjson/serializer/CalendarCodec;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createXMLGregorianCalendar(Ljava/util/Calendar;)Ljavax/xml/datatype/XMLGregorianCalendar;
    .locals 3

    .prologue
    .line 126
    iget-object v0, p0, Lcom/alibaba/fastjson/serializer/CalendarCodec;->dateFactory:Ljavax/xml/datatype/DatatypeFactory;

    if-eqz v0, :cond_0

    .line 133
    :goto_0
    iget-object v0, p0, Lcom/alibaba/fastjson/serializer/CalendarCodec;->dateFactory:Ljavax/xml/datatype/DatatypeFactory;

    check-cast p1, Ljava/util/GregorianCalendar;

    invoke-virtual {v0, p1}, Ljavax/xml/datatype/DatatypeFactory;->newXMLGregorianCalendar(Ljava/util/GregorianCalendar;)Ljavax/xml/datatype/XMLGregorianCalendar;

    move-result-object v0

    return-object v0

    .line 128
    :cond_0
    :try_start_0
    invoke-static {}, Ljavax/xml/datatype/DatatypeFactory;->newInstance()Ljavax/xml/datatype/DatatypeFactory;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/fastjson/serializer/CalendarCodec;->dateFactory:Ljavax/xml/datatype/DatatypeFactory;
    :try_end_0
    .catch Ljavax/xml/datatype/DatatypeConfigurationException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 131
    :catch_0
    move-exception v0

    .line 130
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string/jumbo v2, "Could not obtain an instance of DatatypeFactory."

    invoke-direct {v1, v2, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public deserialze(Lcom/alibaba/fastjson/parser/DefaultJSONParser;Ljava/lang/reflect/Type;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/alibaba/fastjson/parser/DefaultJSONParser;",
            "Ljava/lang/reflect/Type;",
            "Ljava/lang/Object;",
            ")TT;"
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 103
    sget-object v0, Lcom/alibaba/fastjson/serializer/DateCodec;->instance:Lcom/alibaba/fastjson/serializer/DateCodec;

    invoke-virtual {v0, p1, p2, p3}, Lcom/alibaba/fastjson/serializer/DateCodec;->deserialze(Lcom/alibaba/fastjson/parser/DefaultJSONParser;Ljava/lang/reflect/Type;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 105
    instance-of v1, v0, Ljava/util/Calendar;

    if-nez v1, :cond_0

    .line 109
    check-cast v0, Ljava/util/Date;

    .line 110
    if-eqz v0, :cond_1

    .line 114
    iget-object v1, p1, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->lexer:Lcom/alibaba/fastjson/parser/JSONLexer;

    .line 115
    invoke-interface {v1}, Lcom/alibaba/fastjson/parser/JSONLexer;->getTimeZone()Ljava/util/TimeZone;

    move-result-object v2

    invoke-interface {v1}, Lcom/alibaba/fastjson/parser/JSONLexer;->getLocale()Ljava/util/Locale;

    move-result-object v1

    invoke-static {v2, v1}, Ljava/util/Calendar;->getInstance(Ljava/util/TimeZone;Ljava/util/Locale;)Ljava/util/Calendar;

    move-result-object v1

    .line 116
    invoke-virtual {v1, v0}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    const-class v0, Ljavax/xml/datatype/XMLGregorianCalendar;

    .line 118
    if-eq p2, v0, :cond_2

    .line 122
    return-object v1

    .line 106
    :cond_0
    return-object v0

    .line 111
    :cond_1
    return-object v2

    :cond_2
    move-object v0, v1

    .line 119
    check-cast v0, Ljava/util/GregorianCalendar;

    invoke-virtual {p0, v0}, Lcom/alibaba/fastjson/serializer/CalendarCodec;->createXMLGregorianCalendar(Ljava/util/Calendar;)Ljavax/xml/datatype/XMLGregorianCalendar;

    move-result-object v0

    return-object v0
.end method

.method public getFastMatchToken()I
    .locals 1

    .prologue
    const/4 v0, 0x2

    .line 137
    return v0
.end method

.method public write(Lcom/alibaba/fastjson/serializer/JSONSerializer;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/reflect/Type;I)V
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 27
    iget-object v2, p1, Lcom/alibaba/fastjson/serializer/JSONSerializer;->out:Lcom/alibaba/fastjson/serializer/SerializeWriter;

    .line 29
    if-eqz p2, :cond_0

    .line 35
    instance-of v0, p2, Ljavax/xml/datatype/XMLGregorianCalendar;

    if-nez v0, :cond_1

    .line 38
    check-cast p2, Ljava/util/Calendar;

    .line 41
    :goto_0
    sget-object v0, Lcom/alibaba/fastjson/serializer/SerializerFeature;->UseISO8601DateFormat:Lcom/alibaba/fastjson/serializer/SerializerFeature;

    invoke-virtual {v2, v0}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->isEnabled(Lcom/alibaba/fastjson/serializer/SerializerFeature;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 96
    invoke-virtual {p2}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v0

    .line 97
    invoke-virtual {p1, v0}, Lcom/alibaba/fastjson/serializer/JSONSerializer;->write(Ljava/lang/Object;)V

    .line 99
    :goto_1
    return-void

    .line 30
    :cond_0
    invoke-virtual {v2}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->writeNull()V

    .line 31
    return-void

    .line 36
    :cond_1
    check-cast p2, Ljavax/xml/datatype/XMLGregorianCalendar;

    invoke-virtual {p2}, Ljavax/xml/datatype/XMLGregorianCalendar;->toGregorianCalendar()Ljava/util/GregorianCalendar;

    move-result-object p2

    goto :goto_0

    .line 42
    :cond_2
    sget-object v0, Lcom/alibaba/fastjson/serializer/SerializerFeature;->UseSingleQuotes:Lcom/alibaba/fastjson/serializer/SerializerFeature;

    invoke-virtual {v2, v0}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->isEnabled(Lcom/alibaba/fastjson/serializer/SerializerFeature;)Z

    move-result v0

    if-nez v0, :cond_4

    const/16 v0, 0x22

    .line 45
    :goto_2
    invoke-virtual {v2, v0}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->append(C)Lcom/alibaba/fastjson/serializer/SerializeWriter;

    const/4 v1, 0x1

    .line 47
    invoke-virtual {p2, v1}, Ljava/util/Calendar;->get(I)I

    move-result v3

    const/4 v1, 0x2

    .line 48
    invoke-virtual {p2, v1}, Ljava/util/Calendar;->get(I)I

    move-result v1

    add-int/lit8 v4, v1, 0x1

    const/4 v1, 0x5

    .line 49
    invoke-virtual {p2, v1}, Ljava/util/Calendar;->get(I)I

    move-result v5

    const/16 v1, 0xb

    .line 50
    invoke-virtual {p2, v1}, Ljava/util/Calendar;->get(I)I

    move-result v6

    const/16 v1, 0xc

    .line 51
    invoke-virtual {p2, v1}, Ljava/util/Calendar;->get(I)I

    move-result v7

    const/16 v1, 0xd

    .line 52
    invoke-virtual {p2, v1}, Ljava/util/Calendar;->get(I)I

    move-result v8

    const/16 v1, 0xe

    .line 53
    invoke-virtual {p2, v1}, Ljava/util/Calendar;->get(I)I

    move-result v9

    .line 56
    if-nez v9, :cond_5

    .line 67
    if-eqz v8, :cond_6

    :cond_3
    const-string/jumbo v1, "0000-00-00T00:00:00"

    .line 73
    invoke-virtual {v1}, Ljava/lang/String;->toCharArray()[C

    move-result-object v1

    const/16 v9, 0x13

    .line 74
    invoke-static {v8, v9, v1}, Lcom/alibaba/fastjson/util/IOUtils;->getChars(II[C)V

    const/16 v8, 0x10

    .line 75
    invoke-static {v7, v8, v1}, Lcom/alibaba/fastjson/util/IOUtils;->getChars(II[C)V

    const/16 v7, 0xd

    .line 76
    invoke-static {v6, v7, v1}, Lcom/alibaba/fastjson/util/IOUtils;->getChars(II[C)V

    const/16 v6, 0xa

    .line 77
    invoke-static {v5, v6, v1}, Lcom/alibaba/fastjson/util/IOUtils;->getChars(II[C)V

    const/4 v5, 0x7

    .line 78
    invoke-static {v4, v5, v1}, Lcom/alibaba/fastjson/util/IOUtils;->getChars(II[C)V

    const/4 v4, 0x4

    .line 79
    invoke-static {v3, v4, v1}, Lcom/alibaba/fastjson/util/IOUtils;->getChars(II[C)V

    .line 83
    :goto_3
    invoke-virtual {v2, v1}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write([C)V

    .line 85
    invoke-virtual {p2}, Ljava/util/Calendar;->getTimeZone()Ljava/util/TimeZone;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/TimeZone;->getRawOffset()I

    move-result v1

    const v3, 0x36ee80

    div-int/2addr v1, v3

    .line 86
    if-eqz v1, :cond_7

    .line 88
    if-gtz v1, :cond_8

    const-string/jumbo v3, "-"

    .line 91
    invoke-virtual {v2, v3}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->append(Ljava/lang/CharSequence;)Lcom/alibaba/fastjson/serializer/SerializeWriter;

    move-result-object v3

    const-string/jumbo v4, "%02d"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    neg-int v1, v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v5, v6

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->append(Ljava/lang/CharSequence;)Lcom/alibaba/fastjson/serializer/SerializeWriter;

    move-result-object v1

    const-string/jumbo v3, ":00"

    invoke-virtual {v1, v3}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->append(Ljava/lang/CharSequence;)Lcom/alibaba/fastjson/serializer/SerializeWriter;

    .line 94
    :goto_4
    invoke-virtual {v2, v0}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->append(C)Lcom/alibaba/fastjson/serializer/SerializeWriter;

    goto/16 :goto_1

    :cond_4
    const/16 v0, 0x27

    .line 42
    goto/16 :goto_2

    :cond_5
    const-string/jumbo v1, "0000-00-00T00:00:00.000"

    .line 57
    invoke-virtual {v1}, Ljava/lang/String;->toCharArray()[C

    move-result-object v1

    const/16 v10, 0x17

    .line 58
    invoke-static {v9, v10, v1}, Lcom/alibaba/fastjson/util/IOUtils;->getChars(II[C)V

    const/16 v9, 0x13

    .line 59
    invoke-static {v8, v9, v1}, Lcom/alibaba/fastjson/util/IOUtils;->getChars(II[C)V

    const/16 v8, 0x10

    .line 60
    invoke-static {v7, v8, v1}, Lcom/alibaba/fastjson/util/IOUtils;->getChars(II[C)V

    const/16 v7, 0xd

    .line 61
    invoke-static {v6, v7, v1}, Lcom/alibaba/fastjson/util/IOUtils;->getChars(II[C)V

    const/16 v6, 0xa

    .line 62
    invoke-static {v5, v6, v1}, Lcom/alibaba/fastjson/util/IOUtils;->getChars(II[C)V

    const/4 v5, 0x7

    .line 63
    invoke-static {v4, v5, v1}, Lcom/alibaba/fastjson/util/IOUtils;->getChars(II[C)V

    const/4 v4, 0x4

    .line 64
    invoke-static {v3, v4, v1}, Lcom/alibaba/fastjson/util/IOUtils;->getChars(II[C)V

    goto :goto_3

    .line 67
    :cond_6
    if-nez v7, :cond_3

    if-nez v6, :cond_3

    const-string/jumbo v1, "0000-00-00"

    .line 68
    invoke-virtual {v1}, Ljava/lang/String;->toCharArray()[C

    move-result-object v1

    const/16 v6, 0xa

    .line 69
    invoke-static {v5, v6, v1}, Lcom/alibaba/fastjson/util/IOUtils;->getChars(II[C)V

    const/4 v5, 0x7

    .line 70
    invoke-static {v4, v5, v1}, Lcom/alibaba/fastjson/util/IOUtils;->getChars(II[C)V

    const/4 v4, 0x4

    .line 71
    invoke-static {v3, v4, v1}, Lcom/alibaba/fastjson/util/IOUtils;->getChars(II[C)V

    goto :goto_3

    :cond_7
    const-string/jumbo v1, "Z"

    .line 87
    invoke-virtual {v2, v1}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->append(Ljava/lang/CharSequence;)Lcom/alibaba/fastjson/serializer/SerializeWriter;

    goto :goto_4

    :cond_8
    const-string/jumbo v3, "+"

    .line 89
    invoke-virtual {v2, v3}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->append(Ljava/lang/CharSequence;)Lcom/alibaba/fastjson/serializer/SerializeWriter;

    move-result-object v3

    const-string/jumbo v4, "%02d"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v5, v6

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->append(Ljava/lang/CharSequence;)Lcom/alibaba/fastjson/serializer/SerializeWriter;

    move-result-object v1

    const-string/jumbo v3, ":00"

    invoke-virtual {v1, v3}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->append(Ljava/lang/CharSequence;)Lcom/alibaba/fastjson/serializer/SerializeWriter;

    goto :goto_4
.end method
