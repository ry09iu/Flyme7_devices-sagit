.class public Landroid/app/Notification$DecoratedMediaCustomViewStyle;
.super Landroid/app/Notification$MediaStyle;
.source "Notification.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/Notification;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "DecoratedMediaCustomViewStyle"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 5651
    invoke-direct {p0}, Landroid/app/Notification$MediaStyle;-><init>()V

    return-void
.end method

.method private buildIntoRemoteView(Landroid/widget/RemoteViews;ILandroid/widget/RemoteViews;)Landroid/widget/RemoteViews;
    .locals 0
    .param p1, "remoteViews"    # Landroid/widget/RemoteViews;
    .param p2, "id"    # I
    .param p3, "customContent"    # Landroid/widget/RemoteViews;

    .prologue
    .line 5709
    if-eqz p3, :cond_0

    .line 5712
    invoke-virtual {p3}, Landroid/widget/RemoteViews;->clone()Landroid/widget/RemoteViews;

    move-result-object p3

    .line 5713
    invoke-virtual {p1, p2}, Landroid/widget/RemoteViews;->removeAllViews(I)V

    .line 5714
    invoke-virtual {p1, p2, p3}, Landroid/widget/RemoteViews;->addView(ILandroid/widget/RemoteViews;)V

    .line 5716
    :cond_0
    return-object p1
.end method

.method private makeBigContentViewWithCustomContent(Landroid/widget/RemoteViews;)Landroid/widget/RemoteViews;
    .locals 3
    .param p1, "customRemoteView"    # Landroid/widget/RemoteViews;

    .prologue
    const/4 v2, 0x0

    .line 5683
    invoke-super {p0}, Landroid/app/Notification$MediaStyle;->makeBigContentView()Landroid/widget/RemoteViews;

    move-result-object v0

    .line 5684
    .local v0, "remoteViews":Landroid/widget/RemoteViews;
    if-eqz v0, :cond_0

    .line 5685
    const v1, 0x10203d8

    invoke-direct {p0, v0, v1, p1}, Landroid/app/Notification$DecoratedMediaCustomViewStyle;->buildIntoRemoteView(Landroid/widget/RemoteViews;ILandroid/widget/RemoteViews;)Landroid/widget/RemoteViews;

    move-result-object v1

    return-object v1

    .line 5687
    :cond_0
    iget-object v1, p0, Landroid/app/Notification$DecoratedMediaCustomViewStyle;->mBuilder:Landroid/app/Notification$Builder;

    invoke-static {v1}, Landroid/app/Notification$Builder;->-get2(Landroid/app/Notification$Builder;)Landroid/app/Notification;

    move-result-object v1

    iget-object v1, v1, Landroid/app/Notification;->contentView:Landroid/widget/RemoteViews;

    if-eq p1, v1, :cond_1

    .line 5688
    invoke-super {p0}, Landroid/app/Notification$MediaStyle;->makeContentView()Landroid/widget/RemoteViews;

    move-result-object v0

    .line 5689
    const v1, 0x10203dc

    invoke-direct {p0, v0, v1, p1}, Landroid/app/Notification$DecoratedMediaCustomViewStyle;->buildIntoRemoteView(Landroid/widget/RemoteViews;ILandroid/widget/RemoteViews;)Landroid/widget/RemoteViews;

    move-result-object v1

    return-object v1

    .line 5692
    :cond_1
    return-object v2
.end method


# virtual methods
.method public displayCustomViewInline()Z
    .locals 1

    .prologue
    .line 5658
    const/4 v0, 0x1

    return v0
.end method

