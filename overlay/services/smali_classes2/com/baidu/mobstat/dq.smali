.class public Lcom/baidu/mobstat/dq;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/baidu/mobstat/dq$a;
    }
.end annotation


# static fields
.field private static final a:Lcom/baidu/mobstat/dq;


# instance fields
.field private b:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private c:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Character;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private d:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private e:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Character;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private f:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private g:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Character;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 23
    new-instance v0, Lcom/baidu/mobstat/dq;

    invoke-direct {v0}, Lcom/baidu/mobstat/dq;-><init>()V

    sput-object v0, Lcom/baidu/mobstat/dq;->a:Lcom/baidu/mobstat/dq;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/baidu/mobstat/dq;->b:Ljava/util/HashMap;

    .line 32
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/baidu/mobstat/dq;->c:Ljava/util/HashMap;

    .line 35
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/baidu/mobstat/dq;->d:Ljava/util/HashMap;

    .line 37
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/baidu/mobstat/dq;->e:Ljava/util/HashMap;

    .line 40
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/baidu/mobstat/dq;->f:Ljava/util/HashMap;

    .line 42
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/baidu/mobstat/dq;->g:Ljava/util/HashMap;

    return-void
.end method

.method public static a()Lcom/baidu/mobstat/dq;
    .locals 1

    .prologue
    .line 26
    sget-object v0, Lcom/baidu/mobstat/dq;->a:Lcom/baidu/mobstat/dq;

    return-object v0
.end method

