.class Lmiui/telephony/ServiceProviderUtils$ServiceProvider;
.super Lmiui/telephony/ServiceProviderUtils$ServiceProviderBase;
.source "ServiceProviderUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiui/telephony/ServiceProviderUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ServiceProvider"
.end annotation


# instance fields
.field private mvnos:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lmiui/telephony/ServiceProviderUtils$VirtualServiceProvider;",
            ">;"
        }
    .end annotation
.end field

.field private final numerics:[I


# direct methods
.method public constructor <init>([ILjava/util/Map;[Lmiui/telephony/ServiceProviderUtils$Condition;)V
    .locals 5
    .param p1, "numerics"    # [I
    .param p3, "conditions"    # [Lmiui/telephony/ServiceProviderUtils$Condition;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([I",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lmiui/telephony/ServiceProviderUtils$Name;",
            ">;[",
            "Lmiui/telephony/ServiceProviderUtils$Condition;",
            ")V"
        }
    .end annotation

    .prologue
    .local p2, "names":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lmiui/telephony/ServiceProviderUtils$Name;>;"
    const/4 v3, 0x0

    .line 152
    invoke-direct {p0, p2, p3}, Lmiui/telephony/ServiceProviderUtils$ServiceProviderBase;-><init>(Ljava/util/Map;[Lmiui/telephony/ServiceProviderUtils$Condition;)V

    .line 154
    if-eqz p1, :cond_0

    array-length v4, p1

    if-nez v4, :cond_1

    .line 155
    :cond_0
    new-instance v3, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v4, "spn should have at least one numeric"

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 158
    :cond_1
    new-instance v2, Landroid/util/SparseIntArray;

    invoke-direct {v2}, Landroid/util/SparseIntArray;-><init>()V

    .line 159
    .local v2, "sia":Landroid/util/SparseIntArray;
    array-length v4, p1

    :goto_0
    if-ge v3, v4, :cond_2

    aget v1, p1, v3

    .line 160
    .local v1, "numeric":I
    invoke-virtual {v2, v1, v1}, Landroid/util/SparseIntArray;->put(II)V

    .line 159
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 163
    .end local v1    # "numeric":I
    :cond_2
    invoke-virtual {v2}, Landroid/util/SparseIntArray;->size()I

    move-result v3

    new-array v3, v3, [I

    iput-object v3, p0, Lmiui/telephony/ServiceProviderUtils$ServiceProvider;->numerics:[I

    .line 164
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    array-length v3, p1

    if-ge v0, v3, :cond_3

    .line 165
    iget-object v3, p0, Lmiui/telephony/ServiceProviderUtils$ServiceProvider;->numerics:[I

    invoke-virtual {v2, v0}, Landroid/util/SparseIntArray;->keyAt(I)I

    move-result v4

    aput v4, v3, v0

    .line 164
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 168
    :cond_3
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, p0, Lmiui/telephony/ServiceProviderUtils$ServiceProvider;->mvnos:Ljava/util/ArrayList;

    .line 151
    return-void
.end method


# virtual methods
.method public addMvno(Lmiui/telephony/ServiceProviderUtils$VirtualServiceProvider;)V
    .locals 1
    .param p1, "vsp"    # Lmiui/telephony/ServiceProviderUtils$VirtualServiceProvider;

    .prologue
    .line 176
    iget-object v0, p0, Lmiui/telephony/ServiceProviderUtils$ServiceProvider;->mvnos:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 175
    return-void
.end method

.method public getAllVirtualServiceProvider()Ljava/util/Collection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection",
            "<",
            "Lmiui/telephony/ServiceProviderUtils$VirtualServiceProvider;",
            ">;"
        }
    .end annotation

    .prologue
    .line 172
    iget-object v0, p0, Lmiui/telephony/ServiceProviderUtils$ServiceProvider;->mvnos:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getBaseNumeric()I
    .locals 2

    .prologue
    .line 181
    iget-object v0, p0, Lmiui/telephony/ServiceProviderUtils$ServiceProvider;->numerics:[I

    const/4 v1, 0x0

    aget v0, v0, v1

    return v0
.end method

.method public getNumerics()[I
    .locals 1

    .prologue
    .line 186
    iget-object v0, p0, Lmiui/telephony/ServiceProviderUtils$ServiceProvider;->numerics:[I

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 191
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 192
    .local v0, "b":Ljava/lang/StringBuilder;
    const-string/jumbo v2, "numeric=["

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 193
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v2, p0, Lmiui/telephony/ServiceProviderUtils$ServiceProvider;->numerics:[I

    array-length v2, v2

    if-ge v1, v2, :cond_1

    .line 194
    if-eqz v1, :cond_0

    .line 195
    const-string/jumbo v2, ", "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 197
    :cond_0
    iget-object v2, p0, Lmiui/telephony/ServiceProviderUtils$ServiceProvider;->numerics:[I

    aget v2, v2, v1

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 193
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 200
    :cond_1
    const-string/jumbo v2, "], "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-super {p0}, Lmiui/telephony/ServiceProviderUtils$ServiceProviderBase;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 201
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method