.method public makeBigContentView()Landroid/widget/RemoteViews;
    .locals 2

    .prologue
    .line 5676
    iget-object v1, p0, Landroid/app/Notification$DecoratedMediaCustomViewStyle;->mBuilder:Landroid/app/Notification$Builder;

    invoke-static {v1}, Landroid/app/Notification$Builder;->-get2(Landroid/app/Notification$Builder;)Landroid/app/Notification;

    move-result-object v1

    iget-object v1, v1, Landroid/app/Notification;->bigContentView:Landroid/widget/RemoteViews;

    if-eqz v1, :cond_0

    .line 5677
    iget-object v1, p0, Landroid/app/Notification$DecoratedMediaCustomViewStyle;->mBuilder:Landroid/app/Notification$Builder;

    invoke-static {v1}, Landroid/app/Notification$Builder;->-get2(Landroid/app/Notification$Builder;)Landroid/app/Notification;

    move-result-object v1

    iget-object v0, v1, Landroid/app/Notification;->bigContentView:Landroid/widget/RemoteViews;

    .line 5679
    .local v0, "customRemoteView":Landroid/widget/RemoteViews;
    :goto_0
    invoke-direct {p0, v0}, Landroid/app/Notification$DecoratedMediaCustomViewStyle;->makeBigContentViewWithCustomContent(Landroid/widget/RemoteViews;)Landroid/widget/RemoteViews;

    move-result-object v1

    return-object v1

    .line 5678
    .end local v0    # "customRemoteView":Landroid/widget/RemoteViews;
    :cond_0
    iget-object v1, p0, Landroid/app/Notification$DecoratedMediaCustomViewStyle;->mBuilder:Landroid/app/Notification$Builder;

    invoke-static {v1}, Landroid/app/Notification$Builder;->-get2(Landroid/app/Notification$Builder;)Landroid/app/Notification;

    move-result-object v1

    iget-object v0, v1, Landroid/app/Notification;->contentView:Landroid/widget/RemoteViews;

    goto :goto_0
.end method

.method public makeContentView()Landroid/widget/RemoteViews;
    .locals 3

    .prologue
    .line 5666
    invoke-super {p0}, Landroid/app/Notification$MediaStyle;->makeContentView()Landroid/widget/RemoteViews;

    move-result-object v0

    .line 5668
    .local v0, "remoteViews":Landroid/widget/RemoteViews;
    iget-object v1, p0, Landroid/app/Notification$DecoratedMediaCustomViewStyle;->mBuilder:Landroid/app/Notification$Builder;

    invoke-static {v1}, Landroid/app/Notification$Builder;->-get2(Landroid/app/Notification$Builder;)Landroid/app/Notification;

    move-result-object v1

    iget-object v1, v1, Landroid/app/Notification;->contentView:Landroid/widget/RemoteViews;

    .line 5667
    const v2, 0x10203dc

    invoke-direct {p0, v0, v2, v1}, Landroid/app/Notification$DecoratedMediaCustomViewStyle;->buildIntoRemoteView(Landroid/widget/RemoteViews;ILandroid/widget/RemoteViews;)Landroid/widget/RemoteViews;

    move-result-object v1

    return-object v1
.end method

.method public makeHeadsUpContentView()Landroid/widget/RemoteViews;
    .locals 2

    .prologue
    .line 5701
    iget-object v1, p0, Landroid/app/Notification$DecoratedMediaCustomViewStyle;->mBuilder:Landroid/app/Notification$Builder;

    invoke-static {v1}, Landroid/app/Notification$Builder;->-get2(Landroid/app/Notification$Builder;)Landroid/app/Notification;

    move-result-object v1

    iget-object v1, v1, Landroid/app/Notification;->headsUpContentView:Landroid/widget/RemoteViews;

    if-eqz v1, :cond_0

    .line 5702
    iget-object v1, p0, Landroid/app/Notification$DecoratedMediaCustomViewStyle;->mBuilder:Landroid/app/Notification$Builder;

    invoke-static {v1}, Landroid/app/Notification$Builder;->-get2(Landroid/app/Notification$Builder;)Landroid/app/Notification;

    move-result-object v1

    iget-object v0, v1, Landroid/app/Notification;->headsUpContentView:Landroid/widget/RemoteViews;

    .line 5704
    .local v0, "customRemoteView":Landroid/widget/RemoteViews;
    :goto_0
    invoke-direct {p0, v0}, Landroid/app/Notification$DecoratedMediaCustomViewStyle;->makeBigContentViewWithCustomContent(Landroid/widget/RemoteViews;)Landroid/widget/RemoteViews;

    move-result-object v1

    return-object v1

    .line 5703
    .end local v0    # "customRemoteView":Landroid/widget/RemoteViews;
    :cond_0
    iget-object v1, p0, Landroid/app/Notification$DecoratedMediaCustomViewStyle;->mBuilder:Landroid/app/Notification$Builder;

    invoke-static {v1}, Landroid/app/Notification$Builder;->-get2(Landroid/app/Notification$Builder;)Landroid/app/Notification;

    move-result-object v1

    iget-object v0, v1, Landroid/app/Notification;->contentView:Landroid/widget/RemoteViews;

    goto :goto_0
.end method
