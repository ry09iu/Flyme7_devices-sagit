.class public final Landroid/view/Display$HdrCapabilities;
.super Ljava/lang/Object;
.source "Display.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/view/Display;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "HdrCapabilities"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/view/Display$HdrCapabilities$1;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Landroid/view/Display$HdrCapabilities;",
            ">;"
        }
    .end annotation
.end field

.field public static final HDR_TYPE_DOLBY_VISION:I = 0x1

.field public static final HDR_TYPE_HDR10:I = 0x2

.field public static final HDR_TYPE_HLG:I = 0x3

.field public static final INVALID_LUMINANCE:F = -1.0f


# instance fields
.field private mMaxAverageLuminance:F

.field private mMaxLuminance:F

.field private mMinLuminance:F

.field private mSupportedHdrTypes:[I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 1257
    new-instance v0, Landroid/view/Display$HdrCapabilities$1;

    invoke-direct {v0}, Landroid/view/Display$HdrCapabilities$1;-><init>()V

    sput-object v0, Landroid/view/Display$HdrCapabilities;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 1155
    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    const/high16 v1, -0x40800000    # -1.0f

    .line 1190
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1182
    const/4 v0, 0x0

    new-array v0, v0, [I

    iput-object v0, p0, Landroid/view/Display$HdrCapabilities;->mSupportedHdrTypes:[I

    .line 1183
    iput v1, p0, Landroid/view/Display$HdrCapabilities;->mMaxLuminance:F

    .line 1184
    iput v1, p0, Landroid/view/Display$HdrCapabilities;->mMaxAverageLuminance:F

    .line 1185
    iput v1, p0, Landroid/view/Display$HdrCapabilities;->mMinLuminance:F

    .line 1190
    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 2
    .param p1, "source"    # Landroid/os/Parcel;

    .prologue
    const/high16 v1, -0x40800000    # -1.0f

    .line 1269
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1182
    const/4 v0, 0x0

    new-array v0, v0, [I

    iput-object v0, p0, Landroid/view/Display$HdrCapabilities;->mSupportedHdrTypes:[I

    .line 1183
    iput v1, p0, Landroid/view/Display$HdrCapabilities;->mMaxLuminance:F

    .line 1184
    iput v1, p0, Landroid/view/Display$HdrCapabilities;->mMaxAverageLuminance:F

    .line 1185
    iput v1, p0, Landroid/view/Display$HdrCapabilities;->mMinLuminance:F

    .line 1270
    invoke-virtual {p0, p1}, Landroid/view/Display$HdrCapabilities;->readFromParcel(Landroid/os/Parcel;)V

    .line 1269
    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Landroid/view/Display$HdrCapabilities;)V
    .locals 0
    .param p1, "source"    # Landroid/os/Parcel;

    .prologue
    invoke-direct {p0, p1}, Landroid/view/Display$HdrCapabilities;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method public constructor <init>([IFFF)V
    .locals 2
    .param p1, "supportedHdrTypes"    # [I
    .param p2, "maxLuminance"    # F
    .param p3, "maxAverageLuminance"    # F
    .param p4, "minLuminance"    # F

    .prologue
    const/high16 v1, -0x40800000    # -1.0f

    .line 1196
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1182
    const/4 v0, 0x0

    new-array v0, v0, [I

    iput-object v0, p0, Landroid/view/Display$HdrCapabilities;->mSupportedHdrTypes:[I

    .line 1183
    iput v1, p0, Landroid/view/Display$HdrCapabilities;->mMaxLuminance:F

    .line 1184
    iput v1, p0, Landroid/view/Display$HdrCapabilities;->mMaxAverageLuminance:F

    .line 1185
    iput v1, p0, Landroid/view/Display$HdrCapabilities;->mMinLuminance:F

    .line 1198
    iput-object p1, p0, Landroid/view/Display$HdrCapabilities;->mSupportedHdrTypes:[I

    .line 1199
    iput p2, p0, Landroid/view/Display$HdrCapabilities;->mMaxLuminance:F

    .line 1200
    iput p3, p0, Landroid/view/Display$HdrCapabilities;->mMaxAverageLuminance:F

    .line 1201
    iput p4, p0, Landroid/view/Display$HdrCapabilities;->mMinLuminance:F

    .line 1197
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 1300
    const/4 v0, 0x0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "other"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 1232
    if-ne p0, p1, :cond_0

    .line 1233
    return v1

    .line 1236
    :cond_0
    instance-of v3, p1, Landroid/view/Display$HdrCapabilities;

    if-nez v3, :cond_1

    .line 1237
    return v2

    :cond_1
    move-object v0, p1

    .line 1239
    check-cast v0, Landroid/view/Display$HdrCapabilities;

    .line 1241
    .local v0, "that":Landroid/view/Display$HdrCapabilities;
    iget-object v3, p0, Landroid/view/Display$HdrCapabilities;->mSupportedHdrTypes:[I

    iget-object v4, v0, Landroid/view/Display$HdrCapabilities;->mSupportedHdrTypes:[I

    invoke-static {v3, v4}, Ljava/util/Arrays;->equals([I[I)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 1242
    iget v3, p0, Landroid/view/Display$HdrCapabilities;->mMaxLuminance:F

    iget v4, v0, Landroid/view/Display$HdrCapabilities;->mMaxLuminance:F

    cmpl-float v3, v3, v4

    if-nez v3, :cond_3

    .line 1243
    iget v3, p0, Landroid/view/Display$HdrCapabilities;->mMaxAverageLuminance:F

    iget v4, v0, Landroid/view/Display$HdrCapabilities;->mMaxAverageLuminance:F

    cmpl-float v3, v3, v4

    if-nez v3, :cond_3

    .line 1244
    iget v3, p0, Landroid/view/Display$HdrCapabilities;->mMinLuminance:F

    iget v4, v0, Landroid/view/Display$HdrCapabilities;->mMinLuminance:F

    cmpl-float v3, v3, v4

    if-nez v3, :cond_2

    .line 1241
    :goto_0
    return v1

    :cond_2
    move v1, v2

    .line 1244
    goto :goto_0

    :cond_3
    move v1, v2

    .line 1241
    goto :goto_0
.end method

.method public getDesiredMaxAverageLuminance()F
    .locals 1

    .prologue
    .line 1221
    iget v0, p0, Landroid/view/Display$HdrCapabilities;->mMaxAverageLuminance:F

    return v0
.end method

.method public getDesiredMaxLuminance()F
    .locals 1

    .prologue
    .line 1215
    iget v0, p0, Landroid/view/Display$HdrCapabilities;->mMaxLuminance:F

    return v0
.end method

.method public getDesiredMinLuminance()F
    .locals 1

    .prologue
    .line 1227
    iget v0, p0, Landroid/view/Display$HdrCapabilities;->mMinLuminance:F

    return v0
.end method

.method public getSupportedHdrTypes()[I
    .locals 1

    .prologue
    .line 1209
    iget-object v0, p0, Landroid/view/Display$HdrCapabilities;->mSupportedHdrTypes:[I

    return-object v0
.end method

.method public hashCode()I
    .locals 3

    .prologue
    .line 1250
    iget-object v1, p0, Landroid/view/Display$HdrCapabilities;->mSupportedHdrTypes:[I

    invoke-static {v1}, Ljava/util/Arrays;->hashCode([I)I

    move-result v1

    add-int/lit16 v0, v1, 0x187

    .line 1251
    .local v0, "hash":I
    mul-int/lit8 v1, v0, 0x11

    iget v2, p0, Landroid/view/Display$HdrCapabilities;->mMaxLuminance:F

    invoke-static {v2}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v2

    add-int v0, v1, v2

    .line 1252
    mul-int/lit8 v1, v0, 0x11

    iget v2, p0, Landroid/view/Display$HdrCapabilities;->mMaxAverageLuminance:F

    invoke-static {v2}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v2

    add-int v0, v1, v2

    .line 1253
    mul-int/lit8 v1, v0, 0x11

    iget v2, p0, Landroid/view/Display$HdrCapabilities;->mMinLuminance:F

    invoke-static {v2}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v2

    add-int v0, v1, v2

    .line 1254
    return v0
.end method

.method public readFromParcel(Landroid/os/Parcel;)V
    .locals 4
    .param p1, "source"    # Landroid/os/Parcel;

    .prologue
    .line 1277
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 1278
    .local v1, "types":I
    new-array v2, v1, [I

    iput-object v2, p0, Landroid/view/Display$HdrCapabilities;->mSupportedHdrTypes:[I

    .line 1279
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v1, :cond_0

    .line 1280
    iget-object v2, p0, Landroid/view/Display$HdrCapabilities;->mSupportedHdrTypes:[I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    aput v3, v2, v0

    .line 1279
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1282
    :cond_0
    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v2

    iput v2, p0, Landroid/view/Display$HdrCapabilities;->mMaxLuminance:F

    .line 1283
    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v2

    iput v2, p0, Landroid/view/Display$HdrCapabilities;->mMaxAverageLuminance:F

    .line 1284
    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v2

    iput v2, p0, Landroid/view/Display$HdrCapabilities;->mMinLuminance:F

    .line 1276
    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    .line 1289
    iget-object v1, p0, Landroid/view/Display$HdrCapabilities;->mSupportedHdrTypes:[I

    array-length v1, v1

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1290
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Landroid/view/Display$HdrCapabilities;->mSupportedHdrTypes:[I

    array-length v1, v1

    if-ge v0, v1, :cond_0

    .line 1291
    iget-object v1, p0, Landroid/view/Display$HdrCapabilities;->mSupportedHdrTypes:[I

    aget v1, v1, v0

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1290
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1293
    :cond_0
    iget v1, p0, Landroid/view/Display$HdrCapabilities;->mMaxLuminance:F

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeFloat(F)V

    .line 1294
    iget v1, p0, Landroid/view/Display$HdrCapabilities;->mMaxAverageLuminance:F

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeFloat(F)V

    .line 1295
    iget v1, p0, Landroid/view/Display$HdrCapabilities;->mMinLuminance:F

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeFloat(F)V

    .line 1288
    return-void
.end method
