.class public Lcom/baidu/mobstat/cs;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/Window$Callback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/baidu/mobstat/cs$a;
    }
.end annotation


# instance fields
.field private a:Landroid/view/Window$Callback;

.field private b:Lcom/baidu/mobstat/cs$a;


# direct methods
.method public constructor <init>(Landroid/view/Window$Callback;Lcom/baidu/mobstat/cs$a;)V
    .locals 0

    .prologue
    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    iput-object p1, p0, Lcom/baidu/mobstat/cs;->a:Landroid/view/Window$Callback;

    .line 29
    iput-object p2, p0, Lcom/baidu/mobstat/cs;->b:Lcom/baidu/mobstat/cs$a;

    .line 30
    return-void
.end method


# virtual methods
.method public a()Landroid/view/Window$Callback;
    .locals 1

    .prologue
    .line 24
    iget-object v0, p0, Lcom/baidu/mobstat/cs;->a:Landroid/view/Window$Callback;

    return-object v0
.end method

.method public dispatchGenericMotionEvent(Landroid/view/MotionEvent;)Z
    .locals 1

    .prologue
    .line 41
    iget-object v0, p0, Lcom/baidu/mobstat/cs;->a:Landroid/view/Window$Callback;

    invoke-interface {v0, p1}, Landroid/view/Window$Callback;->dispatchGenericMotionEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method

.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 1

    .prologue
    .line 46
    iget-object v0, p0, Lcom/baidu/mobstat/cs;->b:Lcom/baidu/mobstat/cs$a;

    if-nez v0, :cond_0

    .line 50
    :goto_0
    iget-object v0, p0, Lcom/baidu/mobstat/cs;->a:Landroid/view/Window$Callback;

    invoke-interface {v0, p1}, Landroid/view/Window$Callback;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v0

    return v0

    .line 47
    :cond_0
    iget-object v0, p0, Lcom/baidu/mobstat/cs;->b:Lcom/baidu/mobstat/cs$a;

    invoke-interface {v0, p1}, Lcom/baidu/mobstat/cs$a;->a(Landroid/view/KeyEvent;)V

    goto :goto_0
.end method

.method public dispatchKeyShortcutEvent(Landroid/view/KeyEvent;)Z
    .locals 1

    .prologue
    .line 56
    iget-object v0, p0, Lcom/baidu/mobstat/cs;->a:Landroid/view/Window$Callback;

    invoke-interface {v0, p1}, Landroid/view/Window$Callback;->dispatchKeyShortcutEvent(Landroid/view/KeyEvent;)Z

    move-result v0

    return v0
.end method

.method public dispatchPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)Z
    .locals 1

    .prologue
    .line 62
    iget-object v0, p0, Lcom/baidu/mobstat/cs;->a:Landroid/view/Window$Callback;

    invoke-interface {v0, p1}, Landroid/view/Window$Callback;->dispatchPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)Z

    move-result v0

    return v0
.end method

.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1

    .prologue
    .line 67
    iget-object v0, p0, Lcom/baidu/mobstat/cs;->b:Lcom/baidu/mobstat/cs$a;

    if-nez v0, :cond_0

    .line 71
    :goto_0
    iget-object v0, p0, Lcom/baidu/mobstat/cs;->a:Landroid/view/Window$Callback;

    invoke-interface {v0, p1}, Landroid/view/Window$Callback;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0

    .line 68
    :cond_0
    iget-object v0, p0, Lcom/baidu/mobstat/cs;->b:Lcom/baidu/mobstat/cs$a;

    invoke-interface {v0, p1}, Lcom/baidu/mobstat/cs$a;->a(Landroid/view/MotionEvent;)V

    goto :goto_0
.end method

.method public dispatchTrackballEvent(Landroid/view/MotionEvent;)Z
    .locals 1

    .prologue
    .line 77
    iget-object v0, p0, Lcom/baidu/mobstat/cs;->a:Landroid/view/Window$Callback;

    invoke-interface {v0, p1}, Landroid/view/Window$Callback;->dispatchTrackballEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method

