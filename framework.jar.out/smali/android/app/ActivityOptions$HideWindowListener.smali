.class Landroid/app/ActivityOptions$HideWindowListener;
.super Landroid/transition/Transition$TransitionListenerAdapter;
.source "ActivityOptions.java"

# interfaces
.implements Landroid/app/ExitTransitionCoordinator$HideSharedElementsCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/ActivityOptions;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "HideWindowListener"
.end annotation


# instance fields
.field private final mExit:Landroid/app/ExitTransitionCoordinator;

.field private mSharedElementHidden:Z

.field private mSharedElements:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private mTransitionEnded:Z

.field private final mWaitingForTransition:Z

.field private final mWindow:Landroid/view/Window;


# direct methods
.method public constructor <init>(Landroid/view/Window;Landroid/app/ExitTransitionCoordinator;)V
    .locals 5
    .param p1, "window"    # Landroid/view/Window;
    .param p2, "exit"    # Landroid/app/ExitTransitionCoordinator;

    .prologue
    const v4, 0x102005d

    .line 1329
    invoke-direct {p0}, Landroid/transition/Transition$TransitionListenerAdapter;-><init>()V

    .line 1330
    iput-object p1, p0, Landroid/app/ActivityOptions$HideWindowListener;->mWindow:Landroid/view/Window;

    .line 1331
    iput-object p2, p0, Landroid/app/ActivityOptions$HideWindowListener;->mExit:Landroid/app/ExitTransitionCoordinator;

    .line 1332
    new-instance v2, Ljava/util/ArrayList;

    iget-object v3, p2, Landroid/app/ExitTransitionCoordinator;->mSharedElements:Ljava/util/ArrayList;

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v2, p0, Landroid/app/ActivityOptions$HideWindowListener;->mSharedElements:Ljava/util/ArrayList;

    .line 1333
    iget-object v2, p0, Landroid/app/ActivityOptions$HideWindowListener;->mWindow:Landroid/view/Window;

    invoke-virtual {v2}, Landroid/view/Window;->getExitTransition()Landroid/transition/Transition;

    move-result-object v1

    .line 1334
    .local v1, "transition":Landroid/transition/Transition;
    if-eqz v1, :cond_0

    .line 1335
    invoke-virtual {v1, p0}, Landroid/transition/Transition;->addListener(Landroid/transition/Transition$TransitionListener;)Landroid/transition/Transition;

    .line 1336
    const/4 v2, 0x1

    iput-boolean v2, p0, Landroid/app/ActivityOptions$HideWindowListener;->mWaitingForTransition:Z

    .line 1340
    :goto_0
    iget-object v2, p0, Landroid/app/ActivityOptions$HideWindowListener;->mWindow:Landroid/view/Window;

    invoke-virtual {v2}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    .line 1341
    .local v0, "decorView":Landroid/view/View;
    if-eqz v0, :cond_2

    .line 1342
    invoke-virtual {v0, v4}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 1343
    new-instance v2, Ljava/lang/IllegalStateException;

    .line 1344
    const-string/jumbo v3, "Cannot start a transition while one is running"

    .line 1343
    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 1338
    .end local v0    # "decorView":Landroid/view/View;
    :cond_0
    const/4 v2, 0x0

    iput-boolean v2, p0, Landroid/app/ActivityOptions$HideWindowListener;->mWaitingForTransition:Z

    goto :goto_0

    .line 1346
    .restart local v0    # "decorView":Landroid/view/View;
    :cond_1
    invoke-virtual {v0, v4, p2}, Landroid/view/View;->setTagInternal(ILjava/lang/Object;)V

    .line 1329
    :cond_2
    return-void
.end method

.method private hideWhenDone()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 1364
    iget-boolean v4, p0, Landroid/app/ActivityOptions$HideWindowListener;->mSharedElementHidden:Z

    if-eqz v4, :cond_2

    iget-boolean v4, p0, Landroid/app/ActivityOptions$HideWindowListener;->mWaitingForTransition:Z

    if-eqz v4, :cond_0

    iget-boolean v4, p0, Landroid/app/ActivityOptions$HideWindowListener;->mTransitionEnded:Z

    if-eqz v4, :cond_2

    .line 1365
    :cond_0
    iget-object v4, p0, Landroid/app/ActivityOptions$HideWindowListener;->mExit:Landroid/app/ExitTransitionCoordinator;

    invoke-virtual {v4}, Landroid/app/ExitTransitionCoordinator;->resetViews()V

    .line 1366
    iget-object v4, p0, Landroid/app/ActivityOptions$HideWindowListener;->mSharedElements:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 1367
    .local v2, "numSharedElements":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v2, :cond_1

    .line 1368
    iget-object v4, p0, Landroid/app/ActivityOptions$HideWindowListener;->mSharedElements:Ljava/util/ArrayList;

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/View;

    .line 1369
    .local v3, "view":Landroid/view/View;
    invoke-virtual {v3}, Landroid/view/View;->requestLayout()V

    .line 1367
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1371
    .end local v3    # "view":Landroid/view/View;
    :cond_1
    iget-object v4, p0, Landroid/app/ActivityOptions$HideWindowListener;->mWindow:Landroid/view/Window;

    invoke-virtual {v4}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    .line 1372
    .local v0, "decorView":Landroid/view/View;
    if-eqz v0, :cond_2

    .line 1374
    const v4, 0x102005d

    .line 1373
    invoke-virtual {v0, v4, v5}, Landroid/view/View;->setTagInternal(ILjava/lang/Object;)V

    .line 1375
    const/16 v4, 0x8

    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    .line 1363
    .end local v0    # "decorView":Landroid/view/View;
    .end local v1    # "i":I
    .end local v2    # "numSharedElements":I
    :cond_2
    return-void
.end method


# virtual methods
.method public hideSharedElements()V
    .locals 1

    .prologue
    .line 1359
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/app/ActivityOptions$HideWindowListener;->mSharedElementHidden:Z

    .line 1360
    invoke-direct {p0}, Landroid/app/ActivityOptions$HideWindowListener;->hideWhenDone()V

    .line 1358
    return-void
.end method

.method public onTransitionEnd(Landroid/transition/Transition;)V
    .locals 1
    .param p1, "transition"    # Landroid/transition/Transition;

    .prologue
    .line 1352
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/app/ActivityOptions$HideWindowListener;->mTransitionEnded:Z

    .line 1353
    invoke-direct {p0}, Landroid/app/ActivityOptions$HideWindowListener;->hideWhenDone()V

    .line 1354
    invoke-virtual {p1, p0}, Landroid/transition/Transition;->removeListener(Landroid/transition/Transition$TransitionListener;)Landroid/transition/Transition;

    .line 1351
    return-void
.end method
