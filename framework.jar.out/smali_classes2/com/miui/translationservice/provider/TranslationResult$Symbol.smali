.class public Lcom/miui/translationservice/provider/TranslationResult$Symbol;
.super Ljava/lang/Object;
.source "TranslationResult.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/translationservice/provider/TranslationResult;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Symbol"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/translationservice/provider/TranslationResult$Symbol$1;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/miui/translationservice/provider/TranslationResult$Symbol;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mParts:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/miui/translationservice/provider/TranslationResult$Part;",
            ">;"
        }
    .end annotation
.end field

.field private mPhAm:Ljava/lang/String;

.field private mPhEn:Ljava/lang/String;

.field private mWordSymbol:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 175
    new-instance v0, Lcom/miui/translationservice/provider/TranslationResult$Symbol$1;

    invoke-direct {v0}, Lcom/miui/translationservice/provider/TranslationResult$Symbol$1;-><init>()V

    sput-object v0, Lcom/miui/translationservice/provider/TranslationResult$Symbol;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 109
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 110
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 2
    .param p1, "src"    # Landroid/os/Parcel;

    .prologue
    .line 113
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 114
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/miui/translationservice/provider/TranslationResult$Symbol;->setPhEn(Ljava/lang/String;)V

    .line 115
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/miui/translationservice/provider/TranslationResult$Symbol;->setPhAm(Ljava/lang/String;)V

    .line 116
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/miui/translationservice/provider/TranslationResult$Symbol;->setWordSymbol(Ljava/lang/String;)V

    .line 117
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 118
    .local v0, "parts":Ljava/util/List;, "Ljava/util/List<Lcom/miui/translationservice/provider/TranslationResult$Part;>;"
    const-class v1, Lcom/miui/translationservice/provider/TranslationResult$Symbol;

    invoke-virtual {v1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->readList(Ljava/util/List;Ljava/lang/ClassLoader;)V

    .line 119
    invoke-virtual {p0, v0}, Lcom/miui/translationservice/provider/TranslationResult$Symbol;->setParts(Ljava/util/List;)V

    .line 113
    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Lcom/miui/translationservice/provider/TranslationResult$Symbol;)V
    .locals 0
    .param p1, "src"    # Landroid/os/Parcel;

    .prologue
    invoke-direct {p0, p1}, Lcom/miui/translationservice/provider/TranslationResult$Symbol;-><init>(Landroid/os/Parcel;)V

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 164
    const/4 v0, 0x0

    return v0
.end method

.method public getParts()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/miui/translationservice/provider/TranslationResult$Part;",
            ">;"
        }
    .end annotation

    .prologue
    .line 159
    iget-object v0, p0, Lcom/miui/translationservice/provider/TranslationResult$Symbol;->mParts:Ljava/util/List;

    return-object v0
.end method

.method public getPhAm()Ljava/lang/String;
    .locals 1

    .prologue
    .line 139
    iget-object v0, p0, Lcom/miui/translationservice/provider/TranslationResult$Symbol;->mPhAm:Ljava/lang/String;

    return-object v0
.end method

.method public getPhEn()Ljava/lang/String;
    .locals 1

    .prologue
    .line 129
    iget-object v0, p0, Lcom/miui/translationservice/provider/TranslationResult$Symbol;->mPhEn:Ljava/lang/String;

    return-object v0
.end method

.method public getWordSymbol()Ljava/lang/String;
    .locals 1

    .prologue
    .line 149
    iget-object v0, p0, Lcom/miui/translationservice/provider/TranslationResult$Symbol;->mWordSymbol:Ljava/lang/String;

    return-object v0
.end method

.method public setParts(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/miui/translationservice/provider/TranslationResult$Part;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 155
    .local p1, "parts":Ljava/util/List;, "Ljava/util/List<Lcom/miui/translationservice/provider/TranslationResult$Part;>;"
    iput-object p1, p0, Lcom/miui/translationservice/provider/TranslationResult$Symbol;->mParts:Ljava/util/List;

    .line 154
    return-void
.end method

.method public setPhAm(Ljava/lang/String;)V
    .locals 0
    .param p1, "phAm"    # Ljava/lang/String;

    .prologue
    .line 135
    iput-object p1, p0, Lcom/miui/translationservice/provider/TranslationResult$Symbol;->mPhAm:Ljava/lang/String;

    .line 134
    return-void
.end method

.method public setPhEn(Ljava/lang/String;)V
    .locals 0
    .param p1, "phEn"    # Ljava/lang/String;

    .prologue
    .line 125
    iput-object p1, p0, Lcom/miui/translationservice/provider/TranslationResult$Symbol;->mPhEn:Ljava/lang/String;

    .line 124
    return-void
.end method

.method public setWordSymbol(Ljava/lang/String;)V
    .locals 0
    .param p1, "wordSymbol"    # Ljava/lang/String;

    .prologue
    .line 145
    iput-object p1, p0, Lcom/miui/translationservice/provider/TranslationResult$Symbol;->mWordSymbol:Ljava/lang/String;

    .line 144
    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    .line 169
    iget-object v0, p0, Lcom/miui/translationservice/provider/TranslationResult$Symbol;->mPhEn:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 170
    iget-object v0, p0, Lcom/miui/translationservice/provider/TranslationResult$Symbol;->mPhAm:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 171
    iget-object v0, p0, Lcom/miui/translationservice/provider/TranslationResult$Symbol;->mWordSymbol:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 172
    iget-object v0, p0, Lcom/miui/translationservice/provider/TranslationResult$Symbol;->mParts:Ljava/util/List;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeList(Ljava/util/List;)V

    .line 168
    return-void
.end method
