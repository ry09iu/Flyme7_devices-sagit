.class public Lcom/bumptech/glide/manager/RequestManagerFragment;
.super Landroid/app/Fragment;
.source "RequestManagerFragment.java"


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0xb
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/bumptech/glide/manager/RequestManagerFragment$1;,
        Lcom/bumptech/glide/manager/RequestManagerFragment$FragmentRequestManagerTreeNode;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "RMFragment"


# instance fields
.field private final childRequestManagerFragments:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Lcom/bumptech/glide/manager/RequestManagerFragment;",
            ">;"
        }
    .end annotation
.end field

.field private final lifecycle:Lcom/bumptech/glide/manager/ActivityFragmentLifecycle;

.field private requestManager:Lcom/bumptech/glide/RequestManager;

.field private final requestManagerTreeNode:Lcom/bumptech/glide/manager/RequestManagerTreeNode;

.field private rootRequestManagerFragment:Lcom/bumptech/glide/manager/RequestManagerFragment;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 38
    new-instance v0, Lcom/bumptech/glide/manager/ActivityFragmentLifecycle;

    invoke-direct {v0}, Lcom/bumptech/glide/manager/ActivityFragmentLifecycle;-><init>()V

    invoke-direct {p0, v0}, Lcom/bumptech/glide/manager/RequestManagerFragment;-><init>(Lcom/bumptech/glide/manager/ActivityFragmentLifecycle;)V

    .line 39
    return-void
.end method

.method constructor <init>(Lcom/bumptech/glide/manager/ActivityFragmentLifecycle;)V
    .locals 2
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "ValidFragment"
        }
    .end annotation

    .prologue
    .line 43
    invoke-direct {p0}, Landroid/app/Fragment;-><init>()V

    .line 31
    new-instance v0, Lcom/bumptech/glide/manager/RequestManagerFragment$FragmentRequestManagerTreeNode;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/bumptech/glide/manager/RequestManagerFragment$FragmentRequestManagerTreeNode;-><init>(Lcom/bumptech/glide/manager/RequestManagerFragment;Lcom/bumptech/glide/manager/RequestManagerFragment$1;)V

    iput-object v0, p0, Lcom/bumptech/glide/manager/RequestManagerFragment;->requestManagerTreeNode:Lcom/bumptech/glide/manager/RequestManagerTreeNode;

    .line 33
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/bumptech/glide/manager/RequestManagerFragment;->childRequestManagerFragments:Ljava/util/HashSet;

    .line 44
    iput-object p1, p0, Lcom/bumptech/glide/manager/RequestManagerFragment;->lifecycle:Lcom/bumptech/glide/manager/ActivityFragmentLifecycle;

    .line 45
    return-void
.end method

.method private addChildRequestManagerFragment(Lcom/bumptech/glide/manager/RequestManagerFragment;)V
    .locals 1

    .prologue
    .line 72
    iget-object v0, p0, Lcom/bumptech/glide/manager/RequestManagerFragment;->childRequestManagerFragments:Ljava/util/HashSet;

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 73
    return-void
.end method

.method private isDescendant(Landroid/app/Fragment;)Z
    .locals 2
    .annotation build Landroid/annotation/TargetApi;
        value = 0x11
    .end annotation

    .prologue
    .line 108
    invoke-virtual {p0}, Lcom/bumptech/glide/manager/RequestManagerFragment;->getParentFragment()Landroid/app/Fragment;

    move-result-object v0

    .line 109
    :goto_0
    invoke-virtual {p1}, Landroid/app/Fragment;->getParentFragment()Landroid/app/Fragment;

    move-result-object v1

    if-nez v1, :cond_0

    .line 115
    const/4 v0, 0x0

    return v0

    .line 110
    :cond_0
    invoke-virtual {p1}, Landroid/app/Fragment;->getParentFragment()Landroid/app/Fragment;

    move-result-object v1

    if-eq v1, v0, :cond_1

    .line 113
    invoke-virtual {p1}, Landroid/app/Fragment;->getParentFragment()Landroid/app/Fragment;

    move-result-object p1

    goto :goto_0

    .line 111
    :cond_1
    const/4 v0, 0x1

    return v0
.end method

.method private removeChildRequestManagerFragment(Lcom/bumptech/glide/manager/RequestManagerFragment;)V
    .locals 1

    .prologue
    .line 76
    iget-object v0, p0, Lcom/bumptech/glide/manager/RequestManagerFragment;->childRequestManagerFragments:Ljava/util/HashSet;

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    .line 77
    return-void
.end method


