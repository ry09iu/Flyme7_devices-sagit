.class Lmiui/telephony/ServiceProviderUtils$NumericSpnCondition;
.super Lmiui/telephony/ServiceProviderUtils$Condition;
.source "ServiceProviderUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiui/telephony/ServiceProviderUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "NumericSpnCondition"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 1

    .prologue
    .line 748
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lmiui/telephony/ServiceProviderUtils$Condition;-><init>(Lmiui/telephony/ServiceProviderUtils$Condition;)V

    return-void
.end method

.method synthetic constructor <init>(Lmiui/telephony/ServiceProviderUtils$NumericSpnCondition;)V
    .locals 0

    .prologue
    invoke-direct {p0}, Lmiui/telephony/ServiceProviderUtils$NumericSpnCondition;-><init>()V

    return-void
.end method


# virtual methods
.method public execute(ILjava/lang/String;I)Z
    .locals 5
    .param p1, "slotId"    # I
    .param p2, "spn"    # Ljava/lang/String;
    .param p3, "numeric"    # I

    .prologue
    const/4 v4, 0x1

    .line 751
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 752
    return v4

    .line 755
    :cond_0
    :try_start_0
    invoke-virtual {p2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, " "

    const-string/jumbo v3, ""

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    if-ne p3, v1, :cond_1

    .line 756
    return v4

    .line 758
    :catch_0
    move-exception v0

    .line 759
    .local v0, "e":Ljava/lang/Exception;
    const-string/jumbo v1, "ServiceProvider"

    const-string/jumbo v2, "Exception in execute NumericSpnCondition"

    invoke-static {v1, v2, v0}, Landroid/telephony/Rlog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 761
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_1
    const/4 v1, 0x0

    return v1
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 766
    const-string/jumbo v0, "CONDITION: when plmn is numeric"

    return-object v0
.end method
