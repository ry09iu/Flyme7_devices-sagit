.class public Lcom/alibaba/fastjson/serializer/JSONSerializer;
.super Lcom/alibaba/fastjson/serializer/SerializeFilterable;
.source "JSONSerializer.java"


# instance fields
.field protected final config:Lcom/alibaba/fastjson/serializer/SerializeConfig;

.field protected context:Lcom/alibaba/fastjson/serializer/SerialContext;

.field private dateFormat:Ljava/text/DateFormat;

.field private dateFormatPattern:Ljava/lang/String;

.field private indent:Ljava/lang/String;

.field private indentCount:I

.field protected locale:Ljava/util/Locale;

.field public final out:Lcom/alibaba/fastjson/serializer/SerializeWriter;

.field protected references:Ljava/util/IdentityHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/IdentityHashMap",
            "<",
            "Ljava/lang/Object;",
            "Lcom/alibaba/fastjson/serializer/SerialContext;",
            ">;"
        }
    .end annotation
.end field

.field protected timeZone:Ljava/util/TimeZone;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 52
    new-instance v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;

    invoke-direct {v0}, Lcom/alibaba/fastjson/serializer/SerializeWriter;-><init>()V

    invoke-static {}, Lcom/alibaba/fastjson/serializer/SerializeConfig;->getGlobalInstance()Lcom/alibaba/fastjson/serializer/SerializeConfig;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/alibaba/fastjson/serializer/JSONSerializer;-><init>(Lcom/alibaba/fastjson/serializer/SerializeWriter;Lcom/alibaba/fastjson/serializer/SerializeConfig;)V

    .line 53
    return-void
.end method

.method public constructor <init>(Lcom/alibaba/fastjson/serializer/SerializeConfig;)V
    .locals 1

    .prologue
    .line 60
    new-instance v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;

    invoke-direct {v0}, Lcom/alibaba/fastjson/serializer/SerializeWriter;-><init>()V

    invoke-direct {p0, v0, p1}, Lcom/alibaba/fastjson/serializer/JSONSerializer;-><init>(Lcom/alibaba/fastjson/serializer/SerializeWriter;Lcom/alibaba/fastjson/serializer/SerializeConfig;)V

    .line 61
    return-void
.end method

.method public constructor <init>(Lcom/alibaba/fastjson/serializer/SerializeWriter;)V
    .locals 1

    .prologue
    .line 56
    invoke-static {}, Lcom/alibaba/fastjson/serializer/SerializeConfig;->getGlobalInstance()Lcom/alibaba/fastjson/serializer/SerializeConfig;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/alibaba/fastjson/serializer/JSONSerializer;-><init>(Lcom/alibaba/fastjson/serializer/SerializeWriter;Lcom/alibaba/fastjson/serializer/SerializeConfig;)V

    .line 57
    return-void
.end method

.method public constructor <init>(Lcom/alibaba/fastjson/serializer/SerializeWriter;Lcom/alibaba/fastjson/serializer/SerializeConfig;)V
    .locals 1

    .prologue
    .line 63
    invoke-direct {p0}, Lcom/alibaba/fastjson/serializer/SerializeFilterable;-><init>()V

    const/4 v0, 0x0

    .line 39
    iput v0, p0, Lcom/alibaba/fastjson/serializer/JSONSerializer;->indentCount:I

    const-string/jumbo v0, "\t"

    .line 40
    iput-object v0, p0, Lcom/alibaba/fastjson/serializer/JSONSerializer;->indent:Ljava/lang/String;

    const/4 v0, 0x0

    .line 45
    iput-object v0, p0, Lcom/alibaba/fastjson/serializer/JSONSerializer;->references:Ljava/util/IdentityHashMap;

    .line 48
    sget-object v0, Lcom/alibaba/fastjson/JSON;->defaultTimeZone:Ljava/util/TimeZone;

    iput-object v0, p0, Lcom/alibaba/fastjson/serializer/JSONSerializer;->timeZone:Ljava/util/TimeZone;

    .line 49
    sget-object v0, Lcom/alibaba/fastjson/JSON;->defaultLocale:Ljava/util/Locale;

    iput-object v0, p0, Lcom/alibaba/fastjson/serializer/JSONSerializer;->locale:Ljava/util/Locale;

    .line 64
    iput-object p1, p0, Lcom/alibaba/fastjson/serializer/JSONSerializer;->out:Lcom/alibaba/fastjson/serializer/SerializeWriter;

    .line 65
    iput-object p2, p0, Lcom/alibaba/fastjson/serializer/JSONSerializer;->config:Lcom/alibaba/fastjson/serializer/SerializeConfig;

    .line 66
    return-void
.end method

.method public static write(Lcom/alibaba/fastjson/serializer/SerializeWriter;Ljava/lang/Object;)V
    .locals 1

    .prologue
    .line 267
    new-instance v0, Lcom/alibaba/fastjson/serializer/JSONSerializer;

    invoke-direct {v0, p0}, Lcom/alibaba/fastjson/serializer/JSONSerializer;-><init>(Lcom/alibaba/fastjson/serializer/SerializeWriter;)V

    .line 268
    invoke-virtual {v0, p1}, Lcom/alibaba/fastjson/serializer/JSONSerializer;->write(Ljava/lang/Object;)V

    .line 269
    return-void
