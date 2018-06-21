.class public Landroid/provider/MiuiSettings$SettingsCloudData$CloudData;
.super Ljava/lang/Object;
.source "MiuiSettings.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/provider/MiuiSettings$SettingsCloudData;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "CloudData"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/provider/MiuiSettings$SettingsCloudData$CloudData$1;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Landroid/provider/MiuiSettings$SettingsCloudData$CloudData;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private data:Ljava/lang/String;

.field private json:Lorg/json/JSONObject;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 4879
    new-instance v0, Landroid/provider/MiuiSettings$SettingsCloudData$CloudData$1;

    invoke-direct {v0}, Landroid/provider/MiuiSettings$SettingsCloudData$CloudData$1;-><init>()V

    sput-object v0, Landroid/provider/MiuiSettings$SettingsCloudData$CloudData;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 4793
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 0
    .param p1, "data"    # Ljava/lang/String;

    .prologue
    .line 4797
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4798
    iput-object p1, p0, Landroid/provider/MiuiSettings$SettingsCloudData$CloudData;->data:Ljava/lang/String;

    .line 4797
    return-void
.end method

.method private hasKey(Ljava/lang/String;)Z
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 4813
    invoke-direct {p0}, Landroid/provider/MiuiSettings$SettingsCloudData$CloudData;->initJson()V

    .line 4814
    iget-object v0, p0, Landroid/provider/MiuiSettings$SettingsCloudData$CloudData;->json:Lorg/json/JSONObject;

    invoke-virtual {v0, p1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method private initJson()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 4807
    iget-object v0, p0, Landroid/provider/MiuiSettings$SettingsCloudData$CloudData;->json:Lorg/json/JSONObject;

    if-nez v0, :cond_0

    .line 4808
    new-instance v0, Lorg/json/JSONObject;

    iget-object v1, p0, Landroid/provider/MiuiSettings$SettingsCloudData$CloudData;->data:Ljava/lang/String;

    invoke-direct {v0, v1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Landroid/provider/MiuiSettings$SettingsCloudData$CloudData;->json:Lorg/json/JSONObject;

    .line 4806
    :cond_0
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 4872
    const/4 v0, 0x0

    return v0
.end method

.method public getBoolean(Ljava/lang/String;Z)Z
    .locals 2
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "defVal"    # Z

    .prologue
    .line 4851
    :try_start_0
    invoke-direct {p0, p1}, Landroid/provider/MiuiSettings$SettingsCloudData$CloudData;->hasKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 4852
    iget-object v1, p0, Landroid/provider/MiuiSettings$SettingsCloudData$CloudData;->json:Lorg/json/JSONObject;

    invoke-virtual {v1, p1}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    return v1

    .line 4854
    :catch_0
    move-exception v0

    .line 4855
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 4857
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_0
    return p2
.end method

.method public getInt(Ljava/lang/String;I)I
    .locals 2
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "defVal"    # I

    .prologue
    .line 4829
    :try_start_0
    invoke-direct {p0, p1}, Landroid/provider/MiuiSettings$SettingsCloudData$CloudData;->hasKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 4830
    iget-object v1, p0, Landroid/provider/MiuiSettings$SettingsCloudData$CloudData;->json:Lorg/json/JSONObject;

    invoke-virtual {v1, p1}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    return v1

    .line 4832
    :catch_0
    move-exception v0

    .line 4833
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 4835
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_0
    return p2
.end method

.method public getLong(Ljava/lang/String;J)J
    .locals 4
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "defVal"    # J

    .prologue
    .line 4840
    :try_start_0
    invoke-direct {p0, p1}, Landroid/provider/MiuiSettings$SettingsCloudData$CloudData;->hasKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 4841
    iget-object v1, p0, Landroid/provider/MiuiSettings$SettingsCloudData$CloudData;->json:Lorg/json/JSONObject;

    invoke-virtual {v1, p1}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v2

    return-wide v2

    .line 4843
    :catch_0
    move-exception v0

    .line 4844
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 4846
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_0
    return-wide p2
.end method

.method public getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "defVal"    # Ljava/lang/String;

    .prologue
    .line 4862
    :try_start_0
    invoke-direct {p0, p1}, Landroid/provider/MiuiSettings$SettingsCloudData$CloudData;->hasKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 4863
    iget-object v1, p0, Landroid/provider/MiuiSettings$SettingsCloudData$CloudData;->json:Lorg/json/JSONObject;

    invoke-virtual {v1, p1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    return-object v1

    .line 4865
    :catch_0
    move-exception v0

    .line 4866
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 4868
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_0
    return-object p2
.end method

.method public json()Lorg/json/JSONObject;
    .locals 2

    .prologue
    .line 4819
    :try_start_0
    invoke-direct {p0}, Landroid/provider/MiuiSettings$SettingsCloudData$CloudData;->initJson()V

    .line 4820
    iget-object v1, p0, Landroid/provider/MiuiSettings$SettingsCloudData$CloudData;->json:Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    .line 4821
    :catch_0
    move-exception v0

    .line 4822
    .local v0, "e":Lorg/json/JSONException;
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    .line 4823
    const/4 v1, 0x0

    return-object v1
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 4803
    iget-object v0, p0, Landroid/provider/MiuiSettings$SettingsCloudData$CloudData;->data:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    .line 4876
    iget-object v0, p0, Landroid/provider/MiuiSettings$SettingsCloudData$CloudData;->data:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 4875
    return-void
.end method
