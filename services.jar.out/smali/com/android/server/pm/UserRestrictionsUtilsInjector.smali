.class Lcom/android/server/pm/UserRestrictionsUtilsInjector;
.super Ljava/lang/Object;
.source "UserRestrictionsUtilsInjector.java"


# static fields
.field static SS_USER_RESTRICTIONS:Ljava/util/List; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final TAG:Ljava/lang/String; = "UserRestrictionsUtils"


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    .line 19
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    sput-object v2, Lcom/android/server/pm/UserRestrictionsUtilsInjector;->SS_USER_RESTRICTIONS:Ljava/util/List;

    .line 24
    const-string/jumbo v2, "securespaces"

    invoke-static {v2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    .line 23
    invoke-static {v2}, Landroid/os/securespaces/ISecureSpacesService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/securespaces/ISecureSpacesService;

    move-result-object v1

    .line 26
    .local v1, "secureSpacesService":Landroid/os/securespaces/ISecureSpacesService;
    :try_start_0
    invoke-interface {v1}, Landroid/os/securespaces/ISecureSpacesService;->getUserRestrictions()Ljava/util/List;

    move-result-object v2

    sput-object v2, Lcom/android/server/pm/UserRestrictionsUtilsInjector;->SS_USER_RESTRICTIONS:Ljava/util/List;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 16
    :goto_0
    return-void

    .line 27
    :catch_0
    move-exception v0

    .line 28
    .local v0, "e":Landroid/os/RemoteException;
    const-string/jumbo v2, "UserRestrictionsUtils"

    const-string/jumbo v3, "Error communicating with Secure Spaces Service"

    invoke-static {v2, v3, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method constructor <init>()V
    .locals 0

    .prologue
    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static handleExtraRestrictions(Lorg/xmlpull/v1/XmlPullParser;Landroid/os/Bundle;)V
    .locals 5
    .param p0, "parser"    # Lorg/xmlpull/v1/XmlPullParser;
    .param p1, "restrictions"    # Landroid/os/Bundle;

    .prologue
    const/4 v4, 0x0

    .line 37
    sget-object v3, Lcom/android/server/pm/UserRestrictionsUtilsInjector;->SS_USER_RESTRICTIONS:Ljava/util/List;

    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "key$iterator":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 38
    .local v0, "key":Ljava/lang/String;
    invoke-interface {p0, v4, v0}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 39
    .local v2, "value":Ljava/lang/String;
    if-eqz v2, :cond_0

    .line 40
    invoke-static {v2}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v3

    invoke-virtual {p1, v0, v3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    goto :goto_0

    .line 36
    .end local v0    # "key":Ljava/lang/String;
    .end local v2    # "value":Ljava/lang/String;
    :cond_1
    return-void
.end method

.method static isBelongToExtraRestrictions(Ljava/lang/String;)Z
    .locals 1
    .param p0, "restriction"    # Ljava/lang/String;

    .prologue
    .line 33
    sget-object v0, Lcom/android/server/pm/UserRestrictionsUtilsInjector;->SS_USER_RESTRICTIONS:Ljava/util/List;

    invoke-interface {v0, p0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method