.end method

.method public static write(Ljava/io/Writer;Ljava/lang/Object;)V
    .locals 4

    .prologue
    .line 254
    new-instance v1, Lcom/alibaba/fastjson/serializer/SerializeWriter;

    invoke-direct {v1}, Lcom/alibaba/fastjson/serializer/SerializeWriter;-><init>()V

    .line 256
    :try_start_0
    new-instance v0, Lcom/alibaba/fastjson/serializer/JSONSerializer;

    invoke-direct {v0, v1}, Lcom/alibaba/fastjson/serializer/JSONSerializer;-><init>(Lcom/alibaba/fastjson/serializer/SerializeWriter;)V

    .line 257
    invoke-virtual {v0, p1}, Lcom/alibaba/fastjson/serializer/JSONSerializer;->write(Ljava/lang/Object;)V

    .line 258
    invoke-virtual {v1, p0}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->writeTo(Ljava/io/Writer;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 262
    invoke-virtual {v1}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->close()V

    .line 264
    return-void

    .line 263
    :catch_0
    move-exception v0

    .line 260
    :try_start_1
    new-instance v2, Lcom/alibaba/fastjson/JSONException;

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3, v0}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    move-exception v0

    .line 262
    invoke-virtual {v1}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->close()V

    throw v0
.end method


# virtual methods
.method public checkValue(Lcom/alibaba/fastjson/serializer/SerializeFilterable;)Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 193
    iget-object v1, p0, Lcom/alibaba/fastjson/serializer/JSONSerializer;->valueFilters:Ljava/util/List;

    if-nez v1, :cond_4

    :cond_0
    iget-object v1, p0, Lcom/alibaba/fastjson/serializer/JSONSerializer;->contextValueFilters:Ljava/util/List;

    if-nez v1, :cond_6

    .line 194
    :cond_1
    iget-object v1, p1, Lcom/alibaba/fastjson/serializer/SerializeFilterable;->valueFilters:Ljava/util/List;

    if-nez v1, :cond_7

    .line 195
    :cond_2
    iget-object v1, p1, Lcom/alibaba/fastjson/serializer/SerializeFilterable;->contextValueFilters:Ljava/util/List;

    if-nez v1, :cond_8

    .line 196
    :cond_3
    iget-object v1, p0, Lcom/alibaba/fastjson/serializer/JSONSerializer;->out:Lcom/alibaba/fastjson/serializer/SerializeWriter;

    iget-boolean v1, v1, Lcom/alibaba/fastjson/serializer/SerializeWriter;->writeNonStringValueAsString:Z

    if-nez v1, :cond_5

    .line 193
    :goto_0
    return v0

    :cond_4
    iget-object v1, p0, Lcom/alibaba/fastjson/serializer/JSONSerializer;->valueFilters:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_0

    :cond_5
    :goto_1
    const/4 v0, 0x1

    .line 196
    goto :goto_0

    .line 193
    :cond_6
    iget-object v1, p0, Lcom/alibaba/fastjson/serializer/JSONSerializer;->contextValueFilters:Ljava/util/List;

    .line 194
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_1

    goto :goto_1

    :cond_7
    iget-object v1, p1, Lcom/alibaba/fastjson/serializer/SerializeFilterable;->valueFilters:Ljava/util/List;

    .line 195
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_2

    goto :goto_1

    :cond_8
    iget-object v1, p1, Lcom/alibaba/fastjson/serializer/SerializeFilterable;->contextValueFilters:Ljava/util/List;

    .line 196
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_3

    goto :goto_1
.end method

.method public close()V
    .locals 1

    .prologue
    .line 381
    iget-object v0, p0, Lcom/alibaba/fastjson/serializer/JSONSerializer;->out:Lcom/alibaba/fastjson/serializer/SerializeWriter;

    invoke-virtual {v0}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->close()V

    .line 382
    return-void
.end method

.method public config(Lcom/alibaba/fastjson/serializer/SerializerFeature;Z)V
    .locals 1

    .prologue
    .line 238
    iget-object v0, p0, Lcom/alibaba/fastjson/serializer/JSONSerializer;->out:Lcom/alibaba/fastjson/serializer/SerializeWriter;

    invoke-virtual {v0, p1, p2}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->config(Lcom/alibaba/fastjson/serializer/SerializerFeature;Z)V

    .line 239
    return-void
.end method

.method public containsReference(Ljava/lang/Object;)Z
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 142
    iget-object v0, p0, Lcom/alibaba/fastjson/serializer/JSONSerializer;->references:Ljava/util/IdentityHashMap;

    if-eqz v0, :cond_1

    .line 146
    iget-object v0, p0, Lcom/alibaba/fastjson/serializer/JSONSerializer;->references:Ljava/util/IdentityHashMap;

    invoke-virtual {v0, p1}, Ljava/util/IdentityHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/fastjson/serializer/SerialContext;

    .line 147
    if-eqz v0, :cond_2

    .line 151
    iget-object v0, v0, Lcom/alibaba/fastjson/serializer/SerialContext;->fieldName:Ljava/lang/Object;

    .line 153
    if-nez v0, :cond_3

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    .line 143
    :cond_1
    return v1

    .line 148
    :cond_2
    return v1

    .line 153
    :cond_3
    instance-of v2, v0, Ljava/lang/Integer;

    if-nez v2, :cond_0

    instance-of v0, v0, Ljava/lang/String;

    if-nez v0, :cond_0

    move v0, v1

    goto :goto_0
