.class final Landroid/preference/FlymePreferenceScreenInjector$FlymeDividerPadding;
.super Ljava/lang/Object;
.source "PreferenceScreen.java"

# interfaces
.implements Landroid/widget/ListView$DividerPadding;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/preference/FlymePreferenceScreenInjector;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "FlymeDividerPadding"
.end annotation


# instance fields
.field private mPreferenceScreen:Landroid/preference/PreferenceScreen;


# direct methods
.method constructor <init>(Landroid/preference/PreferenceScreen;)V
    .locals 0
    .param p1, "preferenceScreen"    # Landroid/preference/PreferenceScreen;

    .prologue
    .line 392
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 393
    iput-object p1, p0, Landroid/preference/FlymePreferenceScreenInjector$FlymeDividerPadding;->mPreferenceScreen:Landroid/preference/PreferenceScreen;

    .line 392
    return-void
.end method


# virtual methods
.method public getDividerPadding(I)[I
    .locals 10
    .param p1, "position"    # I

    .prologue
    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 398
    const/4 v7, 0x2

    new-array v1, v7, [I

    .line 399
    .local v1, "padding":[I
    aput v8, v1, v9

    aput v8, v1, v8

    .line 400
    iget-object v7, p0, Landroid/preference/FlymePreferenceScreenInjector$FlymeDividerPadding;->mPreferenceScreen:Landroid/preference/PreferenceScreen;

    invoke-virtual {v7}, Landroid/preference/PreferenceScreen;->flymeGetFieldRootAdapter()Landroid/widget/ListAdapter;

    move-result-object v5

    .line 401
    .local v5, "rootAdapter":Landroid/widget/ListAdapter;
    if-eqz v5, :cond_0

    .line 404
    invoke-interface {v5}, Landroid/widget/ListAdapter;->getCount()I

    move-result v6

    .line 405
    .local v6, "size":I
    if-ltz p1, :cond_0

    if-ge p1, v6, :cond_0

    .line 406
    instance-of v7, v5, Landroid/preference/PreferenceGroupAdapter;

    .line 405
    if-eqz v7, :cond_0

    move-object v0, v5

    .line 407
    check-cast v0, Landroid/preference/PreferenceGroupAdapter;

    .line 408
    .local v0, "adapter":Landroid/preference/PreferenceGroupAdapter;
    invoke-virtual {v0, p1}, Landroid/preference/PreferenceGroupAdapter;->getItem(I)Landroid/preference/Preference;

    move-result-object v4

    .line 409
    .local v4, "preference":Landroid/preference/Preference;
    if-eqz v4, :cond_0

    .line 410
    invoke-virtual {v4}, Landroid/preference/Preference;->getIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v7

    if-nez v7, :cond_1

    .line 411
    sget v2, Lcom/flyme/internal/R$dimen;->mz_preference_divider_padding_left:I

    .line 412
    .local v2, "paddingLeftId":I
    sget v3, Lcom/flyme/internal/R$dimen;->mz_preference_divider_padding_right:I

    .line 417
    .local v3, "paddingRightId":I
    :goto_0
    iget-object v7, p0, Landroid/preference/FlymePreferenceScreenInjector$FlymeDividerPadding;->mPreferenceScreen:Landroid/preference/PreferenceScreen;

    invoke-virtual {v7}, Landroid/preference/PreferenceScreen;->getContext()Landroid/content/Context;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    invoke-virtual {v7, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v7

    aput v7, v1, v8

    .line 418
    iget-object v7, p0, Landroid/preference/FlymePreferenceScreenInjector$FlymeDividerPadding;->mPreferenceScreen:Landroid/preference/PreferenceScreen;

    invoke-virtual {v7}, Landroid/preference/PreferenceScreen;->getContext()Landroid/content/Context;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    invoke-virtual {v7, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v7

    aput v7, v1, v9

    .line 422
    .end local v0    # "adapter":Landroid/preference/PreferenceGroupAdapter;
    .end local v2    # "paddingLeftId":I
    .end local v3    # "paddingRightId":I
    .end local v4    # "preference":Landroid/preference/Preference;
    .end local v6    # "size":I
    :cond_0
    return-object v1

    .line 414
    .restart local v0    # "adapter":Landroid/preference/PreferenceGroupAdapter;
    .restart local v4    # "preference":Landroid/preference/Preference;
    .restart local v6    # "size":I
    :cond_1
    sget v2, Lcom/flyme/internal/R$dimen;->mz_preference_divider_padding_left_icon:I

    .line 415
    .restart local v2    # "paddingLeftId":I
    sget v3, Lcom/flyme/internal/R$dimen;->mz_preference_divider_padding_right_icon:I

    .restart local v3    # "paddingRightId":I
    goto :goto_0
.end method
