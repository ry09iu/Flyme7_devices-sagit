.class Lcom/baidu/mobstat/af;
.super Lcom/baidu/mobstat/s;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const-string/jumbo v0, "app_trace3"

    const-string/jumbo v1, "Create table if not exists app_trace3(_id Integer primary key AUTOINCREMENT,time VARCHAR(50),content TEXT);"

    .line 18
    invoke-direct {p0, v0, v1}, Lcom/baidu/mobstat/s;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 19
    return-void
.end method

.method private a(Landroid/database/Cursor;)Ljava/util/ArrayList;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/database/Cursor;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/baidu/mobstat/r;",
            ">;"
        }
    .end annotation

    .prologue
    .line 99
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 101
    if-eqz p1, :cond_0

    .line 105
    invoke-interface {p1}, Landroid/database/Cursor;->getCount()I

    move-result v1

    if-eqz v1, :cond_1

    const-string/jumbo v1, "_id"

    .line 109
    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    const-string/jumbo v2, "time"

    .line 110
    invoke-interface {p1, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    const-string/jumbo v3, "content"

    .line 111
    invoke-interface {p1, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    .line 113
    :goto_0
    invoke-interface {p1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v4

    if-nez v4, :cond_2

    .line 122
    return-object v0

    .line 102
    :cond_0
    return-object v0

    .line 106
    :cond_1
    return-object v0

    .line 114
    :cond_2
    invoke-interface {p1, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    .line 115
    invoke-interface {p1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 116
    invoke-interface {p1, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 118
    new-instance v8, Lcom/baidu/mobstat/r;

    invoke-direct {v8, v4, v5, v6, v7}, Lcom/baidu/mobstat/r;-><init>(JLjava/lang/String;Ljava/lang/String;)V

    .line 119
    invoke-virtual {v0, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method


# virtual methods
.method public a(Ljava/lang/String;Ljava/lang/String;)J
    .locals 4

    .prologue
    const/4 v3, 0x0

    const-string/jumbo v0, "content"

    const-string/jumbo v1, "time"

    const/4 v2, 0x1

    .line 62
    invoke-virtual {p0, v0, p2, v1, v2}, Lcom/baidu/mobstat/af;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)Landroid/database/Cursor;

    move-result-object v0

    .line 63
    invoke-direct {p0, v0}, Lcom/baidu/mobstat/af;->a(Landroid/database/Cursor;)Ljava/util/ArrayList;

    move-result-object v1

    .line 64
    if-nez v0, :cond_0

    .line 70
    :goto_0
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_1

    .line 76
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    const-string/jumbo v1, "time"

    .line 77
    invoke-virtual {v0, v1, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v1, "content"

    .line 78
    invoke-virtual {v0, v1, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 80
    invoke-virtual {p0, v0}, Lcom/baidu/mobstat/af;->a(Landroid/content/ContentValues;)J

    move-result-wide v0

    .line 81
    return-wide v0

    .line 65
    :cond_0
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 71
    :cond_1
    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/baidu/mobstat/r;

    .line 72
    invoke-virtual {v0}, Lcom/baidu/mobstat/r;->a()J

    move-result-wide v0

    .line 73
    return-wide v0
.end method

.method public a(II)Ljava/util/ArrayList;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/baidu/mobstat/r;",
            ">;"
        }
    .end annotation

    .prologue
    const-string/jumbo v0, "time"

    .line 34
    invoke-virtual {p0, v0, p1, p2}, Lcom/baidu/mobstat/af;->a(Ljava/lang/String;II)Landroid/database/Cursor;

    move-result-object v0

    .line 35
    invoke-direct {p0, v0}, Lcom/baidu/mobstat/af;->a(Landroid/database/Cursor;)Ljava/util/ArrayList;

    move-result-object v1

    .line 36
    if-nez v0, :cond_0

    .line 40
    :goto_0
    return-object v1

    .line 37
    :cond_0
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    goto :goto_0
.end method

.method public b(J)Z
    .locals 1

    .prologue
    .line 95
    invoke-virtual {p0, p1, p2}, Lcom/baidu/mobstat/af;->a(J)Z

    move-result v0

    return v0
.end method