.end method

.method public decrementIdent()V
    .locals 1

    .prologue
    .line 219
    iget v0, p0, Lcom/alibaba/fastjson/serializer/JSONSerializer;->indentCount:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/alibaba/fastjson/serializer/JSONSerializer;->indentCount:I

    .line 220
    return-void
.end method

.method public getContext()Lcom/alibaba/fastjson/serializer/SerialContext;
    .locals 1

    .prologue
    .line 101
    iget-object v0, p0, Lcom/alibaba/fastjson/serializer/JSONSerializer;->context:Lcom/alibaba/fastjson/serializer/SerialContext;

    return-object v0
.end method

.method public getDateFormat()Ljava/text/DateFormat;
    .locals 3

    .prologue
    .line 76
    iget-object v0, p0, Lcom/alibaba/fastjson/serializer/JSONSerializer;->dateFormat:Ljava/text/DateFormat;

    if-eqz v0, :cond_1

    .line 83
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/alibaba/fastjson/serializer/JSONSerializer;->dateFormat:Ljava/text/DateFormat;

    return-object v0

    .line 77
    :cond_1
    iget-object v0, p0, Lcom/alibaba/fastjson/serializer/JSONSerializer;->dateFormatPattern:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 78
    new-instance v0, Ljava/text/SimpleDateFormat;

    iget-object v1, p0, Lcom/alibaba/fastjson/serializer/JSONSerializer;->dateFormatPattern:Ljava/lang/String;

    iget-object v2, p0, Lcom/alibaba/fastjson/serializer/JSONSerializer;->locale:Ljava/util/Locale;

    invoke-direct {v0, v1, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    iput-object v0, p0, Lcom/alibaba/fastjson/serializer/JSONSerializer;->dateFormat:Ljava/text/DateFormat;

    .line 79
    iget-object v0, p0, Lcom/alibaba/fastjson/serializer/JSONSerializer;->dateFormat:Ljava/text/DateFormat;

    iget-object v1, p0, Lcom/alibaba/fastjson/serializer/JSONSerializer;->timeZone:Ljava/util/TimeZone;

    invoke-virtual {v0, v1}, Ljava/text/DateFormat;->setTimeZone(Ljava/util/TimeZone;)V

    goto :goto_0
.end method

.method public getDateFormatPattern()Ljava/lang/String;
    .locals 1

    .prologue
    .line 69
    iget-object v0, p0, Lcom/alibaba/fastjson/serializer/JSONSerializer;->dateFormat:Ljava/text/DateFormat;

    instance-of v0, v0, Ljava/text/SimpleDateFormat;

    if-nez v0, :cond_0

    .line 72
    iget-object v0, p0, Lcom/alibaba/fastjson/serializer/JSONSerializer;->dateFormatPattern:Ljava/lang/String;

    return-object v0

    .line 70
    :cond_0
    iget-object v0, p0, Lcom/alibaba/fastjson/serializer/JSONSerializer;->dateFormat:Ljava/text/DateFormat;

    check-cast v0, Ljava/text/SimpleDateFormat;

    invoke-virtual {v0}, Ljava/text/SimpleDateFormat;->toPattern()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getIndentCount()I
    .locals 1

    .prologue
    .line 211
    iget v0, p0, Lcom/alibaba/fastjson/serializer/JSONSerializer;->indentCount:I

    return v0
.end method

.method public getMapping()Lcom/alibaba/fastjson/serializer/SerializeConfig;
    .locals 1

    .prologue
    .line 250
    iget-object v0, p0, Lcom/alibaba/fastjson/serializer/JSONSerializer;->config:Lcom/alibaba/fastjson/serializer/SerializeConfig;

    return-object v0
.end method

.method public getObjectWriter(Ljava/lang/Class;)Lcom/alibaba/fastjson/serializer/ObjectSerializer;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;)",
            "Lcom/alibaba/fastjson/serializer/ObjectSerializer;"
        }
    .end annotation

    .prologue
    .line 377
    iget-object v0, p0, Lcom/alibaba/fastjson/serializer/JSONSerializer;->config:Lcom/alibaba/fastjson/serializer/SerializeConfig;

    invoke-virtual {v0, p1}, Lcom/alibaba/fastjson/serializer/SerializeConfig;->getObjectWriter(Ljava/lang/Class;)Lcom/alibaba/fastjson/serializer/ObjectSerializer;

    move-result-object v0

    return-object v0
.end method

.method public getWriter()Lcom/alibaba/fastjson/serializer/SerializeWriter;
    .locals 1

    .prologue
    .line 230
    iget-object v0, p0, Lcom/alibaba/fastjson/serializer/JSONSerializer;->out:Lcom/alibaba/fastjson/serializer/SerializeWriter;

    return-object v0
