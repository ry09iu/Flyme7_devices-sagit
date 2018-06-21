.class Lcom/android/server/policy/MiuiScreenOnProximityLock$5;
.super Ljava/lang/Object;
.source "MiuiScreenOnProximityLock.java"

# interfaces
.implements Landroid/animation/Animator$AnimatorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/policy/MiuiScreenOnProximityLock;->releaseHintWindow()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/policy/MiuiScreenOnProximityLock;

.field final synthetic val$container:Landroid/view/View;


# direct methods
.method constructor <init>(Lcom/android/server/policy/MiuiScreenOnProximityLock;Landroid/view/View;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/policy/MiuiScreenOnProximityLock;
    .param p2, "val$container"    # Landroid/view/View;

    .prologue
    .line 216
    iput-object p1, p0, Lcom/android/server/policy/MiuiScreenOnProximityLock$5;->this$0:Lcom/android/server/policy/MiuiScreenOnProximityLock;

    iput-object p2, p0, Lcom/android/server/policy/MiuiScreenOnProximityLock$5;->val$container:Landroid/view/View;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 0
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 232
    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 3
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 227
    iget-object v1, p0, Lcom/android/server/policy/MiuiScreenOnProximityLock$5;->this$0:Lcom/android/server/policy/MiuiScreenOnProximityLock;

    invoke-static {v1}, Lcom/android/server/policy/MiuiScreenOnProximityLock;->-get0(Lcom/android/server/policy/MiuiScreenOnProximityLock;)Landroid/content/Context;

    move-result-object v1

    const-string/jumbo v2, "window"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    .line 228
    .local v0, "wm":Landroid/view/WindowManager;
    iget-object v1, p0, Lcom/android/server/policy/MiuiScreenOnProximityLock$5;->val$container:Landroid/view/View;

    invoke-interface {v0, v1}, Landroid/view/WindowManager;->removeView(Landroid/view/View;)V

    .line 226
    return-void
.end method

.method public onAnimationRepeat(Landroid/animation/Animator;)V
    .locals 0
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 222
    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 0
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 218
    return-void
.end method
