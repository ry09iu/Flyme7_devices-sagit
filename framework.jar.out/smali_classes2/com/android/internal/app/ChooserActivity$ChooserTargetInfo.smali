.class final Lcom/android/internal/app/ChooserActivity$ChooserTargetInfo;
.super Ljava/lang/Object;
.source "ChooserActivity.java"

# interfaces
.implements Lcom/android/internal/app/ResolverActivity$TargetInfo;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/app/ChooserActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "ChooserTargetInfo"
.end annotation


# instance fields
.field private final mBackupResolveInfo:Landroid/content/pm/ResolveInfo;

.field private mBadgeContentDescription:Ljava/lang/CharSequence;

.field private mBadgeIcon:Landroid/graphics/drawable/Drawable;

.field private final mChooserTarget:Landroid/service/chooser/ChooserTarget;

.field private mDisplayIcon:Landroid/graphics/drawable/Drawable;

.field private final mFillInFlags:I

.field private final mFillInIntent:Landroid/content/Intent;

.field private final mModifiedScore:F

.field private final mSourceInfo:Lcom/android/internal/app/ResolverActivity$DisplayResolveInfo;

.field final synthetic this$0:Lcom/android/internal/app/ChooserActivity;


# direct methods
.method private constructor <init>(Lcom/android/internal/app/ChooserActivity;Lcom/android/internal/app/ChooserActivity$ChooserTargetInfo;Landroid/content/Intent;I)V
    .locals 1
    .param p1, "this$0"    # Lcom/android/internal/app/ChooserActivity;
    .param p2, "other"    # Lcom/android/internal/app/ChooserActivity$ChooserTargetInfo;
    .param p3, "fillInIntent"    # Landroid/content/Intent;
    .param p4, "flags"    # I

    .prologue
    .line 650
    iput-object p1, p0, Lcom/android/internal/app/ChooserActivity$ChooserTargetInfo;->this$0:Lcom/android/internal/app/ChooserActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 613
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/internal/app/ChooserActivity$ChooserTargetInfo;->mBadgeIcon:Landroid/graphics/drawable/Drawable;

    .line 651
    iget-object v0, p2, Lcom/android/internal/app/ChooserActivity$ChooserTargetInfo;->mSourceInfo:Lcom/android/internal/app/ResolverActivity$DisplayResolveInfo;

    iput-object v0, p0, Lcom/android/internal/app/ChooserActivity$ChooserTargetInfo;->mSourceInfo:Lcom/android/internal/app/ResolverActivity$DisplayResolveInfo;

    .line 652
    iget-object v0, p2, Lcom/android/internal/app/ChooserActivity$ChooserTargetInfo;->mBackupResolveInfo:Landroid/content/pm/ResolveInfo;

    iput-object v0, p0, Lcom/android/internal/app/ChooserActivity$ChooserTargetInfo;->mBackupResolveInfo:Landroid/content/pm/ResolveInfo;

    .line 653
    iget-object v0, p2, Lcom/android/internal/app/ChooserActivity$ChooserTargetInfo;->mChooserTarget:Landroid/service/chooser/ChooserTarget;

    iput-object v0, p0, Lcom/android/internal/app/ChooserActivity$ChooserTargetInfo;->mChooserTarget:Landroid/service/chooser/ChooserTarget;

    .line 654
    iget-object v0, p2, Lcom/android/internal/app/ChooserActivity$ChooserTargetInfo;->mBadgeIcon:Landroid/graphics/drawable/Drawable;

    iput-object v0, p0, Lcom/android/internal/app/ChooserActivity$ChooserTargetInfo;->mBadgeIcon:Landroid/graphics/drawable/Drawable;

    .line 655
    iget-object v0, p2, Lcom/android/internal/app/ChooserActivity$ChooserTargetInfo;->mBadgeContentDescription:Ljava/lang/CharSequence;

    iput-object v0, p0, Lcom/android/internal/app/ChooserActivity$ChooserTargetInfo;->mBadgeContentDescription:Ljava/lang/CharSequence;

    .line 656
    iget-object v0, p2, Lcom/android/internal/app/ChooserActivity$ChooserTargetInfo;->mDisplayIcon:Landroid/graphics/drawable/Drawable;

    iput-object v0, p0, Lcom/android/internal/app/ChooserActivity$ChooserTargetInfo;->mDisplayIcon:Landroid/graphics/drawable/Drawable;

    .line 657
    iput-object p3, p0, Lcom/android/internal/app/ChooserActivity$ChooserTargetInfo;->mFillInIntent:Landroid/content/Intent;

    .line 658
    iput p4, p0, Lcom/android/internal/app/ChooserActivity$ChooserTargetInfo;->mFillInFlags:I

    .line 659
    iget v0, p2, Lcom/android/internal/app/ChooserActivity$ChooserTargetInfo;->mModifiedScore:F

    iput v0, p0, Lcom/android/internal/app/ChooserActivity$ChooserTargetInfo;->mModifiedScore:F

    .line 650
    return-void
