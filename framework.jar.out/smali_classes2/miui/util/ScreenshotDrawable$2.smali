.class Lmiui/util/ScreenshotDrawable$2;
.super Landroid/animation/AnimatorListenerAdapter;
.source "ScreenshotDrawable.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lmiui/util/ScreenshotDrawable;->startVisibilityAnimator(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lmiui/util/ScreenshotDrawable;


# direct methods
.method constructor <init>(Lmiui/util/ScreenshotDrawable;)V
    .locals 0
    .param p1, "this$0"    # Lmiui/util/ScreenshotDrawable;

    .prologue
    .line 161
    iput-object p1, p0, Lmiui/util/ScreenshotDrawable$2;->this$0:Lmiui/util/ScreenshotDrawable;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    const/4 v1, 0x0

    .line 163
    iget-object v0, p0, Lmiui/util/ScreenshotDrawable$2;->this$0:Lmiui/util/ScreenshotDrawable;

    invoke-static {v0}, Lmiui/util/ScreenshotDrawable;->-get0(Lmiui/util/ScreenshotDrawable;)Landroid/graphics/Bitmap;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 164
    iget-object v0, p0, Lmiui/util/ScreenshotDrawable$2;->this$0:Lmiui/util/ScreenshotDrawable;

    invoke-static {v0}, Lmiui/util/ScreenshotDrawable;->-get0(Lmiui/util/ScreenshotDrawable;)Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 165
    iget-object v0, p0, Lmiui/util/ScreenshotDrawable$2;->this$0:Lmiui/util/ScreenshotDrawable;

    invoke-static {v0, v1}, Lmiui/util/ScreenshotDrawable;->-set0(Lmiui/util/ScreenshotDrawable;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    .line 167
    :cond_0
    iget-object v0, p0, Lmiui/util/ScreenshotDrawable$2;->this$0:Lmiui/util/ScreenshotDrawable;

    invoke-virtual {v0}, Lmiui/util/ScreenshotDrawable;->getCallback()Landroid/graphics/drawable/Drawable$Callback;

    move-result-object v0

    instance-of v0, v0, Landroid/view/View;

    if-eqz v0, :cond_1

    .line 168
    iget-object v0, p0, Lmiui/util/ScreenshotDrawable$2;->this$0:Lmiui/util/ScreenshotDrawable;

    invoke-virtual {v0}, Lmiui/util/ScreenshotDrawable;->getCallback()Landroid/graphics/drawable/Drawable$Callback;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    iget-object v1, p0, Lmiui/util/ScreenshotDrawable$2;->this$0:Lmiui/util/ScreenshotDrawable;

    invoke-virtual {v1}, Lmiui/util/ScreenshotDrawable;->getOriginalDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 162
    :cond_1
    return-void
.end method
