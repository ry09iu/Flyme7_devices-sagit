.class public final Landroid/content/res/AssetManager;
.super Ljava/lang/Object;
.source "AssetManager.java"

# interfaces
.implements Ljava/lang/AutoCloseable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/content/res/AssetManager$AssetInputStream;
    }
.end annotation


# static fields
.field public static final ACCESS_BUFFER:I = 0x3

.field public static final ACCESS_RANDOM:I = 0x1

.field public static final ACCESS_STREAMING:I = 0x2

.field public static final ACCESS_UNKNOWN:I = 0x0

.field private static final DEBUG_REFS:Z = false

.field static final STYLE_ASSET_COOKIE:I = 0x2

.field static final STYLE_CHANGING_CONFIGURATIONS:I = 0x4

.field static final STYLE_DATA:I = 0x1

.field static final STYLE_DENSITY:I = 0x5

.field static final STYLE_NUM_ENTRIES:I = 0x6

.field static final STYLE_RESOURCE_ID:I = 0x3

.field static final STYLE_TYPE:I = 0x0

.field private static final TAG:Ljava/lang/String; = "AssetManager"

.field private static final localLOGV:Z

.field private static final sSync:Ljava/lang/Object;

.field static sSystem:Landroid/content/res/AssetManager;


# instance fields
.field private mNumRefs:I

.field private mObject:J

.field private final mOffsets:[J

.field private mOpen:Z

.field private mRefStacks:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Long;",
            "Ljava/lang/RuntimeException;",
            ">;"
        }
    .end annotation
.end field

