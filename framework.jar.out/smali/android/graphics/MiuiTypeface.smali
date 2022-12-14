.class public Landroid/graphics/MiuiTypeface;
.super Ljava/lang/Object;
.source "MiuiTypeface.java"


# static fields
.field private static final DROID_SANS:Ljava/lang/String; = "/data/system/theme/fonts/Roboto-Regular.ttf"

.field private static final DROID_SANS_BOLD:Ljava/lang/String; = "/data/system/theme/fonts/Roboto-Bold.ttf"

.field private static final DROID_SANS_FALLBACK:Ljava/lang/String; = "/data/system/theme/fonts/DroidSansFallback.ttf"

.field private static DROID_SANS_FONTS:[Ljava/lang/String; = null

.field private static DROID_SANS_FONTS_BOLD:[Ljava/lang/String; = null

.field public static FLIPFONT:Landroid/graphics/Typeface; = null

.field public static FLIPFONT_BOLD:Landroid/graphics/Typeface; = null

.field public static FLIPFONT_BOLD_ITALIC:Landroid/graphics/Typeface; = null

.field public static FLIPFONT_ITALIC:Landroid/graphics/Typeface; = null

.field private static final FONTS_FOLDER:Ljava/lang/String; = "/data/system/theme/fonts/"

.field public static final MONOSPACE_INDEX:I = 0x3

.field public static final SANS_INDEX:I = 0x1

.field public static final SERIF_INDEX:I = 0x2

.field private static mLastModified:J


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 18
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    .line 19
    const-string/jumbo v1, "/data/system/theme/fonts/DroidSansFallback.ttf"

    aput-object v1, v0, v3

    const-string/jumbo v1, "/data/system/theme/fonts/Roboto-Regular.ttf"

    aput-object v1, v0, v4

    .line 18
    sput-object v0, Landroid/graphics/MiuiTypeface;->DROID_SANS_FONTS:[Ljava/lang/String;

    .line 21
    new-array v0, v4, [Ljava/lang/String;

    .line 22
    const-string/jumbo v1, "/data/system/theme/fonts/Roboto-Bold.ttf"

    aput-object v1, v0, v3

    .line 21
    sput-object v0, Landroid/graphics/MiuiTypeface;->DROID_SANS_FONTS_BOLD:[Ljava/lang/String;

    .line 25
    sput-object v2, Landroid/graphics/MiuiTypeface;->FLIPFONT:Landroid/graphics/Typeface;

    .line 26
    sput-object v2, Landroid/graphics/MiuiTypeface;->FLIPFONT_BOLD:Landroid/graphics/Typeface;

    .line 27
    sput-object v2, Landroid/graphics/MiuiTypeface;->FLIPFONT_ITALIC:Landroid/graphics/Typeface;

    .line 28
    sput-object v2, Landroid/graphics/MiuiTypeface;->FLIPFONT_BOLD_ITALIC:Landroid/graphics/Typeface;

    .line 13
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getChangedTypeface(Landroid/graphics/Typeface;II)Landroid/graphics/Typeface;
    .locals 1
    .param p0, "oldtf"    # Landroid/graphics/Typeface;
    .param p1, "typefaceIndex"    # I
    .param p2, "style"    # I

    .prologue
    .line 47
    invoke-static {p1, p2}, Landroid/graphics/MiuiTypeface;->getTypefaceFlipFont(II)Landroid/graphics/Typeface;

    move-result-object v0

    .line 48
    .local v0, "newtf":Landroid/graphics/Typeface;
    if-eqz v0, :cond_0

    .line 49
    return-object v0

    .line 51
    :cond_0
    return-object p0
.end method

.method public static getDefaultTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;
    .locals 2
    .param p0, "tf"    # Landroid/graphics/Typeface;

    .prologue
    .line 56
    if-nez p0, :cond_0

    .line 57
    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/graphics/MiuiTypeface;->getTypefaceFlipFont(II)Landroid/graphics/Typeface;

    move-result-object p0

    .line 59
    :cond_0
    return-object p0
.end method

.method private static getFlipFontPath(II)Ljava/lang/String;
    .locals 5
    .param p0, "typefaceIndex"    # I
    .param p1, "styleIndex"    # I

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 63
    if-eq p0, v3, :cond_0

    .line 64
    const-string/jumbo v2, ""

    return-object v2

    .line 66
    :cond_0
    const/4 v1, 0x0

    .line 67
    .local v1, "fonts":[Ljava/lang/String;
    if-nez p1, :cond_2

    .line 68
    sget-object v1, Landroid/graphics/MiuiTypeface;->DROID_SANS_FONTS:[Ljava/lang/String;

    .line 73
    .end local v1    # "fonts":[Ljava/lang/String;
    :cond_1
    :goto_0
    array-length v3, v1

    :goto_1
    if-ge v2, v3, :cond_4

    aget-object v0, v1, v2

    .line 74
    .local v0, "font":Ljava/lang/String;
    new-instance v4, Ljava/io/File;

    invoke-direct {v4, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 75
    return-object v0

    .line 69
    .end local v0    # "font":Ljava/lang/String;
    .restart local v1    # "fonts":[Ljava/lang/String;
    :cond_2
    if-ne p1, v3, :cond_1

    .line 70
    sget-object v1, Landroid/graphics/MiuiTypeface;->DROID_SANS_FONTS_BOLD:[Ljava/lang/String;

    .local v1, "fonts":[Ljava/lang/String;
    goto :goto_0

    .line 73
    .end local v1    # "fonts":[Ljava/lang/String;
    .restart local v0    # "font":Ljava/lang/String;
    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 77
    .end local v0    # "font":Ljava/lang/String;
    :cond_4
    const-string/jumbo v2, ""

    return-object v2
.end method

.method private static getTypefaceFlipFont(II)Landroid/graphics/Typeface;
    .locals 2
    .param p0, "typefaceIndex"    # I
    .param p1, "style"    # I

    .prologue
    const/4 v1, 0x0

    .line 37
    const-string/jumbo v0, "is_patchrom"

    invoke-static {v0, v1}, Lmiui/util/FeatureParser;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 38
    const/4 v0, 0x1

    if-eq p0, v0, :cond_1

    .line 40
    :cond_0
    const/4 v0, 0x0

    return-object v0

    .line 39
    :cond_1
    if-ltz p1, :cond_0

    const/4 v0, 0x3

    if-gt p1, v0, :cond_0

    .line 42
    invoke-static {}, Landroid/graphics/MiuiTypeface;->setTypefaceFlipFont()V

    .line 43
    sget-object v0, Landroid/graphics/Typeface;->sDefaults:[Landroid/graphics/Typeface;

    aget-object v0, v0, p1

    return-object v0
.end method

.method private static setTypefaceFlipFont()V
    .locals 12

    .prologue
    const/4 v5, 0x0

    const/4 v11, 0x0

    const/4 v10, 0x3

    const/4 v9, 0x2

    const/4 v8, 0x1

    .line 81
    invoke-static {v8, v11}, Landroid/graphics/MiuiTypeface;->getFlipFontPath(II)Ljava/lang/String;

    move-result-object v3

    .line 82
    .local v3, "fontPath":Ljava/lang/String;
    invoke-static {v8, v8}, Landroid/graphics/MiuiTypeface;->getFlipFontPath(II)Ljava/lang/String;

    move-result-object v1

    .line 83
    .local v1, "fontBoldPath":Ljava/lang/String;
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 84
    .local v2, "fontFile":Ljava/io/File;
    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 85
    sget-object v4, Landroid/graphics/Typeface;->DEFAULT:Landroid/graphics/Typeface;

    sput-object v4, Landroid/graphics/MiuiTypeface;->FLIPFONT:Landroid/graphics/Typeface;

    .line 86
    sget-object v4, Landroid/graphics/Typeface;->DEFAULT_BOLD:Landroid/graphics/Typeface;

    sput-object v4, Landroid/graphics/MiuiTypeface;->FLIPFONT_BOLD:Landroid/graphics/Typeface;

    move-object v4, v5

    .line 87
    check-cast v4, Ljava/lang/String;

    invoke-static {v4, v9}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object v4

    sput-object v4, Landroid/graphics/MiuiTypeface;->FLIPFONT_ITALIC:Landroid/graphics/Typeface;

    .line 88
    check-cast v5, Ljava/lang/String;

    invoke-static {v5, v10}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object v4

    sput-object v4, Landroid/graphics/MiuiTypeface;->FLIPFONT_BOLD_ITALIC:Landroid/graphics/Typeface;

    .line 105
    :cond_0
    :goto_0
    sget-object v4, Landroid/graphics/Typeface;->sDefaults:[Landroid/graphics/Typeface;

    sget-object v5, Landroid/graphics/MiuiTypeface;->FLIPFONT:Landroid/graphics/Typeface;

    aput-object v5, v4, v11

    .line 106
    sget-object v4, Landroid/graphics/Typeface;->sDefaults:[Landroid/graphics/Typeface;

    sget-object v5, Landroid/graphics/MiuiTypeface;->FLIPFONT_BOLD:Landroid/graphics/Typeface;

    aput-object v5, v4, v8

    .line 107
    sget-object v4, Landroid/graphics/Typeface;->sDefaults:[Landroid/graphics/Typeface;

    sget-object v5, Landroid/graphics/MiuiTypeface;->FLIPFONT_ITALIC:Landroid/graphics/Typeface;

    aput-object v5, v4, v9

    .line 108
    sget-object v4, Landroid/graphics/Typeface;->sDefaults:[Landroid/graphics/Typeface;

    sget-object v5, Landroid/graphics/MiuiTypeface;->FLIPFONT_BOLD_ITALIC:Landroid/graphics/Typeface;

    aput-object v5, v4, v10

    .line 80
    return-void

    .line 89
    :cond_1
    sget-wide v4, Landroid/graphics/MiuiTypeface;->mLastModified:J

    invoke-virtual {v2}, Ljava/io/File;->lastModified()J

    move-result-wide v6

    cmp-long v4, v4, v6

    if-eqz v4, :cond_0

    .line 91
    :try_start_0
    invoke-static {v3}, Landroid/graphics/Typeface;->createFromFile(Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v4

    sput-object v4, Landroid/graphics/MiuiTypeface;->FLIPFONT:Landroid/graphics/Typeface;

    .line 94
    invoke-static {v1}, Landroid/graphics/Typeface;->createFromFile(Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v4

    sput-object v4, Landroid/graphics/MiuiTypeface;->FLIPFONT_BOLD:Landroid/graphics/Typeface;
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 100
    :goto_1
    sget-object v4, Landroid/graphics/MiuiTypeface;->FLIPFONT:Landroid/graphics/Typeface;

    invoke-static {v4, v9}, Landroid/graphics/Typeface;->create(Landroid/graphics/Typeface;I)Landroid/graphics/Typeface;

    move-result-object v4

    sput-object v4, Landroid/graphics/MiuiTypeface;->FLIPFONT_ITALIC:Landroid/graphics/Typeface;

    .line 101
    sget-object v4, Landroid/graphics/MiuiTypeface;->FLIPFONT_BOLD:Landroid/graphics/Typeface;

    invoke-static {v4, v10}, Landroid/graphics/Typeface;->create(Landroid/graphics/Typeface;I)Landroid/graphics/Typeface;

    move-result-object v4

    sput-object v4, Landroid/graphics/MiuiTypeface;->FLIPFONT_BOLD_ITALIC:Landroid/graphics/Typeface;

    .line 102
    invoke-virtual {v2}, Ljava/io/File;->lastModified()J

    move-result-wide v4

    sput-wide v4, Landroid/graphics/MiuiTypeface;->mLastModified:J

    goto :goto_0

    .line 95
    :catch_0
    move-exception v0

    .line 98
    .local v0, "e":Ljava/lang/RuntimeException;
    sget-object v4, Landroid/graphics/MiuiTypeface;->FLIPFONT:Landroid/graphics/Typeface;

    invoke-static {v4, v8}, Landroid/graphics/Typeface;->create(Landroid/graphics/Typeface;I)Landroid/graphics/Typeface;

    move-result-object v4

    sput-object v4, Landroid/graphics/MiuiTypeface;->FLIPFONT_BOLD:Landroid/graphics/Typeface;

    goto :goto_1
.end method
