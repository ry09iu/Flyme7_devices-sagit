.class Lcom/baidu/mobstat/es$a$a;
.super Landroid/view/View$AccessibilityDelegate;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/baidu/mobstat/es$a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Lcom/baidu/mobstat/es$a;

.field private b:Landroid/view/View$AccessibilityDelegate;

.field private c:Landroid/view/View;

.field private d:Z


# direct methods
.method public constructor <init>(Lcom/baidu/mobstat/es$a;Ljava/lang/ref/WeakReference;Landroid/view/View;Ljava/lang/String;Landroid/view/View$AccessibilityDelegate;Z)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/app/Activity;",
            ">;",
            "Landroid/view/View;",
            "Ljava/lang/String;",
            "Landroid/view/View$AccessibilityDelegate;",
            "Z)V"
        }
    .end annotation

    .prologue
    .line 47
    iput-object p1, p0, Lcom/baidu/mobstat/es$a$a;->a:Lcom/baidu/mobstat/es$a;

    invoke-direct {p0}, Landroid/view/View$AccessibilityDelegate;-><init>()V

    .line 48
    iput-object p5, p0, Lcom/baidu/mobstat/es$a$a;->b:Landroid/view/View$AccessibilityDelegate;

    .line 49
    invoke-static {p1, p2}, Lcom/baidu/mobstat/es$a;->a(Lcom/baidu/mobstat/es$a;Ljava/lang/ref/WeakReference;)Ljava/lang/ref/WeakReference;

    .line 50
    iput-object p3, p0, Lcom/baidu/mobstat/es$a$a;->c:Landroid/view/View;

    .line 51
    iput-boolean p6, p0, Lcom/baidu/mobstat/es$a$a;->d:Z

    .line 52
    return-void
.end method


# virtual methods
.method public a()Landroid/view/View$AccessibilityDelegate;
    .locals 1

    .prologue
    .line 55
    iget-object v0, p0, Lcom/baidu/mobstat/es$a$a;->b:Landroid/view/View$AccessibilityDelegate;

    return-object v0
.end method

.method public sendAccessibilityEvent(Landroid/view/View;I)V
    .locals 3

    .prologue
    .line 60
    iget-object v0, p0, Lcom/baidu/mobstat/es$a$a;->c:Landroid/view/View;

    if-eq p1, v0, :cond_1

    .line 79
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/baidu/mobstat/es$a$a;->b:Landroid/view/View$AccessibilityDelegate;

    if-nez v0, :cond_5

    .line 82
    :goto_1
    return-void

    :cond_1
    const/4 v0, 0x1

    .line 60
    if-ne p2, v0, :cond_0

    .line 61
    invoke-static {}, Lcom/baidu/mobstat/ei;->c()Lcom/baidu/mobstat/ei;

    move-result-object v0

    invoke-virtual {v0}, Lcom/baidu/mobstat/ei;->b()Z

    move-result v0

    if-nez v0, :cond_3

    .line 65
    :cond_2
    :goto_2
    invoke-static {}, Lcom/baidu/mobstat/eo;->c()Lcom/baidu/mobstat/eo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/baidu/mobstat/eo;->b()Z

    move-result v0

    if-nez v0, :cond_4

    .line 71
    :goto_3
    iget-object v0, p0, Lcom/baidu/mobstat/es$a$a;->a:Lcom/baidu/mobstat/es$a;

    invoke-static {v0}, Lcom/baidu/mobstat/es$a;->a(Lcom/baidu/mobstat/es$a;)Ljava/lang/ref/WeakReference;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 72
    iget-object v0, p0, Lcom/baidu/mobstat/es$a$a;->a:Lcom/baidu/mobstat/es$a;

    invoke-static {v0}, Lcom/baidu/mobstat/es$a;->a(Lcom/baidu/mobstat/es$a;)Ljava/lang/ref/WeakReference;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    .line 73
    if-eqz v0, :cond_0

    .line 74
    iget-object v1, p0, Lcom/baidu/mobstat/es$a$a;->a:Lcom/baidu/mobstat/es$a;

    invoke-static {v1}, Lcom/baidu/mobstat/es$a;->b(Lcom/baidu/mobstat/es$a;)Lcom/baidu/mobstat/es$b;

    move-result-object v1

    iget-boolean v2, p0, Lcom/baidu/mobstat/es$a$a;->d:Z

    invoke-interface {v1, p1, v2, v0}, Lcom/baidu/mobstat/es$b;->a(Landroid/view/View;ZLandroid/app/Activity;)V

    goto :goto_0

    .line 61
    :cond_3
    iget-boolean v0, p0, Lcom/baidu/mobstat/es$a$a;->d:Z

    if-eqz v0, :cond_2

    .line 62
    invoke-static {}, Lcom/baidu/mobstat/ei;->c()Lcom/baidu/mobstat/ei;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "watch view  OnEvent:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    .line 63
    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 62
    invoke-virtual {v0, v1}, Lcom/baidu/mobstat/ei;->a(Ljava/lang/String;)V

    goto :goto_2

    .line 66
    :cond_4
    invoke-static {}, Lcom/baidu/mobstat/eo;->c()Lcom/baidu/mobstat/eo;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "watch view  OnEvent:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 67
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    .line 68
    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 66
    invoke-virtual {v0, v1}, Lcom/baidu/mobstat/eo;->a(Ljava/lang/String;)V

    goto :goto_3

    .line 80
    :cond_5
    iget-object v0, p0, Lcom/baidu/mobstat/es$a$a;->b:Landroid/view/View$AccessibilityDelegate;

    invoke-virtual {v0, p1, p2}, Landroid/view/View$AccessibilityDelegate;->sendAccessibilityEvent(Landroid/view/View;I)V

    goto/16 :goto_1
.end method