.end method

.method public constructor <init>(Lcom/android/internal/app/ChooserActivity;Lcom/android/internal/app/ResolverActivity$DisplayResolveInfo;Landroid/service/chooser/ChooserTarget;F)V
    .locals 8
    .param p1, "this$0"    # Lcom/android/internal/app/ChooserActivity;
    .param p2, "sourceInfo"    # Lcom/android/internal/app/ResolverActivity$DisplayResolveInfo;
    .param p3, "chooserTarget"    # Landroid/service/chooser/ChooserTarget;
    .param p4, "modifiedScore"    # F

    .prologue
    const/4 v7, 0x0

    const/4 v5, 0x0

    .line 620
    iput-object p1, p0, Lcom/android/internal/app/ChooserActivity$ChooserTargetInfo;->this$0:Lcom/android/internal/app/ChooserActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 613
    iput-object v5, p0, Lcom/android/internal/app/ChooserActivity$ChooserTargetInfo;->mBadgeIcon:Landroid/graphics/drawable/Drawable;

    .line 622
    iput-object p2, p0, Lcom/android/internal/app/ChooserActivity$ChooserTargetInfo;->mSourceInfo:Lcom/android/internal/app/ResolverActivity$DisplayResolveInfo;

    .line 623
    iput-object p3, p0, Lcom/android/internal/app/ChooserActivity$ChooserTargetInfo;->mChooserTarget:Landroid/service/chooser/ChooserTarget;

    .line 624
    iput p4, p0, Lcom/android/internal/app/ChooserActivity$ChooserTargetInfo;->mModifiedScore:F

    .line 625
    if-eqz p2, :cond_0

    .line 626
    invoke-virtual {p2}, Lcom/android/internal/app/ResolverActivity$DisplayResolveInfo;->getResolveInfo()Landroid/content/pm/ResolveInfo;

    move-result-object v3

    .line 627
    .local v3, "ri":Landroid/content/pm/ResolveInfo;
    if-eqz v3, :cond_0

    .line 628
    iget-object v0, v3, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    .line 629
    .local v0, "ai":Landroid/content/pm/ActivityInfo;
    if-eqz v0, :cond_0

    iget-object v4, v0, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    if-eqz v4, :cond_0

    .line 630
    invoke-virtual {p1}, Lcom/android/internal/app/ChooserActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    .line 631
    .local v2, "pm":Landroid/content/pm/PackageManager;
    iget-object v4, v0, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {v2, v4}, Landroid/content/pm/PackageManager;->getApplicationIcon(Landroid/content/pm/ApplicationInfo;)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    iput-object v4, p0, Lcom/android/internal/app/ChooserActivity$ChooserTargetInfo;->mBadgeIcon:Landroid/graphics/drawable/Drawable;

    .line 632
    iget-object v4, v0, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {v2, v4}, Landroid/content/pm/PackageManager;->getApplicationLabel(Landroid/content/pm/ApplicationInfo;)Ljava/lang/CharSequence;

    move-result-object v4

    iput-object v4, p0, Lcom/android/internal/app/ChooserActivity$ChooserTargetInfo;->mBadgeContentDescription:Ljava/lang/CharSequence;

    .line 636
    .end local v0    # "ai":Landroid/content/pm/ActivityInfo;
    .end local v2    # "pm":Landroid/content/pm/PackageManager;
    .end local v3    # "ri":Landroid/content/pm/ResolveInfo;
    :cond_0
    invoke-virtual {p3}, Landroid/service/chooser/ChooserTarget;->getIcon()Landroid/graphics/drawable/Icon;

    move-result-object v1

    .line 638
    .local v1, "icon":Landroid/graphics/drawable/Icon;
    if-eqz v1, :cond_1

    invoke-virtual {v1, p1}, Landroid/graphics/drawable/Icon;->loadDrawable(Landroid/content/Context;)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    :goto_0
    iput-object v4, p0, Lcom/android/internal/app/ChooserActivity$ChooserTargetInfo;->mDisplayIcon:Landroid/graphics/drawable/Drawable;

    .line 640
    if-eqz p2, :cond_2

    .line 641
    iput-object v5, p0, Lcom/android/internal/app/ChooserActivity$ChooserTargetInfo;->mBackupResolveInfo:Landroid/content/pm/ResolveInfo;

    .line 646
    :goto_1
    iput-object v5, p0, Lcom/android/internal/app/ChooserActivity$ChooserTargetInfo;->mFillInIntent:Landroid/content/Intent;

    .line 647
    iput v7, p0, Lcom/android/internal/app/ChooserActivity$ChooserTargetInfo;->mFillInFlags:I

    .line 621
    return-void

    :cond_1
    move-object v4, v5

    .line 638
    goto :goto_0

    .line 643
    :cond_2
    invoke-virtual {p1}, Lcom/android/internal/app/ChooserActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    invoke-virtual {p0}, Lcom/android/internal/app/ChooserActivity$ChooserTargetInfo;->getResolvedIntent()Landroid/content/Intent;

    move-result-object v6

    invoke-virtual {v4, v6, v7}, Landroid/content/pm/PackageManager;->resolveActivity(Landroid/content/Intent;I)Landroid/content/pm/ResolveInfo;

    move-result-object v4

    iput-object v4, p0, Lcom/android/internal/app/ChooserActivity$ChooserTargetInfo;->mBackupResolveInfo:Landroid/content/pm/ResolveInfo;

    goto :goto_1
