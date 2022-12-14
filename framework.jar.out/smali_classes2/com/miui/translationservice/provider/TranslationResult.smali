.class public Lcom/miui/translationservice/provider/TranslationResult;
.super Ljava/lang/Object;
.source "TranslationResult.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/translationservice/provider/TranslationResult$1;,
        Lcom/miui/translationservice/provider/TranslationResult$Part;,
        Lcom/miui/translationservice/provider/TranslationResult$Symbol;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/miui/translationservice/provider/TranslationResult;",
            ">;"
        }
    .end annotation
.end field

.field public static final RESULT_ERROR_NETWORK:I = -0x2

.field public static final RESULT_ERROR_UNKNOWN:I = -0x1

.field public static final RESULT_SUCCESS:I


# instance fields
.field private mCopyright:Ljava/lang/String;

.field private mDetailLink:Ljava/lang/String;

.field private mStatus:I

.field private mSymbols:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/miui/translationservice/provider/TranslationResult$Symbol;",
            ">;"
        }
    .end annotation
.end field

.field private mWordName:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 95
    new-instance v0, Lcom/miui/translationservice/provider/TranslationResult$1;

    invoke-direct {v0}, Lcom/miui/translationservice/provider/TranslationResult$1;-><init>()V

    sput-object v0, Lcom/miui/translationservice/provider/TranslationResult;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 12
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 2
    .param p1, "src"    # Landroid/os/Parcel;

    .prologue
    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/miui/translationservice/provider/TranslationResult;->setCopyright(Ljava/lang/String;)V

    .line 23
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/miui/translationservice/provider/TranslationResult;->setDetailLink(Ljava/lang/String;)V

    .line 24
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/miui/translationservice/provider/TranslationResult;->setStatus(I)V

    .line 25
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/miui/translationservice/provider/TranslationResult;->setWordName(Ljava/lang/String;)V

    .line 26
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 27
    .local v0, "symbols":Ljava/util/List;, "Ljava/util/List<Lcom/miui/translationservice/provider/TranslationResult$Symbol;>;"
    const-class v1, Lcom/miui/translationservice/provider/TranslationResult;

    invoke-virtual {v1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->readList(Ljava/util/List;Ljava/lang/ClassLoader;)V

    .line 28
    invoke-virtual {p0, v0}, Lcom/miui/translationservice/provider/TranslationResult;->setSymbols(Ljava/util/List;)V

    .line 21
    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Lcom/miui/translationservice/provider/TranslationResult;)V
    .locals 0
    .param p1, "src"    # Landroid/os/Parcel;

    .prologue
    invoke-direct {p0, p1}, Lcom/miui/translationservice/provider/TranslationResult;-><init>(Landroid/os/Parcel;)V

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 83
    const/4 v0, 0x0

    return v0
.end method

.method public getCopyright()Ljava/lang/String;
    .locals 1

    .prologue
    .line 38
    iget-object v0, p0, Lcom/miui/translationservice/provider/TranslationResult;->mCopyright:Ljava/lang/String;

    return-object v0
.end method

.method public getDetailLink()Ljava/lang/String;
    .locals 1

    .prologue
    .line 44
    iget-object v0, p0, Lcom/miui/translationservice/provider/TranslationResult;->mDetailLink:Ljava/lang/String;

    return-object v0
.end method

.method public getStatus()I
    .locals 1

    .prologue
    .line 58
    iget v0, p0, Lcom/miui/translationservice/provider/TranslationResult;->mStatus:I

    return v0
.end method

.method public getSymbols()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/miui/translationservice/provider/TranslationResult$Symbol;",
            ">;"
        }
    .end annotation

    .prologue
    .line 78
    iget-object v0, p0, Lcom/miui/translationservice/provider/TranslationResult;->mSymbols:Ljava/util/List;

    return-object v0
.end method

.method public getWordName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 68
    iget-object v0, p0, Lcom/miui/translationservice/provider/TranslationResult;->mWordName:Ljava/lang/String;

    return-object v0
.end method

.method public setCopyright(Ljava/lang/String;)V
    .locals 0
    .param p1, "copyright"    # Ljava/lang/String;

    .prologue
    .line 34
    iput-object p1, p0, Lcom/miui/translationservice/provider/TranslationResult;->mCopyright:Ljava/lang/String;

    .line 33
    return-void
.end method

.method public setDetailLink(Ljava/lang/String;)V
    .locals 0
    .param p1, "detailLink"    # Ljava/lang/String;

    .prologue
    .line 48
    iput-object p1, p0, Lcom/miui/translationservice/provider/TranslationResult;->mDetailLink:Ljava/lang/String;

    .line 47
    return-void
.end method

.method public setStatus(I)V
    .locals 0
    .param p1, "status"    # I

    .prologue
    .line 54
    iput p1, p0, Lcom/miui/translationservice/provider/TranslationResult;->mStatus:I

    .line 53
    return-void
.end method

.method public setSymbols(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/miui/translationservice/provider/TranslationResult$Symbol;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 74
    .local p1, "symbols":Ljava/util/List;, "Ljava/util/List<Lcom/miui/translationservice/provider/TranslationResult$Symbol;>;"
    iput-object p1, p0, Lcom/miui/translationservice/provider/TranslationResult;->mSymbols:Ljava/util/List;

    .line 73
    return-void
.end method

.method public setWordName(Ljava/lang/String;)V
    .locals 0
    .param p1, "wordName"    # Ljava/lang/String;

    .prologue
    .line 64
    iput-object p1, p0, Lcom/miui/translationservice/provider/TranslationResult;->mWordName:Ljava/lang/String;

    .line 63
    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    .line 88
    iget-object v0, p0, Lcom/miui/translationservice/provider/TranslationResult;->mCopyright:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 89
    iget-object v0, p0, Lcom/miui/translationservice/provider/TranslationResult;->mDetailLink:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 90
    iget v0, p0, Lcom/miui/translationservice/provider/TranslationResult;->mStatus:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 91
    iget-object v0, p0, Lcom/miui/translationservice/provider/TranslationResult;->mWordName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 92
    iget-object v0, p0, Lcom/miui/translationservice/provider/TranslationResult;->mSymbols:Ljava/util/List;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeList(Ljava/util/List;)V

    .line 87
    return-void
.end method
