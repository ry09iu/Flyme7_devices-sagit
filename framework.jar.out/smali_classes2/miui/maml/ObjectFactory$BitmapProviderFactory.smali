.class public abstract Lmiui/maml/ObjectFactory$BitmapProviderFactory;
.super Lmiui/maml/ObjectFactory$ObjectFactoryBase;
.source "ObjectFactory.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiui/maml/ObjectFactory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "BitmapProviderFactory"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lmiui/maml/ObjectFactory$ObjectFactoryBase",
        "<",
        "Lmiui/maml/ObjectFactory$BitmapProviderFactory;",
        ">;"
    }
.end annotation


# static fields
.field public static final NAME:Ljava/lang/String; = "BitmapProvider"


# direct methods
.method protected constructor <init>()V
    .locals 1

    .prologue
    .line 48
    const-string/jumbo v0, "BitmapProvider"

    invoke-direct {p0, v0}, Lmiui/maml/ObjectFactory$ObjectFactoryBase;-><init>(Ljava/lang/String;)V

    .line 47
    return-void
.end method


# virtual methods
.method public final create(Lmiui/maml/ScreenElementRoot;Ljava/lang/String;)Lmiui/maml/elements/BitmapProvider;
    .locals 3
    .param p1, "root"    # Lmiui/maml/ScreenElementRoot;
    .param p2, "type"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x0

    .line 52
    invoke-virtual {p0, p1, p2}, Lmiui/maml/ObjectFactory$BitmapProviderFactory;->doCreate(Lmiui/maml/ScreenElementRoot;Ljava/lang/String;)Lmiui/maml/elements/BitmapProvider;

    move-result-object v0

    .line 53
    .local v0, "ret":Lmiui/maml/elements/BitmapProvider;
    if-eqz v0, :cond_0

    .line 54
    return-object v0

    .line 55
    :cond_0
    iget-object v2, p0, Lmiui/maml/ObjectFactory$BitmapProviderFactory;->mOld:Lmiui/maml/ObjectFactory;

    if-nez v2, :cond_1

    :goto_0
    return-object v1

    :cond_1
    iget-object v1, p0, Lmiui/maml/ObjectFactory$BitmapProviderFactory;->mOld:Lmiui/maml/ObjectFactory;

    check-cast v1, Lmiui/maml/ObjectFactory$BitmapProviderFactory;

    invoke-virtual {v1, p1, p2}, Lmiui/maml/ObjectFactory$BitmapProviderFactory;->create(Lmiui/maml/ScreenElementRoot;Ljava/lang/String;)Lmiui/maml/elements/BitmapProvider;

    move-result-object v1

    goto :goto_0
.end method

.method protected abstract doCreate(Lmiui/maml/ScreenElementRoot;Ljava/lang/String;)Lmiui/maml/elements/BitmapProvider;
.end method