# virtual methods
.method public getDescendantRequestManagerFragments()Ljava/util/Set;
    .locals 4
    .annotation build Landroid/annotation/TargetApi;
        value = 0x11
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Lcom/bumptech/glide/manager/RequestManagerFragment;",
            ">;"
        }
    .end annotation

    .prologue
    .line 85
    iget-object v0, p0, Lcom/bumptech/glide/manager/RequestManagerFragment;->rootRequestManagerFragment:Lcom/bumptech/glide/manager/RequestManagerFragment;

    if-eq v0, p0, :cond_1

    .line 87
    iget-object v0, p0, Lcom/bumptech/glide/manager/RequestManagerFragment;->rootRequestManagerFragment:Lcom/bumptech/glide/manager/RequestManagerFragment;

    if-nez v0, :cond_2

    .line 90
    :cond_0
    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    move-result-object v0

    return-object v0

    .line 86
    :cond_1
    iget-object v0, p0, Lcom/bumptech/glide/manager/RequestManagerFragment;->childRequestManagerFragments:Ljava/util/HashSet;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    return-object v0

    .line 87
    :cond_2
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x11

    if-lt v0, v1, :cond_0

    .line 92
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    .line 94
    iget-object v0, p0, Lcom/bumptech/glide/manager/RequestManagerFragment;->rootRequestManagerFragment:Lcom/bumptech/glide/manager/RequestManagerFragment;

    invoke-virtual {v0}, Lcom/bumptech/glide/manager/RequestManagerFragment;->getDescendantRequestManagerFragments()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_3
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_4

    .line 99
    invoke-static {v1}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    return-object v0

    .line 94
    :cond_4
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bumptech/glide/manager/RequestManagerFragment;

    .line 95
    invoke-virtual {v0}, Lcom/bumptech/glide/manager/RequestManagerFragment;->getParentFragment()Landroid/app/Fragment;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/bumptech/glide/manager/RequestManagerFragment;->isDescendant(Landroid/app/Fragment;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 96
    invoke-virtual {v1, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method getLifecycle()Lcom/bumptech/glide/manager/ActivityFragmentLifecycle;
    .locals 1

    .prologue
    .line 57
    iget-object v0, p0, Lcom/bumptech/glide/manager/RequestManagerFragment;->lifecycle:Lcom/bumptech/glide/manager/ActivityFragmentLifecycle;

    return-object v0
.end method

.method public getRequestManager()Lcom/bumptech/glide/RequestManager;
    .locals 1

    .prologue
    .line 64
    iget-object v0, p0, Lcom/bumptech/glide/manager/RequestManagerFragment;->requestManager:Lcom/bumptech/glide/RequestManager;

    return-object v0
.end method

.method public getRequestManagerTreeNode()Lcom/bumptech/glide/manager/RequestManagerTreeNode;
    .locals 1

    .prologue
    .line 68
    iget-object v0, p0, Lcom/bumptech/glide/manager/RequestManagerFragment;->requestManagerTreeNode:Lcom/bumptech/glide/manager/RequestManagerTreeNode;

    return-object v0
.end method

.method public onAttach(Landroid/app/Activity;)V
    .locals 3

    .prologue
    .line 120
    invoke-super {p0, p1}, Landroid/app/Fragment;->onAttach(Landroid/app/Activity;)V

    .line 122
    :try_start_0
    invoke-static {}, Lcom/bumptech/glide/manager/RequestManagerRetriever;->get()Lcom/bumptech/glide/manager/RequestManagerRetriever;

    move-result-object v0

    invoke-virtual {p0}, Lcom/bumptech/glide/manager/RequestManagerFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/bumptech/glide/manager/RequestManagerRetriever;->getRequestManagerFragment(Landroid/app/FragmentManager;)Lcom/bumptech/glide/manager/RequestManagerFragment;

    move-result-object v0

    iput-object v0, p0, Lcom/bumptech/glide/manager/RequestManagerFragment;->rootRequestManagerFragment:Lcom/bumptech/glide/manager/RequestManagerFragment;

    .line 124
    iget-object v0, p0, Lcom/bumptech/glide/manager/RequestManagerFragment;->rootRequestManagerFragment:Lcom/bumptech/glide/manager/RequestManagerFragment;

    if-ne v0, p0, :cond_1

    .line 134
    :cond_0
    :goto_0
    return-void

    .line 125
    :cond_1
    iget-object v0, p0, Lcom/bumptech/glide/manager/RequestManagerFragment;->rootRequestManagerFragment:Lcom/bumptech/glide/manager/RequestManagerFragment;

    invoke-direct {v0, p0}, Lcom/bumptech/glide/manager/RequestManagerFragment;->addChildRequestManagerFragment(Lcom/bumptech/glide/manager/RequestManagerFragment;)V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 133
    :catch_0
    move-exception v0

    const-string/jumbo v1, "RMFragment"

    const/4 v2, 0x5

    .line 129
    invoke-static {v1, v2}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string/jumbo v1, "RMFragment"

    const-string/jumbo v2, "Unable to register fragment with root"

    .line 130
    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public onDestroy()V
    .locals 1

    .prologue
    .line 159
    invoke-super {p0}, Landroid/app/Fragment;->onDestroy()V

    .line 160
    iget-object v0, p0, Lcom/bumptech/glide/manager/RequestManagerFragment;->lifecycle:Lcom/bumptech/glide/manager/ActivityFragmentLifecycle;

    invoke-virtual {v0}, Lcom/bumptech/glide/manager/ActivityFragmentLifecycle;->onDestroy()V

    .line 161
    return-void
.end method

.method public onDetach()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 138
    invoke-super {p0}, Landroid/app/Fragment;->onDetach()V

    .line 139
    iget-object v0, p0, Lcom/bumptech/glide/manager/RequestManagerFragment;->rootRequestManagerFragment:Lcom/bumptech/glide/manager/RequestManagerFragment;

    if-nez v0, :cond_0

    .line 143
    :goto_0
    return-void

    .line 140
    :cond_0
    iget-object v0, p0, Lcom/bumptech/glide/manager/RequestManagerFragment;->rootRequestManagerFragment:Lcom/bumptech/glide/manager/RequestManagerFragment;

    invoke-direct {v0, p0}, Lcom/bumptech/glide/manager/RequestManagerFragment;->removeChildRequestManagerFragment(Lcom/bumptech/glide/manager/RequestManagerFragment;)V

    .line 141
    iput-object v1, p0, Lcom/bumptech/glide/manager/RequestManagerFragment;->rootRequestManagerFragment:Lcom/bumptech/glide/manager/RequestManagerFragment;

    goto :goto_0
.end method

.method public onLowMemory()V
    .locals 1

    .prologue
    .line 176
    iget-object v0, p0, Lcom/bumptech/glide/manager/RequestManagerFragment;->requestManager:Lcom/bumptech/glide/RequestManager;

    if-nez v0, :cond_0

    .line 179
    :goto_0
    return-void

    .line 177
    :cond_0
    iget-object v0, p0, Lcom/bumptech/glide/manager/RequestManagerFragment;->requestManager:Lcom/bumptech/glide/RequestManager;

    invoke-virtual {v0}, Lcom/bumptech/glide/RequestManager;->onLowMemory()V

    goto :goto_0
.end method

.method public onStart()V
    .locals 1

    .prologue
    .line 147
    invoke-super {p0}, Landroid/app/Fragment;->onStart()V

    .line 148
    iget-object v0, p0, Lcom/bumptech/glide/manager/RequestManagerFragment;->lifecycle:Lcom/bumptech/glide/manager/ActivityFragmentLifecycle;

    invoke-virtual {v0}, Lcom/bumptech/glide/manager/ActivityFragmentLifecycle;->onStart()V

    .line 149
    return-void
.end method

.method public onStop()V
    .locals 1

    .prologue
    .line 153
    invoke-super {p0}, Landroid/app/Fragment;->onStop()V

    .line 154
    iget-object v0, p0, Lcom/bumptech/glide/manager/RequestManagerFragment;->lifecycle:Lcom/bumptech/glide/manager/ActivityFragmentLifecycle;

    invoke-virtual {v0}, Lcom/bumptech/glide/manager/ActivityFragmentLifecycle;->onStop()V

    .line 155
    return-void
.end method

.method public onTrimMemory(I)V
    .locals 1

    .prologue
    .line 167
    iget-object v0, p0, Lcom/bumptech/glide/manager/RequestManagerFragment;->requestManager:Lcom/bumptech/glide/RequestManager;

    if-nez v0, :cond_0

    .line 170
    :goto_0
    return-void

    .line 168
    :cond_0
    iget-object v0, p0, Lcom/bumptech/glide/manager/RequestManagerFragment;->requestManager:Lcom/bumptech/glide/RequestManager;

    invoke-virtual {v0, p1}, Lcom/bumptech/glide/RequestManager;->onTrimMemory(I)V

    goto :goto_0
.end method

.method public setRequestManager(Lcom/bumptech/glide/RequestManager;)V
    .locals 0

    .prologue
    .line 53
    iput-object p1, p0, Lcom/bumptech/glide/manager/RequestManagerFragment;->requestManager:Lcom/bumptech/glide/RequestManager;

    .line 54
    return-void
.end method
