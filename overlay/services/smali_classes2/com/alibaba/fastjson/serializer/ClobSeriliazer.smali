.class public Lcom/alibaba/fastjson/serializer/ClobSeriliazer;
.super Ljava/lang/Object;
.source "ClobSeriliazer.java"

# interfaces
.implements Lcom/alibaba/fastjson/serializer/ObjectSerializer;


# static fields
.field public static final instance:Lcom/alibaba/fastjson/serializer/ClobSeriliazer;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 13
    new-instance v0, Lcom/alibaba/fastjson/serializer/ClobSeriliazer;

    invoke-direct {v0}, Lcom/alibaba/fastjson/serializer/ClobSeriliazer;-><init>()V

    sput-object v0, Lcom/alibaba/fastjson/serializer/ClobSeriliazer;->instance:Lcom/alibaba/fastjson/serializer/ClobSeriliazer;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public write(Lcom/alibaba/fastjson/serializer/JSONSerializer;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/reflect/Type;I)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 17
    if-eqz p2, :cond_0

    .line 22
    :try_start_0
    check-cast p2, Ljava/sql/Clob;

    .line 23
    invoke-interface {p2}, Ljava/sql/Clob;->getCharacterStream()Ljava/io/Reader;

    move-result-object v0

    .line 25
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V
    :try_end_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_1

    const/16 v2, 0x800

    .line 28
    :try_start_1
    new-array v2, v2, [C

    :goto_0
    const/4 v3, 0x0

    .line 30
    array-length v4, v2

    invoke-virtual {v0, v2, v3, v4}, Ljava/io/Reader;->read([CII)I

    move-result v3

    .line 31
    if-ltz v3, :cond_1

    const/4 v4, 0x0

    .line 34
    invoke-virtual {v1, v2, v4, v3}, Ljava/lang/StringBuilder;->append([CII)Ljava/lang/StringBuilder;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/sql/SQLException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    .line 38
    :catch_0
    move-exception v0

    .line 37
    :try_start_2
    new-instance v1, Lcom/alibaba/fastjson/JSONException;

    const-string/jumbo v2, "read string from reader error"

    invoke-direct {v1, v2, v0}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
    :try_end_2
    .catch Ljava/sql/SQLException; {:try_start_2 .. :try_end_2} :catch_1

    .line 45
    :catch_1
    move-exception v0

    .line 44
    new-instance v1, Ljava/io/IOException;

    const-string/jumbo v2, "write clob error"

    invoke-direct {v1, v2, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 18
    :cond_0
    :try_start_3
    invoke-virtual {p1}, Lcom/alibaba/fastjson/serializer/JSONSerializer;->writeNull()V

    .line 19
    return-void

    .line 40
    :cond_1
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 41
    invoke-virtual {v0}, Ljava/io/Reader;->close()V

    .line 42
    invoke-virtual {p1, v1}, Lcom/alibaba/fastjson/serializer/JSONSerializer;->write(Ljava/lang/String;)V
    :try_end_3
    .catch Ljava/sql/SQLException; {:try_start_3 .. :try_end_3} :catch_1

    .line 46
    return-void
.end method