.end method

.method private getBaseIntentToSend()Landroid/content/Intent;
    .locals 4

    .prologue
    .line 690
    invoke-virtual {p0}, Lcom/android/internal/app/ChooserActivity$ChooserTargetInfo;->getResolvedIntent()Landroid/content/Intent;

    move-result-object v0

    .line 691
    .local v0, "result":Landroid/content/Intent;
    if-nez v0, :cond_0

    .line 692
    const-string/jumbo v2, "ChooserActivity"

    const-string/jumbo v3, "ChooserTargetInfo: no base intent available to send"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 700
    :goto_0
    return-object v0

    .line 694
    :cond_0
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1, v0}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    .line 695
    .end local v0    # "result":Landroid/content/Intent;
    .local v1, "result":Landroid/content/Intent;
    iget-object v2, p0, Lcom/android/internal/app/ChooserActivity$ChooserTargetInfo;->mFillInIntent:Landroid/content/Intent;

    if-eqz v2, :cond_1

    .line 696
    iget-object v2, p0, Lcom/android/internal/app/ChooserActivity$ChooserTargetInfo;->mFillInIntent:Landroid/content/Intent;

    iget v3, p0, Lcom/android/internal/app/ChooserActivity$ChooserTargetInfo;->mFillInFlags:I

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->fillIn(Landroid/content/Intent;I)I

    .line 698
    :cond_1
    iget-object v2, p0, Lcom/android/internal/app/ChooserActivity$ChooserTargetInfo;->this$0:Lcom/android/internal/app/ChooserActivity;

    invoke-static {v2}, Lcom/android/internal/app/ChooserActivity;->-get4(Lcom/android/internal/app/ChooserActivity;)Landroid/content/Intent;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->fillIn(Landroid/content/Intent;I)I

    move-object v0, v1

    .end local v1    # "result":Landroid/content/Intent;
    .restart local v0    # "result":Landroid/content/Intent;
    goto :goto_0
