.class Lcom/squareup/picasso/RemoteViewsAction$RemoteViewsTarget;
.super Ljava/lang/Object;
.source "RemoteViewsAction.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/squareup/picasso/RemoteViewsAction;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "RemoteViewsTarget"
.end annotation


# instance fields
.field final remoteViews:Landroid/widget/RemoteViews;

.field final viewId:I


# direct methods
.method constructor <init>(Landroid/widget/RemoteViews;I)V
    .locals 0

    .prologue
    .line 69
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 70
    iput-object p1, p0, Lcom/squareup/picasso/RemoteViewsAction$RemoteViewsTarget;->remoteViews:Landroid/widget/RemoteViews;

    .line 71
    iput p2, p0, Lcom/squareup/picasso/RemoteViewsAction$RemoteViewsTarget;->viewId:I

    .line 72
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 75
    if-eq p0, p1, :cond_1

    .line 76
    if-nez p1, :cond_2

    :cond_0
    return v1

    .line 75
    :cond_1
    return v0

    .line 76
    :cond_2
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-ne v2, v3, :cond_0

    .line 77
    check-cast p1, Lcom/squareup/picasso/RemoteViewsAction$RemoteViewsTarget;

    .line 78
    iget v2, p0, Lcom/squareup/picasso/RemoteViewsAction$RemoteViewsTarget;->viewId:I

    iget v3, p1, Lcom/squareup/picasso/RemoteViewsAction$RemoteViewsTarget;->viewId:I

    if-eq v2, v3, :cond_4

    :goto_0
    move v0, v1

    :cond_3
    return v0

    :cond_4
    iget-object v2, p0, Lcom/squareup/picasso/RemoteViewsAction$RemoteViewsTarget;->remoteViews:Landroid/widget/RemoteViews;

    iget-object v3, p1, Lcom/squareup/picasso/RemoteViewsAction$RemoteViewsTarget;->remoteViews:Landroid/widget/RemoteViews;

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    goto :goto_0
.end method

.method public hashCode()I
    .locals 2

    .prologue
    .line 83
    iget-object v0, p0, Lcom/squareup/picasso/RemoteViewsAction$RemoteViewsTarget;->remoteViews:Landroid/widget/RemoteViews;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lcom/squareup/picasso/RemoteViewsAction$RemoteViewsTarget;->viewId:I

    add-int/2addr v0, v1

    return v0
.end method
