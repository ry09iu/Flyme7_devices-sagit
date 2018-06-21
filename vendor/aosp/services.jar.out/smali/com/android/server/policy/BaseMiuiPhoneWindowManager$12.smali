.class Lcom/android/server/policy/BaseMiuiPhoneWindowManager$12;
.super Ljava/lang/Object;
.source "BaseMiuiPhoneWindowManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->showBootMessage(Ljava/lang/CharSequence;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/policy/BaseMiuiPhoneWindowManager;

.field final synthetic val$msg:Ljava/lang/CharSequence;


# direct methods
.method constructor <init>(Lcom/android/server/policy/BaseMiuiPhoneWindowManager;Ljava/lang/CharSequence;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/policy/BaseMiuiPhoneWindowManager;
    .param p2, "val$msg"    # Ljava/lang/CharSequence;

    .prologue
    .line 1867
    iput-object p1, p0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager$12;->this$0:Lcom/android/server/policy/BaseMiuiPhoneWindowManager;

    iput-object p2, p0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager$12;->val$msg:Ljava/lang/CharSequence;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 13

    .prologue
    .line 1869
    iget-object v9, p0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager$12;->this$0:Lcom/android/server/policy/BaseMiuiPhoneWindowManager;

    invoke-static {v9}, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->-get5(Lcom/android/server/policy/BaseMiuiPhoneWindowManager;)Landroid/app/Dialog;

    move-result-object v9

    if-nez v9, :cond_0

    .line 1870
    iget-object v9, p0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager$12;->this$0:Lcom/android/server/policy/BaseMiuiPhoneWindowManager;

    new-instance v10, Lcom/android/server/policy/BaseMiuiPhoneWindowManager$12$1;

    iget-object v11, p0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager$12;->this$0:Lcom/android/server/policy/BaseMiuiPhoneWindowManager;

    iget-object v11, v11, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->mContext:Landroid/content/Context;

    const v12, 0x110c0007

    invoke-direct {v10, p0, v11, v12}, Lcom/android/server/policy/BaseMiuiPhoneWindowManager$12$1;-><init>(Lcom/android/server/policy/BaseMiuiPhoneWindowManager$12;Landroid/content/Context;I)V

    invoke-static {v9, v10}, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->-set6(Lcom/android/server/policy/BaseMiuiPhoneWindowManager;Landroid/app/Dialog;)Landroid/app/Dialog;

    .line 1893
    iget-object v9, p0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager$12;->this$0:Lcom/android/server/policy/BaseMiuiPhoneWindowManager;

    invoke-static {v9}, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->-get5(Lcom/android/server/policy/BaseMiuiPhoneWindowManager;)Landroid/app/Dialog;

    move-result-object v9

    invoke-virtual {v9}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v9

    invoke-static {v9}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v9

    const v10, 0x11030005

    const/4 v11, 0x0

    invoke-virtual {v9, v10, v11}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v8

    .line 1894
    .local v8, "view":Landroid/view/View;
    iget-object v9, p0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager$12;->this$0:Lcom/android/server/policy/BaseMiuiPhoneWindowManager;

    invoke-static {v9}, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->-get5(Lcom/android/server/policy/BaseMiuiPhoneWindowManager;)Landroid/app/Dialog;

    move-result-object v9

    invoke-virtual {v9, v8}, Landroid/app/Dialog;->setContentView(Landroid/view/View;)V

    .line 1895
    iget-object v9, p0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager$12;->this$0:Lcom/android/server/policy/BaseMiuiPhoneWindowManager;

    invoke-static {v9}, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->-get5(Lcom/android/server/policy/BaseMiuiPhoneWindowManager;)Landroid/app/Dialog;

    move-result-object v9

    invoke-virtual {v9}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v9

    .line 1896
    const/16 v10, 0x7e5

    .line 1895
    invoke-virtual {v9, v10}, Landroid/view/Window;->setType(I)V

    .line 1897
    iget-object v9, p0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager$12;->this$0:Lcom/android/server/policy/BaseMiuiPhoneWindowManager;

    invoke-static {v9}, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->-get5(Lcom/android/server/policy/BaseMiuiPhoneWindowManager;)Landroid/app/Dialog;

    move-result-object v9

    invoke-virtual {v9}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v9

    .line 1898
    const/16 v10, 0x502

    .line 1897
    invoke-virtual {v9, v10}, Landroid/view/Window;->addFlags(I)V

    .line 1901
    iget-object v9, p0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager$12;->this$0:Lcom/android/server/policy/BaseMiuiPhoneWindowManager;

    invoke-static {v9}, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->-get5(Lcom/android/server/policy/BaseMiuiPhoneWindowManager;)Landroid/app/Dialog;

    move-result-object v9

    invoke-virtual {v9}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v9

    const/high16 v10, 0x3f800000    # 1.0f

    invoke-virtual {v9, v10}, Landroid/view/Window;->setDimAmount(F)V

    .line 1902
    iget-object v9, p0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager$12;->this$0:Lcom/android/server/policy/BaseMiuiPhoneWindowManager;

    invoke-static {v9}, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->-get5(Lcom/android/server/policy/BaseMiuiPhoneWindowManager;)Landroid/app/Dialog;

    move-result-object v9

    invoke-virtual {v9}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v9

    invoke-virtual {v9}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v1

    .line 1903
    .local v1, "lp":Landroid/view/WindowManager$LayoutParams;
    const/4 v9, 0x5

    iput v9, v1, Landroid/view/WindowManager$LayoutParams;->screenOrientation:I

    .line 1904
    iget-object v9, p0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager$12;->this$0:Lcom/android/server/policy/BaseMiuiPhoneWindowManager;

    invoke-static {v9}, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->-get5(Lcom/android/server/policy/BaseMiuiPhoneWindowManager;)Landroid/app/Dialog;

    move-result-object v9

    invoke-virtual {v9}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v9

    invoke-virtual {v9, v1}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 1905
    iget-object v9, p0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager$12;->this$0:Lcom/android/server/policy/BaseMiuiPhoneWindowManager;

    invoke-static {v9}, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->-get5(Lcom/android/server/policy/BaseMiuiPhoneWindowManager;)Landroid/app/Dialog;

    move-result-object v9

    const/4 v10, 0x0

    invoke-virtual {v9, v10}, Landroid/app/Dialog;->setCancelable(Z)V

    .line 1906
    iget-object v9, p0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager$12;->this$0:Lcom/android/server/policy/BaseMiuiPhoneWindowManager;

    invoke-static {v9}, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->-get5(Lcom/android/server/policy/BaseMiuiPhoneWindowManager;)Landroid/app/Dialog;

    move-result-object v9

    invoke-virtual {v9}, Landroid/app/Dialog;->show()V

    .line 1908
    const v9, 0x110b0019

    invoke-virtual {v8, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 1909
    .local v0, "bootLogo":Landroid/widget/ImageView;
    const/4 v9, 0x0

    invoke-virtual {v0, v9}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1910
    iget-object v10, p0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager$12;->this$0:Lcom/android/server/policy/BaseMiuiPhoneWindowManager;

    const v9, 0x110b001b

    invoke-virtual {v8, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/ProgressBar;

    invoke-static {v10, v9}, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->-set0(Lcom/android/server/policy/BaseMiuiPhoneWindowManager;Landroid/widget/ProgressBar;)Landroid/widget/ProgressBar;

    .line 1911
    iget-object v9, p0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager$12;->this$0:Lcom/android/server/policy/BaseMiuiPhoneWindowManager;

    invoke-static {v9}, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->-get0(Lcom/android/server/policy/BaseMiuiPhoneWindowManager;)Landroid/widget/ProgressBar;

    move-result-object v9

    const/4 v10, 0x4

    invoke-virtual {v9, v10}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 1913
    iget-object v9, p0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager$12;->this$0:Lcom/android/server/policy/BaseMiuiPhoneWindowManager;

    iget-object v10, p0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager$12;->this$0:Lcom/android/server/policy/BaseMiuiPhoneWindowManager;

    iget-object v10, v10, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v10}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    const v11, 0x11080008

    invoke-virtual {v10, v11}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->-set1(Lcom/android/server/policy/BaseMiuiPhoneWindowManager;[Ljava/lang/String;)[Ljava/lang/String;

    .line 1914
    iget-object v9, p0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager$12;->this$0:Lcom/android/server/policy/BaseMiuiPhoneWindowManager;

    invoke-static {v9}, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->-get1(Lcom/android/server/policy/BaseMiuiPhoneWindowManager;)[Ljava/lang/String;

    move-result-object v9

    if-eqz v9, :cond_0

    iget-object v9, p0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager$12;->this$0:Lcom/android/server/policy/BaseMiuiPhoneWindowManager;

    invoke-static {v9}, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->-get1(Lcom/android/server/policy/BaseMiuiPhoneWindowManager;)[Ljava/lang/String;

    move-result-object v9

    array-length v9, v9

    if-lez v9, :cond_0

    .line 1915
    iget-object v10, p0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager$12;->this$0:Lcom/android/server/policy/BaseMiuiPhoneWindowManager;

    const v9, 0x110b001a

    invoke-virtual {v8, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/TextView;

    invoke-static {v10, v9}, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->-set2(Lcom/android/server/policy/BaseMiuiPhoneWindowManager;Landroid/widget/TextView;)Landroid/widget/TextView;

    .line 1916
    iget-object v9, p0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager$12;->this$0:Lcom/android/server/policy/BaseMiuiPhoneWindowManager;

    invoke-static {v9}, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->-get2(Lcom/android/server/policy/BaseMiuiPhoneWindowManager;)Landroid/widget/TextView;

    move-result-object v9

    const/4 v10, 0x4

    invoke-virtual {v9, v10}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1924
    .end local v0    # "bootLogo":Landroid/widget/ImageView;
    .end local v1    # "lp":Landroid/view/WindowManager$LayoutParams;
    .end local v8    # "view":Landroid/view/View;
    :cond_0
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 1925
    .local v2, "parseList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    iget-object v9, p0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager$12;->val$msg:Ljava/lang/CharSequence;

    if-eqz v9, :cond_2

    .line 1926
    iget-object v9, p0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager$12;->val$msg:Ljava/lang/CharSequence;

    invoke-static {v9}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    const-string/jumbo v10, "[^0-9]"

    const-string/jumbo v11, ","

    invoke-virtual {v9, v10, v11}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    const-string/jumbo v10, ","

    invoke-virtual {v9, v10}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v10

    const/4 v9, 0x0

    array-length v11, v10

    :goto_0
    if-ge v9, v11, :cond_2

    aget-object v5, v10, v9

    .line 1927
    .local v5, "sp":Ljava/lang/String;
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v12

    if-lez v12, :cond_1

    .line 1928
    invoke-interface {v2, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1926
    :cond_1
    add-int/lit8 v9, v9, 0x1

    goto :goto_0

    .line 1932
    .end local v5    # "sp":Ljava/lang/String;
    :cond_2
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v9

    const/4 v10, 0x2

    if-ne v9, v10, :cond_5

    .line 1933
    const/4 v9, 0x0

    invoke-interface {v2, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    invoke-static {v9}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    .line 1934
    .local v4, "progress":I
    const/4 v9, 0x1

    invoke-interface {v2, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    invoke-static {v9}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    .line 1935
    .local v7, "total":I
    if-le v4, v7, :cond_3

    .line 1936
    move v6, v4

    .line 1937
    .local v6, "tmp":I
    move v4, v7

    .line 1938
    move v7, v6

    .line 1940
    .end local v6    # "tmp":I
    :cond_3
    const/4 v9, 0x3

    if-le v7, v9, :cond_5

    .line 1941
    iget-object v9, p0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager$12;->this$0:Lcom/android/server/policy/BaseMiuiPhoneWindowManager;

    invoke-static {v9}, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->-get0(Lcom/android/server/policy/BaseMiuiPhoneWindowManager;)Landroid/widget/ProgressBar;

    move-result-object v9

    const/4 v10, 0x0

    invoke-virtual {v9, v10}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 1942
    iget-object v9, p0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager$12;->this$0:Lcom/android/server/policy/BaseMiuiPhoneWindowManager;

    invoke-static {v9}, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->-get0(Lcom/android/server/policy/BaseMiuiPhoneWindowManager;)Landroid/widget/ProgressBar;

    move-result-object v9

    invoke-virtual {v9, v7}, Landroid/widget/ProgressBar;->setMax(I)V

    .line 1943
    iget-object v9, p0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager$12;->this$0:Lcom/android/server/policy/BaseMiuiPhoneWindowManager;

    invoke-static {v9}, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->-get0(Lcom/android/server/policy/BaseMiuiPhoneWindowManager;)Landroid/widget/ProgressBar;

    move-result-object v9

    invoke-virtual {v9, v4}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 1945
    iget-object v9, p0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager$12;->this$0:Lcom/android/server/policy/BaseMiuiPhoneWindowManager;

    invoke-static {v9}, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->-get2(Lcom/android/server/policy/BaseMiuiPhoneWindowManager;)Landroid/widget/TextView;

    move-result-object v9

    if-eqz v9, :cond_5

    iget-object v9, p0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager$12;->this$0:Lcom/android/server/policy/BaseMiuiPhoneWindowManager;

    invoke-static {v9}, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->-get1(Lcom/android/server/policy/BaseMiuiPhoneWindowManager;)[Ljava/lang/String;

    move-result-object v9

    if-eqz v9, :cond_5

    .line 1946
    iget-object v9, p0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager$12;->this$0:Lcom/android/server/policy/BaseMiuiPhoneWindowManager;

    invoke-static {v9}, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->-get2(Lcom/android/server/policy/BaseMiuiPhoneWindowManager;)Landroid/widget/TextView;

    move-result-object v9

    const/4 v10, 0x0

    invoke-virtual {v9, v10}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1947
    iget-object v9, p0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager$12;->this$0:Lcom/android/server/policy/BaseMiuiPhoneWindowManager;

    invoke-static {v9}, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->-get1(Lcom/android/server/policy/BaseMiuiPhoneWindowManager;)[Ljava/lang/String;

    move-result-object v9

    array-length v9, v9

    mul-int/2addr v9, v4

    div-int v3, v9, v7

    .line 1948
    .local v3, "pos":I
    iget-object v9, p0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager$12;->this$0:Lcom/android/server/policy/BaseMiuiPhoneWindowManager;

    invoke-static {v9}, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->-get1(Lcom/android/server/policy/BaseMiuiPhoneWindowManager;)[Ljava/lang/String;

    move-result-object v9

    array-length v9, v9

    if-lt v3, v9, :cond_4

    .line 1949
    iget-object v9, p0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager$12;->this$0:Lcom/android/server/policy/BaseMiuiPhoneWindowManager;

    invoke-static {v9}, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->-get1(Lcom/android/server/policy/BaseMiuiPhoneWindowManager;)[Ljava/lang/String;

    move-result-object v9

    array-length v9, v9

    add-int/lit8 v3, v9, -0x1

    .line 1951
    :cond_4
    iget-object v9, p0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager$12;->this$0:Lcom/android/server/policy/BaseMiuiPhoneWindowManager;

    invoke-static {v9}, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->-get2(Lcom/android/server/policy/BaseMiuiPhoneWindowManager;)Landroid/widget/TextView;

    move-result-object v9

    iget-object v10, p0, Lcom/android/server/policy/BaseMiuiPhoneWindowManager$12;->this$0:Lcom/android/server/policy/BaseMiuiPhoneWindowManager;

    invoke-static {v10}, Lcom/android/server/policy/BaseMiuiPhoneWindowManager;->-get1(Lcom/android/server/policy/BaseMiuiPhoneWindowManager;)[Ljava/lang/String;

    move-result-object v10

    aget-object v10, v10, v3

    invoke-virtual {v9, v10}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1868
    .end local v3    # "pos":I
    .end local v4    # "progress":I
    .end local v7    # "total":I
    :cond_5
    return-void
.end method
