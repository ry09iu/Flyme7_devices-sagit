.class abstract Lmiui/maml/MamlConfigSettings$Item;
.super Ljava/lang/Object;
.source "MamlConfigSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiui/maml/MamlConfigSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x402
    name = "Item"
.end annotation


# instance fields
.field protected mDefaultValue:Ljava/lang/String;

.field protected mId:Ljava/lang/String;

.field protected mPreference:Landroid/preference/Preference;

.field protected mSummary:Ljava/lang/String;

.field protected mTitle:Ljava/lang/String;

.field final synthetic this$0:Lmiui/maml/MamlConfigSettings;


# direct methods
.method private constructor <init>(Lmiui/maml/MamlConfigSettings;)V
    .locals 0
    .param p1, "this$0"    # Lmiui/maml/MamlConfigSettings;

    .prologue
    .line 353
    iput-object p1, p0, Lmiui/maml/MamlConfigSettings$Item;->this$0:Lmiui/maml/MamlConfigSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lmiui/maml/MamlConfigSettings;Lmiui/maml/MamlConfigSettings$Item;)V
    .locals 0
    .param p1, "this$0"    # Lmiui/maml/MamlConfigSettings;

    .prologue
    invoke-direct {p0, p1}, Lmiui/maml/MamlConfigSettings$Item;-><init>(Lmiui/maml/MamlConfigSettings;)V

    return-void
.end method


# virtual methods
.method public abstract OnValueChange(Ljava/lang/Object;)Z
.end method

.method public final build(Landroid/preference/PreferenceCategory;Lorg/w3c/dom/Element;)Z
    .locals 3
    .param p1, "category"    # Landroid/preference/PreferenceCategory;
    .param p2, "ele"    # Lorg/w3c/dom/Element;

    .prologue
    const/4 v2, 0x0

    .line 365
    const-string/jumbo v0, "id"

    invoke-interface {p2, v0}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lmiui/maml/MamlConfigSettings$Item;->mId:Ljava/lang/String;

    .line 366
    const-string/jumbo v0, "text"

    invoke-interface {p2, v0}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lmiui/maml/MamlConfigSettings$Item;->mTitle:Ljava/lang/String;

    .line 367
    const-string/jumbo v0, "summary"

    invoke-interface {p2, v0}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lmiui/maml/MamlConfigSettings$Item;->mSummary:Ljava/lang/String;

    .line 368
    const-string/jumbo v0, "default"

    invoke-interface {p2, v0}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lmiui/maml/MamlConfigSettings$Item;->mDefaultValue:Ljava/lang/String;

    .line 370
    iget-object v0, p0, Lmiui/maml/MamlConfigSettings$Item;->this$0:Lmiui/maml/MamlConfigSettings;

    invoke-virtual {p0, v0}, Lmiui/maml/MamlConfigSettings$Item;->createPreference(Landroid/content/Context;)Landroid/preference/Preference;

    move-result-object v0

    iput-object v0, p0, Lmiui/maml/MamlConfigSettings$Item;->mPreference:Landroid/preference/Preference;

    .line 371
    iget-object v0, p0, Lmiui/maml/MamlConfigSettings$Item;->mPreference:Landroid/preference/Preference;

    if-nez v0, :cond_0

    .line 372
    return v2

    .line 373
    :cond_0
    iget-object v0, p0, Lmiui/maml/MamlConfigSettings$Item;->mPreference:Landroid/preference/Preference;

    invoke-virtual {p1, v0}, Landroid/preference/PreferenceCategory;->addPreference(Landroid/preference/Preference;)Z

    .line 374
    iget-object v0, p0, Lmiui/maml/MamlConfigSettings$Item;->mPreference:Landroid/preference/Preference;

    iget-object v1, p0, Lmiui/maml/MamlConfigSettings$Item;->mTitle:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    .line 375
    iget-object v0, p0, Lmiui/maml/MamlConfigSettings$Item;->mPreference:Landroid/preference/Preference;

    iget-object v1, p0, Lmiui/maml/MamlConfigSettings$Item;->mSummary:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 376
    iget-object v0, p0, Lmiui/maml/MamlConfigSettings$Item;->mPreference:Landroid/preference/Preference;

    iget-object v1, p0, Lmiui/maml/MamlConfigSettings$Item;->mId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setKey(Ljava/lang/String;)V

    .line 377
    iget-object v0, p0, Lmiui/maml/MamlConfigSettings$Item;->mPreference:Landroid/preference/Preference;

    iget-object v1, p0, Lmiui/maml/MamlConfigSettings$Item;->this$0:Lmiui/maml/MamlConfigSettings;

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 378
    iget-object v0, p0, Lmiui/maml/MamlConfigSettings$Item;->mPreference:Landroid/preference/Preference;

    invoke-virtual {v0, v2}, Landroid/preference/Preference;->setPersistent(Z)V

    .line 379
    invoke-virtual {p0, p2}, Lmiui/maml/MamlConfigSettings$Item;->onBuild(Lorg/w3c/dom/Element;)V

    .line 381
    invoke-virtual {p0}, Lmiui/maml/MamlConfigSettings$Item;->updateValue()V

    .line 382
    const/4 v0, 0x1

    return v0
.end method

.method protected abstract createPreference(Landroid/content/Context;)Landroid/preference/Preference;
.end method

.method protected onBuild(Lorg/w3c/dom/Element;)V
    .locals 0
    .param p1, "ele"    # Lorg/w3c/dom/Element;

    .prologue
    .line 392
    return-void
.end method

.method public onClick()Z
    .locals 1

    .prologue
    .line 389
    const/4 v0, 0x0

    return v0
.end method

.method protected setValuePreview(Ljava/lang/String;)V
    .locals 3
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 398
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 399
    .local v0, "sb":Ljava/lang/StringBuilder;
    if-nez p1, :cond_0

    const-string/jumbo p1, ""

    .end local p1    # "value":Ljava/lang/String;
    :cond_0
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 400
    iget-object v1, p0, Lmiui/maml/MamlConfigSettings$Item;->mSummary:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 401
    const-string/jumbo v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lmiui/maml/MamlConfigSettings$Item;->mSummary:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 403
    :cond_1
    iget-object v1, p0, Lmiui/maml/MamlConfigSettings$Item;->mPreference:Landroid/preference/Preference;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 397
    return-void
.end method

.method public abstract updateValue()V
.end method
