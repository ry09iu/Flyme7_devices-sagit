.class Lmiui/view/VolumeDialog$7;
.super Ljava/lang/Object;
.source "VolumeDialog.java"

# interfaces
.implements Landroid/animation/Animator$AnimatorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lmiui/view/VolumeDialog;->expandVolumeBar(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lmiui/view/VolumeDialog;

.field final synthetic val$isExpanded:Z


# direct methods
.method constructor <init>(Lmiui/view/VolumeDialog;Z)V
    .locals 0
    .param p1, "this$0"    # Lmiui/view/VolumeDialog;
    .param p2, "val$isExpanded"    # Z

    .prologue
    .line 498
    iput-object p1, p0, Lmiui/view/VolumeDialog$7;->this$0:Lmiui/view/VolumeDialog;

    iput-boolean p2, p0, Lmiui/view/VolumeDialog$7;->val$isExpanded:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 0
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 535
    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 5
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    const/4 v4, -0x2

    .line 520
    iget-boolean v3, p0, Lmiui/view/VolumeDialog$7;->val$isExpanded:Z

    if-nez v3, :cond_0

    .line 521
    iget-object v3, p0, Lmiui/view/VolumeDialog$7;->this$0:Lmiui/view/VolumeDialog;

    invoke-static {v3}, Lmiui/view/VolumeDialog;->-wrap11(Lmiui/view/VolumeDialog;)V

    .line 524
    :cond_0
    iget-object v3, p0, Lmiui/view/VolumeDialog$7;->this$0:Lmiui/view/VolumeDialog;

    invoke-static {v3}, Lmiui/view/VolumeDialog;->-get4(Lmiui/view/VolumeDialog;)Landroid/view/ViewGroup;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/ViewGroup;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    iput v4, v3, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 525
    iget-object v3, p0, Lmiui/view/VolumeDialog$7;->this$0:Lmiui/view/VolumeDialog;

    invoke-static {v3}, Lmiui/view/VolumeDialog;->-get4(Lmiui/view/VolumeDialog;)Landroid/view/ViewGroup;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/ViewGroup;->requestLayout()V

    .line 527
    iget-object v3, p0, Lmiui/view/VolumeDialog$7;->this$0:Lmiui/view/VolumeDialog;

    invoke-static {v3}, Lmiui/view/VolumeDialog;->-get6(Lmiui/view/VolumeDialog;)Landroid/view/ViewGroup;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/ViewGroup;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 528
    .local v0, "dialogParentView":Landroid/view/ViewGroup;
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 529
    .local v2, "mlp":Landroid/view/ViewGroup$MarginLayoutParams;
    const/4 v1, -0x2

    .line 530
    .local v1, "height":I
    iput v4, v2, Landroid/view/ViewGroup$MarginLayoutParams;->height:I

    .line 531
    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 519
    return-void
.end method

.method public onAnimationRepeat(Landroid/animation/Animator;)V
    .locals 0
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 540
    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 7
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    const/4 v6, 0x0

    .line 501
    iget-boolean v3, p0, Lmiui/view/VolumeDialog$7;->val$isExpanded:Z

    if-eqz v3, :cond_0

    .line 502
    iget-object v3, p0, Lmiui/view/VolumeDialog$7;->this$0:Lmiui/view/VolumeDialog;

    invoke-static {v3}, Lmiui/view/VolumeDialog;->-wrap11(Lmiui/view/VolumeDialog;)V

    .line 505
    :cond_0
    iget-object v3, p0, Lmiui/view/VolumeDialog$7;->this$0:Lmiui/view/VolumeDialog;

    invoke-static {v3}, Lmiui/view/VolumeDialog;->-get6(Lmiui/view/VolumeDialog;)Landroid/view/ViewGroup;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/ViewGroup;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 506
    .local v0, "dialogParentView":Landroid/view/ViewGroup;
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 507
    .local v2, "mlp":Landroid/view/ViewGroup$MarginLayoutParams;
    const/16 v3, 0x3e8

    .line 508
    iput v3, v2, Landroid/view/ViewGroup$MarginLayoutParams;->height:I

    .line 509
    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 511
    iget-object v3, p0, Lmiui/view/VolumeDialog$7;->this$0:Lmiui/view/VolumeDialog;

    invoke-static {v3}, Lmiui/view/VolumeDialog;->-get4(Lmiui/view/VolumeDialog;)Landroid/view/ViewGroup;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/ViewGroup;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    const/4 v4, -0x2

    iput v4, v3, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 512
    iget-object v3, p0, Lmiui/view/VolumeDialog$7;->this$0:Lmiui/view/VolumeDialog;

    invoke-static {v3}, Lmiui/view/VolumeDialog;->-get4(Lmiui/view/VolumeDialog;)Landroid/view/ViewGroup;

    move-result-object v3

    invoke-virtual {v3, v6, v6}, Landroid/view/ViewGroup;->measure(II)V

    .line 513
    iget-object v3, p0, Lmiui/view/VolumeDialog$7;->this$0:Lmiui/view/VolumeDialog;

    invoke-static {v3}, Lmiui/view/VolumeDialog;->-get12(Lmiui/view/VolumeDialog;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v3, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lmiui/view/VolumeDialog$VolumeRow;

    invoke-static {v3}, Lmiui/view/VolumeDialog$VolumeRow;->-get14(Lmiui/view/VolumeDialog$VolumeRow;)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3, v6, v6}, Landroid/view/View;->measure(II)V

    .line 514
    iget-boolean v3, p0, Lmiui/view/VolumeDialog$7;->val$isExpanded:Z

    if-eqz v3, :cond_1

    iget-object v3, p0, Lmiui/view/VolumeDialog$7;->this$0:Lmiui/view/VolumeDialog;

    invoke-static {v3}, Lmiui/view/VolumeDialog;->-get4(Lmiui/view/VolumeDialog;)Landroid/view/ViewGroup;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/ViewGroup;->getMeasuredHeight()I

    move-result v1

    .line 515
    .local v1, "height":I
    :goto_0
    iget-object v3, p0, Lmiui/view/VolumeDialog$7;->this$0:Lmiui/view/VolumeDialog;

    invoke-static {v3}, Lmiui/view/VolumeDialog;->-get7(Lmiui/view/VolumeDialog;)Landroid/animation/ValueAnimator;

    move-result-object v3

    const/4 v4, 0x2

    new-array v4, v4, [I

    iget-object v5, p0, Lmiui/view/VolumeDialog$7;->this$0:Lmiui/view/VolumeDialog;

    invoke-static {v5}, Lmiui/view/VolumeDialog;->-get4(Lmiui/view/VolumeDialog;)Landroid/view/ViewGroup;

    move-result-object v5

    invoke-virtual {v5}, Landroid/view/ViewGroup;->getHeight()I

    move-result v5

    aput v5, v4, v6

    const/4 v5, 0x1

    aput v1, v4, v5

    invoke-virtual {v3, v4}, Landroid/animation/ValueAnimator;->setIntValues([I)V

    .line 500
    return-void

    .line 514
    .end local v1    # "height":I
    :cond_1
    iget-object v3, p0, Lmiui/view/VolumeDialog$7;->this$0:Lmiui/view/VolumeDialog;

    invoke-static {v3}, Lmiui/view/VolumeDialog;->-get12(Lmiui/view/VolumeDialog;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v3, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lmiui/view/VolumeDialog$VolumeRow;

    invoke-static {v3}, Lmiui/view/VolumeDialog$VolumeRow;->-get14(Lmiui/view/VolumeDialog$VolumeRow;)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->getMeasuredHeight()I

    move-result v1

    .restart local v1    # "height":I
    goto :goto_0
.end method
