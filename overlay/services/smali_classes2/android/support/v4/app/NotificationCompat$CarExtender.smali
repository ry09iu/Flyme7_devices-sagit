.class public final Landroid/support/v4/app/NotificationCompat$CarExtender;
.super Ljava/lang/Object;
.source "NotificationCompat.java"

# interfaces
.implements Landroid/support/v4/app/NotificationCompat$Extender;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v4/app/NotificationCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "CarExtender"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/v4/app/NotificationCompat$CarExtender$UnreadConversation;
    }
.end annotation


# static fields
.field private static final EXTRA_CAR_EXTENDER:Ljava/lang/String; = "android.car.EXTENSIONS"

.field private static final EXTRA_COLOR:Ljava/lang/String; = "app_color"

.field private static final EXTRA_CONVERSATION:Ljava/lang/String; = "car_conversation"

.field private static final EXTRA_LARGE_ICON:Ljava/lang/String; = "large_icon"

.field private static final TAG:Ljava/lang/String; = "CarExtender"


# instance fields
.field private mColor:I

.field private mLargeIcon:Landroid/graphics/Bitmap;

.field private mUnreadConversation:Landroid/support/v4/app/NotificationCompat$CarExtender$UnreadConversation;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 3750
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3745
    const/4 v0, 0x0

    iput v0, p0, Landroid/support/v4/app/NotificationCompat$CarExtender;->mColor:I

    .line 3750
    return-void
.end method