.end method


# virtual methods
.method public cloneFilledIn(Landroid/content/Intent;I)Lcom/android/internal/app/ResolverActivity$TargetInfo;
    .locals 2
    .param p1, "fillInIntent"    # Landroid/content/Intent;
    .param p2, "flags"    # I

    .prologue
    .line 770
    new-instance v0, Lcom/android/internal/app/ChooserActivity$ChooserTargetInfo;

    iget-object v1, p0, Lcom/android/internal/app/ChooserActivity$ChooserTargetInfo;->this$0:Lcom/android/internal/app/ChooserActivity;

    invoke-direct {v0, v1, p0, p1, p2}, Lcom/android/internal/app/ChooserActivity$ChooserTargetInfo;-><init>(Lcom/android/internal/app/ChooserActivity;Lcom/android/internal/app/ChooserActivity$ChooserTargetInfo;Landroid/content/Intent;I)V

    return-object v0
.end method

.method public getAllSourceIntents()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Landroid/content/Intent;",
            ">;"
        }
    .end annotation

    .prologue
    .line 775
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 776
    .local v0, "results":Ljava/util/List;, "Ljava/util/List<Landroid/content/Intent;>;"
    iget-object v1, p0, Lcom/android/internal/app/ChooserActivity$ChooserTargetInfo;->mSourceInfo:Lcom/android/internal/app/ResolverActivity$DisplayResolveInfo;

    if-eqz v1, :cond_0

    .line 778
    iget-object v1, p0, Lcom/android/internal/app/ChooserActivity$ChooserTargetInfo;->mSourceInfo:Lcom/android/internal/app/ResolverActivity$DisplayResolveInfo;

    invoke-virtual {v1}, Lcom/android/internal/app/ResolverActivity$DisplayResolveInfo;->getAllSourceIntents()Ljava/util/List;

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/Intent;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 780
    :cond_0
    return-object v0
.end method

.method public getBadgeContentDescription()Ljava/lang/CharSequence;
    .locals 1

    .prologue
    .line 765
    iget-object v0, p0, Lcom/android/internal/app/ChooserActivity$ChooserTargetInfo;->mBadgeContentDescription:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public getBadgeIcon()Landroid/graphics/drawable/Drawable;
    .locals 1

    .prologue
    .line 760
    iget-object v0, p0, Lcom/android/internal/app/ChooserActivity$ChooserTargetInfo;->mBadgeIcon:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public getDisplayIcon()Landroid/graphics/drawable/Drawable;
    .locals 1

    .prologue
    .line 755
    iget-object v0, p0, Lcom/android/internal/app/ChooserActivity$ChooserTargetInfo;->mDisplayIcon:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public getDisplayLabel()Ljava/lang/CharSequence;
    .locals 1

    .prologue
    .line 744
    iget-object v0, p0, Lcom/android/internal/app/ChooserActivity$ChooserTargetInfo;->mChooserTarget:Landroid/service/chooser/ChooserTarget;

    invoke-virtual {v0}, Landroid/service/chooser/ChooserTarget;->getTitle()Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method public getExtendedInfo()Ljava/lang/CharSequence;
    .locals 1

    .prologue
    .line 750
    const/4 v0, 0x0

    return-object v0
.end method

.method public getModifiedScore()F
    .locals 1

    .prologue
    .line 663
    iget v0, p0, Lcom/android/internal/app/ChooserActivity$ChooserTargetInfo;->mModifiedScore:F

    return v0
.end method

