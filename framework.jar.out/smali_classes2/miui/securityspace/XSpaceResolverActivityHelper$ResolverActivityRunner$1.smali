.class Lmiui/securityspace/XSpaceResolverActivityHelper$ResolverActivityRunner$1;
.super Ljava/lang/Object;
.source "XSpaceResolverActivityHelper.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiui/securityspace/XSpaceResolverActivityHelper$ResolverActivityRunner;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lmiui/securityspace/XSpaceResolverActivityHelper$ResolverActivityRunner;


# direct methods
.method constructor <init>(Lmiui/securityspace/XSpaceResolverActivityHelper$ResolverActivityRunner;)V
    .locals 0
    .param p1, "this$1"    # Lmiui/securityspace/XSpaceResolverActivityHelper$ResolverActivityRunner;

    .prologue
    .line 83
    iput-object p1, p0, Lmiui/securityspace/XSpaceResolverActivityHelper$ResolverActivityRunner$1;->this$1:Lmiui/securityspace/XSpaceResolverActivityHelper$ResolverActivityRunner;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 86
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v1

    const v2, 0x110b0030

    if-ne v1, v2, :cond_0

    .line 87
    const/4 v0, 0x0

    .line 89
    .local v0, "aimUserId":I
    :goto_0
    iget-object v1, p0, Lmiui/securityspace/XSpaceResolverActivityHelper$ResolverActivityRunner$1;->this$1:Lmiui/securityspace/XSpaceResolverActivityHelper$ResolverActivityRunner;

    invoke-static {v1, v0}, Lmiui/securityspace/XSpaceResolverActivityHelper$ResolverActivityRunner;->-wrap0(Lmiui/securityspace/XSpaceResolverActivityHelper$ResolverActivityRunner;I)V

    .line 85
    return-void

    .line 88
    .end local v0    # "aimUserId":I
    :cond_0
    const/16 v0, 0x3e7

    .restart local v0    # "aimUserId":I
    goto :goto_0
.end method