.end method

.method public hasNameFilters(Lcom/alibaba/fastjson/serializer/SerializeFilterable;)Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 201
    iget-object v1, p0, Lcom/alibaba/fastjson/serializer/JSONSerializer;->nameFilters:Ljava/util/List;

    if-nez v1, :cond_1

    :cond_0
    iget-object v1, p1, Lcom/alibaba/fastjson/serializer/SerializeFilterable;->nameFilters:Ljava/util/List;

    if-nez v1, :cond_3

    :goto_0
    return v0

    :cond_1
    iget-object v1, p0, Lcom/alibaba/fastjson/serializer/JSONSerializer;->nameFilters:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_0

    :cond_2
    const/4 v0, 0x1

    .line 202
    goto :goto_0

    .line 201
    :cond_3
    iget-object v1, p1, Lcom/alibaba/fastjson/serializer/SerializeFilterable;->nameFilters:Ljava/util/List;

    .line 202
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-gtz v1, :cond_2

    goto :goto_0
.end method

.method public hasPropertyFilters(Lcom/alibaba/fastjson/serializer/SerializeFilterable;)Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 206
    iget-object v1, p0, Lcom/alibaba/fastjson/serializer/JSONSerializer;->propertyFilters:Ljava/util/List;

    if-nez v1, :cond_1

    :cond_0
    iget-object v1, p1, Lcom/alibaba/fastjson/serializer/SerializeFilterable;->propertyFilters:Ljava/util/List;

    if-nez v1, :cond_3

    :goto_0
    return v0

    :cond_1
    iget-object v1, p0, Lcom/alibaba/fastjson/serializer/JSONSerializer;->propertyFilters:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_0

    :cond_2
    const/4 v0, 0x1

    .line 207
    goto :goto_0

    .line 206
    :cond_3
    iget-object v1, p1, Lcom/alibaba/fastjson/serializer/SerializeFilterable;->propertyFilters:Ljava/util/List;

    .line 207
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-gtz v1, :cond_2

    goto :goto_0
.end method

.method public incrementIndent()V
    .locals 1

    .prologue
    .line 215
    iget v0, p0, Lcom/alibaba/fastjson/serializer/JSONSerializer;->indentCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/alibaba/fastjson/serializer/JSONSerializer;->indentCount:I

    .line 216
    return-void
.end method

.method public isEnabled(Lcom/alibaba/fastjson/serializer/SerializerFeature;)Z
    .locals 1

    .prologue
    .line 242
    iget-object v0, p0, Lcom/alibaba/fastjson/serializer/JSONSerializer;->out:Lcom/alibaba/fastjson/serializer/SerializeWriter;

    invoke-virtual {v0, p1}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->isEnabled(Lcom/alibaba/fastjson/serializer/SerializerFeature;)Z

    move-result v0

    return v0
.end method

