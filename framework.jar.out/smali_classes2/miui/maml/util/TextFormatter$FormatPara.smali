.class abstract Lmiui/maml/util/TextFormatter$FormatPara;
.super Ljava/lang/Object;
.source "TextFormatter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiui/maml/util/TextFormatter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x40a
    name = "FormatPara"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 143
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lmiui/maml/util/TextFormatter$FormatPara;)V
    .locals 0

    .prologue
    invoke-direct {p0}, Lmiui/maml/util/TextFormatter$FormatPara;-><init>()V

    return-void
.end method

.method public static build(Lmiui/maml/data/Variables;Ljava/lang/String;)Lmiui/maml/util/TextFormatter$FormatPara;
    .locals 6
    .param p0, "vars"    # Lmiui/maml/data/Variables;
    .param p1, "para"    # Ljava/lang/String;

    .prologue
    const/4 v5, 0x0

    .line 175
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    .line 176
    .local v0, "exp":Ljava/lang/String;
    const-string/jumbo v2, "@"

    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 177
    new-instance v2, Lmiui/maml/util/TextFormatter$StringVarPara;

    const/4 v3, 0x1

    invoke-virtual {v0, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, p0, v3}, Lmiui/maml/util/TextFormatter$StringVarPara;-><init>(Lmiui/maml/data/Variables;Ljava/lang/String;)V

    return-object v2

    .line 179
    :cond_0
    invoke-static {p0, v0}, Lmiui/maml/data/Expression;->build(Lmiui/maml/data/Variables;Ljava/lang/String;)Lmiui/maml/data/Expression;

    move-result-object v1

    .line 180
    .local v1, "expression":Lmiui/maml/data/Expression;
    if-nez v1, :cond_1

    .line 181
    const-string/jumbo v2, "TextFormatter"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "invalid parameter expression:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 182
    return-object v5

    .line 184
    :cond_1
    new-instance v2, Lmiui/maml/util/TextFormatter$ExpressioPara;

    invoke-direct {v2, v1}, Lmiui/maml/util/TextFormatter$ExpressioPara;-><init>(Lmiui/maml/data/Expression;)V

    return-object v2
.end method

.method public static buildArray(Lmiui/maml/data/Variables;Ljava/lang/String;)[Lmiui/maml/util/TextFormatter$FormatPara;
    .locals 9
    .param p0, "vars"    # Lmiui/maml/data/Variables;
    .param p1, "exp"    # Ljava/lang/String;

    .prologue
    const/4 v8, 0x0

    .line 145
    const/4 v0, 0x0

    .line 146
    .local v0, "bracketCount":I
    const/4 v6, 0x0

    .line 147
    .local v6, "start":I
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 148
    .local v2, "exps":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lmiui/maml/util/TextFormatter$FormatPara;>;"
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v7

    if-ge v3, v7, :cond_4

    .line 149
    invoke-virtual {p1, v3}, Ljava/lang/String;->charAt(I)C

    move-result v1

    .line 150
    .local v1, "c":C
    if-nez v0, :cond_1

    .line 151
    const/16 v7, 0x2c

    if-ne v1, v7, :cond_1

    .line 152
    invoke-virtual {p1, v6, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    invoke-static {p0, v7}, Lmiui/maml/util/TextFormatter$FormatPara;->build(Lmiui/maml/data/Variables;Ljava/lang/String;)Lmiui/maml/util/TextFormatter$FormatPara;

    move-result-object v4

    .line 153
    .local v4, "para":Lmiui/maml/util/TextFormatter$FormatPara;
    if-nez v4, :cond_0

    .line 154
    return-object v8

    .line 155
    :cond_0
    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 156
    add-int/lit8 v6, v3, 0x1

    .line 159
    .end local v4    # "para":Lmiui/maml/util/TextFormatter$FormatPara;
    :cond_1
    const/16 v7, 0x28

    if-ne v1, v7, :cond_3

    .line 160
    add-int/lit8 v0, v0, 0x1

    .line 148
    :cond_2
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 161
    :cond_3
    const/16 v7, 0x29

    if-ne v1, v7, :cond_2

    .line 162
    add-int/lit8 v0, v0, -0x1

    goto :goto_1

    .line 165
    .end local v1    # "c":C
    :cond_4
    invoke-virtual {p1, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v7

    invoke-static {p0, v7}, Lmiui/maml/util/TextFormatter$FormatPara;->build(Lmiui/maml/data/Variables;Ljava/lang/String;)Lmiui/maml/util/TextFormatter$FormatPara;

    move-result-object v4

    .line 166
    .restart local v4    # "para":Lmiui/maml/util/TextFormatter$FormatPara;
    if-nez v4, :cond_5

    .line 167
    return-object v8

    .line 169
    :cond_5
    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 170
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v7

    new-array v5, v7, [Lmiui/maml/util/TextFormatter$FormatPara;

    .line 171
    .local v5, "ret":[Lmiui/maml/util/TextFormatter$FormatPara;
    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v7

    check-cast v7, [Lmiui/maml/util/TextFormatter$FormatPara;

    return-object v7
.end method


# virtual methods
.method public abstract evaluate()Ljava/lang/Object;
.end method
