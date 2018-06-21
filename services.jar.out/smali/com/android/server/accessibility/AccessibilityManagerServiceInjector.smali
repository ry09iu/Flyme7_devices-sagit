.class Lcom/android/server/accessibility/AccessibilityManagerServiceInjector;
.super Ljava/lang/Object;
.source "AccessibilityManagerServiceInjector.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/accessibility/AccessibilityManagerServiceInjector$1;
    }
.end annotation


# static fields
.field private static mContentResolver:Landroid/content/ContentResolver;

.field private static mExceptedPakcages:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static mObserver:Landroid/database/ContentObserver;


# direct methods
.method static synthetic -wrap0()V
    .locals 0

    invoke-static {}, Lcom/android/server/accessibility/AccessibilityManagerServiceInjector;->onChanged()V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 16
    new-instance v0, Lcom/android/server/accessibility/AccessibilityManagerServiceInjector$1;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/server/accessibility/AccessibilityManagerServiceInjector$1;-><init>(Landroid/os/Handler;)V

    sput-object v0, Lcom/android/server/accessibility/AccessibilityManagerServiceInjector;->mObserver:Landroid/database/ContentObserver;

    .line 10
    return-void
.end method

.method constructor <init>()V
    .locals 0

    .prologue
    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static destroy()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 35
    sget-object v0, Lcom/android/server/accessibility/AccessibilityManagerServiceInjector;->mContentResolver:Landroid/content/ContentResolver;

    if-eqz v0, :cond_0

    .line 36
    sget-object v0, Lcom/android/server/accessibility/AccessibilityManagerServiceInjector;->mContentResolver:Landroid/content/ContentResolver;

    sget-object v1, Lcom/android/server/accessibility/AccessibilityManagerServiceInjector;->mObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 37
    sput-object v2, Lcom/android/server/accessibility/AccessibilityManagerServiceInjector;->mContentResolver:Landroid/content/ContentResolver;

    .line 34
    :cond_0
    return-void
.end method

.method public static init(Landroid/content/ContentResolver;)V
    .locals 4
    .param p0, "contentResolver"    # Landroid/content/ContentResolver;

    .prologue
    .line 24
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/android/server/accessibility/AccessibilityManagerServiceInjector;->mExceptedPakcages:Ljava/util/ArrayList;

    .line 26
    sput-object p0, Lcom/android/server/accessibility/AccessibilityManagerServiceInjector;->mContentResolver:Landroid/content/ContentResolver;

    .line 27
    sget-object v0, Lcom/android/server/accessibility/AccessibilityManagerServiceInjector;->mContentResolver:Landroid/content/ContentResolver;

    .line 28
    const-string/jumbo v1, "package_accessibillity_service_ignored"

    invoke-static {v1}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 30
    sget-object v2, Lcom/android/server/accessibility/AccessibilityManagerServiceInjector;->mObserver:Landroid/database/ContentObserver;

    .line 29
    const/4 v3, 0x1

    .line 27
    invoke-virtual {v0, v1, v3, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 31
    invoke-static {}, Lcom/android/server/accessibility/AccessibilityManagerServiceInjector;->onChanged()V

    .line 23
    return-void
.end method

.method public static isExcepted(Ljava/lang/CharSequence;)Z
    .locals 1
    .param p0, "pkgName"    # Ljava/lang/CharSequence;

    .prologue
    .line 47
    if-nez p0, :cond_0

    .line 48
    const/4 v0, 0x0

    return v0

    .line 50
    :cond_0
    invoke-interface {p0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/accessibility/AccessibilityManagerServiceInjector;->isExcepted(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static isExcepted(Ljava/lang/String;)Z
    .locals 2
    .param p0, "pkgName"    # Ljava/lang/String;

    .prologue
    const/4 v0, 0x0

    .line 59
    if-nez p0, :cond_0

    .line 60
    return v0

    .line 62
    :cond_0
    sget-object v1, Lcom/android/server/accessibility/AccessibilityManagerServiceInjector;->mExceptedPakcages:Ljava/util/ArrayList;

    if-eqz v1, :cond_1

    sget-object v0, Lcom/android/server/accessibility/AccessibilityManagerServiceInjector;->mExceptedPakcages:Ljava/util/ArrayList;

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    :cond_1
    return v0
.end method

.method private static onChanged()V
    .locals 3

    .prologue
    .line 69
    sget-object v1, Lcom/android/server/accessibility/AccessibilityManagerServiceInjector;->mExceptedPakcages:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 70
    sget-object v1, Lcom/android/server/accessibility/AccessibilityManagerServiceInjector;->mContentResolver:Landroid/content/ContentResolver;

    .line 71
    const-string/jumbo v2, "package_accessibillity_service_ignored"

    .line 70
    invoke-static {v1, v2}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 72
    .local v0, "pkgName":Ljava/lang/String;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 68
    :cond_0
    :goto_0
    return-void

    .line 73
    :cond_1
    sget-object v1, Lcom/android/server/accessibility/AccessibilityManagerServiceInjector;->mExceptedPakcages:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method
