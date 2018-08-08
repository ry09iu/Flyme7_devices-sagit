.class public Lcom/alibaba/fastjson/serializer/MiscCodec;
.super Ljava/lang/Object;
.source "MiscCodec.java"

# interfaces
.implements Lcom/alibaba/fastjson/serializer/ObjectSerializer;
.implements Lcom/alibaba/fastjson/parser/deserializer/ObjectDeserializer;


# static fields
.field private static FILE_RELATIVE_PATH_SUPPORT:Z

.field public static final instance:Lcom/alibaba/fastjson/serializer/MiscCodec;

.field private static method_paths_get:Ljava/lang/reflect/Method;

.field private static method_paths_get_error:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 49
    sput-boolean v1, Lcom/alibaba/fastjson/serializer/MiscCodec;->FILE_RELATIVE_PATH_SUPPORT:Z

    .line 50
    new-instance v0, Lcom/alibaba/fastjson/serializer/MiscCodec;

    invoke-direct {v0}, Lcom/alibaba/fastjson/serializer/MiscCodec;-><init>()V

    sput-object v0, Lcom/alibaba/fastjson/serializer/MiscCodec;->instance:Lcom/alibaba/fastjson/serializer/MiscCodec;

    .line 52
    sput-boolean v1, Lcom/alibaba/fastjson/serializer/MiscCodec;->method_paths_get_error:Z

    const-string/jumbo v0, "true"

    const-string/jumbo v1, "fastjson.deserializer.fileRelativePathSupport"

    .line 55
    invoke-static {v1}, Lcom/alibaba/fastjson/util/IOUtils;->getStringProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    sput-boolean v0, Lcom/alibaba/fastjson/serializer/MiscCodec;->FILE_RELATIVE_PATH_SUPPORT:Z

    .line 56
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public deserialze(Lcom/alibaba/fastjson/parser/DefaultJSONParser;Ljava/lang/reflect/Type;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 9
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
    const/4 v7, 0x1

    const/4 v6, 0x2

    const/16 v5, 0x11

    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 176
    iget-object v3, p1, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->lexer:Lcom/alibaba/fastjson/parser/JSONLexer;

    const-class v2, Ljava/net/InetSocketAddress;

    .line 178
    if-eq p2, v2, :cond_0

    .line 222
    iget v2, p1, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->resolveStatus:I

    if-eq v2, v6, :cond_6

    .line 241
    invoke-virtual {p1}, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->parse()Ljava/lang/Object;

    move-result-object v0

    .line 246
    :goto_0
    if-eqz v0, :cond_9

    .line 248
    instance-of v2, v0, Ljava/lang/String;

    if-nez v2, :cond_b

    .line 251
    instance-of v1, v0, Lcom/alibaba/fastjson/JSONObject;

    if-nez v1, :cond_c

    .line 272
    new-instance v0, Lcom/alibaba/fastjson/JSONException;

    const-string/jumbo v1, "expect string"

    invoke-direct {v0, v1}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 179
    :cond_0
    invoke-interface {v3}, Lcom/alibaba/fastjson/parser/JSONLexer;->token()I

    move-result v2

    const/16 v4, 0x8

    if-eq v2, v4, :cond_1

    const/16 v2, 0xc

    .line 184
    invoke-virtual {p1, v2}, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->accept(I)V

    move v8, v0

    move-object v0, v1

    move v1, v8

    .line 189
    :goto_1
    invoke-interface {v3}, Lcom/alibaba/fastjson/parser/JSONLexer;->stringVal()Ljava/lang/String;

    move-result-object v2

    .line 190
    invoke-interface {v3, v5}, Lcom/alibaba/fastjson/parser/JSONLexer;->nextToken(I)V

    const-string/jumbo v4, "address"

    .line 192
    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_2

    const-string/jumbo v4, "port"

    .line 195
    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    .line 203
    invoke-virtual {p1, v5}, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->accept(I)V

    .line 204
    invoke-virtual {p1}, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->parse()Ljava/lang/Object;

    move v8, v1

    move-object v1, v0

    move v0, v8

    .line 207
    :goto_2
    invoke-interface {v3}, Lcom/alibaba/fastjson/parser/JSONLexer;->token()I

    move-result v2

    const/16 v4, 0x10

    if-eq v2, v4, :cond_5

    const/16 v2, 0xd

    .line 215
    invoke-virtual {p1, v2}, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->accept(I)V

    .line 217
    new-instance v2, Ljava/net/InetSocketAddress;

    invoke-direct {v2, v1, v0}, Ljava/net/InetSocketAddress;-><init>(Ljava/net/InetAddress;I)V

    return-object v2

    .line 180
    :cond_1
    invoke-interface {v3}, Lcom/alibaba/fastjson/parser/JSONLexer;->nextToken()V

    .line 181
    return-object v1

    .line 193
    :cond_2
    invoke-virtual {p1, v5}, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->accept(I)V

    const-class v0, Ljava/net/InetAddress;

    .line 194
    invoke-virtual {p1, v0}, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->parseObject(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/net/InetAddress;

    move v8, v1

    move-object v1, v0

    move v0, v8

    goto :goto_2

    .line 196
    :cond_3
    invoke-virtual {p1, v5}, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->accept(I)V

    .line 197
    invoke-interface {v3}, Lcom/alibaba/fastjson/parser/JSONLexer;->token()I

    move-result v1

    if-ne v1, v6, :cond_4

    .line 200
    invoke-interface {v3}, Lcom/alibaba/fastjson/parser/JSONLexer;->intValue()I

    move-result v1

    .line 201
    invoke-interface {v3}, Lcom/alibaba/fastjson/parser/JSONLexer;->nextToken()V

    move v8, v1

    move-object v1, v0

    move v0, v8

    goto :goto_2

    .line 198
    :cond_4
    new-instance v0, Lcom/alibaba/fastjson/JSONException;

    const-string/jumbo v1, "port is not int"

    invoke-direct {v0, v1}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 208
    :cond_5
    invoke-interface {v3}, Lcom/alibaba/fastjson/parser/JSONLexer;->nextToken()V

    move v8, v0

    move-object v0, v1

    move v1, v8

    .line 209
    goto :goto_1

    .line 223
    :cond_6
    iput v0, p1, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->resolveStatus:I

    const/16 v0, 0x10

    .line 224
    invoke-virtual {p1, v0}, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->accept(I)V

    .line 226
    invoke-interface {v3}, Lcom/alibaba/fastjson/parser/JSONLexer;->token()I

    move-result v0

    const/4 v2, 0x4

    if-eq v0, v2, :cond_7

    .line 232
    new-instance v0, Lcom/alibaba/fastjson/JSONException;

    const-string/jumbo v1, "syntax error"

    invoke-direct {v0, v1}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_7
    const-string/jumbo v0, "val"

    .line 227
    invoke-interface {v3}, Lcom/alibaba/fastjson/parser/JSONLexer;->stringVal()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 230
    invoke-interface {v3}, Lcom/alibaba/fastjson/parser/JSONLexer;->nextToken()V

    .line 235
    invoke-virtual {p1, v5}, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->accept(I)V

    .line 237
    invoke-virtual {p1}, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->parse()Ljava/lang/Object;

    move-result-object v0

    const/16 v2, 0xd

    .line 239
    invoke-virtual {p1, v2}, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->accept(I)V

    goto/16 :goto_0

    .line 228
    :cond_8
    new-instance v0, Lcom/alibaba/fastjson/JSONException;

    const-string/jumbo v1, "syntax error"

    invoke-direct {v0, v1}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_9
    move-object v2, v1

    .line 275
    :goto_3
    if-nez v2, :cond_11

    .line 276
    :cond_a
    return-object v1

    .line 249
    :cond_b
    check-cast v0, Ljava/lang/String;

    move-object v2, v0

    goto :goto_3

    .line 252
    :cond_c
    check-cast v0, Lcom/alibaba/fastjson/JSONObject;

    const-class v1, Ljava/util/Currency;

    .line 254
    if-eq p2, v1, :cond_e

    :cond_d
    const-class v1, Ljava/util/Map$Entry;

    .line 266
    if-eq p2, v1, :cond_10

    .line 270
    invoke-virtual {v0, p2}, Lcom/alibaba/fastjson/JSONObject;->toJavaObject(Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object v0

    return-object v0

    :cond_e
    const-string/jumbo v1, "currency"

    .line 255
    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 256
    if-nez v1, :cond_f

    const-string/jumbo v1, "currencyCode"

    .line 260
    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 261
    if-eqz v1, :cond_d

    .line 262
    invoke-static {v1}, Ljava/util/Currency;->getInstance(Ljava/lang/String;)Ljava/util/Currency;

    move-result-object v0

    return-object v0

    .line 257
    :cond_f
    invoke-static {v1}, Ljava/util/Currency;->getInstance(Ljava/lang/String;)Ljava/util/Currency;

    move-result-object v0

    return-object v0

    .line 267
    :cond_10
    invoke-virtual {v0}, Lcom/alibaba/fastjson/JSONObject;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    return-object v0

    .line 275
    :cond_11
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_a

    const-class v0, Ljava/util/UUID;

    .line 279
    if-eq p2, v0, :cond_13

    const-class v0, Ljava/net/URI;

    .line 283
    if-eq p2, v0, :cond_14

    const-class v0, Ljava/net/URL;

    .line 287
    if-eq p2, v0, :cond_15

    const-class v0, Ljava/util/regex/Pattern;

    .line 295
    if-eq p2, v0, :cond_16

    const-class v0, Ljava/util/Locale;

    .line 299
    if-eq p2, v0, :cond_17

    const-class v0, Ljava/text/SimpleDateFormat;

    .line 303
    if-eq p2, v0, :cond_18

    const-class v0, Ljava/net/InetAddress;

    .line 309
    if-ne p2, v0, :cond_19

    .line 311
    :cond_12
    :try_start_0
    invoke-static {v2}, Ljava/net/InetAddress;->getByName(Ljava/lang/String;)Ljava/net/InetAddress;
    :try_end_0
    .catch Ljava/net/UnknownHostException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v0

    return-object v0

    .line 280
    :cond_13
    invoke-static {v2}, Ljava/util/UUID;->fromString(Ljava/lang/String;)Ljava/util/UUID;

    move-result-object v0

    return-object v0

    .line 284
    :cond_14
    invoke-static {v2}, Ljava/net/URI;->create(Ljava/lang/String;)Ljava/net/URI;

    move-result-object v0

    return-object v0

    .line 289
    :cond_15
    :try_start_1
    new-instance v0, Ljava/net/URL;

    invoke-direct {v0, v2}, Ljava/net/URL;-><init>(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/net/MalformedURLException; {:try_start_1 .. :try_end_1} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    .line 291
    new-instance v1, Lcom/alibaba/fastjson/JSONException;

    const-string/jumbo v2, "create url error"

    invoke-direct {v1, v2, v0}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 296
    :cond_16
    invoke-static {v2}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    return-object v0

    .line 300
    :cond_17
    invoke-static {v2}, Lcom/alibaba/fastjson/util/TypeUtils;->toLocale(Ljava/lang/String;)Ljava/util/Locale;

    move-result-object v0

    return-object v0

    .line 304
    :cond_18
    new-instance v0, Ljava/text/SimpleDateFormat;

    invoke-interface {v3}, Lcom/alibaba/fastjson/parser/JSONLexer;->getLocale()Ljava/util/Locale;

    move-result-object v1

    invoke-direct {v0, v2, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    .line 305
    invoke-interface {v3}, Lcom/alibaba/fastjson/parser/JSONLexer;->getTimeZone()Ljava/util/TimeZone;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/text/SimpleDateFormat;->setTimeZone(Ljava/util/TimeZone;)V

    .line 306
    return-object v0

    :cond_19
    const-class v0, Ljava/net/Inet4Address;

    .line 309
    if-eq p2, v0, :cond_12

    const-class v0, Ljava/net/Inet6Address;

    if-eq p2, v0, :cond_12

    const-class v0, Ljava/io/File;

    .line 317
    if-eq p2, v0, :cond_1a

    const-class v0, Ljava/util/TimeZone;

    .line 325
    if-eq p2, v0, :cond_1d

    .line 329
    instance-of v0, p2, Ljava/lang/reflect/ParameterizedType;

    if-nez v0, :cond_1e

    move-object v0, p2

    :goto_4
    const-class v1, Ljava/lang/Class;

    .line 334
    if-eq v0, v1, :cond_1f

    const-class v1, Ljava/nio/charset/Charset;

    .line 338
    if-eq v0, v1, :cond_20

    const-class v1, Ljava/util/Currency;

    .line 342
    if-eq v0, v1, :cond_21

    const-class v1, Lcom/alibaba/fastjson/JSONPath;

    .line 346
    if-eq v0, v1, :cond_22

    .line 352
    instance-of v1, v0, Ljava/lang/Class;

    if-nez v1, :cond_23

    .line 378
    new-instance v1, Lcom/alibaba/fastjson/JSONException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "MiscCodec not support "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 311
    :catch_1
    move-exception v0

    .line 313
    new-instance v1, Lcom/alibaba/fastjson/JSONException;

    const-string/jumbo v2, "deserialize inet adress error"

    invoke-direct {v1, v2, v0}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    :cond_1a
    const-string/jumbo v0, ".."

    .line 318
    invoke-virtual {v2, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    if-gez v0, :cond_1c

    .line 322
    :cond_1b
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    return-object v0

    .line 318
    :cond_1c
    sget-boolean v0, Lcom/alibaba/fastjson/serializer/MiscCodec;->FILE_RELATIVE_PATH_SUPPORT:Z

    if-nez v0, :cond_1b

    .line 319
    new-instance v0, Lcom/alibaba/fastjson/JSONException;

    const-string/jumbo v1, "file relative path not support."

    invoke-direct {v0, v1}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 326
    :cond_1d
    invoke-static {v2}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v0

    return-object v0

    .line 330
    :cond_1e
    check-cast p2, Ljava/lang/reflect/ParameterizedType;

    .line 331
    invoke-interface {p2}, Ljava/lang/reflect/ParameterizedType;->getRawType()Ljava/lang/reflect/Type;

    move-result-object v0

    goto :goto_4

    .line 335
    :cond_1f
    invoke-virtual {p1}, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->getConfig()Lcom/alibaba/fastjson/parser/ParserConfig;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alibaba/fastjson/parser/ParserConfig;->getDefaultClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/alibaba/fastjson/util/TypeUtils;->loadClass(Ljava/lang/String;Ljava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object v0

    return-object v0

    .line 339
    :cond_20
    invoke-static {v2}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v0

    return-object v0

    .line 343
    :cond_21
    invoke-static {v2}, Ljava/util/Currency;->getInstance(Ljava/lang/String;)Ljava/util/Currency;

    move-result-object v0

    return-object v0

    .line 347
    :cond_22
    new-instance v0, Lcom/alibaba/fastjson/JSONPath;

    invoke-direct {v0, v2}, Lcom/alibaba/fastjson/JSONPath;-><init>(Ljava/lang/String;)V

    return-object v0

    .line 353
    :cond_23
    check-cast v0, Ljava/lang/Class;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "java.nio.file.Path"

    .line 355
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_24

    .line 375
    :goto_5
    new-instance v1, Lcom/alibaba/fastjson/JSONException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "MiscCodec not support "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 357
    :cond_24
    :try_start_2
    sget-object v1, Lcom/alibaba/fastjson/serializer/MiscCodec;->method_paths_get:Ljava/lang/reflect/Method;

    if-eqz v1, :cond_26

    .line 361
    :cond_25
    :goto_6
    sget-object v1, Lcom/alibaba/fastjson/serializer/MiscCodec;->method_paths_get:Ljava/lang/reflect/Method;

    if-nez v1, :cond_27

    .line 365
    new-instance v1, Lcom/alibaba/fastjson/JSONException;

    const-string/jumbo v2, "Path deserialize erorr"

    invoke-direct {v1, v2}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_2
    .catch Ljava/lang/NoSuchMethodException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljava/lang/IllegalAccessException; {:try_start_2 .. :try_end_2} :catch_3
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_2 .. :try_end_2} :catch_4

    :catch_2
    move-exception v1

    .line 367
    sput-boolean v7, Lcom/alibaba/fastjson/serializer/MiscCodec;->method_paths_get_error:Z

    goto :goto_5

    .line 357
    :cond_26
    :try_start_3
    sget-boolean v1, Lcom/alibaba/fastjson/serializer/MiscCodec;->method_paths_get_error:Z

    if-nez v1, :cond_25

    const-string/jumbo v1, "java.nio.file.Paths"

    .line 358
    invoke-static {v1}, Lcom/alibaba/fastjson/util/TypeUtils;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    const-string/jumbo v3, "get"

    const/4 v4, 0x2

    .line 359
    new-array v4, v4, [Ljava/lang/Class;

    const/4 v5, 0x0

    const-class v6, Ljava/lang/String;

    aput-object v6, v4, v5

    const/4 v5, 0x1

    const-class v6, [Ljava/lang/String;

    aput-object v6, v4, v5

    invoke-virtual {v1, v3, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    sput-object v1, Lcom/alibaba/fastjson/serializer/MiscCodec;->method_paths_get:Ljava/lang/reflect/Method;
    :try_end_3
    .catch Ljava/lang/NoSuchMethodException; {:try_start_3 .. :try_end_3} :catch_2
    .catch Ljava/lang/IllegalAccessException; {:try_start_3 .. :try_end_3} :catch_3
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_3 .. :try_end_3} :catch_4

    goto :goto_6

    .line 372
    :catch_3
    move-exception v0

    .line 369
    new-instance v1, Lcom/alibaba/fastjson/JSONException;

    const-string/jumbo v2, "Path deserialize erorr"

    invoke-direct {v1, v2, v0}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 362
    :cond_27
    :try_start_4
    sget-object v1, Lcom/alibaba/fastjson/serializer/MiscCodec;->method_paths_get:Ljava/lang/reflect/Method;

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v2, v3, v4

    const/4 v2, 0x1

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/String;

    aput-object v4, v3, v2

    const/4 v2, 0x0

    invoke-virtual {v1, v2, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_4
    .catch Ljava/lang/NoSuchMethodException; {:try_start_4 .. :try_end_4} :catch_2
    .catch Ljava/lang/IllegalAccessException; {:try_start_4 .. :try_end_4} :catch_3
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_4 .. :try_end_4} :catch_4

    move-result-object v0

    return-object v0

    .line 369
    :catch_4
    move-exception v0

    .line 371
    new-instance v1, Lcom/alibaba/fastjson/JSONException;

    const-string/jumbo v2, "Path deserialize erorr"

    invoke-direct {v1, v2, v0}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public getFastMatchToken()I
    .locals 1

    .prologue
    const/4 v0, 0x4

    .line 382
    return v0
.end method

.method public write(Lcom/alibaba/fastjson/serializer/JSONSerializer;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/reflect/Type;I)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/16 v3, 0x2c

    const/16 v5, 0x7d

    const/16 v4, 0x7b

    .line 60
    iget-object v2, p1, Lcom/alibaba/fastjson/serializer/JSONSerializer;->out:Lcom/alibaba/fastjson/serializer/SerializeWriter;

    .line 62
    if-eqz p2, :cond_0

    .line 67
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-class v1, Ljava/text/SimpleDateFormat;

    .line 70
    if-eq v0, v1, :cond_1

    const-class v1, Ljava/lang/Class;

    .line 85
    if-eq v0, v1, :cond_4

    const-class v1, Ljava/net/InetSocketAddress;

    .line 88
    if-eq v0, v1, :cond_5

    .line 103
    instance-of v1, p2, Ljava/io/File;

    if-nez v1, :cond_7

    .line 105
    instance-of v1, p2, Ljava/net/InetAddress;

    if-nez v1, :cond_8

    .line 107
    instance-of v1, p2, Ljava/util/TimeZone;

    if-nez v1, :cond_9

    .line 110
    instance-of v1, p2, Ljava/util/Currency;

    if-nez v1, :cond_a

    .line 113
    instance-of v1, p2, Lcom/alibaba/fastjson/JSONStreamAware;

    if-nez v1, :cond_b

    .line 117
    instance-of v1, p2, Ljava/util/Iterator;

    if-nez v1, :cond_c

    .line 121
    instance-of v1, p2, Ljava/lang/Iterable;

    if-nez v1, :cond_d

    .line 125
    instance-of v1, p2, Ljava/util/Map$Entry;

    if-nez v1, :cond_e

    .line 149
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v3, "net.sf.json.JSONNull"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_11

    .line 153
    new-instance v1, Lcom/alibaba/fastjson/JSONException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "not support class : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 63
    :cond_0
    invoke-virtual {v2}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->writeNull()V

    .line 64
    return-void

    :cond_1
    move-object v0, p2

    .line 71
    check-cast v0, Ljava/text/SimpleDateFormat;

    invoke-virtual {v0}, Ljava/text/SimpleDateFormat;->toPattern()Ljava/lang/String;

    move-result-object v0

    .line 73
    sget-object v1, Lcom/alibaba/fastjson/serializer/SerializerFeature;->WriteClassName:Lcom/alibaba/fastjson/serializer/SerializerFeature;

    invoke-virtual {v2, v1}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->isEnabled(Lcom/alibaba/fastjson/serializer/SerializerFeature;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 156
    :cond_2
    :goto_0
    invoke-virtual {v2, v0}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->writeString(Ljava/lang/String;)V

    .line 157
    return-void

    .line 74
    :cond_3
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    if-eq v1, p4, :cond_2

    .line 75
    invoke-virtual {v2, v4}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write(I)V

    .line 76
    sget-object v1, Lcom/alibaba/fastjson/JSON;->DEFAULT_TYPE_KEY:Ljava/lang/String;

    invoke-virtual {v2, v1}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->writeFieldName(Ljava/lang/String;)V

    .line 77
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/alibaba/fastjson/serializer/JSONSerializer;->write(Ljava/lang/String;)V

    const-string/jumbo v1, "val"

    .line 78
    invoke-virtual {v2, v3, v1, v0}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->writeFieldValue(CLjava/lang/String;Ljava/lang/String;)V

    .line 79
    invoke-virtual {v2, v5}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write(I)V

    .line 80
    return-void

    .line 86
    :cond_4
    check-cast p2, Ljava/lang/Class;

    .line 87
    invoke-virtual {p2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 89
    :cond_5
    check-cast p2, Ljava/net/InetSocketAddress;

    .line 91
    invoke-virtual {p2}, Ljava/net/InetSocketAddress;->getAddress()Ljava/net/InetAddress;

    move-result-object v0

    .line 93
    invoke-virtual {v2, v4}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write(I)V

    .line 94
    if-nez v0, :cond_6

    :goto_1
    const-string/jumbo v0, "port"

    .line 99
    invoke-virtual {v2, v0}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->writeFieldName(Ljava/lang/String;)V

    .line 100
    invoke-virtual {p2}, Ljava/net/InetSocketAddress;->getPort()I

    move-result v0

    invoke-virtual {v2, v0}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->writeInt(I)V

    .line 101
    invoke-virtual {v2, v5}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write(I)V

    .line 102
    return-void

    :cond_6
    const-string/jumbo v1, "address"

    .line 95
    invoke-virtual {v2, v1}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->writeFieldName(Ljava/lang/String;)V

    .line 96
    invoke-virtual {p1, v0}, Lcom/alibaba/fastjson/serializer/JSONSerializer;->write(Ljava/lang/Object;)V

    .line 97
    invoke-virtual {v2, v3}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write(I)V

    goto :goto_1

    .line 104
    :cond_7
    check-cast p2, Ljava/io/File;

    invoke-virtual {p2}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 106
    :cond_8
    check-cast p2, Ljava/net/InetAddress;

    invoke-virtual {p2}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 108
    :cond_9
    check-cast p2, Ljava/util/TimeZone;

    .line 109
    invoke-virtual {p2}, Ljava/util/TimeZone;->getID()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 111
    :cond_a
    check-cast p2, Ljava/util/Currency;

    .line 112
    invoke-virtual {p2}, Ljava/util/Currency;->getCurrencyCode()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 114
    :cond_b
    check-cast p2, Lcom/alibaba/fastjson/JSONStreamAware;

    .line 115
    invoke-interface {p2, v2}, Lcom/alibaba/fastjson/JSONStreamAware;->writeJSONString(Ljava/lang/Appendable;)V

    .line 116
    return-void

    .line 118
    :cond_c
    check-cast p2, Ljava/util/Iterator;

    .line 119
    invoke-virtual {p0, p1, v2, p2}, Lcom/alibaba/fastjson/serializer/MiscCodec;->writeIterator(Lcom/alibaba/fastjson/serializer/JSONSerializer;Lcom/alibaba/fastjson/serializer/SerializeWriter;Ljava/util/Iterator;)V

    .line 120
    return-void

    .line 122
    :cond_d
    check-cast p2, Ljava/lang/Iterable;

    invoke-interface {p2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 123
    invoke-virtual {p0, p1, v2, v0}, Lcom/alibaba/fastjson/serializer/MiscCodec;->writeIterator(Lcom/alibaba/fastjson/serializer/JSONSerializer;Lcom/alibaba/fastjson/serializer/SerializeWriter;Ljava/util/Iterator;)V

    .line 124
    return-void

    .line 126
    :cond_e
    check-cast p2, Ljava/util/Map$Entry;

    .line 127
    invoke-interface {p2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    .line 128
    invoke-interface {p2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    .line 130
    instance-of v3, v0, Ljava/lang/String;

    if-nez v3, :cond_f

    .line 142
    invoke-virtual {v2, v4}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write(I)V

    .line 143
    invoke-virtual {p1, v0}, Lcom/alibaba/fastjson/serializer/JSONSerializer;->write(Ljava/lang/Object;)V

    const/16 v0, 0x3a

    .line 144
    invoke-virtual {v2, v0}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write(I)V

    .line 145
    invoke-virtual {p1, v1}, Lcom/alibaba/fastjson/serializer/JSONSerializer;->write(Ljava/lang/Object;)V

    .line 147
    :goto_2
    invoke-virtual {v2, v5}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write(I)V

    .line 148
    return-void

    .line 131
    :cond_f
    check-cast v0, Ljava/lang/String;

    .line 133
    instance-of v3, v1, Ljava/lang/String;

    if-nez v3, :cond_10

    .line 137
    invoke-virtual {v2, v4}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write(I)V

    .line 138
    invoke-virtual {v2, v0}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->writeFieldName(Ljava/lang/String;)V

    .line 139
    invoke-virtual {p1, v1}, Lcom/alibaba/fastjson/serializer/JSONSerializer;->write(Ljava/lang/Object;)V

    goto :goto_2

    .line 134
    :cond_10
    check-cast v1, Ljava/lang/String;

    .line 135
    invoke-virtual {v2, v4, v0, v1}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->writeFieldValueStringWithDoubleQuoteCheck(CLjava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    .line 150
    :cond_11
    invoke-virtual {v2}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->writeNull()V

    .line 151
    return-void
.end method

.method protected writeIterator(Lcom/alibaba/fastjson/serializer/JSONSerializer;Lcom/alibaba/fastjson/serializer/SerializeWriter;Ljava/util/Iterator;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/alibaba/fastjson/serializer/JSONSerializer;",
            "Lcom/alibaba/fastjson/serializer/SerializeWriter;",
            "Ljava/util/Iterator",
            "<*>;)V"
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    const/16 v1, 0x5b

    .line 161
    invoke-virtual {p2, v1}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write(I)V

    .line 162
    :goto_0
    invoke-interface {p3}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-nez v1, :cond_0

    const/16 v0, 0x5d

    .line 170
    invoke-virtual {p2, v0}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write(I)V

    .line 171
    return-void

    .line 163
    :cond_0
    if-nez v0, :cond_1

    .line 166
    :goto_1
    invoke-interface {p3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 167
    invoke-virtual {p1, v1}, Lcom/alibaba/fastjson/serializer/JSONSerializer;->write(Ljava/lang/Object;)V

    .line 168
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    const/16 v1, 0x2c

    .line 164
    invoke-virtual {p2, v1}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write(I)V

    goto :goto_1
.end method