.field private mStringBlocks:[Landroid/content/res/StringBlock;

.field private final mValue:Landroid/util/TypedValue;


# direct methods
.method static synthetic -wrap0(Landroid/content/res/AssetManager;J)I
    .locals 1
    .param p1, "asset"    # J

    .prologue
    invoke-direct {p0, p1, p2}, Landroid/content/res/AssetManager;->readAssetChar(J)I

    move-result v0

    return v0
.end method

.method static synthetic -wrap1(Landroid/content/res/AssetManager;J[BII)I
    .locals 1
    .param p1, "asset"    # J
    .param p3, "b"    # [B
    .param p4, "off"    # I
    .param p5, "len"    # I

    .prologue
    invoke-direct/range {p0 .. p5}, Landroid/content/res/AssetManager;->readAsset(J[BII)I

    move-result v0

    return v0
.end method

.method static synthetic -wrap2(Landroid/content/res/AssetManager;J)J
    .locals 3
    .param p1, "asset"    # J

    .prologue
    invoke-direct {p0, p1, p2}, Landroid/content/res/AssetManager;->getAssetLength(J)J

    move-result-wide v0

    return-wide v0
.end method

.method static synthetic -wrap3(Landroid/content/res/AssetManager;J)J
    .locals 3
    .param p1, "asset"    # J

    .prologue
    invoke-direct {p0, p1, p2}, Landroid/content/res/AssetManager;->getAssetRemainingLength(J)J

    move-result-wide v0

    return-wide v0
.end method

.method static synthetic -wrap4(Landroid/content/res/AssetManager;JJI)J
    .locals 3
    .param p1, "asset"    # J
    .param p3, "offset"    # J
    .param p5, "whence"    # I

    .prologue
    invoke-direct/range {p0 .. p5}, Landroid/content/res/AssetManager;->seekAsset(JJI)J

    move-result-wide v0

    return-wide v0
.end method

.method static synthetic -wrap5(Landroid/content/res/AssetManager;J)V
    .locals 1
    .param p1, "id"    # J

    .prologue
    invoke-direct {p0, p1, p2}, Landroid/content/res/AssetManager;->decRefsLocked(J)V

    return-void
.end method

.method static synthetic -wrap6(Landroid/content/res/AssetManager;J)V
    .locals 1
    .param p1, "asset"    # J

    .prologue
    invoke-direct {p0, p1, p2}, Landroid/content/res/AssetManager;->destroyAsset(J)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 71
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Landroid/content/res/AssetManager;->sSync:Ljava/lang/Object;

    .line 72
    const/4 v0, 0x0

    sput-object v0, Landroid/content/res/AssetManager;->sSystem:Landroid/content/res/AssetManager;

    .line 42
    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 93
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 74
    new-instance v0, Landroid/util/TypedValue;

    invoke-direct {v0}, Landroid/util/TypedValue;-><init>()V

    iput-object v0, p0, Landroid/content/res/AssetManager;->mValue:Landroid/util/TypedValue;

    .line 75
    const/4 v0, 0x2

    new-array v0, v0, [J

    iput-object v0, p0, Landroid/content/res/AssetManager;->mOffsets:[J

    .line 80
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/content/res/AssetManager;->mStringBlocks:[Landroid/content/res/StringBlock;

    .line 82
    iput v1, p0, Landroid/content/res/AssetManager;->mNumRefs:I

    .line 83
    iput-boolean v1, p0, Landroid/content/res/AssetManager;->mOpen:Z

    .line 94
    monitor-enter p0

    .line 99
    const/4 v0, 0x0

    :try_start_0
    invoke-direct {p0, v0}, Landroid/content/res/AssetManager;->init(Z)V

    .line 101
    invoke-static {}, Landroid/content/res/AssetManager;->ensureSystemAssets()V

    .line 103
    invoke-static {p0}, Landroid/miui/ResourcesManager;->addSystemAssets(Landroid/content/res/AssetManager;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    .line 93
    return-void

    .line 94
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private constructor <init>(Z)V
    .locals 2
    .param p1, "isSystem"    # Z

    .prologue
    const/4 v1, 0x1

    .line 117
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 74
    new-instance v0, Landroid/util/TypedValue;

    invoke-direct {v0}, Landroid/util/TypedValue;-><init>()V

    iput-object v0, p0, Landroid/content/res/AssetManager;->mValue:Landroid/util/TypedValue;

    .line 75
    const/4 v0, 0x2

    new-array v0, v0, [J

    iput-object v0, p0, Landroid/content/res/AssetManager;->mOffsets:[J

    .line 80
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/content/res/AssetManager;->mStringBlocks:[Landroid/content/res/StringBlock;

    .line 82
    iput v1, p0, Landroid/content/res/AssetManager;->mNumRefs:I

    .line 83
    iput-boolean v1, p0, Landroid/content/res/AssetManager;->mOpen:Z

    .line 124
    invoke-direct {p0, v1}, Landroid/content/res/AssetManager;->init(Z)V

    .line 127
    invoke-static {p0}, Landroid/miui/ResourcesManager;->addSystemAssets(Landroid/content/res/AssetManager;)V

    .line 117
    return-void
.end method

.method private final addAssetPathInternal(Ljava/lang/String;Z)I
    .locals 2
    .param p1, "path"    # Ljava/lang/String;
    .param p2, "appAsLib"    # Z

    .prologue
    .line 665
    monitor-enter p0

    .line 666
    :try_start_0
    invoke-direct {p0, p1, p2}, Landroid/content/res/AssetManager;->addAssetPathNative(Ljava/lang/String;Z)I

    move-result v0

    .line 667
    .local v0, "res":I
    iget-object v1, p0, Landroid/content/res/AssetManager;->mStringBlocks:[Landroid/content/res/StringBlock;

    invoke-virtual {p0, v1}, Landroid/content/res/AssetManager;->makeStringBlocks([Landroid/content/res/StringBlock;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    .line 668
    return v0

    .line 665
    .end local v0    # "res":I
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method private final native addAssetPathNative(Ljava/lang/String;Z)I
.end method

.method static final native applyStyle(JIIJ[I[I[I)Z
.end method

.method static final native applyThemeStyle(JIZ)V
.end method

.method static final native clearTheme(J)V
.end method

.method static final native copyTheme(JJ)V
.end method

.method private final decRefsLocked(J)V
    .locals 1
    .param p1, "id"    # J

    .prologue
    .line 884
    iget v0, p0, Landroid/content/res/AssetManager;->mNumRefs:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Landroid/content/res/AssetManager;->mNumRefs:I

    .line 887
    iget v0, p0, Landroid/content/res/AssetManager;->mNumRefs:I

    if-nez v0, :cond_0

    .line 888
    invoke-direct {p0}, Landroid/content/res/AssetManager;->destroy()V

    .line 880
    :cond_0
    return-void
.end method

.method private final native deleteTheme(J)V
.end method

.method private final native destroy()V
.end method

.method private final native destroyAsset(J)V
.end method

.method static final native dumpTheme(JILjava/lang/String;Ljava/lang/String;)V
.end method

.method private static ensureSystemAssets()V
    .locals 3

    .prologue
    .line 108
    sget-object v2, Landroid/content/res/AssetManager;->sSync:Ljava/lang/Object;

    monitor-enter v2

    .line 109
    :try_start_0
    sget-object v1, Landroid/content/res/AssetManager;->sSystem:Landroid/content/res/AssetManager;

    if-nez v1, :cond_0

    .line 110
    new-instance v0, Landroid/content/res/AssetManager;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Landroid/content/res/AssetManager;-><init>(Z)V

    .line 111
    .local v0, "system":Landroid/content/res/AssetManager;
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/content/res/AssetManager;->makeStringBlocks([Landroid/content/res/StringBlock;)V

    .line 112
    sput-object v0, Landroid/content/res/AssetManager;->sSystem:Landroid/content/res/AssetManager;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit v2

    .line 107
    return-void

    .line 108
    :catchall_0
    move-exception v1

    monitor-exit v2

    throw v1
.end method

.method private final native getArrayStringInfo(I)[I
.end method

.method private final native getArrayStringResource(I)[Ljava/lang/String;
.end method

.method public static final native getAssetAllocations()Ljava/lang/String;
.end method

.method private final native getAssetLength(J)J
.end method

.method private final native getAssetRemainingLength(J)J
.end method

.method public static final native getGlobalAssetCount()I
.end method

.method public static final native getGlobalAssetManagerCount()I
.end method

.method private final native getNativeStringBlock(I)J
.end method

.method private final native getStringBlockCount()I
.end method

.method public static getSystem()Landroid/content/res/AssetManager;
    .locals 1

    .prologue
    .line 136
    invoke-static {}, Landroid/content/res/AssetManager;->ensureSystemAssets()V

    .line 137
    sget-object v0, Landroid/content/res/AssetManager;->sSystem:Landroid/content/res/AssetManager;

    return-object v0
.end method

.method static final native getThemeChangingConfigurations(J)I
.end method

.method private final incRefsLocked(J)V
    .locals 1
    .param p1, "id"    # J

    .prologue
    .line 877
    iget v0, p0, Landroid/content/res/AssetManager;->mNumRefs:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Landroid/content/res/AssetManager;->mNumRefs:I

    .line 868
    return-void
.end method

.method private final native init(Z)V
.end method

.method private final native loadResourceBagValue(IILandroid/util/TypedValue;Z)I
.end method

.method private final native loadResourceValue(ISLandroid/util/TypedValue;Z)I
.end method

.method static final native loadThemeAttributeValue(JILandroid/util/TypedValue;Z)I
.end method

.method private final native newTheme()J
.end method

.method private final native openAsset(Ljava/lang/String;I)J
.end method

.method private final native openAssetFd(Ljava/lang/String;[J)Landroid/os/ParcelFileDescriptor;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method private native openNonAssetFdNative(ILjava/lang/String;[J)Landroid/os/ParcelFileDescriptor;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method private final native openNonAssetNative(ILjava/lang/String;I)J
.end method

.method private final native openXmlAssetNative(ILjava/lang/String;)J
.end method

.method private final native readAsset(J[BII)I
.end method

.method private final native readAssetChar(J)I
.end method

.method static final native resolveAttrs(JII[I[I[I[I)Z
.end method

.method private final native seekAsset(JJI)J
.end method


# virtual methods
.method public final addAssetPath(Ljava/lang/String;)I
    .locals 1
    .param p1, "path"    # Ljava/lang/String;

    .prologue
    .line 651
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroid/content/res/AssetManager;->addAssetPathInternal(Ljava/lang/String;Z)I

    move-result v0

    return v0
.end method

.method public final addAssetPathAsSharedLibrary(Ljava/lang/String;)I
    .locals 1
    .param p1, "path"    # Ljava/lang/String;

    .prologue
    .line 661
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Landroid/content/res/AssetManager;->addAssetPathInternal(Ljava/lang/String;Z)I

    move-result v0

    return v0
.end method

.method public final addAssetPaths([Ljava/lang/String;)[I
    .locals 3
    .param p1, "paths"    # [Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    .line 706
    if-nez p1, :cond_0

    .line 707
    return-object v2

    .line 710
    :cond_0
    array-length v2, p1

    new-array v0, v2, [I

    .line 711
    .local v0, "cookies":[I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v2, p1

    if-ge v1, v2, :cond_1

    .line 712
    aget-object v2, p1, v1

    invoke-virtual {p0, v2}, Landroid/content/res/AssetManager;->addAssetPath(Ljava/lang/String;)I

    move-result v2

    aput v2, v0, v1

    .line 711
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 715
    :cond_1
    return-object v0
.end method

.method public final addOverlayPath(Ljava/lang/String;)I
    .locals 2
    .param p1, "idmapPath"    # Ljava/lang/String;

    .prologue
    .line 684
    monitor-enter p0

    .line 685
    :try_start_0
    invoke-virtual {p0, p1}, Landroid/content/res/AssetManager;->addOverlayPathNative(Ljava/lang/String;)I

    move-result v0

    .line 686
    .local v0, "res":I
    iget-object v1, p0, Landroid/content/res/AssetManager;->mStringBlocks:[Landroid/content/res/StringBlock;

    invoke-virtual {p0, v1}, Landroid/content/res/AssetManager;->makeStringBlocks([Landroid/content/res/StringBlock;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    .line 687
    return v0

    .line 684
    .end local v0    # "res":I
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public final native addOverlayPathNative(Ljava/lang/String;)I
.end method

.method public close()V
    .locals 2

    .prologue
    .line 144
    monitor-enter p0

    .line 147
    :try_start_0
    iget-boolean v0, p0, Landroid/content/res/AssetManager;->mOpen:Z

    if-eqz v0, :cond_0

    .line 148
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/content/res/AssetManager;->mOpen:Z

    .line 149
    invoke-virtual {p0}, Landroid/content/res/AssetManager;->hashCode()I

    move-result v0

    int-to-long v0, v0

    invoke-direct {p0, v0, v1}, Landroid/content/res/AssetManager;->decRefsLocked(J)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit p0

    .line 143
    return-void

    .line 144
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method final createTheme()J
    .locals 4

    .prologue
    .line 540
    monitor-enter p0

    .line 541
    :try_start_0
    iget-boolean v2, p0, Landroid/content/res/AssetManager;->mOpen:Z

    if-nez v2, :cond_0

    .line 542
    new-instance v2, Ljava/lang/RuntimeException;

    const-string/jumbo v3, "Assetmanager has been closed"

    invoke-direct {v2, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 540
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2

    .line 544
    :cond_0
    :try_start_1
    invoke-direct {p0}, Landroid/content/res/AssetManager;->newTheme()J

    move-result-wide v0

    .line 545
    .local v0, "res":J
    invoke-direct {p0, v0, v1}, Landroid/content/res/AssetManager;->incRefsLocked(J)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    .line 546
    return-wide v0
.end method

.method final ensureStringBlocks()[Landroid/content/res/StringBlock;
    .locals 1

    .prologue
    .line 285
    monitor-enter p0

    .line 286
    :try_start_0
    iget-object v0, p0, Landroid/content/res/AssetManager;->mStringBlocks:[Landroid/content/res/StringBlock;

    if-nez v0, :cond_0

    .line 287
    sget-object v0, Landroid/content/res/AssetManager;->sSystem:Landroid/content/res/AssetManager;

    iget-object v0, v0, Landroid/content/res/AssetManager;->mStringBlocks:[Landroid/content/res/StringBlock;

    invoke-virtual {p0, v0}, Landroid/content/res/AssetManager;->makeStringBlocks([Landroid/content/res/StringBlock;)V

    .line 289
    :cond_0
    iget-object v0, p0, Landroid/content/res/AssetManager;->mStringBlocks:[Landroid/content/res/StringBlock;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    .line 285
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method protected finalize()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 568
    :try_start_0
    invoke-direct {p0}, Landroid/content/res/AssetManager;->destroy()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 570
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 557
    return-void

    .line 569
    :catchall_0
    move-exception v0

    .line 570
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 569
    throw v0
.end method

.method final native getArrayIntResource(I)[I
.end method

.method final native getArraySize(I)I
.end method

.method public final native getAssignedPackageIdentifiers()Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/util/SparseArray",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end method

.method public final native getCookieName(I)Ljava/lang/String;
.end method

.method public final native getLocales()[Ljava/lang/String;
.end method

.method public final native getNonSystemLocales()[Ljava/lang/String;
.end method

.method final getPooledStringForCookie(II)Ljava/lang/CharSequence;
    .locals 2
    .param p1, "cookie"    # I
    .param p2, "id"    # I

    .prologue
    .line 310
    iget-object v0, p0, Landroid/content/res/AssetManager;->mStringBlocks:[Landroid/content/res/StringBlock;

    add-int/lit8 v1, p1, -0x1

    aget-object v0, v0, v1

    invoke-virtual {v0, p2}, Landroid/content/res/StringBlock;->get(I)Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method final getResourceBagText(II)Ljava/lang/CharSequence;
    .locals 4
    .param p1, "resId"    # I
    .param p2, "bagEntryId"    # I

    .prologue
    .line 182
    monitor-enter p0

    .line 183
    :try_start_0
    iget-object v1, p0, Landroid/content/res/AssetManager;->mValue:Landroid/util/TypedValue;

    .line 184
    .local v1, "outValue":Landroid/util/TypedValue;
    const/4 v2, 0x1

    invoke-direct {p0, p1, p2, v1, v2}, Landroid/content/res/AssetManager;->loadResourceBagValue(IILandroid/util/TypedValue;Z)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    .line 185
    .local v0, "block":I
    if-gez v0, :cond_0

    .line 186
    const/4 v2, 0x0

    monitor-exit p0

    return-object v2

    .line 188
    :cond_0
    :try_start_1
    iget v2, v1, Landroid/util/TypedValue;->type:I

    const/4 v3, 0x3

    if-ne v2, v3, :cond_1

    .line 189
    iget-object v2, p0, Landroid/content/res/AssetManager;->mStringBlocks:[Landroid/content/res/StringBlock;

    aget-object v2, v2, v0

    iget v3, v1, Landroid/util/TypedValue;->data:I

    invoke-virtual {v2, v3}, Landroid/content/res/StringBlock;->get(I)Ljava/lang/CharSequence;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v2

    monitor-exit p0

    return-object v2

    .line 191
    :cond_1
    :try_start_2
    invoke-virtual {v1}, Landroid/util/TypedValue;->coerceToString()Ljava/lang/CharSequence;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result-object v2

    monitor-exit p0

    return-object v2

    .line 182
    .end local v0    # "block":I
    .end local v1    # "outValue":Landroid/util/TypedValue;
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2
.end method

.method final native getResourceEntryName(I)Ljava/lang/String;
.end method

.method final native getResourceIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I
.end method

.method final native getResourceName(I)Ljava/lang/String;
.end method

.method final native getResourcePackageName(I)Ljava/lang/String;
.end method

.method final getResourceStringArray(I)[Ljava/lang/String;
    .locals 1
    .param p1, "resId"    # I

    .prologue
    .line 204
    invoke-direct {p0, p1}, Landroid/content/res/AssetManager;->getArrayStringResource(I)[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method final getResourceText(I)Ljava/lang/CharSequence;
    .locals 3
    .param p1, "resId"    # I

    .prologue
    .line 163
    monitor-enter p0

    .line 164
    :try_start_0
    iget-object v0, p0, Landroid/content/res/AssetManager;->mValue:Landroid/util/TypedValue;

    .line 165
    .local v0, "outValue":Landroid/util/TypedValue;
    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {p0, p1, v1, v0, v2}, Landroid/content/res/AssetManager;->getResourceValue(IILandroid/util/TypedValue;Z)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 166
    invoke-virtual {v0}, Landroid/util/TypedValue;->coerceToString()Ljava/lang/CharSequence;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v1

    monitor-exit p0

    return-object v1

    .line 168
    :cond_0
    const/4 v1, 0x0

    monitor-exit p0

    return-object v1

    .line 163
    .end local v0    # "outValue":Landroid/util/TypedValue;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method final getResourceTextArray(I)[Ljava/lang/CharSequence;
    .locals 9
    .param p1, "resId"    # I

    .prologue
    .line 238
    invoke-direct {p0, p1}, Landroid/content/res/AssetManager;->getArrayStringInfo(I)[I

    move-result-object v5

    .line 239
    .local v5, "rawInfoArray":[I
    array-length v6, v5

    .line 240
    .local v6, "rawInfoArrayLen":I
    div-int/lit8 v3, v6, 0x2

    .line 243
    .local v3, "infoArrayLen":I
    new-array v7, v3, [Ljava/lang/CharSequence;

    .line 244
    .local v7, "retArray":[Ljava/lang/CharSequence;
    const/4 v1, 0x0

    .local v1, "i":I
    const/4 v4, 0x0

    .local v4, "j":I
    :goto_0
    if-ge v1, v6, :cond_1

    .line 245
    aget v0, v5, v1

    .line 246
    .local v0, "block":I
    add-int/lit8 v8, v1, 0x1

    aget v2, v5, v8

    .line 247
    .local v2, "index":I
    if-ltz v2, :cond_0

    iget-object v8, p0, Landroid/content/res/AssetManager;->mStringBlocks:[Landroid/content/res/StringBlock;

    aget-object v8, v8, v0

    invoke-virtual {v8, v2}, Landroid/content/res/StringBlock;->get(I)Ljava/lang/CharSequence;

    move-result-object v8

    :goto_1
    aput-object v8, v7, v4

    .line 244
    add-int/lit8 v1, v1, 0x2

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 247
    :cond_0
    const/4 v8, 0x0

    goto :goto_1

    .line 249
    .end local v0    # "block":I
    .end local v2    # "index":I
    :cond_1
    return-object v7
.end method

.method final native getResourceTypeName(I)Ljava/lang/String;
.end method

.method final getResourceValue(IILandroid/util/TypedValue;Z)Z
    .locals 3
    .param p1, "resId"    # I
    .param p2, "densityDpi"    # I
    .param p3, "outValue"    # Landroid/util/TypedValue;
    .param p4, "resolveRefs"    # Z

    .prologue
    const/4 v2, 0x0

    .line 221
    int-to-short v1, p2

    invoke-direct {p0, p1, v1, p3, p4}, Landroid/content/res/AssetManager;->loadResourceValue(ISLandroid/util/TypedValue;Z)I

    move-result v0

    .line 222
    .local v0, "block":I
    if-gez v0, :cond_0

    .line 223
    return v2

    .line 225
    :cond_0
    iget v1, p3, Landroid/util/TypedValue;->type:I

    const/4 v2, 0x3

    if-ne v1, v2, :cond_1

    .line 226
    iget-object v1, p0, Landroid/content/res/AssetManager;->mStringBlocks:[Landroid/content/res/StringBlock;

    aget-object v1, v1, v0

    iget v2, p3, Landroid/util/TypedValue;->data:I

    invoke-virtual {v1, v2}, Landroid/content/res/StringBlock;->get(I)Ljava/lang/CharSequence;

    move-result-object v1

    iput-object v1, p3, Landroid/util/TypedValue;->string:Ljava/lang/CharSequence;

    .line 228
    :cond_1
    const/4 v1, 0x1

    return v1
.end method

.method public final native getSizeConfigurations()[Landroid/content/res/Configuration;
.end method

.method final native getStyleAttributes(I)[I
.end method

.method final getThemeValue(JILandroid/util/TypedValue;Z)Z
    .locals 5
    .param p1, "theme"    # J
    .param p3, "resId"    # I
    .param p4, "outValue"    # Landroid/util/TypedValue;
    .param p5, "resolveRefs"    # Z

    .prologue
    const/4 v2, 0x0

    .line 267
    invoke-static {p1, p2, p3, p4, p5}, Landroid/content/res/AssetManager;->loadThemeAttributeValue(JILandroid/util/TypedValue;Z)I

    move-result v0

    .line 268
    .local v0, "block":I
    if-gez v0, :cond_0

    .line 269
    return v2

    .line 271
    :cond_0
    iget v2, p4, Landroid/util/TypedValue;->type:I

    const/4 v3, 0x3

    if-ne v2, v3, :cond_1

    .line 272
    invoke-virtual {p0}, Landroid/content/res/AssetManager;->ensureStringBlocks()[Landroid/content/res/StringBlock;

    move-result-object v1

    .line 273
    .local v1, "blocks":[Landroid/content/res/StringBlock;
    aget-object v2, v1, v0

    iget v3, p4, Landroid/util/TypedValue;->data:I

    invoke-virtual {v2, v3}, Landroid/content/res/StringBlock;->get(I)Ljava/lang/CharSequence;

    move-result-object v2

    iput-object v2, p4, Landroid/util/TypedValue;->string:Ljava/lang/CharSequence;

    .line 275
    .end local v1    # "blocks":[Landroid/content/res/StringBlock;
    :cond_1
    const/4 v2, 0x1

    return v2
.end method

.method public final native isUpToDate()Z
.end method

.method public final native list(Ljava/lang/String;)[Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method final makeStringBlocks([Landroid/content/res/StringBlock;)V
    .locals 8
    .param p1, "seed"    # [Landroid/content/res/StringBlock;

    .prologue
    .line 294
    if-eqz p1, :cond_0

    array-length v2, p1

    .line 295
    .local v2, "seedNum":I
    :goto_0
    invoke-direct {p0}, Landroid/content/res/AssetManager;->getStringBlockCount()I

    move-result v1

    .line 296
    .local v1, "num":I
    new-array v3, v1, [Landroid/content/res/StringBlock;

    iput-object v3, p0, Landroid/content/res/AssetManager;->mStringBlocks:[Landroid/content/res/StringBlock;

    .line 299
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    if-ge v0, v1, :cond_2

    .line 300
    if-ge v0, v2, :cond_1

    .line 301
    iget-object v3, p0, Landroid/content/res/AssetManager;->mStringBlocks:[Landroid/content/res/StringBlock;

    aget-object v4, p1, v0

    aput-object v4, v3, v0

    .line 299
    :goto_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 294
    .end local v0    # "i":I
    .end local v1    # "num":I
    .end local v2    # "seedNum":I
    :cond_0
    const/4 v2, 0x0

    .restart local v2    # "seedNum":I
    goto :goto_0

    .line 303
    .restart local v0    # "i":I
    .restart local v1    # "num":I
    :cond_1
    iget-object v3, p0, Landroid/content/res/AssetManager;->mStringBlocks:[Landroid/content/res/StringBlock;

    new-instance v4, Landroid/content/res/StringBlock;

    invoke-direct {p0, v0}, Landroid/content/res/AssetManager;->getNativeStringBlock(I)J

    move-result-wide v6

    const/4 v5, 0x1

    invoke-direct {v4, v6, v7, v5}, Landroid/content/res/StringBlock;-><init>(JZ)V

    aput-object v4, v3, v0

    goto :goto_2

    .line 293
    :cond_2
    return-void
.end method

.method public final open(Ljava/lang/String;)Ljava/io/InputStream;
    .locals 1
    .param p1, "fileName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 325
    const/4 v0, 0x2

    invoke-virtual {p0, p1, v0}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;I)Ljava/io/InputStream;

    move-result-object v0

    return-object v0
.end method

.method public final open(Ljava/lang/String;I)Ljava/io/InputStream;
    .locals 6
    .param p1, "fileName"    # Ljava/lang/String;
    .param p2, "accessMode"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 347
    monitor-enter p0

    .line 348
    :try_start_0
    iget-boolean v3, p0, Landroid/content/res/AssetManager;->mOpen:Z

    if-nez v3, :cond_0

    .line 349
    new-instance v3, Ljava/lang/RuntimeException;

    const-string/jumbo v4, "Assetmanager has been closed"

    invoke-direct {v3, v4}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 347
    :catchall_0
    move-exception v3

    monitor-exit p0

    throw v3

    .line 351
    :cond_0
    :try_start_1
    invoke-direct {p0, p1, p2}, Landroid/content/res/AssetManager;->openAsset(Ljava/lang/String;I)J

    move-result-wide v0

    .line 352
    .local v0, "asset":J
    const-wide/16 v4, 0x0

    cmp-long v3, v0, v4

    if-eqz v3, :cond_1

    .line 353
    new-instance v2, Landroid/content/res/AssetManager$AssetInputStream;

    const/4 v3, 0x0

    invoke-direct {v2, p0, v0, v1, v3}, Landroid/content/res/AssetManager$AssetInputStream;-><init>(Landroid/content/res/AssetManager;JLandroid/content/res/AssetManager$AssetInputStream;)V

    .line 354
    .local v2, "res":Landroid/content/res/AssetManager$AssetInputStream;
    invoke-virtual {v2}, Landroid/content/res/AssetManager$AssetInputStream;->hashCode()I

    move-result v3

    int-to-long v4, v3

    invoke-direct {p0, v4, v5}, Landroid/content/res/AssetManager;->incRefsLocked(J)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    .line 355
    return-object v2

    .end local v2    # "res":Landroid/content/res/AssetManager$AssetInputStream;
    :cond_1
    monitor-exit p0

    .line 358
    new-instance v3, Ljava/io/FileNotFoundException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Asset file: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/io/FileNotFoundException;-><init>(Ljava/lang/String;)V

    throw v3
.end method

.method public final openFd(Ljava/lang/String;)Landroid/content/res/AssetFileDescriptor;
    .locals 6
    .param p1, "fileName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 363
    monitor-enter p0

    .line 364
    :try_start_0
    iget-boolean v0, p0, Landroid/content/res/AssetManager;->mOpen:Z

    if-nez v0, :cond_0

    .line 365
    new-instance v0, Ljava/lang/RuntimeException;

    const-string/jumbo v2, "Assetmanager has been closed"

    invoke-direct {v0, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 363
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 367
    :cond_0
    :try_start_1
    iget-object v0, p0, Landroid/content/res/AssetManager;->mOffsets:[J

    invoke-direct {p0, p1, v0}, Landroid/content/res/AssetManager;->openAssetFd(Ljava/lang/String;[J)Landroid/os/ParcelFileDescriptor;

    move-result-object v1

    .line 368
    .local v1, "pfd":Landroid/os/ParcelFileDescriptor;
    if-eqz v1, :cond_1

    .line 369
    new-instance v0, Landroid/content/res/AssetFileDescriptor;

    iget-object v2, p0, Landroid/content/res/AssetManager;->mOffsets:[J

    const/4 v3, 0x0

    aget-wide v2, v2, v3

    iget-object v4, p0, Landroid/content/res/AssetManager;->mOffsets:[J

    const/4 v5, 0x1

    aget-wide v4, v4, v5

    invoke-direct/range {v0 .. v5}, Landroid/content/res/AssetFileDescriptor;-><init>(Landroid/os/ParcelFileDescriptor;JJ)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-object v0

    :cond_1
    monitor-exit p0

    .line 372
    new-instance v0, Ljava/io/FileNotFoundException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Asset file: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/io/FileNotFoundException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final openNonAsset(ILjava/lang/String;)Ljava/io/InputStream;
    .locals 1
    .param p1, "cookie"    # I
    .param p2, "fileName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 426
    const/4 v0, 0x2

    invoke-virtual {p0, p1, p2, v0}, Landroid/content/res/AssetManager;->openNonAsset(ILjava/lang/String;I)Ljava/io/InputStream;

    move-result-object v0

    return-object v0
.end method

.method public final openNonAsset(ILjava/lang/String;I)Ljava/io/InputStream;
    .locals 6
    .param p1, "cookie"    # I
    .param p2, "fileName"    # Ljava/lang/String;
    .param p3, "accessMode"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 439
    monitor-enter p0

    .line 440
    :try_start_0
    iget-boolean v3, p0, Landroid/content/res/AssetManager;->mOpen:Z

    if-nez v3, :cond_0

    .line 441
    new-instance v3, Ljava/lang/RuntimeException;

    const-string/jumbo v4, "Assetmanager has been closed"

    invoke-direct {v3, v4}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 439
    :catchall_0
    move-exception v3

    monitor-exit p0

    throw v3

    .line 443
    :cond_0
    :try_start_1
    invoke-direct {p0, p1, p2, p3}, Landroid/content/res/AssetManager;->openNonAssetNative(ILjava/lang/String;I)J

    move-result-wide v0

    .line 444
    .local v0, "asset":J
    const-wide/16 v4, 0x0

    cmp-long v3, v0, v4

    if-eqz v3, :cond_1

    .line 445
    new-instance v2, Landroid/content/res/AssetManager$AssetInputStream;

    const/4 v3, 0x0

    invoke-direct {v2, p0, v0, v1, v3}, Landroid/content/res/AssetManager$AssetInputStream;-><init>(Landroid/content/res/AssetManager;JLandroid/content/res/AssetManager$AssetInputStream;)V

    .line 446
    .local v2, "res":Landroid/content/res/AssetManager$AssetInputStream;
    invoke-virtual {v2}, Landroid/content/res/AssetManager$AssetInputStream;->hashCode()I

    move-result v3

    int-to-long v4, v3

    invoke-direct {p0, v4, v5}, Landroid/content/res/AssetManager;->incRefsLocked(J)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    .line 447
    return-object v2

    .end local v2    # "res":Landroid/content/res/AssetManager$AssetInputStream;
    :cond_1
    monitor-exit p0

    .line 450
    new-instance v3, Ljava/io/FileNotFoundException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Asset absolute file: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/io/FileNotFoundException;-><init>(Ljava/lang/String;)V

    throw v3
.end method

.method public final openNonAsset(Ljava/lang/String;)Ljava/io/InputStream;
    .locals 2
    .param p1, "fileName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 400
    const/4 v0, 0x0

    const/4 v1, 0x2

    invoke-virtual {p0, v0, p1, v1}, Landroid/content/res/AssetManager;->openNonAsset(ILjava/lang/String;I)Ljava/io/InputStream;

    move-result-object v0

    return-object v0
.end method

.method public final openNonAsset(Ljava/lang/String;I)Ljava/io/InputStream;
    .locals 1
    .param p1, "fileName"    # Ljava/lang/String;
    .param p2, "accessMode"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 414
    const/4 v0, 0x0

    invoke-virtual {p0, v0, p1, p2}, Landroid/content/res/AssetManager;->openNonAsset(ILjava/lang/String;I)Ljava/io/InputStream;

    move-result-object v0

    return-object v0
.end method

.method public final openNonAssetFd(ILjava/lang/String;)Landroid/content/res/AssetFileDescriptor;
    .locals 6
    .param p1, "cookie"    # I
    .param p2, "fileName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 460
    monitor-enter p0

    .line 461
    :try_start_0
    iget-boolean v0, p0, Landroid/content/res/AssetManager;->mOpen:Z

    if-nez v0, :cond_0

    .line 462
    new-instance v0, Ljava/lang/RuntimeException;

    const-string/jumbo v2, "Assetmanager has been closed"

    invoke-direct {v0, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 460
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 465
    :cond_0
    :try_start_1
    iget-object v0, p0, Landroid/content/res/AssetManager;->mOffsets:[J

    .line 464
    invoke-direct {p0, p1, p2, v0}, Landroid/content/res/AssetManager;->openNonAssetFdNative(ILjava/lang/String;[J)Landroid/os/ParcelFileDescriptor;

    move-result-object v1

    .line 466
    .local v1, "pfd":Landroid/os/ParcelFileDescriptor;
    if-eqz v1, :cond_1

    .line 467
    new-instance v0, Landroid/content/res/AssetFileDescriptor;

    iget-object v2, p0, Landroid/content/res/AssetManager;->mOffsets:[J

    const/4 v3, 0x0

    aget-wide v2, v2, v3

    iget-object v4, p0, Landroid/content/res/AssetManager;->mOffsets:[J

    const/4 v5, 0x1

    aget-wide v4, v4, v5

    invoke-direct/range {v0 .. v5}, Landroid/content/res/AssetFileDescriptor;-><init>(Landroid/os/ParcelFileDescriptor;JJ)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-object v0

    :cond_1
    monitor-exit p0

    .line 470
    new-instance v0, Ljava/io/FileNotFoundException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Asset absolute file: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/io/FileNotFoundException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final openNonAssetFd(Ljava/lang/String;)Landroid/content/res/AssetFileDescriptor;
    .locals 1
    .param p1, "fileName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 455
    const/4 v0, 0x0

    invoke-virtual {p0, v0, p1}, Landroid/content/res/AssetManager;->openNonAssetFd(ILjava/lang/String;)Landroid/content/res/AssetFileDescriptor;

    move-result-object v0

    return-object v0
.end method

.method final openXmlBlockAsset(ILjava/lang/String;)Landroid/content/res/XmlBlock;
    .locals 6
    .param p1, "cookie"    # I
    .param p2, "fileName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 519
    monitor-enter p0

    .line 520
    :try_start_0
    iget-boolean v1, p0, Landroid/content/res/AssetManager;->mOpen:Z

    if-nez v1, :cond_0

    .line 521
    new-instance v1, Ljava/lang/RuntimeException;

    const-string/jumbo v4, "Assetmanager has been closed"

    invoke-direct {v1, v4}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 519
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1

    .line 523
    :cond_0
    :try_start_1
    invoke-direct {p0, p1, p2}, Landroid/content/res/AssetManager;->openXmlAssetNative(ILjava/lang/String;)J

    move-result-wide v2

    .line 524
    .local v2, "xmlBlock":J
    const-wide/16 v4, 0x0

    cmp-long v1, v2, v4

    if-eqz v1, :cond_1

    .line 525
    new-instance v0, Landroid/content/res/XmlBlock;

    invoke-direct {v0, p0, v2, v3}, Landroid/content/res/XmlBlock;-><init>(Landroid/content/res/AssetManager;J)V

    .line 526
    .local v0, "res":Landroid/content/res/XmlBlock;
    invoke-virtual {v0}, Landroid/content/res/XmlBlock;->hashCode()I

    move-result v1

    int-to-long v4, v1

    invoke-direct {p0, v4, v5}, Landroid/content/res/AssetManager;->incRefsLocked(J)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    .line 527
    return-object v0

    .end local v0    # "res":Landroid/content/res/XmlBlock;
    :cond_1
    monitor-exit p0

    .line 530
    new-instance v1, Ljava/io/FileNotFoundException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Asset XML file: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v1, v4}, Ljava/io/FileNotFoundException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method final openXmlBlockAsset(Ljava/lang/String;)Landroid/content/res/XmlBlock;
    .locals 1
    .param p1, "fileName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 506
    const/4 v0, 0x0

    invoke-virtual {p0, v0, p1}, Landroid/content/res/AssetManager;->openXmlBlockAsset(ILjava/lang/String;)Landroid/content/res/XmlBlock;

    move-result-object v0

    return-object v0
.end method

.method public final openXmlResourceParser(ILjava/lang/String;)Landroid/content/res/XmlResourceParser;
    .locals 2
    .param p1, "cookie"    # I
    .param p2, "fileName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 491
    invoke-virtual {p0, p1, p2}, Landroid/content/res/AssetManager;->openXmlBlockAsset(ILjava/lang/String;)Landroid/content/res/XmlBlock;

    move-result-object v0

    .line 492
    .local v0, "block":Landroid/content/res/XmlBlock;
    invoke-virtual {v0}, Landroid/content/res/XmlBlock;->newParser()Landroid/content/res/XmlResourceParser;

    move-result-object v1

    .line 493
    .local v1, "rp":Landroid/content/res/XmlResourceParser;
    invoke-virtual {v0}, Landroid/content/res/XmlBlock;->close()V

    .line 494
    return-object v1
.end method

.method public final openXmlResourceParser(Ljava/lang/String;)Landroid/content/res/XmlResourceParser;
    .locals 1
    .param p1, "fileName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 480
    const/4 v0, 0x0

    invoke-virtual {p0, v0, p1}, Landroid/content/res/AssetManager;->openXmlResourceParser(ILjava/lang/String;)Landroid/content/res/XmlResourceParser;

    move-result-object v0

    return-object v0
.end method

.method final releaseTheme(J)V
    .locals 1
    .param p1, "theme"    # J

    .prologue
    .line 551
    monitor-enter p0

    .line 552
    :try_start_0
    invoke-direct {p0, p1, p2}, Landroid/content/res/AssetManager;->deleteTheme(J)V

    .line 553
    invoke-direct {p0, p1, p2}, Landroid/content/res/AssetManager;->decRefsLocked(J)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    .line 550
    return-void

    .line 551
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method final native retrieveArray(I[I)I
.end method

.method final native retrieveAttributes(J[I[I[I)Z
.end method

.method public final native setConfiguration(IILjava/lang/String;IIIIIIIIIIIIII)V
.end method

.method xmlBlockGone(I)V
    .locals 2
    .param p1, "id"    # I

    .prologue
    .line 534
    monitor-enter p0

    .line 535
    int-to-long v0, p1

    :try_start_0
    invoke-direct {p0, v0, v1}, Landroid/content/res/AssetManager;->decRefsLocked(J)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    .line 533
    return-void

    .line 534
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
