.class Lmiui/telephony/ServiceProviderUtils$ImsiCondition;
.super Lmiui/telephony/ServiceProviderUtils$Condition;
.source "ServiceProviderUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiui/telephony/ServiceProviderUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ImsiCondition"
.end annotation


# instance fields
.field private final mImsis:[Ljava/lang/String;


# direct methods
.method public constructor <init>([Ljava/lang/String;)V
    .locals 3
    .param p1, "imsis"    # [Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    .line 656
    invoke-direct {p0, v2}, Lmiui/telephony/ServiceProviderUtils$Condition;-><init>(Lmiui/telephony/ServiceProviderUtils$Condition;)V

    .line 657
    new-instance v1, Ljava/util/HashSet;

    array-length v2, p1

    invoke-direct {v1, v2}, Ljava/util/HashSet;-><init>(I)V

    .line 658
    .local v1, "set":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v2, p1

    if-ge v0, v2, :cond_1

    .line 659
    aget-object v2, p1, v0

    if-eqz v2, :cond_0

    .line 660
    aget-object v2, p1, v0

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 658
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 664
    :cond_1
    invoke-virtual {v1}, Ljava/util/HashSet;->size()I

    move-result v2

    new-array v2, v2, [Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/util/HashSet;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Ljava/lang/String;

    iput-object v2, p0, Lmiui/telephony/ServiceProviderUtils$ImsiCondition;->mImsis:[Ljava/lang/String;

    .line 656
    return-void
.end method


# virtual methods
.method public execute(ILjava/lang/String;I)Z
    .locals 11
    .param p1, "slotId"    # I
    .param p2, "spn"    # Ljava/lang/String;
    .param p3, "numeric"    # I

    .prologue
    const/4 v7, 0x0

    .line 669
    invoke-static {p1}, Lcom/android/internal/telephony/PhoneFactory;->getPhone(I)Lcom/android/internal/telephony/Phone;

    move-result-object v5

    .line 670
    .local v5, "phone":Lcom/android/internal/telephony/Phone;
    if-nez v5, :cond_0

    .line 671
    return v7

    .line 674
    :cond_0
    invoke-virtual {v5}, Lcom/android/internal/telephony/Phone;->getIccRecordsLoaded()Z

    move-result v6

    if-nez v6, :cond_1

    .line 675
    return v7

    .line 678
    :cond_1
    invoke-virtual {v5}, Lcom/android/internal/telephony/Phone;->getIccCard()Lcom/android/internal/telephony/IccCard;

    move-result-object v6

    invoke-interface {v6}, Lcom/android/internal/telephony/IccCard;->getIccRecords()Lcom/android/internal/telephony/uicc/IccRecords;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/internal/telephony/uicc/IccRecords;->getIMSI()Ljava/lang/String;

    move-result-object v2

    .line 679
    .local v2, "imsi":Ljava/lang/String;
    if-nez v2, :cond_2

    .line 680
    return v7

    .line 682
    :cond_2
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    .line 683
    .local v3, "l":I
    iget-object v8, p0, Lmiui/telephony/ServiceProviderUtils$ImsiCondition;->mImsis:[Ljava/lang/String;

    array-length v9, v8

    move v6, v7

    :goto_0
    if-ge v6, v9, :cond_6

    aget-object v4, v8, v6

    .line 684
    .local v4, "m":Ljava/lang/String;
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v10

    if-eq v3, v10, :cond_3

    .line 683
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 687
    :cond_3
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    if-ge v1, v3, :cond_5

    .line 688
    invoke-virtual {v4, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 689
    .local v0, "c":C
    const/16 v6, 0x78

    if-eq v0, v6, :cond_4

    const/16 v6, 0x58

    if-eq v0, v6, :cond_4

    invoke-virtual {v2, v1}, Ljava/lang/String;->charAt(I)C

    move-result v6

    if-eq v0, v6, :cond_4

    .line 690
    return v7

    .line 687
    :cond_4
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 693
    .end local v0    # "c":C
    :cond_5
    const/4 v6, 0x1

    return v6

    .line 695
    .end local v1    # "i":I
    .end local v4    # "m":Ljava/lang/String;
    :cond_6
    return v7
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 700
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "CONDITION: when imsi~="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ","

    iget-object v2, p0, Lmiui/telephony/ServiceProviderUtils$ImsiCondition;->mImsis:[Ljava/lang/String;

    invoke-static {v1, v2}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
