.class public Lmiui/maml/data/ContextVariables;
.super Ljava/lang/Object;
.source "ContextVariables.java"


# instance fields
.field private mMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lmiui/maml/data/ContextVariables;->mMap:Ljava/util/HashMap;

    .line 8
    return-void
.end method


# virtual methods
.method public clear()V
    .locals 1

    .prologue
    .line 71
    iget-object v0, p0, Lmiui/maml/data/ContextVariables;->mMap:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 70
    return-void
.end method

.method public getBmp(Ljava/lang/String;)Landroid/graphics/Bitmap;
    .locals 3
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    .line 61
    iget-object v1, p0, Lmiui/maml/data/ContextVariables;->mMap:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 62
    .local v0, "value":Ljava/lang/Object;
    if-nez v0, :cond_0

    .line 63
    return-object v2

    .line 64
    :cond_0
    instance-of v1, v0, Landroid/graphics/Bitmap;

    if-nez v1, :cond_1

    .line 65
    return-object v2

    .line 67
    :cond_1
    check-cast v0, Landroid/graphics/Bitmap;

    .end local v0    # "value":Ljava/lang/Object;
    return-object v0
.end method

.method public getDouble(Ljava/lang/String;)Ljava/lang/Double;
    .locals 3
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    .line 31
    iget-object v1, p0, Lmiui/maml/data/ContextVariables;->mMap:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 32
    .local v0, "value":Ljava/lang/Object;
    if-nez v0, :cond_0

    .line 33
    return-object v2

    .line 34
    :cond_0
    instance-of v1, v0, Ljava/lang/Double;

    if-nez v1, :cond_1

    .line 35
    return-object v2

    .line 37
    :cond_1
    check-cast v0, Ljava/lang/Double;

    .end local v0    # "value":Ljava/lang/Object;
    return-object v0
.end method

.method public getInt(Ljava/lang/String;)Ljava/lang/Integer;
    .locals 3
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    .line 41
    iget-object v1, p0, Lmiui/maml/data/ContextVariables;->mMap:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 42
    .local v0, "value":Ljava/lang/Object;
    if-nez v0, :cond_0

    .line 43
    return-object v2

    .line 44
    :cond_0
    instance-of v1, v0, Ljava/lang/Integer;

    if-nez v1, :cond_1

    .line 45
    return-object v2

    .line 47
    :cond_1
    check-cast v0, Ljava/lang/Integer;

    .end local v0    # "value":Ljava/lang/Object;
    return-object v0
.end method

.method public getLong(Ljava/lang/String;)Ljava/lang/Long;
    .locals 3
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    .line 51
    iget-object v1, p0, Lmiui/maml/data/ContextVariables;->mMap:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 52
    .local v0, "value":Ljava/lang/Object;
    if-nez v0, :cond_0

    .line 53
    return-object v2

    .line 54
    :cond_0
    instance-of v1, v0, Ljava/lang/Long;

    if-nez v1, :cond_1

    .line 55
    return-object v2

    .line 57
    :cond_1
    check-cast v0, Ljava/lang/Long;

    .end local v0    # "value":Ljava/lang/Object;
    return-object v0
.end method

.method public getString(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    .line 21
    iget-object v1, p0, Lmiui/maml/data/ContextVariables;->mMap:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 22
    .local v0, "value":Ljava/lang/Object;
    if-nez v0, :cond_0

    .line 23
    return-object v2

    .line 24
    :cond_0
    instance-of v1, v0, Ljava/lang/String;

    if-nez v1, :cond_1

    .line 25
    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 27
    :cond_1
    check-cast v0, Ljava/lang/String;

    .end local v0    # "value":Ljava/lang/Object;
    return-object v0
.end method

.method public getVar(Ljava/lang/String;)Ljava/lang/Object;
    .locals 1
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 17
    iget-object v0, p0, Lmiui/maml/data/ContextVariables;->mMap:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public setVar(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/Object;

    .prologue
    .line 13
    iget-object v0, p0, Lmiui/maml/data/ContextVariables;->mMap:Ljava/util/HashMap;

    invoke-virtual {v0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 12
    return-void
.end method
