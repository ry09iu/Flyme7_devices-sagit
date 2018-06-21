.class public Landroid/app/ApplicationPackageManagerInjector;
.super Ljava/lang/Object;
.source "ApplicationPackageManagerInjector.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static hookGetBadgedDrawable(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/Rect;)Z
    .locals 1
    .param p0, "drawable"    # Landroid/graphics/drawable/Drawable;
    .param p1, "badgeDrawable"    # Landroid/graphics/drawable/Drawable;
    .param p2, "badgeLocation"    # Landroid/graphics/Rect;

    .prologue
    .line 14
    instance-of v0, p0, Lmiui/maml/FancyDrawable;

    if-eqz v0, :cond_0

    .line 15
    check-cast p0, Lmiui/maml/FancyDrawable;

    .end local p0    # "drawable":Landroid/graphics/drawable/Drawable;
    invoke-virtual {p0, p1, p2}, Lmiui/maml/FancyDrawable;->setBadgeInfo(Landroid/graphics/drawable/Drawable;Landroid/graphics/Rect;)V

    .line 16
    const/4 v0, 0x1

    return v0

    .line 18
    .restart local p0    # "drawable":Landroid/graphics/drawable/Drawable;
    :cond_0
    const/4 v0, 0x0

    return v0
.end method