.method public final isWriteClassName(Ljava/lang/reflect/Type;Ljava/lang/Object;)Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 135
    iget-object v1, p0, Lcom/alibaba/fastjson/serializer/JSONSerializer;->out:Lcom/alibaba/fastjson/serializer/SerializeWriter;

    sget-object v2, Lcom/alibaba/fastjson/serializer/SerializerFeature;->WriteClassName:Lcom/alibaba/fastjson/serializer/SerializerFeature;

    invoke-virtual {v1, v2}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->isEnabled(Lcom/alibaba/fastjson/serializer/SerializerFeature;)Z

    move-result v1

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    if-eqz p1, :cond_3

    :cond_2
    const/4 v0, 0x1

    .line 137
    goto :goto_0

    .line 135
    :cond_3
    iget-object v1, p0, Lcom/alibaba/fastjson/serializer/JSONSerializer;->out:Lcom/alibaba/fastjson/serializer/SerializeWriter;

    sget-object v2, Lcom/alibaba/fastjson/serializer/SerializerFeature;->NotWriteRootClassName:Lcom/alibaba/fastjson/serializer/SerializerFeature;

    .line 137
    invoke-virtual {v1, v2}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->isEnabled(Lcom/alibaba/fastjson/serializer/SerializerFeature;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/alibaba/fastjson/serializer/JSONSerializer;->context:Lcom/alibaba/fastjson/serializer/SerialContext;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/alibaba/fastjson/serializer/JSONSerializer;->context:Lcom/alibaba/fastjson/serializer/SerialContext;

    iget-object v1, v1, Lcom/alibaba/fastjson/serializer/SerialContext;->parent:Lcom/alibaba/fastjson/serializer/SerialContext;

    if-nez v1, :cond_2

    goto :goto_0
.end method

.method public popContext()V
    .locals 1

    .prologue
    .line 129
    iget-object v0, p0, Lcom/alibaba/fastjson/serializer/JSONSerializer;->context:Lcom/alibaba/fastjson/serializer/SerialContext;

    if-nez v0, :cond_0

    .line 132
    :goto_0
    return-void

    .line 130
    :cond_0
    iget-object v0, p0, Lcom/alibaba/fastjson/serializer/JSONSerializer;->context:Lcom/alibaba/fastjson/serializer/SerialContext;

    iget-object v0, v0, Lcom/alibaba/fastjson/serializer/SerialContext;->parent:Lcom/alibaba/fastjson/serializer/SerialContext;

    iput-object v0, p0, Lcom/alibaba/fastjson/serializer/JSONSerializer;->context:Lcom/alibaba/fastjson/serializer/SerialContext;

    goto :goto_0
.end method

.method public println()V
    .locals 3

    .prologue
    .line 223
    iget-object v0, p0, Lcom/alibaba/fastjson/serializer/JSONSerializer;->out:Lcom/alibaba/fastjson/serializer/SerializeWriter;

    const/16 v1, 0xa

    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write(I)V

    const/4 v0, 0x0

    .line 224
    :goto_0
    iget v1, p0, Lcom/alibaba/fastjson/serializer/JSONSerializer;->indentCount:I

    if-lt v0, v1, :cond_0

    .line 227
    return-void

    .line 225
    :cond_0
    iget-object v1, p0, Lcom/alibaba/fastjson/serializer/JSONSerializer;->out:Lcom/alibaba/fastjson/serializer/SerializeWriter;

    iget-object v2, p0, Lcom/alibaba/fastjson/serializer/JSONSerializer;->indent:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write(Ljava/lang/String;)V

    .line 224
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public setContext(Lcom/alibaba/fastjson/serializer/SerialContext;)V
    .locals 0

    .prologue
    .line 105
    iput-object p1, p0, Lcom/alibaba/fastjson/serializer/JSONSerializer;->context:Lcom/alibaba/fastjson/serializer/SerialContext;

    .line 106
    return-void
.end method

.method public setContext(Lcom/alibaba/fastjson/serializer/SerialContext;Ljava/lang/Object;Ljava/lang/Object;I)V
    .locals 6

    .prologue
    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    .line 109
    invoke-virtual/range {v0 .. v5}, Lcom/alibaba/fastjson/serializer/JSONSerializer;->setContext(Lcom/alibaba/fastjson/serializer/SerialContext;Ljava/lang/Object;Ljava/lang/Object;II)V

    .line 110
    return-void
.end method

.method public setContext(Lcom/alibaba/fastjson/serializer/SerialContext;Ljava/lang/Object;Ljava/lang/Object;II)V
    .locals 6

    .prologue
    .line 113
    iget-object v0, p0, Lcom/alibaba/fastjson/serializer/JSONSerializer;->out:Lcom/alibaba/fastjson/serializer/SerializeWriter;

    iget-boolean v0, v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;->disableCircularReferenceDetect:Z

    if-nez v0, :cond_0

    .line 117
    new-instance v0, Lcom/alibaba/fastjson/serializer/SerialContext;

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    move v5, p5

    invoke-direct/range {v0 .. v5}, Lcom/alibaba/fastjson/serializer/SerialContext;-><init>(Lcom/alibaba/fastjson/serializer/SerialContext;Ljava/lang/Object;Ljava/lang/Object;II)V

    iput-object v0, p0, Lcom/alibaba/fastjson/serializer/JSONSerializer;->context:Lcom/alibaba/fastjson/serializer/SerialContext;

    .line 118
    iget-object v0, p0, Lcom/alibaba/fastjson/serializer/JSONSerializer;->references:Ljava/util/IdentityHashMap;

    if-eqz v0, :cond_1

    .line 121
    :goto_0
    iget-object v0, p0, Lcom/alibaba/fastjson/serializer/JSONSerializer;->references:Ljava/util/IdentityHashMap;

    iget-object v1, p0, Lcom/alibaba/fastjson/serializer/JSONSerializer;->context:Lcom/alibaba/fastjson/serializer/SerialContext;

    invoke-virtual {v0, p2, v1}, Ljava/util/IdentityHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 122
    return-void

    .line 114
    :cond_0
    return-void

    .line 119
    :cond_1
    new-instance v0, Ljava/util/IdentityHashMap;

    invoke-direct {v0}, Ljava/util/IdentityHashMap;-><init>()V

    iput-object v0, p0, Lcom/alibaba/fastjson/serializer/JSONSerializer;->references:Ljava/util/IdentityHashMap;

    goto :goto_0
.end method

.method public setContext(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 2

    .prologue
    .line 125
    iget-object v0, p0, Lcom/alibaba/fastjson/serializer/JSONSerializer;->context:Lcom/alibaba/fastjson/serializer/SerialContext;

    const/4 v1, 0x0

    invoke-virtual {p0, v0, p1, p2, v1}, Lcom/alibaba/fastjson/serializer/JSONSerializer;->setContext(Lcom/alibaba/fastjson/serializer/SerialContext;Ljava/lang/Object;Ljava/lang/Object;I)V

    .line 126
    return-void
.end method

.method public setDateFormat(Ljava/lang/String;)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 94
    iput-object p1, p0, Lcom/alibaba/fastjson/serializer/JSONSerializer;->dateFormatPattern:Ljava/lang/String;

    .line 95
    iget-object v0, p0, Lcom/alibaba/fastjson/serializer/JSONSerializer;->dateFormat:Ljava/text/DateFormat;

    if-nez v0, :cond_0

    .line 98
    :goto_0
    return-void

    .line 96
    :cond_0
    iput-object v1, p0, Lcom/alibaba/fastjson/serializer/JSONSerializer;->dateFormat:Ljava/text/DateFormat;

    goto :goto_0
.end method

.method public setDateFormat(Ljava/text/DateFormat;)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 87
    iput-object p1, p0, Lcom/alibaba/fastjson/serializer/JSONSerializer;->dateFormat:Ljava/text/DateFormat;

    .line 88
    iget-object v0, p0, Lcom/alibaba/fastjson/serializer/JSONSerializer;->dateFormatPattern:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 91
    :goto_0
    return-void

    .line 89
    :cond_0
    iput-object v1, p0, Lcom/alibaba/fastjson/serializer/JSONSerializer;->dateFormatPattern:Ljava/lang/String;

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 234
    iget-object v0, p0, Lcom/alibaba/fastjson/serializer/JSONSerializer;->out:Lcom/alibaba/fastjson/serializer/SerializeWriter;

    invoke-virtual {v0}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final write(Ljava/lang/Object;)V
    .locals 6

    .prologue
    .line 272
    if-eqz p1, :cond_0

    .line 277
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    .line 278
    invoke-virtual {p0, v0}, Lcom/alibaba/fastjson/serializer/JSONSerializer;->getObjectWriter(Ljava/lang/Class;)Lcom/alibaba/fastjson/serializer/ObjectSerializer;

    move-result-object v0

    const/4 v5, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object v1, p0

    move-object v2, p1

    .line 281
    :try_start_0
    invoke-interface/range {v0 .. v5}, Lcom/alibaba/fastjson/serializer/ObjectSerializer;->write(Lcom/alibaba/fastjson/serializer/JSONSerializer;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/reflect/Type;I)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 285
    return-void

    .line 273
    :cond_0
    iget-object v0, p0, Lcom/alibaba/fastjson/serializer/JSONSerializer;->out:Lcom/alibaba/fastjson/serializer/SerializeWriter;

    invoke-virtual {v0}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->writeNull()V

    .line 274
    return-void

    .line 284
    :catch_0
    move-exception v0

    .line 283
    new-instance v1, Lcom/alibaba/fastjson/JSONException;

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public final write(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 373
    sget-object v0, Lcom/alibaba/fastjson/serializer/StringCodec;->instance:Lcom/alibaba/fastjson/serializer/StringCodec;

    invoke-virtual {v0, p0, p1}, Lcom/alibaba/fastjson/serializer/StringCodec;->write(Lcom/alibaba/fastjson/serializer/JSONSerializer;Ljava/lang/String;)V

    .line 374
    return-void
.end method

.method protected final writeKeyValue(CLjava/lang/String;Ljava/lang/Object;)V
    .locals 1

    .prologue
    .line 292
    if-nez p1, :cond_0

    .line 295
    :goto_0
    iget-object v0, p0, Lcom/alibaba/fastjson/serializer/JSONSerializer;->out:Lcom/alibaba/fastjson/serializer/SerializeWriter;

    invoke-virtual {v0, p2}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->writeFieldName(Ljava/lang/String;)V

    .line 296
    invoke-virtual {p0, p3}, Lcom/alibaba/fastjson/serializer/JSONSerializer;->write(Ljava/lang/Object;)V

    .line 297
    return-void

    .line 293
    :cond_0
    iget-object v0, p0, Lcom/alibaba/fastjson/serializer/JSONSerializer;->out:Lcom/alibaba/fastjson/serializer/SerializeWriter;

    invoke-virtual {v0, p1}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write(I)V

    goto :goto_0
.end method

.method public writeNull()V
    .locals 1

    .prologue
    .line 246
    iget-object v0, p0, Lcom/alibaba/fastjson/serializer/JSONSerializer;->out:Lcom/alibaba/fastjson/serializer/SerializeWriter;

    invoke-virtual {v0}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->writeNull()V

    .line 247
    return-void
.end method

.method public writeReference(Ljava/lang/Object;)V
    .locals 2

    .prologue
    .line 157
    iget-object v0, p0, Lcom/alibaba/fastjson/serializer/JSONSerializer;->context:Lcom/alibaba/fastjson/serializer/SerialContext;

    .line 158
    iget-object v1, v0, Lcom/alibaba/fastjson/serializer/SerialContext;->object:Ljava/lang/Object;

    .line 160
    if-eq p1, v1, :cond_1

    .line 165
    iget-object v1, v0, Lcom/alibaba/fastjson/serializer/SerialContext;->parent:Lcom/alibaba/fastjson/serializer/SerialContext;

    .line 167
    if-nez v1, :cond_2

    .line 176
    :cond_0
    :goto_0
    iget-object v1, v0, Lcom/alibaba/fastjson/serializer/SerialContext;->parent:Lcom/alibaba/fastjson/serializer/SerialContext;

    if-eqz v1, :cond_3

    .line 179
    iget-object v0, v0, Lcom/alibaba/fastjson/serializer/SerialContext;->parent:Lcom/alibaba/fastjson/serializer/SerialContext;

    goto :goto_0

    .line 161
    :cond_1
    iget-object v0, p0, Lcom/alibaba/fastjson/serializer/JSONSerializer;->out:Lcom/alibaba/fastjson/serializer/SerializeWriter;

    const-string/jumbo v1, "{\"$ref\":\"@\"}"

    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write(Ljava/lang/String;)V

    .line 162
    return-void

    .line 168
    :cond_2
    iget-object v1, v1, Lcom/alibaba/fastjson/serializer/SerialContext;->object:Ljava/lang/Object;

    if-ne p1, v1, :cond_0

    .line 169
    iget-object v0, p0, Lcom/alibaba/fastjson/serializer/JSONSerializer;->out:Lcom/alibaba/fastjson/serializer/SerializeWriter;

    const-string/jumbo v1, "{\"$ref\":\"..\"}"

    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write(Ljava/lang/String;)V

    .line 170
    return-void

    .line 182
    :cond_3
    iget-object v0, v0, Lcom/alibaba/fastjson/serializer/SerialContext;->object:Ljava/lang/Object;

    if-eq p1, v0, :cond_4

    .line 185
    iget-object v0, p0, Lcom/alibaba/fastjson/serializer/JSONSerializer;->out:Lcom/alibaba/fastjson/serializer/SerializeWriter;

    const-string/jumbo v1, "{\"$ref\":\""

    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write(Ljava/lang/String;)V

    .line 186
    iget-object v0, p0, Lcom/alibaba/fastjson/serializer/JSONSerializer;->references:Ljava/util/IdentityHashMap;

    invoke-virtual {v0, p1}, Ljava/util/IdentityHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/fastjson/serializer/SerialContext;

    invoke-virtual {v0}, Lcom/alibaba/fastjson/serializer/SerialContext;->toString()Ljava/lang/String;

    move-result-object v0

    .line 187
    iget-object v1, p0, Lcom/alibaba/fastjson/serializer/JSONSerializer;->out:Lcom/alibaba/fastjson/serializer/SerializeWriter;

    invoke-virtual {v1, v0}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write(Ljava/lang/String;)V

    .line 188
    iget-object v0, p0, Lcom/alibaba/fastjson/serializer/JSONSerializer;->out:Lcom/alibaba/fastjson/serializer/SerializeWriter;

    const-string/jumbo v1, "\"}"

    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write(Ljava/lang/String;)V

    .line 190
    :goto_1
    return-void

    .line 183
    :cond_4
    iget-object v0, p0, Lcom/alibaba/fastjson/serializer/JSONSerializer;->out:Lcom/alibaba/fastjson/serializer/SerializeWriter;

    const-string/jumbo v1, "{\"$ref\":\"$\"}"

    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write(Ljava/lang/String;)V

    goto :goto_1
.end method

.method public final writeWithFieldName(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 2

    .prologue
    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 288
    invoke-virtual {p0, p1, p2, v1, v0}, Lcom/alibaba/fastjson/serializer/JSONSerializer;->writeWithFieldName(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/reflect/Type;I)V

    .line 289
    return-void
.end method

.method public final writeWithFieldName(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/reflect/Type;I)V
    .locals 6

    .prologue
    .line 301
    if-eqz p1, :cond_0

    .line 306
    :try_start_0
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    .line 308
    invoke-virtual {p0, v0}, Lcom/alibaba/fastjson/serializer/JSONSerializer;->getObjectWriter(Ljava/lang/Class;)Lcom/alibaba/fastjson/serializer/ObjectSerializer;

    move-result-object v0

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move v5, p4

    .line 310
    invoke-interface/range {v0 .. v5}, Lcom/alibaba/fastjson/serializer/ObjectSerializer;->write(Lcom/alibaba/fastjson/serializer/JSONSerializer;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/reflect/Type;I)V

    .line 314
    return-void

    .line 302
    :cond_0
    iget-object v0, p0, Lcom/alibaba/fastjson/serializer/JSONSerializer;->out:Lcom/alibaba/fastjson/serializer/SerializeWriter;

    invoke-virtual {v0}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->writeNull()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 303
    return-void

    .line 313
    :catch_0
    move-exception v0

    .line 312
    new-instance v1, Lcom/alibaba/fastjson/JSONException;

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public final writeWithFormat(Ljava/lang/Object;Ljava/lang/String;)V
    .locals 5

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 317
    instance-of v2, p1, Ljava/util/Date;

    if-nez v2, :cond_0

    .line 328
    instance-of v2, p1, [B

    if-nez v2, :cond_2

    .line 355
    instance-of v1, p1, Ljava/util/Collection;

    if-nez v1, :cond_7

    .line 369
    invoke-virtual {p0, p1}, Lcom/alibaba/fastjson/serializer/JSONSerializer;->write(Ljava/lang/Object;)V

    .line 370
    return-void

    .line 318
    :cond_0
    invoke-virtual {p0}, Lcom/alibaba/fastjson/serializer/JSONSerializer;->getDateFormat()Ljava/text/DateFormat;

    move-result-object v0

    .line 319
    if-eqz v0, :cond_1

    .line 323
    :goto_0
    check-cast p1, Ljava/util/Date;

    invoke-virtual {v0, p1}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    .line 324
    iget-object v1, p0, Lcom/alibaba/fastjson/serializer/JSONSerializer;->out:Lcom/alibaba/fastjson/serializer/SerializeWriter;

    invoke-virtual {v1, v0}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->writeString(Ljava/lang/String;)V

    .line 325
    return-void

    .line 320
    :cond_1
    new-instance v0, Ljava/text/SimpleDateFormat;

    iget-object v1, p0, Lcom/alibaba/fastjson/serializer/JSONSerializer;->locale:Ljava/util/Locale;

    invoke-direct {v0, p2, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    .line 321
    iget-object v1, p0, Lcom/alibaba/fastjson/serializer/JSONSerializer;->timeZone:Ljava/util/TimeZone;

    invoke-virtual {v0, v1}, Ljava/text/DateFormat;->setTimeZone(Ljava/util/TimeZone;)V

    goto :goto_0

    .line 329
    :cond_2
    check-cast p1, [B

    check-cast p1, [B

    const-string/jumbo v0, "gzip"

    .line 330
    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 333
    :cond_3
    :try_start_0
    new-instance v2, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v2}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 334
    array-length v0, p1

    const/16 v3, 0x200

    if-lt v0, v3, :cond_5

    .line 337
    new-instance v0, Ljava/util/zip/GZIPOutputStream;

    invoke-direct {v0, v2}, Ljava/util/zip/GZIPOutputStream;-><init>(Ljava/io/OutputStream;)V

    move-object v1, v0

    .line 339
    :goto_1
    invoke-virtual {v1, p1}, Ljava/util/zip/GZIPOutputStream;->write([B)V

    .line 340
    invoke-virtual {v1}, Ljava/util/zip/GZIPOutputStream;->finish()V

    .line 341
    iget-object v0, p0, Lcom/alibaba/fastjson/serializer/JSONSerializer;->out:Lcom/alibaba/fastjson/serializer/SerializeWriter;

    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->writeByteArray([B)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 345
    invoke-static {v1}, Lcom/alibaba/fastjson/util/IOUtils;->close(Ljava/io/Closeable;)V

    .line 352
    :goto_2
    return-void

    :cond_4
    const-string/jumbo v0, "gzip,base64"

    .line 330
    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    const-string/jumbo v0, "hex"

    .line 347
    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_6

    .line 350
    iget-object v0, p0, Lcom/alibaba/fastjson/serializer/JSONSerializer;->out:Lcom/alibaba/fastjson/serializer/SerializeWriter;

    invoke-virtual {v0, p1}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->writeByteArray([B)V

    goto :goto_2

    .line 335
    :cond_5
    :try_start_1
    new-instance v0, Ljava/util/zip/GZIPOutputStream;

    array-length v3, p1

    invoke-direct {v0, v2, v3}, Ljava/util/zip/GZIPOutputStream;-><init>(Ljava/io/OutputStream;I)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-object v1, v0

    goto :goto_1

    .line 346
    :catch_0
    move-exception v0

    .line 343
    :try_start_2
    new-instance v2, Lcom/alibaba/fastjson/JSONException;

    const-string/jumbo v3, "write gzipBytes error"

    invoke-direct {v2, v3, v0}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :catchall_0
    move-exception v0

    .line 345
    invoke-static {v1}, Lcom/alibaba/fastjson/util/IOUtils;->close(Ljava/io/Closeable;)V

    throw v0

    .line 348
    :cond_6
    iget-object v0, p0, Lcom/alibaba/fastjson/serializer/JSONSerializer;->out:Lcom/alibaba/fastjson/serializer/SerializeWriter;

    invoke-virtual {v0, p1}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->writeHex([B)V

    goto :goto_2

    .line 356
    :cond_7
    check-cast p1, Ljava/util/Collection;

    .line 357
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 358
    iget-object v2, p0, Lcom/alibaba/fastjson/serializer/JSONSerializer;->out:Lcom/alibaba/fastjson/serializer/SerializeWriter;

    const/16 v3, 0x5b

    invoke-virtual {v2, v3}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write(I)V

    .line 359
    :goto_3
    invoke-interface {p1}, Ljava/util/Collection;->size()I

    move-result v2

    if-lt v0, v2, :cond_8

    .line 366
    iget-object v0, p0, Lcom/alibaba/fastjson/serializer/JSONSerializer;->out:Lcom/alibaba/fastjson/serializer/SerializeWriter;

    const/16 v1, 0x5d

    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write(I)V

    .line 367
    return-void

    .line 360
    :cond_8
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    .line 361
    if-nez v0, :cond_9

    .line 364
    :goto_4
    invoke-virtual {p0, v2, p2}, Lcom/alibaba/fastjson/serializer/JSONSerializer;->writeWithFormat(Ljava/lang/Object;Ljava/lang/String;)V

    .line 359
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    .line 362
    :cond_9
    iget-object v3, p0, Lcom/alibaba/fastjson/serializer/JSONSerializer;->out:Lcom/alibaba/fastjson/serializer/SerializeWriter;

    const/16 v4, 0x2c

    invoke-virtual {v3, v4}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write(I)V

    goto :goto_4
.end method