.method public onActionModeFinished(Landroid/view/ActionMode;)V
    .locals 1

    .prologue
    .line 83
    iget-object v0, p0, Lcom/baidu/mobstat/cs;->a:Landroid/view/Window$Callback;

    invoke-interface {v0, p1}, Landroid/view/Window$Callback;->onActionModeFinished(Landroid/view/ActionMode;)V

    .line 84
    return-void
.end method

.method public onActionModeStarted(Landroid/view/ActionMode;)V
    .locals 1

    .prologue
    .line 89
    iget-object v0, p0, Lcom/baidu/mobstat/cs;->a:Landroid/view/Window$Callback;

    invoke-interface {v0, p1}, Landroid/view/Window$Callback;->onActionModeStarted(Landroid/view/ActionMode;)V

    .line 90
    return-void
.end method

.method public onAttachedToWindow()V
    .locals 1

    .prologue
    .line 95
    iget-object v0, p0, Lcom/baidu/mobstat/cs;->a:Landroid/view/Window$Callback;

    invoke-interface {v0}, Landroid/view/Window$Callback;->onAttachedToWindow()V

    .line 96
    return-void
.end method

.method public onContentChanged()V
    .locals 1

    .prologue
    .line 101
    iget-object v0, p0, Lcom/baidu/mobstat/cs;->a:Landroid/view/Window$Callback;

    invoke-interface {v0}, Landroid/view/Window$Callback;->onContentChanged()V

    .line 102
    return-void
.end method

.method public onCreatePanelMenu(ILandroid/view/Menu;)Z
    .locals 1

    .prologue
    .line 107
    iget-object v0, p0, Lcom/baidu/mobstat/cs;->a:Landroid/view/Window$Callback;

    invoke-interface {v0, p1, p2}, Landroid/view/Window$Callback;->onCreatePanelMenu(ILandroid/view/Menu;)Z

    move-result v0

    return v0
.end method

.method public onCreatePanelView(I)Landroid/view/View;
    .locals 1

    .prologue
    .line 113
    iget-object v0, p0, Lcom/baidu/mobstat/cs;->a:Landroid/view/Window$Callback;

    invoke-interface {v0, p1}, Landroid/view/Window$Callback;->onCreatePanelView(I)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public onDetachedFromWindow()V
    .locals 1

    .prologue
    .line 119
    iget-object v0, p0, Lcom/baidu/mobstat/cs;->a:Landroid/view/Window$Callback;

    invoke-interface {v0}, Landroid/view/Window$Callback;->onDetachedFromWindow()V

    .line 120
    return-void
.end method

.method public onMenuItemSelected(ILandroid/view/MenuItem;)Z
    .locals 1

    .prologue
    .line 125
    iget-object v0, p0, Lcom/baidu/mobstat/cs;->a:Landroid/view/Window$Callback;

    invoke-interface {v0, p1, p2}, Landroid/view/Window$Callback;->onMenuItemSelected(ILandroid/view/MenuItem;)Z

    move-result v0

    return v0
.end method

.method public onMenuOpened(ILandroid/view/Menu;)Z
    .locals 1

    .prologue
    .line 131
    iget-object v0, p0, Lcom/baidu/mobstat/cs;->a:Landroid/view/Window$Callback;

    invoke-interface {v0, p1, p2}, Landroid/view/Window$Callback;->onMenuOpened(ILandroid/view/Menu;)Z

    move-result v0

    return v0
.end method

.method public onPanelClosed(ILandroid/view/Menu;)V
    .locals 1

    .prologue
    .line 137
    iget-object v0, p0, Lcom/baidu/mobstat/cs;->a:Landroid/view/Window$Callback;

    invoke-interface {v0, p1, p2}, Landroid/view/Window$Callback;->onPanelClosed(ILandroid/view/Menu;)V

    .line 138
    return-void
.end method