.method public getResolveInfo()Landroid/content/pm/ResolveInfo;
    .locals 1

    .prologue
    .line 739
    iget-object v0, p0, Lcom/android/internal/app/ChooserActivity$ChooserTargetInfo;->mSourceInfo:Lcom/android/internal/app/ResolverActivity$DisplayResolveInfo;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/app/ChooserActivity$ChooserTargetInfo;->mSourceInfo:Lcom/android/internal/app/ResolverActivity$DisplayResolveInfo;

    invoke-virtual {v0}, Lcom/android/internal/app/ResolverActivity$DisplayResolveInfo;->getResolveInfo()Landroid/content/pm/ResolveInfo;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/android/internal/app/ChooserActivity$ChooserTargetInfo;->mBackupResolveInfo:Landroid/content/pm/ResolveInfo;

    goto :goto_0
.end method

.method public getResolvedComponentName()Landroid/content/ComponentName;
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 680
    iget-object v0, p0, Lcom/android/internal/app/ChooserActivity$ChooserTargetInfo;->mSourceInfo:Lcom/android/internal/app/ResolverActivity$DisplayResolveInfo;

    if-eqz v0, :cond_0

    .line 681
    iget-object v0, p0, Lcom/android/internal/app/ChooserActivity$ChooserTargetInfo;->mSourceInfo:Lcom/android/internal/app/ResolverActivity$DisplayResolveInfo;

    invoke-virtual {v0}, Lcom/android/internal/app/ResolverActivity$DisplayResolveInfo;->getResolvedComponentName()Landroid/content/ComponentName;

    move-result-object v0

    return-object v0

    .line 682
    :cond_0
    iget-object v0, p0, Lcom/android/internal/app/ChooserActivity$ChooserTargetInfo;->mBackupResolveInfo:Landroid/content/pm/ResolveInfo;

    if-eqz v0, :cond_1

    .line 683
    new-instance v0, Landroid/content/ComponentName;

    iget-object v1, p0, Lcom/android/internal/app/ChooserActivity$ChooserTargetInfo;->mBackupResolveInfo:Landroid/content/pm/ResolveInfo;

    iget-object v1, v1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v1, v1, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    .line 684
    iget-object v2, p0, Lcom/android/internal/app/ChooserActivity$ChooserTargetInfo;->mBackupResolveInfo:Landroid/content/pm/ResolveInfo;

    iget-object v2, v2, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v2, v2, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    .line 683
    invoke-direct {v0, v1, v2}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0

    .line 686
    :cond_1
    return-object v1
.end method

.method public getResolvedIntent()Landroid/content/Intent;
    .locals 2

    .prologue
    .line 668
    iget-object v1, p0, Lcom/android/internal/app/ChooserActivity$ChooserTargetInfo;->mSourceInfo:Lcom/android/internal/app/ResolverActivity$DisplayResolveInfo;

    if-eqz v1, :cond_0

    .line 669
    iget-object v1, p0, Lcom/android/internal/app/ChooserActivity$ChooserTargetInfo;->mSourceInfo:Lcom/android/internal/app/ResolverActivity$DisplayResolveInfo;

    invoke-virtual {v1}, Lcom/android/internal/app/ResolverActivity$DisplayResolveInfo;->getResolvedIntent()Landroid/content/Intent;

    move-result-object v1

    return-object v1

    .line 672
    :cond_0
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/android/internal/app/ChooserActivity$ChooserTargetInfo;->this$0:Lcom/android/internal/app/ChooserActivity;

    invoke-virtual {v1}, Lcom/android/internal/app/ChooserActivity;->getTargetIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    .line 673
    .local v0, "targetIntent":Landroid/content/Intent;
    iget-object v1, p0, Lcom/android/internal/app/ChooserActivity$ChooserTargetInfo;->mChooserTarget:Landroid/service/chooser/ChooserTarget;

    invoke-virtual {v1}, Landroid/service/chooser/ChooserTarget;->getComponentName()Landroid/content/ComponentName;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 674
    iget-object v1, p0, Lcom/android/internal/app/ChooserActivity$ChooserTargetInfo;->mChooserTarget:Landroid/service/chooser/ChooserTarget;

    invoke-virtual {v1}, Landroid/service/chooser/ChooserTarget;->getIntentExtras()Landroid/os/Bundle;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 675
    return-object v0
