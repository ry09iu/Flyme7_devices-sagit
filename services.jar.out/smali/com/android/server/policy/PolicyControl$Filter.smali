.class Lcom/android/server/policy/PolicyControl$Filter;
.super Ljava/lang/Object;
.source "PolicyControl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/policy/PolicyControl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Filter"
.end annotation


# static fields
.field private static final ALL:Ljava/lang/String; = "*"

.field private static final APPS:Ljava/lang/String; = "apps"


# instance fields
.field private final mBlacklist:Landroid/util/ArraySet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArraySet",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final mWhitelist:Landroid/util/ArraySet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArraySet",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Landroid/util/ArraySet;Landroid/util/ArraySet;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/ArraySet",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Landroid/util/ArraySet",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 191
    .local p1, "whitelist":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    .local p2, "blacklist":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 192
    iput-object p1, p0, Lcom/android/server/policy/PolicyControl$Filter;->mWhitelist:Landroid/util/ArraySet;

    .line 193
    iput-object p2, p0, Lcom/android/server/policy/PolicyControl$Filter;->mBlacklist:Landroid/util/ArraySet;

    .line 191
    return-void
.end method

.method private dump(Ljava/lang/String;Landroid/util/ArraySet;Ljava/io/PrintWriter;)V
    .locals 3
    .param p1, "name"    # Ljava/lang/String;
    .param p3, "pw"    # Ljava/io/PrintWriter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Landroid/util/ArraySet",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/io/PrintWriter;",
            ")V"
        }
    .end annotation

    .prologue
    .line 225
    .local p2, "set":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v2, "=("

    invoke-virtual {p3, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 226
    invoke-virtual {p2}, Landroid/util/ArraySet;->size()I

    move-result v1

    .line 227
    .local v1, "n":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v1, :cond_1

    .line 228
    if-lez v0, :cond_0

    const/16 v2, 0x2c

    invoke-virtual {p3, v2}, Ljava/io/PrintWriter;->print(C)V

    .line 229
    :cond_0
    invoke-virtual {p2, v0}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {p3, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 227
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 231
    :cond_1
    const/16 v2, 0x29

    invoke-virtual {p3, v2}, Ljava/io/PrintWriter;->print(C)V

    .line 224
    return-void
.end method

.method private onBlacklist(Ljava/lang/String;)Z
    .locals 2
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    .line 211
    iget-object v0, p0, Lcom/android/server/policy/PolicyControl$Filter;->mBlacklist:Landroid/util/ArraySet;

    invoke-virtual {v0, p1}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/server/policy/PolicyControl$Filter;->mBlacklist:Landroid/util/ArraySet;

    const-string/jumbo v1, "*"

    invoke-virtual {v0, v1}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private onWhitelist(Ljava/lang/String;)Z
    .locals 2
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    .line 215
    iget-object v0, p0, Lcom/android/server/policy/PolicyControl$Filter;->mWhitelist:Landroid/util/ArraySet;

    const-string/jumbo v1, "*"

    invoke-virtual {v0, v1}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/server/policy/PolicyControl$Filter;->mWhitelist:Landroid/util/ArraySet;

    invoke-virtual {v0, p1}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method static parse(Ljava/lang/String;)Lcom/android/server/policy/PolicyControl$Filter;
    .locals 8
    .param p0, "value"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x0

    const/4 v7, 0x1

    .line 244
    if-nez p0, :cond_0

    return-object v3

    .line 245
    :cond_0
    new-instance v2, Landroid/util/ArraySet;

    invoke-direct {v2}, Landroid/util/ArraySet;-><init>()V

    .line 246
    .local v2, "whitelist":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    .line 247
    .local v0, "blacklist":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    const-string/jumbo v3, ","

    invoke-virtual {p0, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    const/4 v3, 0x0

    array-length v5, v4

    :goto_0
    if-ge v3, v5, :cond_2

    aget-object v1, v4, v3

    .line 248
    .local v1, "token":Ljava/lang/String;
    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    .line 249
    const-string/jumbo v6, "-"

    invoke-virtual {v1, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v6

    if-le v6, v7, :cond_1

    .line 250
    invoke-virtual {v1, v7}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    .line 251
    invoke-virtual {v0, v1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 247
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 253
    :cond_1
    invoke-virtual {v2, v1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 256
    .end local v1    # "token":Ljava/lang/String;
    :cond_2
    new-instance v3, Lcom/android/server/policy/PolicyControl$Filter;

    invoke-direct {v3, v2, v0}, Lcom/android/server/policy/PolicyControl$Filter;-><init>(Landroid/util/ArraySet;Landroid/util/ArraySet;)V

    return-object v3
.end method


# virtual methods
.method dump(Ljava/io/PrintWriter;)V
    .locals 2
    .param p1, "pw"    # Ljava/io/PrintWriter;

    .prologue
    .line 219
    const-string/jumbo v0, "Filter["

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 220
    const-string/jumbo v0, "whitelist"

    iget-object v1, p0, Lcom/android/server/policy/PolicyControl$Filter;->mWhitelist:Landroid/util/ArraySet;

    invoke-direct {p0, v0, v1, p1}, Lcom/android/server/policy/PolicyControl$Filter;->dump(Ljava/lang/String;Landroid/util/ArraySet;Ljava/io/PrintWriter;)V

    const/16 v0, 0x2c

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(C)V

    .line 221
    const-string/jumbo v0, "blacklist"

    iget-object v1, p0, Lcom/android/server/policy/PolicyControl$Filter;->mBlacklist:Landroid/util/ArraySet;

    invoke-direct {p0, v0, v1, p1}, Lcom/android/server/policy/PolicyControl$Filter;->dump(Ljava/lang/String;Landroid/util/ArraySet;Ljava/io/PrintWriter;)V

    const/16 v0, 0x5d

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(C)V

    .line 218
    return-void
.end method

.method matches(Landroid/view/WindowManager$LayoutParams;)Z
    .locals 5
    .param p1, "attrs"    # Landroid/view/WindowManager$LayoutParams;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 197
    if-nez p1, :cond_0

    return v2

    .line 198
    :cond_0
    iget v3, p1, Landroid/view/WindowManager$LayoutParams;->type:I

    if-lt v3, v1, :cond_2

    .line 199
    iget v3, p1, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v4, 0x63

    if-gt v3, v4, :cond_1

    move v0, v1

    .line 200
    .local v0, "isApp":Z
    :goto_0
    if-eqz v0, :cond_3

    iget-object v3, p0, Lcom/android/server/policy/PolicyControl$Filter;->mBlacklist:Landroid/util/ArraySet;

    const-string/jumbo v4, "apps"

    invoke-virtual {v3, v4}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    return v2

    .end local v0    # "isApp":Z
    :cond_1
    move v0, v2

    .line 199
    goto :goto_0

    :cond_2
    move v0, v2

    .line 198
    goto :goto_0

    .line 201
    .restart local v0    # "isApp":Z
    :cond_3
    iget-object v3, p1, Landroid/view/WindowManager$LayoutParams;->packageName:Ljava/lang/String;

    invoke-direct {p0, v3}, Lcom/android/server/policy/PolicyControl$Filter;->onBlacklist(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_4

    return v2

    .line 202
    :cond_4
    if-eqz v0, :cond_5

    iget-object v2, p0, Lcom/android/server/policy/PolicyControl$Filter;->mWhitelist:Landroid/util/ArraySet;

    const-string/jumbo v3, "apps"

    invoke-virtual {v2, v3}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    return v1

    .line 203
    :cond_5
    iget-object v1, p1, Landroid/view/WindowManager$LayoutParams;->packageName:Ljava/lang/String;

    invoke-direct {p0, v1}, Lcom/android/server/policy/PolicyControl$Filter;->onWhitelist(Ljava/lang/String;)Z

    move-result v1

    return v1
.end method

.method matches(Ljava/lang/String;)Z
    .locals 1
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    .line 207
    invoke-direct {p0, p1}, Lcom/android/server/policy/PolicyControl$Filter;->onBlacklist(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-direct {p0, p1}, Lcom/android/server/policy/PolicyControl$Filter;->onWhitelist(Ljava/lang/String;)Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 236
    new-instance v0, Ljava/io/StringWriter;

    invoke-direct {v0}, Ljava/io/StringWriter;-><init>()V

    .line 237
    .local v0, "sw":Ljava/io/StringWriter;
    new-instance v1, Ljava/io/PrintWriter;

    const/4 v2, 0x1

    invoke-direct {v1, v0, v2}, Ljava/io/PrintWriter;-><init>(Ljava/io/Writer;Z)V

    invoke-virtual {p0, v1}, Lcom/android/server/policy/PolicyControl$Filter;->dump(Ljava/io/PrintWriter;)V

    .line 238
    invoke-virtual {v0}, Ljava/io/StringWriter;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
