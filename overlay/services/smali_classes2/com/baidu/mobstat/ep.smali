.class public Lcom/baidu/mobstat/ep;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/baidu/mobstat/ep$a;,
        Lcom/baidu/mobstat/ep$b;,
        Lcom/baidu/mobstat/ep$c;
    }
.end annotation


# instance fields
.field private a:Z

.field private b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/baidu/mobstat/ep$b;",
            ">;"
        }
    .end annotation
.end field

.field private c:Ljava/lang/String;

.field private d:Lcom/baidu/mobstat/es;

.field private e:Z


# direct methods
.method public constructor <init>(Landroid/app/Activity;Lcom/baidu/mobstat/es;Z)V
    .locals 1

    .prologue
    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/baidu/mobstat/ep;->b:Ljava/util/List;

    .line 30
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/baidu/mobstat/ep;->c:Ljava/lang/String;

    .line 31
    iput-object p2, p0, Lcom/baidu/mobstat/ep;->d:Lcom/baidu/mobstat/es;

    .line 32
    iput-boolean p3, p0, Lcom/baidu/mobstat/ep;->e:Z

    .line 33
    return-void
.end method

.method private a(Landroid/app/Activity;Landroid/view/View;Lcom/baidu/mobstat/ep$c;)V
    .locals 6

    .prologue
    const/4 v1, 0x0

    .line 84
    if-eqz p2, :cond_1

    .line 88
    invoke-static {p2}, Lcom/baidu/mobstat/cj;->a(Landroid/view/View;)Z

    move-result v0

    .line 90
    if-nez v0, :cond_2

    .line 94
    new-instance v2, Lcom/baidu/mobstat/ep$c;

    invoke-direct {v2, p2, p3}, Lcom/baidu/mobstat/ep$c;-><init>(Landroid/view/View;Lcom/baidu/mobstat/ep$c;)V

    .line 97
    if-nez p3, :cond_3

    .line 118
    :goto_0
    instance-of v0, p2, Landroid/webkit/WebView;

    if-nez v0, :cond_a

    .line 122
    instance-of v0, p2, Landroid/view/ViewGroup;

    if-nez v0, :cond_b

    .line 129
    :cond_0
    return-void

    .line 85
    :cond_1
    return-void

    .line 91
    :cond_2
    return-void

    .line 98
    :cond_3
    invoke-virtual {v2}, Lcom/baidu/mobstat/ep$c;->a()Ljava/lang/String;

    move-result-object v0

    .line 99
    invoke-virtual {v2}, Lcom/baidu/mobstat/ep$c;->b()Ljava/lang/String;

    move-result-object v3

    .line 101
    iget-boolean v4, p0, Lcom/baidu/mobstat/ep;->a:Z

    if-nez v4, :cond_6

    .line 102
    iget-object v4, p0, Lcom/baidu/mobstat/ep;->b:Ljava/util/List;

    invoke-direct {p0, v4, v0, v3}, Lcom/baidu/mobstat/ep;->a(Ljava/util/List;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    .line 104
    :goto_1
    if-eqz v0, :cond_7

    .line 105
    :cond_4
    invoke-static {}, Lcom/baidu/mobstat/ei;->c()Lcom/baidu/mobstat/ei;

    move-result-object v3

    invoke-virtual {v3}, Lcom/baidu/mobstat/ei;->b()Z

    move-result v3

    if-nez v3, :cond_8

    .line 109
    :cond_5
    :goto_2
    invoke-static {}, Lcom/baidu/mobstat/eo;->c()Lcom/baidu/mobstat/eo;

    move-result-object v3

    invoke-virtual {v3}, Lcom/baidu/mobstat/eo;->b()Z

    move-result v3

    if-nez v3, :cond_9

    .line 114
    :goto_3
    iget-object v3, p0, Lcom/baidu/mobstat/ep;->d:Lcom/baidu/mobstat/es;

    invoke-virtual {v3, p2, v0}, Lcom/baidu/mobstat/es;->a(Landroid/view/View;Z)V

    goto :goto_0

    .line 102
    :cond_6
    invoke-virtual {v2}, Lcom/baidu/mobstat/ep$c;->c()Ljava/lang/String;

    move-result-object v0

    invoke-static {p2, v0}, Lcom/baidu/mobstat/eq;->b(Landroid/view/View;Ljava/lang/String;)Z

    move-result v0

    goto :goto_1

    .line 104
    :cond_7
    iget-boolean v3, p0, Lcom/baidu/mobstat/ep;->e:Z

    if-nez v3, :cond_4

    goto :goto_0

    .line 105
    :cond_8
    if-eqz v0, :cond_5

    .line 106
    invoke-static {}, Lcom/baidu/mobstat/ei;->c()Lcom/baidu/mobstat/ei;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "accumulate view:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 107
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, "; content:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {p2}, Lcom/baidu/mobstat/eq;->i(Landroid/view/View;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 106
    invoke-virtual {v3, v4}, Lcom/baidu/mobstat/ei;->a(Ljava/lang/String;)V

    goto :goto_2

    .line 110
    :cond_9
    invoke-static {}, Lcom/baidu/mobstat/eo;->c()Lcom/baidu/mobstat/eo;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "accumulate view:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 111
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, "; content:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {p2}, Lcom/baidu/mobstat/eq;->i(Landroid/view/View;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 110
    invoke-virtual {v3, v4}, Lcom/baidu/mobstat/eo;->a(Ljava/lang/String;)V

    goto :goto_3

    .line 119
    :cond_a
    return-void

    .line 123
    :cond_b
    check-cast p2, Landroid/view/ViewGroup;

    move v0, v1

    .line 125
    :goto_4
    invoke-virtual {p2}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 126
    invoke-virtual {p2, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    invoke-direct {p0, p1, v1, v2}, Lcom/baidu/mobstat/ep;->a(Landroid/app/Activity;Landroid/view/View;Lcom/baidu/mobstat/ep$c;)V

    .line 125
    add-int/lit8 v0, v0, 0x1

    goto :goto_4
.end method

.method private a(Ljava/util/List;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/baidu/mobstat/ep$b;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")Z"
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    .line 133
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_1

    .line 145
    return v4

    .line 133
    :cond_1
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/baidu/mobstat/ep$b;

    .line 134
    iget-boolean v1, v0, Lcom/baidu/mobstat/ep$b;->c:Z

    if-nez v1, :cond_2

    move-object v1, p2

    .line 136
    :goto_0
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 140
    iget-object v0, v0, Lcom/baidu/mobstat/ep$b;->b:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 141
    const/4 v0, 0x1

    return v0

    :cond_2
    move-object v1, p3

    .line 134
    goto :goto_0
.end method


# virtual methods
.method public a(Landroid/app/Activity;)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 75
    iget-boolean v0, p0, Lcom/baidu/mobstat/ep;->e:Z

    if-eqz v0, :cond_1

    .line 79
    :cond_0
    :goto_0
    invoke-static {p1}, Lcom/baidu/mobstat/eq;->a(Landroid/app/Activity;)Landroid/view/View;

    move-result-object v0

    .line 80
    invoke-direct {p0, p1, v0, v1}, Lcom/baidu/mobstat/ep;->a(Landroid/app/Activity;Landroid/view/View;Lcom/baidu/mobstat/ep$c;)V

    .line 81
    return-void

    .line 75
    :cond_1
    iget-boolean v0, p0, Lcom/baidu/mobstat/ep;->a:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/baidu/mobstat/ep;->b:Ljava/util/List;

    if-nez v0, :cond_3

    .line 76
    :cond_2
    return-void

    .line 75
    :cond_3
    iget-object v0, p0, Lcom/baidu/mobstat/ep;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-eqz v0, :cond_2

    goto :goto_0
.end method

.method public a(Lorg/json/JSONObject;)V
    .locals 11

    .prologue
    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 36
    if-eqz p1, :cond_0

    :try_start_0
    const-string/jumbo v1, "meta"

    .line 41
    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/json/JSONObject;

    const-string/jumbo v2, "matchAll"

    .line 42
    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v1

    .line 43
    if-nez v1, :cond_1

    move v1, v8

    :goto_0
    iput-boolean v1, p0, Lcom/baidu/mobstat/ep;->a:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 48
    :goto_1
    iget-boolean v1, p0, Lcom/baidu/mobstat/ep;->a:Z

    if-nez v1, :cond_2

    :try_start_1
    const-string/jumbo v1, "data"

    .line 53
    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    move-object v0, v1

    check-cast v0, Lorg/json/JSONArray;

    move-object v7, v0

    move v10, v8

    .line 54
    :goto_2
    invoke-virtual {v7}, Lorg/json/JSONArray;->length()I

    move-result v1

    if-lt v10, v1, :cond_3

    .line 72
    :goto_3
    return-void

    .line 37
    :cond_0
    return-void

    :cond_1
    move v1, v9

    .line 43
    goto :goto_0

    .line 49
    :cond_2
    return-void

    .line 55
    :cond_3
    invoke-virtual {v7, v10}, Lorg/json/JSONArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/json/JSONObject;

    const-string/jumbo v2, "page"

    .line 57
    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v2, "layout"

    .line 58
    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v2, "contentAsLabel"

    .line 59
    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v6

    const-string/jumbo v2, "ignoreCellIndex"

    .line 61
    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v1

    .line 62
    if-nez v1, :cond_4

    move v5, v8

    .line 64
    :goto_4
    iget-object v1, p0, Lcom/baidu/mobstat/ep;->c:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5

    .line 54
    :goto_5
    add-int/lit8 v1, v10, 0x1

    move v10, v1

    goto :goto_2

    :cond_4
    move v5, v9

    .line 62
    goto :goto_4

    .line 65
    :cond_5
    new-instance v1, Lcom/baidu/mobstat/ep$b;

    move-object v2, p0

    invoke-direct/range {v1 .. v6}, Lcom/baidu/mobstat/ep$b;-><init>(Lcom/baidu/mobstat/ep;Ljava/lang/String;Ljava/lang/String;ZI)V

    .line 66
    iget-object v2, p0, Lcom/baidu/mobstat/ep;->b:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_5

    .line 71
    :catch_0
    move-exception v1

    goto :goto_3

    .line 46
    :catch_1
    move-exception v1

    goto :goto_1
.end method