.end method

.method public isPinned()Z
    .locals 1

    .prologue
    .line 785
    iget-object v0, p0, Lcom/android/internal/app/ChooserActivity$ChooserTargetInfo;->mSourceInfo:Lcom/android/internal/app/ResolverActivity$DisplayResolveInfo;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/app/ChooserActivity$ChooserTargetInfo;->mSourceInfo:Lcom/android/internal/app/ResolverActivity$DisplayResolveInfo;

    invoke-virtual {v0}, Lcom/android/internal/app/ResolverActivity$DisplayResolveInfo;->isPinned()Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public start(Landroid/app/Activity;Landroid/os/Bundle;)Z
    .locals 2
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "options"    # Landroid/os/Bundle;

    .prologue
    .line 705
    new-instance v0, Ljava/lang/RuntimeException;

    const-string/jumbo v1, "ChooserTargets should be started as caller."

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public startAsCaller(Landroid/app/Activity;Landroid/os/Bundle;I)Z
    .locals 4
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "options"    # Landroid/os/Bundle;
    .param p3, "userId"    # I

    .prologue
    const/4 v0, 0x0

    .line 710
    invoke-direct {p0}, Lcom/android/internal/app/ChooserActivity$ChooserTargetInfo;->getBaseIntentToSend()Landroid/content/Intent;

    move-result-object v1

    .line 711
    .local v1, "intent":Landroid/content/Intent;
    if-nez v1, :cond_0

    .line 712
    return v0

    .line 714
    :cond_0
    iget-object v2, p0, Lcom/android/internal/app/ChooserActivity$ChooserTargetInfo;->mChooserTarget:Landroid/service/chooser/ChooserTarget;

    invoke-virtual {v2}, Landroid/service/chooser/ChooserTarget;->getComponentName()Landroid/content/ComponentName;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 715
    iget-object v2, p0, Lcom/android/internal/app/ChooserActivity$ChooserTargetInfo;->mChooserTarget:Landroid/service/chooser/ChooserTarget;

    invoke-virtual {v2}, Landroid/service/chooser/ChooserTarget;->getIntentExtras()Landroid/os/Bundle;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 725
    iget-object v2, p0, Lcom/android/internal/app/ChooserActivity$ChooserTargetInfo;->mSourceInfo:Lcom/android/internal/app/ResolverActivity$DisplayResolveInfo;

    if-eqz v2, :cond_1

    .line 726
    iget-object v2, p0, Lcom/android/internal/app/ChooserActivity$ChooserTargetInfo;->mSourceInfo:Lcom/android/internal/app/ResolverActivity$DisplayResolveInfo;

    invoke-virtual {v2}, Lcom/android/internal/app/ResolverActivity$DisplayResolveInfo;->getResolvedComponentName()Landroid/content/ComponentName;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v2

    .line 727
    iget-object v3, p0, Lcom/android/internal/app/ChooserActivity$ChooserTargetInfo;->mChooserTarget:Landroid/service/chooser/ChooserTarget;

    invoke-virtual {v3}, Landroid/service/chooser/ChooserTarget;->getComponentName()Landroid/content/ComponentName;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v3

    .line 726
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 728
    .local v0, "ignoreTargetSecurity":Z
    :cond_1
    invoke-virtual {p1, v1, p2, v0, p3}, Landroid/app/Activity;->startActivityAsCaller(Landroid/content/Intent;Landroid/os/Bundle;ZI)V

    .line 729
    const/4 v2, 0x1

    return v2
.end method

.method public startAsUser(Landroid/app/Activity;Landroid/os/Bundle;Landroid/os/UserHandle;)Z
    .locals 2
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "options"    # Landroid/os/Bundle;
    .param p3, "user"    # Landroid/os/UserHandle;

    .prologue
    .line 734
    new-instance v0, Ljava/lang/RuntimeException;

    const-string/jumbo v1, "ChooserTargets should be started as caller."

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
