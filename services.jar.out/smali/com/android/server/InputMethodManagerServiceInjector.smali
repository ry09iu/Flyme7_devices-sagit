.class public Lcom/android/server/InputMethodManagerServiceInjector;
.super Ljava/lang/Object;
.source "InputMethodManagerServiceInjector.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static enableSystemIMEsIfThereIsNoEnabledIME(Ljava/util/ArrayList;Lcom/android/internal/inputmethod/InputMethodUtils$InputMethodSettings;)V
    .locals 8
    .param p1, "settings"    # Lcom/android/internal/inputmethod/InputMethodUtils$InputMethodSettings;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/inputmethod/InputMethodInfo;",
            ">;",
            "Lcom/android/internal/inputmethod/InputMethodUtils$InputMethodSettings;",
            ")V"
        }
    .end annotation

    .prologue
    .line 20
    .local p0, "methodList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/inputmethod/InputMethodInfo;>;"
    sget-boolean v6, Lmiui/os/Build;->IS_CM_CUSTOMIZATION_TEST:Z

    if-nez v6, :cond_0

    if-nez p0, :cond_1

    .line 21
    :cond_0
    return-void

    .line 20
    :cond_1
    if-eqz p1, :cond_0

    .line 24
    invoke-virtual {p1}, Lcom/android/internal/inputmethod/InputMethodUtils$InputMethodSettings;->getEnabledInputMethodsAndSubtypeListLocked()Ljava/util/List;

    move-result-object v0

    .line 27
    .local v0, "enabledInputMethodsList":Ljava/util/List;, "Ljava/util/List<Landroid/util/Pair<Ljava/lang/String;Ljava/util/ArrayList<Ljava/lang/String;>;>;>;"
    const/4 v5, 0x0

    .line 29
    .local v5, "systemInputMethod":Landroid/view/inputmethod/InputMethodInfo;
    const/4 v1, 0x0

    .end local v5    # "systemInputMethod":Landroid/view/inputmethod/InputMethodInfo;
    .local v1, "i":I
    :goto_0
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-ge v1, v6, :cond_5

    .line 30
    invoke-virtual {p0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/inputmethod/InputMethodInfo;

    .line 31
    .local v2, "inputMethodInfo":Landroid/view/inputmethod/InputMethodInfo;
    invoke-static {v2}, Lcom/android/internal/inputmethod/InputMethodUtils;->isSystemIme(Landroid/view/inputmethod/InputMethodInfo;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 32
    move-object v5, v2

    .line 35
    :cond_2
    if-eqz v0, :cond_4

    .line 36
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, "pair$iterator":Ljava/util/Iterator;
    :cond_3
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_4

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/util/Pair;

    .line 37
    .local v3, "pair":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/String;Ljava/util/ArrayList<Ljava/lang/String;>;>;"
    iget-object v6, v3, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v6, Ljava/lang/CharSequence;

    invoke-virtual {v2}, Landroid/view/inputmethod/InputMethodInfo;->getId()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 38
    return-void

    .line 29
    .end local v3    # "pair":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/String;Ljava/util/ArrayList<Ljava/lang/String;>;>;"
    .end local v4    # "pair$iterator":Ljava/util/Iterator;
    :cond_4
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 44
    .end local v2    # "inputMethodInfo":Landroid/view/inputmethod/InputMethodInfo;
    :cond_5
    if-eqz v5, :cond_6

    .line 45
    invoke-virtual {v5}, Landroid/view/inputmethod/InputMethodInfo;->getId()Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    invoke-virtual {p1, v6, v7}, Lcom/android/internal/inputmethod/InputMethodUtils$InputMethodSettings;->appendAndPutEnabledInputMethodLocked(Ljava/lang/String;Z)V

    .line 19
    :cond_6
    return-void
.end method

.method public static shouldResetIME(Landroid/content/Intent;[Ljava/lang/String;IZ)Z
    .locals 1
    .param p0, "intent"    # Landroid/content/Intent;
    .param p1, "packages"    # [Ljava/lang/String;
    .param p2, "uid"    # I
    .param p3, "doit"    # Z

    .prologue
    .line 53
    const/4 v0, 0x0

    return v0
.end method
