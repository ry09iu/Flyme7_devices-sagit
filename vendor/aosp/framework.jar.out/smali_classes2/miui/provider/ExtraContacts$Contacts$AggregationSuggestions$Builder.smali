.class public final Lmiui/provider/ExtraContacts$Contacts$AggregationSuggestions$Builder;
.super Ljava/lang/Object;
.source "ExtraContacts.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiui/provider/ExtraContacts$Contacts$AggregationSuggestions;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private mContactId:J

.field private mKinds:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mLimit:I

.field private mValues:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 850
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 852
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lmiui/provider/ExtraContacts$Contacts$AggregationSuggestions$Builder;->mKinds:Ljava/util/ArrayList;

    .line 853
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lmiui/provider/ExtraContacts$Contacts$AggregationSuggestions$Builder;->mValues:Ljava/util/ArrayList;

    .line 850
    return-void
.end method


# virtual methods
.method public addParameter(Ljava/lang/String;Ljava/lang/String;)Lmiui/provider/ExtraContacts$Contacts$AggregationSuggestions$Builder;
    .locals 1
    .param p1, "kind"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    .prologue
    .line 876
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 877
    iget-object v0, p0, Lmiui/provider/ExtraContacts$Contacts$AggregationSuggestions$Builder;->mKinds:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 878
    iget-object v0, p0, Lmiui/provider/ExtraContacts$Contacts$AggregationSuggestions$Builder;->mValues:Ljava/util/ArrayList;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 880
    :cond_0
    return-object p0
.end method

.method public build()Landroid/net/Uri;
    .locals 6

    .prologue
    .line 889
    sget-object v3, Landroid/provider/ContactsContract$Contacts;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v3}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    .line 890
    .local v0, "builder":Landroid/net/Uri$Builder;
    iget-wide v4, p0, Lmiui/provider/ExtraContacts$Contacts$AggregationSuggestions$Builder;->mContactId:J

    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/net/Uri$Builder;->appendEncodedPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 891
    const-string/jumbo v3, "suggestions"

    invoke-virtual {v0, v3}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 892
    iget v3, p0, Lmiui/provider/ExtraContacts$Contacts$AggregationSuggestions$Builder;->mLimit:I

    if-eqz v3, :cond_0

    .line 893
    const-string/jumbo v3, "limit"

    iget v4, p0, Lmiui/provider/ExtraContacts$Contacts$AggregationSuggestions$Builder;->mLimit:I

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 896
    :cond_0
    iget-object v3, p0, Lmiui/provider/ExtraContacts$Contacts$AggregationSuggestions$Builder;->mKinds:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 897
    .local v1, "count":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v1, :cond_1

    .line 898
    const-string/jumbo v4, "query"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lmiui/provider/ExtraContacts$Contacts$AggregationSuggestions$Builder;->mKinds:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v5, ":"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v3, p0, Lmiui/provider/ExtraContacts$Contacts$AggregationSuggestions$Builder;->mValues:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v4, v3}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 897
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 901
    :cond_1
    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v3

    return-object v3
.end method

.method public setContactId(J)Lmiui/provider/ExtraContacts$Contacts$AggregationSuggestions$Builder;
    .locals 1
    .param p1, "contactId"    # J

    .prologue
    .line 861
    iput-wide p1, p0, Lmiui/provider/ExtraContacts$Contacts$AggregationSuggestions$Builder;->mContactId:J

    .line 862
    return-object p0
.end method

.method public setLimit(I)Lmiui/provider/ExtraContacts$Contacts$AggregationSuggestions$Builder;
    .locals 0
    .param p1, "limit"    # I

    .prologue
    .line 884
    iput p1, p0, Lmiui/provider/ExtraContacts$Contacts$AggregationSuggestions$Builder;->mLimit:I

    .line 885
    return-object p0
.end method