.method private a(Ljava/lang/String;Ljava/util/HashMap;Ljava/util/HashMap;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Character;",
            "Ljava/lang/Integer;",
            ">;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 81
    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    invoke-static {v0}, Ljava/lang/Character;->toLowerCase(C)C

    move-result v2

    .line 84
    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 85
    if-nez v0, :cond_0

    move v0, v1

    .line 89
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v2}, Ljava/lang/Character;->toString(C)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 91
    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p2, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 92
    invoke-virtual {p3, p1, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 93
    return-void

    .line 86
    :cond_0
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 87
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method


# virtual methods
.method public a(Ljava/lang/String;I)Ljava/lang/String;
    .locals 2

    .prologue
    .line 47
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 51
    sget v0, Lcom/baidu/mobstat/dq$a;->a:I

    if-eq p2, v0, :cond_1

    .line 59
    sget v0, Lcom/baidu/mobstat/dq$a;->c:I

    if-eq p2, v0, :cond_3

    .line 68
    iget-object v0, p0, Lcom/baidu/mobstat/dq;->d:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 69
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_5

    .line 73
    return-object v0

    :cond_0
    const/4 v0, 0x0

    .line 48
    return-object v0

    .line 52
    :cond_1
    iget-object v0, p0, Lcom/baidu/mobstat/dq;->b:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 53
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 57
    return-object v0

    .line 54
    :cond_2
    iget-object v0, p0, Lcom/baidu/mobstat/dq;->c:Ljava/util/HashMap;

    iget-object v1, p0, Lcom/baidu/mobstat/dq;->b:Ljava/util/HashMap;

    invoke-direct {p0, p1, v0, v1}, Lcom/baidu/mobstat/dq;->a(Ljava/lang/String;Ljava/util/HashMap;Ljava/util/HashMap;)V

    .line 55
    iget-object v0, p0, Lcom/baidu/mobstat/dq;->b:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0

    .line 60
    :cond_3
    iget-object v0, p0, Lcom/baidu/mobstat/dq;->f:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 61
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_4

    .line 65
    return-object v0

    .line 62
    :cond_4
    iget-object v0, p0, Lcom/baidu/mobstat/dq;->g:Ljava/util/HashMap;

    iget-object v1, p0, Lcom/baidu/mobstat/dq;->f:Ljava/util/HashMap;

    invoke-direct {p0, p1, v0, v1}, Lcom/baidu/mobstat/dq;->a(Ljava/lang/String;Ljava/util/HashMap;Ljava/util/HashMap;)V

    .line 63
    iget-object v0, p0, Lcom/baidu/mobstat/dq;->f:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0

    .line 70
    :cond_5
    iget-object v0, p0, Lcom/baidu/mobstat/dq;->e:Ljava/util/HashMap;

    iget-object v1, p0, Lcom/baidu/mobstat/dq;->d:Ljava/util/HashMap;

    invoke-direct {p0, p1, v0, v1}, Lcom/baidu/mobstat/dq;->a(Ljava/lang/String;Ljava/util/HashMap;Ljava/util/HashMap;)V

    .line 71
    iget-object v0, p0, Lcom/baidu/mobstat/dq;->d:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public a(I)Lorg/json/JSONObject;
    .locals 4

    .prologue
    .line 104
    sget v0, Lcom/baidu/mobstat/dq$a;->a:I

    if-eq p1, v0, :cond_0

    .line 106
    sget v0, Lcom/baidu/mobstat/dq$a;->c:I

    if-eq p1, v0, :cond_1

    .line 109
    iget-object v0, p0, Lcom/baidu/mobstat/dq;->d:Ljava/util/HashMap;

    .line 112
    :goto_0
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    .line 113
    if-eqz v0, :cond_2

    .line 117
    new-instance v1, Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 119
    :try_start_0
    new-instance v0, Lcom/baidu/mobstat/dr;

    invoke-direct {v0, p0}, Lcom/baidu/mobstat/dr;-><init>(Lcom/baidu/mobstat/dq;)V

    invoke-static {v1, v0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 129
    :goto_1
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_3

    .line 140
    return-object v2

    .line 105
    :cond_0
    iget-object v0, p0, Lcom/baidu/mobstat/dq;->b:Ljava/util/HashMap;

    goto :goto_0

    .line 107
    :cond_1
    iget-object v0, p0, Lcom/baidu/mobstat/dq;->f:Ljava/util/HashMap;

    goto :goto_0

    .line 114
    :cond_2
    return-object v2

    .line 129
    :cond_3
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 130
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 131
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 134
    :try_start_1
    invoke-virtual {v2, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_2

    .line 137
    :catch_0
    move-exception v0

    goto :goto_2

    .line 127
    :catch_1
    move-exception v0

    goto :goto_1
.end method

.method public b()V
    .locals 1

    .prologue
    .line 157
    sget v0, Lcom/baidu/mobstat/dq$a;->a:I

    invoke-virtual {p0, v0}, Lcom/baidu/mobstat/dq;->b(I)V

    .line 158
    sget v0, Lcom/baidu/mobstat/dq$a;->c:I

    invoke-virtual {p0, v0}, Lcom/baidu/mobstat/dq;->b(I)V

    .line 159
    sget v0, Lcom/baidu/mobstat/dq$a;->b:I

    invoke-virtual {p0, v0}, Lcom/baidu/mobstat/dq;->b(I)V

    .line 160
    return-void
.end method

.method public b(I)V
    .locals 1

    .prologue
    .line 144
    sget v0, Lcom/baidu/mobstat/dq$a;->a:I

    if-eq p1, v0, :cond_0

    .line 147
    sget v0, Lcom/baidu/mobstat/dq$a;->c:I

    if-eq p1, v0, :cond_1

    .line 151
    iget-object v0, p0, Lcom/baidu/mobstat/dq;->e:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 152
    iget-object v0, p0, Lcom/baidu/mobstat/dq;->d:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 154
    :goto_0
    return-void

    .line 145
    :cond_0
    iget-object v0, p0, Lcom/baidu/mobstat/dq;->c:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 146
    iget-object v0, p0, Lcom/baidu/mobstat/dq;->b:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    goto :goto_0

    .line 148
    :cond_1
    iget-object v0, p0, Lcom/baidu/mobstat/dq;->g:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 149
    iget-object v0, p0, Lcom/baidu/mobstat/dq;->f:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    goto :goto_0
.end method
