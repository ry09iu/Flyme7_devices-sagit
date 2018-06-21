.class final Lmiui/maml/FancyDrawable$FancyDrawableState;
.super Landroid/graphics/drawable/Drawable$ConstantState;
.source "FancyDrawable.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiui/maml/FancyDrawable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "FancyDrawableState"
.end annotation


# instance fields
.field mRendererCore:Lmiui/maml/RendererCore;

.field mStateBadgeDrawable:Landroid/graphics/drawable/Drawable;

.field mStateBadgeLocation:Landroid/graphics/Rect;


# direct methods
.method public constructor <init>(Lmiui/maml/RendererCore;)V
    .locals 0
    .param p1, "rendererCore"    # Lmiui/maml/RendererCore;

    .prologue
    .line 291
    invoke-direct {p0}, Landroid/graphics/drawable/Drawable$ConstantState;-><init>()V

    .line 292
    iput-object p1, p0, Lmiui/maml/FancyDrawable$FancyDrawableState;->mRendererCore:Lmiui/maml/RendererCore;

    .line 291
    return-void
.end method


# virtual methods
.method public getChangingConfigurations()I
    .locals 1

    .prologue
    .line 314
    const/4 v0, 0x0

    return v0
.end method

.method public newDrawable()Landroid/graphics/drawable/Drawable;
    .locals 7

    .prologue
    .line 297
    new-instance v2, Lmiui/maml/FancyDrawable;

    iget-object v3, p0, Lmiui/maml/FancyDrawable$FancyDrawableState;->mRendererCore:Lmiui/maml/RendererCore;

    invoke-direct {v2, v3}, Lmiui/maml/FancyDrawable;-><init>(Lmiui/maml/RendererCore;)V

    .line 298
    .local v2, "ret":Lmiui/maml/FancyDrawable;
    const/4 v0, 0x0

    .line 299
    .local v0, "badgeDrawable":Landroid/graphics/drawable/Drawable;
    const/4 v1, 0x0

    .line 300
    .local v1, "badgeLocation":Landroid/graphics/Rect;
    iget-object v3, p0, Lmiui/maml/FancyDrawable$FancyDrawableState;->mStateBadgeDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v3, :cond_0

    .line 301
    iget-object v3, p0, Lmiui/maml/FancyDrawable$FancyDrawableState;->mStateBadgeDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 303
    .end local v0    # "badgeDrawable":Landroid/graphics/drawable/Drawable;
    :cond_0
    iget-object v3, p0, Lmiui/maml/FancyDrawable$FancyDrawableState;->mStateBadgeLocation:Landroid/graphics/Rect;

    if-eqz v3, :cond_1

    .line 304
    new-instance v1, Landroid/graphics/Rect;

    .end local v1    # "badgeLocation":Landroid/graphics/Rect;
    iget-object v3, p0, Lmiui/maml/FancyDrawable$FancyDrawableState;->mStateBadgeLocation:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->left:I

    iget-object v4, p0, Lmiui/maml/FancyDrawable$FancyDrawableState;->mStateBadgeLocation:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->top:I

    iget-object v5, p0, Lmiui/maml/FancyDrawable$FancyDrawableState;->mStateBadgeLocation:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->right:I

    .line 305
    iget-object v6, p0, Lmiui/maml/FancyDrawable$FancyDrawableState;->mStateBadgeLocation:Landroid/graphics/Rect;

    iget v6, v6, Landroid/graphics/Rect;->bottom:I

    .line 304
    invoke-direct {v1, v3, v4, v5, v6}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 308
    :cond_1
    invoke-virtual {v2, v0, v1}, Lmiui/maml/FancyDrawable;->setBadgeInfo(Landroid/graphics/drawable/Drawable;Landroid/graphics/Rect;)V

    .line 309
    return-object v2
.end method
