.class Landroid/support/v4/widget/SearchViewCompat$SearchViewCompatStubImpl;
.super Ljava/lang/Object;
.source "SearchViewCompat.java"

# interfaces
.implements Landroid/support/v4/widget/SearchViewCompat$SearchViewCompatImpl;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v4/widget/SearchViewCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "SearchViewCompatStubImpl"
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getQuery(Landroid/view/View;)Ljava/lang/CharSequence;
    .locals 1
    .param p1, "searchView"    # Landroid/view/View;

    .prologue
    .line 92
    const/4 v0, 0x0

    return-object v0
.end method

.method public isIconified(Landroid/view/View;)Z
    .locals 1
    .param p1, "searchView"    # Landroid/view/View;

    .prologue
    .line 109
    const/4 v0, 0x1

    return v0
.end method

.method public isQueryRefinementEnabled(Landroid/view/View;)Z
    .locals 1
    .param p1, "searchView"    # Landroid/view/View;

    .prologue
    .line 127
    const/4 v0, 0x0

    return v0
.end method

.method public isSubmitButtonEnabled(Landroid/view/View;)Z
    .locals 1
    .param p1, "searchView"    # Landroid/view/View;

    .prologue
    .line 118
    const/4 v0, 0x0

    return v0
.end method

.method public newOnCloseListener(Landroid/support/v4/widget/SearchViewCompat$OnCloseListener;)Ljava/lang/Object;
    .locals 1
    .param p1, "listener"    # Landroid/support/v4/widget/SearchViewCompat$OnCloseListener;

    .prologue
    .line 83
    const/4 v0, 0x0

    return-object v0
.end method

.method public newOnQueryTextListener(Landroid/support/v4/widget/SearchViewCompat$OnQueryTextListener;)Ljava/lang/Object;
    .locals 1
    .param p1, "listener"    # Landroid/support/v4/widget/SearchViewCompat$OnQueryTextListener;

    .prologue
    .line 74
    const/4 v0, 0x0

    return-object v0
.end method

.method public newSearchView(Landroid/content/Context;)Landroid/view/View;
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 57
    const/4 v0, 0x0

    return-object v0
.end method

.method public setIconified(Landroid/view/View;Z)V
    .locals 0
    .param p1, "searchView"    # Landroid/view/View;
    .param p2, "iconify"    # Z

    .prologue
    .line 104
    return-void
.end method

.method public setImeOptions(Landroid/view/View;I)V
    .locals 0
    .param p1, "searchView"    # Landroid/view/View;
    .param p2, "imeOptions"    # I

    .prologue
    .line 65
    return-void
.end method

.method public setInputType(Landroid/view/View;I)V
    .locals 0
    .param p1, "searchView"    # Landroid/view/View;
    .param p2, "inputType"    # I

    .prologue
    .line 69
    return-void
.end method

.method public setMaxWidth(Landroid/view/View;I)V
    .locals 0
    .param p1, "searchView"    # Landroid/view/View;
    .param p2, "maxpixels"    # I

    .prologue
    .line 131
    return-void
.end method

.method public setOnCloseListener(Landroid/view/View;Landroid/support/v4/widget/SearchViewCompat$OnCloseListener;)V
    .locals 0
    .param p1, "searchView"    # Landroid/view/View;
    .param p2, "listener"    # Landroid/support/v4/widget/SearchViewCompat$OnCloseListener;

    .prologue
    .line 87
    return-void
.end method

.method public setOnQueryTextListener(Landroid/view/View;Landroid/support/v4/widget/SearchViewCompat$OnQueryTextListener;)V
    .locals 0
    .param p1, "searchView"    # Landroid/view/View;
    .param p2, "listener"    # Landroid/support/v4/widget/SearchViewCompat$OnQueryTextListener;

    .prologue
    .line 78
    return-void
.end method

.method public setQuery(Landroid/view/View;Ljava/lang/CharSequence;Z)V
    .locals 0
    .param p1, "searchView"    # Landroid/view/View;
    .param p2, "query"    # Ljava/lang/CharSequence;
    .param p3, "submit"    # Z

    .prologue
    .line 96
    return-void
.end method

.method public setQueryHint(Landroid/view/View;Ljava/lang/CharSequence;)V
    .locals 0
    .param p1, "searchView"    # Landroid/view/View;
    .param p2, "hint"    # Ljava/lang/CharSequence;

    .prologue
    .line 100
    return-void
.end method

.method public setQueryRefinementEnabled(Landroid/view/View;Z)V
    .locals 0
    .param p1, "searchView"    # Landroid/view/View;
    .param p2, "enable"    # Z

    .prologue
    .line 122
    return-void
.end method

.method public setSearchableInfo(Landroid/view/View;Landroid/content/ComponentName;)V
    .locals 0
    .param p1, "searchView"    # Landroid/view/View;
    .param p2, "searchableComponent"    # Landroid/content/ComponentName;

    .prologue
    .line 61
    return-void
.end method

.method public setSubmitButtonEnabled(Landroid/view/View;Z)V
    .locals 0
    .param p1, "searchView"    # Landroid/view/View;
    .param p2, "enabled"    # Z

    .prologue
    .line 113
    return-void
.end method
