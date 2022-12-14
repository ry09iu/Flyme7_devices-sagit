.class public final Landroid/provider/MiuiSettings$FrequentPhrases;
.super Ljava/lang/Object;
.source "MiuiSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/provider/MiuiSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "FrequentPhrases"
.end annotation


# static fields
.field private static final FREQUENT_PHRASES:Ljava/lang/String; = "frequent_phrases"

.field private static final TAG_PHRASES:Ljava/lang/String; = "phrases"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 4727
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getFrequentPhrases(Landroid/content/Context;)Ljava/util/ArrayList;
    .locals 10
    .param p0, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v9, 0x0

    .line 4754
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    .line 4755
    const-string/jumbo v8, "frequent_phrases"

    .line 4754
    invoke-static {v7, v8}, Lmiui/provider/ExtraSettings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 4756
    .local v6, "phraseString":Ljava/lang/String;
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 4757
    return-object v9

    .line 4760
    :cond_0
    const/4 v3, 0x0

    .line 4762
    .local v3, "jsonObject":Lorg/json/JSONObject;
    :try_start_0
    new-instance v3, Lorg/json/JSONObject;

    .end local v3    # "jsonObject":Lorg/json/JSONObject;
    invoke-direct {v3, v6}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 4768
    .local v3, "jsonObject":Lorg/json/JSONObject;
    const-string/jumbo v7, "phrases"

    invoke-virtual {v3, v7}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v2

    .line 4769
    .local v2, "jsonArray":Lorg/json/JSONArray;
    if-eqz v2, :cond_1

    invoke-virtual {v2}, Lorg/json/JSONArray;->length()I

    move-result v7

    if-nez v7, :cond_2

    .line 4770
    :cond_1
    return-object v9

    .line 4763
    .end local v2    # "jsonArray":Lorg/json/JSONArray;
    .end local v3    # "jsonObject":Lorg/json/JSONObject;
    :catch_0
    move-exception v0

    .line 4764
    .local v0, "e":Lorg/json/JSONException;
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    .line 4765
    return-object v9

    .line 4773
    .end local v0    # "e":Lorg/json/JSONException;
    .restart local v2    # "jsonArray":Lorg/json/JSONArray;
    .restart local v3    # "jsonObject":Lorg/json/JSONObject;
    :cond_2
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 4774
    .local v5, "phraseList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    invoke-virtual {v2}, Lorg/json/JSONArray;->length()I

    move-result v7

    if-ge v1, v7, :cond_4

    .line 4775
    invoke-virtual {v2, v1}, Lorg/json/JSONArray;->optString(I)Ljava/lang/String;

    move-result-object v4

    .line 4776
    .local v4, "phrase":Ljava/lang/String;
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_3

    .line 4774
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 4779
    :cond_3
    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 4782
    .end local v4    # "phrase":Ljava/lang/String;
    :cond_4
    return-object v5
.end method

.method public static setFrequentPhrases(Landroid/content/Context;Ljava/util/ArrayList;)V
    .locals 7
    .param p0, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 4733
    .local p1, "phraseList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-nez v4, :cond_1

    .line 4734
    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string/jumbo v5, "frequent_phrases"

    const-string/jumbo v6, ""

    invoke-static {v4, v5, v6}, Lmiui/provider/ExtraSettings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 4732
    :goto_0
    return-void

    .line 4736
    :cond_1
    new-instance v2, Lorg/json/JSONArray;

    invoke-direct {v2}, Lorg/json/JSONArray;-><init>()V

    .line 4737
    .local v2, "jsonArray":Lorg/json/JSONArray;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v1, v4, :cond_2

    .line 4738
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v2, v4}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 4737
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 4740
    :cond_2
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3}, Lorg/json/JSONObject;-><init>()V

    .line 4742
    .local v3, "jsonObject":Lorg/json/JSONObject;
    :try_start_0
    const-string/jumbo v4, "phrases"

    invoke-virtual {v3, v4, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 4748
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string/jumbo v5, "frequent_phrases"

    .line 4749
    invoke-virtual {v3}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v6

    .line 4748
    invoke-static {v4, v5, v6}, Lmiui/provider/ExtraSettings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    goto :goto_0

    .line 4743
    :catch_0
    move-exception v0

    .line 4744
    .local v0, "e":Lorg/json/JSONException;
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    .line 4745
    return-void
.end method