.method public onPointerCaptureChanged(Z)V
    .locals 1
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    .prologue
    .line 172
    iget-object v0, p0, Lcom/baidu/mobstat/cs;->a:Landroid/view/Window$Callback;

    invoke-interface {v0, p1}, Landroid/view/Window$Callback;->onPointerCaptureChanged(Z)V

    .line 173
    return-void
.end method

.method public onPreparePanel(ILandroid/view/View;Landroid/view/Menu;)Z
    .locals 1

    .prologue
    .line 143
    iget-object v0, p0, Lcom/baidu/mobstat/cs;->a:Landroid/view/Window$Callback;

    invoke-interface {v0, p1, p2, p3}, Landroid/view/Window$Callback;->onPreparePanel(ILandroid/view/View;Landroid/view/Menu;)Z

    move-result v0

    return v0
.end method

.method public onProvideKeyboardShortcuts(Ljava/util/List;Landroid/view/Menu;I)V
    .locals 1
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/view/KeyboardShortcutGroup;",
            ">;",
            "Landroid/view/Menu;",
            "I)V"
        }
    .end annotation

    .prologue
    .line 178
    iget-object v0, p0, Lcom/baidu/mobstat/cs;->a:Landroid/view/Window$Callback;

    invoke-interface {v0, p1, p2, p3}, Landroid/view/Window$Callback;->onProvideKeyboardShortcuts(Ljava/util/List;Landroid/view/Menu;I)V

    .line 179
    return-void
.end method

.method public onSearchRequested()Z
    .locals 1

    .prologue
    .line 148
    iget-object v0, p0, Lcom/baidu/mobstat/cs;->a:Landroid/view/Window$Callback;

    invoke-interface {v0}, Landroid/view/Window$Callback;->onSearchRequested()Z

    move-result v0

    return v0
.end method

.method public onSearchRequested(Landroid/view/SearchEvent;)Z
    .locals 1
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    .prologue
    .line 154
    iget-object v0, p0, Lcom/baidu/mobstat/cs;->a:Landroid/view/Window$Callback;

    invoke-interface {v0, p1}, Landroid/view/Window$Callback;->onSearchRequested(Landroid/view/SearchEvent;)Z

    move-result v0

    return v0
.end method

.method public onWindowAttributesChanged(Landroid/view/WindowManager$LayoutParams;)V
    .locals 1

    .prologue
    .line 160
    iget-object v0, p0, Lcom/baidu/mobstat/cs;->a:Landroid/view/Window$Callback;

    invoke-interface {v0, p1}, Landroid/view/Window$Callback;->onWindowAttributesChanged(Landroid/view/WindowManager$LayoutParams;)V

    .line 161
    return-void
.end method

.method public onWindowFocusChanged(Z)V
    .locals 1

    .prologue
    .line 166
    iget-object v0, p0, Lcom/baidu/mobstat/cs;->a:Landroid/view/Window$Callback;

    invoke-interface {v0, p1}, Landroid/view/Window$Callback;->onWindowFocusChanged(Z)V

    .line 167
    return-void
.end method

.method public onWindowStartingActionMode(Landroid/view/ActionMode$Callback;)Landroid/view/ActionMode;
    .locals 1

    .prologue
    .line 183
    iget-object v0, p0, Lcom/baidu/mobstat/cs;->a:Landroid/view/Window$Callback;

    invoke-interface {v0, p1}, Landroid/view/Window$Callback;->onWindowStartingActionMode(Landroid/view/ActionMode$Callback;)Landroid/view/ActionMode;

    move-result-object v0

    return-object v0
.end method

.method public onWindowStartingActionMode(Landroid/view/ActionMode$Callback;I)Landroid/view/ActionMode;
    .locals 1
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    .prologue
    .line 189
    iget-object v0, p0, Lcom/baidu/mobstat/cs;->a:Landroid/view/Window$Callback;

    invoke-interface {v0, p1, p2}, Landroid/view/Window$Callback;->onWindowStartingActionMode(Landroid/view/ActionMode$Callback;I)Landroid/view/ActionMode;

    move-result-object v0

    return-object v0
.end method