.method public constructor <init>(Landroid/app/Notification;)V
    .locals 5
    .param p1, "notif"    # Landroid/app/Notification;

    .prologue
    const/4 v4, 0x0

    const/4 v1, 0x0

    .line 3758
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3745
    iput v4, p0, Landroid/support/v4/app/NotificationCompat$CarExtender;->mColor:I

    .line 3759
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x15

    if-ge v2, v3, :cond_0

    .line 3760
    return-void

    .line 3763
    :cond_0
    invoke-static {p1}, Landroid/support/v4/app/NotificationCompat;->getExtras(Landroid/app/Notification;)Landroid/os/Bundle;

    move-result-object v2

    if-nez v2, :cond_2

    .line 3765
    .local v1, "carBundle":Landroid/os/Bundle;
    :goto_0
    if-eqz v1, :cond_1

    .line 3766
    const-string/jumbo v2, "large_icon"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v2

    check-cast v2, Landroid/graphics/Bitmap;

    iput-object v2, p0, Landroid/support/v4/app/NotificationCompat$CarExtender;->mLargeIcon:Landroid/graphics/Bitmap;

    .line 3767
    const-string/jumbo v2, "app_color"

    invoke-virtual {v1, v2, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v2

    iput v2, p0, Landroid/support/v4/app/NotificationCompat$CarExtender;->mColor:I

    .line 3769
    const-string/jumbo v2, "car_conversation"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    .line 3770
    .local v0, "b":Landroid/os/Bundle;
    sget-object v2, Landroid/support/v4/app/NotificationCompat;->IMPL:Landroid/support/v4/app/NotificationCompat$NotificationCompatImpl;

    .line 3771
    sget-object v3, Landroid/support/v4/app/NotificationCompat$CarExtender$UnreadConversation;->FACTORY:Landroid/support/v4/app/NotificationCompatBase$UnreadConversation$Factory;

    sget-object v4, Landroid/support/v4/app/RemoteInput;->FACTORY:Landroid/support/v4/app/RemoteInputCompatBase$RemoteInput$Factory;

    .line 3770
    invoke-interface {v2, v0, v3, v4}, Landroid/support/v4/app/NotificationCompat$NotificationCompatImpl;->getUnreadConversationFromBundle(Landroid/os/Bundle;Landroid/support/v4/app/NotificationCompatBase$UnreadConversation$Factory;Landroid/support/v4/app/RemoteInputCompatBase$RemoteInput$Factory;)Landroid/support/v4/app/NotificationCompatBase$UnreadConversation;

    move-result-object v2

    check-cast v2, Landroid/support/v4/app/NotificationCompat$CarExtender$UnreadConversation;

    iput-object v2, p0, Landroid/support/v4/app/NotificationCompat$CarExtender;->mUnreadConversation:Landroid/support/v4/app/NotificationCompat$CarExtender$UnreadConversation;

    .line 3758
    .end local v0    # "b":Landroid/os/Bundle;
    :cond_1
    return-void

    .line 3764
    .end local v1    # "carBundle":Landroid/os/Bundle;
    :cond_2
    invoke-static {p1}, Landroid/support/v4/app/NotificationCompat;->getExtras(Landroid/app/Notification;)Landroid/os/Bundle;

    move-result-object v2

    const-string/jumbo v3, "android.car.EXTENSIONS"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v1

    goto :goto_0
.end method


# virtual methods
.method public extend(Landroid/support/v4/app/NotificationCompat$Builder;)Landroid/support/v4/app/NotificationCompat$Builder;
    .locals 4
    .param p1, "builder"    # Landroid/support/v4/app/NotificationCompat$Builder;

    .prologue
    .line 3782
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x15

    if-ge v2, v3, :cond_0

    .line 3783
    return-object p1

    .line 3786
    :cond_0
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 3788
    .local v1, "carExtensions":Landroid/os/Bundle;
    iget-object v2, p0, Landroid/support/v4/app/NotificationCompat$CarExtender;->mLargeIcon:Landroid/graphics/Bitmap;

    if-eqz v2, :cond_1

    .line 3789
    const-string/jumbo v2, "large_icon"

    iget-object v3, p0, Landroid/support/v4/app/NotificationCompat$CarExtender;->mLargeIcon:Landroid/graphics/Bitmap;

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 3791
    :cond_1
    iget v2, p0, Landroid/support/v4/app/NotificationCompat$CarExtender;->mColor:I

    if-eqz v2, :cond_2

    .line 3792
    const-string/jumbo v2, "app_color"

    iget v3, p0, Landroid/support/v4/app/NotificationCompat$CarExtender;->mColor:I

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 3795
    :cond_2
    iget-object v2, p0, Landroid/support/v4/app/NotificationCompat$CarExtender;->mUnreadConversation:Landroid/support/v4/app/NotificationCompat$CarExtender$UnreadConversation;

    if-eqz v2, :cond_3

    .line 3796
    sget-object v2, Landroid/support/v4/app/NotificationCompat;->IMPL:Landroid/support/v4/app/NotificationCompat$NotificationCompatImpl;

    iget-object v3, p0, Landroid/support/v4/app/NotificationCompat$CarExtender;->mUnreadConversation:Landroid/support/v4/app/NotificationCompat$CarExtender$UnreadConversation;

    invoke-interface {v2, v3}, Landroid/support/v4/app/NotificationCompat$NotificationCompatImpl;->getBundleForUnreadConversation(Landroid/support/v4/app/NotificationCompatBase$UnreadConversation;)Landroid/os/Bundle;

    move-result-object v0

    .line 3797
    .local v0, "b":Landroid/os/Bundle;
    const-string/jumbo v2, "car_conversation"

    invoke-virtual {v1, v2, v0}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 3800
    .end local v0    # "b":Landroid/os/Bundle;
    :cond_3
    invoke-virtual {p1}, Landroid/support/v4/app/NotificationCompat$Builder;->getExtras()Landroid/os/Bundle;

    move-result-object v2

    const-string/jumbo v3, "android.car.EXTENSIONS"

    invoke-virtual {v2, v3, v1}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 3801
    return-object p1
.end method

.method public getColor()I
    .locals 1
    .annotation build Landroid/support/annotation/ColorInt;
    .end annotation

    .prologue
    .line 3824
    iget v0, p0, Landroid/support/v4/app/NotificationCompat$CarExtender;->mColor:I

    return v0
.end method

.method public getLargeIcon()Landroid/graphics/Bitmap;
    .locals 1

    .prologue
    .line 3848
    iget-object v0, p0, Landroid/support/v4/app/NotificationCompat$CarExtender;->mLargeIcon:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method public getUnreadConversation()Landroid/support/v4/app/NotificationCompat$CarExtender$UnreadConversation;
    .locals 1

    .prologue
    .line 3867
    iget-object v0, p0, Landroid/support/v4/app/NotificationCompat$CarExtender;->mUnreadConversation:Landroid/support/v4/app/NotificationCompat$CarExtender$UnreadConversation;

    return-object v0
.end method

.method public setColor(I)Landroid/support/v4/app/NotificationCompat$CarExtender;
    .locals 0
    .param p1, "color"    # I
        .annotation build Landroid/support/annotation/ColorInt;
        .end annotation
    .end param

    .prologue
    .line 3813
    iput p1, p0, Landroid/support/v4/app/NotificationCompat$CarExtender;->mColor:I

    .line 3814
    return-object p0
.end method

.method public setLargeIcon(Landroid/graphics/Bitmap;)Landroid/support/v4/app/NotificationCompat$CarExtender;
    .locals 0
    .param p1, "largeIcon"    # Landroid/graphics/Bitmap;

    .prologue
    .line 3837
    iput-object p1, p0, Landroid/support/v4/app/NotificationCompat$CarExtender;->mLargeIcon:Landroid/graphics/Bitmap;

    .line 3838
    return-object p0
.end method

.method public setUnreadConversation(Landroid/support/v4/app/NotificationCompat$CarExtender$UnreadConversation;)Landroid/support/v4/app/NotificationCompat$CarExtender;
    .locals 0
    .param p1, "unreadConversation"    # Landroid/support/v4/app/NotificationCompat$CarExtender$UnreadConversation;

    .prologue
    .line 3858
    iput-object p1, p0, Landroid/support/v4/app/NotificationCompat$CarExtender;->mUnreadConversation:Landroid/support/v4/app/NotificationCompat$CarExtender$UnreadConversation;

    .line 3859
    return-object p0
.end method
