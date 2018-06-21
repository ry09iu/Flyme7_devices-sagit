.class Lmiui/maml/component/MamlView$InnerView;
.super Landroid/view/View;
.source "MamlView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiui/maml/component/MamlView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "InnerView"
.end annotation


# instance fields
.field final synthetic this$0:Lmiui/maml/component/MamlView;


# direct methods
.method public constructor <init>(Lmiui/maml/component/MamlView;Landroid/content/Context;)V
    .locals 0
    .param p1, "this$0"    # Lmiui/maml/component/MamlView;
    .param p2, "context"    # Landroid/content/Context;

    .prologue
    .line 86
    iput-object p1, p0, Lmiui/maml/component/MamlView$InnerView;->this$0:Lmiui/maml/component/MamlView;

    .line 87
    invoke-direct {p0, p2}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 86
    return-void
.end method


# virtual methods
.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 5
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 92
    iget-object v1, p0, Lmiui/maml/component/MamlView$InnerView;->this$0:Lmiui/maml/component/MamlView;

    invoke-static {v1}, Lmiui/maml/component/MamlView;->-get0(Lmiui/maml/component/MamlView;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lmiui/maml/component/MamlView$InnerView;->this$0:Lmiui/maml/component/MamlView;

    invoke-static {v1}, Lmiui/maml/component/MamlView;->-get4(Lmiui/maml/component/MamlView;)Lmiui/maml/RenderVsyncUpdater;

    move-result-object v1

    invoke-virtual {v1}, Lmiui/maml/RenderVsyncUpdater;->isStarted()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 96
    :cond_0
    iget-object v1, p0, Lmiui/maml/component/MamlView$InnerView;->this$0:Lmiui/maml/component/MamlView;

    invoke-static {v1}, Lmiui/maml/component/MamlView;->-get3(Lmiui/maml/component/MamlView;)F

    move-result v1

    const/4 v2, 0x0

    cmpl-float v1, v1, v2

    if-eqz v1, :cond_2

    .line 97
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result v0

    .line 98
    .local v0, "sa":I
    iget-object v1, p0, Lmiui/maml/component/MamlView$InnerView;->this$0:Lmiui/maml/component/MamlView;

    invoke-static {v1}, Lmiui/maml/component/MamlView;->-get3(Lmiui/maml/component/MamlView;)F

    move-result v1

    iget-object v2, p0, Lmiui/maml/component/MamlView$InnerView;->this$0:Lmiui/maml/component/MamlView;

    invoke-static {v2}, Lmiui/maml/component/MamlView;->-get3(Lmiui/maml/component/MamlView;)F

    move-result v2

    iget-object v3, p0, Lmiui/maml/component/MamlView$InnerView;->this$0:Lmiui/maml/component/MamlView;

    invoke-static {v3}, Lmiui/maml/component/MamlView;->-get1(Lmiui/maml/component/MamlView;)I

    move-result v3

    int-to-float v3, v3

    iget-object v4, p0, Lmiui/maml/component/MamlView$InnerView;->this$0:Lmiui/maml/component/MamlView;

    invoke-static {v4}, Lmiui/maml/component/MamlView;->-get2(Lmiui/maml/component/MamlView;)I

    move-result v4

    int-to-float v4, v4

    invoke-virtual {p1, v1, v2, v3, v4}, Landroid/graphics/Canvas;->scale(FFFF)V

    .line 99
    iget-object v1, p0, Lmiui/maml/component/MamlView$InnerView;->this$0:Lmiui/maml/component/MamlView;

    iget-object v1, v1, Lmiui/maml/component/MamlView;->mRoot:Lmiui/maml/ScreenElementRoot;

    invoke-virtual {v1, p1}, Lmiui/maml/ScreenElementRoot;->render(Landroid/graphics/Canvas;)V

    .line 100
    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->restoreToCount(I)V

    .line 104
    .end local v0    # "sa":I
    :goto_0
    iget-object v1, p0, Lmiui/maml/component/MamlView$InnerView;->this$0:Lmiui/maml/component/MamlView;

    invoke-static {v1}, Lmiui/maml/component/MamlView;->-get4(Lmiui/maml/component/MamlView;)Lmiui/maml/RenderVsyncUpdater;

    move-result-object v1

    invoke-virtual {v1}, Lmiui/maml/RenderVsyncUpdater;->doneRender()V

    .line 91
    return-void

    .line 93
    :cond_1
    return-void

    .line 102
    :cond_2
    iget-object v1, p0, Lmiui/maml/component/MamlView$InnerView;->this$0:Lmiui/maml/component/MamlView;

    iget-object v1, v1, Lmiui/maml/component/MamlView;->mRoot:Lmiui/maml/ScreenElementRoot;

    invoke-virtual {v1, p1}, Lmiui/maml/ScreenElementRoot;->render(Landroid/graphics/Canvas;)V

    goto :goto_0
.end method
