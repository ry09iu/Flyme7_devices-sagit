.class Lmiui/maml/ScreenElementRoot$ExtraResource;
.super Ljava/lang/Object;
.source "ScreenElementRoot.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiui/maml/ScreenElementRoot;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ExtraResource"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmiui/maml/ScreenElementRoot$ExtraResource$MetricsType;,
        Lmiui/maml/ScreenElementRoot$ExtraResource$Resource;,
        Lmiui/maml/ScreenElementRoot$ExtraResource$ScaleMetrics;
    }
.end annotation


# instance fields
.field private mResources:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lmiui/maml/ScreenElementRoot$ExtraResource$ScaleMetrics;",
            ">;"
        }
    .end annotation
.end field

.field private mScales:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lmiui/maml/ScreenElementRoot$ExtraResource$ScaleMetrics;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static synthetic -wrap0(Ljava/lang/String;)I
    .locals 1
    .param p0, "str"    # Ljava/lang/String;

    .prologue
    invoke-static {p0}, Lmiui/maml/ScreenElementRoot$ExtraResource;->parseSizeType(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public constructor <init>(Lorg/w3c/dom/Element;I)V
    .locals 6
    .param p1, "root"    # Lorg/w3c/dom/Element;
    .param p2, "defaultDen"    # I

    .prologue
    const/4 v5, 0x0

    .line 853
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 834
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lmiui/maml/ScreenElementRoot$ExtraResource;->mResources:Ljava/util/ArrayList;

    .line 835
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lmiui/maml/ScreenElementRoot$ExtraResource;->mScales:Ljava/util/ArrayList;

    .line 854
    new-instance v0, Lmiui/maml/ScreenElementRoot$ExtraResource$Resource;

    invoke-direct {v0, p0}, Lmiui/maml/ScreenElementRoot$ExtraResource$Resource;-><init>(Lmiui/maml/ScreenElementRoot$ExtraResource;)V

    .line 855
    .local v0, "defaultRes":Lmiui/maml/ScreenElementRoot$ExtraResource$Resource;
    iput p2, v0, Lmiui/maml/ScreenElementRoot$ExtraResource$Resource;->mDensity:I

    .line 856
    invoke-static {p2}, Lmiui/maml/ResourceManager;->translateDensity(I)I

    move-result v2

    mul-int/lit16 v2, v2, 0x1e0

    div-int/lit16 v2, v2, 0xf0

    iput v2, v0, Lmiui/maml/ScreenElementRoot$ExtraResource$Resource;->mScreenWidth:I

    .line 858
    iput v5, v0, Lmiui/maml/ScreenElementRoot$ExtraResource$Resource;->mSizeType:I

    .line 859
    const/4 v2, 0x0

    iput-object v2, v0, Lmiui/maml/ScreenElementRoot$ExtraResource$Resource;->mPath:Ljava/lang/String;

    .line 860
    const/high16 v2, 0x3f800000    # 1.0f

    iput v2, v0, Lmiui/maml/ScreenElementRoot$ExtraResource$Resource;->mScale:F

    .line 861
    iget-object v2, p0, Lmiui/maml/ScreenElementRoot$ExtraResource;->mResources:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 863
    iget-object v2, p0, Lmiui/maml/ScreenElementRoot$ExtraResource;->mResources:Ljava/util/ArrayList;

    const-string/jumbo v3, "extraResourcesDensity"

    invoke-interface {p1, v3}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    sget-object v4, Lmiui/maml/ScreenElementRoot$ExtraResource$MetricsType;->DEN:Lmiui/maml/ScreenElementRoot$ExtraResource$MetricsType;

    invoke-direct {p0, v2, v3, v4}, Lmiui/maml/ScreenElementRoot$ExtraResource;->inflateMetrics(Ljava/util/ArrayList;Ljava/lang/String;Lmiui/maml/ScreenElementRoot$ExtraResource$MetricsType;)V

    .line 864
    iget-object v2, p0, Lmiui/maml/ScreenElementRoot$ExtraResource;->mResources:Ljava/util/ArrayList;

    const-string/jumbo v3, "extraResourcesScreenWidth"

    invoke-interface {p1, v3}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    sget-object v4, Lmiui/maml/ScreenElementRoot$ExtraResource$MetricsType;->SW:Lmiui/maml/ScreenElementRoot$ExtraResource$MetricsType;

    invoke-direct {p0, v2, v3, v4}, Lmiui/maml/ScreenElementRoot$ExtraResource;->inflateMetrics(Ljava/util/ArrayList;Ljava/lang/String;Lmiui/maml/ScreenElementRoot$ExtraResource$MetricsType;)V

    .line 865
    iget-object v2, p0, Lmiui/maml/ScreenElementRoot$ExtraResource;->mResources:Ljava/util/ArrayList;

    const-string/jumbo v3, "extraResources"

    invoke-interface {p1, v3}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    sget-object v4, Lmiui/maml/ScreenElementRoot$ExtraResource$MetricsType;->SW_DEN:Lmiui/maml/ScreenElementRoot$ExtraResource$MetricsType;

    invoke-direct {p0, v2, v3, v4}, Lmiui/maml/ScreenElementRoot$ExtraResource;->inflateMetrics(Ljava/util/ArrayList;Ljava/lang/String;Lmiui/maml/ScreenElementRoot$ExtraResource$MetricsType;)V

    .line 867
    new-instance v1, Lmiui/maml/ScreenElementRoot$ExtraResource$ScaleMetrics;

    invoke-direct {v1, p0}, Lmiui/maml/ScreenElementRoot$ExtraResource$ScaleMetrics;-><init>(Lmiui/maml/ScreenElementRoot$ExtraResource;)V

    .line 868
    .local v1, "defaultScale":Lmiui/maml/ScreenElementRoot$ExtraResource$ScaleMetrics;
    iput p2, v1, Lmiui/maml/ScreenElementRoot$ExtraResource$ScaleMetrics;->mDensity:I

    .line 869
    invoke-static {p2}, Lmiui/maml/ResourceManager;->translateDensity(I)I

    move-result v2

    mul-int/lit16 v2, v2, 0x1e0

    div-int/lit16 v2, v2, 0xf0

    iput v2, v1, Lmiui/maml/ScreenElementRoot$ExtraResource$ScaleMetrics;->mScreenWidth:I

    .line 871
    iput v5, v1, Lmiui/maml/ScreenElementRoot$ExtraResource$ScaleMetrics;->mSizeType:I

    .line 872
    const/high16 v2, -0x40800000    # -1.0f

    iput v2, v1, Lmiui/maml/ScreenElementRoot$ExtraResource$ScaleMetrics;->mScale:F

    .line 873
    iget-object v2, p0, Lmiui/maml/ScreenElementRoot$ExtraResource;->mScales:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 875
    iget-object v2, p0, Lmiui/maml/ScreenElementRoot$ExtraResource;->mScales:Ljava/util/ArrayList;

    const-string/jumbo v3, "extraScaleByDensity"

    invoke-interface {p1, v3}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    sget-object v4, Lmiui/maml/ScreenElementRoot$ExtraResource$MetricsType;->DEN:Lmiui/maml/ScreenElementRoot$ExtraResource$MetricsType;

    invoke-direct {p0, v2, v3, v4}, Lmiui/maml/ScreenElementRoot$ExtraResource;->inflateMetrics(Ljava/util/ArrayList;Ljava/lang/String;Lmiui/maml/ScreenElementRoot$ExtraResource$MetricsType;)V

    .line 876
    iget-object v2, p0, Lmiui/maml/ScreenElementRoot$ExtraResource;->mScales:Ljava/util/ArrayList;

    const-string/jumbo v3, "extraScaleByScreenWidth"

    invoke-interface {p1, v3}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    sget-object v4, Lmiui/maml/ScreenElementRoot$ExtraResource$MetricsType;->SW:Lmiui/maml/ScreenElementRoot$ExtraResource$MetricsType;

    invoke-direct {p0, v2, v3, v4}, Lmiui/maml/ScreenElementRoot$ExtraResource;->inflateMetrics(Ljava/util/ArrayList;Ljava/lang/String;Lmiui/maml/ScreenElementRoot$ExtraResource$MetricsType;)V

    .line 877
    iget-object v2, p0, Lmiui/maml/ScreenElementRoot$ExtraResource;->mScales:Ljava/util/ArrayList;

    const-string/jumbo v3, "extraScales"

    invoke-interface {p1, v3}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    sget-object v4, Lmiui/maml/ScreenElementRoot$ExtraResource$MetricsType;->SW_DEN:Lmiui/maml/ScreenElementRoot$ExtraResource$MetricsType;

    invoke-direct {p0, v2, v3, v4}, Lmiui/maml/ScreenElementRoot$ExtraResource;->inflateMetrics(Ljava/util/ArrayList;Ljava/lang/String;Lmiui/maml/ScreenElementRoot$ExtraResource$MetricsType;)V

    .line 853
    return-void
.end method

.method private inflateMetrics(Ljava/util/ArrayList;Ljava/lang/String;Lmiui/maml/ScreenElementRoot$ExtraResource$MetricsType;)V
    .locals 8
    .param p2, "attr"    # Ljava/lang/String;
    .param p3, "type"    # Lmiui/maml/ScreenElementRoot$ExtraResource$MetricsType;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lmiui/maml/ScreenElementRoot$ExtraResource$ScaleMetrics;",
            ">;",
            "Ljava/lang/String;",
            "Lmiui/maml/ScreenElementRoot$ExtraResource$MetricsType;",
            ")V"
        }
    .end annotation

    .prologue
    .line 881
    .local p1, "metrics":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lmiui/maml/ScreenElementRoot$ExtraResource$ScaleMetrics;>;"
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 882
    const-string/jumbo v3, ","

    invoke-virtual {p2, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 883
    .local v1, "resources":[Ljava/lang/String;
    const/4 v3, 0x0

    array-length v4, v1

    :goto_0
    if-ge v3, v4, :cond_2

    aget-object v2, v1, v3

    .line 885
    .local v2, "str":Ljava/lang/String;
    :try_start_0
    iget-object v5, p0, Lmiui/maml/ScreenElementRoot$ExtraResource;->mResources:Ljava/util/ArrayList;

    if-ne p1, v5, :cond_1

    .line 886
    new-instance v5, Lmiui/maml/ScreenElementRoot$ExtraResource$Resource;

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, p0, v6, p3}, Lmiui/maml/ScreenElementRoot$ExtraResource$Resource;-><init>(Lmiui/maml/ScreenElementRoot$ExtraResource;Ljava/lang/String;Lmiui/maml/ScreenElementRoot$ExtraResource$MetricsType;)V

    invoke-virtual {p1, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 883
    :cond_0
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 887
    :cond_1
    iget-object v5, p0, Lmiui/maml/ScreenElementRoot$ExtraResource;->mScales:Ljava/util/ArrayList;

    if-ne p1, v5, :cond_0

    .line 888
    new-instance v5, Lmiui/maml/ScreenElementRoot$ExtraResource$ScaleMetrics;

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, p0, v6, p3}, Lmiui/maml/ScreenElementRoot$ExtraResource$ScaleMetrics;-><init>(Lmiui/maml/ScreenElementRoot$ExtraResource;Ljava/lang/String;Lmiui/maml/ScreenElementRoot$ExtraResource$MetricsType;)V

    invoke-virtual {p1, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 890
    :catch_0
    move-exception v0

    .line 891
    .local v0, "e":Ljava/lang/IllegalArgumentException;
    const-string/jumbo v5, "ScreenElementRoot"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "format error of attribute: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 880
    .end local v0    # "e":Ljava/lang/IllegalArgumentException;
    .end local v1    # "resources":[Ljava/lang/String;
    .end local v2    # "str":Ljava/lang/String;
    :cond_2
    return-void
.end method

.method private static parseSizeType(Ljava/lang/String;)I
    .locals 2
    .param p0, "str"    # Ljava/lang/String;

    .prologue
    .line 898
    const/4 v0, 0x0

    .line 899
    .local v0, "size":I
    const-string/jumbo v1, "small"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 900
    const/4 v0, 0x1

    .line 908
    :cond_0
    :goto_0
    return v0

    .line 901
    :cond_1
    const-string/jumbo v1, "normal"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 902
    const/4 v0, 0x2

    goto :goto_0

    .line 903
    :cond_2
    const-string/jumbo v1, "large"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 904
    const/4 v0, 0x3

    goto :goto_0

    .line 905
    :cond_3
    const-string/jumbo v1, "xlarge"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 906
    const/4 v0, 0x4

    goto :goto_0
.end method


# virtual methods
.method findMetrics(IIILjava/util/ArrayList;)Lmiui/maml/ScreenElementRoot$ExtraResource$ScaleMetrics;
    .locals 9
    .param p1, "targetDen"    # I
    .param p2, "targetSw"    # I
    .param p3, "targetSizeType"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(III",
            "Ljava/util/ArrayList",
            "<",
            "Lmiui/maml/ScreenElementRoot$ExtraResource$ScaleMetrics;",
            ">;)",
            "Lmiui/maml/ScreenElementRoot$ExtraResource$ScaleMetrics;"
        }
    .end annotation

    .prologue
    .line 923
    .local p4, "metrics":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lmiui/maml/ScreenElementRoot$ExtraResource$ScaleMetrics;>;"
    const/4 v7, 0x0

    .line 924
    .local v7, "result":Lmiui/maml/ScreenElementRoot$ExtraResource$ScaleMetrics;
    const v5, 0x7fffffff

    .line 925
    .local v5, "minDiffDen":I
    const v6, 0x7fffffff

    .line 926
    .local v6, "minDiffSw":I
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 927
    .local v0, "candidates":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lmiui/maml/ScreenElementRoot$ExtraResource$ScaleMetrics;>;"
    invoke-interface {p4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, "m$iterator":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_4

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lmiui/maml/ScreenElementRoot$ExtraResource$ScaleMetrics;

    .line 929
    .local v3, "m":Lmiui/maml/ScreenElementRoot$ExtraResource$ScaleMetrics;
    iget v8, v3, Lmiui/maml/ScreenElementRoot$ExtraResource$ScaleMetrics;->mSizeType:I

    if-eqz v8, :cond_1

    iget v8, v3, Lmiui/maml/ScreenElementRoot$ExtraResource$ScaleMetrics;->mSizeType:I

    if-ne v8, p3, :cond_0

    .line 932
    :cond_1
    iget v8, v3, Lmiui/maml/ScreenElementRoot$ExtraResource$ScaleMetrics;->mDensity:I

    sub-int v8, p1, v8

    invoke-static {v8}, Ljava/lang/Math;->abs(I)I

    move-result v1

    .line 933
    .local v1, "diffDen":I
    if-ge v1, v5, :cond_2

    .line 934
    move v5, v1

    .line 935
    iget v8, v3, Lmiui/maml/ScreenElementRoot$ExtraResource$ScaleMetrics;->mScreenWidth:I

    sub-int v8, p2, v8

    invoke-static {v8}, Ljava/lang/Math;->abs(I)I

    move-result v6

    .line 936
    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 937
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 938
    :cond_2
    if-ne v1, v5, :cond_0

    .line 939
    iget v8, v3, Lmiui/maml/ScreenElementRoot$ExtraResource$ScaleMetrics;->mScreenWidth:I

    sub-int v8, p2, v8

    invoke-static {v8}, Ljava/lang/Math;->abs(I)I

    move-result v2

    .line 940
    .local v2, "diffSw":I
    if-ge v2, v6, :cond_3

    .line 941
    move v6, v2

    .line 942
    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 943
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 944
    :cond_3
    if-ne v2, v6, :cond_0

    .line 945
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 949
    .end local v1    # "diffDen":I
    .end local v2    # "diffSw":I
    .end local v3    # "m":Lmiui/maml/ScreenElementRoot$ExtraResource$ScaleMetrics;
    :cond_4
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .end local v7    # "result":Lmiui/maml/ScreenElementRoot$ExtraResource$ScaleMetrics;
    :cond_5
    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_6

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lmiui/maml/ScreenElementRoot$ExtraResource$ScaleMetrics;

    .line 950
    .restart local v3    # "m":Lmiui/maml/ScreenElementRoot$ExtraResource$ScaleMetrics;
    iget v8, v3, Lmiui/maml/ScreenElementRoot$ExtraResource$ScaleMetrics;->mSizeType:I

    if-ne v8, p3, :cond_7

    .line 951
    move-object v7, v3

    .line 957
    .end local v3    # "m":Lmiui/maml/ScreenElementRoot$ExtraResource$ScaleMetrics;
    :cond_6
    return-object v7

    .line 953
    .restart local v3    # "m":Lmiui/maml/ScreenElementRoot$ExtraResource$ScaleMetrics;
    :cond_7
    iget v8, v3, Lmiui/maml/ScreenElementRoot$ExtraResource$ScaleMetrics;->mSizeType:I

    if-nez v8, :cond_5

    .line 954
    move-object v7, v3

    .local v7, "result":Lmiui/maml/ScreenElementRoot$ExtraResource$ScaleMetrics;
    goto :goto_1
.end method

.method public findResource(III)Lmiui/maml/ScreenElementRoot$ExtraResource$Resource;
    .locals 1
    .param p1, "targetDen"    # I
    .param p2, "targetSw"    # I
    .param p3, "targetSizeType"    # I

    .prologue
    .line 913
    iget-object v0, p0, Lmiui/maml/ScreenElementRoot$ExtraResource;->mResources:Ljava/util/ArrayList;

    invoke-virtual {p0, p1, p2, p3, v0}, Lmiui/maml/ScreenElementRoot$ExtraResource;->findMetrics(IIILjava/util/ArrayList;)Lmiui/maml/ScreenElementRoot$ExtraResource$ScaleMetrics;

    move-result-object v0

    check-cast v0, Lmiui/maml/ScreenElementRoot$ExtraResource$Resource;

    return-object v0
.end method

.method public findScale(III)Lmiui/maml/ScreenElementRoot$ExtraResource$ScaleMetrics;
    .locals 1
    .param p1, "targetDen"    # I
    .param p2, "targetSw"    # I
    .param p3, "targetSizeType"    # I

    .prologue
    .line 918
    iget-object v0, p0, Lmiui/maml/ScreenElementRoot$ExtraResource;->mScales:Ljava/util/ArrayList;

    invoke-virtual {p0, p1, p2, p3, v0}, Lmiui/maml/ScreenElementRoot$ExtraResource;->findMetrics(IIILjava/util/ArrayList;)Lmiui/maml/ScreenElementRoot$ExtraResource$ScaleMetrics;

    move-result-object v0

    return-object v0
.end method
