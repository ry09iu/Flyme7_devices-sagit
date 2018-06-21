.class public Landroid/content/pm/PackageParser;
.super Ljava/lang/Object;
.source "PackageParser.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/content/pm/PackageParser$Activity;,
        Landroid/content/pm/PackageParser$ActivityIntentInfo;,
        Landroid/content/pm/PackageParser$ApkLite;,
        Landroid/content/pm/PackageParser$Component;,
        Landroid/content/pm/PackageParser$Instrumentation;,
        Landroid/content/pm/PackageParser$IntentInfo;,
        Landroid/content/pm/PackageParser$NewPermissionInfo;,
        Landroid/content/pm/PackageParser$Package;,
        Landroid/content/pm/PackageParser$PackageLite;,
        Landroid/content/pm/PackageParser$PackageParserException;,
        Landroid/content/pm/PackageParser$ParseComponentArgs;,
        Landroid/content/pm/PackageParser$ParsePackageItemArgs;,
        Landroid/content/pm/PackageParser$Permission;,
        Landroid/content/pm/PackageParser$PermissionGroup;,
        Landroid/content/pm/PackageParser$Provider;,
        Landroid/content/pm/PackageParser$ProviderIntentInfo;,
        Landroid/content/pm/PackageParser$Service;,
        Landroid/content/pm/PackageParser$ServiceIntentInfo;,
        Landroid/content/pm/PackageParser$SplitNameComparator;,
        Landroid/content/pm/PackageParser$SplitPermissionInfo;
    }
.end annotation


# static fields
.field private static final ANDROID_MANIFEST_FILENAME:Ljava/lang/String; = "AndroidManifest.xml"

.field private static final ANDROID_RESOURCES:Ljava/lang/String; = "http://schemas.android.com/apk/res/android"

.field public static final APK_SIGNING_UNKNOWN:I = 0x0

.field public static final APK_SIGNING_V1:I = 0x1

.field public static final APK_SIGNING_V2:I = 0x2

.field private static final CHILD_PACKAGE_TAGS:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final DEBUG_BACKUP:Z = false

.field private static final DEBUG_JAR:Z = false

.field private static final DEBUG_PARSER:Z = false

.field private static final MAX_PACKAGES_PER_APK:I = 0x5

.field private static final MNT_EXPAND:Ljava/lang/String; = "/mnt/expand/"

.field private static final MULTI_PACKAGE_APK_ENABLED:Z = false

.field public static final NEW_PERMISSIONS:[Landroid/content/pm/PackageParser$NewPermissionInfo;

.field public static final PARSE_CHATTY:I = 0x2

.field public static final PARSE_COLLECT_CERTIFICATES:I = 0x100

.field private static final PARSE_DEFAULT_INSTALL_LOCATION:I = -0x1

.field public static final PARSE_ENFORCE_CODE:I = 0x400

.field public static final PARSE_EXTERNAL_STORAGE:I = 0x20

.field public static final PARSE_FORCE_SDK:I = 0x1000

.field public static final PARSE_FORWARD_LOCK:I = 0x10

.field public static final PARSE_IGNORE_PROCESSES:I = 0x8

.field public static final PARSE_IS_EPHEMERAL:I = 0x800

.field public static final PARSE_IS_PRIVILEGED:I = 0x80

.field public static final PARSE_IS_SYSTEM:I = 0x1

.field public static final PARSE_IS_SYSTEM_DIR:I = 0x40

.field public static final PARSE_MUST_BE_APK:I = 0x4

.field public static final PARSE_TRUSTED_OVERLAY:I = 0x200

.field private static final RIGID_PARSER:Z = false

.field private static final SDK_CODENAMES:[Ljava/lang/String;

.field private static final SDK_VERSION:I

.field public static final SPLIT_PERMISSIONS:[Landroid/content/pm/PackageParser$SplitPermissionInfo;

.field private static final TAG:Ljava/lang/String; = "PackageParser"

.field private static final TAG_ADOPT_PERMISSIONS:Ljava/lang/String; = "adopt-permissions"

.field private static final TAG_APPLICATION:Ljava/lang/String; = "application"

.field private static final TAG_COMPATIBLE_SCREENS:Ljava/lang/String; = "compatible-screens"

.field private static final TAG_EAT_COMMENT:Ljava/lang/String; = "eat-comment"

.field private static final TAG_FEATURE_GROUP:Ljava/lang/String; = "feature-group"

.field private static final TAG_INSTRUMENTATION:Ljava/lang/String; = "instrumentation"

.field private static final TAG_KEY_SETS:Ljava/lang/String; = "key-sets"

.field private static final TAG_MANIFEST:Ljava/lang/String; = "manifest"

.field private static final TAG_ORIGINAL_PACKAGE:Ljava/lang/String; = "original-package"

.field private static final TAG_OVERLAY:Ljava/lang/String; = "overlay"

.field private static final TAG_PACKAGE:Ljava/lang/String; = "package"

.field private static final TAG_PERMISSION:Ljava/lang/String; = "permission"

.field private static final TAG_PERMISSION_GROUP:Ljava/lang/String; = "permission-group"

.field private static final TAG_PERMISSION_TREE:Ljava/lang/String; = "permission-tree"

.field private static final TAG_PROTECTED_BROADCAST:Ljava/lang/String; = "protected-broadcast"

.field private static final TAG_RESTRICT_UPDATE:Ljava/lang/String; = "restrict-update"

.field private static final TAG_SUPPORTS_INPUT:Ljava/lang/String; = "supports-input"

.field private static final TAG_SUPPORT_SCREENS:Ljava/lang/String; = "supports-screens"

.field private static final TAG_USES_CONFIGURATION:Ljava/lang/String; = "uses-configuration"

.field private static final TAG_USES_FEATURE:Ljava/lang/String; = "uses-feature"

.field private static final TAG_USES_GL_TEXTURE:Ljava/lang/String; = "uses-gl-texture"

.field private static final TAG_USES_PERMISSION:Ljava/lang/String; = "uses-permission"

.field private static final TAG_USES_PERMISSION_SDK_23:Ljava/lang/String; = "uses-permission-sdk-23"

.field private static final TAG_USES_PERMISSION_SDK_M:Ljava/lang/String; = "uses-permission-sdk-m"

.field private static final TAG_USES_SDK:Ljava/lang/String; = "uses-sdk"

.field private static sBuffer:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference",
            "<[B>;"
        }
    .end annotation
.end field

.field private static sCompatibilityModeEnabled:Z

.field private static final sSplitNameComparator:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mArchiveSourcePath:Ljava/lang/String;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field private mContext:Landroid/content/Context;

.field private mMetrics:Landroid/util/DisplayMetrics;

.field private mOnlyCoreApps:Z

.field private mOnlyPowerOffAlarmApps:Z

.field private mParseActivityAliasArgs:Landroid/content/pm/PackageParser$ParseComponentArgs;

.field private mParseActivityArgs:Landroid/content/pm/PackageParser$ParseComponentArgs;

.field private mParseError:I

.field private mParseInstrumentationArgs:Landroid/content/pm/PackageParser$ParsePackageItemArgs;

.field private mParseProviderArgs:Landroid/content/pm/PackageParser$ParseComponentArgs;

.field private mParseServiceArgs:Landroid/content/pm/PackageParser$ParseComponentArgs;

.field private mSeparateProcesses:[Ljava/lang/String;

.field private mTidyLog:Z


# direct methods
.method static synthetic -wrap0(Landroid/content/pm/PackageParser$Package;Landroid/content/pm/PackageItemInfo;[Ljava/lang/String;Ljava/lang/String;Landroid/content/res/TypedArray;ZIIIIII)Z
    .locals 1
    .param p0, "owner"    # Landroid/content/pm/PackageParser$Package;
    .param p1, "outInfo"    # Landroid/content/pm/PackageItemInfo;
    .param p2, "outError"    # [Ljava/lang/String;
    .param p3, "tag"    # Ljava/lang/String;
    .param p4, "sa"    # Landroid/content/res/TypedArray;
    .param p5, "nameRequired"    # Z
    .param p6, "nameRes"    # I
    .param p7, "labelRes"    # I
    .param p8, "iconRes"    # I
    .param p9, "roundIconRes"    # I
    .param p10, "logoRes"    # I
    .param p11, "bannerRes"    # I

    .prologue
    invoke-static/range {p0 .. p11}, Landroid/content/pm/PackageParser;->parsePackageItemInfo(Landroid/content/pm/PackageParser$Package;Landroid/content/pm/PackageItemInfo;[Ljava/lang/String;Ljava/lang/String;Landroid/content/res/TypedArray;ZIIIIII)Z

    move-result v0

    return v0
.end method

.method static synthetic -wrap1(Ljava/lang/String;Ljava/lang/String;Ljava/lang/CharSequence;I[Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "pkg"    # Ljava/lang/String;
    .param p1, "defProc"    # Ljava/lang/String;
    .param p2, "procSeq"    # Ljava/lang/CharSequence;
    .param p3, "flags"    # I
    .param p4, "separateProcesses"    # [Ljava/lang/String;
    .param p5, "outError"    # [Ljava/lang/String;

    .prologue
    invoke-static/range {p0 .. p5}, Landroid/content/pm/PackageParser;->buildProcessName(Ljava/lang/String;Ljava/lang/String;Ljava/lang/CharSequence;I[Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 9

    .prologue
    const/16 v8, 0x10

    const/4 v3, 0x4

    const/4 v7, 0x2

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 168
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    sput-object v0, Landroid/content/pm/PackageParser;->CHILD_PACKAGE_TAGS:Ljava/util/Set;

    .line 170
    sget-object v0, Landroid/content/pm/PackageParser;->CHILD_PACKAGE_TAGS:Ljava/util/Set;

    const-string/jumbo v1, "application"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 171
    sget-object v0, Landroid/content/pm/PackageParser;->CHILD_PACKAGE_TAGS:Ljava/util/Set;

    const-string/jumbo v1, "uses-permission"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 172
    sget-object v0, Landroid/content/pm/PackageParser;->CHILD_PACKAGE_TAGS:Ljava/util/Set;

    const-string/jumbo v1, "uses-permission-sdk-m"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 173
    sget-object v0, Landroid/content/pm/PackageParser;->CHILD_PACKAGE_TAGS:Ljava/util/Set;

    const-string/jumbo v1, "uses-permission-sdk-23"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 174
    sget-object v0, Landroid/content/pm/PackageParser;->CHILD_PACKAGE_TAGS:Ljava/util/Set;

    const-string/jumbo v1, "uses-configuration"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 175
    sget-object v0, Landroid/content/pm/PackageParser;->CHILD_PACKAGE_TAGS:Ljava/util/Set;

    const-string/jumbo v1, "uses-feature"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 176
    sget-object v0, Landroid/content/pm/PackageParser;->CHILD_PACKAGE_TAGS:Ljava/util/Set;

    const-string/jumbo v1, "feature-group"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 177
    sget-object v0, Landroid/content/pm/PackageParser;->CHILD_PACKAGE_TAGS:Ljava/util/Set;

    const-string/jumbo v1, "uses-sdk"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 178
    sget-object v0, Landroid/content/pm/PackageParser;->CHILD_PACKAGE_TAGS:Ljava/util/Set;

    const-string/jumbo v1, "supports-screens"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 179
    sget-object v0, Landroid/content/pm/PackageParser;->CHILD_PACKAGE_TAGS:Ljava/util/Set;

    const-string/jumbo v1, "instrumentation"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 180
    sget-object v0, Landroid/content/pm/PackageParser;->CHILD_PACKAGE_TAGS:Ljava/util/Set;

    const-string/jumbo v1, "uses-gl-texture"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 181
    sget-object v0, Landroid/content/pm/PackageParser;->CHILD_PACKAGE_TAGS:Ljava/util/Set;

    const-string/jumbo v1, "compatible-screens"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 182
    sget-object v0, Landroid/content/pm/PackageParser;->CHILD_PACKAGE_TAGS:Ljava/util/Set;

    const-string/jumbo v1, "supports-input"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 183
    sget-object v0, Landroid/content/pm/PackageParser;->CHILD_PACKAGE_TAGS:Ljava/util/Set;

    const-string/jumbo v1, "eat-comment"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 222
    new-array v0, v7, [Landroid/content/pm/PackageParser$NewPermissionInfo;

    .line 223
    new-instance v1, Landroid/content/pm/PackageParser$NewPermissionInfo;

    const-string/jumbo v2, "android.permission.WRITE_EXTERNAL_STORAGE"

    invoke-direct {v1, v2, v3, v5}, Landroid/content/pm/PackageParser$NewPermissionInfo;-><init>(Ljava/lang/String;II)V

    aput-object v1, v0, v5

    .line 225
    new-instance v1, Landroid/content/pm/PackageParser$NewPermissionInfo;

    const-string/jumbo v2, "android.permission.READ_PHONE_STATE"

    invoke-direct {v1, v2, v3, v5}, Landroid/content/pm/PackageParser$NewPermissionInfo;-><init>(Ljava/lang/String;II)V

    aput-object v1, v0, v6

    .line 221
    sput-object v0, Landroid/content/pm/PackageParser;->NEW_PERMISSIONS:[Landroid/content/pm/PackageParser$NewPermissionInfo;

    .line 235
    const/4 v0, 0x3

    new-array v0, v0, [Landroid/content/pm/PackageParser$SplitPermissionInfo;

    .line 240
    new-instance v1, Landroid/content/pm/PackageParser$SplitPermissionInfo;

    const-string/jumbo v2, "android.permission.WRITE_EXTERNAL_STORAGE"

    .line 241
    new-array v3, v6, [Ljava/lang/String;

    const-string/jumbo v4, "android.permission.READ_EXTERNAL_STORAGE"

    aput-object v4, v3, v5

    .line 242
    const/16 v4, 0x2711

    .line 240
    invoke-direct {v1, v2, v3, v4}, Landroid/content/pm/PackageParser$SplitPermissionInfo;-><init>(Ljava/lang/String;[Ljava/lang/String;I)V

    aput-object v1, v0, v5

    .line 243
    new-instance v1, Landroid/content/pm/PackageParser$SplitPermissionInfo;

    const-string/jumbo v2, "android.permission.READ_CONTACTS"

    .line 244
    new-array v3, v6, [Ljava/lang/String;

    const-string/jumbo v4, "android.permission.READ_CALL_LOG"

    aput-object v4, v3, v5

    .line 243
    invoke-direct {v1, v2, v3, v8}, Landroid/content/pm/PackageParser$SplitPermissionInfo;-><init>(Ljava/lang/String;[Ljava/lang/String;I)V

    aput-object v1, v0, v6

    .line 246
    new-instance v1, Landroid/content/pm/PackageParser$SplitPermissionInfo;

    const-string/jumbo v2, "android.permission.WRITE_CONTACTS"

    .line 247
    new-array v3, v6, [Ljava/lang/String;

    const-string/jumbo v4, "android.permission.WRITE_CALL_LOG"

    aput-object v4, v3, v5

    .line 246
    invoke-direct {v1, v2, v3, v8}, Landroid/content/pm/PackageParser$SplitPermissionInfo;-><init>(Ljava/lang/String;[Ljava/lang/String;I)V

    aput-object v1, v0, v7

    .line 234
    sput-object v0, Landroid/content/pm/PackageParser;->SPLIT_PERMISSIONS:[Landroid/content/pm/PackageParser$SplitPermissionInfo;

    .line 262
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    sput v0, Landroid/content/pm/PackageParser;->SDK_VERSION:I

    .line 263
    sget-object v0, Landroid/os/Build$VERSION;->ACTIVE_CODENAMES:[Ljava/lang/String;

    sput-object v0, Landroid/content/pm/PackageParser;->SDK_CODENAMES:[Ljava/lang/String;

    .line 267
    sput-boolean v6, Landroid/content/pm/PackageParser;->sCompatibilityModeEnabled:Z

    .line 686
    new-instance v0, Landroid/content/pm/PackageParser$SplitNameComparator;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroid/content/pm/PackageParser$SplitNameComparator;-><init>(Landroid/content/pm/PackageParser$SplitNameComparator;)V

    sput-object v0, Landroid/content/pm/PackageParser;->sSplitNameComparator:Ljava/util/Comparator;

    .line 5806
    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    sput-object v0, Landroid/content/pm/PackageParser;->sBuffer:Ljava/util/concurrent/atomic/AtomicReference;

    .line 118
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 436
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 265
    const/4 v0, 0x1

    iput v0, p0, Landroid/content/pm/PackageParser;->mParseError:I

    .line 434
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/content/pm/PackageParser;->mTidyLog:Z

    .line 437
    new-instance v0, Landroid/util/DisplayMetrics;

    invoke-direct {v0}, Landroid/util/DisplayMetrics;-><init>()V

    iput-object v0, p0, Landroid/content/pm/PackageParser;->mMetrics:Landroid/util/DisplayMetrics;

    .line 438
    iget-object v0, p0, Landroid/content/pm/PackageParser;->mMetrics:Landroid/util/DisplayMetrics;

    invoke-virtual {v0}, Landroid/util/DisplayMetrics;->setToDefaults()V

    .line 436
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 442
    invoke-direct {p0}, Landroid/content/pm/PackageParser;-><init>()V

    .line 443
    iput-object p1, p0, Landroid/content/pm/PackageParser;->mContext:Landroid/content/Context;

    .line 441
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Z)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "tidy"    # Z

    .prologue
    .line 448
    invoke-direct {p0, p1}, Landroid/content/pm/PackageParser;-><init>(Landroid/content/Context;)V

    .line 449
    iput-boolean p2, p0, Landroid/content/pm/PackageParser;->mTidyLog:Z

    .line 447
    return-void
.end method

.method private static buildClassName(Ljava/lang/String;Ljava/lang/CharSequence;[Ljava/lang/String;)Ljava/lang/String;
    .locals 7
    .param p0, "pkg"    # Ljava/lang/String;
    .param p1, "clsSeq"    # Ljava/lang/CharSequence;
    .param p2, "outError"    # [Ljava/lang/String;

    .prologue
    const/4 v6, 0x0

    const/16 v4, 0x2e

    const/4 v5, 0x0

    .line 2344
    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v3

    if-gtz v3, :cond_1

    .line 2345
    :cond_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Empty class name in package "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, p2, v5

    .line 2346
    return-object v6

    .line 2348
    :cond_1
    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    .line 2349
    .local v2, "cls":Ljava/lang/String;
    invoke-virtual {v2, v5}, Ljava/lang/String;->charAt(I)C

    move-result v1

    .line 2350
    .local v1, "c":C
    if-ne v1, v4, :cond_2

    .line 2351
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v3

    return-object v3

    .line 2353
    :cond_2
    invoke-virtual {v2, v4}, Ljava/lang/String;->indexOf(I)I

    move-result v3

    if-gez v3, :cond_3

    .line 2354
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, p0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 2355
    .local v0, "b":Ljava/lang/StringBuilder;
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 2356
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2357
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v3

    return-object v3

    .line 2359
    .end local v0    # "b":Ljava/lang/StringBuilder;
    :cond_3
    invoke-virtual {v2}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v3

    return-object v3
.end method

.method private static buildCompoundName(Ljava/lang/String;Ljava/lang/CharSequence;Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;
    .locals 9
    .param p0, "pkg"    # Ljava/lang/String;
    .param p1, "procSeq"    # Ljava/lang/CharSequence;
    .param p2, "type"    # Ljava/lang/String;
    .param p3, "outError"    # [Ljava/lang/String;

    .prologue
    const/4 v8, 0x1

    const/4 v7, 0x0

    const/4 v6, 0x0

    .line 2364
    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    .line 2365
    .local v2, "proc":Ljava/lang/String;
    invoke-virtual {v2, v6}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 2366
    .local v0, "c":C
    if-eqz p0, :cond_2

    const/16 v4, 0x3a

    if-ne v0, v4, :cond_2

    .line 2367
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v4

    const/4 v5, 0x2

    if-ge v4, v5, :cond_0

    .line 2368
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Bad "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " name "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " in package "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 2369
    const-string/jumbo v5, ": must be at least two characters"

    .line 2368
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    aput-object v4, p3, v6

    .line 2370
    return-object v7

    .line 2372
    :cond_0
    invoke-virtual {v2, v8}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    .line 2373
    .local v3, "subName":Ljava/lang/String;
    invoke-static {v3, v6, v6}, Landroid/content/pm/PackageParser;->validateName(Ljava/lang/String;ZZ)Ljava/lang/String;

    move-result-object v1

    .line 2374
    .local v1, "nameError":Ljava/lang/String;
    if-eqz v1, :cond_1

    .line 2375
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Invalid "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " name "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " in package "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 2376
    const-string/jumbo v5, ": "

    .line 2375
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    aput-object v4, p3, v6

    .line 2377
    return-object v7

    .line 2379
    :cond_1
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v4

    return-object v4

    .line 2381
    .end local v1    # "nameError":Ljava/lang/String;
    .end local v3    # "subName":Ljava/lang/String;
    :cond_2
    invoke-static {v2, v8, v6}, Landroid/content/pm/PackageParser;->validateName(Ljava/lang/String;ZZ)Ljava/lang/String;

    move-result-object v1

    .line 2382
    .restart local v1    # "nameError":Ljava/lang/String;
    if-eqz v1, :cond_3

    const-string/jumbo v4, "system"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 2387
    :cond_3
    invoke-virtual {v2}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v4

    return-object v4

    .line 2383
    :cond_4
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Invalid "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " name "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " in package "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 2384
    const-string/jumbo v5, ": "

    .line 2383
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    aput-object v4, p3, v6

    .line 2385
    return-object v7
.end method

.method private static buildProcessName(Ljava/lang/String;Ljava/lang/String;Ljava/lang/CharSequence;I[Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p0, "pkg"    # Ljava/lang/String;
    .param p1, "defProc"    # Ljava/lang/String;
    .param p2, "procSeq"    # Ljava/lang/CharSequence;
    .param p3, "flags"    # I
    .param p4, "separateProcesses"    # [Ljava/lang/String;
    .param p5, "outError"    # [Ljava/lang/String;

    .prologue
    .line 2393
    and-int/lit8 v2, p3, 0x8

    if-eqz v2, :cond_0

    const-string/jumbo v2, "system"

    invoke-virtual {v2, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 2396
    :cond_0
    if-eqz p4, :cond_5

    .line 2397
    array-length v2, p4

    add-int/lit8 v0, v2, -0x1

    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_5

    .line 2398
    aget-object v1, p4, v0

    .line 2399
    .local v1, "sp":Ljava/lang/String;
    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    invoke-virtual {v1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 2400
    :cond_1
    return-object p0

    .line 2394
    .end local v0    # "i":I
    .end local v1    # "sp":Ljava/lang/String;
    :cond_2
    if-eqz p1, :cond_3

    .end local p1    # "defProc":Ljava/lang/String;
    :goto_1
    return-object p1

    .restart local p1    # "defProc":Ljava/lang/String;
    :cond_3
    move-object p1, p0

    goto :goto_1

    .line 2397
    .restart local v0    # "i":I
    .restart local v1    # "sp":Ljava/lang/String;
    :cond_4
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 2404
    .end local v0    # "i":I
    .end local v1    # "sp":Ljava/lang/String;
    :cond_5
    if-eqz p2, :cond_6

    invoke-interface {p2}, Ljava/lang/CharSequence;->length()I

    move-result v2

    if-gtz v2, :cond_7

    .line 2405
    :cond_6
    return-object p1

    .line 2407
    :cond_7
    const-string/jumbo v2, "process"

    invoke-static {p0, p2, v2, p5}, Landroid/content/pm/PackageParser;->buildCompoundName(Ljava/lang/String;Ljava/lang/CharSequence;Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method private static buildTaskAffinityName(Ljava/lang/String;Ljava/lang/String;Ljava/lang/CharSequence;[Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p0, "pkg"    # Ljava/lang/String;
    .param p1, "defProc"    # Ljava/lang/String;
    .param p2, "procSeq"    # Ljava/lang/CharSequence;
    .param p3, "outError"    # [Ljava/lang/String;

    .prologue
    const/4 v1, 0x0

    .line 2412
    if-nez p2, :cond_0

    .line 2413
    return-object p1

    .line 2415
    :cond_0
    invoke-interface {p2}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-gtz v0, :cond_1

    .line 2416
    return-object v1

    .line 2418
    :cond_1
    const-string/jumbo v0, "taskAffinity"

    invoke-static {p0, p2, v0, p3}, Landroid/content/pm/PackageParser;->buildCompoundName(Ljava/lang/String;Ljava/lang/CharSequence;Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static checkUseInstalledOrHidden(ILandroid/content/pm/PackageUserState;)Z
    .locals 3
    .param p0, "flags"    # I
    .param p1, "state"    # Landroid/content/pm/PackageUserState;

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 501
    iget-boolean v2, p1, Landroid/content/pm/PackageUserState;->installed:Z

    if-eqz v2, :cond_0

    iget-boolean v2, p1, Landroid/content/pm/PackageUserState;->hidden:Z

    if-eqz v2, :cond_1

    .line 502
    :cond_0
    and-int/lit16 v2, p0, 0x2000

    if-eqz v2, :cond_2

    .line 501
    :cond_1
    :goto_0
    return v0

    :cond_2
    move v0, v1

    .line 502
    goto :goto_0
.end method

.method public static closeQuietly(Landroid/util/jar/StrictJarFile;)V
    .locals 1
    .param p0, "jarFile"    # Landroid/util/jar/StrictJarFile;

    .prologue
    .line 5825
    if-eqz p0, :cond_0

    .line 5827
    :try_start_0
    invoke-virtual {p0}, Landroid/util/jar/StrictJarFile;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 5824
    :cond_0
    :goto_0
    return-void

    .line 5828
    :catch_0
    move-exception v0

    .local v0, "ignored":Ljava/lang/Exception;
    goto :goto_0
.end method

.method public static collectCertificates(Landroid/content/pm/PackageParser$Package;I)V
    .locals 4
    .param p0, "pkg"    # Landroid/content/pm/PackageParser$Package;
    .param p1, "parseFlags"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/pm/PackageParser$PackageParserException;
        }
    .end annotation

    .prologue
    .line 1186
    invoke-static {p0, p1}, Landroid/content/pm/PackageParser;->collectCertificatesInternal(Landroid/content/pm/PackageParser$Package;I)V

    .line 1187
    iget-object v3, p0, Landroid/content/pm/PackageParser$Package;->childPackages:Ljava/util/ArrayList;

    if-eqz v3, :cond_0

    iget-object v3, p0, Landroid/content/pm/PackageParser$Package;->childPackages:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 1188
    .local v0, "childCount":I
    :goto_0
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1
    if-ge v2, v0, :cond_1

    .line 1189
    iget-object v3, p0, Landroid/content/pm/PackageParser$Package;->childPackages:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/PackageParser$Package;

    .line 1190
    .local v1, "childPkg":Landroid/content/pm/PackageParser$Package;
    iget-object v3, p0, Landroid/content/pm/PackageParser$Package;->mCertificates:[[Ljava/security/cert/Certificate;

    iput-object v3, v1, Landroid/content/pm/PackageParser$Package;->mCertificates:[[Ljava/security/cert/Certificate;

    .line 1191
    iget-object v3, p0, Landroid/content/pm/PackageParser$Package;->mSignatures:[Landroid/content/pm/Signature;

    iput-object v3, v1, Landroid/content/pm/PackageParser$Package;->mSignatures:[Landroid/content/pm/Signature;

    .line 1192
    iget-object v3, p0, Landroid/content/pm/PackageParser$Package;->mSigningKeys:Landroid/util/ArraySet;

    iput-object v3, v1, Landroid/content/pm/PackageParser$Package;->mSigningKeys:Landroid/util/ArraySet;

    .line 1188
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 1187
    .end local v0    # "childCount":I
    .end local v1    # "childPkg":Landroid/content/pm/PackageParser$Package;
    .end local v2    # "i":I
    :cond_0
    const/4 v0, 0x0

    .restart local v0    # "childCount":I
    goto :goto_0

    .line 1185
    .restart local v2    # "i":I
    :cond_1
    return-void
.end method

.method private static collectCertificates(Landroid/content/pm/PackageParser$Package;Ljava/io/File;I)V
    .locals 28
    .param p0, "pkg"    # Landroid/content/pm/PackageParser$Package;
    .param p1, "apkFile"    # Ljava/io/File;
    .param p2, "parseFlags"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/pm/PackageParser$PackageParserException;
        }
    .end annotation

    .prologue
    .line 1218
    invoke-virtual/range {p1 .. p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v5

    .line 1221
    .local v5, "apkPath":Ljava/lang/String;
    const/16 v24, 0x0

    .line 1223
    .local v24, "verified":Z
    const/4 v4, 0x0

    .line 1224
    .local v4, "allSignersCerts":[[Ljava/security/cert/Certificate;
    const/16 v20, 0x0

    .line 1226
    .local v20, "signatures":[Landroid/content/pm/Signature;
    :try_start_0
    const-string/jumbo v25, "verifyV2"

    const-wide/32 v26, 0x40000

    move-wide/from16 v0, v26

    move-object/from16 v2, v25

    invoke-static {v0, v1, v2}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 1227
    invoke-static {v5}, Landroid/util/apk/ApkSignatureSchemeV2Verifier;->verify(Ljava/lang/String;)[[Ljava/security/cert/X509Certificate;

    move-result-object v4

    .line 1228
    .local v4, "allSignersCerts":[[Ljava/security/cert/Certificate;
    invoke-static {v4}, Landroid/content/pm/PackageParser;->convertToSignatures([[Ljava/security/cert/Certificate;)[Landroid/content/pm/Signature;
    :try_end_0
    .catch Landroid/util/apk/ApkSignatureSchemeV2Verifier$SignatureNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v20

    .line 1230
    .local v20, "signatures":[Landroid/content/pm/Signature;
    const/16 v24, 0x1

    .line 1240
    const-wide/32 v26, 0x40000

    invoke-static/range {v26 .. v27}, Landroid/os/Trace;->traceEnd(J)V

    .line 1243
    .end local v4    # "allSignersCerts":[[Ljava/security/cert/Certificate;
    .end local v20    # "signatures":[Landroid/content/pm/Signature;
    :goto_0
    if-eqz v24, :cond_1

    .line 1244
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/content/pm/PackageParser$Package;->mCertificates:[[Ljava/security/cert/Certificate;

    move-object/from16 v25, v0

    if-nez v25, :cond_0

    .line 1245
    move-object/from16 v0, p0

    iput-object v4, v0, Landroid/content/pm/PackageParser$Package;->mCertificates:[[Ljava/security/cert/Certificate;

    .line 1246
    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/content/pm/PackageParser$Package;->mSignatures:[Landroid/content/pm/Signature;

    .line 1247
    new-instance v25, Landroid/util/ArraySet;

    array-length v0, v4

    move/from16 v26, v0

    invoke-direct/range {v25 .. v26}, Landroid/util/ArraySet;-><init>(I)V

    move-object/from16 v0, v25

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/content/pm/PackageParser$Package;->mSigningKeys:Landroid/util/ArraySet;

    .line 1248
    const/4 v14, 0x0

    .local v14, "i":I
    :goto_1
    array-length v0, v4

    move/from16 v25, v0

    move/from16 v0, v25

    if-ge v14, v0, :cond_1

    .line 1249
    aget-object v22, v4, v14

    .line 1250
    .local v22, "signerCerts":[Ljava/security/cert/Certificate;
    const/16 v25, 0x0

    aget-object v21, v22, v25

    .line 1251
    .local v21, "signerCert":Ljava/security/cert/Certificate;
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/content/pm/PackageParser$Package;->mSigningKeys:Landroid/util/ArraySet;

    move-object/from16 v25, v0

    invoke-virtual/range {v21 .. v21}, Ljava/security/cert/Certificate;->getPublicKey()Ljava/security/PublicKey;

    move-result-object v26

    invoke-virtual/range {v25 .. v26}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 1248
    add-int/lit8 v14, v14, 0x1

    goto :goto_1

    .line 1233
    .end local v14    # "i":I
    .end local v21    # "signerCert":Ljava/security/cert/Certificate;
    .end local v22    # "signerCerts":[Ljava/security/cert/Certificate;
    .local v20, "signatures":[Landroid/content/pm/Signature;
    :catch_0
    move-exception v7

    .line 1235
    .local v7, "e":Ljava/lang/Exception;
    :try_start_1
    new-instance v25, Landroid/content/pm/PackageParser$PackageParserException;

    .line 1236
    new-instance v26, Ljava/lang/StringBuilder;

    invoke-direct/range {v26 .. v26}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v27, "Failed to collect certificates from "

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    move-object/from16 v0, v26

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    .line 1237
    const-string/jumbo v27, " using APK Signature Scheme v2"

    .line 1236
    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v26

    .line 1235
    const/16 v27, -0x67

    move-object/from16 v0, v25

    move/from16 v1, v27

    move-object/from16 v2, v26

    invoke-direct {v0, v1, v2, v7}, Landroid/content/pm/PackageParser$PackageParserException;-><init>(ILjava/lang/String;Ljava/lang/Throwable;)V

    throw v25
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1239
    .end local v7    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v25

    .line 1240
    const-wide/32 v26, 0x40000

    invoke-static/range {v26 .. v27}, Landroid/os/Trace;->traceEnd(J)V

    .line 1239
    throw v25

    .line 1231
    :catch_1
    move-exception v6

    .line 1240
    .local v6, "e":Landroid/util/apk/ApkSignatureSchemeV2Verifier$SignatureNotFoundException;
    const-wide/32 v26, 0x40000

    invoke-static/range {v26 .. v27}, Landroid/os/Trace;->traceEnd(J)V

    goto :goto_0

    .line 1254
    .end local v6    # "e":Landroid/util/apk/ApkSignatureSchemeV2Verifier$SignatureNotFoundException;
    .end local v20    # "signatures":[Landroid/content/pm/Signature;
    :cond_0
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/content/pm/PackageParser$Package;->mSignatures:[Landroid/content/pm/Signature;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    move-object/from16 v1, v20

    invoke-static {v0, v1}, Landroid/content/pm/Signature;->areExactMatch([Landroid/content/pm/Signature;[Landroid/content/pm/Signature;)Z

    move-result v25

    if-nez v25, :cond_1

    .line 1255
    new-instance v25, Landroid/content/pm/PackageParser$PackageParserException;

    .line 1257
    new-instance v26, Ljava/lang/StringBuilder;

    invoke-direct/range {v26 .. v26}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v26

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    const-string/jumbo v27, " has mismatched certificates"

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v26

    .line 1256
    const/16 v27, -0x68

    .line 1255
    move-object/from16 v0, v25

    move/from16 v1, v27

    move-object/from16 v2, v26

    invoke-direct {v0, v1, v2}, Landroid/content/pm/PackageParser$PackageParserException;-><init>(ILjava/lang/String;)V

    throw v25

    .line 1265
    :cond_1
    const/16 v16, 0x0

    .line 1267
    .local v16, "jarFile":Landroid/util/jar/StrictJarFile;
    :try_start_2
    const-string/jumbo v25, "strictJarFileCtor"

    const-wide/32 v26, 0x40000

    move-wide/from16 v0, v26

    move-object/from16 v2, v25

    invoke-static {v0, v1, v2}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 1272
    and-int/lit8 v25, p2, 0x40

    if-nez v25, :cond_2

    const/16 v19, 0x1

    .line 1273
    .local v19, "signatureSchemeRollbackProtectionsEnforced":Z
    :goto_2
    new-instance v17, Landroid/util/jar/StrictJarFile;

    .line 1275
    if-eqz v24, :cond_3

    const/16 v25, 0x0

    .line 1273
    :goto_3
    move-object/from16 v0, v17

    move/from16 v1, v25

    move/from16 v2, v19

    invoke-direct {v0, v5, v1, v2}, Landroid/util/jar/StrictJarFile;-><init>(Ljava/lang/String;ZZ)V
    :try_end_2
    .catch Ljava/security/GeneralSecurityException; {:try_start_2 .. :try_end_2} :catch_4
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_5
    .catch Ljava/lang/RuntimeException; {:try_start_2 .. :try_end_2} :catch_5
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 1277
    .local v17, "jarFile":Landroid/util/jar/StrictJarFile;
    const-wide/32 v26, 0x40000

    :try_start_3
    invoke-static/range {v26 .. v27}, Landroid/os/Trace;->traceEnd(J)V

    .line 1280
    .end local v16    # "jarFile":Landroid/util/jar/StrictJarFile;
    const-string/jumbo v25, "AndroidManifest.xml"

    move-object/from16 v0, v17

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/util/jar/StrictJarFile;->findEntry(Ljava/lang/String;)Ljava/util/zip/ZipEntry;

    move-result-object v18

    .line 1281
    .local v18, "manifestEntry":Ljava/util/zip/ZipEntry;
    if-nez v18, :cond_4

    .line 1282
    new-instance v25, Landroid/content/pm/PackageParser$PackageParserException;

    .line 1283
    new-instance v26, Ljava/lang/StringBuilder;

    invoke-direct/range {v26 .. v26}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v27, "Package "

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    move-object/from16 v0, v26

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    const-string/jumbo v27, " has no manifest"

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v26

    .line 1282
    const/16 v27, -0x65

    move-object/from16 v0, v25

    move/from16 v1, v27

    move-object/from16 v2, v26

    invoke-direct {v0, v1, v2}, Landroid/content/pm/PackageParser$PackageParserException;-><init>(ILjava/lang/String;)V

    throw v25
    :try_end_3
    .catch Ljava/security/GeneralSecurityException; {:try_start_3 .. :try_end_3} :catch_2
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_3
    .catch Ljava/lang/RuntimeException; {:try_start_3 .. :try_end_3} :catch_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 1341
    .end local v18    # "manifestEntry":Ljava/util/zip/ZipEntry;
    :catch_2
    move-exception v8

    .local v8, "e":Ljava/security/GeneralSecurityException;
    move-object/from16 v16, v17

    .line 1342
    .end local v17    # "jarFile":Landroid/util/jar/StrictJarFile;
    .end local v19    # "signatureSchemeRollbackProtectionsEnforced":Z
    :goto_4
    :try_start_4
    new-instance v25, Landroid/content/pm/PackageParser$PackageParserException;

    .line 1343
    new-instance v26, Ljava/lang/StringBuilder;

    invoke-direct/range {v26 .. v26}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v27, "Failed to collect certificates from "

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    move-object/from16 v0, v26

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v26

    .line 1342
    const/16 v27, -0x69

    move-object/from16 v0, v25

    move/from16 v1, v27

    move-object/from16 v2, v26

    invoke-direct {v0, v1, v2, v8}, Landroid/content/pm/PackageParser$PackageParserException;-><init>(ILjava/lang/String;Ljava/lang/Throwable;)V

    throw v25
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 1347
    .end local v8    # "e":Ljava/security/GeneralSecurityException;
    :catchall_1
    move-exception v25

    .line 1348
    :goto_5
    invoke-static/range {v16 .. v16}, Landroid/content/pm/PackageParser;->closeQuietly(Landroid/util/jar/StrictJarFile;)V

    .line 1347
    throw v25

    .line 1272
    .restart local v16    # "jarFile":Landroid/util/jar/StrictJarFile;
    :cond_2
    const/16 v19, 0x0

    .restart local v19    # "signatureSchemeRollbackProtectionsEnforced":Z
    goto :goto_2

    .line 1275
    :cond_3
    const/16 v25, 0x1

    goto :goto_3

    .line 1287
    .end local v16    # "jarFile":Landroid/util/jar/StrictJarFile;
    .restart local v17    # "jarFile":Landroid/util/jar/StrictJarFile;
    .restart local v18    # "manifestEntry":Ljava/util/zip/ZipEntry;
    :cond_4
    if-eqz v24, :cond_5

    .line 1348
    invoke-static/range {v17 .. v17}, Landroid/content/pm/PackageParser;->closeQuietly(Landroid/util/jar/StrictJarFile;)V

    .line 1288
    return-void

    .line 1292
    :cond_5
    :try_start_5
    const-string/jumbo v25, "verifyV1"

    const-wide/32 v26, 0x40000

    move-wide/from16 v0, v26

    move-object/from16 v2, v25

    invoke-static {v0, v1, v2}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 1293
    new-instance v23, Ljava/util/ArrayList;

    invoke-direct/range {v23 .. v23}, Ljava/util/ArrayList;-><init>()V

    .line 1294
    .local v23, "toVerify":Ljava/util/List;, "Ljava/util/List<Ljava/util/zip/ZipEntry;>;"
    move-object/from16 v0, v23

    move-object/from16 v1, v18

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1297
    and-int/lit8 v25, p2, 0x40

    if-nez v25, :cond_7

    .line 1298
    invoke-virtual/range {v17 .. v17}, Landroid/util/jar/StrictJarFile;->iterator()Ljava/util/Iterator;

    move-result-object v15

    .line 1299
    .local v15, "i":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/zip/ZipEntry;>;"
    :cond_6
    :goto_6
    invoke-interface {v15}, Ljava/util/Iterator;->hasNext()Z

    move-result v25

    if-eqz v25, :cond_7

    .line 1300
    invoke-interface {v15}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/zip/ZipEntry;

    .line 1302
    .local v9, "entry":Ljava/util/zip/ZipEntry;
    invoke-virtual {v9}, Ljava/util/zip/ZipEntry;->isDirectory()Z

    move-result v25

    if-nez v25, :cond_6

    .line 1304
    invoke-virtual {v9}, Ljava/util/zip/ZipEntry;->getName()Ljava/lang/String;

    move-result-object v12

    .line 1305
    .local v12, "entryName":Ljava/lang/String;
    const-string/jumbo v25, "META-INF/"

    move-object/from16 v0, v25

    invoke-virtual {v12, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v25

    if-nez v25, :cond_6

    .line 1306
    const-string/jumbo v25, "AndroidManifest.xml"

    move-object/from16 v0, v25

    invoke-virtual {v12, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v25

    if-nez v25, :cond_6

    .line 1308
    move-object/from16 v0, v23

    invoke-interface {v0, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_5
    .catch Ljava/security/GeneralSecurityException; {:try_start_5 .. :try_end_5} :catch_2
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_3
    .catch Ljava/lang/RuntimeException; {:try_start_5 .. :try_end_5} :catch_3
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    goto :goto_6

    .line 1344
    .end local v9    # "entry":Ljava/util/zip/ZipEntry;
    .end local v12    # "entryName":Ljava/lang/String;
    .end local v15    # "i":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/zip/ZipEntry;>;"
    .end local v18    # "manifestEntry":Ljava/util/zip/ZipEntry;
    .end local v23    # "toVerify":Ljava/util/List;, "Ljava/util/List<Ljava/util/zip/ZipEntry;>;"
    :catch_3
    move-exception v7

    .restart local v7    # "e":Ljava/lang/Exception;
    move-object/from16 v16, v17

    .line 1345
    .end local v17    # "jarFile":Landroid/util/jar/StrictJarFile;
    .end local v19    # "signatureSchemeRollbackProtectionsEnforced":Z
    :goto_7
    :try_start_6
    new-instance v25, Landroid/content/pm/PackageParser$PackageParserException;

    .line 1346
    new-instance v26, Ljava/lang/StringBuilder;

    invoke-direct/range {v26 .. v26}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v27, "Failed to collect certificates from "

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    move-object/from16 v0, v26

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v26

    .line 1345
    const/16 v27, -0x67

    move-object/from16 v0, v25

    move/from16 v1, v27

    move-object/from16 v2, v26

    invoke-direct {v0, v1, v2, v7}, Landroid/content/pm/PackageParser$PackageParserException;-><init>(ILjava/lang/String;Ljava/lang/Throwable;)V

    throw v25
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .line 1315
    .end local v7    # "e":Ljava/lang/Exception;
    .restart local v17    # "jarFile":Landroid/util/jar/StrictJarFile;
    .restart local v18    # "manifestEntry":Ljava/util/zip/ZipEntry;
    .restart local v19    # "signatureSchemeRollbackProtectionsEnforced":Z
    .restart local v23    # "toVerify":Ljava/util/List;, "Ljava/util/List<Ljava/util/zip/ZipEntry;>;"
    :cond_7
    :try_start_7
    invoke-interface/range {v23 .. v23}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v10

    .local v10, "entry$iterator":Ljava/util/Iterator;
    :cond_8
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v25

    if-eqz v25, :cond_b

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/zip/ZipEntry;

    .line 1316
    .restart local v9    # "entry":Ljava/util/zip/ZipEntry;
    move-object/from16 v0, v17

    invoke-static {v0, v9}, Landroid/content/pm/PackageParser;->loadCertificates(Landroid/util/jar/StrictJarFile;Ljava/util/zip/ZipEntry;)[[Ljava/security/cert/Certificate;

    move-result-object v11

    .line 1317
    .local v11, "entryCerts":[[Ljava/security/cert/Certificate;
    invoke-static {v11}, Lcom/android/internal/util/ArrayUtils;->isEmpty([Ljava/lang/Object;)Z

    move-result v25

    if-eqz v25, :cond_9

    .line 1318
    new-instance v25, Landroid/content/pm/PackageParser$PackageParserException;

    .line 1319
    new-instance v26, Ljava/lang/StringBuilder;

    invoke-direct/range {v26 .. v26}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v27, "Package "

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    move-object/from16 v0, v26

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    const-string/jumbo v27, " has no certificates at entry "

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    .line 1320
    invoke-virtual {v9}, Ljava/util/zip/ZipEntry;->getName()Ljava/lang/String;

    move-result-object v27

    .line 1319
    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v26

    .line 1318
    const/16 v27, -0x67

    move-object/from16 v0, v25

    move/from16 v1, v27

    move-object/from16 v2, v26

    invoke-direct {v0, v1, v2}, Landroid/content/pm/PackageParser$PackageParserException;-><init>(ILjava/lang/String;)V

    throw v25

    .line 1347
    .end local v9    # "entry":Ljava/util/zip/ZipEntry;
    .end local v10    # "entry$iterator":Ljava/util/Iterator;
    .end local v11    # "entryCerts":[[Ljava/security/cert/Certificate;
    .end local v18    # "manifestEntry":Ljava/util/zip/ZipEntry;
    .end local v23    # "toVerify":Ljava/util/List;, "Ljava/util/List<Ljava/util/zip/ZipEntry;>;"
    :catchall_2
    move-exception v25

    move-object/from16 v16, v17

    .end local v17    # "jarFile":Landroid/util/jar/StrictJarFile;
    .local v16, "jarFile":Landroid/util/jar/StrictJarFile;
    goto/16 :goto_5

    .line 1322
    .end local v16    # "jarFile":Landroid/util/jar/StrictJarFile;
    .restart local v9    # "entry":Ljava/util/zip/ZipEntry;
    .restart local v10    # "entry$iterator":Ljava/util/Iterator;
    .restart local v11    # "entryCerts":[[Ljava/security/cert/Certificate;
    .restart local v17    # "jarFile":Landroid/util/jar/StrictJarFile;
    .restart local v18    # "manifestEntry":Ljava/util/zip/ZipEntry;
    .restart local v23    # "toVerify":Ljava/util/List;, "Ljava/util/List<Ljava/util/zip/ZipEntry;>;"
    :cond_9
    invoke-static {v11}, Landroid/content/pm/PackageParser;->convertToSignatures([[Ljava/security/cert/Certificate;)[Landroid/content/pm/Signature;

    move-result-object v13

    .line 1324
    .local v13, "entrySignatures":[Landroid/content/pm/Signature;
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/content/pm/PackageParser$Package;->mCertificates:[[Ljava/security/cert/Certificate;

    move-object/from16 v25, v0

    if-nez v25, :cond_a

    .line 1325
    move-object/from16 v0, p0

    iput-object v11, v0, Landroid/content/pm/PackageParser$Package;->mCertificates:[[Ljava/security/cert/Certificate;

    .line 1326
    move-object/from16 v0, p0

    iput-object v13, v0, Landroid/content/pm/PackageParser$Package;->mSignatures:[Landroid/content/pm/Signature;

    .line 1327
    new-instance v25, Landroid/util/ArraySet;

    invoke-direct/range {v25 .. v25}, Landroid/util/ArraySet;-><init>()V

    move-object/from16 v0, v25

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/content/pm/PackageParser$Package;->mSigningKeys:Landroid/util/ArraySet;

    .line 1328
    const/4 v14, 0x0

    .restart local v14    # "i":I
    :goto_8
    array-length v0, v11

    move/from16 v25, v0

    move/from16 v0, v25

    if-ge v14, v0, :cond_8

    .line 1329
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/content/pm/PackageParser$Package;->mSigningKeys:Landroid/util/ArraySet;

    move-object/from16 v25, v0

    aget-object v26, v11, v14

    const/16 v27, 0x0

    aget-object v26, v26, v27

    invoke-virtual/range {v26 .. v26}, Ljava/security/cert/Certificate;->getPublicKey()Ljava/security/PublicKey;

    move-result-object v26

    invoke-virtual/range {v25 .. v26}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 1328
    add-int/lit8 v14, v14, 0x1

    goto :goto_8

    .line 1332
    .end local v14    # "i":I
    :cond_a
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/content/pm/PackageParser$Package;->mSignatures:[Landroid/content/pm/Signature;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    invoke-static {v0, v13}, Landroid/content/pm/Signature;->areExactMatch([Landroid/content/pm/Signature;[Landroid/content/pm/Signature;)Z

    move-result v25

    if-nez v25, :cond_8

    .line 1333
    new-instance v25, Landroid/content/pm/PackageParser$PackageParserException;

    .line 1334
    new-instance v26, Ljava/lang/StringBuilder;

    invoke-direct/range {v26 .. v26}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v27, "Package "

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    move-object/from16 v0, v26

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    .line 1335
    const-string/jumbo v27, " has mismatched certificates at entry "

    .line 1334
    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    .line 1336
    invoke-virtual {v9}, Ljava/util/zip/ZipEntry;->getName()Ljava/lang/String;

    move-result-object v27

    .line 1334
    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v26

    const/16 v27, -0x68

    .line 1333
    move-object/from16 v0, v25

    move/from16 v1, v27

    move-object/from16 v2, v26

    invoke-direct {v0, v1, v2}, Landroid/content/pm/PackageParser$PackageParserException;-><init>(ILjava/lang/String;)V

    throw v25

    .line 1340
    .end local v9    # "entry":Ljava/util/zip/ZipEntry;
    .end local v11    # "entryCerts":[[Ljava/security/cert/Certificate;
    .end local v13    # "entrySignatures":[Landroid/content/pm/Signature;
    :cond_b
    const-wide/32 v26, 0x40000

    invoke-static/range {v26 .. v27}, Landroid/os/Trace;->traceEnd(J)V
    :try_end_7
    .catch Ljava/security/GeneralSecurityException; {:try_start_7 .. :try_end_7} :catch_2
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_3
    .catch Ljava/lang/RuntimeException; {:try_start_7 .. :try_end_7} :catch_3
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    .line 1348
    invoke-static/range {v17 .. v17}, Landroid/content/pm/PackageParser;->closeQuietly(Landroid/util/jar/StrictJarFile;)V

    .line 1217
    return-void

    .line 1341
    .end local v10    # "entry$iterator":Ljava/util/Iterator;
    .end local v17    # "jarFile":Landroid/util/jar/StrictJarFile;
    .end local v18    # "manifestEntry":Ljava/util/zip/ZipEntry;
    .end local v19    # "signatureSchemeRollbackProtectionsEnforced":Z
    .end local v23    # "toVerify":Ljava/util/List;, "Ljava/util/List<Ljava/util/zip/ZipEntry;>;"
    .local v16, "jarFile":Landroid/util/jar/StrictJarFile;
    :catch_4
    move-exception v8

    .restart local v8    # "e":Ljava/security/GeneralSecurityException;
    goto/16 :goto_4

    .line 1344
    .end local v8    # "e":Ljava/security/GeneralSecurityException;
    :catch_5
    move-exception v7

    .restart local v7    # "e":Ljava/lang/Exception;
    goto/16 :goto_7
.end method

.method private static collectCertificatesInternal(Landroid/content/pm/PackageParser$Package;I)V
    .locals 6
    .param p0, "pkg"    # Landroid/content/pm/PackageParser$Package;
    .param p1, "parseFlags"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/pm/PackageParser$PackageParserException;
        }
    .end annotation

    .prologue
    const-wide/32 v4, 0x40000

    const/4 v1, 0x0

    .line 1198
    iput-object v1, p0, Landroid/content/pm/PackageParser$Package;->mCertificates:[[Ljava/security/cert/Certificate;

    .line 1199
    iput-object v1, p0, Landroid/content/pm/PackageParser$Package;->mSignatures:[Landroid/content/pm/Signature;

    .line 1200
    iput-object v1, p0, Landroid/content/pm/PackageParser$Package;->mSigningKeys:Landroid/util/ArraySet;

    .line 1202
    const-string/jumbo v1, "collectCertificates"

    invoke-static {v4, v5, v1}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 1204
    :try_start_0
    new-instance v1, Ljava/io/File;

    iget-object v2, p0, Landroid/content/pm/PackageParser$Package;->baseCodePath:Ljava/lang/String;

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {p0, v1, p1}, Landroid/content/pm/PackageParser;->collectCertificates(Landroid/content/pm/PackageParser$Package;Ljava/io/File;I)V

    .line 1206
    iget-object v1, p0, Landroid/content/pm/PackageParser$Package;->splitCodePaths:[Ljava/lang/String;

    invoke-static {v1}, Lcom/android/internal/util/ArrayUtils;->isEmpty([Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 1207
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Landroid/content/pm/PackageParser$Package;->splitCodePaths:[Ljava/lang/String;

    array-length v1, v1

    if-ge v0, v1, :cond_0

    .line 1208
    new-instance v1, Ljava/io/File;

    iget-object v2, p0, Landroid/content/pm/PackageParser$Package;->splitCodePaths:[Ljava/lang/String;

    aget-object v2, v2, v0

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {p0, v1, p1}, Landroid/content/pm/PackageParser;->collectCertificates(Landroid/content/pm/PackageParser$Package;Ljava/io/File;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1207
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1212
    .end local v0    # "i":I
    :cond_0
    invoke-static {v4, v5}, Landroid/os/Trace;->traceEnd(J)V

    .line 1197
    return-void

    .line 1211
    :catchall_0
    move-exception v1

    .line 1212
    invoke-static {v4, v5}, Landroid/os/Trace;->traceEnd(J)V

    .line 1211
    throw v1
.end method

.method private static convertToSignatures([[Ljava/security/cert/Certificate;)[Landroid/content/pm/Signature;
    .locals 4
    .param p0, "certs"    # [[Ljava/security/cert/Certificate;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateEncodingException;
        }
    .end annotation

    .prologue
    .line 1354
    array-length v2, p0

    new-array v1, v2, [Landroid/content/pm/Signature;

    .line 1355
    .local v1, "res":[Landroid/content/pm/Signature;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v2, p0

    if-ge v0, v2, :cond_0

    .line 1356
    new-instance v2, Landroid/content/pm/Signature;

    aget-object v3, p0, v0

    invoke-direct {v2, v3}, Landroid/content/pm/Signature;-><init>([Ljava/security/cert/Certificate;)V

    aput-object v2, v1, v0

    .line 1355
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1358
    :cond_0
    return-object v1
.end method

.method private static copyNeeded(ILandroid/content/pm/PackageParser$Package;Landroid/content/pm/PackageUserState;Landroid/os/Bundle;I)Z
    .locals 6
    .param p0, "flags"    # I
    .param p1, "p"    # Landroid/content/pm/PackageParser$Package;
    .param p2, "state"    # Landroid/content/pm/PackageUserState;
    .param p3, "metaData"    # Landroid/os/Bundle;
    .param p4, "userId"    # I

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 5403
    if-eqz p4, :cond_0

    .line 5406
    return v4

    .line 5408
    :cond_0
    iget v2, p2, Landroid/content/pm/PackageUserState;->enabled:I

    if-eqz v2, :cond_2

    .line 5409
    iget v2, p2, Landroid/content/pm/PackageUserState;->enabled:I

    if-ne v2, v4, :cond_1

    const/4 v0, 0x1

    .line 5410
    .local v0, "enabled":Z
    :goto_0
    iget-object v2, p1, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-boolean v2, v2, Landroid/content/pm/ApplicationInfo;->enabled:Z

    if-eq v2, v0, :cond_2

    .line 5411
    return v4

    .line 5409
    .end local v0    # "enabled":Z
    :cond_1
    const/4 v0, 0x0

    .restart local v0    # "enabled":Z
    goto :goto_0

    .line 5414
    .end local v0    # "enabled":Z
    :cond_2
    iget-object v2, p1, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v2, v2, Landroid/content/pm/ApplicationInfo;->flags:I

    const/high16 v3, 0x40000000    # 2.0f

    and-int/2addr v2, v3

    if-eqz v2, :cond_3

    const/4 v1, 0x1

    .line 5415
    .local v1, "suspended":Z
    :goto_1
    iget-boolean v2, p2, Landroid/content/pm/PackageUserState;->suspended:Z

    if-eq v2, v1, :cond_4

    .line 5416
    return v4

    .line 5414
    .end local v1    # "suspended":Z
    :cond_3
    const/4 v1, 0x0

    .restart local v1    # "suspended":Z
    goto :goto_1

    .line 5418
    :cond_4
    iget-boolean v2, p2, Landroid/content/pm/PackageUserState;->installed:Z

    if-eqz v2, :cond_5

    iget-boolean v2, p2, Landroid/content/pm/PackageUserState;->hidden:Z

    if-eqz v2, :cond_6

    .line 5419
    :cond_5
    return v4

    .line 5421
    :cond_6
    iget-boolean v2, p2, Landroid/content/pm/PackageUserState;->stopped:Z

    if-eqz v2, :cond_7

    .line 5422
    return v4

    .line 5424
    :cond_7
    and-int/lit16 v2, p0, 0x80

    if-eqz v2, :cond_9

    .line 5425
    if-nez p3, :cond_8

    iget-object v2, p1, Landroid/content/pm/PackageParser$Package;->mAppMetaData:Landroid/os/Bundle;

    if-eqz v2, :cond_9

    .line 5426
    :cond_8
    return v4

    .line 5428
    :cond_9
    and-int/lit16 v2, p0, 0x400

    if-eqz v2, :cond_a

    .line 5429
    iget-object v2, p1, Landroid/content/pm/PackageParser$Package;->usesLibraryFiles:[Ljava/lang/String;

    if-eqz v2, :cond_a

    .line 5430
    return v4

    .line 5432
    :cond_a
    return v5
.end method

.method public static final generateActivityInfo(Landroid/content/pm/ActivityInfo;ILandroid/content/pm/PackageUserState;I)Landroid/content/pm/ActivityInfo;
    .locals 3
    .param p0, "ai"    # Landroid/content/pm/ActivityInfo;
    .param p1, "flags"    # I
    .param p2, "state"    # Landroid/content/pm/PackageUserState;
    .param p3, "userId"    # I

    .prologue
    const/4 v2, 0x0

    .line 5594
    if-nez p0, :cond_0

    return-object v2

    .line 5595
    :cond_0
    invoke-static {p1, p2}, Landroid/content/pm/PackageParser;->checkUseInstalledOrHidden(ILandroid/content/pm/PackageUserState;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 5596
    return-object v2

    .line 5600
    :cond_1
    new-instance v0, Landroid/content/pm/ActivityInfo;

    invoke-direct {v0, p0}, Landroid/content/pm/ActivityInfo;-><init>(Landroid/content/pm/ActivityInfo;)V

    .line 5601
    .end local p0    # "ai":Landroid/content/pm/ActivityInfo;
    .local v0, "ai":Landroid/content/pm/ActivityInfo;
    iget-object v1, v0, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-static {v1, p1, p2, p3}, Landroid/content/pm/PackageParser;->generateApplicationInfo(Landroid/content/pm/ApplicationInfo;ILandroid/content/pm/PackageUserState;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v1

    iput-object v1, v0, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    .line 5602
    return-object v0
.end method

.method public static final generateActivityInfo(Landroid/content/pm/PackageParser$Activity;ILandroid/content/pm/PackageUserState;I)Landroid/content/pm/ActivityInfo;
    .locals 3
    .param p0, "a"    # Landroid/content/pm/PackageParser$Activity;
    .param p1, "flags"    # I
    .param p2, "state"    # Landroid/content/pm/PackageUserState;
    .param p3, "userId"    # I

    .prologue
    const/4 v2, 0x0

    .line 5578
    if-nez p0, :cond_0

    return-object v2

    .line 5579
    :cond_0
    invoke-static {p1, p2}, Landroid/content/pm/PackageParser;->checkUseInstalledOrHidden(ILandroid/content/pm/PackageUserState;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 5580
    return-object v2

    .line 5582
    :cond_1
    iget-object v1, p0, Landroid/content/pm/PackageParser$Activity;->owner:Landroid/content/pm/PackageParser$Package;

    iget-object v2, p0, Landroid/content/pm/PackageParser$Activity;->metaData:Landroid/os/Bundle;

    invoke-static {p1, v1, p2, v2, p3}, Landroid/content/pm/PackageParser;->copyNeeded(ILandroid/content/pm/PackageParser$Package;Landroid/content/pm/PackageUserState;Landroid/os/Bundle;I)Z

    move-result v1

    if-nez v1, :cond_2

    .line 5583
    iget-object v1, p0, Landroid/content/pm/PackageParser$Activity;->info:Landroid/content/pm/ActivityInfo;

    return-object v1

    .line 5586
    :cond_2
    new-instance v0, Landroid/content/pm/ActivityInfo;

    iget-object v1, p0, Landroid/content/pm/PackageParser$Activity;->info:Landroid/content/pm/ActivityInfo;

    invoke-direct {v0, v1}, Landroid/content/pm/ActivityInfo;-><init>(Landroid/content/pm/ActivityInfo;)V

    .line 5587
    .local v0, "ai":Landroid/content/pm/ActivityInfo;
    iget-object v1, p0, Landroid/content/pm/PackageParser$Activity;->metaData:Landroid/os/Bundle;

    iput-object v1, v0, Landroid/content/pm/ActivityInfo;->metaData:Landroid/os/Bundle;

    .line 5588
    iget-object v1, p0, Landroid/content/pm/PackageParser$Activity;->owner:Landroid/content/pm/PackageParser$Package;

    invoke-static {v1, p1, p2, p3}, Landroid/content/pm/PackageParser;->generateApplicationInfo(Landroid/content/pm/PackageParser$Package;ILandroid/content/pm/PackageUserState;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v1

    iput-object v1, v0, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    .line 5589
    return-object v0
.end method

.method public static generateApplicationInfo(Landroid/content/pm/ApplicationInfo;ILandroid/content/pm/PackageUserState;I)Landroid/content/pm/ApplicationInfo;
    .locals 3
    .param p0, "ai"    # Landroid/content/pm/ApplicationInfo;
    .param p1, "flags"    # I
    .param p2, "state"    # Landroid/content/pm/PackageUserState;
    .param p3, "userId"    # I

    .prologue
    const/4 v2, 0x0

    .line 5512
    if-nez p0, :cond_0

    return-object v2

    .line 5513
    :cond_0
    invoke-static {p1, p2}, Landroid/content/pm/PackageParser;->checkUseInstalledOrHidden(ILandroid/content/pm/PackageUserState;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 5514
    return-object v2

    .line 5518
    :cond_1
    new-instance v0, Landroid/content/pm/ApplicationInfo;

    invoke-direct {v0, p0}, Landroid/content/pm/ApplicationInfo;-><init>(Landroid/content/pm/ApplicationInfo;)V

    .line 5519
    .end local p0    # "ai":Landroid/content/pm/ApplicationInfo;
    .local v0, "ai":Landroid/content/pm/ApplicationInfo;
    invoke-virtual {v0, p3}, Landroid/content/pm/ApplicationInfo;->initForUser(I)V

    .line 5520
    iget-boolean v1, p2, Landroid/content/pm/PackageUserState;->stopped:Z

    if-eqz v1, :cond_2

    .line 5521
    iget v1, v0, Landroid/content/pm/ApplicationInfo;->flags:I

    const/high16 v2, 0x200000

    or-int/2addr v1, v2

    iput v1, v0, Landroid/content/pm/ApplicationInfo;->flags:I

    .line 5525
    :goto_0
    invoke-static {v0, p1, p2}, Landroid/content/pm/PackageParser;->updateApplicationInfo(Landroid/content/pm/ApplicationInfo;ILandroid/content/pm/PackageUserState;)V

    .line 5526
    return-object v0

    .line 5523
    :cond_2
    iget v1, v0, Landroid/content/pm/ApplicationInfo;->flags:I

    const v2, -0x200001

    and-int/2addr v1, v2

    iput v1, v0, Landroid/content/pm/ApplicationInfo;->flags:I

    goto :goto_0
.end method

.method public static generateApplicationInfo(Landroid/content/pm/PackageParser$Package;ILandroid/content/pm/PackageUserState;)Landroid/content/pm/ApplicationInfo;
    .locals 1
    .param p0, "p"    # Landroid/content/pm/PackageParser$Package;
    .param p1, "flags"    # I
    .param p2, "state"    # Landroid/content/pm/PackageUserState;

    .prologue
    .line 5437
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v0

    invoke-static {p0, p1, p2, v0}, Landroid/content/pm/PackageParser;->generateApplicationInfo(Landroid/content/pm/PackageParser$Package;ILandroid/content/pm/PackageUserState;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    return-object v0
.end method

.method public static generateApplicationInfo(Landroid/content/pm/PackageParser$Package;ILandroid/content/pm/PackageUserState;I)Landroid/content/pm/ApplicationInfo;
    .locals 3
    .param p0, "p"    # Landroid/content/pm/PackageParser$Package;
    .param p1, "flags"    # I
    .param p2, "state"    # Landroid/content/pm/PackageUserState;
    .param p3, "userId"    # I

    .prologue
    const/4 v2, 0x0

    .line 5474
    if-nez p0, :cond_0

    return-object v2

    .line 5475
    :cond_0
    invoke-static {p1, p2}, Landroid/content/pm/PackageParser;->checkUseInstalledOrHidden(ILandroid/content/pm/PackageUserState;)Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-virtual {p0, p1}, Landroid/content/pm/PackageParser$Package;->isMatch(I)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 5478
    invoke-static {p1, p0, p2, v2, p3}, Landroid/content/pm/PackageParser;->copyNeeded(ILandroid/content/pm/PackageParser$Package;Landroid/content/pm/PackageUserState;Landroid/os/Bundle;I)Z

    move-result v1

    if-nez v1, :cond_3

    .line 5479
    const v1, 0x8000

    and-int/2addr v1, p1

    if-eqz v1, :cond_1

    .line 5480
    iget v1, p2, Landroid/content/pm/PackageUserState;->enabled:I

    const/4 v2, 0x4

    if-eq v1, v2, :cond_3

    .line 5488
    :cond_1
    iget-object v1, p0, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-static {v1, p1, p2}, Landroid/content/pm/PackageParser;->updateApplicationInfo(Landroid/content/pm/ApplicationInfo;ILandroid/content/pm/PackageUserState;)V

    .line 5489
    iget-object v1, p0, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    return-object v1

    .line 5476
    :cond_2
    return-object v2

    .line 5493
    :cond_3
    new-instance v0, Landroid/content/pm/ApplicationInfo;

    iget-object v1, p0, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-direct {v0, v1}, Landroid/content/pm/ApplicationInfo;-><init>(Landroid/content/pm/ApplicationInfo;)V

    .line 5494
    .local v0, "ai":Landroid/content/pm/ApplicationInfo;
    invoke-virtual {v0, p3}, Landroid/content/pm/ApplicationInfo;->initForUser(I)V

    .line 5495
    and-int/lit16 v1, p1, 0x80

    if-eqz v1, :cond_4

    .line 5496
    iget-object v1, p0, Landroid/content/pm/PackageParser$Package;->mAppMetaData:Landroid/os/Bundle;

    iput-object v1, v0, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    .line 5498
    :cond_4
    and-int/lit16 v1, p1, 0x400

    if-eqz v1, :cond_5

    .line 5499
    iget-object v1, p0, Landroid/content/pm/PackageParser$Package;->usesLibraryFiles:[Ljava/lang/String;

    iput-object v1, v0, Landroid/content/pm/ApplicationInfo;->sharedLibraryFiles:[Ljava/lang/String;

    .line 5501
    :cond_5
    iget-boolean v1, p2, Landroid/content/pm/PackageUserState;->stopped:Z

    if-eqz v1, :cond_6

    .line 5502
    iget v1, v0, Landroid/content/pm/ApplicationInfo;->flags:I

    const/high16 v2, 0x200000

    or-int/2addr v1, v2

    iput v1, v0, Landroid/content/pm/ApplicationInfo;->flags:I

    .line 5506
    :goto_0
    invoke-static {v0, p1, p2}, Landroid/content/pm/PackageParser;->updateApplicationInfo(Landroid/content/pm/ApplicationInfo;ILandroid/content/pm/PackageUserState;)V

    .line 5507
    return-object v0

    .line 5504
    :cond_6
    iget v1, v0, Landroid/content/pm/ApplicationInfo;->flags:I

    const v2, -0x200001

    and-int/2addr v1, v2

    iput v1, v0, Landroid/content/pm/ApplicationInfo;->flags:I

    goto :goto_0
.end method

.method public static final generateInstrumentationInfo(Landroid/content/pm/PackageParser$Instrumentation;I)Landroid/content/pm/InstrumentationInfo;
    .locals 2
    .param p0, "i"    # Landroid/content/pm/PackageParser$Instrumentation;
    .param p1, "flags"    # I

    .prologue
    const/4 v1, 0x0

    .line 5726
    if-nez p0, :cond_0

    return-object v1

    .line 5727
    :cond_0
    and-int/lit16 v1, p1, 0x80

    if-nez v1, :cond_1

    .line 5728
    iget-object v1, p0, Landroid/content/pm/PackageParser$Instrumentation;->info:Landroid/content/pm/InstrumentationInfo;

    return-object v1

    .line 5730
    :cond_1
    new-instance v0, Landroid/content/pm/InstrumentationInfo;

    iget-object v1, p0, Landroid/content/pm/PackageParser$Instrumentation;->info:Landroid/content/pm/InstrumentationInfo;

    invoke-direct {v0, v1}, Landroid/content/pm/InstrumentationInfo;-><init>(Landroid/content/pm/InstrumentationInfo;)V

    .line 5731
    .local v0, "ii":Landroid/content/pm/InstrumentationInfo;
    iget-object v1, p0, Landroid/content/pm/PackageParser$Instrumentation;->metaData:Landroid/os/Bundle;

    iput-object v1, v0, Landroid/content/pm/InstrumentationInfo;->metaData:Landroid/os/Bundle;

    .line 5732
    return-object v0
.end method

.method public static generatePackageInfo(Landroid/content/pm/PackageParser$Package;[IIJJLjava/util/Set;Landroid/content/pm/PackageUserState;)Landroid/content/pm/PackageInfo;
    .locals 11
    .param p0, "p"    # Landroid/content/pm/PackageParser$Package;
    .param p1, "gids"    # [I
    .param p2, "flags"    # I
    .param p3, "firstInstallTime"    # J
    .param p5, "lastUpdateTime"    # J
    .param p8, "state"    # Landroid/content/pm/PackageUserState;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/pm/PackageParser$Package;",
            "[IIJJ",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Landroid/content/pm/PackageUserState;",
            ")",
            "Landroid/content/pm/PackageInfo;"
        }
    .end annotation

    .prologue
    .line 493
    .local p7, "grantedPermissions":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v10

    move-object v1, p0

    move-object v2, p1

    move v3, p2

    move-wide v4, p3

    move-wide/from16 v6, p5

    move-object/from16 v8, p7

    move-object/from16 v9, p8

    .line 492
    invoke-static/range {v1 .. v10}, Landroid/content/pm/PackageParser;->generatePackageInfo(Landroid/content/pm/PackageParser$Package;[IIJJLjava/util/Set;Landroid/content/pm/PackageUserState;I)Landroid/content/pm/PackageInfo;

    move-result-object v0

    return-object v0
.end method

.method public static generatePackageInfo(Landroid/content/pm/PackageParser$Package;[IIJJLjava/util/Set;Landroid/content/pm/PackageUserState;I)Landroid/content/pm/PackageInfo;
    .locals 21
    .param p0, "p"    # Landroid/content/pm/PackageParser$Package;
    .param p1, "gids"    # [I
    .param p2, "flags"    # I
    .param p3, "firstInstallTime"    # J
    .param p5, "lastUpdateTime"    # J
    .param p8, "state"    # Landroid/content/pm/PackageUserState;
    .param p9, "userId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/pm/PackageParser$Package;",
            "[IIJJ",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Landroid/content/pm/PackageUserState;",
            "I)",
            "Landroid/content/pm/PackageInfo;"
        }
    .end annotation

    .prologue
    .line 512
    .local p7, "grantedPermissions":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    move/from16 v0, p2

    move-object/from16 v1, p8

    invoke-static {v0, v1}, Landroid/content/pm/PackageParser;->checkUseInstalledOrHidden(ILandroid/content/pm/PackageUserState;)Z

    move-result v16

    if-eqz v16, :cond_6

    move-object/from16 v0, p0

    move/from16 v1, p2

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageParser$Package;->isMatch(I)Z

    move-result v16

    if-eqz v16, :cond_6

    .line 515
    new-instance v10, Landroid/content/pm/PackageInfo;

    invoke-direct {v10}, Landroid/content/pm/PackageInfo;-><init>()V

    .line 516
    .local v10, "pi":Landroid/content/pm/PackageInfo;
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/content/pm/PackageParser$Package;->packageName:Ljava/lang/String;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    iput-object v0, v10, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    .line 517
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/content/pm/PackageParser$Package;->splitNames:[Ljava/lang/String;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    iput-object v0, v10, Landroid/content/pm/PackageInfo;->splitNames:[Ljava/lang/String;

    .line 518
    move-object/from16 v0, p0

    iget v0, v0, Landroid/content/pm/PackageParser$Package;->mVersionCode:I

    move/from16 v16, v0

    move/from16 v0, v16

    iput v0, v10, Landroid/content/pm/PackageInfo;->versionCode:I

    .line 519
    move-object/from16 v0, p0

    iget v0, v0, Landroid/content/pm/PackageParser$Package;->baseRevisionCode:I

    move/from16 v16, v0

    move/from16 v0, v16

    iput v0, v10, Landroid/content/pm/PackageInfo;->baseRevisionCode:I

    .line 520
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/content/pm/PackageParser$Package;->splitRevisionCodes:[I

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    iput-object v0, v10, Landroid/content/pm/PackageInfo;->splitRevisionCodes:[I

    .line 521
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/content/pm/PackageParser$Package;->mVersionName:Ljava/lang/String;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    iput-object v0, v10, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    .line 522
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/content/pm/PackageParser$Package;->mSharedUserId:Ljava/lang/String;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    iput-object v0, v10, Landroid/content/pm/PackageInfo;->sharedUserId:Ljava/lang/String;

    .line 523
    move-object/from16 v0, p0

    iget v0, v0, Landroid/content/pm/PackageParser$Package;->mSharedUserLabel:I

    move/from16 v16, v0

    move/from16 v0, v16

    iput v0, v10, Landroid/content/pm/PackageInfo;->sharedUserLabel:I

    .line 524
    move-object/from16 v0, p0

    move/from16 v1, p2

    move-object/from16 v2, p8

    move/from16 v3, p9

    invoke-static {v0, v1, v2, v3}, Landroid/content/pm/PackageParser;->generateApplicationInfo(Landroid/content/pm/PackageParser$Package;ILandroid/content/pm/PackageUserState;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v16

    move-object/from16 v0, v16

    iput-object v0, v10, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    .line 525
    move-object/from16 v0, p0

    iget v0, v0, Landroid/content/pm/PackageParser$Package;->installLocation:I

    move/from16 v16, v0

    move/from16 v0, v16

    iput v0, v10, Landroid/content/pm/PackageInfo;->installLocation:I

    .line 526
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/content/pm/PackageParser$Package;->coreApp:Z

    move/from16 v16, v0

    move/from16 v0, v16

    iput-boolean v0, v10, Landroid/content/pm/PackageInfo;->coreApp:Z

    .line 527
    iget-object v0, v10, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->flags:I

    move/from16 v16, v0

    and-int/lit8 v16, v16, 0x1

    if-nez v16, :cond_0

    .line 528
    iget-object v0, v10, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->flags:I

    move/from16 v16, v0

    move/from16 v0, v16

    and-int/lit16 v0, v0, 0x80

    move/from16 v16, v0

    if-eqz v16, :cond_1

    .line 529
    :cond_0
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/content/pm/PackageParser$Package;->mRequiredForAllUsers:Z

    move/from16 v16, v0

    move/from16 v0, v16

    iput-boolean v0, v10, Landroid/content/pm/PackageInfo;->requiredForAllUsers:Z

    .line 531
    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/content/pm/PackageParser$Package;->mRestrictedAccountType:Ljava/lang/String;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    iput-object v0, v10, Landroid/content/pm/PackageInfo;->restrictedAccountType:Ljava/lang/String;

    .line 532
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/content/pm/PackageParser$Package;->mRequiredAccountType:Ljava/lang/String;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    iput-object v0, v10, Landroid/content/pm/PackageInfo;->requiredAccountType:Ljava/lang/String;

    .line 533
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/content/pm/PackageParser$Package;->mOverlayTarget:Ljava/lang/String;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    iput-object v0, v10, Landroid/content/pm/PackageInfo;->overlayTarget:Ljava/lang/String;

    .line 534
    move-wide/from16 v0, p3

    iput-wide v0, v10, Landroid/content/pm/PackageInfo;->firstInstallTime:J

    .line 535
    move-wide/from16 v0, p5

    iput-wide v0, v10, Landroid/content/pm/PackageInfo;->lastUpdateTime:J

    .line 536
    move/from16 v0, p2

    and-int/lit16 v0, v0, 0x100

    move/from16 v16, v0

    if-eqz v16, :cond_2

    .line 537
    move-object/from16 v0, p1

    iput-object v0, v10, Landroid/content/pm/PackageInfo;->gids:[I

    .line 539
    :cond_2
    move/from16 v0, p2

    and-int/lit16 v0, v0, 0x4000

    move/from16 v16, v0

    if-eqz v16, :cond_5

    .line 540
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/content/pm/PackageParser$Package;->configPreferences:Ljava/util/ArrayList;

    move-object/from16 v16, v0

    if-eqz v16, :cond_7

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/content/pm/PackageParser$Package;->configPreferences:Ljava/util/ArrayList;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Ljava/util/ArrayList;->size()I

    move-result v4

    .line 541
    .local v4, "N":I
    :goto_0
    if-lez v4, :cond_3

    .line 542
    new-array v0, v4, [Landroid/content/pm/ConfigurationInfo;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    iput-object v0, v10, Landroid/content/pm/PackageInfo;->configPreferences:[Landroid/content/pm/ConfigurationInfo;

    .line 543
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/content/pm/PackageParser$Package;->configPreferences:Ljava/util/ArrayList;

    move-object/from16 v16, v0

    iget-object v0, v10, Landroid/content/pm/PackageInfo;->configPreferences:[Landroid/content/pm/ConfigurationInfo;

    move-object/from16 v17, v0

    invoke-virtual/range {v16 .. v17}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 545
    :cond_3
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/content/pm/PackageParser$Package;->reqFeatures:Ljava/util/ArrayList;

    move-object/from16 v16, v0

    if-eqz v16, :cond_8

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/content/pm/PackageParser$Package;->reqFeatures:Ljava/util/ArrayList;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Ljava/util/ArrayList;->size()I

    move-result v4

    .line 546
    :goto_1
    if-lez v4, :cond_4

    .line 547
    new-array v0, v4, [Landroid/content/pm/FeatureInfo;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    iput-object v0, v10, Landroid/content/pm/PackageInfo;->reqFeatures:[Landroid/content/pm/FeatureInfo;

    .line 548
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/content/pm/PackageParser$Package;->reqFeatures:Ljava/util/ArrayList;

    move-object/from16 v16, v0

    iget-object v0, v10, Landroid/content/pm/PackageInfo;->reqFeatures:[Landroid/content/pm/FeatureInfo;

    move-object/from16 v17, v0

    invoke-virtual/range {v16 .. v17}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 550
    :cond_4
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/content/pm/PackageParser$Package;->featureGroups:Ljava/util/ArrayList;

    move-object/from16 v16, v0

    if-eqz v16, :cond_9

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/content/pm/PackageParser$Package;->featureGroups:Ljava/util/ArrayList;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Ljava/util/ArrayList;->size()I

    move-result v4

    .line 551
    :goto_2
    if-lez v4, :cond_5

    .line 552
    new-array v0, v4, [Landroid/content/pm/FeatureGroupInfo;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    iput-object v0, v10, Landroid/content/pm/PackageInfo;->featureGroups:[Landroid/content/pm/FeatureGroupInfo;

    .line 553
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/content/pm/PackageParser$Package;->featureGroups:Ljava/util/ArrayList;

    move-object/from16 v16, v0

    iget-object v0, v10, Landroid/content/pm/PackageInfo;->featureGroups:[Landroid/content/pm/FeatureGroupInfo;

    move-object/from16 v17, v0

    invoke-virtual/range {v16 .. v17}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 556
    .end local v4    # "N":I
    :cond_5
    and-int/lit8 v16, p2, 0x1

    if-eqz v16, :cond_b

    .line 557
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/content/pm/PackageParser$Package;->activities:Ljava/util/ArrayList;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Ljava/util/ArrayList;->size()I

    move-result v4

    .line 558
    .restart local v4    # "N":I
    if-lez v4, :cond_b

    .line 559
    const/4 v7, 0x0

    .line 560
    .local v7, "num":I
    new-array v12, v4, [Landroid/content/pm/ActivityInfo;

    .line 561
    .local v12, "res":[Landroid/content/pm/ActivityInfo;
    const/4 v6, 0x0

    .local v6, "i":I
    move v8, v7

    .end local v7    # "num":I
    .local v8, "num":I
    :goto_3
    if-ge v6, v4, :cond_a

    .line 562
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/content/pm/PackageParser$Package;->activities:Ljava/util/ArrayList;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/pm/PackageParser$Activity;

    .line 563
    .local v5, "a":Landroid/content/pm/PackageParser$Activity;
    iget-object v0, v5, Landroid/content/pm/PackageParser$Activity;->info:Landroid/content/pm/ActivityInfo;

    move-object/from16 v16, v0

    move-object/from16 v0, p8

    move-object/from16 v1, v16

    move/from16 v2, p2

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageUserState;->isMatch(Landroid/content/pm/ComponentInfo;I)Z

    move-result v16

    if-eqz v16, :cond_1b

    .line 564
    add-int/lit8 v7, v8, 0x1

    .end local v8    # "num":I
    .restart local v7    # "num":I
    move/from16 v0, p2

    move-object/from16 v1, p8

    move/from16 v2, p9

    invoke-static {v5, v0, v1, v2}, Landroid/content/pm/PackageParser;->generateActivityInfo(Landroid/content/pm/PackageParser$Activity;ILandroid/content/pm/PackageUserState;I)Landroid/content/pm/ActivityInfo;

    move-result-object v16

    aput-object v16, v12, v8

    .line 561
    :goto_4
    add-int/lit8 v6, v6, 0x1

    move v8, v7

    .end local v7    # "num":I
    .restart local v8    # "num":I
    goto :goto_3

    .line 513
    .end local v4    # "N":I
    .end local v5    # "a":Landroid/content/pm/PackageParser$Activity;
    .end local v6    # "i":I
    .end local v8    # "num":I
    .end local v10    # "pi":Landroid/content/pm/PackageInfo;
    .end local v12    # "res":[Landroid/content/pm/ActivityInfo;
    :cond_6
    const/16 v16, 0x0

    return-object v16

    .line 540
    .restart local v10    # "pi":Landroid/content/pm/PackageInfo;
    :cond_7
    const/4 v4, 0x0

    goto/16 :goto_0

    .line 545
    .restart local v4    # "N":I
    :cond_8
    const/4 v4, 0x0

    goto/16 :goto_1

    .line 550
    :cond_9
    const/4 v4, 0x0

    goto :goto_2

    .line 567
    .restart local v6    # "i":I
    .restart local v8    # "num":I
    .restart local v12    # "res":[Landroid/content/pm/ActivityInfo;
    :cond_a
    invoke-static {v12, v8}, Lcom/android/internal/util/ArrayUtils;->trimToSize([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v16

    check-cast v16, [Landroid/content/pm/ActivityInfo;

    move-object/from16 v0, v16

    iput-object v0, v10, Landroid/content/pm/PackageInfo;->activities:[Landroid/content/pm/ActivityInfo;

    .line 570
    .end local v4    # "N":I
    .end local v6    # "i":I
    .end local v8    # "num":I
    .end local v12    # "res":[Landroid/content/pm/ActivityInfo;
    :cond_b
    and-int/lit8 v16, p2, 0x2

    if-eqz v16, :cond_d

    .line 571
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/content/pm/PackageParser$Package;->receivers:Ljava/util/ArrayList;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Ljava/util/ArrayList;->size()I

    move-result v4

    .line 572
    .restart local v4    # "N":I
    if-lez v4, :cond_d

    .line 573
    const/4 v7, 0x0

    .line 574
    .restart local v7    # "num":I
    new-array v12, v4, [Landroid/content/pm/ActivityInfo;

    .line 575
    .restart local v12    # "res":[Landroid/content/pm/ActivityInfo;
    const/4 v6, 0x0

    .restart local v6    # "i":I
    move v8, v7

    .end local v7    # "num":I
    .restart local v8    # "num":I
    :goto_5
    if-ge v6, v4, :cond_c

    .line 576
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/content/pm/PackageParser$Package;->receivers:Ljava/util/ArrayList;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/pm/PackageParser$Activity;

    .line 577
    .restart local v5    # "a":Landroid/content/pm/PackageParser$Activity;
    iget-object v0, v5, Landroid/content/pm/PackageParser$Activity;->info:Landroid/content/pm/ActivityInfo;

    move-object/from16 v16, v0

    move-object/from16 v0, p8

    move-object/from16 v1, v16

    move/from16 v2, p2

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageUserState;->isMatch(Landroid/content/pm/ComponentInfo;I)Z

    move-result v16

    if-eqz v16, :cond_1a

    .line 578
    add-int/lit8 v7, v8, 0x1

    .end local v8    # "num":I
    .restart local v7    # "num":I
    move/from16 v0, p2

    move-object/from16 v1, p8

    move/from16 v2, p9

    invoke-static {v5, v0, v1, v2}, Landroid/content/pm/PackageParser;->generateActivityInfo(Landroid/content/pm/PackageParser$Activity;ILandroid/content/pm/PackageUserState;I)Landroid/content/pm/ActivityInfo;

    move-result-object v16

    aput-object v16, v12, v8

    .line 575
    :goto_6
    add-int/lit8 v6, v6, 0x1

    move v8, v7

    .end local v7    # "num":I
    .restart local v8    # "num":I
    goto :goto_5

    .line 581
    .end local v5    # "a":Landroid/content/pm/PackageParser$Activity;
    :cond_c
    invoke-static {v12, v8}, Lcom/android/internal/util/ArrayUtils;->trimToSize([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v16

    check-cast v16, [Landroid/content/pm/ActivityInfo;

    move-object/from16 v0, v16

    iput-object v0, v10, Landroid/content/pm/PackageInfo;->receivers:[Landroid/content/pm/ActivityInfo;

    .line 584
    .end local v4    # "N":I
    .end local v6    # "i":I
    .end local v8    # "num":I
    .end local v12    # "res":[Landroid/content/pm/ActivityInfo;
    :cond_d
    and-int/lit8 v16, p2, 0x4

    if-eqz v16, :cond_f

    .line 585
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/content/pm/PackageParser$Package;->services:Ljava/util/ArrayList;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Ljava/util/ArrayList;->size()I

    move-result v4

    .line 586
    .restart local v4    # "N":I
    if-lez v4, :cond_f

    .line 587
    const/4 v7, 0x0

    .line 588
    .restart local v7    # "num":I
    new-array v14, v4, [Landroid/content/pm/ServiceInfo;

    .line 589
    .local v14, "res":[Landroid/content/pm/ServiceInfo;
    const/4 v6, 0x0

    .restart local v6    # "i":I
    move v8, v7

    .end local v7    # "num":I
    .restart local v8    # "num":I
    :goto_7
    if-ge v6, v4, :cond_e

    .line 590
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/content/pm/PackageParser$Package;->services:Ljava/util/ArrayList;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Landroid/content/pm/PackageParser$Service;

    .line 591
    .local v15, "s":Landroid/content/pm/PackageParser$Service;
    iget-object v0, v15, Landroid/content/pm/PackageParser$Service;->info:Landroid/content/pm/ServiceInfo;

    move-object/from16 v16, v0

    move-object/from16 v0, p8

    move-object/from16 v1, v16

    move/from16 v2, p2

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageUserState;->isMatch(Landroid/content/pm/ComponentInfo;I)Z

    move-result v16

    if-eqz v16, :cond_19

    .line 592
    add-int/lit8 v7, v8, 0x1

    .end local v8    # "num":I
    .restart local v7    # "num":I
    move/from16 v0, p2

    move-object/from16 v1, p8

    move/from16 v2, p9

    invoke-static {v15, v0, v1, v2}, Landroid/content/pm/PackageParser;->generateServiceInfo(Landroid/content/pm/PackageParser$Service;ILandroid/content/pm/PackageUserState;I)Landroid/content/pm/ServiceInfo;

    move-result-object v16

    aput-object v16, v14, v8

    .line 589
    :goto_8
    add-int/lit8 v6, v6, 0x1

    move v8, v7

    .end local v7    # "num":I
    .restart local v8    # "num":I
    goto :goto_7

    .line 595
    .end local v15    # "s":Landroid/content/pm/PackageParser$Service;
    :cond_e
    invoke-static {v14, v8}, Lcom/android/internal/util/ArrayUtils;->trimToSize([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v16

    check-cast v16, [Landroid/content/pm/ServiceInfo;

    move-object/from16 v0, v16

    iput-object v0, v10, Landroid/content/pm/PackageInfo;->services:[Landroid/content/pm/ServiceInfo;

    .line 598
    .end local v4    # "N":I
    .end local v6    # "i":I
    .end local v8    # "num":I
    .end local v14    # "res":[Landroid/content/pm/ServiceInfo;
    :cond_f
    and-int/lit8 v16, p2, 0x8

    if-eqz v16, :cond_11

    .line 599
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/content/pm/PackageParser$Package;->providers:Ljava/util/ArrayList;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Ljava/util/ArrayList;->size()I

    move-result v4

    .line 600
    .restart local v4    # "N":I
    if-lez v4, :cond_11

    .line 601
    const/4 v7, 0x0

    .line 602
    .restart local v7    # "num":I
    new-array v13, v4, [Landroid/content/pm/ProviderInfo;

    .line 603
    .local v13, "res":[Landroid/content/pm/ProviderInfo;
    const/4 v6, 0x0

    .restart local v6    # "i":I
    move v8, v7

    .end local v7    # "num":I
    .restart local v8    # "num":I
    :goto_9
    if-ge v6, v4, :cond_10

    .line 604
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/content/pm/PackageParser$Package;->providers:Ljava/util/ArrayList;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/content/pm/PackageParser$Provider;

    .line 605
    .local v11, "pr":Landroid/content/pm/PackageParser$Provider;
    iget-object v0, v11, Landroid/content/pm/PackageParser$Provider;->info:Landroid/content/pm/ProviderInfo;

    move-object/from16 v16, v0

    move-object/from16 v0, p8

    move-object/from16 v1, v16

    move/from16 v2, p2

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageUserState;->isMatch(Landroid/content/pm/ComponentInfo;I)Z

    move-result v16

    if-eqz v16, :cond_18

    .line 606
    add-int/lit8 v7, v8, 0x1

    .end local v8    # "num":I
    .restart local v7    # "num":I
    move/from16 v0, p2

    move-object/from16 v1, p8

    move/from16 v2, p9

    invoke-static {v11, v0, v1, v2}, Landroid/content/pm/PackageParser;->generateProviderInfo(Landroid/content/pm/PackageParser$Provider;ILandroid/content/pm/PackageUserState;I)Landroid/content/pm/ProviderInfo;

    move-result-object v16

    aput-object v16, v13, v8

    .line 603
    :goto_a
    add-int/lit8 v6, v6, 0x1

    move v8, v7

    .end local v7    # "num":I
    .restart local v8    # "num":I
    goto :goto_9

    .line 609
    .end local v11    # "pr":Landroid/content/pm/PackageParser$Provider;
    :cond_10
    invoke-static {v13, v8}, Lcom/android/internal/util/ArrayUtils;->trimToSize([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v16

    check-cast v16, [Landroid/content/pm/ProviderInfo;

    move-object/from16 v0, v16

    iput-object v0, v10, Landroid/content/pm/PackageInfo;->providers:[Landroid/content/pm/ProviderInfo;

    .line 612
    .end local v4    # "N":I
    .end local v6    # "i":I
    .end local v8    # "num":I
    .end local v13    # "res":[Landroid/content/pm/ProviderInfo;
    :cond_11
    and-int/lit8 v16, p2, 0x10

    if-eqz v16, :cond_12

    .line 613
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/content/pm/PackageParser$Package;->instrumentation:Ljava/util/ArrayList;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Ljava/util/ArrayList;->size()I

    move-result v4

    .line 614
    .restart local v4    # "N":I
    if-lez v4, :cond_12

    .line 615
    new-array v0, v4, [Landroid/content/pm/InstrumentationInfo;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    iput-object v0, v10, Landroid/content/pm/PackageInfo;->instrumentation:[Landroid/content/pm/InstrumentationInfo;

    .line 616
    const/4 v6, 0x0

    .restart local v6    # "i":I
    :goto_b
    if-ge v6, v4, :cond_12

    .line 617
    iget-object v0, v10, Landroid/content/pm/PackageInfo;->instrumentation:[Landroid/content/pm/InstrumentationInfo;

    move-object/from16 v17, v0

    .line 618
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/content/pm/PackageParser$Package;->instrumentation:Ljava/util/ArrayList;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Landroid/content/pm/PackageParser$Instrumentation;

    .line 617
    move-object/from16 v0, v16

    move/from16 v1, p2

    invoke-static {v0, v1}, Landroid/content/pm/PackageParser;->generateInstrumentationInfo(Landroid/content/pm/PackageParser$Instrumentation;I)Landroid/content/pm/InstrumentationInfo;

    move-result-object v16

    aput-object v16, v17, v6

    .line 616
    add-int/lit8 v6, v6, 0x1

    goto :goto_b

    .line 622
    .end local v4    # "N":I
    .end local v6    # "i":I
    :cond_12
    move/from16 v0, p2

    and-int/lit16 v0, v0, 0x1000

    move/from16 v16, v0

    if-eqz v16, :cond_15

    .line 623
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/content/pm/PackageParser$Package;->permissions:Ljava/util/ArrayList;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Ljava/util/ArrayList;->size()I

    move-result v4

    .line 624
    .restart local v4    # "N":I
    if-lez v4, :cond_13

    .line 625
    new-array v0, v4, [Landroid/content/pm/PermissionInfo;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    iput-object v0, v10, Landroid/content/pm/PackageInfo;->permissions:[Landroid/content/pm/PermissionInfo;

    .line 626
    const/4 v6, 0x0

    .restart local v6    # "i":I
    :goto_c
    if-ge v6, v4, :cond_13

    .line 627
    iget-object v0, v10, Landroid/content/pm/PackageInfo;->permissions:[Landroid/content/pm/PermissionInfo;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/content/pm/PackageParser$Package;->permissions:Ljava/util/ArrayList;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Landroid/content/pm/PackageParser$Permission;

    move-object/from16 v0, v16

    move/from16 v1, p2

    invoke-static {v0, v1}, Landroid/content/pm/PackageParser;->generatePermissionInfo(Landroid/content/pm/PackageParser$Permission;I)Landroid/content/pm/PermissionInfo;

    move-result-object v16

    aput-object v16, v17, v6

    .line 626
    add-int/lit8 v6, v6, 0x1

    goto :goto_c

    .line 630
    .end local v6    # "i":I
    :cond_13
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/content/pm/PackageParser$Package;->requestedPermissions:Ljava/util/ArrayList;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Ljava/util/ArrayList;->size()I

    move-result v4

    .line 631
    if-lez v4, :cond_15

    .line 632
    new-array v0, v4, [Ljava/lang/String;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    iput-object v0, v10, Landroid/content/pm/PackageInfo;->requestedPermissions:[Ljava/lang/String;

    .line 633
    new-array v0, v4, [I

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    iput-object v0, v10, Landroid/content/pm/PackageInfo;->requestedPermissionsFlags:[I

    .line 634
    const/4 v6, 0x0

    .restart local v6    # "i":I
    :goto_d
    if-ge v6, v4, :cond_15

    .line 635
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/content/pm/PackageParser$Package;->requestedPermissions:Ljava/util/ArrayList;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    .line 636
    .local v9, "perm":Ljava/lang/String;
    iget-object v0, v10, Landroid/content/pm/PackageInfo;->requestedPermissions:[Ljava/lang/String;

    move-object/from16 v16, v0

    aput-object v9, v16, v6

    .line 638
    iget-object v0, v10, Landroid/content/pm/PackageInfo;->requestedPermissionsFlags:[I

    move-object/from16 v16, v0

    aget v17, v16, v6

    or-int/lit8 v17, v17, 0x1

    aput v17, v16, v6

    .line 639
    if-eqz p7, :cond_14

    move-object/from16 v0, p7

    invoke-interface {v0, v9}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v16

    if-eqz v16, :cond_14

    .line 640
    iget-object v0, v10, Landroid/content/pm/PackageInfo;->requestedPermissionsFlags:[I

    move-object/from16 v16, v0

    aget v17, v16, v6

    or-int/lit8 v17, v17, 0x2

    aput v17, v16, v6

    .line 634
    :cond_14
    add-int/lit8 v6, v6, 0x1

    goto :goto_d

    .line 645
    .end local v4    # "N":I
    .end local v6    # "i":I
    .end local v9    # "perm":Ljava/lang/String;
    :cond_15
    and-int/lit8 v16, p2, 0x40

    if-eqz v16, :cond_16

    .line 646
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/content/pm/PackageParser$Package;->mSignatures:[Landroid/content/pm/Signature;

    move-object/from16 v16, v0

    if-eqz v16, :cond_17

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/content/pm/PackageParser$Package;->mSignatures:[Landroid/content/pm/Signature;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    array-length v4, v0

    .line 647
    .restart local v4    # "N":I
    :goto_e
    if-lez v4, :cond_16

    .line 648
    new-array v0, v4, [Landroid/content/pm/Signature;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    iput-object v0, v10, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    .line 649
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/content/pm/PackageParser$Package;->mSignatures:[Landroid/content/pm/Signature;

    move-object/from16 v16, v0

    iget-object v0, v10, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    const/16 v19, 0x0

    move-object/from16 v0, v16

    move/from16 v1, v18

    move-object/from16 v2, v17

    move/from16 v3, v19

    invoke-static {v0, v1, v2, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 652
    .end local v4    # "N":I
    :cond_16
    return-object v10

    .line 646
    :cond_17
    const/4 v4, 0x0

    goto :goto_e

    .restart local v4    # "N":I
    .restart local v6    # "i":I
    .restart local v8    # "num":I
    .restart local v11    # "pr":Landroid/content/pm/PackageParser$Provider;
    .restart local v13    # "res":[Landroid/content/pm/ProviderInfo;
    :cond_18
    move v7, v8

    .end local v8    # "num":I
    .restart local v7    # "num":I
    goto/16 :goto_a

    .end local v7    # "num":I
    .end local v11    # "pr":Landroid/content/pm/PackageParser$Provider;
    .end local v13    # "res":[Landroid/content/pm/ProviderInfo;
    .restart local v8    # "num":I
    .restart local v14    # "res":[Landroid/content/pm/ServiceInfo;
    .restart local v15    # "s":Landroid/content/pm/PackageParser$Service;
    :cond_19
    move v7, v8

    .end local v8    # "num":I
    .restart local v7    # "num":I
    goto/16 :goto_8

    .end local v7    # "num":I
    .end local v14    # "res":[Landroid/content/pm/ServiceInfo;
    .end local v15    # "s":Landroid/content/pm/PackageParser$Service;
    .restart local v5    # "a":Landroid/content/pm/PackageParser$Activity;
    .restart local v8    # "num":I
    .restart local v12    # "res":[Landroid/content/pm/ActivityInfo;
    :cond_1a
    move v7, v8

    .end local v8    # "num":I
    .restart local v7    # "num":I
    goto/16 :goto_6

    .end local v7    # "num":I
    .restart local v8    # "num":I
    :cond_1b
    move v7, v8

    .end local v8    # "num":I
    .restart local v7    # "num":I
    goto/16 :goto_4
.end method

.method public static final generatePermissionGroupInfo(Landroid/content/pm/PackageParser$PermissionGroup;I)Landroid/content/pm/PermissionGroupInfo;
    .locals 2
    .param p0, "pg"    # Landroid/content/pm/PackageParser$PermissionGroup;
    .param p1, "flags"    # I

    .prologue
    const/4 v1, 0x0

    .line 5542
    if-nez p0, :cond_0

    return-object v1

    .line 5543
    :cond_0
    and-int/lit16 v1, p1, 0x80

    if-nez v1, :cond_1

    .line 5544
    iget-object v1, p0, Landroid/content/pm/PackageParser$PermissionGroup;->info:Landroid/content/pm/PermissionGroupInfo;

    return-object v1

    .line 5546
    :cond_1
    new-instance v0, Landroid/content/pm/PermissionGroupInfo;

    iget-object v1, p0, Landroid/content/pm/PackageParser$PermissionGroup;->info:Landroid/content/pm/PermissionGroupInfo;

    invoke-direct {v0, v1}, Landroid/content/pm/PermissionGroupInfo;-><init>(Landroid/content/pm/PermissionGroupInfo;)V

    .line 5547
    .local v0, "pgi":Landroid/content/pm/PermissionGroupInfo;
    iget-object v1, p0, Landroid/content/pm/PackageParser$PermissionGroup;->metaData:Landroid/os/Bundle;

    iput-object v1, v0, Landroid/content/pm/PermissionGroupInfo;->metaData:Landroid/os/Bundle;

    .line 5548
    return-object v0
.end method

.method public static final generatePermissionInfo(Landroid/content/pm/PackageParser$Permission;I)Landroid/content/pm/PermissionInfo;
    .locals 2
    .param p0, "p"    # Landroid/content/pm/PackageParser$Permission;
    .param p1, "flags"    # I

    .prologue
    const/4 v1, 0x0

    .line 5531
    if-nez p0, :cond_0

    return-object v1

    .line 5532
    :cond_0
    and-int/lit16 v1, p1, 0x80

    if-nez v1, :cond_1

    .line 5533
    iget-object v1, p0, Landroid/content/pm/PackageParser$Permission;->info:Landroid/content/pm/PermissionInfo;

    return-object v1

    .line 5535
    :cond_1
    new-instance v0, Landroid/content/pm/PermissionInfo;

    iget-object v1, p0, Landroid/content/pm/PackageParser$Permission;->info:Landroid/content/pm/PermissionInfo;

    invoke-direct {v0, v1}, Landroid/content/pm/PermissionInfo;-><init>(Landroid/content/pm/PermissionInfo;)V

    .line 5536
    .local v0, "pi":Landroid/content/pm/PermissionInfo;
    iget-object v1, p0, Landroid/content/pm/PackageParser$Permission;->metaData:Landroid/os/Bundle;

    iput-object v1, v0, Landroid/content/pm/PermissionInfo;->metaData:Landroid/os/Bundle;

    .line 5537
    return-object v0
.end method

.method public static final generateProviderInfo(Landroid/content/pm/PackageParser$Provider;ILandroid/content/pm/PackageUserState;I)Landroid/content/pm/ProviderInfo;
    .locals 4
    .param p0, "p"    # Landroid/content/pm/PackageParser$Provider;
    .param p1, "flags"    # I
    .param p2, "state"    # Landroid/content/pm/PackageUserState;
    .param p3, "userId"    # I

    .prologue
    const/4 v3, 0x0

    .line 5681
    if-nez p0, :cond_0

    return-object v3

    .line 5682
    :cond_0
    invoke-static {p1, p2}, Landroid/content/pm/PackageParser;->checkUseInstalledOrHidden(ILandroid/content/pm/PackageUserState;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 5683
    return-object v3

    .line 5685
    :cond_1
    iget-object v1, p0, Landroid/content/pm/PackageParser$Provider;->owner:Landroid/content/pm/PackageParser$Package;

    iget-object v2, p0, Landroid/content/pm/PackageParser$Provider;->metaData:Landroid/os/Bundle;

    invoke-static {p1, v1, p2, v2, p3}, Landroid/content/pm/PackageParser;->copyNeeded(ILandroid/content/pm/PackageParser$Package;Landroid/content/pm/PackageUserState;Landroid/os/Bundle;I)Z

    move-result v1

    if-nez v1, :cond_3

    .line 5686
    and-int/lit16 v1, p1, 0x800

    if-nez v1, :cond_2

    .line 5687
    iget-object v1, p0, Landroid/content/pm/PackageParser$Provider;->info:Landroid/content/pm/ProviderInfo;

    iget-object v1, v1, Landroid/content/pm/ProviderInfo;->uriPermissionPatterns:[Landroid/os/PatternMatcher;

    if-nez v1, :cond_3

    .line 5688
    :cond_2
    iget-object v1, p0, Landroid/content/pm/PackageParser$Provider;->info:Landroid/content/pm/ProviderInfo;

    return-object v1

    .line 5691
    :cond_3
    new-instance v0, Landroid/content/pm/ProviderInfo;

    iget-object v1, p0, Landroid/content/pm/PackageParser$Provider;->info:Landroid/content/pm/ProviderInfo;

    invoke-direct {v0, v1}, Landroid/content/pm/ProviderInfo;-><init>(Landroid/content/pm/ProviderInfo;)V

    .line 5692
    .local v0, "pi":Landroid/content/pm/ProviderInfo;
    iget-object v1, p0, Landroid/content/pm/PackageParser$Provider;->metaData:Landroid/os/Bundle;

    iput-object v1, v0, Landroid/content/pm/ProviderInfo;->metaData:Landroid/os/Bundle;

    .line 5693
    and-int/lit16 v1, p1, 0x800

    if-nez v1, :cond_4

    .line 5694
    iput-object v3, v0, Landroid/content/pm/ProviderInfo;->uriPermissionPatterns:[Landroid/os/PatternMatcher;

    .line 5696
    :cond_4
    iget-object v1, p0, Landroid/content/pm/PackageParser$Provider;->owner:Landroid/content/pm/PackageParser$Package;

    invoke-static {v1, p1, p2, p3}, Landroid/content/pm/PackageParser;->generateApplicationInfo(Landroid/content/pm/PackageParser$Package;ILandroid/content/pm/PackageUserState;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v1

    iput-object v1, v0, Landroid/content/pm/ProviderInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    .line 5697
    return-object v0
.end method

.method public static final generateServiceInfo(Landroid/content/pm/PackageParser$Service;ILandroid/content/pm/PackageUserState;I)Landroid/content/pm/ServiceInfo;
    .locals 3
    .param p0, "s"    # Landroid/content/pm/PackageParser$Service;
    .param p1, "flags"    # I
    .param p2, "state"    # Landroid/content/pm/PackageUserState;
    .param p3, "userId"    # I

    .prologue
    const/4 v2, 0x0

    .line 5632
    if-nez p0, :cond_0

    return-object v2

    .line 5633
    :cond_0
    invoke-static {p1, p2}, Landroid/content/pm/PackageParser;->checkUseInstalledOrHidden(ILandroid/content/pm/PackageUserState;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 5634
    return-object v2

    .line 5636
    :cond_1
    iget-object v1, p0, Landroid/content/pm/PackageParser$Service;->owner:Landroid/content/pm/PackageParser$Package;

    iget-object v2, p0, Landroid/content/pm/PackageParser$Service;->metaData:Landroid/os/Bundle;

    invoke-static {p1, v1, p2, v2, p3}, Landroid/content/pm/PackageParser;->copyNeeded(ILandroid/content/pm/PackageParser$Package;Landroid/content/pm/PackageUserState;Landroid/os/Bundle;I)Z

    move-result v1

    if-nez v1, :cond_2

    .line 5637
    iget-object v1, p0, Landroid/content/pm/PackageParser$Service;->info:Landroid/content/pm/ServiceInfo;

    return-object v1

    .line 5640
    :cond_2
    new-instance v0, Landroid/content/pm/ServiceInfo;

    iget-object v1, p0, Landroid/content/pm/PackageParser$Service;->info:Landroid/content/pm/ServiceInfo;

    invoke-direct {v0, v1}, Landroid/content/pm/ServiceInfo;-><init>(Landroid/content/pm/ServiceInfo;)V

    .line 5641
    .local v0, "si":Landroid/content/pm/ServiceInfo;
    iget-object v1, p0, Landroid/content/pm/PackageParser$Service;->metaData:Landroid/os/Bundle;

    iput-object v1, v0, Landroid/content/pm/ServiceInfo;->metaData:Landroid/os/Bundle;

    .line 5642
    iget-object v1, p0, Landroid/content/pm/PackageParser$Service;->owner:Landroid/content/pm/PackageParser$Package;

    invoke-static {v1, p1, p2, p3}, Landroid/content/pm/PackageParser;->generateApplicationInfo(Landroid/content/pm/PackageParser$Package;ILandroid/content/pm/PackageUserState;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v1

    iput-object v1, v0, Landroid/content/pm/ServiceInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    .line 5643
    return-object v0
.end method

.method public static getApkSigningVersion(Landroid/content/pm/PackageParser$Package;)I
    .locals 2
    .param p0, "pkg"    # Landroid/content/pm/PackageParser$Package;

    .prologue
    .line 1133
    :try_start_0
    iget-object v1, p0, Landroid/content/pm/PackageParser$Package;->baseCodePath:Ljava/lang/String;

    invoke-static {v1}, Landroid/util/apk/ApkSignatureSchemeV2Verifier;->hasSignature(Ljava/lang/String;)Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    if-eqz v1, :cond_0

    .line 1134
    const/4 v1, 0x2

    return v1

    .line 1136
    :cond_0
    const/4 v1, 0x1

    return v1

    .line 1137
    :catch_0
    move-exception v0

    .line 1139
    .local v0, "e":Ljava/io/IOException;
    const/4 v1, 0x0

    return v1
.end method

.method private static hasDomainURLs(Landroid/content/pm/PackageParser$Package;)Z
    .locals 10
    .param p0, "pkg"    # Landroid/content/pm/PackageParser$Package;

    .prologue
    const/4 v9, 0x0

    .line 3239
    if-eqz p0, :cond_0

    iget-object v8, p0, Landroid/content/pm/PackageParser$Package;->activities:Ljava/util/ArrayList;

    if-nez v8, :cond_1

    :cond_0
    return v9

    .line 3240
    :cond_1
    iget-object v0, p0, Landroid/content/pm/PackageParser$Package;->activities:Ljava/util/ArrayList;

    .line 3241
    .local v0, "activities":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/pm/PackageParser$Activity;>;"
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v3

    .line 3242
    .local v3, "countActivities":I
    const/4 v7, 0x0

    .local v7, "n":I
    :goto_0
    if-ge v7, v3, :cond_7

    .line 3243
    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/PackageParser$Activity;

    .line 3244
    .local v1, "activity":Landroid/content/pm/PackageParser$Activity;
    iget-object v5, v1, Landroid/content/pm/PackageParser$Activity;->intents:Ljava/util/ArrayList;

    .line 3245
    .local v5, "filters":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/pm/PackageParser$ActivityIntentInfo;>;"
    if-nez v5, :cond_3

    .line 3242
    :cond_2
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    .line 3246
    :cond_3
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v4

    .line 3247
    .local v4, "countFilters":I
    const/4 v6, 0x0

    .local v6, "m":I
    :goto_1
    if-ge v6, v4, :cond_2

    .line 3248
    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/pm/PackageParser$ActivityIntentInfo;

    .line 3249
    .local v2, "aii":Landroid/content/pm/PackageParser$ActivityIntentInfo;
    const-string/jumbo v8, "android.intent.action.VIEW"

    invoke-virtual {v2, v8}, Landroid/content/pm/PackageParser$ActivityIntentInfo;->hasAction(Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_5

    .line 3247
    :cond_4
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    .line 3250
    :cond_5
    const-string/jumbo v8, "android.intent.action.VIEW"

    invoke-virtual {v2, v8}, Landroid/content/pm/PackageParser$ActivityIntentInfo;->hasAction(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_4

    .line 3251
    const-string/jumbo v8, "http"

    invoke-virtual {v2, v8}, Landroid/content/pm/PackageParser$ActivityIntentInfo;->hasDataScheme(Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_6

    .line 3252
    const-string/jumbo v8, "https"

    invoke-virtual {v2, v8}, Landroid/content/pm/PackageParser$ActivityIntentInfo;->hasDataScheme(Ljava/lang/String;)Z

    move-result v8

    .line 3251
    if-eqz v8, :cond_4

    .line 3253
    :cond_6
    const/4 v8, 0x1

    return v8

    .line 3257
    .end local v1    # "activity":Landroid/content/pm/PackageParser$Activity;
    .end local v2    # "aii":Landroid/content/pm/PackageParser$ActivityIntentInfo;
    .end local v4    # "countFilters":I
    .end local v5    # "filters":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/pm/PackageParser$ActivityIntentInfo;>;"
    .end local v6    # "m":I
    :cond_7
    return v9
.end method

.method public static final isApkFile(Ljava/io/File;)Z
    .locals 1
    .param p0, "file"    # Ljava/io/File;

    .prologue
    .line 475
    invoke-virtual {p0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/content/pm/PackageParser;->isApkPath(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method private static isApkPath(Ljava/lang/String;)Z
    .locals 1
    .param p0, "path"    # Ljava/lang/String;

    .prologue
    .line 479
    const-string/jumbo v0, ".apk"

    invoke-virtual {p0, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static isAvailable(Landroid/content/pm/PackageUserState;)Z
    .locals 1
    .param p0, "state"    # Landroid/content/pm/PackageUserState;

    .prologue
    .line 506
    const/4 v0, 0x0

    invoke-static {v0, p0}, Landroid/content/pm/PackageParser;->checkUseInstalledOrHidden(ILandroid/content/pm/PackageUserState;)Z

    move-result v0

    return v0
.end method

.method private isPowerOffAlarmPackage(Ljava/lang/String;)Z
    .locals 6
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    const/4 v5, 0x0

    .line 833
    iget-object v2, p0, Landroid/content/pm/PackageParser;->mContext:Landroid/content/Context;

    if-eqz v2, :cond_1

    .line 835
    iget-object v2, p0, Landroid/content/pm/PackageParser;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, #android:array@power_off_alarm_apps#t

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    .line 836
    .local v0, "packageArray":[Ljava/lang/String;
    array-length v2, v0

    if-nez v2, :cond_0

    .line 837
    const-string/jumbo v2, "PackageParser"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "power off alarm app array is empty "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 838
    return v5

    .line 840
    :cond_0
    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    .line 841
    .local v1, "tempList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {v1, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 842
    const/4 v2, 0x1

    return v2

    .line 846
    .end local v0    # "packageArray":[Ljava/lang/String;
    .end local v1    # "tempList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_1
    return v5
.end method

.method private static loadApkIntoAssetManager(Landroid/content/res/AssetManager;Ljava/lang/String;I)I
    .locals 4
    .param p0, "assets"    # Landroid/content/res/AssetManager;
    .param p1, "apkPath"    # Ljava/lang/String;
    .param p2, "flags"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/pm/PackageParser$PackageParserException;
        }
    .end annotation

    .prologue
    .line 954
    and-int/lit8 v1, p2, 0x4

    if-eqz v1, :cond_0

    invoke-static {p1}, Landroid/content/pm/PackageParser;->isApkPath(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 962
    :cond_0
    invoke-virtual {p0, p1}, Landroid/content/res/AssetManager;->addAssetPath(Ljava/lang/String;)I

    move-result v0

    .line 963
    .local v0, "cookie":I
    if-nez v0, :cond_2

    .line 964
    new-instance v1, Landroid/content/pm/PackageParser$PackageParserException;

    .line 965
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Failed adding asset path: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 964
    const/16 v3, -0x65

    invoke-direct {v1, v3, v2}, Landroid/content/pm/PackageParser$PackageParserException;-><init>(ILjava/lang/String;)V

    throw v1

    .line 955
    .end local v0    # "cookie":I
    :cond_1
    new-instance v1, Landroid/content/pm/PackageParser$PackageParserException;

    .line 956
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Invalid package file: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 955
    const/16 v3, -0x64

    invoke-direct {v1, v3, v2}, Landroid/content/pm/PackageParser$PackageParserException;-><init>(ILjava/lang/String;)V

    throw v1

    .line 967
    .restart local v0    # "cookie":I
    :cond_2
    return v0
.end method

.method private static loadCertificates(Landroid/util/jar/StrictJarFile;Ljava/util/zip/ZipEntry;)[[Ljava/security/cert/Certificate;
    .locals 5
    .param p0, "jarFile"    # Landroid/util/jar/StrictJarFile;
    .param p1, "entry"    # Ljava/util/zip/ZipEntry;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/pm/PackageParser$PackageParserException;
        }
    .end annotation

    .prologue
    .line 657
    const/4 v1, 0x0

    .line 661
    .local v1, "is":Ljava/io/InputStream;
    :try_start_0
    invoke-virtual {p0, p1}, Landroid/util/jar/StrictJarFile;->getInputStream(Ljava/util/zip/ZipEntry;)Ljava/io/InputStream;

    move-result-object v1

    .line 662
    .local v1, "is":Ljava/io/InputStream;
    invoke-static {v1}, Landroid/content/pm/PackageParser;->readFullyIgnoringContents(Ljava/io/InputStream;)J

    .line 663
    invoke-virtual {p0, p1}, Landroid/util/jar/StrictJarFile;->getCertificateChains(Ljava/util/zip/ZipEntry;)[[Ljava/security/cert/Certificate;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v2

    .line 668
    invoke-static {v1}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 663
    return-object v2

    .line 664
    .end local v1    # "is":Ljava/io/InputStream;
    :catch_0
    move-exception v0

    .line 665
    .local v0, "e":Ljava/lang/Exception;
    :try_start_1
    new-instance v2, Landroid/content/pm/PackageParser$PackageParserException;

    .line 666
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Failed reading "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p1}, Ljava/util/zip/ZipEntry;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " in "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 665
    const/16 v4, -0x66

    invoke-direct {v2, v4, v3, v0}, Landroid/content/pm/PackageParser$PackageParserException;-><init>(ILjava/lang/String;Ljava/lang/Throwable;)V

    throw v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 667
    .end local v0    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v2

    .line 668
    invoke-static {v1}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 667
    throw v2
.end method

.method private static modifySharedLibrariesForBackwardCompatibility(Landroid/content/pm/PackageParser$Package;)V
    .locals 2
    .param p0, "owner"    # Landroid/content/pm/PackageParser$Package;

    .prologue
    .line 3230
    iget-object v0, p0, Landroid/content/pm/PackageParser$Package;->usesLibraries:Ljava/util/ArrayList;

    const-string/jumbo v1, "org.apache.http.legacy"

    invoke-static {v0, v1}, Lcom/android/internal/util/ArrayUtils;->remove(Ljava/util/ArrayList;Ljava/lang/Object;)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Landroid/content/pm/PackageParser$Package;->usesLibraries:Ljava/util/ArrayList;

    .line 3231
    iget-object v0, p0, Landroid/content/pm/PackageParser$Package;->usesOptionalLibraries:Ljava/util/ArrayList;

    .line 3232
    const-string/jumbo v1, "org.apache.http.legacy"

    .line 3231
    invoke-static {v0, v1}, Lcom/android/internal/util/ArrayUtils;->remove(Ljava/util/ArrayList;Ljava/lang/Object;)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Landroid/content/pm/PackageParser$Package;->usesOptionalLibraries:Ljava/util/ArrayList;

    .line 3223
    return-void
.end method

.method private parseActivity(Landroid/content/pm/PackageParser$Package;Landroid/content/res/Resources;Landroid/content/res/XmlResourceParser;I[Ljava/lang/String;ZZ)Landroid/content/pm/PackageParser$Activity;
    .locals 28
    .param p1, "owner"    # Landroid/content/pm/PackageParser$Package;
    .param p2, "res"    # Landroid/content/res/Resources;
    .param p3, "parser"    # Landroid/content/res/XmlResourceParser;
    .param p4, "flags"    # I
    .param p5, "outError"    # [Ljava/lang/String;
    .param p6, "receiver"    # Z
    .param p7, "hardwareAccelerated"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 3454
    sget-object v4, Lcom/android/internal/R$styleable;->AndroidManifestActivity:[I

    move-object/from16 v0, p2

    move-object/from16 v1, p3

    invoke-virtual {v0, v1, v4}, Landroid/content/res/Resources;->obtainAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v24

    .line 3456
    .local v24, "sa":Landroid/content/res/TypedArray;
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/content/pm/PackageParser;->mParseActivityArgs:Landroid/content/pm/PackageParser$ParseComponentArgs;

    if-nez v4, :cond_0

    .line 3457
    new-instance v4, Landroid/content/pm/PackageParser$ParseComponentArgs;

    .line 3464
    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/content/pm/PackageParser;->mSeparateProcesses:[Ljava/lang/String;

    .line 3458
    const/4 v7, 0x3

    .line 3459
    const/4 v8, 0x1

    .line 3460
    const/4 v9, 0x2

    .line 3461
    const/16 v10, 0x2c

    .line 3462
    const/16 v11, 0x17

    .line 3463
    const/16 v12, 0x1e

    .line 3465
    const/4 v14, 0x7

    .line 3466
    const/16 v15, 0x11

    .line 3467
    const/16 v16, 0x5

    move-object/from16 v5, p1

    move-object/from16 v6, p5

    .line 3457
    invoke-direct/range {v4 .. v16}, Landroid/content/pm/PackageParser$ParseComponentArgs;-><init>(Landroid/content/pm/PackageParser$Package;[Ljava/lang/String;IIIIII[Ljava/lang/String;III)V

    move-object/from16 v0, p0

    iput-object v4, v0, Landroid/content/pm/PackageParser;->mParseActivityArgs:Landroid/content/pm/PackageParser$ParseComponentArgs;

    .line 3470
    :cond_0
    move-object/from16 v0, p0

    iget-object v5, v0, Landroid/content/pm/PackageParser;->mParseActivityArgs:Landroid/content/pm/PackageParser$ParseComponentArgs;

    if-eqz p6, :cond_1

    const-string/jumbo v4, "<receiver>"

    :goto_0
    iput-object v4, v5, Landroid/content/pm/PackageParser$ParseComponentArgs;->tag:Ljava/lang/String;

    .line 3471
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/content/pm/PackageParser;->mParseActivityArgs:Landroid/content/pm/PackageParser$ParseComponentArgs;

    move-object/from16 v0, v24

    iput-object v0, v4, Landroid/content/pm/PackageParser$ParseComponentArgs;->sa:Landroid/content/res/TypedArray;

    .line 3472
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/content/pm/PackageParser;->mParseActivityArgs:Landroid/content/pm/PackageParser$ParseComponentArgs;

    move/from16 v0, p4

    iput v0, v4, Landroid/content/pm/PackageParser$ParseComponentArgs;->flags:I

    .line 3474
    new-instance v17, Landroid/content/pm/PackageParser$Activity;

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/content/pm/PackageParser;->mParseActivityArgs:Landroid/content/pm/PackageParser$ParseComponentArgs;

    new-instance v5, Landroid/content/pm/ActivityInfo;

    invoke-direct {v5}, Landroid/content/pm/ActivityInfo;-><init>()V

    move-object/from16 v0, v17

    invoke-direct {v0, v4, v5}, Landroid/content/pm/PackageParser$Activity;-><init>(Landroid/content/pm/PackageParser$ParseComponentArgs;Landroid/content/pm/ActivityInfo;)V

    .line 3475
    .local v17, "a":Landroid/content/pm/PackageParser$Activity;
    const/4 v4, 0x0

    aget-object v4, p5, v4

    if-eqz v4, :cond_2

    .line 3476
    invoke-virtual/range {v24 .. v24}, Landroid/content/res/TypedArray;->recycle()V

    .line 3477
    const/4 v4, 0x0

    return-object v4

    .line 3470
    .end local v17    # "a":Landroid/content/pm/PackageParser$Activity;
    :cond_1
    const-string/jumbo v4, "<activity>"

    goto :goto_0

    .line 3480
    .restart local v17    # "a":Landroid/content/pm/PackageParser$Activity;
    :cond_2
    const/4 v4, 0x6

    move-object/from16 v0, v24

    invoke-virtual {v0, v4}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v25

    .line 3481
    .local v25, "setExported":Z
    if-eqz v25, :cond_3

    .line 3482
    move-object/from16 v0, v17

    iget-object v4, v0, Landroid/content/pm/PackageParser$Activity;->info:Landroid/content/pm/ActivityInfo;

    const/4 v5, 0x6

    const/4 v6, 0x0

    move-object/from16 v0, v24

    invoke-virtual {v0, v5, v6}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v5

    iput-boolean v5, v4, Landroid/content/pm/ActivityInfo;->exported:Z

    .line 3485
    :cond_3
    move-object/from16 v0, v17

    iget-object v4, v0, Landroid/content/pm/PackageParser$Activity;->info:Landroid/content/pm/ActivityInfo;

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object/from16 v0, v24

    invoke-virtual {v0, v5, v6}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v5

    iput v5, v4, Landroid/content/pm/ActivityInfo;->theme:I

    .line 3487
    move-object/from16 v0, v17

    iget-object v4, v0, Landroid/content/pm/PackageParser$Activity;->info:Landroid/content/pm/ActivityInfo;

    .line 3488
    move-object/from16 v0, v17

    iget-object v5, v0, Landroid/content/pm/PackageParser$Activity;->info:Landroid/content/pm/ActivityInfo;

    iget-object v5, v5, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v5, v5, Landroid/content/pm/ApplicationInfo;->uiOptions:I

    .line 3487
    const/16 v6, 0x1a

    move-object/from16 v0, v24

    invoke-virtual {v0, v6, v5}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v5

    iput v5, v4, Landroid/content/pm/ActivityInfo;->uiOptions:I

    .line 3491
    const/16 v4, 0x1b

    .line 3492
    const/16 v5, 0x400

    .line 3490
    move-object/from16 v0, v24

    invoke-virtual {v0, v4, v5}, Landroid/content/res/TypedArray;->getNonConfigurationString(II)Ljava/lang/String;

    move-result-object v21

    .line 3493
    .local v21, "parentName":Ljava/lang/String;
    if-eqz v21, :cond_4

    .line 3494
    move-object/from16 v0, v17

    iget-object v4, v0, Landroid/content/pm/PackageParser$Activity;->info:Landroid/content/pm/ActivityInfo;

    iget-object v4, v4, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    move-object/from16 v0, v21

    move-object/from16 v1, p5

    invoke-static {v4, v0, v1}, Landroid/content/pm/PackageParser;->buildClassName(Ljava/lang/String;Ljava/lang/CharSequence;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v20

    .line 3495
    .local v20, "parentClassName":Ljava/lang/String;
    const/4 v4, 0x0

    aget-object v4, p5, v4

    if-nez v4, :cond_1b

    .line 3496
    move-object/from16 v0, v17

    iget-object v4, v0, Landroid/content/pm/PackageParser$Activity;->info:Landroid/content/pm/ActivityInfo;

    move-object/from16 v0, v20

    iput-object v0, v4, Landroid/content/pm/ActivityInfo;->parentActivityName:Ljava/lang/String;

    .line 3505
    .end local v20    # "parentClassName":Ljava/lang/String;
    :cond_4
    :goto_1
    const/4 v4, 0x4

    const/4 v5, 0x0

    move-object/from16 v0, v24

    invoke-virtual {v0, v4, v5}, Landroid/content/res/TypedArray;->getNonConfigurationString(II)Ljava/lang/String;

    move-result-object v26

    .line 3506
    .local v26, "str":Ljava/lang/String;
    if-nez v26, :cond_1c

    .line 3507
    move-object/from16 v0, v17

    iget-object v4, v0, Landroid/content/pm/PackageParser$Activity;->info:Landroid/content/pm/ActivityInfo;

    move-object/from16 v0, p1

    iget-object v5, v0, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v5, v5, Landroid/content/pm/ApplicationInfo;->permission:Ljava/lang/String;

    iput-object v5, v4, Landroid/content/pm/ActivityInfo;->permission:Ljava/lang/String;

    .line 3513
    :goto_2
    const/16 v4, 0x8

    .line 3514
    const/16 v5, 0x400

    .line 3512
    move-object/from16 v0, v24

    invoke-virtual {v0, v4, v5}, Landroid/content/res/TypedArray;->getNonConfigurationString(II)Ljava/lang/String;

    move-result-object v26

    .line 3515
    move-object/from16 v0, v17

    iget-object v4, v0, Landroid/content/pm/PackageParser$Activity;->info:Landroid/content/pm/ActivityInfo;

    move-object/from16 v0, p1

    iget-object v5, v0, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v5, v5, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    .line 3516
    move-object/from16 v0, p1

    iget-object v6, v0, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v6, v6, Landroid/content/pm/ApplicationInfo;->taskAffinity:Ljava/lang/String;

    .line 3515
    move-object/from16 v0, v26

    move-object/from16 v1, p5

    invoke-static {v5, v6, v0, v1}, Landroid/content/pm/PackageParser;->buildTaskAffinityName(Ljava/lang/String;Ljava/lang/String;Ljava/lang/CharSequence;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v4, Landroid/content/pm/ActivityInfo;->taskAffinity:Ljava/lang/String;

    .line 3518
    move-object/from16 v0, v17

    iget-object v4, v0, Landroid/content/pm/PackageParser$Activity;->info:Landroid/content/pm/ActivityInfo;

    const/4 v5, 0x0

    iput v5, v4, Landroid/content/pm/ActivityInfo;->flags:I

    .line 3520
    const/16 v4, 0x9

    const/4 v5, 0x0

    .line 3519
    move-object/from16 v0, v24

    invoke-virtual {v0, v4, v5}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 3521
    move-object/from16 v0, v17

    iget-object v4, v0, Landroid/content/pm/PackageParser$Activity;->info:Landroid/content/pm/ActivityInfo;

    iget v5, v4, Landroid/content/pm/ActivityInfo;->flags:I

    or-int/lit8 v5, v5, 0x1

    iput v5, v4, Landroid/content/pm/ActivityInfo;->flags:I

    .line 3524
    :cond_5
    const/16 v4, 0xa

    const/4 v5, 0x0

    move-object/from16 v0, v24

    invoke-virtual {v0, v4, v5}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v4

    if-eqz v4, :cond_6

    .line 3525
    move-object/from16 v0, v17

    iget-object v4, v0, Landroid/content/pm/PackageParser$Activity;->info:Landroid/content/pm/ActivityInfo;

    iget v5, v4, Landroid/content/pm/ActivityInfo;->flags:I

    or-int/lit8 v5, v5, 0x2

    iput v5, v4, Landroid/content/pm/ActivityInfo;->flags:I

    .line 3528
    :cond_6
    const/16 v4, 0xb

    const/4 v5, 0x0

    move-object/from16 v0, v24

    invoke-virtual {v0, v4, v5}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v4

    if-eqz v4, :cond_7

    .line 3529
    move-object/from16 v0, v17

    iget-object v4, v0, Landroid/content/pm/PackageParser$Activity;->info:Landroid/content/pm/ActivityInfo;

    iget v5, v4, Landroid/content/pm/ActivityInfo;->flags:I

    or-int/lit8 v5, v5, 0x4

    iput v5, v4, Landroid/content/pm/ActivityInfo;->flags:I

    .line 3532
    :cond_7
    const/16 v4, 0x15

    const/4 v5, 0x0

    move-object/from16 v0, v24

    invoke-virtual {v0, v4, v5}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v4

    if-eqz v4, :cond_8

    .line 3533
    move-object/from16 v0, v17

    iget-object v4, v0, Landroid/content/pm/PackageParser$Activity;->info:Landroid/content/pm/ActivityInfo;

    iget v5, v4, Landroid/content/pm/ActivityInfo;->flags:I

    or-int/lit16 v5, v5, 0x80

    iput v5, v4, Landroid/content/pm/ActivityInfo;->flags:I

    .line 3536
    :cond_8
    const/16 v4, 0x12

    const/4 v5, 0x0

    move-object/from16 v0, v24

    invoke-virtual {v0, v4, v5}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v4

    if-eqz v4, :cond_9

    .line 3537
    move-object/from16 v0, v17

    iget-object v4, v0, Landroid/content/pm/PackageParser$Activity;->info:Landroid/content/pm/ActivityInfo;

    iget v5, v4, Landroid/content/pm/ActivityInfo;->flags:I

    or-int/lit8 v5, v5, 0x8

    iput v5, v4, Landroid/content/pm/ActivityInfo;->flags:I

    .line 3540
    :cond_9
    const/16 v4, 0xc

    const/4 v5, 0x0

    move-object/from16 v0, v24

    invoke-virtual {v0, v4, v5}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v4

    if-eqz v4, :cond_a

    .line 3541
    move-object/from16 v0, v17

    iget-object v4, v0, Landroid/content/pm/PackageParser$Activity;->info:Landroid/content/pm/ActivityInfo;

    iget v5, v4, Landroid/content/pm/ActivityInfo;->flags:I

    or-int/lit8 v5, v5, 0x10

    iput v5, v4, Landroid/content/pm/ActivityInfo;->flags:I

    .line 3544
    :cond_a
    const/16 v4, 0xd

    const/4 v5, 0x0

    move-object/from16 v0, v24

    invoke-virtual {v0, v4, v5}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v4

    if-eqz v4, :cond_b

    .line 3545
    move-object/from16 v0, v17

    iget-object v4, v0, Landroid/content/pm/PackageParser$Activity;->info:Landroid/content/pm/ActivityInfo;

    iget v5, v4, Landroid/content/pm/ActivityInfo;->flags:I

    or-int/lit8 v5, v5, 0x20

    iput v5, v4, Landroid/content/pm/ActivityInfo;->flags:I

    .line 3549
    :cond_b
    move-object/from16 v0, p1

    iget-object v4, v0, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v4, v4, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit8 v4, v4, 0x20

    if-eqz v4, :cond_1e

    const/4 v4, 0x1

    .line 3548
    :goto_3
    const/16 v5, 0x13

    move-object/from16 v0, v24

    invoke-virtual {v0, v5, v4}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v4

    if-eqz v4, :cond_c

    .line 3550
    move-object/from16 v0, v17

    iget-object v4, v0, Landroid/content/pm/PackageParser$Activity;->info:Landroid/content/pm/ActivityInfo;

    iget v5, v4, Landroid/content/pm/ActivityInfo;->flags:I

    or-int/lit8 v5, v5, 0x40

    iput v5, v4, Landroid/content/pm/ActivityInfo;->flags:I

    .line 3553
    :cond_c
    const/16 v4, 0x16

    const/4 v5, 0x0

    move-object/from16 v0, v24

    invoke-virtual {v0, v4, v5}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v4

    if-eqz v4, :cond_d

    .line 3554
    move-object/from16 v0, v17

    iget-object v4, v0, Landroid/content/pm/PackageParser$Activity;->info:Landroid/content/pm/ActivityInfo;

    iget v5, v4, Landroid/content/pm/ActivityInfo;->flags:I

    or-int/lit16 v5, v5, 0x100

    iput v5, v4, Landroid/content/pm/ActivityInfo;->flags:I

    .line 3557
    :cond_d
    const/16 v4, 0x1d

    const/4 v5, 0x0

    move-object/from16 v0, v24

    invoke-virtual {v0, v4, v5}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v4

    if-nez v4, :cond_e

    .line 3558
    const/16 v4, 0x27

    const/4 v5, 0x0

    move-object/from16 v0, v24

    invoke-virtual {v0, v4, v5}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v4

    .line 3557
    if-eqz v4, :cond_f

    .line 3559
    :cond_e
    move-object/from16 v0, v17

    iget-object v4, v0, Landroid/content/pm/PackageParser$Activity;->info:Landroid/content/pm/ActivityInfo;

    iget v5, v4, Landroid/content/pm/ActivityInfo;->flags:I

    or-int/lit16 v5, v5, 0x400

    iput v5, v4, Landroid/content/pm/ActivityInfo;->flags:I

    .line 3562
    :cond_f
    const/16 v4, 0x18

    const/4 v5, 0x0

    move-object/from16 v0, v24

    invoke-virtual {v0, v4, v5}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v4

    if-eqz v4, :cond_10

    .line 3563
    move-object/from16 v0, v17

    iget-object v4, v0, Landroid/content/pm/PackageParser$Activity;->info:Landroid/content/pm/ActivityInfo;

    iget v5, v4, Landroid/content/pm/ActivityInfo;->flags:I

    or-int/lit16 v5, v5, 0x800

    iput v5, v4, Landroid/content/pm/ActivityInfo;->flags:I

    .line 3566
    :cond_10
    const/16 v4, 0x2d

    const/4 v5, 0x0

    move-object/from16 v0, v24

    invoke-virtual {v0, v4, v5}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v4

    if-eqz v4, :cond_11

    .line 3567
    move-object/from16 v0, v17

    iget-object v4, v0, Landroid/content/pm/PackageParser$Activity;->info:Landroid/content/pm/ActivityInfo;

    iget v5, v4, Landroid/content/pm/ActivityInfo;->flags:I

    const/high16 v6, 0x20000000

    or-int/2addr v5, v6

    iput v5, v4, Landroid/content/pm/ActivityInfo;->flags:I

    .line 3570
    :cond_11
    if-nez p6, :cond_24

    .line 3571
    const/16 v4, 0x19

    move-object/from16 v0, v24

    move/from16 v1, p7

    invoke-virtual {v0, v4, v1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v4

    if-eqz v4, :cond_12

    .line 3573
    move-object/from16 v0, v17

    iget-object v4, v0, Landroid/content/pm/PackageParser$Activity;->info:Landroid/content/pm/ActivityInfo;

    iget v5, v4, Landroid/content/pm/ActivityInfo;->flags:I

    or-int/lit16 v5, v5, 0x200

    iput v5, v4, Landroid/content/pm/ActivityInfo;->flags:I

    .line 3576
    :cond_12
    move-object/from16 v0, v17

    iget-object v4, v0, Landroid/content/pm/PackageParser$Activity;->info:Landroid/content/pm/ActivityInfo;

    .line 3577
    const/16 v5, 0xe

    const/4 v6, 0x0

    .line 3576
    move-object/from16 v0, v24

    invoke-virtual {v0, v5, v6}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v5

    iput v5, v4, Landroid/content/pm/ActivityInfo;->launchMode:I

    .line 3578
    move-object/from16 v0, v17

    iget-object v4, v0, Landroid/content/pm/PackageParser$Activity;->info:Landroid/content/pm/ActivityInfo;

    .line 3579
    const/16 v5, 0x21

    .line 3580
    const/4 v6, 0x0

    .line 3578
    move-object/from16 v0, v24

    invoke-virtual {v0, v5, v6}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v5

    iput v5, v4, Landroid/content/pm/ActivityInfo;->documentLaunchMode:I

    .line 3581
    move-object/from16 v0, v17

    iget-object v4, v0, Landroid/content/pm/PackageParser$Activity;->info:Landroid/content/pm/ActivityInfo;

    .line 3583
    invoke-static {}, Landroid/app/ActivityManager;->getDefaultAppRecentsLimitStatic()I

    move-result v5

    .line 3582
    const/16 v6, 0x22

    .line 3581
    move-object/from16 v0, v24

    invoke-virtual {v0, v6, v5}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v5

    iput v5, v4, Landroid/content/pm/ActivityInfo;->maxRecents:I

    .line 3584
    move-object/from16 v0, v17

    iget-object v4, v0, Landroid/content/pm/PackageParser$Activity;->info:Landroid/content/pm/ActivityInfo;

    const/16 v5, 0x10

    const/4 v6, 0x0

    move-object/from16 v0, v24

    invoke-virtual {v0, v5, v6}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v5

    iput v5, v4, Landroid/content/pm/ActivityInfo;->configChanges:I

    .line 3585
    move-object/from16 v0, v17

    iget-object v4, v0, Landroid/content/pm/PackageParser$Activity;->info:Landroid/content/pm/ActivityInfo;

    .line 3586
    const/16 v5, 0x14

    const/4 v6, 0x0

    .line 3585
    move-object/from16 v0, v24

    invoke-virtual {v0, v5, v6}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v5

    iput v5, v4, Landroid/content/pm/ActivityInfo;->softInputMode:I

    .line 3588
    move-object/from16 v0, v17

    iget-object v4, v0, Landroid/content/pm/PackageParser$Activity;->info:Landroid/content/pm/ActivityInfo;

    .line 3589
    const/16 v5, 0x20

    .line 3590
    const/4 v6, 0x0

    .line 3588
    move-object/from16 v0, v24

    invoke-virtual {v0, v5, v6}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result v5

    iput v5, v4, Landroid/content/pm/ActivityInfo;->persistableMode:I

    .line 3592
    const/16 v4, 0x1f

    const/4 v5, 0x0

    move-object/from16 v0, v24

    invoke-virtual {v0, v4, v5}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v4

    if-eqz v4, :cond_13

    .line 3593
    move-object/from16 v0, v17

    iget-object v4, v0, Landroid/content/pm/PackageParser$Activity;->info:Landroid/content/pm/ActivityInfo;

    iget v5, v4, Landroid/content/pm/ActivityInfo;->flags:I

    const/high16 v6, -0x80000000

    or-int/2addr v5, v6

    iput v5, v4, Landroid/content/pm/ActivityInfo;->flags:I

    .line 3596
    :cond_13
    const/16 v4, 0x23

    const/4 v5, 0x0

    move-object/from16 v0, v24

    invoke-virtual {v0, v4, v5}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v4

    if-eqz v4, :cond_14

    .line 3597
    move-object/from16 v0, v17

    iget-object v4, v0, Landroid/content/pm/PackageParser$Activity;->info:Landroid/content/pm/ActivityInfo;

    iget v5, v4, Landroid/content/pm/ActivityInfo;->flags:I

    or-int/lit16 v5, v5, 0x2000

    iput v5, v4, Landroid/content/pm/ActivityInfo;->flags:I

    .line 3600
    :cond_14
    const/16 v4, 0x24

    const/4 v5, 0x0

    move-object/from16 v0, v24

    invoke-virtual {v0, v4, v5}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v4

    if-eqz v4, :cond_15

    .line 3601
    move-object/from16 v0, v17

    iget-object v4, v0, Landroid/content/pm/PackageParser$Activity;->info:Landroid/content/pm/ActivityInfo;

    iget v5, v4, Landroid/content/pm/ActivityInfo;->flags:I

    or-int/lit16 v5, v5, 0x1000

    iput v5, v4, Landroid/content/pm/ActivityInfo;->flags:I

    .line 3604
    :cond_15
    const/16 v4, 0x25

    const/4 v5, 0x0

    move-object/from16 v0, v24

    invoke-virtual {v0, v4, v5}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v4

    if-eqz v4, :cond_16

    .line 3605
    move-object/from16 v0, v17

    iget-object v4, v0, Landroid/content/pm/PackageParser$Activity;->info:Landroid/content/pm/ActivityInfo;

    iget v5, v4, Landroid/content/pm/ActivityInfo;->flags:I

    or-int/lit16 v5, v5, 0x4000

    iput v5, v4, Landroid/content/pm/ActivityInfo;->flags:I

    .line 3608
    :cond_16
    move-object/from16 v0, v17

    iget-object v4, v0, Landroid/content/pm/PackageParser$Activity;->info:Landroid/content/pm/ActivityInfo;

    .line 3609
    const/16 v5, 0xf

    .line 3610
    const/4 v6, -0x1

    .line 3608
    move-object/from16 v0, v24

    invoke-virtual {v0, v5, v6}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v5

    iput v5, v4, Landroid/content/pm/ActivityInfo;->screenOrientation:I

    .line 3612
    move-object/from16 v0, v17

    iget-object v4, v0, Landroid/content/pm/PackageParser$Activity;->info:Landroid/content/pm/ActivityInfo;

    const/4 v5, 0x0

    iput v5, v4, Landroid/content/pm/ActivityInfo;->resizeMode:I

    .line 3613
    move-object/from16 v0, p1

    iget-object v4, v0, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v4, v4, Landroid/content/pm/ApplicationInfo;->privateFlags:I

    and-int/lit16 v4, v4, 0x800

    if-eqz v4, :cond_1f

    const/16 v18, 0x1

    .line 3620
    .local v18, "appDefault":Z
    :goto_4
    const/16 v4, 0x28

    move-object/from16 v0, v24

    invoke-virtual {v0, v4}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v23

    .line 3622
    .local v23, "resizeableSetExplicitly":Z
    const/16 v4, 0x28

    .line 3621
    move-object/from16 v0, v24

    move/from16 v1, v18

    invoke-virtual {v0, v4, v1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v22

    .line 3624
    .local v22, "resizeable":Z
    if-eqz v22, :cond_21

    .line 3625
    const/16 v4, 0x29

    .line 3626
    const/4 v5, 0x0

    .line 3625
    move-object/from16 v0, v24

    invoke-virtual {v0, v4, v5}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v4

    if-eqz v4, :cond_20

    .line 3627
    move-object/from16 v0, v17

    iget-object v4, v0, Landroid/content/pm/PackageParser$Activity;->info:Landroid/content/pm/ActivityInfo;

    const/4 v5, 0x3

    iput v5, v4, Landroid/content/pm/ActivityInfo;->resizeMode:I

    .line 3638
    :cond_17
    :goto_5
    const/16 v4, 0x2e

    const/4 v5, 0x0

    move-object/from16 v0, v24

    invoke-virtual {v0, v4, v5}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v4

    if-eqz v4, :cond_18

    .line 3639
    move-object/from16 v0, v17

    iget-object v4, v0, Landroid/content/pm/PackageParser$Activity;->info:Landroid/content/pm/ActivityInfo;

    iget v5, v4, Landroid/content/pm/ActivityInfo;->flags:I

    const/high16 v6, 0x40000

    or-int/2addr v5, v6

    iput v5, v4, Landroid/content/pm/ActivityInfo;->flags:I

    .line 3642
    :cond_18
    move-object/from16 v0, v17

    iget-object v4, v0, Landroid/content/pm/PackageParser$Activity;->info:Landroid/content/pm/ActivityInfo;

    .line 3643
    const/16 v5, 0x26

    const/4 v6, 0x0

    move-object/from16 v0, v24

    invoke-virtual {v0, v5, v6}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v5

    .line 3642
    iput v5, v4, Landroid/content/pm/ActivityInfo;->lockTaskLaunchMode:I

    .line 3645
    move-object/from16 v0, v17

    iget-object v4, v0, Landroid/content/pm/PackageParser$Activity;->info:Landroid/content/pm/ActivityInfo;

    .line 3646
    const/16 v5, 0x2a

    .line 3647
    const/4 v6, 0x0

    .line 3645
    move-object/from16 v0, v24

    invoke-virtual {v0, v5, v6}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v5

    move-object/from16 v0, v17

    iget-object v6, v0, Landroid/content/pm/PackageParser$Activity;->info:Landroid/content/pm/ActivityInfo;

    iput-boolean v5, v6, Landroid/content/pm/ActivityInfo;->directBootAware:Z

    iput-boolean v5, v4, Landroid/content/pm/ActivityInfo;->encryptionAware:Z

    .line 3649
    move-object/from16 v0, v17

    iget-object v4, v0, Landroid/content/pm/PackageParser$Activity;->info:Landroid/content/pm/ActivityInfo;

    .line 3650
    const/16 v5, 0x2b

    move-object/from16 v0, v24

    invoke-virtual {v0, v5}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 3649
    iput-object v5, v4, Landroid/content/pm/ActivityInfo;->requestedVrComponent:Ljava/lang/String;

    .line 3671
    .end local v18    # "appDefault":Z
    .end local v22    # "resizeable":Z
    .end local v23    # "resizeableSetExplicitly":Z
    .end local v25    # "setExported":Z
    :goto_6
    move-object/from16 v0, v17

    iget-object v4, v0, Landroid/content/pm/PackageParser$Activity;->info:Landroid/content/pm/ActivityInfo;

    iget-boolean v4, v4, Landroid/content/pm/ActivityInfo;->directBootAware:Z

    if-eqz v4, :cond_19

    .line 3672
    move-object/from16 v0, p1

    iget-object v4, v0, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v5, v4, Landroid/content/pm/ApplicationInfo;->privateFlags:I

    or-int/lit16 v5, v5, 0x100

    iput v5, v4, Landroid/content/pm/ApplicationInfo;->privateFlags:I

    .line 3676
    :cond_19
    invoke-virtual/range {v24 .. v24}, Landroid/content/res/TypedArray;->recycle()V

    .line 3678
    if-eqz p6, :cond_1a

    move-object/from16 v0, p1

    iget-object v4, v0, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v4, v4, Landroid/content/pm/ApplicationInfo;->privateFlags:I

    and-int/lit8 v4, v4, 0x2

    if-eqz v4, :cond_1a

    .line 3682
    move-object/from16 v0, v17

    iget-object v4, v0, Landroid/content/pm/PackageParser$Activity;->info:Landroid/content/pm/ActivityInfo;

    iget-object v4, v4, Landroid/content/pm/ActivityInfo;->processName:Ljava/lang/String;

    move-object/from16 v0, p1

    iget-object v5, v0, Landroid/content/pm/PackageParser$Package;->packageName:Ljava/lang/String;

    if-ne v4, v5, :cond_1a

    .line 3683
    const-string/jumbo v4, "Heavy-weight applications can not have receivers in main process"

    const/4 v5, 0x0

    aput-object v4, p5, v5

    .line 3687
    :cond_1a
    const/4 v4, 0x0

    aget-object v4, p5, v4

    if-eqz v4, :cond_26

    .line 3688
    const/4 v4, 0x0

    return-object v4

    .line 3498
    .end local v26    # "str":Ljava/lang/String;
    .restart local v20    # "parentClassName":Ljava/lang/String;
    .restart local v25    # "setExported":Z
    :cond_1b
    const-string/jumbo v4, "PackageParser"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "Activity "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, v17

    iget-object v6, v0, Landroid/content/pm/PackageParser$Activity;->info:Landroid/content/pm/ActivityInfo;

    iget-object v6, v6, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, " specified invalid parentActivityName "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, v21

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3500
    const/4 v4, 0x0

    const/4 v5, 0x0

    aput-object v4, p5, v5

    goto/16 :goto_1

    .line 3509
    .end local v20    # "parentClassName":Ljava/lang/String;
    .restart local v26    # "str":Ljava/lang/String;
    :cond_1c
    move-object/from16 v0, v17

    iget-object v5, v0, Landroid/content/pm/PackageParser$Activity;->info:Landroid/content/pm/ActivityInfo;

    invoke-virtual/range {v26 .. v26}, Ljava/lang/String;->length()I

    move-result v4

    if-lez v4, :cond_1d

    invoke-virtual/range {v26 .. v26}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v4

    :goto_7
    iput-object v4, v5, Landroid/content/pm/ActivityInfo;->permission:Ljava/lang/String;

    goto/16 :goto_2

    :cond_1d
    const/4 v4, 0x0

    goto :goto_7

    .line 3549
    :cond_1e
    const/4 v4, 0x0

    goto/16 :goto_3

    .line 3613
    :cond_1f
    const/16 v18, 0x0

    .restart local v18    # "appDefault":Z
    goto/16 :goto_4

    .line 3629
    .restart local v22    # "resizeable":Z
    .restart local v23    # "resizeableSetExplicitly":Z
    :cond_20
    move-object/from16 v0, v17

    iget-object v4, v0, Landroid/content/pm/PackageParser$Activity;->info:Landroid/content/pm/ActivityInfo;

    const/4 v5, 0x2

    iput v5, v4, Landroid/content/pm/ActivityInfo;->resizeMode:I

    goto/16 :goto_5

    .line 3631
    :cond_21
    move-object/from16 v0, p1

    iget-object v4, v0, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v4, v4, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    const/16 v5, 0x18

    if-ge v4, v5, :cond_22

    if-eqz v23, :cond_23

    .line 3633
    :cond_22
    move-object/from16 v0, v17

    iget-object v4, v0, Landroid/content/pm/PackageParser$Activity;->info:Landroid/content/pm/ActivityInfo;

    const/4 v5, 0x0

    iput v5, v4, Landroid/content/pm/ActivityInfo;->resizeMode:I

    goto/16 :goto_5

    .line 3634
    :cond_23
    move-object/from16 v0, v17

    iget-object v4, v0, Landroid/content/pm/PackageParser$Activity;->info:Landroid/content/pm/ActivityInfo;

    invoke-virtual {v4}, Landroid/content/pm/ActivityInfo;->isFixedOrientation()Z

    move-result v4

    if-nez v4, :cond_17

    move-object/from16 v0, v17

    iget-object v4, v0, Landroid/content/pm/PackageParser$Activity;->info:Landroid/content/pm/ActivityInfo;

    iget v4, v4, Landroid/content/pm/ActivityInfo;->flags:I

    and-int/lit16 v4, v4, 0x800

    if-nez v4, :cond_17

    .line 3635
    move-object/from16 v0, v17

    iget-object v4, v0, Landroid/content/pm/PackageParser$Activity;->info:Landroid/content/pm/ActivityInfo;

    const/4 v5, 0x4

    iput v5, v4, Landroid/content/pm/ActivityInfo;->resizeMode:I

    goto/16 :goto_5

    .line 3652
    .end local v18    # "appDefault":Z
    .end local v22    # "resizeable":Z
    .end local v23    # "resizeableSetExplicitly":Z
    :cond_24
    move-object/from16 v0, v17

    iget-object v4, v0, Landroid/content/pm/PackageParser$Activity;->info:Landroid/content/pm/ActivityInfo;

    const/4 v5, 0x0

    iput v5, v4, Landroid/content/pm/ActivityInfo;->launchMode:I

    .line 3653
    move-object/from16 v0, v17

    iget-object v4, v0, Landroid/content/pm/PackageParser$Activity;->info:Landroid/content/pm/ActivityInfo;

    const/4 v5, 0x0

    iput v5, v4, Landroid/content/pm/ActivityInfo;->configChanges:I

    .line 3655
    const/16 v4, 0x1c

    const/4 v5, 0x0

    move-object/from16 v0, v24

    invoke-virtual {v0, v4, v5}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v4

    if-eqz v4, :cond_25

    .line 3656
    move-object/from16 v0, v17

    iget-object v4, v0, Landroid/content/pm/PackageParser$Activity;->info:Landroid/content/pm/ActivityInfo;

    iget v5, v4, Landroid/content/pm/ActivityInfo;->flags:I

    const/high16 v6, 0x40000000    # 2.0f

    or-int/2addr v5, v6

    iput v5, v4, Landroid/content/pm/ActivityInfo;->flags:I

    .line 3657
    move-object/from16 v0, v17

    iget-object v4, v0, Landroid/content/pm/PackageParser$Activity;->info:Landroid/content/pm/ActivityInfo;

    iget-boolean v4, v4, Landroid/content/pm/ActivityInfo;->exported:Z

    if-eqz v4, :cond_25

    move/from16 v0, p4

    and-int/lit16 v4, v0, 0x80

    if-nez v4, :cond_25

    .line 3658
    const-string/jumbo v4, "PackageParser"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "Activity exported request ignored due to singleUser: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 3659
    move-object/from16 v0, v17

    iget-object v6, v0, Landroid/content/pm/PackageParser$Activity;->className:Ljava/lang/String;

    .line 3658
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 3659
    const-string/jumbo v6, " at "

    .line 3658
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 3659
    move-object/from16 v0, p0

    iget-object v6, v0, Landroid/content/pm/PackageParser;->mArchiveSourcePath:Ljava/lang/String;

    .line 3658
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 3659
    const-string/jumbo v6, " "

    .line 3658
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 3660
    invoke-interface/range {p3 .. p3}, Landroid/content/res/XmlResourceParser;->getPositionDescription()Ljava/lang/String;

    move-result-object v6

    .line 3658
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3661
    move-object/from16 v0, v17

    iget-object v4, v0, Landroid/content/pm/PackageParser$Activity;->info:Landroid/content/pm/ActivityInfo;

    const/4 v5, 0x0

    iput-boolean v5, v4, Landroid/content/pm/ActivityInfo;->exported:Z

    .line 3662
    const/16 v25, 0x1

    .line 3666
    .end local v25    # "setExported":Z
    :cond_25
    move-object/from16 v0, v17

    iget-object v4, v0, Landroid/content/pm/PackageParser$Activity;->info:Landroid/content/pm/ActivityInfo;

    .line 3667
    const/16 v5, 0x2a

    .line 3668
    const/4 v6, 0x0

    .line 3666
    move-object/from16 v0, v24

    invoke-virtual {v0, v5, v6}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v5

    move-object/from16 v0, v17

    iget-object v6, v0, Landroid/content/pm/PackageParser$Activity;->info:Landroid/content/pm/ActivityInfo;

    iput-boolean v5, v6, Landroid/content/pm/ActivityInfo;->directBootAware:Z

    iput-boolean v5, v4, Landroid/content/pm/ActivityInfo;->encryptionAware:Z

    goto/16 :goto_6

    .line 3691
    :cond_26
    invoke-interface/range {p3 .. p3}, Landroid/content/res/XmlResourceParser;->getDepth()I

    move-result v19

    .line 3693
    .local v19, "outerDepth":I
    :cond_27
    :goto_8
    invoke-interface/range {p3 .. p3}, Landroid/content/res/XmlResourceParser;->next()I

    move-result v27

    .local v27, "type":I
    const/4 v4, 0x1

    move/from16 v0, v27

    if-eq v0, v4, :cond_33

    .line 3694
    const/4 v4, 0x3

    move/from16 v0, v27

    if-ne v0, v4, :cond_28

    .line 3695
    invoke-interface/range {p3 .. p3}, Landroid/content/res/XmlResourceParser;->getDepth()I

    move-result v4

    move/from16 v0, v19

    if-le v4, v0, :cond_33

    .line 3696
    :cond_28
    const/4 v4, 0x3

    move/from16 v0, v27

    if-eq v0, v4, :cond_27

    const/4 v4, 0x4

    move/from16 v0, v27

    if-eq v0, v4, :cond_27

    .line 3700
    invoke-interface/range {p3 .. p3}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v5, "intent-filter"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2b

    .line 3701
    new-instance v9, Landroid/content/pm/PackageParser$ActivityIntentInfo;

    move-object/from16 v0, v17

    invoke-direct {v9, v0}, Landroid/content/pm/PackageParser$ActivityIntentInfo;-><init>(Landroid/content/pm/PackageParser$Activity;)V

    .line 3702
    .local v9, "intent":Landroid/content/pm/PackageParser$ActivityIntentInfo;
    const/4 v7, 0x1

    const/4 v8, 0x1

    move-object/from16 v4, p0

    move-object/from16 v5, p2

    move-object/from16 v6, p3

    move-object/from16 v10, p5

    invoke-direct/range {v4 .. v10}, Landroid/content/pm/PackageParser;->parseIntent(Landroid/content/res/Resources;Landroid/content/res/XmlResourceParser;ZZLandroid/content/pm/PackageParser$IntentInfo;[Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_29

    .line 3703
    const/4 v4, 0x0

    return-object v4

    .line 3705
    :cond_29
    invoke-virtual {v9}, Landroid/content/pm/PackageParser$ActivityIntentInfo;->countActions()I

    move-result v4

    if-nez v4, :cond_2a

    .line 3707
    move-object/from16 v0, p0

    iget-boolean v4, v0, Landroid/content/pm/PackageParser;->mTidyLog:Z

    if-nez v4, :cond_27

    .line 3708
    const-string/jumbo v4, "PackageParser"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "No actions in intent filter at "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 3709
    move-object/from16 v0, p0

    iget-object v6, v0, Landroid/content/pm/PackageParser;->mArchiveSourcePath:Ljava/lang/String;

    .line 3708
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 3709
    const-string/jumbo v6, " "

    .line 3708
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 3710
    invoke-interface/range {p3 .. p3}, Landroid/content/res/XmlResourceParser;->getPositionDescription()Ljava/lang/String;

    move-result-object v6

    .line 3708
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_8

    .line 3714
    :cond_2a
    move-object/from16 v0, v17

    iget-object v4, v0, Landroid/content/pm/PackageParser$Activity;->intents:Ljava/util/ArrayList;

    invoke-virtual {v4, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_8

    .line 3716
    .end local v9    # "intent":Landroid/content/pm/PackageParser$ActivityIntentInfo;
    :cond_2b
    if-nez p6, :cond_2f

    invoke-interface/range {p3 .. p3}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v5, "preferred"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2f

    .line 3717
    new-instance v9, Landroid/content/pm/PackageParser$ActivityIntentInfo;

    move-object/from16 v0, v17

    invoke-direct {v9, v0}, Landroid/content/pm/PackageParser$ActivityIntentInfo;-><init>(Landroid/content/pm/PackageParser$Activity;)V

    .line 3718
    .restart local v9    # "intent":Landroid/content/pm/PackageParser$ActivityIntentInfo;
    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object/from16 v4, p0

    move-object/from16 v5, p2

    move-object/from16 v6, p3

    move-object/from16 v10, p5

    invoke-direct/range {v4 .. v10}, Landroid/content/pm/PackageParser;->parseIntent(Landroid/content/res/Resources;Landroid/content/res/XmlResourceParser;ZZLandroid/content/pm/PackageParser$IntentInfo;[Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_2c

    .line 3719
    const/4 v4, 0x0

    return-object v4

    .line 3721
    :cond_2c
    invoke-virtual {v9}, Landroid/content/pm/PackageParser$ActivityIntentInfo;->countActions()I

    move-result v4

    if-nez v4, :cond_2d

    .line 3723
    move-object/from16 v0, p0

    iget-boolean v4, v0, Landroid/content/pm/PackageParser;->mTidyLog:Z

    if-nez v4, :cond_27

    .line 3724
    const-string/jumbo v4, "PackageParser"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "No actions in preferred at "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 3725
    move-object/from16 v0, p0

    iget-object v6, v0, Landroid/content/pm/PackageParser;->mArchiveSourcePath:Ljava/lang/String;

    .line 3724
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 3725
    const-string/jumbo v6, " "

    .line 3724
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 3726
    invoke-interface/range {p3 .. p3}, Landroid/content/res/XmlResourceParser;->getPositionDescription()Ljava/lang/String;

    move-result-object v6

    .line 3724
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_8

    .line 3730
    :cond_2d
    move-object/from16 v0, p1

    iget-object v4, v0, Landroid/content/pm/PackageParser$Package;->preferredActivityFilters:Ljava/util/ArrayList;

    if-nez v4, :cond_2e

    .line 3731
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v0, p1

    iput-object v4, v0, Landroid/content/pm/PackageParser$Package;->preferredActivityFilters:Ljava/util/ArrayList;

    .line 3733
    :cond_2e
    move-object/from16 v0, p1

    iget-object v4, v0, Landroid/content/pm/PackageParser$Package;->preferredActivityFilters:Ljava/util/ArrayList;

    invoke-virtual {v4, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_8

    .line 3735
    .end local v9    # "intent":Landroid/content/pm/PackageParser$ActivityIntentInfo;
    :cond_2f
    invoke-interface/range {p3 .. p3}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v5, "meta-data"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_30

    .line 3736
    move-object/from16 v0, v17

    iget-object v4, v0, Landroid/content/pm/PackageParser$Activity;->metaData:Landroid/os/Bundle;

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move-object/from16 v2, p3

    move-object/from16 v3, p5

    invoke-direct {v0, v1, v2, v4, v3}, Landroid/content/pm/PackageParser;->parseMetaData(Landroid/content/res/Resources;Landroid/content/res/XmlResourceParser;Landroid/os/Bundle;[Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v4

    move-object/from16 v0, v17

    iput-object v4, v0, Landroid/content/pm/PackageParser$Activity;->metaData:Landroid/os/Bundle;

    if-nez v4, :cond_27

    .line 3738
    const/4 v4, 0x0

    return-object v4

    .line 3740
    :cond_30
    if-nez p6, :cond_31

    invoke-interface/range {p3 .. p3}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v5, "layout"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_31

    .line 3741
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move-object/from16 v2, p3

    move-object/from16 v3, v17

    invoke-direct {v0, v1, v2, v3}, Landroid/content/pm/PackageParser;->parseLayout(Landroid/content/res/Resources;Landroid/util/AttributeSet;Landroid/content/pm/PackageParser$Activity;)V

    goto/16 :goto_8

    .line 3744
    :cond_31
    const-string/jumbo v4, "PackageParser"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "Problem in package "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v6, v0, Landroid/content/pm/PackageParser;->mArchiveSourcePath:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, ":"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3745
    if-eqz p6, :cond_32

    .line 3746
    const-string/jumbo v4, "PackageParser"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "Unknown element under <receiver>: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-interface/range {p3 .. p3}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 3747
    const-string/jumbo v6, " at "

    .line 3746
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 3747
    move-object/from16 v0, p0

    iget-object v6, v0, Landroid/content/pm/PackageParser;->mArchiveSourcePath:Ljava/lang/String;

    .line 3746
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 3747
    const-string/jumbo v6, " "

    .line 3746
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 3748
    invoke-interface/range {p3 .. p3}, Landroid/content/res/XmlResourceParser;->getPositionDescription()Ljava/lang/String;

    move-result-object v6

    .line 3746
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3754
    :goto_9
    invoke-static/range {p3 .. p3}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    goto/16 :goto_8

    .line 3750
    :cond_32
    const-string/jumbo v4, "PackageParser"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "Unknown element under <activity>: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-interface/range {p3 .. p3}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 3751
    const-string/jumbo v6, " at "

    .line 3750
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 3751
    move-object/from16 v0, p0

    iget-object v6, v0, Landroid/content/pm/PackageParser;->mArchiveSourcePath:Ljava/lang/String;

    .line 3750
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 3751
    const-string/jumbo v6, " "

    .line 3750
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 3752
    invoke-interface/range {p3 .. p3}, Landroid/content/res/XmlResourceParser;->getPositionDescription()Ljava/lang/String;

    move-result-object v6

    .line 3750
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_9

    .line 3767
    :cond_33
    if-nez v25, :cond_34

    .line 3768
    move-object/from16 v0, v17

    iget-object v5, v0, Landroid/content/pm/PackageParser$Activity;->info:Landroid/content/pm/ActivityInfo;

    move-object/from16 v0, v17

    iget-object v4, v0, Landroid/content/pm/PackageParser$Activity;->intents:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-lez v4, :cond_35

    const/4 v4, 0x1

    :goto_a
    iput-boolean v4, v5, Landroid/content/pm/ActivityInfo;->exported:Z

    .line 3771
    :cond_34
    return-object v17

    .line 3768
    :cond_35
    const/4 v4, 0x0

    goto :goto_a
.end method

.method private parseActivityAlias(Landroid/content/pm/PackageParser$Package;Landroid/content/res/Resources;Landroid/content/res/XmlResourceParser;I[Ljava/lang/String;)Landroid/content/pm/PackageParser$Activity;
    .locals 31
    .param p1, "owner"    # Landroid/content/pm/PackageParser$Package;
    .param p2, "res"    # Landroid/content/res/Resources;
    .param p3, "parser"    # Landroid/content/res/XmlResourceParser;
    .param p4, "flags"    # I
    .param p5, "outError"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 3821
    sget-object v4, Lcom/android/internal/R$styleable;->AndroidManifestActivityAlias:[I

    .line 3820
    move-object/from16 v0, p2

    move-object/from16 v1, p3

    invoke-virtual {v0, v1, v4}, Landroid/content/res/Resources;->obtainAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v24

    .line 3824
    .local v24, "sa":Landroid/content/res/TypedArray;
    const/4 v4, 0x7

    .line 3825
    const/16 v5, 0x400

    .line 3823
    move-object/from16 v0, v24

    invoke-virtual {v0, v4, v5}, Landroid/content/res/TypedArray;->getNonConfigurationString(II)Ljava/lang/String;

    move-result-object v29

    .line 3826
    .local v29, "targetActivity":Ljava/lang/String;
    if-nez v29, :cond_0

    .line 3827
    const-string/jumbo v4, "<activity-alias> does not specify android:targetActivity"

    const/4 v5, 0x0

    aput-object v4, p5, v5

    .line 3828
    invoke-virtual/range {v24 .. v24}, Landroid/content/res/TypedArray;->recycle()V

    .line 3829
    const/4 v4, 0x0

    return-object v4

    .line 3832
    :cond_0
    move-object/from16 v0, p1

    iget-object v4, v0, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v4, v4, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    move-object/from16 v0, v29

    move-object/from16 v1, p5

    invoke-static {v4, v0, v1}, Landroid/content/pm/PackageParser;->buildClassName(Ljava/lang/String;Ljava/lang/CharSequence;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v29

    .line 3834
    if-nez v29, :cond_1

    .line 3835
    invoke-virtual/range {v24 .. v24}, Landroid/content/res/TypedArray;->recycle()V

    .line 3836
    const/4 v4, 0x0

    return-object v4

    .line 3839
    :cond_1
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/content/pm/PackageParser;->mParseActivityAliasArgs:Landroid/content/pm/PackageParser$ParseComponentArgs;

    if-nez v4, :cond_2

    .line 3840
    new-instance v4, Landroid/content/pm/PackageParser$ParseComponentArgs;

    .line 3847
    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/content/pm/PackageParser;->mSeparateProcesses:[Ljava/lang/String;

    .line 3841
    const/4 v7, 0x2

    .line 3842
    const/4 v8, 0x0

    .line 3843
    const/4 v9, 0x1

    .line 3844
    const/16 v10, 0xb

    .line 3845
    const/16 v11, 0x8

    .line 3846
    const/16 v12, 0xa

    .line 3848
    const/4 v14, 0x0

    .line 3849
    const/4 v15, 0x6

    .line 3850
    const/16 v16, 0x4

    move-object/from16 v5, p1

    move-object/from16 v6, p5

    .line 3840
    invoke-direct/range {v4 .. v16}, Landroid/content/pm/PackageParser$ParseComponentArgs;-><init>(Landroid/content/pm/PackageParser$Package;[Ljava/lang/String;IIIIII[Ljava/lang/String;III)V

    move-object/from16 v0, p0

    iput-object v4, v0, Landroid/content/pm/PackageParser;->mParseActivityAliasArgs:Landroid/content/pm/PackageParser$ParseComponentArgs;

    .line 3851
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/content/pm/PackageParser;->mParseActivityAliasArgs:Landroid/content/pm/PackageParser$ParseComponentArgs;

    const-string/jumbo v5, "<activity-alias>"

    iput-object v5, v4, Landroid/content/pm/PackageParser$ParseComponentArgs;->tag:Ljava/lang/String;

    .line 3854
    :cond_2
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/content/pm/PackageParser;->mParseActivityAliasArgs:Landroid/content/pm/PackageParser$ParseComponentArgs;

    move-object/from16 v0, v24

    iput-object v0, v4, Landroid/content/pm/PackageParser$ParseComponentArgs;->sa:Landroid/content/res/TypedArray;

    .line 3855
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/content/pm/PackageParser;->mParseActivityAliasArgs:Landroid/content/pm/PackageParser$ParseComponentArgs;

    move/from16 v0, p4

    iput v0, v4, Landroid/content/pm/PackageParser$ParseComponentArgs;->flags:I

    .line 3857
    const/16 v28, 0x0

    .line 3859
    .local v28, "target":Landroid/content/pm/PackageParser$Activity;
    move-object/from16 v0, p1

    iget-object v4, v0, Landroid/content/pm/PackageParser$Package;->activities:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v17

    .line 3860
    .local v17, "NA":I
    const/16 v19, 0x0

    .local v19, "i":I
    :goto_0
    move/from16 v0, v19

    move/from16 v1, v17

    if-ge v0, v1, :cond_3

    .line 3861
    move-object/from16 v0, p1

    iget-object v4, v0, Landroid/content/pm/PackageParser$Package;->activities:Ljava/util/ArrayList;

    move/from16 v0, v19

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v27

    check-cast v27, Landroid/content/pm/PackageParser$Activity;

    .line 3862
    .local v27, "t":Landroid/content/pm/PackageParser$Activity;
    move-object/from16 v0, v27

    iget-object v4, v0, Landroid/content/pm/PackageParser$Activity;->info:Landroid/content/pm/ActivityInfo;

    iget-object v4, v4, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    move-object/from16 v0, v29

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 3863
    move-object/from16 v28, v27

    .line 3868
    .end local v27    # "t":Landroid/content/pm/PackageParser$Activity;
    .end local v28    # "target":Landroid/content/pm/PackageParser$Activity;
    :cond_3
    if-nez v28, :cond_5

    .line 3869
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "<activity-alias> target activity "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v29

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 3870
    const-string/jumbo v5, " not found in manifest"

    .line 3869
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    aput-object v4, p5, v5

    .line 3871
    invoke-virtual/range {v24 .. v24}, Landroid/content/res/TypedArray;->recycle()V

    .line 3872
    const/4 v4, 0x0

    return-object v4

    .line 3860
    .restart local v27    # "t":Landroid/content/pm/PackageParser$Activity;
    .restart local v28    # "target":Landroid/content/pm/PackageParser$Activity;
    :cond_4
    add-int/lit8 v19, v19, 0x1

    goto :goto_0

    .line 3875
    .end local v27    # "t":Landroid/content/pm/PackageParser$Activity;
    .end local v28    # "target":Landroid/content/pm/PackageParser$Activity;
    :cond_5
    new-instance v20, Landroid/content/pm/ActivityInfo;

    invoke-direct/range {v20 .. v20}, Landroid/content/pm/ActivityInfo;-><init>()V

    .line 3876
    .local v20, "info":Landroid/content/pm/ActivityInfo;
    move-object/from16 v0, v29

    move-object/from16 v1, v20

    iput-object v0, v1, Landroid/content/pm/ActivityInfo;->targetActivity:Ljava/lang/String;

    .line 3877
    move-object/from16 v0, v28

    iget-object v4, v0, Landroid/content/pm/PackageParser$Activity;->info:Landroid/content/pm/ActivityInfo;

    iget v4, v4, Landroid/content/pm/ActivityInfo;->configChanges:I

    move-object/from16 v0, v20

    iput v4, v0, Landroid/content/pm/ActivityInfo;->configChanges:I

    .line 3878
    move-object/from16 v0, v28

    iget-object v4, v0, Landroid/content/pm/PackageParser$Activity;->info:Landroid/content/pm/ActivityInfo;

    iget v4, v4, Landroid/content/pm/ActivityInfo;->flags:I

    move-object/from16 v0, v20

    iput v4, v0, Landroid/content/pm/ActivityInfo;->flags:I

    .line 3879
    move-object/from16 v0, v28

    iget-object v4, v0, Landroid/content/pm/PackageParser$Activity;->info:Landroid/content/pm/ActivityInfo;

    iget v4, v4, Landroid/content/pm/ActivityInfo;->icon:I

    move-object/from16 v0, v20

    iput v4, v0, Landroid/content/pm/ActivityInfo;->icon:I

    .line 3880
    move-object/from16 v0, v28

    iget-object v4, v0, Landroid/content/pm/PackageParser$Activity;->info:Landroid/content/pm/ActivityInfo;

    iget v4, v4, Landroid/content/pm/ActivityInfo;->logo:I

    move-object/from16 v0, v20

    iput v4, v0, Landroid/content/pm/ActivityInfo;->logo:I

    .line 3881
    move-object/from16 v0, v28

    iget-object v4, v0, Landroid/content/pm/PackageParser$Activity;->info:Landroid/content/pm/ActivityInfo;

    iget v4, v4, Landroid/content/pm/ActivityInfo;->banner:I

    move-object/from16 v0, v20

    iput v4, v0, Landroid/content/pm/ActivityInfo;->banner:I

    .line 3882
    move-object/from16 v0, v28

    iget-object v4, v0, Landroid/content/pm/PackageParser$Activity;->info:Landroid/content/pm/ActivityInfo;

    iget v4, v4, Landroid/content/pm/ActivityInfo;->labelRes:I

    move-object/from16 v0, v20

    iput v4, v0, Landroid/content/pm/ActivityInfo;->labelRes:I

    .line 3883
    move-object/from16 v0, v28

    iget-object v4, v0, Landroid/content/pm/PackageParser$Activity;->info:Landroid/content/pm/ActivityInfo;

    iget-object v4, v4, Landroid/content/pm/ActivityInfo;->nonLocalizedLabel:Ljava/lang/CharSequence;

    move-object/from16 v0, v20

    iput-object v4, v0, Landroid/content/pm/ActivityInfo;->nonLocalizedLabel:Ljava/lang/CharSequence;

    .line 3884
    move-object/from16 v0, v28

    iget-object v4, v0, Landroid/content/pm/PackageParser$Activity;->info:Landroid/content/pm/ActivityInfo;

    iget v4, v4, Landroid/content/pm/ActivityInfo;->launchMode:I

    move-object/from16 v0, v20

    iput v4, v0, Landroid/content/pm/ActivityInfo;->launchMode:I

    .line 3885
    move-object/from16 v0, v28

    iget-object v4, v0, Landroid/content/pm/PackageParser$Activity;->info:Landroid/content/pm/ActivityInfo;

    iget v4, v4, Landroid/content/pm/ActivityInfo;->lockTaskLaunchMode:I

    move-object/from16 v0, v20

    iput v4, v0, Landroid/content/pm/ActivityInfo;->lockTaskLaunchMode:I

    .line 3886
    move-object/from16 v0, v28

    iget-object v4, v0, Landroid/content/pm/PackageParser$Activity;->info:Landroid/content/pm/ActivityInfo;

    iget-object v4, v4, Landroid/content/pm/ActivityInfo;->processName:Ljava/lang/String;

    move-object/from16 v0, v20

    iput-object v4, v0, Landroid/content/pm/ActivityInfo;->processName:Ljava/lang/String;

    .line 3887
    move-object/from16 v0, v20

    iget v4, v0, Landroid/content/pm/ActivityInfo;->descriptionRes:I

    if-nez v4, :cond_6

    .line 3888
    move-object/from16 v0, v28

    iget-object v4, v0, Landroid/content/pm/PackageParser$Activity;->info:Landroid/content/pm/ActivityInfo;

    iget v4, v4, Landroid/content/pm/ActivityInfo;->descriptionRes:I

    move-object/from16 v0, v20

    iput v4, v0, Landroid/content/pm/ActivityInfo;->descriptionRes:I

    .line 3890
    :cond_6
    move-object/from16 v0, v28

    iget-object v4, v0, Landroid/content/pm/PackageParser$Activity;->info:Landroid/content/pm/ActivityInfo;

    iget v4, v4, Landroid/content/pm/ActivityInfo;->screenOrientation:I

    move-object/from16 v0, v20

    iput v4, v0, Landroid/content/pm/ActivityInfo;->screenOrientation:I

    .line 3891
    move-object/from16 v0, v28

    iget-object v4, v0, Landroid/content/pm/PackageParser$Activity;->info:Landroid/content/pm/ActivityInfo;

    iget-object v4, v4, Landroid/content/pm/ActivityInfo;->taskAffinity:Ljava/lang/String;

    move-object/from16 v0, v20

    iput-object v4, v0, Landroid/content/pm/ActivityInfo;->taskAffinity:Ljava/lang/String;

    .line 3892
    move-object/from16 v0, v28

    iget-object v4, v0, Landroid/content/pm/PackageParser$Activity;->info:Landroid/content/pm/ActivityInfo;

    iget v4, v4, Landroid/content/pm/ActivityInfo;->theme:I

    move-object/from16 v0, v20

    iput v4, v0, Landroid/content/pm/ActivityInfo;->theme:I

    .line 3893
    move-object/from16 v0, v28

    iget-object v4, v0, Landroid/content/pm/PackageParser$Activity;->info:Landroid/content/pm/ActivityInfo;

    iget v4, v4, Landroid/content/pm/ActivityInfo;->softInputMode:I

    move-object/from16 v0, v20

    iput v4, v0, Landroid/content/pm/ActivityInfo;->softInputMode:I

    .line 3894
    move-object/from16 v0, v28

    iget-object v4, v0, Landroid/content/pm/PackageParser$Activity;->info:Landroid/content/pm/ActivityInfo;

    iget v4, v4, Landroid/content/pm/ActivityInfo;->uiOptions:I

    move-object/from16 v0, v20

    iput v4, v0, Landroid/content/pm/ActivityInfo;->uiOptions:I

    .line 3895
    move-object/from16 v0, v28

    iget-object v4, v0, Landroid/content/pm/PackageParser$Activity;->info:Landroid/content/pm/ActivityInfo;

    iget-object v4, v4, Landroid/content/pm/ActivityInfo;->parentActivityName:Ljava/lang/String;

    move-object/from16 v0, v20

    iput-object v4, v0, Landroid/content/pm/ActivityInfo;->parentActivityName:Ljava/lang/String;

    .line 3896
    move-object/from16 v0, v28

    iget-object v4, v0, Landroid/content/pm/PackageParser$Activity;->info:Landroid/content/pm/ActivityInfo;

    iget v4, v4, Landroid/content/pm/ActivityInfo;->maxRecents:I

    move-object/from16 v0, v20

    iput v4, v0, Landroid/content/pm/ActivityInfo;->maxRecents:I

    .line 3897
    move-object/from16 v0, v28

    iget-object v4, v0, Landroid/content/pm/PackageParser$Activity;->info:Landroid/content/pm/ActivityInfo;

    iget-object v4, v4, Landroid/content/pm/ActivityInfo;->windowLayout:Landroid/content/pm/ActivityInfo$WindowLayout;

    move-object/from16 v0, v20

    iput-object v4, v0, Landroid/content/pm/ActivityInfo;->windowLayout:Landroid/content/pm/ActivityInfo$WindowLayout;

    .line 3898
    move-object/from16 v0, v28

    iget-object v4, v0, Landroid/content/pm/PackageParser$Activity;->info:Landroid/content/pm/ActivityInfo;

    iget v4, v4, Landroid/content/pm/ActivityInfo;->resizeMode:I

    move-object/from16 v0, v20

    iput v4, v0, Landroid/content/pm/ActivityInfo;->resizeMode:I

    .line 3899
    move-object/from16 v0, v28

    iget-object v4, v0, Landroid/content/pm/PackageParser$Activity;->info:Landroid/content/pm/ActivityInfo;

    iget-boolean v4, v4, Landroid/content/pm/ActivityInfo;->directBootAware:Z

    move-object/from16 v0, v20

    iput-boolean v4, v0, Landroid/content/pm/ActivityInfo;->directBootAware:Z

    move-object/from16 v0, v20

    iput-boolean v4, v0, Landroid/content/pm/ActivityInfo;->encryptionAware:Z

    .line 3901
    new-instance v18, Landroid/content/pm/PackageParser$Activity;

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/content/pm/PackageParser;->mParseActivityAliasArgs:Landroid/content/pm/PackageParser$ParseComponentArgs;

    move-object/from16 v0, v18

    move-object/from16 v1, v20

    invoke-direct {v0, v4, v1}, Landroid/content/pm/PackageParser$Activity;-><init>(Landroid/content/pm/PackageParser$ParseComponentArgs;Landroid/content/pm/ActivityInfo;)V

    .line 3902
    .local v18, "a":Landroid/content/pm/PackageParser$Activity;
    const/4 v4, 0x0

    aget-object v4, p5, v4

    if-eqz v4, :cond_7

    .line 3903
    invoke-virtual/range {v24 .. v24}, Landroid/content/res/TypedArray;->recycle()V

    .line 3904
    const/4 v4, 0x0

    return-object v4

    .line 3908
    :cond_7
    const/4 v4, 0x5

    .line 3907
    move-object/from16 v0, v24

    invoke-virtual {v0, v4}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v25

    .line 3909
    .local v25, "setExported":Z
    if-eqz v25, :cond_8

    .line 3910
    move-object/from16 v0, v18

    iget-object v4, v0, Landroid/content/pm/PackageParser$Activity;->info:Landroid/content/pm/ActivityInfo;

    .line 3911
    const/4 v5, 0x5

    const/4 v6, 0x0

    .line 3910
    move-object/from16 v0, v24

    invoke-virtual {v0, v5, v6}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v5

    iput-boolean v5, v4, Landroid/content/pm/ActivityInfo;->exported:Z

    .line 3916
    :cond_8
    const/4 v4, 0x3

    const/4 v5, 0x0

    .line 3915
    move-object/from16 v0, v24

    invoke-virtual {v0, v4, v5}, Landroid/content/res/TypedArray;->getNonConfigurationString(II)Ljava/lang/String;

    move-result-object v26

    .line 3917
    .local v26, "str":Ljava/lang/String;
    if-eqz v26, :cond_9

    .line 3918
    move-object/from16 v0, v18

    iget-object v5, v0, Landroid/content/pm/PackageParser$Activity;->info:Landroid/content/pm/ActivityInfo;

    invoke-virtual/range {v26 .. v26}, Ljava/lang/String;->length()I

    move-result v4

    if-lez v4, :cond_b

    invoke-virtual/range {v26 .. v26}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v4

    :goto_1
    iput-object v4, v5, Landroid/content/pm/ActivityInfo;->permission:Ljava/lang/String;

    .line 3922
    :cond_9
    const/16 v4, 0x9

    .line 3923
    const/16 v5, 0x400

    .line 3921
    move-object/from16 v0, v24

    invoke-virtual {v0, v4, v5}, Landroid/content/res/TypedArray;->getNonConfigurationString(II)Ljava/lang/String;

    move-result-object v23

    .line 3924
    .local v23, "parentName":Ljava/lang/String;
    if-eqz v23, :cond_a

    .line 3925
    move-object/from16 v0, v18

    iget-object v4, v0, Landroid/content/pm/PackageParser$Activity;->info:Landroid/content/pm/ActivityInfo;

    iget-object v4, v4, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    move-object/from16 v0, v23

    move-object/from16 v1, p5

    invoke-static {v4, v0, v1}, Landroid/content/pm/PackageParser;->buildClassName(Ljava/lang/String;Ljava/lang/CharSequence;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v22

    .line 3926
    .local v22, "parentClassName":Ljava/lang/String;
    const/4 v4, 0x0

    aget-object v4, p5, v4

    if-nez v4, :cond_c

    .line 3927
    move-object/from16 v0, v18

    iget-object v4, v0, Landroid/content/pm/PackageParser$Activity;->info:Landroid/content/pm/ActivityInfo;

    move-object/from16 v0, v22

    iput-object v0, v4, Landroid/content/pm/ActivityInfo;->parentActivityName:Ljava/lang/String;

    .line 3935
    .end local v22    # "parentClassName":Ljava/lang/String;
    :cond_a
    :goto_2
    invoke-virtual/range {v24 .. v24}, Landroid/content/res/TypedArray;->recycle()V

    .line 3937
    const/4 v4, 0x0

    aget-object v4, p5, v4

    if-eqz v4, :cond_d

    .line 3938
    const/4 v4, 0x0

    return-object v4

    .line 3918
    .end local v23    # "parentName":Ljava/lang/String;
    :cond_b
    const/4 v4, 0x0

    goto :goto_1

    .line 3929
    .restart local v22    # "parentClassName":Ljava/lang/String;
    .restart local v23    # "parentName":Ljava/lang/String;
    :cond_c
    const-string/jumbo v4, "PackageParser"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "Activity alias "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, v18

    iget-object v6, v0, Landroid/content/pm/PackageParser$Activity;->info:Landroid/content/pm/ActivityInfo;

    iget-object v6, v6, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 3930
    const-string/jumbo v6, " specified invalid parentActivityName "

    .line 3929
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, v23

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3931
    const/4 v4, 0x0

    const/4 v5, 0x0

    aput-object v4, p5, v5

    goto :goto_2

    .line 3941
    .end local v22    # "parentClassName":Ljava/lang/String;
    :cond_d
    invoke-interface/range {p3 .. p3}, Landroid/content/res/XmlResourceParser;->getDepth()I

    move-result v21

    .line 3943
    .local v21, "outerDepth":I
    :cond_e
    :goto_3
    invoke-interface/range {p3 .. p3}, Landroid/content/res/XmlResourceParser;->next()I

    move-result v30

    .local v30, "type":I
    const/4 v4, 0x1

    move/from16 v0, v30

    if-eq v0, v4, :cond_14

    .line 3944
    const/4 v4, 0x3

    move/from16 v0, v30

    if-ne v0, v4, :cond_f

    .line 3945
    invoke-interface/range {p3 .. p3}, Landroid/content/res/XmlResourceParser;->getDepth()I

    move-result v4

    move/from16 v0, v21

    if-le v4, v0, :cond_14

    .line 3946
    :cond_f
    const/4 v4, 0x3

    move/from16 v0, v30

    if-eq v0, v4, :cond_e

    const/4 v4, 0x4

    move/from16 v0, v30

    if-eq v0, v4, :cond_e

    .line 3950
    invoke-interface/range {p3 .. p3}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v5, "intent-filter"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_12

    .line 3951
    new-instance v9, Landroid/content/pm/PackageParser$ActivityIntentInfo;

    move-object/from16 v0, v18

    invoke-direct {v9, v0}, Landroid/content/pm/PackageParser$ActivityIntentInfo;-><init>(Landroid/content/pm/PackageParser$Activity;)V

    .line 3952
    .local v9, "intent":Landroid/content/pm/PackageParser$ActivityIntentInfo;
    const/4 v7, 0x1

    const/4 v8, 0x1

    move-object/from16 v4, p0

    move-object/from16 v5, p2

    move-object/from16 v6, p3

    move-object/from16 v10, p5

    invoke-direct/range {v4 .. v10}, Landroid/content/pm/PackageParser;->parseIntent(Landroid/content/res/Resources;Landroid/content/res/XmlResourceParser;ZZLandroid/content/pm/PackageParser$IntentInfo;[Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_10

    .line 3953
    const/4 v4, 0x0

    return-object v4

    .line 3955
    :cond_10
    invoke-virtual {v9}, Landroid/content/pm/PackageParser$ActivityIntentInfo;->countActions()I

    move-result v4

    if-nez v4, :cond_11

    .line 3957
    move-object/from16 v0, p0

    iget-boolean v4, v0, Landroid/content/pm/PackageParser;->mTidyLog:Z

    if-nez v4, :cond_e

    .line 3958
    const-string/jumbo v4, "PackageParser"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "No actions in intent filter at "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 3959
    move-object/from16 v0, p0

    iget-object v6, v0, Landroid/content/pm/PackageParser;->mArchiveSourcePath:Ljava/lang/String;

    .line 3958
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 3959
    const-string/jumbo v6, " "

    .line 3958
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 3960
    invoke-interface/range {p3 .. p3}, Landroid/content/res/XmlResourceParser;->getPositionDescription()Ljava/lang/String;

    move-result-object v6

    .line 3958
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    .line 3964
    :cond_11
    move-object/from16 v0, v18

    iget-object v4, v0, Landroid/content/pm/PackageParser$Activity;->intents:Ljava/util/ArrayList;

    invoke-virtual {v4, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_3

    .line 3966
    .end local v9    # "intent":Landroid/content/pm/PackageParser$ActivityIntentInfo;
    :cond_12
    invoke-interface/range {p3 .. p3}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v5, "meta-data"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_13

    .line 3967
    move-object/from16 v0, v18

    iget-object v4, v0, Landroid/content/pm/PackageParser$Activity;->metaData:Landroid/os/Bundle;

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move-object/from16 v2, p3

    move-object/from16 v3, p5

    invoke-direct {v0, v1, v2, v4, v3}, Landroid/content/pm/PackageParser;->parseMetaData(Landroid/content/res/Resources;Landroid/content/res/XmlResourceParser;Landroid/os/Bundle;[Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v4

    move-object/from16 v0, v18

    iput-object v4, v0, Landroid/content/pm/PackageParser$Activity;->metaData:Landroid/os/Bundle;

    if-nez v4, :cond_e

    .line 3969
    const/4 v4, 0x0

    return-object v4

    .line 3973
    :cond_13
    const-string/jumbo v4, "PackageParser"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "Unknown element under <activity-alias>: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-interface/range {p3 .. p3}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 3974
    const-string/jumbo v6, " at "

    .line 3973
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 3974
    move-object/from16 v0, p0

    iget-object v6, v0, Landroid/content/pm/PackageParser;->mArchiveSourcePath:Ljava/lang/String;

    .line 3973
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 3974
    const-string/jumbo v6, " "

    .line 3973
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 3975
    invoke-interface/range {p3 .. p3}, Landroid/content/res/XmlResourceParser;->getPositionDescription()Ljava/lang/String;

    move-result-object v6

    .line 3973
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3976
    invoke-static/range {p3 .. p3}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    goto/16 :goto_3

    .line 3985
    :cond_14
    if-nez v25, :cond_15

    .line 3986
    move-object/from16 v0, v18

    iget-object v5, v0, Landroid/content/pm/PackageParser$Activity;->info:Landroid/content/pm/ActivityInfo;

    move-object/from16 v0, v18

    iget-object v4, v0, Landroid/content/pm/PackageParser$Activity;->intents:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-lez v4, :cond_16

    const/4 v4, 0x1

    :goto_4
    iput-boolean v4, v5, Landroid/content/pm/ActivityInfo;->exported:Z

    .line 3989
    :cond_15
    return-object v18

    .line 3986
    :cond_16
    const/4 v4, 0x0

    goto :goto_4
.end method

.method private parseAllMetaData(Landroid/content/res/Resources;Landroid/content/res/XmlResourceParser;Ljava/lang/String;Landroid/content/pm/PackageParser$Component;[Ljava/lang/String;)Z
    .locals 7
    .param p1, "res"    # Landroid/content/res/Resources;
    .param p2, "parser"    # Landroid/content/res/XmlResourceParser;
    .param p3, "tag"    # Ljava/lang/String;
    .param p5, "outError"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/res/Resources;",
            "Landroid/content/res/XmlResourceParser;",
            "Ljava/lang/String;",
            "Landroid/content/pm/PackageParser$Component",
            "<*>;[",
            "Ljava/lang/String;",
            ")Z"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .local p4, "outInfo":Landroid/content/pm/PackageParser$Component;, "Landroid/content/pm/PackageParser$Component<*>;"
    const/4 v6, 0x3

    const/4 v5, 0x1

    .line 4450
    invoke-interface {p2}, Landroid/content/res/XmlResourceParser;->getDepth()I

    move-result v0

    .line 4452
    .local v0, "outerDepth":I
    :cond_0
    :goto_0
    invoke-interface {p2}, Landroid/content/res/XmlResourceParser;->next()I

    move-result v1

    .local v1, "type":I
    if-eq v1, v5, :cond_3

    .line 4453
    if-ne v1, v6, :cond_1

    .line 4454
    invoke-interface {p2}, Landroid/content/res/XmlResourceParser;->getDepth()I

    move-result v2

    if-le v2, v0, :cond_3

    .line 4455
    :cond_1
    if-eq v1, v6, :cond_0

    const/4 v2, 0x4

    if-eq v1, v2, :cond_0

    .line 4459
    invoke-interface {p2}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "meta-data"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 4461
    iget-object v2, p4, Landroid/content/pm/PackageParser$Component;->metaData:Landroid/os/Bundle;

    .line 4460
    invoke-direct {p0, p1, p2, v2, p5}, Landroid/content/pm/PackageParser;->parseMetaData(Landroid/content/res/Resources;Landroid/content/res/XmlResourceParser;Landroid/os/Bundle;[Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v2

    iput-object v2, p4, Landroid/content/pm/PackageParser$Component;->metaData:Landroid/os/Bundle;

    if-nez v2, :cond_0

    .line 4462
    const/4 v2, 0x0

    return v2

    .line 4466
    :cond_2
    const-string/jumbo v2, "PackageParser"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Unknown element under "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ": "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 4467
    invoke-interface {p2}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    move-result-object v4

    .line 4466
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 4467
    const-string/jumbo v4, " at "

    .line 4466
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 4467
    iget-object v4, p0, Landroid/content/pm/PackageParser;->mArchiveSourcePath:Ljava/lang/String;

    .line 4466
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 4467
    const-string/jumbo v4, " "

    .line 4466
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 4468
    invoke-interface {p2}, Landroid/content/res/XmlResourceParser;->getPositionDescription()Ljava/lang/String;

    move-result-object v4

    .line 4466
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 4469
    invoke-static {p2}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    goto :goto_0

    .line 4477
    :cond_3
    return v5
.end method

.method public static parseApkLite(Ljava/io/File;I)Landroid/content/pm/PackageParser$ApkLite;
    .locals 28
    .param p0, "apkFile"    # Ljava/io/File;
    .param p1, "flags"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/pm/PackageParser$PackageParserException;
        }
    .end annotation

    .prologue
    .line 1371
    invoke-virtual/range {p0 .. p0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v20

    .line 1373
    .local v20, "apkPath":Ljava/lang/String;
    const/16 v21, 0x0

    .line 1374
    .local v21, "assets":Landroid/content/res/AssetManager;
    const/16 v26, 0x0

    .line 1376
    .local v26, "parser":Landroid/content/res/XmlResourceParser;
    :try_start_0
    new-instance v2, Landroid/content/res/AssetManager;

    invoke-direct {v2}, Landroid/content/res/AssetManager;-><init>()V
    :try_end_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 1378
    .end local v21    # "assets":Landroid/content/res/AssetManager;
    .local v2, "assets":Landroid/content/res/AssetManager;
    :try_start_1
    sget v19, Landroid/os/Build$VERSION;->RESOURCES_SDK_INT:I

    .line 1377
    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    invoke-virtual/range {v2 .. v19}, Landroid/content/res/AssetManager;->setConfiguration(IILjava/lang/String;IIIIIIIIIIIIII)V

    .line 1380
    move-object/from16 v0, v20

    invoke-virtual {v2, v0}, Landroid/content/res/AssetManager;->addAssetPath(Ljava/lang/String;)I

    move-result v23

    .line 1381
    .local v23, "cookie":I
    if-nez v23, :cond_0

    .line 1382
    new-instance v3, Landroid/content/pm/PackageParser$PackageParserException;

    .line 1383
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "Failed to parse "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, v20

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 1382
    const/16 v7, -0x64

    invoke-direct {v3, v7, v6}, Landroid/content/pm/PackageParser$PackageParserException;-><init>(ILjava/lang/String;)V

    throw v3
    :try_end_1
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_3

    .line 1413
    .end local v23    # "cookie":I
    :catch_0
    move-exception v24

    .local v24, "e":Ljava/lang/Exception;
    move-object/from16 v5, v26

    .line 1414
    .end local v26    # "parser":Landroid/content/res/XmlResourceParser;
    .local v5, "parser":Landroid/content/res/XmlResourceParser;
    :goto_0
    :try_start_2
    new-instance v3, Landroid/content/pm/PackageParser$PackageParserException;

    .line 1415
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "Failed to parse "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, v20

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 1414
    const/16 v7, -0x66

    move-object/from16 v0, v24

    invoke-direct {v3, v7, v6, v0}, Landroid/content/pm/PackageParser$PackageParserException;-><init>(ILjava/lang/String;Ljava/lang/Throwable;)V

    throw v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 1416
    .end local v24    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v3

    .line 1417
    :goto_1
    invoke-static {v5}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 1418
    invoke-static {v2}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 1416
    throw v3

    .line 1386
    .end local v5    # "parser":Landroid/content/res/XmlResourceParser;
    .restart local v23    # "cookie":I
    .restart local v26    # "parser":Landroid/content/res/XmlResourceParser;
    :cond_0
    :try_start_3
    new-instance v25, Landroid/util/DisplayMetrics;

    invoke-direct/range {v25 .. v25}, Landroid/util/DisplayMetrics;-><init>()V

    .line 1387
    .local v25, "metrics":Landroid/util/DisplayMetrics;
    invoke-virtual/range {v25 .. v25}, Landroid/util/DisplayMetrics;->setToDefaults()V

    .line 1389
    new-instance v4, Landroid/content/res/Resources;

    const/4 v3, 0x0

    move-object/from16 v0, v25

    invoke-direct {v4, v2, v0, v3}, Landroid/content/res/Resources;-><init>(Landroid/content/res/AssetManager;Landroid/util/DisplayMetrics;Landroid/content/res/Configuration;)V

    .line 1390
    .local v4, "res":Landroid/content/res/Resources;
    const-string/jumbo v3, "AndroidManifest.xml"

    move/from16 v0, v23

    invoke-virtual {v2, v0, v3}, Landroid/content/res/AssetManager;->openXmlResourceParser(ILjava/lang/String;)Landroid/content/res/XmlResourceParser;
    :try_end_3
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    move-result-object v5

    .line 1394
    .end local v26    # "parser":Landroid/content/res/XmlResourceParser;
    .restart local v5    # "parser":Landroid/content/res/XmlResourceParser;
    move/from16 v0, p1

    and-int/lit16 v3, v0, 0x100

    if-eqz v3, :cond_1

    .line 1396
    :try_start_4
    new-instance v27, Landroid/content/pm/PackageParser$Package;

    const/4 v3, 0x0

    move-object/from16 v0, v27

    invoke-direct {v0, v3}, Landroid/content/pm/PackageParser$Package;-><init>(Ljava/lang/String;)V

    .line 1397
    .local v27, "tempPkg":Landroid/content/pm/PackageParser$Package;
    const-string/jumbo v3, "collectCertificates"

    const-wide/32 v6, 0x40000

    invoke-static {v6, v7, v3}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V
    :try_end_4
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_4 .. :try_end_4} :catch_1
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 1399
    const/4 v3, 0x0

    :try_start_5
    move-object/from16 v0, v27

    move-object/from16 v1, p0

    invoke-static {v0, v1, v3}, Landroid/content/pm/PackageParser;->collectCertificates(Landroid/content/pm/PackageParser$Package;Ljava/io/File;I)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 1401
    const-wide/32 v6, 0x40000

    :try_start_6
    invoke-static {v6, v7}, Landroid/os/Trace;->traceEnd(J)V

    .line 1403
    move-object/from16 v0, v27

    iget-object v8, v0, Landroid/content/pm/PackageParser$Package;->mSignatures:[Landroid/content/pm/Signature;

    .line 1404
    .local v8, "signatures":[Landroid/content/pm/Signature;
    move-object/from16 v0, v27

    iget-object v9, v0, Landroid/content/pm/PackageParser$Package;->mCertificates:[[Ljava/security/cert/Certificate;

    .line 1410
    .end local v8    # "signatures":[Landroid/content/pm/Signature;
    .end local v27    # "tempPkg":Landroid/content/pm/PackageParser$Package;
    :goto_2
    move-object/from16 v22, v5

    .local v22, "attrs":Landroid/util/AttributeSet;
    move-object/from16 v3, v20

    move-object v6, v5

    move/from16 v7, p1

    .line 1411
    invoke-static/range {v3 .. v9}, Landroid/content/pm/PackageParser;->parseApkLite(Ljava/lang/String;Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;I[Landroid/content/pm/Signature;[[Ljava/security/cert/Certificate;)Landroid/content/pm/PackageParser$ApkLite;
    :try_end_6
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_6 .. :try_end_6} :catch_1
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_6 .. :try_end_6} :catch_1
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    move-result-object v3

    .line 1417
    invoke-static {v5}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 1418
    invoke-static {v2}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 1411
    return-object v3

    .line 1400
    .end local v22    # "attrs":Landroid/util/AttributeSet;
    .restart local v27    # "tempPkg":Landroid/content/pm/PackageParser$Package;
    :catchall_1
    move-exception v3

    .line 1401
    const-wide/32 v6, 0x40000

    :try_start_7
    invoke-static {v6, v7}, Landroid/os/Trace;->traceEnd(J)V

    .line 1400
    throw v3
    :try_end_7
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_7 .. :try_end_7} :catch_1
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_7 .. :try_end_7} :catch_1
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 1413
    .end local v27    # "tempPkg":Landroid/content/pm/PackageParser$Package;
    :catch_1
    move-exception v24

    .restart local v24    # "e":Ljava/lang/Exception;
    goto/16 :goto_0

    .line 1406
    .end local v24    # "e":Ljava/lang/Exception;
    :cond_1
    const/4 v8, 0x0

    .line 1407
    .local v8, "signatures":[Landroid/content/pm/Signature;
    const/4 v9, 0x0

    .local v9, "certificates":[[Ljava/security/cert/Certificate;
    goto :goto_2

    .line 1416
    .end local v2    # "assets":Landroid/content/res/AssetManager;
    .end local v4    # "res":Landroid/content/res/Resources;
    .end local v5    # "parser":Landroid/content/res/XmlResourceParser;
    .end local v8    # "signatures":[Landroid/content/pm/Signature;
    .end local v9    # "certificates":[[Ljava/security/cert/Certificate;
    .end local v23    # "cookie":I
    .end local v25    # "metrics":Landroid/util/DisplayMetrics;
    .restart local v21    # "assets":Landroid/content/res/AssetManager;
    .restart local v26    # "parser":Landroid/content/res/XmlResourceParser;
    :catchall_2
    move-exception v3

    move-object/from16 v5, v26

    .restart local v5    # "parser":Landroid/content/res/XmlResourceParser;
    move-object/from16 v2, v21

    .restart local v2    # "assets":Landroid/content/res/AssetManager;
    goto :goto_1

    .end local v5    # "parser":Landroid/content/res/XmlResourceParser;
    .end local v21    # "assets":Landroid/content/res/AssetManager;
    :catchall_3
    move-exception v3

    move-object/from16 v5, v26

    .restart local v5    # "parser":Landroid/content/res/XmlResourceParser;
    goto :goto_1

    .line 1413
    .end local v2    # "assets":Landroid/content/res/AssetManager;
    .end local v5    # "parser":Landroid/content/res/XmlResourceParser;
    .restart local v21    # "assets":Landroid/content/res/AssetManager;
    :catch_2
    move-exception v24

    .restart local v24    # "e":Ljava/lang/Exception;
    move-object/from16 v5, v26

    .restart local v5    # "parser":Landroid/content/res/XmlResourceParser;
    move-object/from16 v2, v21

    .restart local v2    # "assets":Landroid/content/res/AssetManager;
    goto/16 :goto_0
.end method

.method private static parseApkLite(Ljava/lang/String;Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;I[Landroid/content/pm/Signature;[[Ljava/security/cert/Certificate;)Landroid/content/pm/PackageParser$ApkLite;
    .locals 22
    .param p0, "codePath"    # Ljava/lang/String;
    .param p1, "res"    # Landroid/content/res/Resources;
    .param p2, "parser"    # Lorg/xmlpull/v1/XmlPullParser;
    .param p3, "attrs"    # Landroid/util/AttributeSet;
    .param p4, "flags"    # I
    .param p5, "signatures"    # [Landroid/content/pm/Signature;
    .param p6, "certificates"    # [[Ljava/security/cert/Certificate;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/xmlpull/v1/XmlPullParserException;,
            Landroid/content/pm/PackageParser$PackageParserException;
        }
    .end annotation

    .prologue
    .line 1499
    invoke-static/range {p2 .. p3}, Landroid/content/pm/PackageParser;->parsePackageSplitNames(Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;)Landroid/util/Pair;

    move-result-object v18

    .line 1501
    .local v18, "packageSplit":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/String;Ljava/lang/String;>;"
    const/4 v8, -0x1

    .line 1502
    .local v8, "installLocation":I
    const/4 v6, 0x0

    .line 1503
    .local v6, "versionCode":I
    const/4 v7, 0x0

    .line 1504
    .local v7, "revisionCode":I
    const/4 v12, 0x0

    .line 1505
    .local v12, "coreApp":Z
    const/4 v13, 0x0

    .line 1506
    .local v13, "multiArch":Z
    const/4 v14, 0x0

    .line 1507
    .local v14, "use32bitAbi":Z
    const/4 v15, 0x1

    .line 1509
    .local v15, "extractNativeLibs":Z
    const/16 v17, 0x0

    .end local v12    # "coreApp":Z
    .local v17, "i":I
    :goto_0
    invoke-interface/range {p3 .. p3}, Landroid/util/AttributeSet;->getAttributeCount()I

    move-result v2

    move/from16 v0, v17

    if-ge v0, v2, :cond_4

    .line 1510
    move-object/from16 v0, p3

    move/from16 v1, v17

    invoke-interface {v0, v1}, Landroid/util/AttributeSet;->getAttributeName(I)Ljava/lang/String;

    move-result-object v16

    .line 1511
    .local v16, "attr":Ljava/lang/String;
    const-string/jumbo v2, "installLocation"

    move-object/from16 v0, v16

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1513
    const/4 v2, -0x1

    .line 1512
    move-object/from16 v0, p3

    move/from16 v1, v17

    invoke-interface {v0, v1, v2}, Landroid/util/AttributeSet;->getAttributeIntValue(II)I

    move-result v8

    .line 1509
    :cond_0
    :goto_1
    add-int/lit8 v17, v17, 0x1

    goto :goto_0

    .line 1514
    :cond_1
    const-string/jumbo v2, "versionCode"

    move-object/from16 v0, v16

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 1515
    const/4 v2, 0x0

    move-object/from16 v0, p3

    move/from16 v1, v17

    invoke-interface {v0, v1, v2}, Landroid/util/AttributeSet;->getAttributeIntValue(II)I

    move-result v6

    goto :goto_1

    .line 1516
    :cond_2
    const-string/jumbo v2, "revisionCode"

    move-object/from16 v0, v16

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 1517
    const/4 v2, 0x0

    move-object/from16 v0, p3

    move/from16 v1, v17

    invoke-interface {v0, v1, v2}, Landroid/util/AttributeSet;->getAttributeIntValue(II)I

    move-result v7

    goto :goto_1

    .line 1518
    :cond_3
    const-string/jumbo v2, "coreApp"

    move-object/from16 v0, v16

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1519
    const/4 v2, 0x0

    move-object/from16 v0, p3

    move/from16 v1, v17

    invoke-interface {v0, v1, v2}, Landroid/util/AttributeSet;->getAttributeBooleanValue(IZ)Z

    move-result v12

    .local v12, "coreApp":Z
    goto :goto_1

    .line 1525
    .end local v12    # "coreApp":Z
    .end local v16    # "attr":Ljava/lang/String;
    :cond_4
    invoke-interface/range {p2 .. p2}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v2

    add-int/lit8 v19, v2, 0x1

    .line 1527
    .local v19, "searchDepth":I
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    .line 1528
    .end local v13    # "multiArch":Z
    .end local v14    # "use32bitAbi":Z
    .end local v15    # "extractNativeLibs":Z
    .local v9, "verifiers":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/VerifierInfo;>;"
    :cond_5
    invoke-interface/range {p2 .. p2}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v20

    .local v20, "type":I
    const/4 v2, 0x1

    move/from16 v0, v20

    if-eq v0, v2, :cond_b

    .line 1529
    const/4 v2, 0x3

    move/from16 v0, v20

    if-ne v0, v2, :cond_6

    invoke-interface/range {p2 .. p2}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v2

    move/from16 v0, v19

    if-lt v2, v0, :cond_b

    .line 1530
    :cond_6
    const/4 v2, 0x3

    move/from16 v0, v20

    if-eq v0, v2, :cond_5

    const/4 v2, 0x4

    move/from16 v0, v20

    if-eq v0, v2, :cond_5

    .line 1534
    invoke-interface/range {p2 .. p2}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v2

    move/from16 v0, v19

    if-ne v2, v0, :cond_7

    const-string/jumbo v2, "package-verifier"

    invoke-interface/range {p2 .. p2}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 1535
    invoke-static/range {p1 .. p4}, Landroid/content/pm/PackageParser;->parseVerifier(Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;I)Landroid/content/pm/VerifierInfo;

    move-result-object v21

    .line 1536
    .local v21, "verifier":Landroid/content/pm/VerifierInfo;
    if-eqz v21, :cond_7

    .line 1537
    move-object/from16 v0, v21

    invoke-interface {v9, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1541
    .end local v21    # "verifier":Landroid/content/pm/VerifierInfo;
    :cond_7
    invoke-interface/range {p2 .. p2}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v2

    move/from16 v0, v19

    if-ne v2, v0, :cond_5

    const-string/jumbo v2, "application"

    invoke-interface/range {p2 .. p2}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 1542
    const/16 v17, 0x0

    :goto_2
    invoke-interface/range {p3 .. p3}, Landroid/util/AttributeSet;->getAttributeCount()I

    move-result v2

    move/from16 v0, v17

    if-ge v0, v2, :cond_5

    .line 1543
    move-object/from16 v0, p3

    move/from16 v1, v17

    invoke-interface {v0, v1}, Landroid/util/AttributeSet;->getAttributeName(I)Ljava/lang/String;

    move-result-object v16

    .line 1544
    .restart local v16    # "attr":Ljava/lang/String;
    const-string/jumbo v2, "multiArch"

    move-object/from16 v0, v16

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_8

    .line 1545
    const/4 v2, 0x0

    move-object/from16 v0, p3

    move/from16 v1, v17

    invoke-interface {v0, v1, v2}, Landroid/util/AttributeSet;->getAttributeBooleanValue(IZ)Z

    move-result v13

    .line 1547
    :cond_8
    const-string/jumbo v2, "use32bitAbi"

    move-object/from16 v0, v16

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_9

    .line 1548
    const/4 v2, 0x0

    move-object/from16 v0, p3

    move/from16 v1, v17

    invoke-interface {v0, v1, v2}, Landroid/util/AttributeSet;->getAttributeBooleanValue(IZ)Z

    move-result v14

    .line 1550
    :cond_9
    const-string/jumbo v2, "extractNativeLibs"

    move-object/from16 v0, v16

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_a

    .line 1551
    const/4 v2, 0x1

    move-object/from16 v0, p3

    move/from16 v1, v17

    invoke-interface {v0, v1, v2}, Landroid/util/AttributeSet;->getAttributeBooleanValue(IZ)Z

    move-result v15

    .line 1542
    :cond_a
    add-int/lit8 v17, v17, 0x1

    goto :goto_2

    .line 1557
    .end local v16    # "attr":Ljava/lang/String;
    :cond_b
    new-instance v2, Landroid/content/pm/PackageParser$ApkLite;

    move-object/from16 v0, v18

    iget-object v4, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v4, Ljava/lang/String;

    move-object/from16 v0, v18

    iget-object v5, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v5, Ljava/lang/String;

    move-object/from16 v3, p0

    move-object/from16 v10, p5

    move-object/from16 v11, p6

    invoke-direct/range {v2 .. v15}, Landroid/content/pm/PackageParser$ApkLite;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIILjava/util/List;[Landroid/content/pm/Signature;[[Ljava/security/cert/Certificate;ZZZZ)V

    return-object v2
.end method

.method private parseBaseApk(Landroid/content/res/Resources;Landroid/content/res/XmlResourceParser;I[Ljava/lang/String;)Landroid/content/pm/PackageParser$Package;
    .locals 12
    .param p1, "res"    # Landroid/content/res/Resources;
    .param p2, "parser"    # Landroid/content/res/XmlResourceParser;
    .param p3, "flags"    # I
    .param p4, "outError"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1671
    :try_start_0
    invoke-static {p2, p2}, Landroid/content/pm/PackageParser;->parsePackageSplitNames(Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;)Landroid/util/Pair;

    move-result-object v8

    .line 1672
    .local v8, "packageSplit":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/String;Ljava/lang/String;>;"
    iget-object v9, v8, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v9, Ljava/lang/String;

    .line 1673
    .local v9, "pkgName":Ljava/lang/String;
    iget-object v11, v8, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v11, Ljava/lang/String;

    .line 1675
    .local v11, "splitName":Ljava/lang/String;
    invoke-static {v11}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1676
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Expected base APK, but found split "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x0

    aput-object v0, p4, v2

    .line 1677
    const/16 v0, -0x6a

    iput v0, p0, Landroid/content/pm/PackageParser;->mParseError:I
    :try_end_0
    .catch Landroid/content/pm/PackageParser$PackageParserException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1678
    const/4 v0, 0x0

    return-object v0

    .line 1680
    .end local v8    # "packageSplit":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v9    # "pkgName":Ljava/lang/String;
    .end local v11    # "splitName":Ljava/lang/String;
    :catch_0
    move-exception v7

    .line 1681
    .local v7, "e":Landroid/content/pm/PackageParser$PackageParserException;
    const/16 v0, -0x6a

    iput v0, p0, Landroid/content/pm/PackageParser;->mParseError:I

    .line 1682
    const/4 v0, 0x0

    return-object v0

    .line 1685
    .end local v7    # "e":Landroid/content/pm/PackageParser$PackageParserException;
    .restart local v8    # "packageSplit":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/String;Ljava/lang/String;>;"
    .restart local v9    # "pkgName":Ljava/lang/String;
    .restart local v11    # "splitName":Ljava/lang/String;
    :cond_0
    new-instance v1, Landroid/content/pm/PackageParser$Package;

    invoke-direct {v1, v9}, Landroid/content/pm/PackageParser$Package;-><init>(Ljava/lang/String;)V

    .line 1688
    .local v1, "pkg":Landroid/content/pm/PackageParser$Package;
    sget-object v0, Lcom/android/internal/R$styleable;->AndroidManifest:[I

    .line 1687
    invoke-virtual {p1, p2, v0}, Landroid/content/res/Resources;->obtainAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v10

    .line 1691
    .local v10, "sa":Landroid/content/res/TypedArray;
    const/4 v0, 0x1

    const/4 v2, 0x0

    .line 1690
    invoke-virtual {v10, v0, v2}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result v0

    iget-object v2, v1, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iput v0, v2, Landroid/content/pm/ApplicationInfo;->versionCode:I

    iput v0, v1, Landroid/content/pm/PackageParser$Package;->mVersionCode:I

    .line 1693
    const/4 v0, 0x5

    const/4 v2, 0x0

    .line 1692
    invoke-virtual {v10, v0, v2}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result v0

    iput v0, v1, Landroid/content/pm/PackageParser$Package;->baseRevisionCode:I

    .line 1695
    const/4 v0, 0x2

    const/4 v2, 0x0

    .line 1694
    invoke-virtual {v10, v0, v2}, Landroid/content/res/TypedArray;->getNonConfigurationString(II)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Landroid/content/pm/PackageParser$Package;->mVersionName:Ljava/lang/String;

    .line 1696
    iget-object v0, v1, Landroid/content/pm/PackageParser$Package;->mVersionName:Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 1697
    iget-object v0, v1, Landroid/content/pm/PackageParser$Package;->mVersionName:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Landroid/content/pm/PackageParser$Package;->mVersionName:Ljava/lang/String;

    .line 1700
    :cond_1
    const-string/jumbo v0, "coreApp"

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-interface {p2, v2, v0, v3}, Landroid/content/res/XmlResourceParser;->getAttributeBooleanValue(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, v1, Landroid/content/pm/PackageParser$Package;->coreApp:Z

    .line 1702
    invoke-virtual {v10}, Landroid/content/res/TypedArray;->recycle()V

    .line 1704
    const/4 v2, 0x0

    move-object v0, p0

    move-object v3, p1

    move-object v4, p2

    move v5, p3

    move-object/from16 v6, p4

    invoke-direct/range {v0 .. v6}, Landroid/content/pm/PackageParser;->parseBaseApkCommon(Landroid/content/pm/PackageParser$Package;Ljava/util/Set;Landroid/content/res/Resources;Landroid/content/res/XmlResourceParser;I[Ljava/lang/String;)Landroid/content/pm/PackageParser$Package;

    move-result-object v0

    return-object v0
.end method

.method private parseBaseApk(Ljava/io/File;Landroid/content/res/AssetManager;I)Landroid/content/pm/PackageParser$Package;
    .locals 34
    .param p1, "apkFile"    # Ljava/io/File;
    .param p2, "assets"    # Landroid/content/res/AssetManager;
    .param p3, "flags"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/pm/PackageParser$PackageParserException;
        }
    .end annotation

    .prologue
    .line 972
    invoke-virtual/range {p1 .. p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v23

    .line 974
    .local v23, "apkPath":Ljava/lang/String;
    const/16 v33, 0x0

    .line 975
    .local v33, "volumeUuid":Ljava/lang/String;
    const-string/jumbo v5, "/mnt/expand/"

    move-object/from16 v0, v23

    invoke-virtual {v0, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 976
    const/16 v5, 0x2f

    const-string/jumbo v6, "/mnt/expand/"

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    move-object/from16 v0, v23

    invoke-virtual {v0, v5, v6}, Ljava/lang/String;->indexOf(II)I

    move-result v27

    .line 977
    .local v27, "end":I
    const-string/jumbo v5, "/mnt/expand/"

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    move-object/from16 v0, v23

    move/from16 v1, v27

    invoke-virtual {v0, v5, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v33

    .line 980
    .end local v27    # "end":I
    .end local v33    # "volumeUuid":Ljava/lang/String;
    :cond_0
    const/4 v5, 0x1

    move-object/from16 v0, p0

    iput v5, v0, Landroid/content/pm/PackageParser;->mParseError:I

    .line 981
    invoke-virtual/range {p1 .. p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, p0

    iput-object v5, v0, Landroid/content/pm/PackageParser;->mArchiveSourcePath:Ljava/lang/String;

    .line 985
    move-object/from16 v0, p2

    move-object/from16 v1, v23

    move/from16 v2, p3

    invoke-static {v0, v1, v2}, Landroid/content/pm/PackageParser;->loadApkIntoAssetManager(Landroid/content/res/AssetManager;Ljava/lang/String;I)I

    move-result v24

    .line 987
    .local v24, "cookie":I
    const/16 v31, 0x0

    .line 988
    .local v31, "res":Landroid/content/res/Resources;
    const/16 v29, 0x0

    .line 992
    .local v29, "parser":Landroid/content/res/XmlResourceParser;
    :try_start_0
    new-instance v32, Landroid/content/res/MiuiResources;

    move-object/from16 v0, p0

    iget-object v5, v0, Landroid/content/pm/PackageParser;->mMetrics:Landroid/util/DisplayMetrics;

    const/4 v6, 0x0

    move-object/from16 v0, v32

    move-object/from16 v1, p2

    invoke-direct {v0, v1, v5, v6}, Landroid/content/res/MiuiResources;-><init>(Landroid/content/res/AssetManager;Landroid/util/DisplayMetrics;Landroid/content/res/Configuration;)V
    :try_end_0
    .catch Landroid/content/pm/PackageParser$PackageParserException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 995
    .end local v31    # "res":Landroid/content/res/Resources;
    .local v32, "res":Landroid/content/res/Resources;
    :try_start_1
    sget v22, Landroid/os/Build$VERSION;->RESOURCES_SDK_INT:I

    .line 994
    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x0

    const/16 v21, 0x0

    move-object/from16 v5, p2

    invoke-virtual/range {v5 .. v22}, Landroid/content/res/AssetManager;->setConfiguration(IILjava/lang/String;IIIIIIIIIIIIII)V

    .line 996
    const-string/jumbo v5, "AndroidManifest.xml"

    move-object/from16 v0, p2

    move/from16 v1, v24

    invoke-virtual {v0, v1, v5}, Landroid/content/res/AssetManager;->openXmlResourceParser(ILjava/lang/String;)Landroid/content/res/XmlResourceParser;

    move-result-object v29

    .line 998
    .local v29, "parser":Landroid/content/res/XmlResourceParser;
    const/4 v5, 0x1

    new-array v0, v5, [Ljava/lang/String;

    move-object/from16 v28, v0

    .line 999
    .local v28, "outError":[Ljava/lang/String;
    move-object/from16 v0, p0

    move-object/from16 v1, v32

    move-object/from16 v2, v29

    move/from16 v3, p3

    move-object/from16 v4, v28

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/content/pm/PackageParser;->parseBaseApk(Landroid/content/res/Resources;Landroid/content/res/XmlResourceParser;I[Ljava/lang/String;)Landroid/content/pm/PackageParser$Package;

    move-result-object v30

    .line 1000
    .local v30, "pkg":Landroid/content/pm/PackageParser$Package;
    if-nez v30, :cond_1

    .line 1001
    new-instance v5, Landroid/content/pm/PackageParser$PackageParserException;

    move-object/from16 v0, p0

    iget v6, v0, Landroid/content/pm/PackageParser;->mParseError:I

    .line 1002
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v23

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, " (at "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-interface/range {v29 .. v29}, Landroid/content/res/XmlResourceParser;->getPositionDescription()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, "): "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const/4 v8, 0x0

    aget-object v8, v28, v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 1001
    invoke-direct {v5, v6, v7}, Landroid/content/pm/PackageParser$PackageParserException;-><init>(ILjava/lang/String;)V

    throw v5
    :try_end_1
    .catch Landroid/content/pm/PackageParser$PackageParserException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_3
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 1012
    .end local v28    # "outError":[Ljava/lang/String;
    .end local v29    # "parser":Landroid/content/res/XmlResourceParser;
    .end local v30    # "pkg":Landroid/content/pm/PackageParser$Package;
    :catch_0
    move-exception v25

    .local v25, "e":Landroid/content/pm/PackageParser$PackageParserException;
    move-object/from16 v31, v32

    .line 1013
    .end local v32    # "res":Landroid/content/res/Resources;
    :goto_0
    :try_start_2
    throw v25
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 1017
    .end local v25    # "e":Landroid/content/pm/PackageParser$PackageParserException;
    :catchall_0
    move-exception v5

    .line 1018
    :goto_1
    invoke-static/range {v29 .. v29}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 1017
    throw v5

    .line 1005
    .restart local v28    # "outError":[Ljava/lang/String;
    .restart local v29    # "parser":Landroid/content/res/XmlResourceParser;
    .restart local v30    # "pkg":Landroid/content/pm/PackageParser$Package;
    .restart local v32    # "res":Landroid/content/res/Resources;
    :cond_1
    :try_start_3
    move-object/from16 v0, v30

    move-object/from16 v1, v33

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageParser$Package;->setVolumeUuid(Ljava/lang/String;)V

    .line 1006
    move-object/from16 v0, v30

    move-object/from16 v1, v33

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageParser$Package;->setApplicationVolumeUuid(Ljava/lang/String;)V

    .line 1007
    move-object/from16 v0, v30

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageParser$Package;->setBaseCodePath(Ljava/lang/String;)V

    .line 1008
    const/4 v5, 0x0

    move-object/from16 v0, v30

    invoke-virtual {v0, v5}, Landroid/content/pm/PackageParser$Package;->setSignatures([Landroid/content/pm/Signature;)V
    :try_end_3
    .catch Landroid/content/pm/PackageParser$PackageParserException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 1018
    invoke-static/range {v29 .. v29}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 1010
    return-object v30

    .line 1014
    .end local v28    # "outError":[Ljava/lang/String;
    .end local v30    # "pkg":Landroid/content/pm/PackageParser$Package;
    .end local v32    # "res":Landroid/content/res/Resources;
    .local v29, "parser":Landroid/content/res/XmlResourceParser;
    .restart local v31    # "res":Landroid/content/res/Resources;
    :catch_1
    move-exception v26

    .line 1015
    .end local v29    # "parser":Landroid/content/res/XmlResourceParser;
    .end local v31    # "res":Landroid/content/res/Resources;
    .local v26, "e":Ljava/lang/Exception;
    :goto_2
    :try_start_4
    new-instance v5, Landroid/content/pm/PackageParser$PackageParserException;

    .line 1016
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "Failed to read manifest from "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, v23

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 1015
    const/16 v7, -0x66

    move-object/from16 v0, v26

    invoke-direct {v5, v7, v6, v0}, Landroid/content/pm/PackageParser$PackageParserException;-><init>(ILjava/lang/String;Ljava/lang/Throwable;)V

    throw v5
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 1017
    .end local v26    # "e":Ljava/lang/Exception;
    .restart local v32    # "res":Landroid/content/res/Resources;
    :catchall_1
    move-exception v5

    move-object/from16 v31, v32

    .end local v32    # "res":Landroid/content/res/Resources;
    .local v31, "res":Landroid/content/res/Resources;
    goto :goto_1

    .line 1012
    .restart local v29    # "parser":Landroid/content/res/XmlResourceParser;
    .local v31, "res":Landroid/content/res/Resources;
    :catch_2
    move-exception v25

    .restart local v25    # "e":Landroid/content/pm/PackageParser$PackageParserException;
    goto :goto_0

    .line 1014
    .end local v25    # "e":Landroid/content/pm/PackageParser$PackageParserException;
    .end local v29    # "parser":Landroid/content/res/XmlResourceParser;
    .end local v31    # "res":Landroid/content/res/Resources;
    .restart local v32    # "res":Landroid/content/res/Resources;
    :catch_3
    move-exception v26

    .restart local v26    # "e":Ljava/lang/Exception;
    move-object/from16 v31, v32

    .end local v32    # "res":Landroid/content/res/Resources;
    .local v31, "res":Landroid/content/res/Resources;
    goto :goto_2
.end method

.method private parseBaseApkChild(Landroid/content/pm/PackageParser$Package;Landroid/content/res/Resources;Landroid/content/res/XmlResourceParser;I[Ljava/lang/String;)Z
    .locals 9
    .param p1, "parentPkg"    # Landroid/content/pm/PackageParser$Package;
    .param p2, "res"    # Landroid/content/res/Resources;
    .param p3, "parser"    # Landroid/content/res/XmlResourceParser;
    .param p4, "flags"    # I
    .param p5, "outError"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1592
    iget-object v0, p1, Landroid/content/pm/PackageParser$Package;->childPackages:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    iget-object v0, p1, Landroid/content/pm/PackageParser$Package;->childPackages:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, 0x2

    .line 1593
    const/4 v2, 0x5

    .line 1592
    if-le v0, v2, :cond_0

    .line 1594
    const-string/jumbo v0, "Maximum number of packages per APK is: 5"

    const/4 v2, 0x0

    aput-object v0, p5, v2

    .line 1595
    const/16 v0, -0x6c

    iput v0, p0, Landroid/content/pm/PackageParser;->mParseError:I

    .line 1596
    const/4 v0, 0x0

    return v0

    .line 1600
    :cond_0
    const-string/jumbo v0, "package"

    const/4 v2, 0x0

    invoke-interface {p3, v2, v0}, Landroid/content/res/XmlResourceParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 1601
    .local v7, "childPackageName":Ljava/lang/String;
    const/4 v0, 0x1

    const/4 v2, 0x0

    invoke-static {v7, v0, v2}, Landroid/content/pm/PackageParser;->validateName(Ljava/lang/String;ZZ)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 1602
    const/16 v0, -0x6a

    iput v0, p0, Landroid/content/pm/PackageParser;->mParseError:I

    .line 1603
    const/4 v0, 0x0

    return v0

    .line 1607
    :cond_1
    iget-object v0, p1, Landroid/content/pm/PackageParser$Package;->packageName:Ljava/lang/String;

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1608
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Child package name cannot be equal to parent package name: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 1609
    iget-object v2, p1, Landroid/content/pm/PackageParser$Package;->packageName:Ljava/lang/String;

    .line 1608
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 1610
    .local v8, "message":Ljava/lang/String;
    const-string/jumbo v0, "PackageParser"

    invoke-static {v0, v8}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1611
    const/4 v0, 0x0

    aput-object v8, p5, v0

    .line 1612
    const/16 v0, -0x6c

    iput v0, p0, Landroid/content/pm/PackageParser;->mParseError:I

    .line 1613
    const/4 v0, 0x0

    return v0

    .line 1617
    .end local v8    # "message":Ljava/lang/String;
    :cond_2
    invoke-virtual {p1, v7}, Landroid/content/pm/PackageParser$Package;->hasChildPackage(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1618
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Duplicate child package:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 1619
    .restart local v8    # "message":Ljava/lang/String;
    const-string/jumbo v0, "PackageParser"

    invoke-static {v0, v8}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1620
    const/4 v0, 0x0

    aput-object v8, p5, v0

    .line 1621
    const/16 v0, -0x6c

    iput v0, p0, Landroid/content/pm/PackageParser;->mParseError:I

    .line 1622
    const/4 v0, 0x0

    return v0

    .line 1626
    .end local v8    # "message":Ljava/lang/String;
    :cond_3
    new-instance v1, Landroid/content/pm/PackageParser$Package;

    invoke-direct {v1, v7}, Landroid/content/pm/PackageParser$Package;-><init>(Ljava/lang/String;)V

    .line 1629
    .local v1, "childPkg":Landroid/content/pm/PackageParser$Package;
    iget v0, p1, Landroid/content/pm/PackageParser$Package;->mVersionCode:I

    iput v0, v1, Landroid/content/pm/PackageParser$Package;->mVersionCode:I

    .line 1630
    iget v0, p1, Landroid/content/pm/PackageParser$Package;->baseRevisionCode:I

    iput v0, v1, Landroid/content/pm/PackageParser$Package;->baseRevisionCode:I

    .line 1631
    iget-object v0, p1, Landroid/content/pm/PackageParser$Package;->mVersionName:Ljava/lang/String;

    iput-object v0, v1, Landroid/content/pm/PackageParser$Package;->mVersionName:Ljava/lang/String;

    .line 1632
    iget-object v0, v1, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v2, p1, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v2, v2, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    iput v2, v0, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    .line 1633
    iget-object v0, v1, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v2, p1, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v2, v2, Landroid/content/pm/ApplicationInfo;->minSdkVersion:I

    iput v2, v0, Landroid/content/pm/ApplicationInfo;->minSdkVersion:I

    .line 1635
    sget-object v2, Landroid/content/pm/PackageParser;->CHILD_PACKAGE_TAGS:Ljava/util/Set;

    move-object v0, p0

    move-object v3, p2

    move-object v4, p3

    move v5, p4

    move-object v6, p5

    invoke-direct/range {v0 .. v6}, Landroid/content/pm/PackageParser;->parseBaseApkCommon(Landroid/content/pm/PackageParser$Package;Ljava/util/Set;Landroid/content/res/Resources;Landroid/content/res/XmlResourceParser;I[Ljava/lang/String;)Landroid/content/pm/PackageParser$Package;

    move-result-object v1

    .line 1636
    if-nez v1, :cond_4

    .line 1638
    const/4 v0, 0x0

    return v0

    .line 1642
    :cond_4
    iget-object v0, p1, Landroid/content/pm/PackageParser$Package;->childPackages:Ljava/util/ArrayList;

    if-nez v0, :cond_5

    .line 1643
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p1, Landroid/content/pm/PackageParser$Package;->childPackages:Ljava/util/ArrayList;

    .line 1645
    :cond_5
    iget-object v0, p1, Landroid/content/pm/PackageParser$Package;->childPackages:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1646
    iput-object p1, v1, Landroid/content/pm/PackageParser$Package;->parentPackage:Landroid/content/pm/PackageParser$Package;

    .line 1648
    const/4 v0, 0x1

    return v0
.end method

.method private parseBaseApkCommon(Landroid/content/pm/PackageParser$Package;Ljava/util/Set;Landroid/content/res/Resources;Landroid/content/res/XmlResourceParser;I[Ljava/lang/String;)Landroid/content/pm/PackageParser$Package;
    .locals 53
    .param p1, "pkg"    # Landroid/content/pm/PackageParser$Package;
    .param p3, "res"    # Landroid/content/res/Resources;
    .param p4, "parser"    # Landroid/content/res/XmlResourceParser;
    .param p5, "flags"    # I
    .param p6, "outError"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/pm/PackageParser$Package;",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Landroid/content/res/Resources;",
            "Landroid/content/res/XmlResourceParser;",
            "I[",
            "Ljava/lang/String;",
            ")",
            "Landroid/content/pm/PackageParser$Package;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1729
    .local p2, "acceptedTags":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    const/4 v5, 0x0

    move-object/from16 v0, p0

    iput-object v5, v0, Landroid/content/pm/PackageParser;->mParseInstrumentationArgs:Landroid/content/pm/PackageParser$ParsePackageItemArgs;

    .line 1730
    const/4 v5, 0x0

    move-object/from16 v0, p0

    iput-object v5, v0, Landroid/content/pm/PackageParser;->mParseActivityArgs:Landroid/content/pm/PackageParser$ParseComponentArgs;

    .line 1731
    const/4 v5, 0x0

    move-object/from16 v0, p0

    iput-object v5, v0, Landroid/content/pm/PackageParser;->mParseServiceArgs:Landroid/content/pm/PackageParser$ParseComponentArgs;

    .line 1732
    const/4 v5, 0x0

    move-object/from16 v0, p0

    iput-object v5, v0, Landroid/content/pm/PackageParser;->mParseProviderArgs:Landroid/content/pm/PackageParser$ParseComponentArgs;

    .line 1735
    const/16 v20, 0x0

    .line 1738
    .local v20, "foundApp":Z
    sget-object v5, Lcom/android/internal/R$styleable;->AndroidManifest:[I

    .line 1737
    move-object/from16 v0, p3

    move-object/from16 v1, p4

    invoke-virtual {v0, v1, v5}, Landroid/content/res/Resources;->obtainAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v41

    .line 1741
    .local v41, "sa":Landroid/content/res/TypedArray;
    const/4 v5, 0x0

    const/4 v6, 0x0

    .line 1740
    move-object/from16 v0, v41

    invoke-virtual {v0, v5, v6}, Landroid/content/res/TypedArray;->getNonConfigurationString(II)Ljava/lang/String;

    move-result-object v43

    .line 1742
    .local v43, "str":Ljava/lang/String;
    if-eqz v43, :cond_1

    invoke-virtual/range {v43 .. v43}, Ljava/lang/String;->length()I

    move-result v5

    if-lez v5, :cond_1

    .line 1743
    const/4 v5, 0x1

    const/4 v6, 0x0

    move-object/from16 v0, v43

    invoke-static {v0, v5, v6}, Landroid/content/pm/PackageParser;->validateName(Ljava/lang/String;ZZ)Ljava/lang/String;

    move-result-object v35

    .line 1744
    .local v35, "nameError":Ljava/lang/String;
    if-eqz v35, :cond_0

    const-string/jumbo v5, "android"

    move-object/from16 v0, p1

    iget-object v6, v0, Landroid/content/pm/PackageParser$Package;->packageName:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_8

    .line 1750
    :cond_0
    invoke-virtual/range {v43 .. v43}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, p1

    iput-object v5, v0, Landroid/content/pm/PackageParser$Package;->mSharedUserId:Ljava/lang/String;

    .line 1752
    const/4 v5, 0x3

    const/4 v6, 0x0

    .line 1751
    move-object/from16 v0, v41

    invoke-virtual {v0, v5, v6}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v5

    move-object/from16 v0, p1

    iput v5, v0, Landroid/content/pm/PackageParser$Package;->mSharedUserLabel:I

    .line 1756
    .end local v35    # "nameError":Ljava/lang/String;
    :cond_1
    const/4 v5, 0x4

    .line 1757
    const/4 v6, -0x1

    .line 1755
    move-object/from16 v0, v41

    invoke-virtual {v0, v5, v6}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result v5

    move-object/from16 v0, p1

    iput v5, v0, Landroid/content/pm/PackageParser$Package;->installLocation:I

    .line 1758
    move-object/from16 v0, p1

    iget-object v5, v0, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    move-object/from16 v0, p1

    iget v6, v0, Landroid/content/pm/PackageParser$Package;->installLocation:I

    iput v6, v5, Landroid/content/pm/ApplicationInfo;->installLocation:I

    .line 1762
    and-int/lit8 v5, p5, 0x10

    if-eqz v5, :cond_2

    .line 1763
    move-object/from16 v0, p1

    iget-object v5, v0, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v6, v5, Landroid/content/pm/ApplicationInfo;->privateFlags:I

    or-int/lit8 v6, v6, 0x4

    iput v6, v5, Landroid/content/pm/ApplicationInfo;->privateFlags:I

    .line 1767
    :cond_2
    and-int/lit8 v5, p5, 0x20

    if-eqz v5, :cond_3

    .line 1768
    move-object/from16 v0, p1

    iget-object v5, v0, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v6, v5, Landroid/content/pm/ApplicationInfo;->flags:I

    const/high16 v7, 0x40000

    or-int/2addr v6, v7

    iput v6, v5, Landroid/content/pm/ApplicationInfo;->flags:I

    .line 1771
    :cond_3
    move/from16 v0, p5

    and-int/lit16 v5, v0, 0x800

    if-eqz v5, :cond_4

    .line 1772
    move-object/from16 v0, p1

    iget-object v5, v0, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v6, v5, Landroid/content/pm/ApplicationInfo;->privateFlags:I

    or-int/lit16 v6, v6, 0x200

    iput v6, v5, Landroid/content/pm/ApplicationInfo;->privateFlags:I

    .line 1776
    :cond_4
    const/16 v46, 0x1

    .line 1777
    .local v46, "supportsSmallScreens":I
    const/16 v45, 0x1

    .line 1778
    .local v45, "supportsNormalScreens":I
    const/16 v44, 0x1

    .line 1779
    .local v44, "supportsLargeScreens":I
    const/16 v47, 0x1

    .line 1780
    .local v47, "supportsXLargeScreens":I
    const/16 v40, 0x1

    .line 1781
    .local v40, "resizeable":I
    const/4 v14, 0x1

    .line 1783
    .local v14, "anyDensity":I
    invoke-interface/range {p4 .. p4}, Landroid/content/res/XmlResourceParser;->getDepth()I

    move-result v38

    .line 1784
    .local v38, "outerDepth":I
    :cond_5
    :goto_0
    invoke-interface/range {p4 .. p4}, Landroid/content/res/XmlResourceParser;->next()I

    move-result v51

    .local v51, "type":I
    const/4 v5, 0x1

    move/from16 v0, v51

    if-eq v0, v5, :cond_46

    .line 1785
    const/4 v5, 0x3

    move/from16 v0, v51

    if-ne v0, v5, :cond_6

    invoke-interface/range {p4 .. p4}, Landroid/content/res/XmlResourceParser;->getDepth()I

    move-result v5

    move/from16 v0, v38

    if-le v5, v0, :cond_46

    .line 1786
    :cond_6
    const/4 v5, 0x3

    move/from16 v0, v51

    if-eq v0, v5, :cond_5

    const/4 v5, 0x4

    move/from16 v0, v51

    if-eq v0, v5, :cond_5

    .line 1790
    invoke-interface/range {p4 .. p4}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    move-result-object v48

    .line 1792
    .local v48, "tagName":Ljava/lang/String;
    if-eqz p2, :cond_7

    move-object/from16 v0, p2

    move-object/from16 v1, v48

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_9

    .line 1800
    :cond_7
    const-string/jumbo v5, "application"

    move-object/from16 v0, v48

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_b

    .line 1801
    if-eqz v20, :cond_a

    .line 1807
    const-string/jumbo v5, "PackageParser"

    const-string/jumbo v6, "<manifest> has more than one <application>"

    invoke-static {v5, v6}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1808
    invoke-static/range {p4 .. p4}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    goto :goto_0

    .line 1745
    .end local v14    # "anyDensity":I
    .end local v38    # "outerDepth":I
    .end local v40    # "resizeable":I
    .end local v44    # "supportsLargeScreens":I
    .end local v45    # "supportsNormalScreens":I
    .end local v46    # "supportsSmallScreens":I
    .end local v47    # "supportsXLargeScreens":I
    .end local v48    # "tagName":Ljava/lang/String;
    .end local v51    # "type":I
    .restart local v35    # "nameError":Ljava/lang/String;
    :cond_8
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "<manifest> specifies bad sharedUserId name \""

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, v43

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 1746
    const-string/jumbo v6, "\": "

    .line 1745
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, v35

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    aput-object v5, p6, v6

    .line 1747
    const/16 v5, -0x6b

    move-object/from16 v0, p0

    iput v5, v0, Landroid/content/pm/PackageParser;->mParseError:I

    .line 1748
    const/4 v5, 0x0

    return-object v5

    .line 1793
    .end local v35    # "nameError":Ljava/lang/String;
    .restart local v14    # "anyDensity":I
    .restart local v38    # "outerDepth":I
    .restart local v40    # "resizeable":I
    .restart local v44    # "supportsLargeScreens":I
    .restart local v45    # "supportsNormalScreens":I
    .restart local v46    # "supportsSmallScreens":I
    .restart local v47    # "supportsXLargeScreens":I
    .restart local v48    # "tagName":Ljava/lang/String;
    .restart local v51    # "type":I
    :cond_9
    const-string/jumbo v5, "PackageParser"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "Skipping unsupported element under <manifest>: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, v48

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 1794
    const-string/jumbo v7, " at "

    .line 1793
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 1794
    move-object/from16 v0, p0

    iget-object v7, v0, Landroid/content/pm/PackageParser;->mArchiveSourcePath:Ljava/lang/String;

    .line 1793
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 1794
    const-string/jumbo v7, " "

    .line 1793
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 1795
    invoke-interface/range {p4 .. p4}, Landroid/content/res/XmlResourceParser;->getPositionDescription()Ljava/lang/String;

    move-result-object v7

    .line 1793
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1796
    invoke-static/range {p4 .. p4}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    goto/16 :goto_0

    .line 1813
    :cond_a
    const/16 v20, 0x1

    move-object/from16 v5, p0

    move-object/from16 v6, p1

    move-object/from16 v7, p3

    move-object/from16 v8, p4

    move/from16 v9, p5

    move-object/from16 v10, p6

    .line 1814
    invoke-direct/range {v5 .. v10}, Landroid/content/pm/PackageParser;->parseBaseApplication(Landroid/content/pm/PackageParser$Package;Landroid/content/res/Resources;Landroid/content/res/XmlResourceParser;I[Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_5

    .line 1815
    const/4 v5, 0x0

    return-object v5

    .line 1817
    :cond_b
    const-string/jumbo v5, "overlay"

    move-object/from16 v0, v48

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_f

    .line 1819
    sget-object v5, Lcom/android/internal/R$styleable;->AndroidManifestResourceOverlay:[I

    .line 1818
    move-object/from16 v0, p3

    move-object/from16 v1, p4

    invoke-virtual {v0, v1, v5}, Landroid/content/res/Resources;->obtainAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v41

    .line 1821
    const/4 v5, 0x1

    .line 1820
    move-object/from16 v0, v41

    invoke-virtual {v0, v5}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, p1

    iput-object v5, v0, Landroid/content/pm/PackageParser$Package;->mOverlayTarget:Ljava/lang/String;

    .line 1823
    const/4 v5, 0x0

    .line 1824
    const/4 v6, -0x1

    .line 1822
    move-object/from16 v0, v41

    invoke-virtual {v0, v5, v6}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v5

    move-object/from16 v0, p1

    iput v5, v0, Landroid/content/pm/PackageParser$Package;->mOverlayPriority:I

    .line 1825
    invoke-virtual/range {v41 .. v41}, Landroid/content/res/TypedArray;->recycle()V

    .line 1827
    move-object/from16 v0, p1

    iget-object v5, v0, Landroid/content/pm/PackageParser$Package;->mOverlayTarget:Ljava/lang/String;

    if-nez v5, :cond_c

    .line 1828
    const-string/jumbo v5, "<overlay> does not specify a target package"

    const/4 v6, 0x0

    aput-object v5, p6, v6

    .line 1829
    const/16 v5, -0x6c

    move-object/from16 v0, p0

    iput v5, v0, Landroid/content/pm/PackageParser;->mParseError:I

    .line 1830
    const/4 v5, 0x0

    return-object v5

    .line 1832
    :cond_c
    move-object/from16 v0, p1

    iget v5, v0, Landroid/content/pm/PackageParser$Package;->mOverlayPriority:I

    if-ltz v5, :cond_d

    move-object/from16 v0, p1

    iget v5, v0, Landroid/content/pm/PackageParser$Package;->mOverlayPriority:I

    const/16 v6, 0x270f

    if-le v5, v6, :cond_e

    .line 1833
    :cond_d
    const-string/jumbo v5, "<overlay> priority must be between 0 and 9999"

    const/4 v6, 0x0

    aput-object v5, p6, v6

    .line 1835
    const/16 v5, -0x6c

    .line 1834
    move-object/from16 v0, p0

    iput v5, v0, Landroid/content/pm/PackageParser;->mParseError:I

    .line 1836
    const/4 v5, 0x0

    return-object v5

    .line 1838
    :cond_e
    invoke-static/range {p4 .. p4}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    goto/16 :goto_0

    .line 1840
    :cond_f
    const-string/jumbo v5, "key-sets"

    move-object/from16 v0, v48

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_10

    .line 1841
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p3

    move-object/from16 v3, p4

    move-object/from16 v4, p6

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/content/pm/PackageParser;->parseKeySets(Landroid/content/pm/PackageParser$Package;Landroid/content/res/Resources;Landroid/content/res/XmlResourceParser;[Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_5

    .line 1842
    const/4 v5, 0x0

    return-object v5

    .line 1844
    :cond_10
    const-string/jumbo v5, "permission-group"

    move-object/from16 v0, v48

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_11

    move-object/from16 v5, p0

    move-object/from16 v6, p1

    move/from16 v7, p5

    move-object/from16 v8, p3

    move-object/from16 v9, p4

    move-object/from16 v10, p6

    .line 1845
    invoke-direct/range {v5 .. v10}, Landroid/content/pm/PackageParser;->parsePermissionGroup(Landroid/content/pm/PackageParser$Package;ILandroid/content/res/Resources;Landroid/content/res/XmlResourceParser;[Ljava/lang/String;)Landroid/content/pm/PackageParser$PermissionGroup;

    move-result-object v5

    if-nez v5, :cond_5

    .line 1846
    const/4 v5, 0x0

    return-object v5

    .line 1848
    :cond_11
    const-string/jumbo v5, "permission"

    move-object/from16 v0, v48

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_12

    .line 1849
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p3

    move-object/from16 v3, p4

    move-object/from16 v4, p6

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/content/pm/PackageParser;->parsePermission(Landroid/content/pm/PackageParser$Package;Landroid/content/res/Resources;Landroid/content/res/XmlResourceParser;[Ljava/lang/String;)Landroid/content/pm/PackageParser$Permission;

    move-result-object v5

    if-nez v5, :cond_5

    .line 1850
    const/4 v5, 0x0

    return-object v5

    .line 1852
    :cond_12
    const-string/jumbo v5, "permission-tree"

    move-object/from16 v0, v48

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_13

    .line 1853
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p3

    move-object/from16 v3, p4

    move-object/from16 v4, p6

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/content/pm/PackageParser;->parsePermissionTree(Landroid/content/pm/PackageParser$Package;Landroid/content/res/Resources;Landroid/content/res/XmlResourceParser;[Ljava/lang/String;)Landroid/content/pm/PackageParser$Permission;

    move-result-object v5

    if-nez v5, :cond_5

    .line 1854
    const/4 v5, 0x0

    return-object v5

    .line 1856
    :cond_13
    const-string/jumbo v5, "uses-permission"

    move-object/from16 v0, v48

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_14

    .line 1857
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p3

    move-object/from16 v3, p4

    invoke-direct {v0, v1, v2, v3}, Landroid/content/pm/PackageParser;->parseUsesPermission(Landroid/content/pm/PackageParser$Package;Landroid/content/res/Resources;Landroid/content/res/XmlResourceParser;)Z

    move-result v5

    if-nez v5, :cond_5

    .line 1858
    const/4 v5, 0x0

    return-object v5

    .line 1860
    :cond_14
    const-string/jumbo v5, "uses-permission-sdk-m"

    move-object/from16 v0, v48

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_15

    .line 1861
    const-string/jumbo v5, "uses-permission-sdk-23"

    move-object/from16 v0, v48

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    .line 1860
    if-eqz v5, :cond_16

    .line 1862
    :cond_15
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p3

    move-object/from16 v3, p4

    invoke-direct {v0, v1, v2, v3}, Landroid/content/pm/PackageParser;->parseUsesPermission(Landroid/content/pm/PackageParser$Package;Landroid/content/res/Resources;Landroid/content/res/XmlResourceParser;)Z

    move-result v5

    if-nez v5, :cond_5

    .line 1863
    const/4 v5, 0x0

    return-object v5

    .line 1865
    :cond_16
    const-string/jumbo v5, "uses-configuration"

    move-object/from16 v0, v48

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_19

    .line 1866
    new-instance v15, Landroid/content/pm/ConfigurationInfo;

    invoke-direct {v15}, Landroid/content/pm/ConfigurationInfo;-><init>()V

    .line 1868
    .local v15, "cPref":Landroid/content/pm/ConfigurationInfo;
    sget-object v5, Lcom/android/internal/R$styleable;->AndroidManifestUsesConfiguration:[I

    .line 1867
    move-object/from16 v0, p3

    move-object/from16 v1, p4

    invoke-virtual {v0, v1, v5}, Landroid/content/res/Resources;->obtainAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v41

    .line 1870
    const/4 v5, 0x0

    .line 1871
    const/4 v6, 0x0

    .line 1869
    move-object/from16 v0, v41

    invoke-virtual {v0, v5, v6}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v5

    iput v5, v15, Landroid/content/pm/ConfigurationInfo;->reqTouchScreen:I

    .line 1873
    const/4 v5, 0x1

    .line 1874
    const/4 v6, 0x0

    .line 1872
    move-object/from16 v0, v41

    invoke-virtual {v0, v5, v6}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v5

    iput v5, v15, Landroid/content/pm/ConfigurationInfo;->reqKeyboardType:I

    .line 1876
    const/4 v5, 0x2

    .line 1877
    const/4 v6, 0x0

    .line 1875
    move-object/from16 v0, v41

    invoke-virtual {v0, v5, v6}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v5

    if-eqz v5, :cond_17

    .line 1878
    iget v5, v15, Landroid/content/pm/ConfigurationInfo;->reqInputFeatures:I

    or-int/lit8 v5, v5, 0x1

    iput v5, v15, Landroid/content/pm/ConfigurationInfo;->reqInputFeatures:I

    .line 1881
    :cond_17
    const/4 v5, 0x3

    .line 1882
    const/4 v6, 0x0

    .line 1880
    move-object/from16 v0, v41

    invoke-virtual {v0, v5, v6}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v5

    iput v5, v15, Landroid/content/pm/ConfigurationInfo;->reqNavigation:I

    .line 1884
    const/4 v5, 0x4

    .line 1885
    const/4 v6, 0x0

    .line 1883
    move-object/from16 v0, v41

    invoke-virtual {v0, v5, v6}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v5

    if-eqz v5, :cond_18

    .line 1886
    iget v5, v15, Landroid/content/pm/ConfigurationInfo;->reqInputFeatures:I

    or-int/lit8 v5, v5, 0x2

    iput v5, v15, Landroid/content/pm/ConfigurationInfo;->reqInputFeatures:I

    .line 1888
    :cond_18
    invoke-virtual/range {v41 .. v41}, Landroid/content/res/TypedArray;->recycle()V

    .line 1889
    move-object/from16 v0, p1

    iget-object v5, v0, Landroid/content/pm/PackageParser$Package;->configPreferences:Ljava/util/ArrayList;

    invoke-static {v5, v15}, Lcom/android/internal/util/ArrayUtils;->add(Ljava/util/ArrayList;Ljava/lang/Object;)Ljava/util/ArrayList;

    move-result-object v5

    move-object/from16 v0, p1

    iput-object v5, v0, Landroid/content/pm/PackageParser$Package;->configPreferences:Ljava/util/ArrayList;

    .line 1891
    invoke-static/range {p4 .. p4}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    goto/16 :goto_0

    .line 1893
    .end local v15    # "cPref":Landroid/content/pm/ConfigurationInfo;
    :cond_19
    const-string/jumbo v5, "uses-feature"

    move-object/from16 v0, v48

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1b

    .line 1894
    move-object/from16 v0, p0

    move-object/from16 v1, p3

    move-object/from16 v2, p4

    invoke-direct {v0, v1, v2}, Landroid/content/pm/PackageParser;->parseUsesFeature(Landroid/content/res/Resources;Landroid/util/AttributeSet;)Landroid/content/pm/FeatureInfo;

    move-result-object v19

    .line 1895
    .local v19, "fi":Landroid/content/pm/FeatureInfo;
    move-object/from16 v0, p1

    iget-object v5, v0, Landroid/content/pm/PackageParser$Package;->reqFeatures:Ljava/util/ArrayList;

    move-object/from16 v0, v19

    invoke-static {v5, v0}, Lcom/android/internal/util/ArrayUtils;->add(Ljava/util/ArrayList;Ljava/lang/Object;)Ljava/util/ArrayList;

    move-result-object v5

    move-object/from16 v0, p1

    iput-object v5, v0, Landroid/content/pm/PackageParser$Package;->reqFeatures:Ljava/util/ArrayList;

    .line 1897
    move-object/from16 v0, v19

    iget-object v5, v0, Landroid/content/pm/FeatureInfo;->name:Ljava/lang/String;

    if-nez v5, :cond_1a

    .line 1898
    new-instance v15, Landroid/content/pm/ConfigurationInfo;

    invoke-direct {v15}, Landroid/content/pm/ConfigurationInfo;-><init>()V

    .line 1899
    .restart local v15    # "cPref":Landroid/content/pm/ConfigurationInfo;
    move-object/from16 v0, v19

    iget v5, v0, Landroid/content/pm/FeatureInfo;->reqGlEsVersion:I

    iput v5, v15, Landroid/content/pm/ConfigurationInfo;->reqGlEsVersion:I

    .line 1900
    move-object/from16 v0, p1

    iget-object v5, v0, Landroid/content/pm/PackageParser$Package;->configPreferences:Ljava/util/ArrayList;

    invoke-static {v5, v15}, Lcom/android/internal/util/ArrayUtils;->add(Ljava/util/ArrayList;Ljava/lang/Object;)Ljava/util/ArrayList;

    move-result-object v5

    move-object/from16 v0, p1

    iput-object v5, v0, Landroid/content/pm/PackageParser$Package;->configPreferences:Ljava/util/ArrayList;

    .line 1903
    .end local v15    # "cPref":Landroid/content/pm/ConfigurationInfo;
    :cond_1a
    invoke-static/range {p4 .. p4}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    goto/16 :goto_0

    .line 1905
    .end local v19    # "fi":Landroid/content/pm/FeatureInfo;
    :cond_1b
    const-string/jumbo v5, "feature-group"

    move-object/from16 v0, v48

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_21

    .line 1906
    new-instance v21, Landroid/content/pm/FeatureGroupInfo;

    invoke-direct/range {v21 .. v21}, Landroid/content/pm/FeatureGroupInfo;-><init>()V

    .line 1907
    .local v21, "group":Landroid/content/pm/FeatureGroupInfo;
    const/16 v18, 0x0

    .line 1908
    .local v18, "features":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/pm/FeatureInfo;>;"
    invoke-interface/range {p4 .. p4}, Landroid/content/res/XmlResourceParser;->getDepth()I

    move-result v28

    .line 1909
    .end local v18    # "features":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/pm/FeatureInfo;>;"
    .local v28, "innerDepth":I
    :cond_1c
    :goto_1
    invoke-interface/range {p4 .. p4}, Landroid/content/res/XmlResourceParser;->next()I

    move-result v51

    const/4 v5, 0x1

    move/from16 v0, v51

    if-eq v0, v5, :cond_1f

    .line 1910
    const/4 v5, 0x3

    move/from16 v0, v51

    if-ne v0, v5, :cond_1d

    invoke-interface/range {p4 .. p4}, Landroid/content/res/XmlResourceParser;->getDepth()I

    move-result v5

    move/from16 v0, v28

    if-le v5, v0, :cond_1f

    .line 1911
    :cond_1d
    const/4 v5, 0x3

    move/from16 v0, v51

    if-eq v0, v5, :cond_1c

    const/4 v5, 0x4

    move/from16 v0, v51

    if-eq v0, v5, :cond_1c

    .line 1915
    invoke-interface/range {p4 .. p4}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    move-result-object v29

    .line 1916
    .local v29, "innerTagName":Ljava/lang/String;
    const-string/jumbo v5, "uses-feature"

    move-object/from16 v0, v29

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1e

    .line 1917
    move-object/from16 v0, p0

    move-object/from16 v1, p3

    move-object/from16 v2, p4

    invoke-direct {v0, v1, v2}, Landroid/content/pm/PackageParser;->parseUsesFeature(Landroid/content/res/Resources;Landroid/util/AttributeSet;)Landroid/content/pm/FeatureInfo;

    move-result-object v17

    .line 1920
    .local v17, "featureInfo":Landroid/content/pm/FeatureInfo;
    move-object/from16 v0, v17

    iget v5, v0, Landroid/content/pm/FeatureInfo;->flags:I

    or-int/lit8 v5, v5, 0x1

    move-object/from16 v0, v17

    iput v5, v0, Landroid/content/pm/FeatureInfo;->flags:I

    .line 1921
    move-object/from16 v0, v18

    move-object/from16 v1, v17

    invoke-static {v0, v1}, Lcom/android/internal/util/ArrayUtils;->add(Ljava/util/ArrayList;Ljava/lang/Object;)Ljava/util/ArrayList;

    move-result-object v18

    .line 1927
    .end local v17    # "featureInfo":Landroid/content/pm/FeatureInfo;
    :goto_2
    invoke-static/range {p4 .. p4}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    goto :goto_1

    .line 1923
    :cond_1e
    const-string/jumbo v5, "PackageParser"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "Unknown element under <feature-group>: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, v29

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 1924
    const-string/jumbo v7, " at "

    .line 1923
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 1924
    move-object/from16 v0, p0

    iget-object v7, v0, Landroid/content/pm/PackageParser;->mArchiveSourcePath:Ljava/lang/String;

    .line 1923
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 1924
    const-string/jumbo v7, " "

    .line 1923
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 1925
    invoke-interface/range {p4 .. p4}, Landroid/content/res/XmlResourceParser;->getPositionDescription()Ljava/lang/String;

    move-result-object v7

    .line 1923
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 1930
    .end local v29    # "innerTagName":Ljava/lang/String;
    :cond_1f
    if-eqz v18, :cond_20

    .line 1931
    invoke-virtual/range {v18 .. v18}, Ljava/util/ArrayList;->size()I

    move-result v5

    new-array v5, v5, [Landroid/content/pm/FeatureInfo;

    move-object/from16 v0, v21

    iput-object v5, v0, Landroid/content/pm/FeatureGroupInfo;->features:[Landroid/content/pm/FeatureInfo;

    .line 1932
    move-object/from16 v0, v21

    iget-object v5, v0, Landroid/content/pm/FeatureGroupInfo;->features:[Landroid/content/pm/FeatureInfo;

    move-object/from16 v0, v18

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [Landroid/content/pm/FeatureInfo;

    move-object/from16 v0, v21

    iput-object v5, v0, Landroid/content/pm/FeatureGroupInfo;->features:[Landroid/content/pm/FeatureInfo;

    .line 1934
    :cond_20
    move-object/from16 v0, p1

    iget-object v5, v0, Landroid/content/pm/PackageParser$Package;->featureGroups:Ljava/util/ArrayList;

    move-object/from16 v0, v21

    invoke-static {v5, v0}, Lcom/android/internal/util/ArrayUtils;->add(Ljava/util/ArrayList;Ljava/lang/Object;)Ljava/util/ArrayList;

    move-result-object v5

    move-object/from16 v0, p1

    iput-object v5, v0, Landroid/content/pm/PackageParser$Package;->featureGroups:Ljava/util/ArrayList;

    goto/16 :goto_0

    .line 1936
    .end local v21    # "group":Landroid/content/pm/FeatureGroupInfo;
    .end local v28    # "innerDepth":I
    :cond_21
    const-string/jumbo v5, "uses-sdk"

    move-object/from16 v0, v48

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_32

    .line 1937
    sget v5, Landroid/content/pm/PackageParser;->SDK_VERSION:I

    if-lez v5, :cond_30

    .line 1939
    sget-object v5, Lcom/android/internal/R$styleable;->AndroidManifestUsesSdk:[I

    .line 1938
    move-object/from16 v0, p3

    move-object/from16 v1, p4

    invoke-virtual {v0, v1, v5}, Landroid/content/res/Resources;->obtainAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v41

    .line 1941
    const/16 v33, 0x1

    .line 1942
    .local v33, "minVers":I
    const/16 v32, 0x0

    .line 1943
    .local v32, "minCode":Ljava/lang/String;
    const/16 v50, 0x0

    .line 1944
    .local v50, "targetVers":I
    const/16 v49, 0x0

    .line 1947
    .local v49, "targetCode":Ljava/lang/String;
    const/4 v5, 0x0

    .line 1946
    move-object/from16 v0, v41

    invoke-virtual {v0, v5}, Landroid/content/res/TypedArray;->peekValue(I)Landroid/util/TypedValue;

    move-result-object v52

    .line 1948
    .local v52, "val":Landroid/util/TypedValue;
    if-eqz v52, :cond_22

    .line 1949
    move-object/from16 v0, v52

    iget v5, v0, Landroid/util/TypedValue;->type:I

    const/4 v6, 0x3

    if-ne v5, v6, :cond_25

    move-object/from16 v0, v52

    iget-object v5, v0, Landroid/util/TypedValue;->string:Ljava/lang/CharSequence;

    if-eqz v5, :cond_25

    .line 1950
    move-object/from16 v0, v52

    iget-object v5, v0, Landroid/util/TypedValue;->string:Ljava/lang/CharSequence;

    invoke-interface {v5}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v32

    .local v32, "minCode":Ljava/lang/String;
    move-object/from16 v49, v32

    .line 1958
    .end local v32    # "minCode":Ljava/lang/String;
    .end local v49    # "targetCode":Ljava/lang/String;
    :cond_22
    :goto_3
    const/4 v5, 0x1

    .line 1957
    move-object/from16 v0, v41

    invoke-virtual {v0, v5}, Landroid/content/res/TypedArray;->peekValue(I)Landroid/util/TypedValue;

    move-result-object v52

    .line 1959
    if-eqz v52, :cond_23

    .line 1960
    move-object/from16 v0, v52

    iget v5, v0, Landroid/util/TypedValue;->type:I

    const/4 v6, 0x3

    if-ne v5, v6, :cond_26

    move-object/from16 v0, v52

    iget-object v5, v0, Landroid/util/TypedValue;->string:Ljava/lang/CharSequence;

    if-eqz v5, :cond_26

    .line 1961
    move-object/from16 v0, v52

    iget-object v5, v0, Landroid/util/TypedValue;->string:Ljava/lang/CharSequence;

    invoke-interface {v5}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v49

    .line 1962
    .local v49, "targetCode":Ljava/lang/String;
    if-nez v32, :cond_23

    .line 1963
    move-object/from16 v32, v49

    .line 1971
    .end local v49    # "targetCode":Ljava/lang/String;
    :cond_23
    :goto_4
    invoke-virtual/range {v41 .. v41}, Landroid/content/res/TypedArray;->recycle()V

    .line 1973
    if-eqz v32, :cond_2b

    .line 1974
    const/4 v13, 0x0

    .line 1975
    .local v13, "allowedCodename":Z
    sget-object v6, Landroid/content/pm/PackageParser;->SDK_CODENAMES:[Ljava/lang/String;

    const/4 v5, 0x0

    array-length v7, v6

    :goto_5
    if-ge v5, v7, :cond_24

    aget-object v16, v6, v5

    .line 1976
    .local v16, "codename":Ljava/lang/String;
    move-object/from16 v0, v32

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_27

    .line 1977
    const/4 v13, 0x1

    .line 1981
    .end local v16    # "codename":Ljava/lang/String;
    :cond_24
    if-nez v13, :cond_29

    .line 1982
    sget-object v5, Landroid/content/pm/PackageParser;->SDK_CODENAMES:[Ljava/lang/String;

    array-length v5, v5

    if-lez v5, :cond_28

    .line 1983
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "Requires development platform "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, v32

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 1984
    const-string/jumbo v6, " (current platform is any of "

    .line 1983
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 1985
    sget-object v6, Landroid/content/pm/PackageParser;->SDK_CODENAMES:[Ljava/lang/String;

    invoke-static {v6}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    .line 1983
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 1985
    const-string/jumbo v6, ")"

    .line 1983
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    aput-object v5, p6, v6

    .line 1990
    :goto_6
    const/16 v5, -0xc

    move-object/from16 v0, p0

    iput v5, v0, Landroid/content/pm/PackageParser;->mParseError:I

    .line 1991
    const/4 v5, 0x0

    return-object v5

    .line 1953
    .end local v13    # "allowedCodename":Z
    .local v32, "minCode":Ljava/lang/String;
    .local v49, "targetCode":Ljava/lang/String;
    :cond_25
    move-object/from16 v0, v52

    iget v0, v0, Landroid/util/TypedValue;->data:I

    move/from16 v33, v0

    move/from16 v50, v33

    goto/16 :goto_3

    .line 1967
    .end local v32    # "minCode":Ljava/lang/String;
    .end local v49    # "targetCode":Ljava/lang/String;
    :cond_26
    move-object/from16 v0, v52

    iget v0, v0, Landroid/util/TypedValue;->data:I

    move/from16 v50, v0

    goto :goto_4

    .line 1975
    .restart local v13    # "allowedCodename":Z
    .restart local v16    # "codename":Ljava/lang/String;
    :cond_27
    add-int/lit8 v5, v5, 0x1

    goto :goto_5

    .line 1987
    .end local v16    # "codename":Ljava/lang/String;
    :cond_28
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "Requires development platform "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, v32

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 1988
    const-string/jumbo v6, " but this is a release platform."

    .line 1987
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    aput-object v5, p6, v6

    goto :goto_6

    .line 1993
    :cond_29
    move-object/from16 v0, p1

    iget-object v5, v0, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    .line 1994
    const/16 v6, 0x2710

    .line 1993
    iput v6, v5, Landroid/content/pm/ApplicationInfo;->minSdkVersion:I

    .line 2004
    .end local v13    # "allowedCodename":Z
    :goto_7
    if-eqz v49, :cond_31

    .line 2005
    const/4 v13, 0x0

    .line 2006
    .restart local v13    # "allowedCodename":Z
    sget-object v6, Landroid/content/pm/PackageParser;->SDK_CODENAMES:[Ljava/lang/String;

    const/4 v5, 0x0

    array-length v7, v6

    :goto_8
    if-ge v5, v7, :cond_2a

    aget-object v16, v6, v5

    .line 2007
    .restart local v16    # "codename":Ljava/lang/String;
    move-object/from16 v0, v49

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_2d

    .line 2008
    const/4 v13, 0x1

    .line 2012
    .end local v16    # "codename":Ljava/lang/String;
    :cond_2a
    if-nez v13, :cond_2f

    .line 2013
    sget-object v5, Landroid/content/pm/PackageParser;->SDK_CODENAMES:[Ljava/lang/String;

    array-length v5, v5

    if-lez v5, :cond_2e

    .line 2014
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "Requires development platform "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, v49

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 2015
    const-string/jumbo v6, " (current platform is any of "

    .line 2014
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 2016
    sget-object v6, Landroid/content/pm/PackageParser;->SDK_CODENAMES:[Ljava/lang/String;

    invoke-static {v6}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    .line 2014
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 2016
    const-string/jumbo v6, ")"

    .line 2014
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    aput-object v5, p6, v6

    .line 2021
    :goto_9
    const/16 v5, -0xc

    move-object/from16 v0, p0

    iput v5, v0, Landroid/content/pm/PackageParser;->mParseError:I

    .line 2022
    const/4 v5, 0x0

    return-object v5

    .line 1995
    .end local v13    # "allowedCodename":Z
    :cond_2b
    sget v5, Landroid/content/pm/PackageParser;->SDK_VERSION:I

    move/from16 v0, v33

    if-le v0, v5, :cond_2c

    .line 1996
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "Requires newer sdk version #"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move/from16 v0, v33

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 1997
    const-string/jumbo v6, " (current version is #"

    .line 1996
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 1997
    sget v6, Landroid/content/pm/PackageParser;->SDK_VERSION:I

    .line 1996
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 1997
    const-string/jumbo v6, ")"

    .line 1996
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    aput-object v5, p6, v6

    .line 1998
    const/16 v5, -0xc

    move-object/from16 v0, p0

    iput v5, v0, Landroid/content/pm/PackageParser;->mParseError:I

    .line 1999
    const/4 v5, 0x0

    return-object v5

    .line 2001
    :cond_2c
    move-object/from16 v0, p1

    iget-object v5, v0, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    move/from16 v0, v33

    iput v0, v5, Landroid/content/pm/ApplicationInfo;->minSdkVersion:I

    goto/16 :goto_7

    .line 2006
    .restart local v13    # "allowedCodename":Z
    .restart local v16    # "codename":Ljava/lang/String;
    :cond_2d
    add-int/lit8 v5, v5, 0x1

    goto/16 :goto_8

    .line 2018
    .end local v16    # "codename":Ljava/lang/String;
    :cond_2e
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "Requires development platform "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, v49

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 2019
    const-string/jumbo v6, " but this is a release platform."

    .line 2018
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    aput-object v5, p6, v6

    goto :goto_9

    .line 2025
    :cond_2f
    move-object/from16 v0, p1

    iget-object v5, v0, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    .line 2026
    const/16 v6, 0x2710

    .line 2025
    iput v6, v5, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    .line 2032
    .end local v13    # "allowedCodename":Z
    .end local v33    # "minVers":I
    .end local v50    # "targetVers":I
    .end local v52    # "val":Landroid/util/TypedValue;
    :cond_30
    :goto_a
    invoke-static/range {p4 .. p4}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    goto/16 :goto_0

    .line 2028
    .restart local v33    # "minVers":I
    .restart local v50    # "targetVers":I
    .restart local v52    # "val":Landroid/util/TypedValue;
    :cond_31
    move-object/from16 v0, p1

    iget-object v5, v0, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    move/from16 v0, v50

    iput v0, v5, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    goto :goto_a

    .line 2034
    .end local v33    # "minVers":I
    .end local v50    # "targetVers":I
    .end local v52    # "val":Landroid/util/TypedValue;
    :cond_32
    const-string/jumbo v5, "supports-screens"

    move-object/from16 v0, v48

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_33

    .line 2036
    sget-object v5, Lcom/android/internal/R$styleable;->AndroidManifestSupportsScreens:[I

    .line 2035
    move-object/from16 v0, p3

    move-object/from16 v1, p4

    invoke-virtual {v0, v1, v5}, Landroid/content/res/Resources;->obtainAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v41

    .line 2038
    move-object/from16 v0, p1

    iget-object v5, v0, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    .line 2039
    const/4 v6, 0x6

    .line 2040
    const/4 v7, 0x0

    .line 2038
    move-object/from16 v0, v41

    invoke-virtual {v0, v6, v7}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result v6

    iput v6, v5, Landroid/content/pm/ApplicationInfo;->requiresSmallestWidthDp:I

    .line 2041
    move-object/from16 v0, p1

    iget-object v5, v0, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    .line 2042
    const/4 v6, 0x7

    .line 2043
    const/4 v7, 0x0

    .line 2041
    move-object/from16 v0, v41

    invoke-virtual {v0, v6, v7}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result v6

    iput v6, v5, Landroid/content/pm/ApplicationInfo;->compatibleWidthLimitDp:I

    .line 2044
    move-object/from16 v0, p1

    iget-object v5, v0, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    .line 2045
    const/16 v6, 0x8

    .line 2046
    const/4 v7, 0x0

    .line 2044
    move-object/from16 v0, v41

    invoke-virtual {v0, v6, v7}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result v6

    iput v6, v5, Landroid/content/pm/ApplicationInfo;->largestWidthLimitDp:I

    .line 2051
    const/4 v5, 0x1

    .line 2050
    move-object/from16 v0, v41

    move/from16 v1, v46

    invoke-virtual {v0, v5, v1}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result v46

    .line 2054
    const/4 v5, 0x2

    .line 2053
    move-object/from16 v0, v41

    move/from16 v1, v45

    invoke-virtual {v0, v5, v1}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result v45

    .line 2057
    const/4 v5, 0x3

    .line 2056
    move-object/from16 v0, v41

    move/from16 v1, v44

    invoke-virtual {v0, v5, v1}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result v44

    .line 2060
    const/4 v5, 0x5

    .line 2059
    move-object/from16 v0, v41

    move/from16 v1, v47

    invoke-virtual {v0, v5, v1}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result v47

    .line 2063
    const/4 v5, 0x4

    .line 2062
    move-object/from16 v0, v41

    move/from16 v1, v40

    invoke-virtual {v0, v5, v1}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result v40

    .line 2066
    const/4 v5, 0x0

    .line 2065
    move-object/from16 v0, v41

    invoke-virtual {v0, v5, v14}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result v14

    .line 2069
    invoke-virtual/range {v41 .. v41}, Landroid/content/res/TypedArray;->recycle()V

    .line 2071
    invoke-static/range {p4 .. p4}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    goto/16 :goto_0

    .line 2073
    :cond_33
    const-string/jumbo v5, "protected-broadcast"

    move-object/from16 v0, v48

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_36

    .line 2075
    sget-object v5, Lcom/android/internal/R$styleable;->AndroidManifestProtectedBroadcast:[I

    .line 2074
    move-object/from16 v0, p3

    move-object/from16 v1, p4

    invoke-virtual {v0, v1, v5}, Landroid/content/res/Resources;->obtainAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v41

    .line 2080
    const/4 v5, 0x0

    .line 2079
    move-object/from16 v0, v41

    invoke-virtual {v0, v5}, Landroid/content/res/TypedArray;->getNonResourceString(I)Ljava/lang/String;

    move-result-object v34

    .line 2082
    .local v34, "name":Ljava/lang/String;
    invoke-virtual/range {v41 .. v41}, Landroid/content/res/TypedArray;->recycle()V

    .line 2084
    if-eqz v34, :cond_35

    and-int/lit8 v5, p5, 0x1

    if-eqz v5, :cond_35

    .line 2085
    move-object/from16 v0, p1

    iget-object v5, v0, Landroid/content/pm/PackageParser$Package;->protectedBroadcasts:Ljava/util/ArrayList;

    if-nez v5, :cond_34

    .line 2086
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v0, p1

    iput-object v5, v0, Landroid/content/pm/PackageParser$Package;->protectedBroadcasts:Ljava/util/ArrayList;

    .line 2088
    :cond_34
    move-object/from16 v0, p1

    iget-object v5, v0, Landroid/content/pm/PackageParser$Package;->protectedBroadcasts:Ljava/util/ArrayList;

    move-object/from16 v0, v34

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_35

    .line 2089
    move-object/from16 v0, p1

    iget-object v5, v0, Landroid/content/pm/PackageParser$Package;->protectedBroadcasts:Ljava/util/ArrayList;

    invoke-virtual/range {v34 .. v34}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2093
    :cond_35
    invoke-static/range {p4 .. p4}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    goto/16 :goto_0

    .line 2095
    .end local v34    # "name":Ljava/lang/String;
    :cond_36
    const-string/jumbo v5, "instrumentation"

    move-object/from16 v0, v48

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_37

    .line 2096
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p3

    move-object/from16 v3, p4

    move-object/from16 v4, p6

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/content/pm/PackageParser;->parseInstrumentation(Landroid/content/pm/PackageParser$Package;Landroid/content/res/Resources;Landroid/content/res/XmlResourceParser;[Ljava/lang/String;)Landroid/content/pm/PackageParser$Instrumentation;

    move-result-object v5

    if-nez v5, :cond_5

    .line 2097
    const/4 v5, 0x0

    return-object v5

    .line 2099
    :cond_37
    const-string/jumbo v5, "original-package"

    move-object/from16 v0, v48

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3a

    .line 2101
    sget-object v5, Lcom/android/internal/R$styleable;->AndroidManifestOriginalPackage:[I

    .line 2100
    move-object/from16 v0, p3

    move-object/from16 v1, p4

    invoke-virtual {v0, v1, v5}, Landroid/content/res/Resources;->obtainAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v41

    .line 2104
    const/4 v5, 0x0

    const/4 v6, 0x0

    .line 2103
    move-object/from16 v0, v41

    invoke-virtual {v0, v5, v6}, Landroid/content/res/TypedArray;->getNonConfigurationString(II)Ljava/lang/String;

    move-result-object v37

    .line 2105
    .local v37, "orig":Ljava/lang/String;
    move-object/from16 v0, p1

    iget-object v5, v0, Landroid/content/pm/PackageParser$Package;->packageName:Ljava/lang/String;

    move-object/from16 v0, v37

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_39

    .line 2106
    move-object/from16 v0, p1

    iget-object v5, v0, Landroid/content/pm/PackageParser$Package;->mOriginalPackages:Ljava/util/ArrayList;

    if-nez v5, :cond_38

    .line 2107
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v0, p1

    iput-object v5, v0, Landroid/content/pm/PackageParser$Package;->mOriginalPackages:Ljava/util/ArrayList;

    .line 2108
    move-object/from16 v0, p1

    iget-object v5, v0, Landroid/content/pm/PackageParser$Package;->packageName:Ljava/lang/String;

    move-object/from16 v0, p1

    iput-object v5, v0, Landroid/content/pm/PackageParser$Package;->mRealPackage:Ljava/lang/String;

    .line 2110
    :cond_38
    move-object/from16 v0, p1

    iget-object v5, v0, Landroid/content/pm/PackageParser$Package;->mOriginalPackages:Ljava/util/ArrayList;

    move-object/from16 v0, v37

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2113
    :cond_39
    invoke-virtual/range {v41 .. v41}, Landroid/content/res/TypedArray;->recycle()V

    .line 2115
    invoke-static/range {p4 .. p4}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    goto/16 :goto_0

    .line 2117
    .end local v37    # "orig":Ljava/lang/String;
    :cond_3a
    const-string/jumbo v5, "adopt-permissions"

    move-object/from16 v0, v48

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3d

    .line 2119
    sget-object v5, Lcom/android/internal/R$styleable;->AndroidManifestOriginalPackage:[I

    .line 2118
    move-object/from16 v0, p3

    move-object/from16 v1, p4

    invoke-virtual {v0, v1, v5}, Landroid/content/res/Resources;->obtainAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v41

    .line 2122
    const/4 v5, 0x0

    const/4 v6, 0x0

    .line 2121
    move-object/from16 v0, v41

    invoke-virtual {v0, v5, v6}, Landroid/content/res/TypedArray;->getNonConfigurationString(II)Ljava/lang/String;

    move-result-object v34

    .line 2124
    .restart local v34    # "name":Ljava/lang/String;
    invoke-virtual/range {v41 .. v41}, Landroid/content/res/TypedArray;->recycle()V

    .line 2126
    if-eqz v34, :cond_3c

    .line 2127
    move-object/from16 v0, p1

    iget-object v5, v0, Landroid/content/pm/PackageParser$Package;->mAdoptPermissions:Ljava/util/ArrayList;

    if-nez v5, :cond_3b

    .line 2128
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v0, p1

    iput-object v5, v0, Landroid/content/pm/PackageParser$Package;->mAdoptPermissions:Ljava/util/ArrayList;

    .line 2130
    :cond_3b
    move-object/from16 v0, p1

    iget-object v5, v0, Landroid/content/pm/PackageParser$Package;->mAdoptPermissions:Ljava/util/ArrayList;

    move-object/from16 v0, v34

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2133
    :cond_3c
    invoke-static/range {p4 .. p4}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    goto/16 :goto_0

    .line 2135
    .end local v34    # "name":Ljava/lang/String;
    :cond_3d
    const-string/jumbo v5, "uses-gl-texture"

    move-object/from16 v0, v48

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3e

    .line 2137
    invoke-static/range {p4 .. p4}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    goto/16 :goto_0

    .line 2140
    :cond_3e
    const-string/jumbo v5, "compatible-screens"

    move-object/from16 v0, v48

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3f

    .line 2142
    invoke-static/range {p4 .. p4}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    goto/16 :goto_0

    .line 2144
    :cond_3f
    const-string/jumbo v5, "supports-input"

    move-object/from16 v0, v48

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_40

    .line 2145
    invoke-static/range {p4 .. p4}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    goto/16 :goto_0

    .line 2148
    :cond_40
    const-string/jumbo v5, "eat-comment"

    move-object/from16 v0, v48

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_41

    .line 2150
    invoke-static/range {p4 .. p4}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    goto/16 :goto_0

    .line 2153
    :cond_41
    const-string/jumbo v5, "package"

    move-object/from16 v0, v48

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_42

    .line 2155
    invoke-static/range {p4 .. p4}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    goto/16 :goto_0

    .line 2163
    :cond_42
    const-string/jumbo v5, "restrict-update"

    move-object/from16 v0, v48

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_45

    .line 2164
    and-int/lit8 v5, p5, 0x40

    if-eqz v5, :cond_44

    .line 2166
    sget-object v5, Lcom/android/internal/R$styleable;->AndroidManifestRestrictUpdate:[I

    .line 2165
    move-object/from16 v0, p3

    move-object/from16 v1, p4

    invoke-virtual {v0, v1, v5}, Landroid/content/res/Resources;->obtainAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v41

    .line 2168
    const/4 v5, 0x0

    const/4 v6, 0x0

    .line 2167
    move-object/from16 v0, v41

    invoke-virtual {v0, v5, v6}, Landroid/content/res/TypedArray;->getNonConfigurationString(II)Ljava/lang/String;

    move-result-object v22

    .line 2169
    .local v22, "hash":Ljava/lang/String;
    invoke-virtual/range {v41 .. v41}, Landroid/content/res/TypedArray;->recycle()V

    .line 2171
    const/4 v5, 0x0

    move-object/from16 v0, p1

    iput-object v5, v0, Landroid/content/pm/PackageParser$Package;->restrictUpdateHash:[B

    .line 2172
    if-eqz v22, :cond_44

    .line 2173
    invoke-virtual/range {v22 .. v22}, Ljava/lang/String;->length()I

    move-result v24

    .line 2174
    .local v24, "hashLength":I
    div-int/lit8 v5, v24, 0x2

    new-array v0, v5, [B

    move-object/from16 v23, v0

    .line 2175
    .local v23, "hashBytes":[B
    const/16 v25, 0x0

    .local v25, "i":I
    :goto_b
    move/from16 v0, v25

    move/from16 v1, v24

    if-ge v0, v1, :cond_43

    .line 2176
    div-int/lit8 v5, v25, 0x2

    move-object/from16 v0, v22

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v6

    const/16 v7, 0x10

    invoke-static {v6, v7}, Ljava/lang/Character;->digit(CI)I

    move-result v6

    shl-int/lit8 v6, v6, 0x4

    .line 2177
    add-int/lit8 v7, v25, 0x1

    move-object/from16 v0, v22

    invoke-virtual {v0, v7}, Ljava/lang/String;->charAt(I)C

    move-result v7

    const/16 v8, 0x10

    invoke-static {v7, v8}, Ljava/lang/Character;->digit(CI)I

    move-result v7

    .line 2176
    add-int/2addr v6, v7

    int-to-byte v6, v6

    aput-byte v6, v23, v5

    .line 2175
    add-int/lit8 v25, v25, 0x2

    goto :goto_b

    .line 2179
    :cond_43
    move-object/from16 v0, v23

    move-object/from16 v1, p1

    iput-object v0, v1, Landroid/content/pm/PackageParser$Package;->restrictUpdateHash:[B

    .line 2183
    .end local v22    # "hash":Ljava/lang/String;
    .end local v23    # "hashBytes":[B
    .end local v24    # "hashLength":I
    .end local v25    # "i":I
    :cond_44
    invoke-static/range {p4 .. p4}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    goto/16 :goto_0

    .line 2192
    :cond_45
    const-string/jumbo v5, "PackageParser"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "Unknown element under <manifest>: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-interface/range {p4 .. p4}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 2193
    const-string/jumbo v7, " at "

    .line 2192
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 2193
    move-object/from16 v0, p0

    iget-object v7, v0, Landroid/content/pm/PackageParser;->mArchiveSourcePath:Ljava/lang/String;

    .line 2192
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 2193
    const-string/jumbo v7, " "

    .line 2192
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 2194
    invoke-interface/range {p4 .. p4}, Landroid/content/res/XmlResourceParser;->getPositionDescription()Ljava/lang/String;

    move-result-object v7

    .line 2192
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2195
    invoke-static/range {p4 .. p4}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    goto/16 :goto_0

    .line 2200
    .end local v48    # "tagName":Ljava/lang/String;
    :cond_46
    if-nez v20, :cond_47

    move-object/from16 v0, p1

    iget-object v5, v0, Landroid/content/pm/PackageParser$Package;->instrumentation:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-nez v5, :cond_47

    .line 2201
    const-string/jumbo v5, "<manifest> does not contain an <application> or <instrumentation>"

    const/4 v6, 0x0

    aput-object v5, p6, v6

    .line 2202
    const/16 v5, -0x6d

    move-object/from16 v0, p0

    iput v5, v0, Landroid/content/pm/PackageParser;->mParseError:I

    .line 2205
    :cond_47
    sget-object v5, Landroid/content/pm/PackageParser;->NEW_PERMISSIONS:[Landroid/content/pm/PackageParser$NewPermissionInfo;

    array-length v11, v5

    .line 2206
    .local v11, "NP":I
    const/16 v26, 0x0

    .line 2207
    .local v26, "implicitPerms":Ljava/lang/StringBuilder;
    const/16 v30, 0x0

    .end local v26    # "implicitPerms":Ljava/lang/StringBuilder;
    .local v30, "ip":I
    :goto_c
    move/from16 v0, v30

    if-ge v0, v11, :cond_48

    .line 2209
    sget-object v5, Landroid/content/pm/PackageParser;->NEW_PERMISSIONS:[Landroid/content/pm/PackageParser$NewPermissionInfo;

    .line 2208
    aget-object v36, v5, v30

    .line 2210
    .local v36, "npi":Landroid/content/pm/PackageParser$NewPermissionInfo;
    move-object/from16 v0, p1

    iget-object v5, v0, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v5, v5, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    move-object/from16 v0, v36

    iget v6, v0, Landroid/content/pm/PackageParser$NewPermissionInfo;->sdkVersion:I

    if-lt v5, v6, :cond_4b

    .line 2225
    .end local v36    # "npi":Landroid/content/pm/PackageParser$NewPermissionInfo;
    :cond_48
    if-eqz v26, :cond_49

    .line 2226
    const-string/jumbo v5, "PackageParser"

    invoke-virtual/range {v26 .. v26}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2229
    :cond_49
    sget-object v5, Landroid/content/pm/PackageParser;->SPLIT_PERMISSIONS:[Landroid/content/pm/PackageParser$SplitPermissionInfo;

    array-length v12, v5

    .line 2230
    .local v12, "NS":I
    const/16 v31, 0x0

    .local v31, "is":I
    :goto_d
    move/from16 v0, v31

    if-ge v0, v12, :cond_4f

    .line 2232
    sget-object v5, Landroid/content/pm/PackageParser;->SPLIT_PERMISSIONS:[Landroid/content/pm/PackageParser$SplitPermissionInfo;

    .line 2231
    aget-object v42, v5, v31

    .line 2233
    .local v42, "spi":Landroid/content/pm/PackageParser$SplitPermissionInfo;
    move-object/from16 v0, p1

    iget-object v5, v0, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v5, v5, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    move-object/from16 v0, v42

    iget v6, v0, Landroid/content/pm/PackageParser$SplitPermissionInfo;->targetSdk:I

    if-ge v5, v6, :cond_4e

    .line 2234
    move-object/from16 v0, p1

    iget-object v5, v0, Landroid/content/pm/PackageParser$Package;->requestedPermissions:Ljava/util/ArrayList;

    move-object/from16 v0, v42

    iget-object v6, v0, Landroid/content/pm/PackageParser$SplitPermissionInfo;->rootPerm:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4e

    .line 2237
    const/16 v27, 0x0

    .local v27, "in":I
    :goto_e
    move-object/from16 v0, v42

    iget-object v5, v0, Landroid/content/pm/PackageParser$SplitPermissionInfo;->newPerms:[Ljava/lang/String;

    array-length v5, v5

    move/from16 v0, v27

    if-ge v0, v5, :cond_4e

    .line 2238
    move-object/from16 v0, v42

    iget-object v5, v0, Landroid/content/pm/PackageParser$SplitPermissionInfo;->newPerms:[Ljava/lang/String;

    aget-object v39, v5, v27

    .line 2239
    .local v39, "perm":Ljava/lang/String;
    move-object/from16 v0, p1

    iget-object v5, v0, Landroid/content/pm/PackageParser$Package;->requestedPermissions:Ljava/util/ArrayList;

    move-object/from16 v0, v39

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_4a

    .line 2240
    move-object/from16 v0, p1

    iget-object v5, v0, Landroid/content/pm/PackageParser$Package;->requestedPermissions:Ljava/util/ArrayList;

    move-object/from16 v0, v39

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2237
    :cond_4a
    add-int/lit8 v27, v27, 0x1

    goto :goto_e

    .line 2213
    .end local v12    # "NS":I
    .end local v27    # "in":I
    .end local v31    # "is":I
    .end local v39    # "perm":Ljava/lang/String;
    .end local v42    # "spi":Landroid/content/pm/PackageParser$SplitPermissionInfo;
    .restart local v36    # "npi":Landroid/content/pm/PackageParser$NewPermissionInfo;
    :cond_4b
    move-object/from16 v0, p1

    iget-object v5, v0, Landroid/content/pm/PackageParser$Package;->requestedPermissions:Ljava/util/ArrayList;

    move-object/from16 v0, v36

    iget-object v6, v0, Landroid/content/pm/PackageParser$NewPermissionInfo;->name:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_4c

    .line 2214
    if-nez v26, :cond_4d

    .line 2215
    new-instance v26, Ljava/lang/StringBuilder;

    const/16 v5, 0x80

    move-object/from16 v0, v26

    invoke-direct {v0, v5}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 2216
    .local v26, "implicitPerms":Ljava/lang/StringBuilder;
    move-object/from16 v0, p1

    iget-object v5, v0, Landroid/content/pm/PackageParser$Package;->packageName:Ljava/lang/String;

    move-object/from16 v0, v26

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2217
    const-string/jumbo v5, ": compat added "

    move-object/from16 v0, v26

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2221
    .end local v26    # "implicitPerms":Ljava/lang/StringBuilder;
    :goto_f
    move-object/from16 v0, v36

    iget-object v5, v0, Landroid/content/pm/PackageParser$NewPermissionInfo;->name:Ljava/lang/String;

    move-object/from16 v0, v26

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2222
    move-object/from16 v0, p1

    iget-object v5, v0, Landroid/content/pm/PackageParser$Package;->requestedPermissions:Ljava/util/ArrayList;

    move-object/from16 v0, v36

    iget-object v6, v0, Landroid/content/pm/PackageParser$NewPermissionInfo;->name:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2207
    :cond_4c
    add-int/lit8 v30, v30, 0x1

    goto/16 :goto_c

    .line 2219
    :cond_4d
    const/16 v5, 0x20

    move-object/from16 v0, v26

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_f

    .line 2230
    .end local v36    # "npi":Landroid/content/pm/PackageParser$NewPermissionInfo;
    .restart local v12    # "NS":I
    .restart local v31    # "is":I
    .restart local v42    # "spi":Landroid/content/pm/PackageParser$SplitPermissionInfo;
    :cond_4e
    add-int/lit8 v31, v31, 0x1

    goto/16 :goto_d

    .line 2245
    .end local v42    # "spi":Landroid/content/pm/PackageParser$SplitPermissionInfo;
    :cond_4f
    if-ltz v46, :cond_50

    if-lez v46, :cond_51

    .line 2246
    move-object/from16 v0, p1

    iget-object v5, v0, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v5, v5, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    .line 2247
    const/4 v6, 0x4

    .line 2246
    if-lt v5, v6, :cond_51

    .line 2248
    :cond_50
    move-object/from16 v0, p1

    iget-object v5, v0, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v6, v5, Landroid/content/pm/ApplicationInfo;->flags:I

    or-int/lit16 v6, v6, 0x200

    iput v6, v5, Landroid/content/pm/ApplicationInfo;->flags:I

    .line 2250
    :cond_51
    if-eqz v45, :cond_52

    .line 2251
    move-object/from16 v0, p1

    iget-object v5, v0, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v6, v5, Landroid/content/pm/ApplicationInfo;->flags:I

    or-int/lit16 v6, v6, 0x400

    iput v6, v5, Landroid/content/pm/ApplicationInfo;->flags:I

    .line 2253
    :cond_52
    if-ltz v44, :cond_53

    if-lez v44, :cond_54

    .line 2254
    move-object/from16 v0, p1

    iget-object v5, v0, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v5, v5, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    .line 2255
    const/4 v6, 0x4

    .line 2254
    if-lt v5, v6, :cond_54

    .line 2256
    :cond_53
    move-object/from16 v0, p1

    iget-object v5, v0, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v6, v5, Landroid/content/pm/ApplicationInfo;->flags:I

    or-int/lit16 v6, v6, 0x800

    iput v6, v5, Landroid/content/pm/ApplicationInfo;->flags:I

    .line 2258
    :cond_54
    if-ltz v47, :cond_55

    if-lez v47, :cond_56

    .line 2259
    move-object/from16 v0, p1

    iget-object v5, v0, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v5, v5, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    .line 2260
    const/16 v6, 0x9

    .line 2259
    if-lt v5, v6, :cond_56

    .line 2261
    :cond_55
    move-object/from16 v0, p1

    iget-object v5, v0, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v6, v5, Landroid/content/pm/ApplicationInfo;->flags:I

    const/high16 v7, 0x80000

    or-int/2addr v6, v7

    iput v6, v5, Landroid/content/pm/ApplicationInfo;->flags:I

    .line 2263
    :cond_56
    if-ltz v40, :cond_57

    if-lez v40, :cond_58

    .line 2264
    move-object/from16 v0, p1

    iget-object v5, v0, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v5, v5, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    .line 2265
    const/4 v6, 0x4

    .line 2264
    if-lt v5, v6, :cond_58

    .line 2266
    :cond_57
    move-object/from16 v0, p1

    iget-object v5, v0, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v6, v5, Landroid/content/pm/ApplicationInfo;->flags:I

    or-int/lit16 v6, v6, 0x1000

    iput v6, v5, Landroid/content/pm/ApplicationInfo;->flags:I

    .line 2268
    :cond_58
    if-ltz v14, :cond_59

    if-lez v14, :cond_5a

    .line 2269
    move-object/from16 v0, p1

    iget-object v5, v0, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v5, v5, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    .line 2270
    const/4 v6, 0x4

    .line 2269
    if-lt v5, v6, :cond_5a

    .line 2271
    :cond_59
    move-object/from16 v0, p1

    iget-object v5, v0, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v6, v5, Landroid/content/pm/ApplicationInfo;->flags:I

    or-int/lit16 v6, v6, 0x2000

    iput v6, v5, Landroid/content/pm/ApplicationInfo;->flags:I

    .line 2274
    :cond_5a

    invoke-static/range {p1 .. p1}, Landroid/content/pm/FlymePackageParserInjector;->addFlymeRequestedPermissions(Landroid/content/pm/PackageParser$Package;)V

    return-object p1
.end method

.method private parseBaseApplication(Landroid/content/pm/PackageParser$Package;Landroid/content/res/Resources;Landroid/content/res/XmlResourceParser;I[Ljava/lang/String;)Z
    .locals 36
    .param p1, "owner"    # Landroid/content/pm/PackageParser$Package;
    .param p2, "res"    # Landroid/content/res/Resources;
    .param p3, "parser"    # Landroid/content/res/XmlResourceParser;
    .param p4, "flags"    # I
    .param p5, "outError"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 2800
    move-object/from16 v0, p1

    iget-object v5, v0, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    .line 2801
    .local v5, "ai":Landroid/content/pm/ApplicationInfo;
    move-object/from16 v0, p1

    iget-object v4, v0, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v0, v4, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    move-object/from16 v27, v0

    .line 2804
    .local v27, "pkgName":Ljava/lang/String;
    sget-object v4, Lcom/android/internal/R$styleable;->AndroidManifestApplication:[I

    .line 2803
    move-object/from16 v0, p2

    move-object/from16 v1, p3

    invoke-virtual {v0, v1, v4}, Landroid/content/res/Resources;->obtainAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v8

    .line 2807
    .local v8, "sa":Landroid/content/res/TypedArray;
    const-string/jumbo v7, "<application>"

    const/4 v9, 0x0

    .line 2808
    const/4 v10, 0x3

    .line 2809
    const/4 v11, 0x1

    .line 2810
    const/4 v12, 0x2

    .line 2811
    const/16 v13, 0x2a

    .line 2812
    const/16 v14, 0x16

    .line 2813
    const/16 v15, 0x1e

    move-object/from16 v4, p1

    move-object/from16 v6, p5

    .line 2806
    invoke-static/range {v4 .. v15}, Landroid/content/pm/PackageParser;->parsePackageItemInfo(Landroid/content/pm/PackageParser$Package;Landroid/content/pm/PackageItemInfo;[Ljava/lang/String;Ljava/lang/String;Landroid/content/res/TypedArray;ZIIIIII)Z

    move-result v4

    if-nez v4, :cond_0

    .line 2814
    invoke-virtual {v8}, Landroid/content/res/TypedArray;->recycle()V

    .line 2815
    const/16 v4, -0x6c

    move-object/from16 v0, p0

    iput v4, v0, Landroid/content/pm/PackageParser;->mParseError:I

    .line 2816
    const/4 v4, 0x0

    return v4

    .line 2819
    :cond_0
    iget-object v4, v5, Landroid/content/pm/ApplicationInfo;->name:Ljava/lang/String;

    if-eqz v4, :cond_1

    .line 2820
    iget-object v4, v5, Landroid/content/pm/ApplicationInfo;->name:Ljava/lang/String;

    iput-object v4, v5, Landroid/content/pm/ApplicationInfo;->className:Ljava/lang/String;

    .line 2824
    :cond_1
    const/4 v4, 0x4

    .line 2825
    const/16 v6, 0x400

    .line 2823
    invoke-virtual {v8, v4, v6}, Landroid/content/res/TypedArray;->getNonConfigurationString(II)Ljava/lang/String;

    move-result-object v25

    .line 2826
    .local v25, "manageSpaceActivity":Ljava/lang/String;
    if-eqz v25, :cond_2

    .line 2827
    move-object/from16 v0, v27

    move-object/from16 v1, v25

    move-object/from16 v2, p5

    invoke-static {v0, v1, v2}, Landroid/content/pm/PackageParser;->buildClassName(Ljava/lang/String;Ljava/lang/CharSequence;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v5, Landroid/content/pm/ApplicationInfo;->manageSpaceActivityName:Ljava/lang/String;

    .line 2832
    :cond_2
    const/16 v4, 0x11

    const/4 v6, 0x1

    .line 2831
    invoke-virtual {v8, v4, v6}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v21

    .line 2833
    .local v21, "allowBackup":Z
    if-eqz v21, :cond_7

    .line 2834
    iget v4, v5, Landroid/content/pm/ApplicationInfo;->flags:I

    const v6, 0x8000

    or-int/2addr v4, v6

    iput v4, v5, Landroid/content/pm/ApplicationInfo;->flags:I

    .line 2840
    const/16 v4, 0x10

    .line 2841
    const/16 v6, 0x400

    .line 2839
    invoke-virtual {v8, v4, v6}, Landroid/content/res/TypedArray;->getNonConfigurationString(II)Ljava/lang/String;

    move-result-object v22

    .line 2842
    .local v22, "backupAgent":Ljava/lang/String;
    if-eqz v22, :cond_6

    .line 2843
    move-object/from16 v0, v27

    move-object/from16 v1, v22

    move-object/from16 v2, p5

    invoke-static {v0, v1, v2}, Landroid/content/pm/PackageParser;->buildClassName(Ljava/lang/String;Ljava/lang/CharSequence;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v5, Landroid/content/pm/ApplicationInfo;->backupAgentName:Ljava/lang/String;

    .line 2850
    const/16 v4, 0x12

    .line 2851
    const/4 v6, 0x1

    .line 2849
    invoke-virtual {v8, v4, v6}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 2852
    iget v4, v5, Landroid/content/pm/ApplicationInfo;->flags:I

    const/high16 v6, 0x10000

    or-int/2addr v4, v6

    iput v4, v5, Landroid/content/pm/ApplicationInfo;->flags:I

    .line 2855
    :cond_3
    const/16 v4, 0x15

    .line 2856
    const/4 v6, 0x0

    .line 2854
    invoke-virtual {v8, v4, v6}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 2857
    iget v4, v5, Landroid/content/pm/ApplicationInfo;->flags:I

    const/high16 v6, 0x20000

    or-int/2addr v4, v6

    iput v4, v5, Landroid/content/pm/ApplicationInfo;->flags:I

    .line 2860
    :cond_4
    const/16 v4, 0x20

    .line 2861
    const/4 v6, 0x0

    .line 2859
    invoke-virtual {v8, v4, v6}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 2862
    iget v4, v5, Landroid/content/pm/ApplicationInfo;->flags:I

    const/high16 v6, 0x4000000

    or-int/2addr v4, v6

    iput v4, v5, Landroid/content/pm/ApplicationInfo;->flags:I

    .line 2865
    :cond_5
    const/16 v4, 0x28

    .line 2866
    const/4 v6, 0x0

    .line 2864
    invoke-virtual {v8, v4, v6}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v4

    if-eqz v4, :cond_6

    .line 2867
    iget v4, v5, Landroid/content/pm/ApplicationInfo;->privateFlags:I

    or-int/lit16 v4, v4, 0x1000

    iput v4, v5, Landroid/content/pm/ApplicationInfo;->privateFlags:I

    .line 2872
    :cond_6
    const/16 v4, 0x23

    .line 2871
    invoke-virtual {v8, v4}, Landroid/content/res/TypedArray;->peekValue(I)Landroid/util/TypedValue;

    move-result-object v35

    .line 2873
    .local v35, "v":Landroid/util/TypedValue;
    if-eqz v35, :cond_7

    move-object/from16 v0, v35

    iget v4, v0, Landroid/util/TypedValue;->resourceId:I

    iput v4, v5, Landroid/content/pm/ApplicationInfo;->fullBackupContent:I

    if-nez v4, :cond_7

    .line 2879
    move-object/from16 v0, v35

    iget v4, v0, Landroid/util/TypedValue;->data:I

    if-nez v4, :cond_1c

    const/4 v4, -0x1

    :goto_0
    iput v4, v5, Landroid/content/pm/ApplicationInfo;->fullBackupContent:I

    .line 2887
    .end local v22    # "backupAgent":Ljava/lang/String;
    .end local v35    # "v":Landroid/util/TypedValue;
    :cond_7
    const/4 v4, 0x0

    const/4 v6, 0x0

    .line 2886
    invoke-virtual {v8, v4, v6}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v4

    iput v4, v5, Landroid/content/pm/ApplicationInfo;->theme:I

    .line 2889
    const/16 v4, 0xd

    const/4 v6, 0x0

    .line 2888
    invoke-virtual {v8, v4, v6}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v4

    iput v4, v5, Landroid/content/pm/ApplicationInfo;->descriptionRes:I

    .line 2891
    and-int/lit8 v4, p4, 0x1

    if-eqz v4, :cond_8

    .line 2893
    const/16 v4, 0x8

    .line 2894
    const/4 v6, 0x0

    .line 2892
    invoke-virtual {v8, v4, v6}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v4

    if-eqz v4, :cond_8

    .line 2895
    iget v4, v5, Landroid/content/pm/ApplicationInfo;->flags:I

    or-int/lit8 v4, v4, 0x8

    iput v4, v5, Landroid/content/pm/ApplicationInfo;->flags:I

    .line 2900
    :cond_8
    const/16 v4, 0x1b

    .line 2901
    const/4 v6, 0x0

    .line 2899
    invoke-virtual {v8, v4, v6}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v4

    if-eqz v4, :cond_9

    .line 2902
    const/4 v4, 0x1

    move-object/from16 v0, p1

    iput-boolean v4, v0, Landroid/content/pm/PackageParser$Package;->mRequiredForAllUsers:Z

    .line 2905
    :cond_9
    const/16 v4, 0x1c

    invoke-virtual {v8, v4}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v30

    .line 2907
    .local v30, "restrictedAccountType":Ljava/lang/String;
    if-eqz v30, :cond_a

    invoke-virtual/range {v30 .. v30}, Ljava/lang/String;->length()I

    move-result v4

    if-lez v4, :cond_a

    .line 2908
    move-object/from16 v0, v30

    move-object/from16 v1, p1

    iput-object v0, v1, Landroid/content/pm/PackageParser$Package;->mRestrictedAccountType:Ljava/lang/String;

    .line 2911
    :cond_a
    const/16 v4, 0x1d

    invoke-virtual {v8, v4}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v29

    .line 2913
    .local v29, "requiredAccountType":Ljava/lang/String;
    if-eqz v29, :cond_b

    invoke-virtual/range {v29 .. v29}, Ljava/lang/String;->length()I

    move-result v4

    if-lez v4, :cond_b

    .line 2914
    move-object/from16 v0, v29

    move-object/from16 v1, p1

    iput-object v0, v1, Landroid/content/pm/PackageParser$Package;->mRequiredAccountType:Ljava/lang/String;

    .line 2918
    :cond_b
    const/16 v4, 0xa

    .line 2919
    const/4 v6, 0x0

    .line 2917
    invoke-virtual {v8, v4, v6}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v4

    if-eqz v4, :cond_c

    .line 2920
    iget v4, v5, Landroid/content/pm/ApplicationInfo;->flags:I

    or-int/lit8 v4, v4, 0x2

    iput v4, v5, Landroid/content/pm/ApplicationInfo;->flags:I

    .line 2924
    :cond_c
    const/16 v4, 0x14

    .line 2925
    const/4 v6, 0x0

    .line 2923
    invoke-virtual {v8, v4, v6}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v4

    if-eqz v4, :cond_d

    .line 2926
    iget v4, v5, Landroid/content/pm/ApplicationInfo;->flags:I

    or-int/lit16 v4, v4, 0x4000

    iput v4, v5, Landroid/content/pm/ApplicationInfo;->flags:I

    .line 2931
    :cond_d
    move-object/from16 v0, p1

    iget-object v4, v0, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v4, v4, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    const/16 v6, 0xe

    if-lt v4, v6, :cond_1d

    const/4 v4, 0x1

    .line 2930
    :goto_1
    const/16 v6, 0x17

    .line 2929
    invoke-virtual {v8, v6, v4}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v4

    move-object/from16 v0, p1

    iput-boolean v4, v0, Landroid/content/pm/PackageParser$Package;->baseHardwareAccelerated:Z

    .line 2932
    move-object/from16 v0, p1

    iget-boolean v4, v0, Landroid/content/pm/PackageParser$Package;->baseHardwareAccelerated:Z

    if-eqz v4, :cond_e

    .line 2933
    iget v4, v5, Landroid/content/pm/ApplicationInfo;->flags:I

    const/high16 v6, 0x20000000

    or-int/2addr v4, v6

    iput v4, v5, Landroid/content/pm/ApplicationInfo;->flags:I

    .line 2937
    :cond_e
    const/4 v4, 0x7

    .line 2938
    const/4 v6, 0x1

    .line 2936
    invoke-virtual {v8, v4, v6}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v4

    if-eqz v4, :cond_f

    .line 2939
    iget v4, v5, Landroid/content/pm/ApplicationInfo;->flags:I

    or-int/lit8 v4, v4, 0x4

    iput v4, v5, Landroid/content/pm/ApplicationInfo;->flags:I

    .line 2943
    :cond_f
    const/16 v4, 0xe

    .line 2944
    const/4 v6, 0x0

    .line 2942
    invoke-virtual {v8, v4, v6}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v4

    if-eqz v4, :cond_10

    .line 2945
    iget v4, v5, Landroid/content/pm/ApplicationInfo;->flags:I

    or-int/lit8 v4, v4, 0x20

    iput v4, v5, Landroid/content/pm/ApplicationInfo;->flags:I

    .line 2949
    :cond_10
    const/4 v4, 0x5

    .line 2950
    const/4 v6, 0x1

    .line 2948
    invoke-virtual {v8, v4, v6}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v4

    if-eqz v4, :cond_11

    .line 2951
    iget v4, v5, Landroid/content/pm/ApplicationInfo;->flags:I

    or-int/lit8 v4, v4, 0x40

    iput v4, v5, Landroid/content/pm/ApplicationInfo;->flags:I

    .line 2955
    :cond_11
    move-object/from16 v0, p1

    iget-object v4, v0, Landroid/content/pm/PackageParser$Package;->parentPackage:Landroid/content/pm/PackageParser$Package;

    if-nez v4, :cond_12

    .line 2957
    const/16 v4, 0xf

    .line 2958
    const/4 v6, 0x0

    .line 2956
    invoke-virtual {v8, v4, v6}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v4

    if-eqz v4, :cond_12

    .line 2959
    iget v4, v5, Landroid/content/pm/ApplicationInfo;->flags:I

    or-int/lit16 v4, v4, 0x100

    iput v4, v5, Landroid/content/pm/ApplicationInfo;->flags:I

    .line 2964
    :cond_12
    const/16 v4, 0x18

    .line 2965
    const/4 v6, 0x0

    .line 2963
    invoke-virtual {v8, v4, v6}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v4

    if-eqz v4, :cond_13

    .line 2966
    iget v4, v5, Landroid/content/pm/ApplicationInfo;->flags:I

    const/high16 v6, 0x100000

    or-int/2addr v4, v6

    iput v4, v5, Landroid/content/pm/ApplicationInfo;->flags:I

    .line 2970
    :cond_13
    const/16 v4, 0x24

    .line 2971
    const/4 v6, 0x1

    .line 2969
    invoke-virtual {v8, v4, v6}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v4

    if-eqz v4, :cond_14

    .line 2972
    iget v4, v5, Landroid/content/pm/ApplicationInfo;->flags:I

    const/high16 v6, 0x8000000

    or-int/2addr v4, v6

    iput v4, v5, Landroid/content/pm/ApplicationInfo;->flags:I

    .line 2976
    :cond_14
    const/16 v4, 0x1a

    .line 2977
    const/4 v6, 0x0

    .line 2975
    invoke-virtual {v8, v4, v6}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v4

    if-eqz v4, :cond_15

    .line 2978
    iget v4, v5, Landroid/content/pm/ApplicationInfo;->flags:I

    const/high16 v6, 0x400000

    or-int/2addr v4, v6

    iput v4, v5, Landroid/content/pm/ApplicationInfo;->flags:I

    .line 2982
    :cond_15
    const/16 v4, 0x21

    .line 2983
    const/4 v6, 0x0

    .line 2981
    invoke-virtual {v8, v4, v6}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v4

    if-eqz v4, :cond_16

    .line 2984
    iget v4, v5, Landroid/content/pm/ApplicationInfo;->flags:I

    const/high16 v6, -0x80000000

    or-int/2addr v4, v6

    iput v4, v5, Landroid/content/pm/ApplicationInfo;->flags:I

    .line 2988
    :cond_16
    const/16 v4, 0x22

    .line 2989
    const/4 v6, 0x1

    .line 2987
    invoke-virtual {v8, v4, v6}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v4

    if-eqz v4, :cond_17

    .line 2990
    iget v4, v5, Landroid/content/pm/ApplicationInfo;->flags:I

    const/high16 v6, 0x10000000

    or-int/2addr v4, v6

    iput v4, v5, Landroid/content/pm/ApplicationInfo;->flags:I

    .line 2994
    :cond_17
    const/16 v4, 0x26

    .line 2995
    const/4 v6, 0x0

    .line 2993
    invoke-virtual {v8, v4, v6}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v4

    if-eqz v4, :cond_18

    .line 2996
    iget v4, v5, Landroid/content/pm/ApplicationInfo;->privateFlags:I

    or-int/lit8 v4, v4, 0x20

    iput v4, v5, Landroid/content/pm/ApplicationInfo;->privateFlags:I

    .line 2999
    :cond_18
    const/16 v4, 0x27

    .line 3000
    const/4 v6, 0x0

    .line 2998
    invoke-virtual {v8, v4, v6}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v4

    if-eqz v4, :cond_19

    .line 3001
    iget v4, v5, Landroid/content/pm/ApplicationInfo;->privateFlags:I

    or-int/lit8 v4, v4, 0x40

    iput v4, v5, Landroid/content/pm/ApplicationInfo;->privateFlags:I

    .line 3005
    :cond_19
    move-object/from16 v0, p1

    iget-object v4, v0, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v4, v4, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    const/16 v6, 0x18

    if-lt v4, v6, :cond_1e

    const/4 v4, 0x1

    .line 3004
    :goto_2
    const/16 v6, 0x25

    invoke-virtual {v8, v6, v4}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v4

    if-eqz v4, :cond_1a

    .line 3006
    iget v4, v5, Landroid/content/pm/ApplicationInfo;->privateFlags:I

    or-int/lit16 v4, v4, 0x800

    iput v4, v5, Landroid/content/pm/ApplicationInfo;->privateFlags:I

    .line 3010
    :cond_1a
    const/16 v4, 0x29

    .line 3011
    const/4 v6, 0x0

    .line 3009
    invoke-virtual {v8, v4, v6}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v4

    iput v4, v5, Landroid/content/pm/ApplicationInfo;->networkSecurityConfigRes:I

    .line 3015
    const/4 v4, 0x6

    const/4 v6, 0x0

    .line 3014
    invoke-virtual {v8, v4, v6}, Landroid/content/res/TypedArray;->getNonConfigurationString(II)Ljava/lang/String;

    move-result-object v32

    .line 3016
    .local v32, "str":Ljava/lang/String;
    if-eqz v32, :cond_1f

    invoke-virtual/range {v32 .. v32}, Ljava/lang/String;->length()I

    move-result v4

    if-lez v4, :cond_1f

    invoke-virtual/range {v32 .. v32}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v4

    :goto_3
    iput-object v4, v5, Landroid/content/pm/ApplicationInfo;->permission:Ljava/lang/String;

    .line 3018
    move-object/from16 v0, p1

    iget-object v4, v0, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v4, v4, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    const/16 v6, 0x8

    if-lt v4, v6, :cond_20

    .line 3020
    const/16 v4, 0xc

    .line 3021
    const/16 v6, 0x400

    .line 3019
    invoke-virtual {v8, v4, v6}, Landroid/content/res/TypedArray;->getNonConfigurationString(II)Ljava/lang/String;

    move-result-object v32

    .line 3029
    :goto_4
    iget-object v4, v5, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    iget-object v6, v5, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    move-object/from16 v0, v32

    move-object/from16 v1, p5

    invoke-static {v4, v6, v0, v1}, Landroid/content/pm/PackageParser;->buildTaskAffinityName(Ljava/lang/String;Ljava/lang/String;Ljava/lang/CharSequence;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v5, Landroid/content/pm/ApplicationInfo;->taskAffinity:Ljava/lang/String;

    .line 3032
    const/4 v4, 0x0

    aget-object v4, p5, v4

    if-nez v4, :cond_1b

    .line 3034
    move-object/from16 v0, p1

    iget-object v4, v0, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v4, v4, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    const/16 v6, 0x8

    if-lt v4, v6, :cond_21

    .line 3036
    const/16 v4, 0xb

    .line 3037
    const/16 v6, 0x400

    .line 3035
    invoke-virtual {v8, v4, v6}, Landroid/content/res/TypedArray;->getNonConfigurationString(II)Ljava/lang/String;

    move-result-object v11

    .line 3045
    .local v11, "pname":Ljava/lang/CharSequence;
    :goto_5
    iget-object v9, v5, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    .line 3046
    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/content/pm/PackageParser;->mSeparateProcesses:[Ljava/lang/String;

    .line 3045
    const/4 v10, 0x0

    move/from16 v12, p4

    move-object/from16 v14, p5

    invoke-static/range {v9 .. v14}, Landroid/content/pm/PackageParser;->buildProcessName(Ljava/lang/String;Ljava/lang/String;Ljava/lang/CharSequence;I[Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v5, Landroid/content/pm/ApplicationInfo;->processName:Ljava/lang/String;

    .line 3049
    const/16 v4, 0x9

    const/4 v6, 0x1

    .line 3048
    invoke-virtual {v8, v4, v6}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v4

    iput-boolean v4, v5, Landroid/content/pm/ApplicationInfo;->enabled:Z

    .line 3052
    const/16 v4, 0x1f

    const/4 v6, 0x0

    .line 3051
    invoke-virtual {v8, v4, v6}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v4

    if-eqz v4, :cond_1b

    .line 3053
    iget v4, v5, Landroid/content/pm/ApplicationInfo;->flags:I

    const/high16 v6, 0x2000000

    or-int/2addr v4, v6

    iput v4, v5, Landroid/content/pm/ApplicationInfo;->flags:I

    .line 3072
    .end local v11    # "pname":Ljava/lang/CharSequence;
    :cond_1b
    const/16 v4, 0x19

    const/4 v6, 0x0

    .line 3071
    invoke-virtual {v8, v4, v6}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v4

    iput v4, v5, Landroid/content/pm/ApplicationInfo;->uiOptions:I

    .line 3074
    invoke-virtual {v8}, Landroid/content/res/TypedArray;->recycle()V

    .line 3076
    const/4 v4, 0x0

    aget-object v4, p5, v4

    if-eqz v4, :cond_22

    .line 3077
    const/16 v4, -0x6c

    move-object/from16 v0, p0

    iput v4, v0, Landroid/content/pm/PackageParser;->mParseError:I

    .line 3078
    const/4 v4, 0x0

    return v4

    .line 2879
    .end local v29    # "requiredAccountType":Ljava/lang/String;
    .end local v30    # "restrictedAccountType":Ljava/lang/String;
    .end local v32    # "str":Ljava/lang/String;
    .restart local v22    # "backupAgent":Ljava/lang/String;
    .restart local v35    # "v":Landroid/util/TypedValue;
    :cond_1c
    const/4 v4, 0x0

    goto/16 :goto_0

    .line 2931
    .end local v22    # "backupAgent":Ljava/lang/String;
    .end local v35    # "v":Landroid/util/TypedValue;
    .restart local v29    # "requiredAccountType":Ljava/lang/String;
    .restart local v30    # "restrictedAccountType":Ljava/lang/String;
    :cond_1d
    const/4 v4, 0x0

    goto/16 :goto_1

    .line 3005
    :cond_1e
    const/4 v4, 0x0

    goto/16 :goto_2

    .line 3016
    .restart local v32    # "str":Ljava/lang/String;
    :cond_1f
    const/4 v4, 0x0

    goto/16 :goto_3

    .line 3027
    :cond_20
    const/16 v4, 0xc

    .line 3026
    invoke-virtual {v8, v4}, Landroid/content/res/TypedArray;->getNonResourceString(I)Ljava/lang/String;

    move-result-object v32

    goto :goto_4

    .line 3043
    :cond_21
    const/16 v4, 0xb

    .line 3042
    invoke-virtual {v8, v4}, Landroid/content/res/TypedArray;->getNonResourceString(I)Ljava/lang/String;

    move-result-object v11

    .restart local v11    # "pname":Ljava/lang/CharSequence;
    goto :goto_5

    .line 3081
    .end local v11    # "pname":Ljava/lang/CharSequence;
    :cond_22
    invoke-interface/range {p3 .. p3}, Landroid/content/res/XmlResourceParser;->getDepth()I

    move-result v23

    .line 3083
    .local v23, "innerDepth":I
    :cond_23
    :goto_6
    invoke-interface/range {p3 .. p3}, Landroid/content/res/XmlResourceParser;->next()I

    move-result v34

    .local v34, "type":I
    const/4 v4, 0x1

    move/from16 v0, v34

    if-eq v0, v4, :cond_36

    .line 3084
    const/4 v4, 0x3

    move/from16 v0, v34

    if-ne v0, v4, :cond_24

    invoke-interface/range {p3 .. p3}, Landroid/content/res/XmlResourceParser;->getDepth()I

    move-result v4

    move/from16 v0, v23

    if-le v4, v0, :cond_36

    .line 3085
    :cond_24
    const/4 v4, 0x3

    move/from16 v0, v34

    if-eq v0, v4, :cond_23

    const/4 v4, 0x4

    move/from16 v0, v34

    if-eq v0, v4, :cond_23

    .line 3089
    invoke-interface/range {p3 .. p3}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    move-result-object v33

    .line 3090
    .local v33, "tagName":Ljava/lang/String;
    const-string/jumbo v4, "activity"

    move-object/from16 v0, v33

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_26

    .line 3092
    move-object/from16 v0, p1

    iget-boolean v0, v0, Landroid/content/pm/PackageParser$Package;->baseHardwareAccelerated:Z

    move/from16 v19, v0

    .line 3091
    const/16 v18, 0x0

    move-object/from16 v12, p0

    move-object/from16 v13, p1

    move-object/from16 v14, p2

    move-object/from16 v15, p3

    move/from16 v16, p4

    move-object/from16 v17, p5

    invoke-direct/range {v12 .. v19}, Landroid/content/pm/PackageParser;->parseActivity(Landroid/content/pm/PackageParser$Package;Landroid/content/res/Resources;Landroid/content/res/XmlResourceParser;I[Ljava/lang/String;ZZ)Landroid/content/pm/PackageParser$Activity;

    move-result-object v20

    .line 3093
    .local v20, "a":Landroid/content/pm/PackageParser$Activity;
    if-nez v20, :cond_25

    .line 3094
    const/16 v4, -0x6c

    move-object/from16 v0, p0

    iput v4, v0, Landroid/content/pm/PackageParser;->mParseError:I

    .line 3095
    const/4 v4, 0x0

    return v4

    .line 3098
    :cond_25
    move-object/from16 v0, p1

    iget-object v4, v0, Landroid/content/pm/PackageParser$Package;->activities:Ljava/util/ArrayList;

    move-object/from16 v0, v20

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_6

    .line 3100
    .end local v20    # "a":Landroid/content/pm/PackageParser$Activity;
    :cond_26
    const-string/jumbo v4, "receiver"

    move-object/from16 v0, v33

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_28

    .line 3101
    const/16 v18, 0x1

    const/16 v19, 0x0

    move-object/from16 v12, p0

    move-object/from16 v13, p1

    move-object/from16 v14, p2

    move-object/from16 v15, p3

    move/from16 v16, p4

    move-object/from16 v17, p5

    invoke-direct/range {v12 .. v19}, Landroid/content/pm/PackageParser;->parseActivity(Landroid/content/pm/PackageParser$Package;Landroid/content/res/Resources;Landroid/content/res/XmlResourceParser;I[Ljava/lang/String;ZZ)Landroid/content/pm/PackageParser$Activity;

    move-result-object v20

    .line 3102
    .restart local v20    # "a":Landroid/content/pm/PackageParser$Activity;
    if-nez v20, :cond_27

    .line 3103
    const/16 v4, -0x6c

    move-object/from16 v0, p0

    iput v4, v0, Landroid/content/pm/PackageParser;->mParseError:I

    .line 3104
    const/4 v4, 0x0

    return v4

    .line 3107
    :cond_27
    move-object/from16 v0, p1

    iget-object v4, v0, Landroid/content/pm/PackageParser$Package;->receivers:Ljava/util/ArrayList;

    move-object/from16 v0, v20

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_6

    .line 3109
    .end local v20    # "a":Landroid/content/pm/PackageParser$Activity;
    :cond_28
    const-string/jumbo v4, "service"

    move-object/from16 v0, v33

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2a

    .line 3110
    invoke-direct/range {p0 .. p5}, Landroid/content/pm/PackageParser;->parseService(Landroid/content/pm/PackageParser$Package;Landroid/content/res/Resources;Landroid/content/res/XmlResourceParser;I[Ljava/lang/String;)Landroid/content/pm/PackageParser$Service;

    move-result-object v31

    .line 3111
    .local v31, "s":Landroid/content/pm/PackageParser$Service;
    if-nez v31, :cond_29

    .line 3112
    const/16 v4, -0x6c

    move-object/from16 v0, p0

    iput v4, v0, Landroid/content/pm/PackageParser;->mParseError:I

    .line 3113
    const/4 v4, 0x0

    return v4

    .line 3116
    :cond_29
    move-object/from16 v0, p1

    iget-object v4, v0, Landroid/content/pm/PackageParser$Package;->services:Ljava/util/ArrayList;

    move-object/from16 v0, v31

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_6

    .line 3118
    .end local v31    # "s":Landroid/content/pm/PackageParser$Service;
    :cond_2a
    const-string/jumbo v4, "provider"

    move-object/from16 v0, v33

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2c

    .line 3119
    invoke-direct/range {p0 .. p5}, Landroid/content/pm/PackageParser;->parseProvider(Landroid/content/pm/PackageParser$Package;Landroid/content/res/Resources;Landroid/content/res/XmlResourceParser;I[Ljava/lang/String;)Landroid/content/pm/PackageParser$Provider;

    move-result-object v26

    .line 3120
    .local v26, "p":Landroid/content/pm/PackageParser$Provider;
    if-nez v26, :cond_2b

    .line 3121
    const/16 v4, -0x6c

    move-object/from16 v0, p0

    iput v4, v0, Landroid/content/pm/PackageParser;->mParseError:I

    .line 3122
    const/4 v4, 0x0

    return v4

    .line 3125
    :cond_2b
    move-object/from16 v0, p1

    iget-object v4, v0, Landroid/content/pm/PackageParser$Package;->providers:Ljava/util/ArrayList;

    move-object/from16 v0, v26

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_6

    .line 3127
    .end local v26    # "p":Landroid/content/pm/PackageParser$Provider;
    :cond_2c
    const-string/jumbo v4, "activity-alias"

    move-object/from16 v0, v33

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2e

    .line 3128
    invoke-direct/range {p0 .. p5}, Landroid/content/pm/PackageParser;->parseActivityAlias(Landroid/content/pm/PackageParser$Package;Landroid/content/res/Resources;Landroid/content/res/XmlResourceParser;I[Ljava/lang/String;)Landroid/content/pm/PackageParser$Activity;

    move-result-object v20

    .line 3129
    .restart local v20    # "a":Landroid/content/pm/PackageParser$Activity;
    if-nez v20, :cond_2d

    .line 3130
    const/16 v4, -0x6c

    move-object/from16 v0, p0

    iput v4, v0, Landroid/content/pm/PackageParser;->mParseError:I

    .line 3131
    const/4 v4, 0x0

    return v4

    .line 3134
    :cond_2d
    move-object/from16 v0, p1

    iget-object v4, v0, Landroid/content/pm/PackageParser$Package;->activities:Ljava/util/ArrayList;

    move-object/from16 v0, v20

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_6

    .line 3136
    .end local v20    # "a":Landroid/content/pm/PackageParser$Activity;
    :cond_2e
    invoke-interface/range {p3 .. p3}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v6, "meta-data"

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2f

    .line 3140
    move-object/from16 v0, p1

    iget-object v4, v0, Landroid/content/pm/PackageParser$Package;->mAppMetaData:Landroid/os/Bundle;

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move-object/from16 v2, p3

    move-object/from16 v3, p5

    invoke-direct {v0, v1, v2, v4, v3}, Landroid/content/pm/PackageParser;->parseMetaData(Landroid/content/res/Resources;Landroid/content/res/XmlResourceParser;Landroid/os/Bundle;[Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v4

    move-object/from16 v0, p1

    iput-object v4, v0, Landroid/content/pm/PackageParser$Package;->mAppMetaData:Landroid/os/Bundle;

    if-nez v4, :cond_23

    .line 3142
    const/16 v4, -0x6c

    move-object/from16 v0, p0

    iput v4, v0, Landroid/content/pm/PackageParser;->mParseError:I

    .line 3143
    const/4 v4, 0x0

    return v4

    .line 3146
    :cond_2f
    const-string/jumbo v4, "library"

    move-object/from16 v0, v33

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_31

    .line 3148
    sget-object v4, Lcom/android/internal/R$styleable;->AndroidManifestLibrary:[I

    .line 3147
    move-object/from16 v0, p2

    move-object/from16 v1, p3

    invoke-virtual {v0, v1, v4}, Landroid/content/res/Resources;->obtainAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v8

    .line 3153
    const/4 v4, 0x0

    .line 3152
    invoke-virtual {v8, v4}, Landroid/content/res/TypedArray;->getNonResourceString(I)Ljava/lang/String;

    move-result-object v24

    .line 3155
    .local v24, "lname":Ljava/lang/String;
    invoke-virtual {v8}, Landroid/content/res/TypedArray;->recycle()V

    .line 3157
    if-eqz v24, :cond_30

    .line 3158
    invoke-virtual/range {v24 .. v24}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v24

    .line 3159
    move-object/from16 v0, p1

    iget-object v4, v0, Landroid/content/pm/PackageParser$Package;->libraryNames:Ljava/util/ArrayList;

    move-object/from16 v0, v24

    invoke-static {v4, v0}, Lcom/android/internal/util/ArrayUtils;->contains(Ljava/util/Collection;Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_30

    .line 3160
    move-object/from16 v0, p1

    iget-object v4, v0, Landroid/content/pm/PackageParser$Package;->libraryNames:Ljava/util/ArrayList;

    move-object/from16 v0, v24

    invoke-static {v4, v0}, Lcom/android/internal/util/ArrayUtils;->add(Ljava/util/ArrayList;Ljava/lang/Object;)Ljava/util/ArrayList;

    move-result-object v4

    move-object/from16 v0, p1

    iput-object v4, v0, Landroid/content/pm/PackageParser$Package;->libraryNames:Ljava/util/ArrayList;

    .line 3164
    :cond_30
    invoke-static/range {p3 .. p3}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    goto/16 :goto_6

    .line 3166
    .end local v24    # "lname":Ljava/lang/String;
    :cond_31
    const-string/jumbo v4, "uses-library"

    move-object/from16 v0, v33

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_34

    .line 3168
    sget-object v4, Lcom/android/internal/R$styleable;->AndroidManifestUsesLibrary:[I

    .line 3167
    move-object/from16 v0, p2

    move-object/from16 v1, p3

    invoke-virtual {v0, v1, v4}, Landroid/content/res/Resources;->obtainAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v8

    .line 3173
    const/4 v4, 0x0

    .line 3172
    invoke-virtual {v8, v4}, Landroid/content/res/TypedArray;->getNonResourceString(I)Ljava/lang/String;

    move-result-object v24

    .line 3175
    .restart local v24    # "lname":Ljava/lang/String;
    const/4 v4, 0x1

    .line 3176
    const/4 v6, 0x1

    .line 3174
    invoke-virtual {v8, v4, v6}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v28

    .line 3178
    .local v28, "req":Z
    invoke-virtual {v8}, Landroid/content/res/TypedArray;->recycle()V

    .line 3180
    if-eqz v24, :cond_32

    .line 3181
    invoke-virtual/range {v24 .. v24}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v24

    .line 3182
    if-eqz v28, :cond_33

    .line 3183
    move-object/from16 v0, p1

    iget-object v4, v0, Landroid/content/pm/PackageParser$Package;->usesLibraries:Ljava/util/ArrayList;

    move-object/from16 v0, v24

    invoke-static {v4, v0}, Lcom/android/internal/util/ArrayUtils;->add(Ljava/util/ArrayList;Ljava/lang/Object;)Ljava/util/ArrayList;

    move-result-object v4

    move-object/from16 v0, p1

    iput-object v4, v0, Landroid/content/pm/PackageParser$Package;->usesLibraries:Ljava/util/ArrayList;

    .line 3190
    :cond_32
    :goto_7
    invoke-static/range {p3 .. p3}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    goto/16 :goto_6

    .line 3186
    :cond_33
    move-object/from16 v0, p1

    iget-object v4, v0, Landroid/content/pm/PackageParser$Package;->usesOptionalLibraries:Ljava/util/ArrayList;

    .line 3185
    move-object/from16 v0, v24

    invoke-static {v4, v0}, Lcom/android/internal/util/ArrayUtils;->add(Ljava/util/ArrayList;Ljava/lang/Object;)Ljava/util/ArrayList;

    move-result-object v4

    move-object/from16 v0, p1

    iput-object v4, v0, Landroid/content/pm/PackageParser$Package;->usesOptionalLibraries:Ljava/util/ArrayList;

    goto :goto_7

    .line 3192
    .end local v24    # "lname":Ljava/lang/String;
    .end local v28    # "req":Z
    :cond_34
    const-string/jumbo v4, "uses-package"

    move-object/from16 v0, v33

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_35

    .line 3195
    invoke-static/range {p3 .. p3}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    goto/16 :goto_6

    .line 3199
    :cond_35
    const-string/jumbo v4, "PackageParser"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "Unknown element under <application>: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, v33

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 3200
    const-string/jumbo v7, " at "

    .line 3199
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 3200
    move-object/from16 v0, p0

    iget-object v7, v0, Landroid/content/pm/PackageParser;->mArchiveSourcePath:Ljava/lang/String;

    .line 3199
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 3200
    const-string/jumbo v7, " "

    .line 3199
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 3201
    invoke-interface/range {p3 .. p3}, Landroid/content/res/XmlResourceParser;->getPositionDescription()Ljava/lang/String;

    move-result-object v7

    .line 3199
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3202
    invoke-static/range {p3 .. p3}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    goto/16 :goto_6

    .line 3212
    .end local v33    # "tagName":Ljava/lang/String;
    :cond_36
    invoke-static/range {p1 .. p1}, Landroid/content/pm/PackageParser;->modifySharedLibrariesForBackwardCompatibility(Landroid/content/pm/PackageParser$Package;)V

    .line 3214
    invoke-static/range {p1 .. p1}, Landroid/content/pm/PackageParser;->hasDomainURLs(Landroid/content/pm/PackageParser$Package;)Z

    move-result v4

    if-eqz v4, :cond_37

    .line 3215
    move-object/from16 v0, p1

    iget-object v4, v0, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v6, v4, Landroid/content/pm/ApplicationInfo;->privateFlags:I

    or-int/lit8 v6, v6, 0x10

    iput v6, v4, Landroid/content/pm/ApplicationInfo;->privateFlags:I

    .line 3220
    :goto_8
    const/4 v4, 0x1

    return v4

    .line 3217
    :cond_37
    move-object/from16 v0, p1

    iget-object v4, v0, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v6, v4, Landroid/content/pm/ApplicationInfo;->privateFlags:I

    and-int/lit8 v6, v6, -0x11

    iput v6, v4, Landroid/content/pm/ApplicationInfo;->privateFlags:I

    goto :goto_8
.end method

.method private parseClusterPackage(Ljava/io/File;I)Landroid/content/pm/PackageParser$Package;
    .locals 11
    .param p1, "packageDir"    # Ljava/io/File;
    .param p2, "flags"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/pm/PackageParser$PackageParserException;
        }
    .end annotation

    .prologue
    const/4 v7, 0x0

    const/16 v10, -0x6c

    .line 859
    invoke-static {p1, v7}, Landroid/content/pm/PackageParser;->parseClusterPackageLite(Ljava/io/File;I)Landroid/content/pm/PackageParser$PackageLite;

    move-result-object v3

    .line 861
    .local v3, "lite":Landroid/content/pm/PackageParser$PackageLite;
    iget-boolean v8, p0, Landroid/content/pm/PackageParser;->mOnlyPowerOffAlarmApps:Z

    if-eqz v8, :cond_0

    .line 862
    iget-object v8, v3, Landroid/content/pm/PackageParser$PackageLite;->packageName:Ljava/lang/String;

    invoke-direct {p0, v8}, Landroid/content/pm/PackageParser;->isPowerOffAlarmPackage(Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_0

    .line 863
    new-instance v7, Landroid/content/pm/PackageParser$PackageParserException;

    .line 864
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "Not a powerOffAlarmApp: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 863
    invoke-direct {v7, v10, v8}, Landroid/content/pm/PackageParser$PackageParserException;-><init>(ILjava/lang/String;)V

    throw v7

    .line 868
    :cond_0
    iget-boolean v8, p0, Landroid/content/pm/PackageParser;->mOnlyPowerOffAlarmApps:Z

    if-nez v8, :cond_1

    iget-boolean v8, p0, Landroid/content/pm/PackageParser;->mOnlyCoreApps:Z

    if-eqz v8, :cond_1

    iget-boolean v8, v3, Landroid/content/pm/PackageParser$PackageLite;->coreApp:Z

    if-eqz v8, :cond_2

    .line 873
    :cond_1
    new-instance v0, Landroid/content/res/AssetManager;

    invoke-direct {v0}, Landroid/content/res/AssetManager;-><init>()V

    .line 877
    .local v0, "assets":Landroid/content/res/AssetManager;
    :try_start_0
    iget-object v8, v3, Landroid/content/pm/PackageParser$PackageLite;->baseCodePath:Ljava/lang/String;

    invoke-static {v0, v8, p2}, Landroid/content/pm/PackageParser;->loadApkIntoAssetManager(Landroid/content/res/AssetManager;Ljava/lang/String;I)I

    .line 879
    iget-object v8, v3, Landroid/content/pm/PackageParser$PackageLite;->splitCodePaths:[Ljava/lang/String;

    invoke-static {v8}, Lcom/android/internal/util/ArrayUtils;->isEmpty([Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_3

    .line 880
    iget-object v8, v3, Landroid/content/pm/PackageParser$PackageLite;->splitCodePaths:[Ljava/lang/String;

    array-length v9, v8

    :goto_0
    if-ge v7, v9, :cond_3

    aget-object v5, v8, v7

    .line 881
    .local v5, "path":Ljava/lang/String;
    invoke-static {v0, v5, p2}, Landroid/content/pm/PackageParser;->loadApkIntoAssetManager(Landroid/content/res/AssetManager;Ljava/lang/String;I)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 880
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    .line 869
    .end local v0    # "assets":Landroid/content/res/AssetManager;
    .end local v5    # "path":Ljava/lang/String;
    :cond_2
    new-instance v7, Landroid/content/pm/PackageParser$PackageParserException;

    .line 870
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "Not a coreApp: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 869
    invoke-direct {v7, v10, v8}, Landroid/content/pm/PackageParser$PackageParserException;-><init>(ILjava/lang/String;)V

    throw v7

    .line 885
    .restart local v0    # "assets":Landroid/content/res/AssetManager;
    :cond_3
    :try_start_1
    new-instance v1, Ljava/io/File;

    iget-object v7, v3, Landroid/content/pm/PackageParser$PackageLite;->baseCodePath:Ljava/lang/String;

    invoke-direct {v1, v7}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 886
    .local v1, "baseApk":Ljava/io/File;
    invoke-direct {p0, v1, v0, p2}, Landroid/content/pm/PackageParser;->parseBaseApk(Ljava/io/File;Landroid/content/res/AssetManager;I)Landroid/content/pm/PackageParser$Package;

    move-result-object v6

    .line 887
    .local v6, "pkg":Landroid/content/pm/PackageParser$Package;
    if-nez v6, :cond_4

    .line 888
    new-instance v7, Landroid/content/pm/PackageParser$PackageParserException;

    .line 889
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "Failed to parse base APK: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 888
    const/16 v9, -0x64

    invoke-direct {v7, v9, v8}, Landroid/content/pm/PackageParser$PackageParserException;-><init>(ILjava/lang/String;)V

    throw v7
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 908
    .end local v1    # "baseApk":Ljava/io/File;
    .end local v6    # "pkg":Landroid/content/pm/PackageParser$Package;
    :catchall_0
    move-exception v7

    .line 909
    invoke-static {v0}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 908
    throw v7

    .line 892
    .restart local v1    # "baseApk":Ljava/io/File;
    .restart local v6    # "pkg":Landroid/content/pm/PackageParser$Package;
    :cond_4
    :try_start_2
    iget-object v7, v3, Landroid/content/pm/PackageParser$PackageLite;->splitNames:[Ljava/lang/String;

    invoke-static {v7}, Lcom/android/internal/util/ArrayUtils;->isEmpty([Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_5

    .line 893
    iget-object v7, v3, Landroid/content/pm/PackageParser$PackageLite;->splitNames:[Ljava/lang/String;

    array-length v4, v7

    .line 894
    .local v4, "num":I
    iget-object v7, v3, Landroid/content/pm/PackageParser$PackageLite;->splitNames:[Ljava/lang/String;

    iput-object v7, v6, Landroid/content/pm/PackageParser$Package;->splitNames:[Ljava/lang/String;

    .line 895
    iget-object v7, v3, Landroid/content/pm/PackageParser$PackageLite;->splitCodePaths:[Ljava/lang/String;

    iput-object v7, v6, Landroid/content/pm/PackageParser$Package;->splitCodePaths:[Ljava/lang/String;

    .line 896
    iget-object v7, v3, Landroid/content/pm/PackageParser$PackageLite;->splitRevisionCodes:[I

    iput-object v7, v6, Landroid/content/pm/PackageParser$Package;->splitRevisionCodes:[I

    .line 897
    new-array v7, v4, [I

    iput-object v7, v6, Landroid/content/pm/PackageParser$Package;->splitFlags:[I

    .line 898
    new-array v7, v4, [I

    iput-object v7, v6, Landroid/content/pm/PackageParser$Package;->splitPrivateFlags:[I

    .line 900
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1
    if-ge v2, v4, :cond_5

    .line 901
    invoke-direct {p0, v6, v2, v0, p2}, Landroid/content/pm/PackageParser;->parseSplitApk(Landroid/content/pm/PackageParser$Package;ILandroid/content/res/AssetManager;I)V

    .line 900
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 905
    .end local v2    # "i":I
    .end local v4    # "num":I
    :cond_5
    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/content/pm/PackageParser$Package;->setCodePath(Ljava/lang/String;)V

    .line 906
    iget-boolean v7, v3, Landroid/content/pm/PackageParser$PackageLite;->use32bitAbi:Z

    invoke-virtual {v6, v7}, Landroid/content/pm/PackageParser$Package;->setUse32bitAbi(Z)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 909
    invoke-static {v0}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 907
    return-object v6
.end method

.method private static parseClusterPackageLite(Ljava/io/File;I)Landroid/content/pm/PackageParser$PackageLite;
    .locals 17
    .param p0, "packageDir"    # Ljava/io/File;
    .param p1, "flags"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/pm/PackageParser$PackageParserException;
        }
    .end annotation

    .prologue
    .line 734
    invoke-virtual/range {p0 .. p0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v9

    .line 735
    .local v9, "files":[Ljava/io/File;
    invoke-static {v9}, Lcom/android/internal/util/ArrayUtils;->isEmpty([Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 736
    new-instance v1, Landroid/content/pm/PackageParser$PackageParserException;

    .line 737
    const-string/jumbo v15, "No packages found in split"

    .line 736
    const/16 v16, -0x64

    move/from16 v0, v16

    invoke-direct {v1, v0, v15}, Landroid/content/pm/PackageParser$PackageParserException;-><init>(ILjava/lang/String;)V

    throw v1

    .line 740
    :cond_0
    const/4 v12, 0x0

    .line 741
    .local v12, "packageName":Ljava/lang/String;
    const/4 v14, 0x0

    .line 743
    .local v14, "versionCode":I
    new-instance v7, Landroid/util/ArrayMap;

    invoke-direct {v7}, Landroid/util/ArrayMap;-><init>()V

    .line 744
    .local v7, "apks":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Landroid/content/pm/PackageParser$ApkLite;>;"
    const/4 v1, 0x0

    array-length v15, v9

    .end local v12    # "packageName":Ljava/lang/String;
    :goto_0
    if-ge v1, v15, :cond_5

    aget-object v8, v9, v1

    .line 745
    .local v8, "file":Ljava/io/File;
    invoke-static {v8}, Landroid/content/pm/PackageParser;->isApkFile(Ljava/io/File;)Z

    move-result v16

    if-eqz v16, :cond_4

    .line 746
    move/from16 v0, p1

    invoke-static {v8, v0}, Landroid/content/pm/PackageParser;->parseApkLite(Ljava/io/File;I)Landroid/content/pm/PackageParser$ApkLite;

    move-result-object v11

    .line 750
    .local v11, "lite":Landroid/content/pm/PackageParser$ApkLite;
    if-nez v12, :cond_2

    .line 751
    iget-object v12, v11, Landroid/content/pm/PackageParser$ApkLite;->packageName:Ljava/lang/String;

    .line 752
    .local v12, "packageName":Ljava/lang/String;
    iget v14, v11, Landroid/content/pm/PackageParser$ApkLite;->versionCode:I

    .line 767
    .end local v12    # "packageName":Ljava/lang/String;
    :cond_1
    iget-object v0, v11, Landroid/content/pm/PackageParser$ApkLite;->splitName:Ljava/lang/String;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    invoke-virtual {v7, v0, v11}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v16

    if-eqz v16, :cond_4

    .line 768
    new-instance v1, Landroid/content/pm/PackageParser$PackageParserException;

    .line 769
    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v16, "Split name "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    iget-object v0, v11, Landroid/content/pm/PackageParser$ApkLite;->splitName:Ljava/lang/String;

    move-object/from16 v16, v0

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    .line 770
    const-string/jumbo v16, " defined more than once; most recent was "

    .line 769
    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    .line 768
    const/16 v16, -0x65

    move/from16 v0, v16

    invoke-direct {v1, v0, v15}, Landroid/content/pm/PackageParser$PackageParserException;-><init>(ILjava/lang/String;)V

    throw v1

    .line 754
    :cond_2
    iget-object v0, v11, Landroid/content/pm/PackageParser$ApkLite;->packageName:Ljava/lang/String;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    invoke-virtual {v12, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v16

    if-nez v16, :cond_3

    .line 755
    new-instance v1, Landroid/content/pm/PackageParser$PackageParserException;

    .line 756
    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v16, "Inconsistent package "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    iget-object v0, v11, Landroid/content/pm/PackageParser$ApkLite;->packageName:Ljava/lang/String;

    move-object/from16 v16, v0

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string/jumbo v16, " in "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v15

    .line 757
    const-string/jumbo v16, "; expected "

    .line 756
    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    .line 755
    const/16 v16, -0x65

    move/from16 v0, v16

    invoke-direct {v1, v0, v15}, Landroid/content/pm/PackageParser$PackageParserException;-><init>(ILjava/lang/String;)V

    throw v1

    .line 759
    :cond_3
    iget v0, v11, Landroid/content/pm/PackageParser$ApkLite;->versionCode:I

    move/from16 v16, v0

    move/from16 v0, v16

    if-eq v14, v0, :cond_1

    .line 760
    new-instance v1, Landroid/content/pm/PackageParser$PackageParserException;

    .line 761
    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v16, "Inconsistent version "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    iget v0, v11, Landroid/content/pm/PackageParser$ApkLite;->versionCode:I

    move/from16 v16, v0

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string/jumbo v16, " in "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v15

    .line 762
    const-string/jumbo v16, "; expected "

    .line 761
    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    .line 760
    const/16 v16, -0x65

    move/from16 v0, v16

    invoke-direct {v1, v0, v15}, Landroid/content/pm/PackageParser$PackageParserException;-><init>(ILjava/lang/String;)V

    throw v1

    .line 744
    .end local v11    # "lite":Landroid/content/pm/PackageParser$ApkLite;
    :cond_4
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_0

    .line 775
    .end local v8    # "file":Ljava/io/File;
    :cond_5
    const/4 v1, 0x0

    invoke-virtual {v7, v1}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/pm/PackageParser$ApkLite;

    .line 776
    .local v3, "baseApk":Landroid/content/pm/PackageParser$ApkLite;
    if-nez v3, :cond_6

    .line 777
    new-instance v1, Landroid/content/pm/PackageParser$PackageParserException;

    .line 778
    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v16, "Missing base APK in "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    move-object/from16 v0, p0

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    .line 777
    const/16 v16, -0x65

    move/from16 v0, v16

    invoke-direct {v1, v0, v15}, Landroid/content/pm/PackageParser$PackageParserException;-><init>(ILjava/lang/String;)V

    throw v1

    .line 782
    :cond_6
    invoke-virtual {v7}, Landroid/util/ArrayMap;->size()I

    move-result v13

    .line 784
    .local v13, "size":I
    const/4 v4, 0x0

    .line 785
    .local v4, "splitNames":[Ljava/lang/String;
    const/4 v5, 0x0

    .line 786
    .local v5, "splitCodePaths":[Ljava/lang/String;
    const/4 v6, 0x0

    .line 787
    .local v6, "splitRevisionCodes":[I
    if-lez v13, :cond_7

    .line 788
    new-array v4, v13, [Ljava/lang/String;

    .line 789
    .local v4, "splitNames":[Ljava/lang/String;
    new-array v5, v13, [Ljava/lang/String;

    .line 790
    .local v5, "splitCodePaths":[Ljava/lang/String;
    new-array v6, v13, [I

    .line 792
    .local v6, "splitRevisionCodes":[I
    invoke-virtual {v7}, Landroid/util/ArrayMap;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1, v4}, Ljava/util/Set;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v4

    .end local v4    # "splitNames":[Ljava/lang/String;
    check-cast v4, [Ljava/lang/String;

    .line 793
    .restart local v4    # "splitNames":[Ljava/lang/String;
    sget-object v1, Landroid/content/pm/PackageParser;->sSplitNameComparator:Ljava/util/Comparator;

    invoke-static {v4, v1}, Ljava/util/Arrays;->sort([Ljava/lang/Object;Ljava/util/Comparator;)V

    .line 795
    const/4 v10, 0x0

    .local v10, "i":I
    :goto_1
    if-ge v10, v13, :cond_7

    .line 796
    aget-object v1, v4, v10

    invoke-virtual {v7, v1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/PackageParser$ApkLite;

    iget-object v1, v1, Landroid/content/pm/PackageParser$ApkLite;->codePath:Ljava/lang/String;

    aput-object v1, v5, v10

    .line 797
    aget-object v1, v4, v10

    invoke-virtual {v7, v1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/PackageParser$ApkLite;

    iget v1, v1, Landroid/content/pm/PackageParser$ApkLite;->revisionCode:I

    aput v1, v6, v10

    .line 795
    add-int/lit8 v10, v10, 0x1

    goto :goto_1

    .line 801
    .end local v4    # "splitNames":[Ljava/lang/String;
    .end local v5    # "splitCodePaths":[Ljava/lang/String;
    .end local v6    # "splitRevisionCodes":[I
    .end local v10    # "i":I
    :cond_7
    invoke-virtual/range {p0 .. p0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    .line 802
    .local v2, "codePath":Ljava/lang/String;
    new-instance v1, Landroid/content/pm/PackageParser$PackageLite;

    invoke-direct/range {v1 .. v6}, Landroid/content/pm/PackageParser$PackageLite;-><init>(Ljava/lang/String;Landroid/content/pm/PackageParser$ApkLite;[Ljava/lang/String;[Ljava/lang/String;[I)V

    return-object v1
.end method

.method private parseInstrumentation(Landroid/content/pm/PackageParser$Package;Landroid/content/res/Resources;Landroid/content/res/XmlResourceParser;[Ljava/lang/String;)Landroid/content/pm/PackageParser$Instrumentation;
    .locals 11
    .param p1, "owner"    # Landroid/content/pm/PackageParser$Package;
    .param p2, "res"    # Landroid/content/res/Resources;
    .param p3, "parser"    # Landroid/content/res/XmlResourceParser;
    .param p4, "outError"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 2733
    sget-object v0, Lcom/android/internal/R$styleable;->AndroidManifestInstrumentation:[I

    .line 2732
    invoke-virtual {p2, p3, v0}, Landroid/content/res/Resources;->obtainAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v9

    .line 2735
    .local v9, "sa":Landroid/content/res/TypedArray;
    iget-object v0, p0, Landroid/content/pm/PackageParser;->mParseInstrumentationArgs:Landroid/content/pm/PackageParser$ParsePackageItemArgs;

    if-nez v0, :cond_0

    .line 2736
    new-instance v0, Landroid/content/pm/PackageParser$ParsePackageItemArgs;

    .line 2737
    const/4 v3, 0x2

    .line 2738
    const/4 v4, 0x0

    .line 2739
    const/4 v5, 0x1

    .line 2740
    const/16 v6, 0x8

    .line 2741
    const/4 v7, 0x6

    .line 2742
    const/4 v8, 0x7

    move-object v1, p1

    move-object v2, p4

    .line 2736
    invoke-direct/range {v0 .. v8}, Landroid/content/pm/PackageParser$ParsePackageItemArgs;-><init>(Landroid/content/pm/PackageParser$Package;[Ljava/lang/String;IIIIII)V

    iput-object v0, p0, Landroid/content/pm/PackageParser;->mParseInstrumentationArgs:Landroid/content/pm/PackageParser$ParsePackageItemArgs;

    .line 2743
    iget-object v0, p0, Landroid/content/pm/PackageParser;->mParseInstrumentationArgs:Landroid/content/pm/PackageParser$ParsePackageItemArgs;

    const-string/jumbo v1, "<instrumentation>"

    iput-object v1, v0, Landroid/content/pm/PackageParser$ParsePackageItemArgs;->tag:Ljava/lang/String;

    .line 2746
    :cond_0
    iget-object v0, p0, Landroid/content/pm/PackageParser;->mParseInstrumentationArgs:Landroid/content/pm/PackageParser$ParsePackageItemArgs;

    iput-object v9, v0, Landroid/content/pm/PackageParser$ParsePackageItemArgs;->sa:Landroid/content/res/TypedArray;

    .line 2748
    new-instance v4, Landroid/content/pm/PackageParser$Instrumentation;

    iget-object v0, p0, Landroid/content/pm/PackageParser;->mParseInstrumentationArgs:Landroid/content/pm/PackageParser$ParsePackageItemArgs;

    .line 2749
    new-instance v1, Landroid/content/pm/InstrumentationInfo;

    invoke-direct {v1}, Landroid/content/pm/InstrumentationInfo;-><init>()V

    .line 2748
    invoke-direct {v4, v0, v1}, Landroid/content/pm/PackageParser$Instrumentation;-><init>(Landroid/content/pm/PackageParser$ParsePackageItemArgs;Landroid/content/pm/InstrumentationInfo;)V

    .line 2750
    .local v4, "a":Landroid/content/pm/PackageParser$Instrumentation;
    const/4 v0, 0x0

    aget-object v0, p4, v0

    if-eqz v0, :cond_1

    .line 2751
    invoke-virtual {v9}, Landroid/content/res/TypedArray;->recycle()V

    .line 2752
    const/16 v0, -0x6c

    iput v0, p0, Landroid/content/pm/PackageParser;->mParseError:I

    .line 2753
    const/4 v0, 0x0

    return-object v0

    .line 2760
    :cond_1
    const/4 v0, 0x3

    .line 2759
    invoke-virtual {v9, v0}, Landroid/content/res/TypedArray;->getNonResourceString(I)Ljava/lang/String;

    move-result-object v10

    .line 2761
    .local v10, "str":Ljava/lang/String;
    iget-object v1, v4, Landroid/content/pm/PackageParser$Instrumentation;->info:Landroid/content/pm/InstrumentationInfo;

    if-eqz v10, :cond_2

    invoke-virtual {v10}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v0

    :goto_0
    iput-object v0, v1, Landroid/content/pm/InstrumentationInfo;->targetPackage:Ljava/lang/String;

    .line 2763
    iget-object v0, v4, Landroid/content/pm/PackageParser$Instrumentation;->info:Landroid/content/pm/InstrumentationInfo;

    .line 2764
    const/4 v1, 0x4

    .line 2765
    const/4 v2, 0x0

    .line 2763
    invoke-virtual {v9, v1, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    iput-boolean v1, v0, Landroid/content/pm/InstrumentationInfo;->handleProfiling:Z

    .line 2767
    iget-object v0, v4, Landroid/content/pm/PackageParser$Instrumentation;->info:Landroid/content/pm/InstrumentationInfo;

    .line 2768
    const/4 v1, 0x5

    .line 2769
    const/4 v2, 0x0

    .line 2767
    invoke-virtual {v9, v1, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    iput-boolean v1, v0, Landroid/content/pm/InstrumentationInfo;->functionalTest:Z

    .line 2771
    invoke-virtual {v9}, Landroid/content/res/TypedArray;->recycle()V

    .line 2773
    iget-object v0, v4, Landroid/content/pm/PackageParser$Instrumentation;->info:Landroid/content/pm/InstrumentationInfo;

    iget-object v0, v0, Landroid/content/pm/InstrumentationInfo;->targetPackage:Ljava/lang/String;

    if-nez v0, :cond_3

    .line 2774
    const-string/jumbo v0, "<instrumentation> does not specify targetPackage"

    const/4 v1, 0x0

    aput-object v0, p4, v1

    .line 2775
    const/16 v0, -0x6c

    iput v0, p0, Landroid/content/pm/PackageParser;->mParseError:I

    .line 2776
    const/4 v0, 0x0

    return-object v0

    .line 2761
    :cond_2
    const/4 v0, 0x0

    goto :goto_0

    .line 2779
    :cond_3
    const-string/jumbo v3, "<instrumentation>"

    move-object v0, p0

    move-object v1, p2

    move-object v2, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Landroid/content/pm/PackageParser;->parseAllMetaData(Landroid/content/res/Resources;Landroid/content/res/XmlResourceParser;Ljava/lang/String;Landroid/content/pm/PackageParser$Component;[Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 2781
    const/16 v0, -0x6c

    iput v0, p0, Landroid/content/pm/PackageParser;->mParseError:I

    .line 2782
    const/4 v0, 0x0

    return-object v0

    .line 2785
    :cond_4
    iget-object v0, p1, Landroid/content/pm/PackageParser$Package;->instrumentation:Ljava/util/ArrayList;

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2787
    return-object v4
.end method

.method private parseIntent(Landroid/content/res/Resources;Landroid/content/res/XmlResourceParser;ZZLandroid/content/pm/PackageParser$IntentInfo;[Ljava/lang/String;)Z
    .locals 18
    .param p1, "res"    # Landroid/content/res/Resources;
    .param p2, "parser"    # Landroid/content/res/XmlResourceParser;
    .param p3, "allowGlobs"    # Z
    .param p4, "allowAutoVerify"    # Z
    .param p5, "outInfo"    # Landroid/content/pm/PackageParser$IntentInfo;
    .param p6, "outError"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 4628
    sget-object v15, Lcom/android/internal/R$styleable;->AndroidManifestIntentFilter:[I

    .line 4627
    move-object/from16 v0, p1

    move-object/from16 v1, p2

    invoke-virtual {v0, v1, v15}, Landroid/content/res/Resources;->obtainAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v9

    .line 4631
    .local v9, "sa":Landroid/content/res/TypedArray;
    const/4 v15, 0x2

    const/16 v16, 0x0

    .line 4630
    move/from16 v0, v16

    invoke-virtual {v9, v15, v0}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v7

    .line 4632
    .local v7, "priority":I
    move-object/from16 v0, p5

    invoke-virtual {v0, v7}, Landroid/content/pm/PackageParser$IntentInfo;->setPriority(I)V

    .line 4635
    const/4 v15, 0x0

    .line 4634
    invoke-virtual {v9, v15}, Landroid/content/res/TypedArray;->peekValue(I)Landroid/util/TypedValue;

    move-result-object v13

    .line 4636
    .local v13, "v":Landroid/util/TypedValue;
    if-eqz v13, :cond_0

    iget v15, v13, Landroid/util/TypedValue;->resourceId:I

    move-object/from16 v0, p5

    iput v15, v0, Landroid/content/pm/PackageParser$IntentInfo;->labelRes:I

    if-nez v15, :cond_0

    .line 4637
    invoke-virtual {v13}, Landroid/util/TypedValue;->coerceToString()Ljava/lang/CharSequence;

    move-result-object v15

    move-object/from16 v0, p5

    iput-object v15, v0, Landroid/content/pm/PackageParser$IntentInfo;->nonLocalizedLabel:Ljava/lang/CharSequence;

    .line 4641
    :cond_0
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v15

    const v16, #android:bool@config_useRoundIcon#t

    invoke-virtual/range {v15 .. v16}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v12

    .line 4642
    .local v12, "useRoundIcon":Z
    if-eqz v12, :cond_5

    .line 4643
    const/4 v15, 0x6

    const/16 v16, 0x0

    .line 4642
    move/from16 v0, v16

    invoke-virtual {v9, v15, v0}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v8

    .line 4644
    .local v8, "roundIconVal":I
    :goto_0
    if-eqz v8, :cond_6

    .line 4645
    move-object/from16 v0, p5

    iput v8, v0, Landroid/content/pm/PackageParser$IntentInfo;->icon:I

    .line 4652
    :goto_1
    const/4 v15, 0x3

    const/16 v16, 0x0

    .line 4651
    move/from16 v0, v16

    invoke-virtual {v9, v15, v0}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v15

    move-object/from16 v0, p5

    iput v15, v0, Landroid/content/pm/PackageParser$IntentInfo;->logo:I

    .line 4655
    const/4 v15, 0x4

    const/16 v16, 0x0

    .line 4654
    move/from16 v0, v16

    invoke-virtual {v9, v15, v0}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v15

    move-object/from16 v0, p5

    iput v15, v0, Landroid/content/pm/PackageParser$IntentInfo;->banner:I

    .line 4657
    if-eqz p4, :cond_1

    .line 4659
    const/4 v15, 0x5

    .line 4660
    const/16 v16, 0x0

    .line 4658
    move/from16 v0, v16

    invoke-virtual {v9, v15, v0}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v15

    move-object/from16 v0, p5

    invoke-virtual {v0, v15}, Landroid/content/pm/PackageParser$IntentInfo;->setAutoVerify(Z)V

    .line 4663
    :cond_1
    invoke-virtual {v9}, Landroid/content/res/TypedArray;->recycle()V

    .line 4665
    invoke-interface/range {p2 .. p2}, Landroid/content/res/XmlResourceParser;->getDepth()I

    move-result v5

    .line 4667
    .local v5, "outerDepth":I
    :cond_2
    :goto_2
    invoke-interface/range {p2 .. p2}, Landroid/content/res/XmlResourceParser;->next()I

    move-result v11

    .local v11, "type":I
    const/4 v15, 0x1

    if-eq v11, v15, :cond_18

    .line 4668
    const/4 v15, 0x3

    if-ne v11, v15, :cond_3

    invoke-interface/range {p2 .. p2}, Landroid/content/res/XmlResourceParser;->getDepth()I

    move-result v15

    if-le v15, v5, :cond_18

    .line 4669
    :cond_3
    const/4 v15, 0x3

    if-eq v11, v15, :cond_2

    const/4 v15, 0x4

    if-eq v11, v15, :cond_2

    .line 4673
    invoke-interface/range {p2 .. p2}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    move-result-object v4

    .line 4674
    .local v4, "nodeName":Ljava/lang/String;
    const-string/jumbo v15, "action"

    invoke-virtual {v4, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_8

    .line 4676
    const-string/jumbo v15, "http://schemas.android.com/apk/res/android"

    const-string/jumbo v16, "name"

    .line 4675
    move-object/from16 v0, p2

    move-object/from16 v1, v16

    invoke-interface {v0, v15, v1}, Landroid/content/res/XmlResourceParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    .line 4677
    .local v14, "value":Ljava/lang/String;
    if-eqz v14, :cond_4

    const-string/jumbo v15, ""

    if-ne v14, v15, :cond_7

    .line 4678
    :cond_4
    const-string/jumbo v15, "No value supplied for <android:name>"

    const/16 v16, 0x0

    aput-object v15, p6, v16

    .line 4679
    const/4 v15, 0x0

    return v15

    .line 4643
    .end local v4    # "nodeName":Ljava/lang/String;
    .end local v5    # "outerDepth":I
    .end local v8    # "roundIconVal":I
    .end local v11    # "type":I
    .end local v14    # "value":Ljava/lang/String;
    :cond_5
    const/4 v8, 0x0

    goto :goto_0

    .line 4648
    .restart local v8    # "roundIconVal":I
    :cond_6
    const/4 v15, 0x1

    const/16 v16, 0x0

    .line 4647
    move/from16 v0, v16

    invoke-virtual {v9, v15, v0}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v15

    move-object/from16 v0, p5

    iput v15, v0, Landroid/content/pm/PackageParser$IntentInfo;->icon:I

    goto/16 :goto_1

    .line 4681
    .restart local v4    # "nodeName":Ljava/lang/String;
    .restart local v5    # "outerDepth":I
    .restart local v11    # "type":I
    .restart local v14    # "value":Ljava/lang/String;
    :cond_7
    invoke-static/range {p2 .. p2}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    .line 4683
    move-object/from16 v0, p5

    invoke-virtual {v0, v14}, Landroid/content/pm/PackageParser$IntentInfo;->addAction(Ljava/lang/String;)V

    goto :goto_2

    .line 4684
    .end local v14    # "value":Ljava/lang/String;
    :cond_8
    const-string/jumbo v15, "category"

    invoke-virtual {v4, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_b

    .line 4686
    const-string/jumbo v15, "http://schemas.android.com/apk/res/android"

    const-string/jumbo v16, "name"

    .line 4685
    move-object/from16 v0, p2

    move-object/from16 v1, v16

    invoke-interface {v0, v15, v1}, Landroid/content/res/XmlResourceParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    .line 4687
    .restart local v14    # "value":Ljava/lang/String;
    if-eqz v14, :cond_9

    const-string/jumbo v15, ""

    if-ne v14, v15, :cond_a

    .line 4688
    :cond_9
    const-string/jumbo v15, "No value supplied for <android:name>"

    const/16 v16, 0x0

    aput-object v15, p6, v16

    .line 4689
    const/4 v15, 0x0

    return v15

    .line 4691
    :cond_a
    invoke-static/range {p2 .. p2}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    .line 4693
    move-object/from16 v0, p5

    invoke-virtual {v0, v14}, Landroid/content/pm/PackageParser$IntentInfo;->addCategory(Ljava/lang/String;)V

    goto/16 :goto_2

    .line 4695
    .end local v14    # "value":Ljava/lang/String;
    :cond_b
    const-string/jumbo v15, "data"

    invoke-virtual {v4, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_17

    .line 4697
    sget-object v15, Lcom/android/internal/R$styleable;->AndroidManifestData:[I

    .line 4696
    move-object/from16 v0, p1

    move-object/from16 v1, p2

    invoke-virtual {v0, v1, v15}, Landroid/content/res/Resources;->obtainAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v9

    .line 4700
    const/4 v15, 0x0

    const/16 v16, 0x0

    .line 4699
    move/from16 v0, v16

    invoke-virtual {v9, v15, v0}, Landroid/content/res/TypedArray;->getNonConfigurationString(II)Ljava/lang/String;

    move-result-object v10

    .line 4701
    .local v10, "str":Ljava/lang/String;
    if-eqz v10, :cond_c

    .line 4703
    :try_start_0
    move-object/from16 v0, p5

    invoke-virtual {v0, v10}, Landroid/content/pm/PackageParser$IntentInfo;->addDataType(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/content/IntentFilter$MalformedMimeTypeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 4712
    :cond_c
    const/4 v15, 0x1

    const/16 v16, 0x0

    .line 4711
    move/from16 v0, v16

    invoke-virtual {v9, v15, v0}, Landroid/content/res/TypedArray;->getNonConfigurationString(II)Ljava/lang/String;

    move-result-object v10

    .line 4713
    if-eqz v10, :cond_d

    .line 4714
    move-object/from16 v0, p5

    invoke-virtual {v0, v10}, Landroid/content/pm/PackageParser$IntentInfo;->addDataScheme(Ljava/lang/String;)V

    .line 4718
    :cond_d
    const/4 v15, 0x7

    const/16 v16, 0x0

    .line 4717
    move/from16 v0, v16

    invoke-virtual {v9, v15, v0}, Landroid/content/res/TypedArray;->getNonConfigurationString(II)Ljava/lang/String;

    move-result-object v10

    .line 4719
    if-eqz v10, :cond_e

    .line 4720
    const/4 v15, 0x0

    move-object/from16 v0, p5

    invoke-virtual {v0, v10, v15}, Landroid/content/pm/PackageParser$IntentInfo;->addDataSchemeSpecificPart(Ljava/lang/String;I)V

    .line 4724
    :cond_e
    const/16 v15, 0x8

    const/16 v16, 0x0

    .line 4723
    move/from16 v0, v16

    invoke-virtual {v9, v15, v0}, Landroid/content/res/TypedArray;->getNonConfigurationString(II)Ljava/lang/String;

    move-result-object v10

    .line 4725
    if-eqz v10, :cond_f

    .line 4726
    const/4 v15, 0x1

    move-object/from16 v0, p5

    invoke-virtual {v0, v10, v15}, Landroid/content/pm/PackageParser$IntentInfo;->addDataSchemeSpecificPart(Ljava/lang/String;I)V

    .line 4730
    :cond_f
    const/16 v15, 0x9

    const/16 v16, 0x0

    .line 4729
    move/from16 v0, v16

    invoke-virtual {v9, v15, v0}, Landroid/content/res/TypedArray;->getNonConfigurationString(II)Ljava/lang/String;

    move-result-object v10

    .line 4731
    if-eqz v10, :cond_11

    .line 4732
    if-nez p3, :cond_10

    .line 4733
    const-string/jumbo v15, "sspPattern not allowed here; ssp must be literal"

    const/16 v16, 0x0

    aput-object v15, p6, v16

    .line 4734
    const/4 v15, 0x0

    return v15

    .line 4704
    :catch_0
    move-exception v2

    .line 4705
    .local v2, "e":Landroid/content/IntentFilter$MalformedMimeTypeException;
    invoke-virtual {v2}, Landroid/content/IntentFilter$MalformedMimeTypeException;->toString()Ljava/lang/String;

    move-result-object v15

    const/16 v16, 0x0

    aput-object v15, p6, v16

    .line 4706
    invoke-virtual {v9}, Landroid/content/res/TypedArray;->recycle()V

    .line 4707
    const/4 v15, 0x0

    return v15

    .line 4736
    .end local v2    # "e":Landroid/content/IntentFilter$MalformedMimeTypeException;
    :cond_10
    const/4 v15, 0x2

    move-object/from16 v0, p5

    invoke-virtual {v0, v10, v15}, Landroid/content/pm/PackageParser$IntentInfo;->addDataSchemeSpecificPart(Ljava/lang/String;I)V

    .line 4740
    :cond_11
    const/4 v15, 0x2

    const/16 v16, 0x0

    .line 4739
    move/from16 v0, v16

    invoke-virtual {v9, v15, v0}, Landroid/content/res/TypedArray;->getNonConfigurationString(II)Ljava/lang/String;

    move-result-object v3

    .line 4742
    .local v3, "host":Ljava/lang/String;
    const/4 v15, 0x3

    const/16 v16, 0x0

    .line 4741
    move/from16 v0, v16

    invoke-virtual {v9, v15, v0}, Landroid/content/res/TypedArray;->getNonConfigurationString(II)Ljava/lang/String;

    move-result-object v6

    .line 4743
    .local v6, "port":Ljava/lang/String;
    if-eqz v3, :cond_12

    .line 4744
    move-object/from16 v0, p5

    invoke-virtual {v0, v3, v6}, Landroid/content/pm/PackageParser$IntentInfo;->addDataAuthority(Ljava/lang/String;Ljava/lang/String;)V

    .line 4748
    :cond_12
    const/4 v15, 0x4

    const/16 v16, 0x0

    .line 4747
    move/from16 v0, v16

    invoke-virtual {v9, v15, v0}, Landroid/content/res/TypedArray;->getNonConfigurationString(II)Ljava/lang/String;

    move-result-object v10

    .line 4749
    if-eqz v10, :cond_13

    .line 4750
    const/4 v15, 0x0

    move-object/from16 v0, p5

    invoke-virtual {v0, v10, v15}, Landroid/content/pm/PackageParser$IntentInfo;->addDataPath(Ljava/lang/String;I)V

    .line 4754
    :cond_13
    const/4 v15, 0x5

    const/16 v16, 0x0

    .line 4753
    move/from16 v0, v16

    invoke-virtual {v9, v15, v0}, Landroid/content/res/TypedArray;->getNonConfigurationString(II)Ljava/lang/String;

    move-result-object v10

    .line 4755
    if-eqz v10, :cond_14

    .line 4756
    const/4 v15, 0x1

    move-object/from16 v0, p5

    invoke-virtual {v0, v10, v15}, Landroid/content/pm/PackageParser$IntentInfo;->addDataPath(Ljava/lang/String;I)V

    .line 4760
    :cond_14
    const/4 v15, 0x6

    const/16 v16, 0x0

    .line 4759
    move/from16 v0, v16

    invoke-virtual {v9, v15, v0}, Landroid/content/res/TypedArray;->getNonConfigurationString(II)Ljava/lang/String;

    move-result-object v10

    .line 4761
    if-eqz v10, :cond_16

    .line 4762
    if-nez p3, :cond_15

    .line 4763
    const-string/jumbo v15, "pathPattern not allowed here; path must be literal"

    const/16 v16, 0x0

    aput-object v15, p6, v16

    .line 4764
    const/4 v15, 0x0

    return v15

    .line 4766
    :cond_15
    const/4 v15, 0x2

    move-object/from16 v0, p5

    invoke-virtual {v0, v10, v15}, Landroid/content/pm/PackageParser$IntentInfo;->addDataPath(Ljava/lang/String;I)V

    .line 4769
    :cond_16
    invoke-virtual {v9}, Landroid/content/res/TypedArray;->recycle()V

    .line 4770
    invoke-static/range {p2 .. p2}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    goto/16 :goto_2

    .line 4772
    .end local v3    # "host":Ljava/lang/String;
    .end local v6    # "port":Ljava/lang/String;
    .end local v10    # "str":Ljava/lang/String;
    :cond_17
    const-string/jumbo v15, "PackageParser"

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v17, "Unknown element under <intent-filter>: "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    .line 4773
    invoke-interface/range {p2 .. p2}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    move-result-object v17

    .line 4772
    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    .line 4773
    const-string/jumbo v17, " at "

    .line 4772
    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    .line 4773
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/content/pm/PackageParser;->mArchiveSourcePath:Ljava/lang/String;

    move-object/from16 v17, v0

    .line 4772
    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    .line 4773
    const-string/jumbo v17, " "

    .line 4772
    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    .line 4774
    invoke-interface/range {p2 .. p2}, Landroid/content/res/XmlResourceParser;->getPositionDescription()Ljava/lang/String;

    move-result-object v17

    .line 4772
    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v15 .. v16}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 4775
    invoke-static/range {p2 .. p2}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    goto/16 :goto_2

    .line 4782
    .end local v4    # "nodeName":Ljava/lang/String;
    :cond_18
    const-string/jumbo v15, "android.intent.category.DEFAULT"

    move-object/from16 v0, p5

    invoke-virtual {v0, v15}, Landroid/content/pm/PackageParser$IntentInfo;->hasCategory(Ljava/lang/String;)Z

    move-result v15

    move-object/from16 v0, p5

    iput-boolean v15, v0, Landroid/content/pm/PackageParser$IntentInfo;->hasDefault:Z

    .line 4799
    const/4 v15, 0x1

    return v15
.end method

.method private parseKeySets(Landroid/content/pm/PackageParser$Package;Landroid/content/res/Resources;Landroid/content/res/XmlResourceParser;[Ljava/lang/String;)Z
    .locals 27
    .param p1, "owner"    # Landroid/content/pm/PackageParser$Package;
    .param p2, "res"    # Landroid/content/res/Resources;
    .param p3, "parser"    # Landroid/content/res/XmlResourceParser;
    .param p4, "outError"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 2427
    invoke-interface/range {p3 .. p3}, Landroid/content/res/XmlResourceParser;->getDepth()I

    move-result v14

    .line 2428
    .local v14, "outerDepth":I
    const/4 v5, -0x1

    .line 2430
    .local v5, "currentKeySetDepth":I
    const/4 v4, 0x0

    .line 2431
    .local v4, "currentKeySet":Ljava/lang/String;
    new-instance v17, Landroid/util/ArrayMap;

    invoke-direct/range {v17 .. v17}, Landroid/util/ArrayMap;-><init>()V

    .line 2432
    .local v17, "publicKeys":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Ljava/security/PublicKey;>;"
    new-instance v23, Landroid/util/ArraySet;

    invoke-direct/range {v23 .. v23}, Landroid/util/ArraySet;-><init>()V

    .line 2433
    .local v23, "upgradeKeySets":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    new-instance v6, Landroid/util/ArrayMap;

    invoke-direct {v6}, Landroid/util/ArrayMap;-><init>()V

    .line 2434
    .local v6, "definedKeySets":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Landroid/util/ArraySet<Ljava/lang/String;>;>;"
    new-instance v10, Landroid/util/ArraySet;

    invoke-direct {v10}, Landroid/util/ArraySet;-><init>()V

    .line 2435
    .end local v4    # "currentKeySet":Ljava/lang/String;
    .local v10, "improperKeySets":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    :cond_0
    :goto_0
    invoke-interface/range {p3 .. p3}, Landroid/content/res/XmlResourceParser;->next()I

    move-result v22

    .local v22, "type":I
    const/16 v24, 0x1

    move/from16 v0, v22

    move/from16 v1, v24

    if-eq v0, v1, :cond_d

    .line 2436
    const/16 v24, 0x3

    move/from16 v0, v22

    move/from16 v1, v24

    if-ne v0, v1, :cond_1

    invoke-interface/range {p3 .. p3}, Landroid/content/res/XmlResourceParser;->getDepth()I

    move-result v24

    move/from16 v0, v24

    if-le v0, v14, :cond_d

    .line 2437
    :cond_1
    const/16 v24, 0x3

    move/from16 v0, v22

    move/from16 v1, v24

    if-ne v0, v1, :cond_2

    .line 2438
    invoke-interface/range {p3 .. p3}, Landroid/content/res/XmlResourceParser;->getDepth()I

    move-result v24

    move/from16 v0, v24

    if-ne v0, v5, :cond_0

    .line 2439
    const/4 v4, 0x0

    .line 2440
    .restart local v4    # "currentKeySet":Ljava/lang/String;
    const/4 v5, -0x1

    goto :goto_0

    .line 2444
    .end local v4    # "currentKeySet":Ljava/lang/String;
    :cond_2
    invoke-interface/range {p3 .. p3}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    move-result-object v21

    .line 2445
    .local v21, "tagName":Ljava/lang/String;
    const-string/jumbo v24, "key-set"

    move-object/from16 v0, v21

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v24

    if-eqz v24, :cond_4

    .line 2446
    if-eqz v4, :cond_3

    .line 2447
    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v25, "Improperly nested \'key-set\' tag at "

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    .line 2448
    invoke-interface/range {p3 .. p3}, Landroid/content/res/XmlResourceParser;->getPositionDescription()Ljava/lang/String;

    move-result-object v25

    .line 2447
    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    const/16 v25, 0x0

    aput-object v24, p4, v25

    .line 2449
    const/16 v24, -0x6c

    move/from16 v0, v24

    move-object/from16 v1, p0

    iput v0, v1, Landroid/content/pm/PackageParser;->mParseError:I

    .line 2450
    const/16 v24, 0x0

    return v24

    .line 2453
    :cond_3
    sget-object v24, Lcom/android/internal/R$styleable;->AndroidManifestKeySet:[I

    .line 2452
    move-object/from16 v0, p2

    move-object/from16 v1, p3

    move-object/from16 v2, v24

    invoke-virtual {v0, v1, v2}, Landroid/content/res/Resources;->obtainAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v20

    .line 2455
    .local v20, "sa":Landroid/content/res/TypedArray;
    const/16 v24, 0x0

    .line 2454
    move-object/from16 v0, v20

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->getNonResourceString(I)Ljava/lang/String;

    move-result-object v12

    .line 2456
    .local v12, "keysetName":Ljava/lang/String;
    new-instance v24, Landroid/util/ArraySet;

    invoke-direct/range {v24 .. v24}, Landroid/util/ArraySet;-><init>()V

    move-object/from16 v0, v24

    invoke-virtual {v6, v12, v0}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2457
    move-object v4, v12

    .line 2458
    .local v4, "currentKeySet":Ljava/lang/String;
    invoke-interface/range {p3 .. p3}, Landroid/content/res/XmlResourceParser;->getDepth()I

    move-result v5

    .line 2459
    invoke-virtual/range {v20 .. v20}, Landroid/content/res/TypedArray;->recycle()V

    goto/16 :goto_0

    .line 2460
    .end local v4    # "currentKeySet":Ljava/lang/String;
    .end local v12    # "keysetName":Ljava/lang/String;
    .end local v20    # "sa":Landroid/content/res/TypedArray;
    :cond_4
    const-string/jumbo v24, "public-key"

    move-object/from16 v0, v21

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v24

    if-eqz v24, :cond_b

    .line 2461
    if-nez v4, :cond_5

    .line 2462
    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v25, "Improperly nested \'key-set\' tag at "

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    .line 2463
    invoke-interface/range {p3 .. p3}, Landroid/content/res/XmlResourceParser;->getPositionDescription()Ljava/lang/String;

    move-result-object v25

    .line 2462
    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    const/16 v25, 0x0

    aput-object v24, p4, v25

    .line 2464
    const/16 v24, -0x6c

    move/from16 v0, v24

    move-object/from16 v1, p0

    iput v0, v1, Landroid/content/pm/PackageParser;->mParseError:I

    .line 2465
    const/16 v24, 0x0

    return v24

    .line 2468
    :cond_5
    sget-object v24, Lcom/android/internal/R$styleable;->AndroidManifestPublicKey:[I

    .line 2467
    move-object/from16 v0, p2

    move-object/from16 v1, p3

    move-object/from16 v2, v24

    invoke-virtual {v0, v1, v2}, Landroid/content/res/Resources;->obtainAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v20

    .line 2470
    .restart local v20    # "sa":Landroid/content/res/TypedArray;
    const/16 v24, 0x0

    .line 2469
    move-object/from16 v0, v20

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->getNonResourceString(I)Ljava/lang/String;

    move-result-object v15

    .line 2472
    .local v15, "publicKeyName":Ljava/lang/String;
    const/16 v24, 0x1

    .line 2471
    move-object/from16 v0, v20

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->getNonResourceString(I)Ljava/lang/String;

    move-result-object v9

    .line 2473
    .local v9, "encodedKey":Ljava/lang/String;
    if-nez v9, :cond_6

    move-object/from16 v0, v17

    invoke-virtual {v0, v15}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v24

    if-nez v24, :cond_6

    .line 2474
    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v25, "\'public-key\' "

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, v24

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    const-string/jumbo v25, " must define a public-key value"

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    .line 2475
    const-string/jumbo v25, " on first use at "

    .line 2474
    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    .line 2475
    invoke-interface/range {p3 .. p3}, Landroid/content/res/XmlResourceParser;->getPositionDescription()Ljava/lang/String;

    move-result-object v25

    .line 2474
    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    const/16 v25, 0x0

    aput-object v24, p4, v25

    .line 2476
    const/16 v24, -0x6c

    move/from16 v0, v24

    move-object/from16 v1, p0

    iput v0, v1, Landroid/content/pm/PackageParser;->mParseError:I

    .line 2477
    invoke-virtual/range {v20 .. v20}, Landroid/content/res/TypedArray;->recycle()V

    .line 2478
    const/16 v24, 0x0

    return v24

    .line 2479
    :cond_6
    if-eqz v9, :cond_9

    .line 2480
    invoke-static {v9}, Landroid/content/pm/PackageParser;->parsePublicKey(Ljava/lang/String;)Ljava/security/PublicKey;

    move-result-object v3

    .line 2481
    .local v3, "currentKey":Ljava/security/PublicKey;
    if-nez v3, :cond_7

    .line 2482
    const-string/jumbo v24, "PackageParser"

    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v26, "No recognized valid key in \'public-key\' tag at "

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    .line 2483
    invoke-interface/range {p3 .. p3}, Landroid/content/res/XmlResourceParser;->getPositionDescription()Ljava/lang/String;

    move-result-object v26

    .line 2482
    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    .line 2483
    const-string/jumbo v26, " key-set "

    .line 2482
    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, v25

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    .line 2484
    const-string/jumbo v26, " will not be added to the package\'s defined key-sets."

    .line 2482
    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    invoke-static/range {v24 .. v25}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2485
    invoke-virtual/range {v20 .. v20}, Landroid/content/res/TypedArray;->recycle()V

    .line 2486
    invoke-virtual {v10, v4}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 2487
    invoke-static/range {p3 .. p3}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    goto/16 :goto_0

    .line 2490
    :cond_7
    move-object/from16 v0, v17

    invoke-virtual {v0, v15}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v24

    if-eqz v24, :cond_8

    .line 2491
    move-object/from16 v0, v17

    invoke-virtual {v0, v15}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v24

    check-cast v24, Ljava/security/PublicKey;

    move-object/from16 v0, v24

    invoke-virtual {v0, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v24

    .line 2490
    if-eqz v24, :cond_a

    .line 2494
    :cond_8
    move-object/from16 v0, v17

    invoke-virtual {v0, v15, v3}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2504
    .end local v3    # "currentKey":Ljava/security/PublicKey;
    :cond_9
    invoke-virtual {v6, v4}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v24

    check-cast v24, Landroid/util/ArraySet;

    move-object/from16 v0, v24

    invoke-virtual {v0, v15}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 2505
    invoke-virtual/range {v20 .. v20}, Landroid/content/res/TypedArray;->recycle()V

    .line 2506
    invoke-static/range {p3 .. p3}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    goto/16 :goto_0

    .line 2496
    .restart local v3    # "currentKey":Ljava/security/PublicKey;
    :cond_a
    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v25, "Value of \'public-key\' "

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, v24

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    .line 2497
    const-string/jumbo v25, " conflicts with previously defined value at "

    .line 2496
    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    .line 2498
    invoke-interface/range {p3 .. p3}, Landroid/content/res/XmlResourceParser;->getPositionDescription()Ljava/lang/String;

    move-result-object v25

    .line 2496
    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    const/16 v25, 0x0

    aput-object v24, p4, v25

    .line 2499
    const/16 v24, -0x6c

    move/from16 v0, v24

    move-object/from16 v1, p0

    iput v0, v1, Landroid/content/pm/PackageParser;->mParseError:I

    .line 2500
    invoke-virtual/range {v20 .. v20}, Landroid/content/res/TypedArray;->recycle()V

    .line 2501
    const/16 v24, 0x0

    return v24

    .line 2507
    .end local v3    # "currentKey":Ljava/security/PublicKey;
    .end local v9    # "encodedKey":Ljava/lang/String;
    .end local v15    # "publicKeyName":Ljava/lang/String;
    .end local v20    # "sa":Landroid/content/res/TypedArray;
    :cond_b
    const-string/jumbo v24, "upgrade-key-set"

    move-object/from16 v0, v21

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v24

    if-eqz v24, :cond_c

    .line 2509
    sget-object v24, Lcom/android/internal/R$styleable;->AndroidManifestUpgradeKeySet:[I

    .line 2508
    move-object/from16 v0, p2

    move-object/from16 v1, p3

    move-object/from16 v2, v24

    invoke-virtual {v0, v1, v2}, Landroid/content/res/Resources;->obtainAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v20

    .line 2511
    .restart local v20    # "sa":Landroid/content/res/TypedArray;
    const/16 v24, 0x0

    .line 2510
    move-object/from16 v0, v20

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->getNonResourceString(I)Ljava/lang/String;

    move-result-object v13

    .line 2512
    .local v13, "name":Ljava/lang/String;
    move-object/from16 v0, v23

    invoke-virtual {v0, v13}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 2513
    invoke-virtual/range {v20 .. v20}, Landroid/content/res/TypedArray;->recycle()V

    .line 2514
    invoke-static/range {p3 .. p3}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    goto/16 :goto_0

    .line 2522
    .end local v13    # "name":Ljava/lang/String;
    .end local v20    # "sa":Landroid/content/res/TypedArray;
    :cond_c
    const-string/jumbo v24, "PackageParser"

    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v26, "Unknown element under <key-sets>: "

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-interface/range {p3 .. p3}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    move-result-object v26

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    .line 2523
    const-string/jumbo v26, " at "

    .line 2522
    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    .line 2523
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/content/pm/PackageParser;->mArchiveSourcePath:Ljava/lang/String;

    move-object/from16 v26, v0

    .line 2522
    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    .line 2523
    const-string/jumbo v26, " "

    .line 2522
    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    .line 2524
    invoke-interface/range {p3 .. p3}, Landroid/content/res/XmlResourceParser;->getPositionDescription()Ljava/lang/String;

    move-result-object v26

    .line 2522
    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    invoke-static/range {v24 .. v25}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2525
    invoke-static/range {p3 .. p3}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    goto/16 :goto_0

    .line 2529
    .end local v21    # "tagName":Ljava/lang/String;
    :cond_d
    invoke-virtual/range {v17 .. v17}, Landroid/util/ArrayMap;->keySet()Ljava/util/Set;

    move-result-object v16

    .line 2530
    .local v16, "publicKeyNames":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    invoke-virtual {v6}, Landroid/util/ArrayMap;->keySet()Ljava/util/Set;

    move-result-object v24

    move-object/from16 v0, v16

    move-object/from16 v1, v24

    invoke-interface {v0, v1}, Ljava/util/Set;->removeAll(Ljava/util/Collection;)Z

    move-result v24

    if-eqz v24, :cond_e

    .line 2531
    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v25, "Package"

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/content/pm/PackageParser$Package;->packageName:Ljava/lang/String;

    move-object/from16 v25, v0

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    const-string/jumbo v25, " AndroidManifext.xml "

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    .line 2532
    const-string/jumbo v25, "\'key-set\' and \'public-key\' names must be distinct."

    .line 2531
    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    const/16 v25, 0x0

    aput-object v24, p4, v25

    .line 2533
    const/16 v24, -0x6c

    move/from16 v0, v24

    move-object/from16 v1, p0

    iput v0, v1, Landroid/content/pm/PackageParser;->mParseError:I

    .line 2534
    const/16 v24, 0x0

    return v24

    .line 2536
    :cond_e
    new-instance v24, Landroid/util/ArrayMap;

    invoke-direct/range {v24 .. v24}, Landroid/util/ArrayMap;-><init>()V

    move-object/from16 v0, v24

    move-object/from16 v1, p1

    iput-object v0, v1, Landroid/content/pm/PackageParser$Package;->mKeySetMapping:Landroid/util/ArrayMap;

    .line 2537
    invoke-virtual {v6}, Landroid/util/ArrayMap;->entrySet()Ljava/util/Set;

    move-result-object v24

    invoke-interface/range {v24 .. v24}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v8

    .local v8, "e$iterator":Ljava/util/Iterator;
    :cond_f
    :goto_1
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v24

    if-eqz v24, :cond_12

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/Map$Entry;

    .line 2538
    .local v7, "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Landroid/util/ArraySet<Ljava/lang/String;>;>;"
    invoke-interface {v7}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/String;

    .line 2539
    .local v11, "keySetName":Ljava/lang/String;
    invoke-interface {v7}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v24

    check-cast v24, Landroid/util/ArraySet;

    invoke-virtual/range {v24 .. v24}, Landroid/util/ArraySet;->size()I

    move-result v24

    if-nez v24, :cond_10

    .line 2540
    const-string/jumbo v24, "PackageParser"

    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v26, "Package"

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/content/pm/PackageParser$Package;->packageName:Ljava/lang/String;

    move-object/from16 v26, v0

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    const-string/jumbo v26, " AndroidManifext.xml "

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    .line 2541
    const-string/jumbo v26, "\'key-set\' "

    .line 2540
    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, v25

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    .line 2541
    const-string/jumbo v26, " has no valid associated \'public-key\'."

    .line 2540
    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    .line 2542
    const-string/jumbo v26, " Not including in package\'s defined key-sets."

    .line 2540
    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    invoke-static/range {v24 .. v25}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 2544
    :cond_10
    invoke-virtual {v10, v11}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v24

    if-eqz v24, :cond_11

    .line 2545
    const-string/jumbo v24, "PackageParser"

    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v26, "Package"

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/content/pm/PackageParser$Package;->packageName:Ljava/lang/String;

    move-object/from16 v26, v0

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    const-string/jumbo v26, " AndroidManifext.xml "

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    .line 2546
    const-string/jumbo v26, "\'key-set\' "

    .line 2545
    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, v25

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    .line 2546
    const-string/jumbo v26, " contained improper \'public-key\'"

    .line 2545
    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    .line 2547
    const-string/jumbo v26, " tags. Not including in package\'s defined key-sets."

    .line 2545
    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    invoke-static/range {v24 .. v25}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 2550
    :cond_11
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/content/pm/PackageParser$Package;->mKeySetMapping:Landroid/util/ArrayMap;

    move-object/from16 v24, v0

    new-instance v25, Landroid/util/ArraySet;

    invoke-direct/range {v25 .. v25}, Landroid/util/ArraySet;-><init>()V

    move-object/from16 v0, v24

    move-object/from16 v1, v25

    invoke-virtual {v0, v11, v1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2551
    invoke-interface {v7}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v24

    check-cast v24, Landroid/util/ArraySet;

    invoke-interface/range {v24 .. v24}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v19

    .local v19, "s$iterator":Ljava/util/Iterator;
    :goto_2
    invoke-interface/range {v19 .. v19}, Ljava/util/Iterator;->hasNext()Z

    move-result v24

    if-eqz v24, :cond_f

    invoke-interface/range {v19 .. v19}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Ljava/lang/String;

    .line 2552
    .local v18, "s":Ljava/lang/String;
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/content/pm/PackageParser$Package;->mKeySetMapping:Landroid/util/ArrayMap;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    invoke-virtual {v0, v11}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v24

    check-cast v24, Landroid/util/ArraySet;

    invoke-virtual/range {v17 .. v18}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v25

    check-cast v25, Ljava/security/PublicKey;

    invoke-virtual/range {v24 .. v25}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 2555
    .end local v7    # "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Landroid/util/ArraySet<Ljava/lang/String;>;>;"
    .end local v11    # "keySetName":Ljava/lang/String;
    .end local v18    # "s":Ljava/lang/String;
    .end local v19    # "s$iterator":Ljava/util/Iterator;
    :cond_12
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/content/pm/PackageParser$Package;->mKeySetMapping:Landroid/util/ArrayMap;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Landroid/util/ArrayMap;->keySet()Ljava/util/Set;

    move-result-object v24

    move-object/from16 v0, v24

    move-object/from16 v1, v23

    invoke-interface {v0, v1}, Ljava/util/Set;->containsAll(Ljava/util/Collection;)Z

    move-result v24

    if-eqz v24, :cond_13

    .line 2556
    move-object/from16 v0, v23

    move-object/from16 v1, p1

    iput-object v0, v1, Landroid/content/pm/PackageParser$Package;->mUpgradeKeySets:Landroid/util/ArraySet;

    .line 2563
    const/16 v24, 0x1

    return v24

    .line 2558
    :cond_13
    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v25, "Package"

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/content/pm/PackageParser$Package;->packageName:Ljava/lang/String;

    move-object/from16 v25, v0

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    const-string/jumbo v25, " AndroidManifext.xml "

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    .line 2559
    const-string/jumbo v25, "does not define all \'upgrade-key-set\'s ."

    .line 2558
    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    const/16 v25, 0x0

    aput-object v24, p4, v25

    .line 2560
    const/16 v24, -0x6c

    move/from16 v0, v24

    move-object/from16 v1, p0

    iput v0, v1, Landroid/content/pm/PackageParser;->mParseError:I

    .line 2561
    const/16 v24, 0x0

    return v24
.end method

.method private parseLayout(Landroid/content/res/Resources;Landroid/util/AttributeSet;Landroid/content/pm/PackageParser$Activity;)V
    .locals 16
    .param p1, "res"    # Landroid/content/res/Resources;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "a"    # Landroid/content/pm/PackageParser$Activity;

    .prologue
    .line 3776
    sget-object v2, Lcom/android/internal/R$styleable;->AndroidManifestLayout:[I

    .line 3775
    move-object/from16 v0, p1

    move-object/from16 v1, p2

    invoke-virtual {v0, v1, v2}, Landroid/content/res/Resources;->obtainAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v11

    .line 3777
    .local v11, "sw":Landroid/content/res/TypedArray;
    const/4 v3, -0x1

    .line 3778
    .local v3, "width":I
    const/high16 v4, -0x40800000    # -1.0f

    .line 3779
    .local v4, "widthFraction":F
    const/4 v5, -0x1

    .line 3780
    .local v5, "height":I
    const/high16 v6, -0x40800000    # -1.0f

    .line 3782
    .local v6, "heightFraction":F
    const/4 v2, 0x3

    .line 3781
    invoke-virtual {v11, v2}, Landroid/content/res/TypedArray;->getType(I)I

    move-result v12

    .line 3783
    .local v12, "widthType":I
    const/4 v2, 0x6

    if-ne v12, v2, :cond_2

    .line 3786
    const/high16 v2, -0x40800000    # -1.0f

    .line 3785
    const/4 v13, 0x3

    .line 3786
    const/4 v14, 0x1

    const/4 v15, 0x1

    .line 3784
    invoke-virtual {v11, v13, v14, v15, v2}, Landroid/content/res/TypedArray;->getFraction(IIIF)F

    move-result v4

    .line 3793
    :cond_0
    :goto_0
    const/4 v2, 0x4

    .line 3792
    invoke-virtual {v11, v2}, Landroid/content/res/TypedArray;->getType(I)I

    move-result v10

    .line 3794
    .local v10, "heightType":I
    const/4 v2, 0x6

    if-ne v10, v2, :cond_3

    .line 3797
    const/high16 v2, -0x40800000    # -1.0f

    .line 3796
    const/4 v13, 0x4

    .line 3797
    const/4 v14, 0x1

    const/4 v15, 0x1

    .line 3795
    invoke-virtual {v11, v13, v14, v15, v2}, Landroid/content/res/TypedArray;->getFraction(IIIF)F

    move-result v6

    .line 3804
    :cond_1
    :goto_1
    const/4 v2, 0x0

    .line 3805
    const/16 v13, 0x11

    .line 3803
    invoke-virtual {v11, v2, v13}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v7

    .line 3807
    .local v7, "gravity":I
    const/4 v2, 0x1

    .line 3808
    const/4 v13, -0x1

    .line 3806
    invoke-virtual {v11, v2, v13}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v8

    .line 3810
    .local v8, "minWidth":I
    const/4 v2, 0x2

    .line 3811
    const/4 v13, -0x1

    .line 3809
    invoke-virtual {v11, v2, v13}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v9

    .line 3812
    .local v9, "minHeight":I
    invoke-virtual {v11}, Landroid/content/res/TypedArray;->recycle()V

    .line 3813
    move-object/from16 v0, p3

    iget-object v13, v0, Landroid/content/pm/PackageParser$Activity;->info:Landroid/content/pm/ActivityInfo;

    new-instance v2, Landroid/content/pm/ActivityInfo$WindowLayout;

    invoke-direct/range {v2 .. v9}, Landroid/content/pm/ActivityInfo$WindowLayout;-><init>(IFIFIII)V

    iput-object v2, v13, Landroid/content/pm/ActivityInfo;->windowLayout:Landroid/content/pm/ActivityInfo$WindowLayout;

    .line 3774
    return-void

    .line 3787
    .end local v7    # "gravity":I
    .end local v8    # "minWidth":I
    .end local v9    # "minHeight":I
    .end local v10    # "heightType":I
    :cond_2
    const/4 v2, 0x5

    if-ne v12, v2, :cond_0

    .line 3789
    const/4 v2, 0x3

    .line 3790
    const/4 v13, -0x1

    .line 3788
    invoke-virtual {v11, v2, v13}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v3

    goto :goto_0

    .line 3798
    .restart local v10    # "heightType":I
    :cond_3
    const/4 v2, 0x5

    if-ne v10, v2, :cond_1

    .line 3800
    const/4 v2, 0x4

    .line 3801
    const/4 v13, -0x1

    .line 3799
    invoke-virtual {v11, v2, v13}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v5

    goto :goto_1
.end method

.method private parseMetaData(Landroid/content/res/Resources;Landroid/content/res/XmlResourceParser;Landroid/os/Bundle;[Ljava/lang/String;)Landroid/os/Bundle;
    .locals 9
    .param p1, "res"    # Landroid/content/res/Resources;
    .param p2, "parser"    # Landroid/content/res/XmlResourceParser;
    .param p3, "data"    # Landroid/os/Bundle;
    .param p4, "outError"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    const/4 v6, 0x0

    .line 4485
    sget-object v7, Lcom/android/internal/R$styleable;->AndroidManifestMetaData:[I

    .line 4484
    invoke-virtual {p1, p2, v7}, Landroid/content/res/Resources;->obtainAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v2

    .line 4487
    .local v2, "sa":Landroid/content/res/TypedArray;
    if-nez p3, :cond_0

    .line 4488
    new-instance p3, Landroid/os/Bundle;

    .end local p3    # "data":Landroid/os/Bundle;
    invoke-direct {p3}, Landroid/os/Bundle;-><init>()V

    .line 4491
    .restart local p3    # "data":Landroid/os/Bundle;
    :cond_0
    invoke-virtual {v2, v6, v6}, Landroid/content/res/TypedArray;->getNonConfigurationString(II)Ljava/lang/String;

    move-result-object v1

    .line 4493
    .local v1, "name":Ljava/lang/String;
    if-nez v1, :cond_1

    .line 4494
    const-string/jumbo v5, "<meta-data> requires an android:name attribute"

    aput-object v5, p4, v6

    .line 4495
    invoke-virtual {v2}, Landroid/content/res/TypedArray;->recycle()V

    .line 4496
    return-object v4

    .line 4499
    :cond_1
    invoke-virtual {v1}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v1

    .line 4502
    const/4 v7, 0x2

    .line 4501
    invoke-virtual {v2, v7}, Landroid/content/res/TypedArray;->peekValue(I)Landroid/util/TypedValue;

    move-result-object v3

    .line 4503
    .local v3, "v":Landroid/util/TypedValue;
    if-eqz v3, :cond_2

    iget v7, v3, Landroid/util/TypedValue;->resourceId:I

    if-eqz v7, :cond_2

    .line 4505
    iget v4, v3, Landroid/util/TypedValue;->resourceId:I

    invoke-virtual {p3, v1, v4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 4537
    .end local p3    # "data":Landroid/os/Bundle;
    :goto_0
    invoke-virtual {v2}, Landroid/content/res/TypedArray;->recycle()V

    .line 4539
    invoke-static {p2}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    .line 4541
    return-object p3

    .line 4507
    .restart local p3    # "data":Landroid/os/Bundle;
    :cond_2
    invoke-virtual {v2, v5}, Landroid/content/res/TypedArray;->peekValue(I)Landroid/util/TypedValue;

    move-result-object v3

    .line 4510
    if-eqz v3, :cond_9

    .line 4511
    iget v7, v3, Landroid/util/TypedValue;->type:I

    const/4 v8, 0x3

    if-ne v7, v8, :cond_4

    .line 4512
    invoke-virtual {v3}, Landroid/util/TypedValue;->coerceToString()Ljava/lang/CharSequence;

    move-result-object v0

    .line 4513
    .local v0, "cs":Ljava/lang/CharSequence;
    if-eqz v0, :cond_3

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v4

    :cond_3
    invoke-virtual {p3, v1, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 4514
    .end local v0    # "cs":Ljava/lang/CharSequence;
    :cond_4
    iget v4, v3, Landroid/util/TypedValue;->type:I

    const/16 v7, 0x12

    if-ne v4, v7, :cond_6

    .line 4515
    iget v4, v3, Landroid/util/TypedValue;->data:I

    if-eqz v4, :cond_5

    move v4, v5

    :goto_1
    invoke-virtual {p3, v1, v4}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    goto :goto_0

    :cond_5
    move v4, v6

    goto :goto_1

    .line 4516
    :cond_6
    iget v4, v3, Landroid/util/TypedValue;->type:I

    const/16 v5, 0x10

    if-lt v4, v5, :cond_7

    .line 4517
    iget v4, v3, Landroid/util/TypedValue;->type:I

    const/16 v5, 0x1f

    if-gt v4, v5, :cond_7

    .line 4518
    iget v4, v3, Landroid/util/TypedValue;->data:I

    invoke-virtual {p3, v1, v4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    goto :goto_0

    .line 4519
    :cond_7
    iget v4, v3, Landroid/util/TypedValue;->type:I

    const/4 v5, 0x4

    if-ne v4, v5, :cond_8

    .line 4520
    invoke-virtual {v3}, Landroid/util/TypedValue;->getFloat()F

    move-result v4

    invoke-virtual {p3, v1, v4}, Landroid/os/Bundle;->putFloat(Ljava/lang/String;F)V

    goto :goto_0

    .line 4523
    :cond_8
    const-string/jumbo v4, "PackageParser"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "<meta-data> only supports string, integer, float, color, boolean, and resource reference types: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 4524
    invoke-interface {p2}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    move-result-object v6

    .line 4523
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 4524
    const-string/jumbo v6, " at "

    .line 4523
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 4524
    iget-object v6, p0, Landroid/content/pm/PackageParser;->mArchiveSourcePath:Ljava/lang/String;

    .line 4523
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 4524
    const-string/jumbo v6, " "

    .line 4523
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 4525
    invoke-interface {p2}, Landroid/content/res/XmlResourceParser;->getPositionDescription()Ljava/lang/String;

    move-result-object v6

    .line 4523
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 4532
    :cond_9
    const-string/jumbo v4, "<meta-data> requires an android:value or android:resource attribute"

    aput-object v4, p4, v6

    .line 4533
    const/4 p3, 0x0

    .local p3, "data":Landroid/os/Bundle;
    goto/16 :goto_0
.end method

.method private static parseMonolithicPackageLite(Ljava/io/File;I)Landroid/content/pm/PackageParser$PackageLite;
    .locals 6
    .param p0, "packageFile"    # Ljava/io/File;
    .param p1, "flags"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/pm/PackageParser$PackageParserException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 727
    invoke-static {p0, p1}, Landroid/content/pm/PackageParser;->parseApkLite(Ljava/io/File;I)Landroid/content/pm/PackageParser$ApkLite;

    move-result-object v2

    .line 728
    .local v2, "baseApk":Landroid/content/pm/PackageParser$ApkLite;
    invoke-virtual {p0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    .line 729
    .local v1, "packagePath":Ljava/lang/String;
    new-instance v0, Landroid/content/pm/PackageParser$PackageLite;

    move-object v4, v3

    move-object v5, v3

    invoke-direct/range {v0 .. v5}, Landroid/content/pm/PackageParser$PackageLite;-><init>(Ljava/lang/String;Landroid/content/pm/PackageParser$ApkLite;[Ljava/lang/String;[Ljava/lang/String;[I)V

    return-object v0
.end method

.method private static parsePackageItemInfo(Landroid/content/pm/PackageParser$Package;Landroid/content/pm/PackageItemInfo;[Ljava/lang/String;Ljava/lang/String;Landroid/content/res/TypedArray;ZIIIIII)Z
    .locals 10
    .param p0, "owner"    # Landroid/content/pm/PackageParser$Package;
    .param p1, "outInfo"    # Landroid/content/pm/PackageItemInfo;
    .param p2, "outError"    # [Ljava/lang/String;
    .param p3, "tag"    # Ljava/lang/String;
    .param p4, "sa"    # Landroid/content/res/TypedArray;
    .param p5, "nameRequired"    # Z
    .param p6, "nameRes"    # I
    .param p7, "labelRes"    # I
    .param p8, "iconRes"    # I
    .param p9, "roundIconRes"    # I
    .param p10, "logoRes"    # I
    .param p11, "bannerRes"    # I

    .prologue
    .line 3402
    const/4 v8, 0x0

    move/from16 v0, p6

    invoke-virtual {p4, v0, v8}, Landroid/content/res/TypedArray;->getNonConfigurationString(II)Ljava/lang/String;

    move-result-object v4

    .line 3403
    .local v4, "name":Ljava/lang/String;
    if-nez v4, :cond_0

    .line 3404
    if-eqz p5, :cond_1

    .line 3405
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, " does not specify android:name"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    const/4 v9, 0x0

    aput-object v8, p2, v9

    .line 3406
    const/4 v8, 0x0

    return v8

    .line 3410
    :cond_0
    iget-object v8, p0, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v8, v8, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-static {v8, v4, p2}, Landroid/content/pm/PackageParser;->buildClassName(Ljava/lang/String;Ljava/lang/CharSequence;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 3409
    iput-object v8, p1, Landroid/content/pm/PackageItemInfo;->name:Ljava/lang/String;

    .line 3411
    iget-object v8, p1, Landroid/content/pm/PackageItemInfo;->name:Ljava/lang/String;

    if-nez v8, :cond_1

    .line 3412
    const/4 v8, 0x0

    return v8

    .line 3417
    :cond_1
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v8

    const v9, #android:bool@config_useRoundIcon#t

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v6

    .line 3418
    .local v6, "useRoundIcon":Z
    if-eqz v6, :cond_6

    const/4 v8, 0x0

    move/from16 v0, p9

    invoke-virtual {p4, v0, v8}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v5

    .line 3419
    .local v5, "roundIconVal":I
    :goto_0
    if-eqz v5, :cond_7

    .line 3420
    iput v5, p1, Landroid/content/pm/PackageItemInfo;->icon:I

    .line 3421
    const/4 v8, 0x0

    iput-object v8, p1, Landroid/content/pm/PackageItemInfo;->nonLocalizedLabel:Ljava/lang/CharSequence;

    .line 3430
    :cond_2
    :goto_1
    const/4 v8, 0x0

    move/from16 v0, p10

    invoke-virtual {p4, v0, v8}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v3

    .line 3431
    .local v3, "logoVal":I
    if-eqz v3, :cond_3

    .line 3432
    iput v3, p1, Landroid/content/pm/PackageItemInfo;->logo:I

    .line 3435
    :cond_3
    const/4 v8, 0x0

    move/from16 v0, p11

    invoke-virtual {p4, v0, v8}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v1

    .line 3436
    .local v1, "bannerVal":I
    if-eqz v1, :cond_4

    .line 3437
    iput v1, p1, Landroid/content/pm/PackageItemInfo;->banner:I

    .line 3440
    :cond_4
    move/from16 v0, p7

    invoke-virtual {p4, v0}, Landroid/content/res/TypedArray;->peekValue(I)Landroid/util/TypedValue;

    move-result-object v7

    .line 3441
    .local v7, "v":Landroid/util/TypedValue;
    if-eqz v7, :cond_5

    iget v8, v7, Landroid/util/TypedValue;->resourceId:I

    iput v8, p1, Landroid/content/pm/PackageItemInfo;->labelRes:I

    if-nez v8, :cond_5

    .line 3442
    invoke-virtual {v7}, Landroid/util/TypedValue;->coerceToString()Ljava/lang/CharSequence;

    move-result-object v8

    iput-object v8, p1, Landroid/content/pm/PackageItemInfo;->nonLocalizedLabel:Ljava/lang/CharSequence;

    .line 3445
    :cond_5
    iget-object v8, p0, Landroid/content/pm/PackageParser$Package;->packageName:Ljava/lang/String;

    iput-object v8, p1, Landroid/content/pm/PackageItemInfo;->packageName:Ljava/lang/String;

    .line 3447
    const/4 v8, 0x1

    return v8

    .line 3418
    .end local v1    # "bannerVal":I
    .end local v3    # "logoVal":I
    .end local v5    # "roundIconVal":I
    .end local v7    # "v":Landroid/util/TypedValue;
    :cond_6
    const/4 v5, 0x0

    goto :goto_0

    .line 3423
    .restart local v5    # "roundIconVal":I
    :cond_7
    const/4 v8, 0x0

    move/from16 v0, p8

    invoke-virtual {p4, v0, v8}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v2

    .line 3424
    .local v2, "iconVal":I
    if-eqz v2, :cond_2

    .line 3425
    iput v2, p1, Landroid/content/pm/PackageItemInfo;->icon:I

    .line 3426
    const/4 v8, 0x0

    iput-object v8, p1, Landroid/content/pm/PackageItemInfo;->nonLocalizedLabel:Ljava/lang/CharSequence;

    goto :goto_1
.end method

.method public static parsePackageLite(Ljava/io/File;I)Landroid/content/pm/PackageParser$PackageLite;
    .locals 1
    .param p0, "packageFile"    # Ljava/io/File;
    .param p1, "flags"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/pm/PackageParser$PackageParserException;
        }
    .end annotation

    .prologue
    .line 718
    invoke-virtual {p0}, Ljava/io/File;->isDirectory()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 719
    invoke-static {p0, p1}, Landroid/content/pm/PackageParser;->parseClusterPackageLite(Ljava/io/File;I)Landroid/content/pm/PackageParser$PackageLite;

    move-result-object v0

    return-object v0

    .line 721
    :cond_0
    invoke-static {p0, p1}, Landroid/content/pm/PackageParser;->parseMonolithicPackageLite(Ljava/io/File;I)Landroid/content/pm/PackageParser$PackageLite;

    move-result-object v0

    return-object v0
.end method

.method private static parsePackageSplitNames(Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;)Landroid/util/Pair;
    .locals 11
    .param p0, "parser"    # Lorg/xmlpull/v1/XmlPullParser;
    .param p1, "attrs"    # Landroid/util/AttributeSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/xmlpull/v1/XmlPullParser;",
            "Landroid/util/AttributeSet;",
            ")",
            "Landroid/util/Pair",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/xmlpull/v1/XmlPullParserException;,
            Landroid/content/pm/PackageParser$PackageParserException;
        }
    .end annotation

    .prologue
    const/16 v10, -0x6a

    const/16 v9, -0x6c

    const/4 v8, 0x1

    const/4 v7, 0x0

    const/4 v6, 0x0

    .line 1457
    :cond_0
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v3

    .local v3, "type":I
    const/4 v4, 0x2

    if-eq v3, v4, :cond_1

    .line 1458
    if-ne v3, v8, :cond_0

    .line 1461
    :cond_1
    const/4 v4, 0x2

    if-eq v3, v4, :cond_2

    .line 1462
    new-instance v4, Landroid/content/pm/PackageParser$PackageParserException;

    .line 1463
    const-string/jumbo v5, "No start tag found"

    .line 1462
    invoke-direct {v4, v9, v5}, Landroid/content/pm/PackageParser$PackageParserException;-><init>(ILjava/lang/String;)V

    throw v4

    .line 1465
    :cond_2
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v5, "manifest"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_3

    .line 1466
    new-instance v4, Landroid/content/pm/PackageParser$PackageParserException;

    .line 1467
    const-string/jumbo v5, "No <manifest> tag"

    .line 1466
    invoke-direct {v4, v9, v5}, Landroid/content/pm/PackageParser$PackageParserException;-><init>(ILjava/lang/String;)V

    throw v4

    .line 1470
    :cond_3
    const-string/jumbo v4, "package"

    invoke-interface {p1, v6, v4}, Landroid/util/AttributeSet;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1471
    .local v1, "packageName":Ljava/lang/String;
    const-string/jumbo v4, "android"

    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_4

    .line 1472
    invoke-static {v1, v8, v8}, Landroid/content/pm/PackageParser;->validateName(Ljava/lang/String;ZZ)Ljava/lang/String;

    move-result-object v0

    .line 1473
    .local v0, "error":Ljava/lang/String;
    if-eqz v0, :cond_4

    .line 1474
    new-instance v4, Landroid/content/pm/PackageParser$PackageParserException;

    .line 1475
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "Invalid manifest package: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 1474
    invoke-direct {v4, v10, v5}, Landroid/content/pm/PackageParser$PackageParserException;-><init>(ILjava/lang/String;)V

    throw v4

    .line 1479
    .end local v0    # "error":Ljava/lang/String;
    :cond_4
    const-string/jumbo v4, "split"

    invoke-interface {p1, v6, v4}, Landroid/util/AttributeSet;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1480
    .local v2, "splitName":Ljava/lang/String;
    if-eqz v2, :cond_5

    .line 1481
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v4

    if-nez v4, :cond_7

    .line 1482
    const/4 v2, 0x0

    .line 1492
    .end local v2    # "splitName":Ljava/lang/String;
    :cond_5
    invoke-virtual {v1}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v4

    .line 1493
    if-eqz v2, :cond_6

    invoke-virtual {v2}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v2

    .line 1492
    :cond_6
    invoke-static {v4, v2}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v4

    return-object v4

    .line 1484
    .restart local v2    # "splitName":Ljava/lang/String;
    :cond_7
    invoke-static {v2, v7, v7}, Landroid/content/pm/PackageParser;->validateName(Ljava/lang/String;ZZ)Ljava/lang/String;

    move-result-object v0

    .line 1485
    .restart local v0    # "error":Ljava/lang/String;
    if-eqz v0, :cond_5

    .line 1486
    new-instance v4, Landroid/content/pm/PackageParser$PackageParserException;

    .line 1487
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "Invalid manifest split: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 1486
    invoke-direct {v4, v10, v5}, Landroid/content/pm/PackageParser$PackageParserException;-><init>(ILjava/lang/String;)V

    throw v4
.end method

.method private parsePermission(Landroid/content/pm/PackageParser$Package;Landroid/content/res/Resources;Landroid/content/res/XmlResourceParser;[Ljava/lang/String;)Landroid/content/pm/PackageParser$Permission;
    .locals 15
    .param p1, "owner"    # Landroid/content/pm/PackageParser$Package;
    .param p2, "res"    # Landroid/content/res/Resources;
    .param p3, "parser"    # Landroid/content/res/XmlResourceParser;
    .param p4, "outError"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 2613
    new-instance v14, Landroid/content/pm/PackageParser$Permission;

    move-object/from16 v0, p1

    invoke-direct {v14, v0}, Landroid/content/pm/PackageParser$Permission;-><init>(Landroid/content/pm/PackageParser$Package;)V

    .line 2616
    .local v14, "perm":Landroid/content/pm/PackageParser$Permission;
    sget-object v2, Lcom/android/internal/R$styleable;->AndroidManifestPermission:[I

    .line 2615
    move-object/from16 v0, p2

    move-object/from16 v1, p3

    invoke-virtual {v0, v1, v2}, Landroid/content/res/Resources;->obtainAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v6

    .line 2618
    .local v6, "sa":Landroid/content/res/TypedArray;
    iget-object v3, v14, Landroid/content/pm/PackageParser$Permission;->info:Landroid/content/pm/PermissionInfo;

    .line 2619
    const-string/jumbo v5, "<permission>"

    const/4 v7, 0x1

    .line 2620
    const/4 v8, 0x2

    .line 2621
    const/4 v9, 0x0

    .line 2622
    const/4 v10, 0x1

    .line 2623
    const/16 v11, 0x9

    .line 2624
    const/4 v12, 0x6

    .line 2625
    const/16 v13, 0x8

    move-object/from16 v2, p1

    move-object/from16 v4, p4

    .line 2618
    invoke-static/range {v2 .. v13}, Landroid/content/pm/PackageParser;->parsePackageItemInfo(Landroid/content/pm/PackageParser$Package;Landroid/content/pm/PackageItemInfo;[Ljava/lang/String;Ljava/lang/String;Landroid/content/res/TypedArray;ZIIIIII)Z

    move-result v2

    if-nez v2, :cond_0

    .line 2626
    invoke-virtual {v6}, Landroid/content/res/TypedArray;->recycle()V

    .line 2627
    const/16 v2, -0x6c

    iput v2, p0, Landroid/content/pm/PackageParser;->mParseError:I

    .line 2628
    const/4 v2, 0x0

    return-object v2

    .line 2633
    :cond_0
    iget-object v2, v14, Landroid/content/pm/PackageParser$Permission;->info:Landroid/content/pm/PermissionInfo;

    .line 2634
    const/4 v3, 0x4

    .line 2633
    invoke-virtual {v6, v3}, Landroid/content/res/TypedArray;->getNonResourceString(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Landroid/content/pm/PermissionInfo;->group:Ljava/lang/String;

    .line 2635
    iget-object v2, v14, Landroid/content/pm/PackageParser$Permission;->info:Landroid/content/pm/PermissionInfo;

    iget-object v2, v2, Landroid/content/pm/PermissionInfo;->group:Ljava/lang/String;

    if-eqz v2, :cond_1

    .line 2636
    iget-object v2, v14, Landroid/content/pm/PackageParser$Permission;->info:Landroid/content/pm/PermissionInfo;

    iget-object v3, v14, Landroid/content/pm/PackageParser$Permission;->info:Landroid/content/pm/PermissionInfo;

    iget-object v3, v3, Landroid/content/pm/PermissionInfo;->group:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Landroid/content/pm/PermissionInfo;->group:Ljava/lang/String;

    .line 2639
    :cond_1
    iget-object v2, v14, Landroid/content/pm/PackageParser$Permission;->info:Landroid/content/pm/PermissionInfo;

    .line 2640
    const/4 v3, 0x5

    .line 2641
    const/4 v4, 0x0

    .line 2639
    invoke-virtual {v6, v3, v4}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v3

    iput v3, v2, Landroid/content/pm/PermissionInfo;->descriptionRes:I

    .line 2643
    iget-object v2, v14, Landroid/content/pm/PackageParser$Permission;->info:Landroid/content/pm/PermissionInfo;

    .line 2644
    const/4 v3, 0x3

    .line 2645
    const/4 v4, 0x0

    .line 2643
    invoke-virtual {v6, v3, v4}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v3

    iput v3, v2, Landroid/content/pm/PermissionInfo;->protectionLevel:I

    .line 2647
    iget-object v2, v14, Landroid/content/pm/PackageParser$Permission;->info:Landroid/content/pm/PermissionInfo;

    .line 2648
    const/4 v3, 0x7

    const/4 v4, 0x0

    .line 2647
    invoke-virtual {v6, v3, v4}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v3

    iput v3, v2, Landroid/content/pm/PermissionInfo;->flags:I

    .line 2650
    invoke-virtual {v6}, Landroid/content/res/TypedArray;->recycle()V

    .line 2652
    iget-object v2, v14, Landroid/content/pm/PackageParser$Permission;->info:Landroid/content/pm/PermissionInfo;

    iget v2, v2, Landroid/content/pm/PermissionInfo;->protectionLevel:I

    const/4 v3, -0x1

    if-ne v2, v3, :cond_2

    .line 2653
    const-string/jumbo v2, "<permission> does not specify protectionLevel"

    const/4 v3, 0x0

    aput-object v2, p4, v3

    .line 2654
    const/16 v2, -0x6c

    iput v2, p0, Landroid/content/pm/PackageParser;->mParseError:I

    .line 2655
    const/4 v2, 0x0

    return-object v2

    .line 2658
    :cond_2
    iget-object v2, v14, Landroid/content/pm/PackageParser$Permission;->info:Landroid/content/pm/PermissionInfo;

    iget-object v3, v14, Landroid/content/pm/PackageParser$Permission;->info:Landroid/content/pm/PermissionInfo;

    iget v3, v3, Landroid/content/pm/PermissionInfo;->protectionLevel:I

    invoke-static {v3}, Landroid/content/pm/PermissionInfo;->fixProtectionLevel(I)I

    move-result v3

    iput v3, v2, Landroid/content/pm/PermissionInfo;->protectionLevel:I

    .line 2660
    iget-object v2, v14, Landroid/content/pm/PackageParser$Permission;->info:Landroid/content/pm/PermissionInfo;

    iget v2, v2, Landroid/content/pm/PermissionInfo;->protectionLevel:I

    and-int/lit16 v2, v2, 0xff0

    if-eqz v2, :cond_3

    .line 2661
    iget-object v2, v14, Landroid/content/pm/PackageParser$Permission;->info:Landroid/content/pm/PermissionInfo;

    iget v2, v2, Landroid/content/pm/PermissionInfo;->protectionLevel:I

    and-int/lit8 v2, v2, 0xf

    .line 2662
    const/4 v3, 0x2

    .line 2661
    if-eq v2, v3, :cond_3

    .line 2663
    const-string/jumbo v2, "<permission>  protectionLevel specifies a flag but is not based on signature type"

    const/4 v3, 0x0

    aput-object v2, p4, v3

    .line 2665
    const/16 v2, -0x6c

    iput v2, p0, Landroid/content/pm/PackageParser;->mParseError:I

    .line 2666
    const/4 v2, 0x0

    return-object v2

    .line 2670
    :cond_3
    const-string/jumbo v10, "<permission>"

    move-object v7, p0

    move-object/from16 v8, p2

    move-object/from16 v9, p3

    move-object v11, v14

    move-object/from16 v12, p4

    invoke-direct/range {v7 .. v12}, Landroid/content/pm/PackageParser;->parseAllMetaData(Landroid/content/res/Resources;Landroid/content/res/XmlResourceParser;Ljava/lang/String;Landroid/content/pm/PackageParser$Component;[Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_4

    .line 2671
    const/16 v2, -0x6c

    iput v2, p0, Landroid/content/pm/PackageParser;->mParseError:I

    .line 2672
    const/4 v2, 0x0

    return-object v2

    .line 2675
    :cond_4
    move-object/from16 v0, p1

    iget-object v2, v0, Landroid/content/pm/PackageParser$Package;->permissions:Ljava/util/ArrayList;

    invoke-virtual {v2, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2677
    return-object v14
.end method

.method private parsePermissionGroup(Landroid/content/pm/PackageParser$Package;ILandroid/content/res/Resources;Landroid/content/res/XmlResourceParser;[Ljava/lang/String;)Landroid/content/pm/PackageParser$PermissionGroup;
    .locals 15
    .param p1, "owner"    # Landroid/content/pm/PackageParser$Package;
    .param p2, "flags"    # I
    .param p3, "res"    # Landroid/content/res/Resources;
    .param p4, "parser"    # Landroid/content/res/XmlResourceParser;
    .param p5, "outError"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 2569
    new-instance v14, Landroid/content/pm/PackageParser$PermissionGroup;

    move-object/from16 v0, p1

    invoke-direct {v14, v0}, Landroid/content/pm/PackageParser$PermissionGroup;-><init>(Landroid/content/pm/PackageParser$Package;)V

    .line 2572
    .local v14, "perm":Landroid/content/pm/PackageParser$PermissionGroup;
    sget-object v2, Lcom/android/internal/R$styleable;->AndroidManifestPermissionGroup:[I

    .line 2571
    move-object/from16 v0, p3

    move-object/from16 v1, p4

    invoke-virtual {v0, v1, v2}, Landroid/content/res/Resources;->obtainAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v6

    .line 2573
    .local v6, "sa":Landroid/content/res/TypedArray;
    iget-object v3, v14, Landroid/content/pm/PackageParser$PermissionGroup;->info:Landroid/content/pm/PermissionGroupInfo;

    .line 2574
    const-string/jumbo v5, "<permission-group>"

    const/4 v7, 0x1

    .line 2575
    const/4 v8, 0x2

    .line 2576
    const/4 v9, 0x0

    .line 2577
    const/4 v10, 0x1

    .line 2578
    const/16 v11, 0x8

    .line 2579
    const/4 v12, 0x5

    .line 2580
    const/4 v13, 0x7

    move-object/from16 v2, p1

    move-object/from16 v4, p5

    .line 2573
    invoke-static/range {v2 .. v13}, Landroid/content/pm/PackageParser;->parsePackageItemInfo(Landroid/content/pm/PackageParser$Package;Landroid/content/pm/PackageItemInfo;[Ljava/lang/String;Ljava/lang/String;Landroid/content/res/TypedArray;ZIIIIII)Z

    move-result v2

    if-nez v2, :cond_0

    .line 2581
    invoke-virtual {v6}, Landroid/content/res/TypedArray;->recycle()V

    .line 2582
    const/16 v2, -0x6c

    iput v2, p0, Landroid/content/pm/PackageParser;->mParseError:I

    .line 2583
    const/4 v2, 0x0

    return-object v2

    .line 2586
    :cond_0
    iget-object v2, v14, Landroid/content/pm/PackageParser$PermissionGroup;->info:Landroid/content/pm/PermissionGroupInfo;

    .line 2587
    const/4 v3, 0x4

    .line 2588
    const/4 v4, 0x0

    .line 2586
    invoke-virtual {v6, v3, v4}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v3

    iput v3, v2, Landroid/content/pm/PermissionGroupInfo;->descriptionRes:I

    .line 2589
    iget-object v2, v14, Landroid/content/pm/PackageParser$PermissionGroup;->info:Landroid/content/pm/PermissionGroupInfo;

    .line 2590
    const/4 v3, 0x6

    const/4 v4, 0x0

    .line 2589
    invoke-virtual {v6, v3, v4}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v3

    iput v3, v2, Landroid/content/pm/PermissionGroupInfo;->flags:I

    .line 2591
    iget-object v2, v14, Landroid/content/pm/PackageParser$PermissionGroup;->info:Landroid/content/pm/PermissionGroupInfo;

    .line 2592
    const/4 v3, 0x3

    const/4 v4, 0x0

    .line 2591
    invoke-virtual {v6, v3, v4}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v3

    iput v3, v2, Landroid/content/pm/PermissionGroupInfo;->priority:I

    .line 2593
    iget-object v2, v14, Landroid/content/pm/PackageParser$PermissionGroup;->info:Landroid/content/pm/PermissionGroupInfo;

    iget v2, v2, Landroid/content/pm/PermissionGroupInfo;->priority:I

    if-lez v2, :cond_1

    and-int/lit8 v2, p2, 0x1

    if-nez v2, :cond_1

    .line 2594
    iget-object v2, v14, Landroid/content/pm/PackageParser$PermissionGroup;->info:Landroid/content/pm/PermissionGroupInfo;

    const/4 v3, 0x0

    iput v3, v2, Landroid/content/pm/PermissionGroupInfo;->priority:I

    .line 2597
    :cond_1
    invoke-virtual {v6}, Landroid/content/res/TypedArray;->recycle()V

    .line 2599
    const-string/jumbo v10, "<permission-group>"

    move-object v7, p0

    move-object/from16 v8, p3

    move-object/from16 v9, p4

    move-object v11, v14

    move-object/from16 v12, p5

    invoke-direct/range {v7 .. v12}, Landroid/content/pm/PackageParser;->parseAllMetaData(Landroid/content/res/Resources;Landroid/content/res/XmlResourceParser;Ljava/lang/String;Landroid/content/pm/PackageParser$Component;[Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 2601
    const/16 v2, -0x6c

    iput v2, p0, Landroid/content/pm/PackageParser;->mParseError:I

    .line 2602
    const/4 v2, 0x0

    return-object v2

    .line 2605
    :cond_2
    move-object/from16 v0, p1

    iget-object v2, v0, Landroid/content/pm/PackageParser$Package;->permissionGroups:Ljava/util/ArrayList;

    invoke-virtual {v2, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2607
    return-object v14
.end method

.method private parsePermissionTree(Landroid/content/pm/PackageParser$Package;Landroid/content/res/Resources;Landroid/content/res/XmlResourceParser;[Ljava/lang/String;)Landroid/content/pm/PackageParser$Permission;
    .locals 16
    .param p1, "owner"    # Landroid/content/pm/PackageParser$Package;
    .param p2, "res"    # Landroid/content/res/Resources;
    .param p3, "parser"    # Landroid/content/res/XmlResourceParser;
    .param p4, "outError"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 2683
    new-instance v15, Landroid/content/pm/PackageParser$Permission;

    move-object/from16 v0, p1

    invoke-direct {v15, v0}, Landroid/content/pm/PackageParser$Permission;-><init>(Landroid/content/pm/PackageParser$Package;)V

    .line 2686
    .local v15, "perm":Landroid/content/pm/PackageParser$Permission;
    sget-object v2, Lcom/android/internal/R$styleable;->AndroidManifestPermissionTree:[I

    .line 2685
    move-object/from16 v0, p2

    move-object/from16 v1, p3

    invoke-virtual {v0, v1, v2}, Landroid/content/res/Resources;->obtainAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v6

    .line 2688
    .local v6, "sa":Landroid/content/res/TypedArray;
    iget-object v3, v15, Landroid/content/pm/PackageParser$Permission;->info:Landroid/content/pm/PermissionInfo;

    .line 2689
    const-string/jumbo v5, "<permission-tree>"

    const/4 v7, 0x1

    .line 2690
    const/4 v8, 0x2

    .line 2691
    const/4 v9, 0x0

    .line 2692
    const/4 v10, 0x1

    .line 2693
    const/4 v11, 0x5

    .line 2694
    const/4 v12, 0x3

    .line 2695
    const/4 v13, 0x4

    move-object/from16 v2, p1

    move-object/from16 v4, p4

    .line 2688
    invoke-static/range {v2 .. v13}, Landroid/content/pm/PackageParser;->parsePackageItemInfo(Landroid/content/pm/PackageParser$Package;Landroid/content/pm/PackageItemInfo;[Ljava/lang/String;Ljava/lang/String;Landroid/content/res/TypedArray;ZIIIIII)Z

    move-result v2

    if-nez v2, :cond_0

    .line 2696
    invoke-virtual {v6}, Landroid/content/res/TypedArray;->recycle()V

    .line 2697
    const/16 v2, -0x6c

    move-object/from16 v0, p0

    iput v2, v0, Landroid/content/pm/PackageParser;->mParseError:I

    .line 2698
    const/4 v2, 0x0

    return-object v2

    .line 2701
    :cond_0
    invoke-virtual {v6}, Landroid/content/res/TypedArray;->recycle()V

    .line 2703
    iget-object v2, v15, Landroid/content/pm/PackageParser$Permission;->info:Landroid/content/pm/PermissionInfo;

    iget-object v2, v2, Landroid/content/pm/PermissionInfo;->name:Ljava/lang/String;

    const/16 v3, 0x2e

    invoke-virtual {v2, v3}, Ljava/lang/String;->indexOf(I)I

    move-result v14

    .line 2704
    .local v14, "index":I
    if-lez v14, :cond_1

    .line 2705
    iget-object v2, v15, Landroid/content/pm/PackageParser$Permission;->info:Landroid/content/pm/PermissionInfo;

    iget-object v2, v2, Landroid/content/pm/PermissionInfo;->name:Ljava/lang/String;

    const/16 v3, 0x2e

    add-int/lit8 v4, v14, 0x1

    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->indexOf(II)I

    move-result v14

    .line 2707
    :cond_1
    if-gez v14, :cond_2

    .line 2708
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "<permission-tree> name has less than three segments: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 2709
    iget-object v3, v15, Landroid/content/pm/PackageParser$Permission;->info:Landroid/content/pm/PermissionInfo;

    iget-object v3, v3, Landroid/content/pm/PermissionInfo;->name:Ljava/lang/String;

    .line 2708
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, p4, v3

    .line 2710
    const/16 v2, -0x6c

    move-object/from16 v0, p0

    iput v2, v0, Landroid/content/pm/PackageParser;->mParseError:I

    .line 2711
    const/4 v2, 0x0

    return-object v2

    .line 2714
    :cond_2
    iget-object v2, v15, Landroid/content/pm/PackageParser$Permission;->info:Landroid/content/pm/PermissionInfo;

    const/4 v3, 0x0

    iput v3, v2, Landroid/content/pm/PermissionInfo;->descriptionRes:I

    .line 2715
    iget-object v2, v15, Landroid/content/pm/PackageParser$Permission;->info:Landroid/content/pm/PermissionInfo;

    const/4 v3, 0x0

    iput v3, v2, Landroid/content/pm/PermissionInfo;->protectionLevel:I

    .line 2716
    const/4 v2, 0x1

    iput-boolean v2, v15, Landroid/content/pm/PackageParser$Permission;->tree:Z

    .line 2718
    const-string/jumbo v10, "<permission-tree>"

    move-object/from16 v7, p0

    move-object/from16 v8, p2

    move-object/from16 v9, p3

    move-object v11, v15

    move-object/from16 v12, p4

    invoke-direct/range {v7 .. v12}, Landroid/content/pm/PackageParser;->parseAllMetaData(Landroid/content/res/Resources;Landroid/content/res/XmlResourceParser;Ljava/lang/String;Landroid/content/pm/PackageParser$Component;[Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_3

    .line 2720
    const/16 v2, -0x6c

    move-object/from16 v0, p0

    iput v2, v0, Landroid/content/pm/PackageParser;->mParseError:I

    .line 2721
    const/4 v2, 0x0

    return-object v2

    .line 2724
    :cond_3
    move-object/from16 v0, p1

    iget-object v2, v0, Landroid/content/pm/PackageParser$Package;->permissions:Ljava/util/ArrayList;

    invoke-virtual {v2, v15}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2726
    return-object v15
.end method

.method private parseProvider(Landroid/content/pm/PackageParser$Package;Landroid/content/res/Resources;Landroid/content/res/XmlResourceParser;I[Ljava/lang/String;)Landroid/content/pm/PackageParser$Provider;
    .locals 24
    .param p1, "owner"    # Landroid/content/pm/PackageParser$Package;
    .param p2, "res"    # Landroid/content/res/Resources;
    .param p3, "parser"    # Landroid/content/res/XmlResourceParser;
    .param p4, "flags"    # I
    .param p5, "outError"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 3996
    sget-object v5, Lcom/android/internal/R$styleable;->AndroidManifestProvider:[I

    .line 3995
    move-object/from16 v0, p2

    move-object/from16 v1, p3

    invoke-virtual {v0, v1, v5}, Landroid/content/res/Resources;->obtainAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v22

    .line 3998
    .local v22, "sa":Landroid/content/res/TypedArray;
    move-object/from16 v0, p0

    iget-object v5, v0, Landroid/content/pm/PackageParser;->mParseProviderArgs:Landroid/content/pm/PackageParser$ParseComponentArgs;

    if-nez v5, :cond_0

    .line 3999
    new-instance v5, Landroid/content/pm/PackageParser$ParseComponentArgs;

    .line 4006
    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/content/pm/PackageParser;->mSeparateProcesses:[Ljava/lang/String;

    .line 4000
    const/4 v8, 0x2

    .line 4001
    const/4 v9, 0x0

    .line 4002
    const/4 v10, 0x1

    .line 4003
    const/16 v11, 0x13

    .line 4004
    const/16 v12, 0xf

    .line 4005
    const/16 v13, 0x11

    .line 4007
    const/16 v15, 0x8

    .line 4008
    const/16 v16, 0xe

    .line 4009
    const/16 v17, 0x6

    move-object/from16 v6, p1

    move-object/from16 v7, p5

    .line 3999
    invoke-direct/range {v5 .. v17}, Landroid/content/pm/PackageParser$ParseComponentArgs;-><init>(Landroid/content/pm/PackageParser$Package;[Ljava/lang/String;IIIIII[Ljava/lang/String;III)V

    move-object/from16 v0, p0

    iput-object v5, v0, Landroid/content/pm/PackageParser;->mParseProviderArgs:Landroid/content/pm/PackageParser$ParseComponentArgs;

    .line 4010
    move-object/from16 v0, p0

    iget-object v5, v0, Landroid/content/pm/PackageParser;->mParseProviderArgs:Landroid/content/pm/PackageParser$ParseComponentArgs;

    const-string/jumbo v6, "<provider>"

    iput-object v6, v5, Landroid/content/pm/PackageParser$ParseComponentArgs;->tag:Ljava/lang/String;

    .line 4013
    :cond_0
    move-object/from16 v0, p0

    iget-object v5, v0, Landroid/content/pm/PackageParser;->mParseProviderArgs:Landroid/content/pm/PackageParser$ParseComponentArgs;

    move-object/from16 v0, v22

    iput-object v0, v5, Landroid/content/pm/PackageParser$ParseComponentArgs;->sa:Landroid/content/res/TypedArray;

    .line 4014
    move-object/from16 v0, p0

    iget-object v5, v0, Landroid/content/pm/PackageParser;->mParseProviderArgs:Landroid/content/pm/PackageParser$ParseComponentArgs;

    move/from16 v0, p4

    iput v0, v5, Landroid/content/pm/PackageParser$ParseComponentArgs;->flags:I

    .line 4016
    new-instance v19, Landroid/content/pm/PackageParser$Provider;

    move-object/from16 v0, p0

    iget-object v5, v0, Landroid/content/pm/PackageParser;->mParseProviderArgs:Landroid/content/pm/PackageParser$ParseComponentArgs;

    new-instance v6, Landroid/content/pm/ProviderInfo;

    invoke-direct {v6}, Landroid/content/pm/ProviderInfo;-><init>()V

    move-object/from16 v0, v19

    invoke-direct {v0, v5, v6}, Landroid/content/pm/PackageParser$Provider;-><init>(Landroid/content/pm/PackageParser$ParseComponentArgs;Landroid/content/pm/ProviderInfo;)V

    .line 4017
    .local v19, "p":Landroid/content/pm/PackageParser$Provider;
    const/4 v5, 0x0

    aget-object v5, p5, v5

    if-eqz v5, :cond_1

    .line 4018
    invoke-virtual/range {v22 .. v22}, Landroid/content/res/TypedArray;->recycle()V

    .line 4019
    const/4 v5, 0x0

    return-object v5

    .line 4022
    :cond_1
    const/16 v21, 0x0

    .line 4024
    .local v21, "providerExportedDefault":Z
    move-object/from16 v0, p1

    iget-object v5, v0, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v5, v5, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    const/16 v6, 0x11

    if-ge v5, v6, :cond_2

    .line 4028
    const/16 v21, 0x1

    .line 4031
    :cond_2
    move-object/from16 v0, v19

    iget-object v5, v0, Landroid/content/pm/PackageParser$Provider;->info:Landroid/content/pm/ProviderInfo;

    .line 4032
    const/4 v6, 0x7

    .line 4031
    move-object/from16 v0, v22

    move/from16 v1, v21

    invoke-virtual {v0, v6, v1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v6

    iput-boolean v6, v5, Landroid/content/pm/ProviderInfo;->exported:Z

    .line 4036
    const/16 v5, 0xa

    const/4 v6, 0x0

    .line 4035
    move-object/from16 v0, v22

    invoke-virtual {v0, v5, v6}, Landroid/content/res/TypedArray;->getNonConfigurationString(II)Ljava/lang/String;

    move-result-object v18

    .line 4038
    .local v18, "cpname":Ljava/lang/String;
    move-object/from16 v0, v19

    iget-object v5, v0, Landroid/content/pm/PackageParser$Provider;->info:Landroid/content/pm/ProviderInfo;

    .line 4039
    const/16 v6, 0xb

    .line 4040
    const/4 v7, 0x0

    .line 4038
    move-object/from16 v0, v22

    invoke-virtual {v0, v6, v7}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v6

    iput-boolean v6, v5, Landroid/content/pm/ProviderInfo;->isSyncable:Z

    .line 4043
    const/4 v5, 0x3

    const/4 v6, 0x0

    .line 4042
    move-object/from16 v0, v22

    invoke-virtual {v0, v5, v6}, Landroid/content/res/TypedArray;->getNonConfigurationString(II)Ljava/lang/String;

    move-result-object v20

    .line 4045
    .local v20, "permission":Ljava/lang/String;
    const/4 v5, 0x4

    const/4 v6, 0x0

    .line 4044
    move-object/from16 v0, v22

    invoke-virtual {v0, v5, v6}, Landroid/content/res/TypedArray;->getNonConfigurationString(II)Ljava/lang/String;

    move-result-object v23

    .line 4046
    .local v23, "str":Ljava/lang/String;
    if-nez v23, :cond_3

    .line 4047
    move-object/from16 v23, v20

    .line 4049
    :cond_3
    if-nez v23, :cond_7

    .line 4050
    move-object/from16 v0, v19

    iget-object v5, v0, Landroid/content/pm/PackageParser$Provider;->info:Landroid/content/pm/ProviderInfo;

    move-object/from16 v0, p1

    iget-object v6, v0, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v6, v6, Landroid/content/pm/ApplicationInfo;->permission:Ljava/lang/String;

    iput-object v6, v5, Landroid/content/pm/ProviderInfo;->readPermission:Ljava/lang/String;

    .line 4056
    :goto_0
    const/4 v5, 0x5

    const/4 v6, 0x0

    .line 4055
    move-object/from16 v0, v22

    invoke-virtual {v0, v5, v6}, Landroid/content/res/TypedArray;->getNonConfigurationString(II)Ljava/lang/String;

    move-result-object v23

    .line 4057
    if-nez v23, :cond_4

    .line 4058
    move-object/from16 v23, v20

    .line 4060
    :cond_4
    if-nez v23, :cond_9

    .line 4061
    move-object/from16 v0, v19

    iget-object v5, v0, Landroid/content/pm/PackageParser$Provider;->info:Landroid/content/pm/ProviderInfo;

    move-object/from16 v0, p1

    iget-object v6, v0, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v6, v6, Landroid/content/pm/ApplicationInfo;->permission:Ljava/lang/String;

    iput-object v6, v5, Landroid/content/pm/ProviderInfo;->writePermission:Ljava/lang/String;

    .line 4067
    :goto_1
    move-object/from16 v0, v19

    iget-object v5, v0, Landroid/content/pm/PackageParser$Provider;->info:Landroid/content/pm/ProviderInfo;

    .line 4068
    const/16 v6, 0xd

    .line 4069
    const/4 v7, 0x0

    .line 4067
    move-object/from16 v0, v22

    invoke-virtual {v0, v6, v7}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v6

    iput-boolean v6, v5, Landroid/content/pm/ProviderInfo;->grantUriPermissions:Z

    .line 4071
    move-object/from16 v0, v19

    iget-object v5, v0, Landroid/content/pm/PackageParser$Provider;->info:Landroid/content/pm/ProviderInfo;

    .line 4072
    const/16 v6, 0x9

    .line 4073
    const/4 v7, 0x0

    .line 4071
    move-object/from16 v0, v22

    invoke-virtual {v0, v6, v7}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v6

    iput-boolean v6, v5, Landroid/content/pm/ProviderInfo;->multiprocess:Z

    .line 4075
    move-object/from16 v0, v19

    iget-object v5, v0, Landroid/content/pm/PackageParser$Provider;->info:Landroid/content/pm/ProviderInfo;

    .line 4076
    const/16 v6, 0xc

    .line 4077
    const/4 v7, 0x0

    .line 4075
    move-object/from16 v0, v22

    invoke-virtual {v0, v6, v7}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v6

    iput v6, v5, Landroid/content/pm/ProviderInfo;->initOrder:I

    .line 4079
    move-object/from16 v0, v19

    iget-object v5, v0, Landroid/content/pm/PackageParser$Provider;->info:Landroid/content/pm/ProviderInfo;

    const/4 v6, 0x0

    iput v6, v5, Landroid/content/pm/ProviderInfo;->flags:I

    .line 4082
    const/16 v5, 0x10

    .line 4083
    const/4 v6, 0x0

    .line 4081
    move-object/from16 v0, v22

    invoke-virtual {v0, v5, v6}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v5

    if-eqz v5, :cond_5

    .line 4084
    move-object/from16 v0, v19

    iget-object v5, v0, Landroid/content/pm/PackageParser$Provider;->info:Landroid/content/pm/ProviderInfo;

    iget v6, v5, Landroid/content/pm/ProviderInfo;->flags:I

    const/high16 v7, 0x40000000    # 2.0f

    or-int/2addr v6, v7

    iput v6, v5, Landroid/content/pm/ProviderInfo;->flags:I

    .line 4085
    move-object/from16 v0, v19

    iget-object v5, v0, Landroid/content/pm/PackageParser$Provider;->info:Landroid/content/pm/ProviderInfo;

    iget-boolean v5, v5, Landroid/content/pm/ProviderInfo;->exported:Z

    if-eqz v5, :cond_5

    move/from16 v0, p4

    and-int/lit16 v5, v0, 0x80

    if-nez v5, :cond_5

    .line 4086
    const-string/jumbo v5, "PackageParser"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "Provider exported request ignored due to singleUser: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 4087
    move-object/from16 v0, v19

    iget-object v7, v0, Landroid/content/pm/PackageParser$Provider;->className:Ljava/lang/String;

    .line 4086
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 4087
    const-string/jumbo v7, " at "

    .line 4086
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 4087
    move-object/from16 v0, p0

    iget-object v7, v0, Landroid/content/pm/PackageParser;->mArchiveSourcePath:Ljava/lang/String;

    .line 4086
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 4087
    const-string/jumbo v7, " "

    .line 4086
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 4088
    invoke-interface/range {p3 .. p3}, Landroid/content/res/XmlResourceParser;->getPositionDescription()Ljava/lang/String;

    move-result-object v7

    .line 4086
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 4089
    move-object/from16 v0, v19

    iget-object v5, v0, Landroid/content/pm/PackageParser$Provider;->info:Landroid/content/pm/ProviderInfo;

    const/4 v6, 0x0

    iput-boolean v6, v5, Landroid/content/pm/ProviderInfo;->exported:Z

    .line 4093
    :cond_5
    move-object/from16 v0, v19

    iget-object v5, v0, Landroid/content/pm/PackageParser$Provider;->info:Landroid/content/pm/ProviderInfo;

    .line 4094
    const/16 v6, 0x12

    .line 4095
    const/4 v7, 0x0

    .line 4093
    move-object/from16 v0, v22

    invoke-virtual {v0, v6, v7}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v6

    move-object/from16 v0, v19

    iget-object v7, v0, Landroid/content/pm/PackageParser$Provider;->info:Landroid/content/pm/ProviderInfo;

    iput-boolean v6, v7, Landroid/content/pm/ProviderInfo;->directBootAware:Z

    iput-boolean v6, v5, Landroid/content/pm/ProviderInfo;->encryptionAware:Z

    .line 4096
    move-object/from16 v0, v19

    iget-object v5, v0, Landroid/content/pm/PackageParser$Provider;->info:Landroid/content/pm/ProviderInfo;

    iget-boolean v5, v5, Landroid/content/pm/ProviderInfo;->directBootAware:Z

    if-eqz v5, :cond_6

    .line 4097
    move-object/from16 v0, p1

    iget-object v5, v0, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v6, v5, Landroid/content/pm/ApplicationInfo;->privateFlags:I

    or-int/lit16 v6, v6, 0x100

    iput v6, v5, Landroid/content/pm/ApplicationInfo;->privateFlags:I

    .line 4101
    :cond_6
    invoke-virtual/range {v22 .. v22}, Landroid/content/res/TypedArray;->recycle()V

    .line 4103
    move-object/from16 v0, p1

    iget-object v5, v0, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v5, v5, Landroid/content/pm/ApplicationInfo;->privateFlags:I

    and-int/lit8 v5, v5, 0x2

    if-eqz v5, :cond_b

    .line 4107
    move-object/from16 v0, v19

    iget-object v5, v0, Landroid/content/pm/PackageParser$Provider;->info:Landroid/content/pm/ProviderInfo;

    iget-object v5, v5, Landroid/content/pm/ProviderInfo;->processName:Ljava/lang/String;

    move-object/from16 v0, p1

    iget-object v6, v0, Landroid/content/pm/PackageParser$Package;->packageName:Ljava/lang/String;

    if-ne v5, v6, :cond_b

    .line 4108
    const-string/jumbo v5, "Heavy-weight applications can not have providers in main process"

    const/4 v6, 0x0

    aput-object v5, p5, v6

    .line 4109
    const/4 v5, 0x0

    return-object v5

    .line 4052
    :cond_7
    move-object/from16 v0, v19

    iget-object v6, v0, Landroid/content/pm/PackageParser$Provider;->info:Landroid/content/pm/ProviderInfo;

    .line 4053
    invoke-virtual/range {v23 .. v23}, Ljava/lang/String;->length()I

    move-result v5

    if-lez v5, :cond_8

    invoke-virtual/range {v23 .. v23}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v5

    .line 4052
    :goto_2
    iput-object v5, v6, Landroid/content/pm/ProviderInfo;->readPermission:Ljava/lang/String;

    goto/16 :goto_0

    .line 4053
    :cond_8
    const/4 v5, 0x0

    goto :goto_2

    .line 4063
    :cond_9
    move-object/from16 v0, v19

    iget-object v6, v0, Landroid/content/pm/PackageParser$Provider;->info:Landroid/content/pm/ProviderInfo;

    .line 4064
    invoke-virtual/range {v23 .. v23}, Ljava/lang/String;->length()I

    move-result v5

    if-lez v5, :cond_a

    invoke-virtual/range {v23 .. v23}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v5

    .line 4063
    :goto_3
    iput-object v5, v6, Landroid/content/pm/ProviderInfo;->writePermission:Ljava/lang/String;

    goto/16 :goto_1

    .line 4064
    :cond_a
    const/4 v5, 0x0

    goto :goto_3

    .line 4113
    :cond_b
    if-nez v18, :cond_c

    .line 4114
    const-string/jumbo v5, "<provider> does not include authorities attribute"

    const/4 v6, 0x0

    aput-object v5, p5, v6

    .line 4115
    const/4 v5, 0x0

    return-object v5

    .line 4117
    :cond_c
    invoke-virtual/range {v18 .. v18}, Ljava/lang/String;->length()I

    move-result v5

    if-gtz v5, :cond_d

    .line 4118
    const-string/jumbo v5, "<provider> has empty authorities attribute"

    const/4 v6, 0x0

    aput-object v5, p5, v6

    .line 4119
    const/4 v5, 0x0

    return-object v5

    .line 4121
    :cond_d
    move-object/from16 v0, v19

    iget-object v5, v0, Landroid/content/pm/PackageParser$Provider;->info:Landroid/content/pm/ProviderInfo;

    invoke-virtual/range {v18 .. v18}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v6

    iput-object v6, v5, Landroid/content/pm/ProviderInfo;->authority:Ljava/lang/String;

    .line 4123
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move-object/from16 v2, p3

    move-object/from16 v3, v19

    move-object/from16 v4, p5

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/content/pm/PackageParser;->parseProviderTags(Landroid/content/res/Resources;Landroid/content/res/XmlResourceParser;Landroid/content/pm/PackageParser$Provider;[Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_e

    .line 4124
    const/4 v5, 0x0

    return-object v5

    .line 4127
    :cond_e
    return-object v19
.end method

.method private parseProviderTags(Landroid/content/res/Resources;Landroid/content/res/XmlResourceParser;Landroid/content/pm/PackageParser$Provider;[Ljava/lang/String;)Z
    .locals 25
    .param p1, "res"    # Landroid/content/res/Resources;
    .param p2, "parser"    # Landroid/content/res/XmlResourceParser;
    .param p3, "outInfo"    # Landroid/content/pm/PackageParser$Provider;
    .param p4, "outError"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 4133
    invoke-interface/range {p2 .. p2}, Landroid/content/res/XmlResourceParser;->getDepth()I

    move-result v15

    .line 4135
    .local v15, "outerDepth":I
    :cond_0
    :goto_0
    invoke-interface/range {p2 .. p2}, Landroid/content/res/XmlResourceParser;->next()I

    move-result v23

    .local v23, "type":I
    const/4 v4, 0x1

    move/from16 v0, v23

    if-eq v0, v4, :cond_16

    .line 4136
    const/4 v4, 0x3

    move/from16 v0, v23

    if-ne v0, v4, :cond_1

    .line 4137
    invoke-interface/range {p2 .. p2}, Landroid/content/res/XmlResourceParser;->getDepth()I

    move-result v4

    if-le v4, v15, :cond_16

    .line 4138
    :cond_1
    const/4 v4, 0x3

    move/from16 v0, v23

    if-eq v0, v4, :cond_0

    const/4 v4, 0x4

    move/from16 v0, v23

    if-eq v0, v4, :cond_0

    .line 4142
    invoke-interface/range {p2 .. p2}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v5, "intent-filter"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 4143
    new-instance v9, Landroid/content/pm/PackageParser$ProviderIntentInfo;

    move-object/from16 v0, p3

    invoke-direct {v9, v0}, Landroid/content/pm/PackageParser$ProviderIntentInfo;-><init>(Landroid/content/pm/PackageParser$Provider;)V

    .line 4144
    .local v9, "intent":Landroid/content/pm/PackageParser$ProviderIntentInfo;
    const/4 v7, 0x1

    const/4 v8, 0x0

    move-object/from16 v4, p0

    move-object/from16 v5, p1

    move-object/from16 v6, p2

    move-object/from16 v10, p4

    invoke-direct/range {v4 .. v10}, Landroid/content/pm/PackageParser;->parseIntent(Landroid/content/res/Resources;Landroid/content/res/XmlResourceParser;ZZLandroid/content/pm/PackageParser$IntentInfo;[Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_2

    .line 4145
    const/4 v4, 0x0

    return v4

    .line 4147
    :cond_2
    move-object/from16 v0, p3

    iget-object v4, v0, Landroid/content/pm/PackageParser$Provider;->intents:Ljava/util/ArrayList;

    invoke-virtual {v4, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 4149
    .end local v9    # "intent":Landroid/content/pm/PackageParser$ProviderIntentInfo;
    :cond_3
    invoke-interface/range {p2 .. p2}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v5, "meta-data"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 4151
    move-object/from16 v0, p3

    iget-object v4, v0, Landroid/content/pm/PackageParser$Provider;->metaData:Landroid/os/Bundle;

    .line 4150
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p4

    invoke-direct {v0, v1, v2, v4, v3}, Landroid/content/pm/PackageParser;->parseMetaData(Landroid/content/res/Resources;Landroid/content/res/XmlResourceParser;Landroid/os/Bundle;[Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v4

    move-object/from16 v0, p3

    iput-object v4, v0, Landroid/content/pm/PackageParser$Provider;->metaData:Landroid/os/Bundle;

    if-nez v4, :cond_0

    .line 4152
    const/4 v4, 0x0

    return v4

    .line 4155
    :cond_4
    invoke-interface/range {p2 .. p2}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v5, "grant-uri-permission"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_a

    .line 4157
    sget-object v4, Lcom/android/internal/R$styleable;->AndroidManifestGrantUriPermission:[I

    .line 4156
    move-object/from16 v0, p1

    move-object/from16 v1, p2

    invoke-virtual {v0, v1, v4}, Landroid/content/res/Resources;->obtainAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v21

    .line 4159
    .local v21, "sa":Landroid/content/res/TypedArray;
    const/16 v17, 0x0

    .line 4162
    .local v17, "pa":Landroid/os/PatternMatcher;
    const/4 v4, 0x0

    const/4 v5, 0x0

    .line 4161
    move-object/from16 v0, v21

    invoke-virtual {v0, v4, v5}, Landroid/content/res/TypedArray;->getNonConfigurationString(II)Ljava/lang/String;

    move-result-object v22

    .line 4163
    .local v22, "str":Ljava/lang/String;
    if-eqz v22, :cond_5

    .line 4164
    new-instance v17, Landroid/os/PatternMatcher;

    .end local v17    # "pa":Landroid/os/PatternMatcher;
    const/4 v4, 0x0

    move-object/from16 v0, v17

    move-object/from16 v1, v22

    invoke-direct {v0, v1, v4}, Landroid/os/PatternMatcher;-><init>(Ljava/lang/String;I)V

    .line 4168
    :cond_5
    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 4167
    move-object/from16 v0, v21

    invoke-virtual {v0, v4, v5}, Landroid/content/res/TypedArray;->getNonConfigurationString(II)Ljava/lang/String;

    move-result-object v22

    .line 4169
    if-eqz v22, :cond_6

    .line 4170
    new-instance v17, Landroid/os/PatternMatcher;

    const/4 v4, 0x1

    move-object/from16 v0, v17

    move-object/from16 v1, v22

    invoke-direct {v0, v1, v4}, Landroid/os/PatternMatcher;-><init>(Ljava/lang/String;I)V

    .line 4174
    :cond_6
    const/4 v4, 0x2

    const/4 v5, 0x0

    .line 4173
    move-object/from16 v0, v21

    invoke-virtual {v0, v4, v5}, Landroid/content/res/TypedArray;->getNonConfigurationString(II)Ljava/lang/String;

    move-result-object v22

    .line 4175
    if-eqz v22, :cond_7

    .line 4176
    new-instance v17, Landroid/os/PatternMatcher;

    const/4 v4, 0x2

    move-object/from16 v0, v17

    move-object/from16 v1, v22

    invoke-direct {v0, v1, v4}, Landroid/os/PatternMatcher;-><init>(Ljava/lang/String;I)V

    .line 4179
    :cond_7
    invoke-virtual/range {v21 .. v21}, Landroid/content/res/TypedArray;->recycle()V

    .line 4181
    if-eqz v17, :cond_9

    .line 4182
    move-object/from16 v0, p3

    iget-object v4, v0, Landroid/content/pm/PackageParser$Provider;->info:Landroid/content/pm/ProviderInfo;

    iget-object v4, v4, Landroid/content/pm/ProviderInfo;->uriPermissionPatterns:[Landroid/os/PatternMatcher;

    if-nez v4, :cond_8

    .line 4183
    move-object/from16 v0, p3

    iget-object v4, v0, Landroid/content/pm/PackageParser$Provider;->info:Landroid/content/pm/ProviderInfo;

    const/4 v5, 0x1

    new-array v5, v5, [Landroid/os/PatternMatcher;

    iput-object v5, v4, Landroid/content/pm/ProviderInfo;->uriPermissionPatterns:[Landroid/os/PatternMatcher;

    .line 4184
    move-object/from16 v0, p3

    iget-object v4, v0, Landroid/content/pm/PackageParser$Provider;->info:Landroid/content/pm/ProviderInfo;

    iget-object v4, v4, Landroid/content/pm/ProviderInfo;->uriPermissionPatterns:[Landroid/os/PatternMatcher;

    const/4 v5, 0x0

    aput-object v17, v4, v5

    .line 4192
    :goto_1
    move-object/from16 v0, p3

    iget-object v4, v0, Landroid/content/pm/PackageParser$Provider;->info:Landroid/content/pm/ProviderInfo;

    const/4 v5, 0x1

    iput-boolean v5, v4, Landroid/content/pm/ProviderInfo;->grantUriPermissions:Z

    .line 4205
    invoke-static/range {p2 .. p2}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    goto/16 :goto_0

    .line 4186
    :cond_8
    move-object/from16 v0, p3

    iget-object v4, v0, Landroid/content/pm/PackageParser$Provider;->info:Landroid/content/pm/ProviderInfo;

    iget-object v4, v4, Landroid/content/pm/ProviderInfo;->uriPermissionPatterns:[Landroid/os/PatternMatcher;

    array-length v11, v4

    .line 4187
    .local v11, "N":I
    add-int/lit8 v4, v11, 0x1

    new-array v14, v4, [Landroid/os/PatternMatcher;

    .line 4188
    .local v14, "newp":[Landroid/os/PatternMatcher;
    move-object/from16 v0, p3

    iget-object v4, v0, Landroid/content/pm/PackageParser$Provider;->info:Landroid/content/pm/ProviderInfo;

    iget-object v4, v4, Landroid/content/pm/ProviderInfo;->uriPermissionPatterns:[Landroid/os/PatternMatcher;

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-static {v4, v5, v14, v6, v11}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 4189
    aput-object v17, v14, v11

    .line 4190
    move-object/from16 v0, p3

    iget-object v4, v0, Landroid/content/pm/PackageParser$Provider;->info:Landroid/content/pm/ProviderInfo;

    iput-object v14, v4, Landroid/content/pm/ProviderInfo;->uriPermissionPatterns:[Landroid/os/PatternMatcher;

    goto :goto_1

    .line 4195
    .end local v11    # "N":I
    .end local v14    # "newp":[Landroid/os/PatternMatcher;
    :cond_9
    const-string/jumbo v4, "PackageParser"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "Unknown element under <path-permission>: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 4196
    invoke-interface/range {p2 .. p2}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    move-result-object v6

    .line 4195
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 4196
    const-string/jumbo v6, " at "

    .line 4195
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 4196
    move-object/from16 v0, p0

    iget-object v6, v0, Landroid/content/pm/PackageParser;->mArchiveSourcePath:Ljava/lang/String;

    .line 4195
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 4196
    const-string/jumbo v6, " "

    .line 4195
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 4197
    invoke-interface/range {p2 .. p2}, Landroid/content/res/XmlResourceParser;->getPositionDescription()Ljava/lang/String;

    move-result-object v6

    .line 4195
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 4198
    invoke-static/range {p2 .. p2}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    goto/16 :goto_0

    .line 4207
    .end local v21    # "sa":Landroid/content/res/TypedArray;
    .end local v22    # "str":Ljava/lang/String;
    :cond_a
    invoke-interface/range {p2 .. p2}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v5, "path-permission"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_15

    .line 4209
    sget-object v4, Lcom/android/internal/R$styleable;->AndroidManifestPathPermission:[I

    .line 4208
    move-object/from16 v0, p1

    move-object/from16 v1, p2

    invoke-virtual {v0, v1, v4}, Landroid/content/res/Resources;->obtainAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v21

    .line 4211
    .restart local v21    # "sa":Landroid/content/res/TypedArray;
    const/16 v16, 0x0

    .line 4214
    .local v16, "pa":Landroid/content/pm/PathPermission;
    const/4 v4, 0x0

    const/4 v5, 0x0

    .line 4213
    move-object/from16 v0, v21

    invoke-virtual {v0, v4, v5}, Landroid/content/res/TypedArray;->getNonConfigurationString(II)Ljava/lang/String;

    move-result-object v19

    .line 4216
    .local v19, "permission":Ljava/lang/String;
    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 4215
    move-object/from16 v0, v21

    invoke-virtual {v0, v4, v5}, Landroid/content/res/TypedArray;->getNonConfigurationString(II)Ljava/lang/String;

    move-result-object v20

    .line 4217
    .local v20, "readPermission":Ljava/lang/String;
    if-nez v20, :cond_b

    .line 4218
    move-object/from16 v20, v19

    .line 4221
    :cond_b
    const/4 v4, 0x2

    const/4 v5, 0x0

    .line 4220
    move-object/from16 v0, v21

    invoke-virtual {v0, v4, v5}, Landroid/content/res/TypedArray;->getNonConfigurationString(II)Ljava/lang/String;

    move-result-object v24

    .line 4222
    .local v24, "writePermission":Ljava/lang/String;
    if-nez v24, :cond_c

    .line 4223
    move-object/from16 v24, v19

    .line 4226
    :cond_c
    const/4 v12, 0x0

    .line 4227
    .local v12, "havePerm":Z
    if-eqz v20, :cond_d

    .line 4228
    invoke-virtual/range {v20 .. v20}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v20

    .line 4229
    const/4 v12, 0x1

    .line 4231
    :cond_d
    if-eqz v24, :cond_e

    .line 4232
    invoke-virtual/range {v24 .. v24}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v24

    .line 4233
    const/4 v12, 0x1

    .line 4236
    :cond_e
    if-nez v12, :cond_f

    .line 4238
    const-string/jumbo v4, "PackageParser"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "No readPermission or writePermssion for <path-permission>: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 4239
    invoke-interface/range {p2 .. p2}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    move-result-object v6

    .line 4238
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 4239
    const-string/jumbo v6, " at "

    .line 4238
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 4239
    move-object/from16 v0, p0

    iget-object v6, v0, Landroid/content/pm/PackageParser;->mArchiveSourcePath:Ljava/lang/String;

    .line 4238
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 4239
    const-string/jumbo v6, " "

    .line 4238
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 4240
    invoke-interface/range {p2 .. p2}, Landroid/content/res/XmlResourceParser;->getPositionDescription()Ljava/lang/String;

    move-result-object v6

    .line 4238
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 4241
    invoke-static/range {p2 .. p2}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    goto/16 :goto_0

    .line 4250
    :cond_f
    const/4 v4, 0x3

    const/4 v5, 0x0

    .line 4249
    move-object/from16 v0, v21

    invoke-virtual {v0, v4, v5}, Landroid/content/res/TypedArray;->getNonConfigurationString(II)Ljava/lang/String;

    move-result-object v18

    .line 4251
    .local v18, "path":Ljava/lang/String;
    if-eqz v18, :cond_10

    .line 4252
    new-instance v16, Landroid/content/pm/PathPermission;

    .line 4253
    .end local v16    # "pa":Landroid/content/pm/PathPermission;
    const/4 v4, 0x0

    .line 4252
    move-object/from16 v0, v16

    move-object/from16 v1, v18

    move-object/from16 v2, v20

    move-object/from16 v3, v24

    invoke-direct {v0, v1, v4, v2, v3}, Landroid/content/pm/PathPermission;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    .line 4257
    :cond_10
    const/4 v4, 0x4

    const/4 v5, 0x0

    .line 4256
    move-object/from16 v0, v21

    invoke-virtual {v0, v4, v5}, Landroid/content/res/TypedArray;->getNonConfigurationString(II)Ljava/lang/String;

    move-result-object v18

    .line 4258
    if-eqz v18, :cond_11

    .line 4259
    new-instance v16, Landroid/content/pm/PathPermission;

    .line 4260
    const/4 v4, 0x1

    .line 4259
    move-object/from16 v0, v16

    move-object/from16 v1, v18

    move-object/from16 v2, v20

    move-object/from16 v3, v24

    invoke-direct {v0, v1, v4, v2, v3}, Landroid/content/pm/PathPermission;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    .line 4264
    :cond_11
    const/4 v4, 0x5

    const/4 v5, 0x0

    .line 4263
    move-object/from16 v0, v21

    invoke-virtual {v0, v4, v5}, Landroid/content/res/TypedArray;->getNonConfigurationString(II)Ljava/lang/String;

    move-result-object v18

    .line 4265
    if-eqz v18, :cond_12

    .line 4266
    new-instance v16, Landroid/content/pm/PathPermission;

    .line 4267
    const/4 v4, 0x2

    .line 4266
    move-object/from16 v0, v16

    move-object/from16 v1, v18

    move-object/from16 v2, v20

    move-object/from16 v3, v24

    invoke-direct {v0, v1, v4, v2, v3}, Landroid/content/pm/PathPermission;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    .line 4270
    :cond_12
    invoke-virtual/range {v21 .. v21}, Landroid/content/res/TypedArray;->recycle()V

    .line 4272
    if-eqz v16, :cond_14

    .line 4273
    move-object/from16 v0, p3

    iget-object v4, v0, Landroid/content/pm/PackageParser$Provider;->info:Landroid/content/pm/ProviderInfo;

    iget-object v4, v4, Landroid/content/pm/ProviderInfo;->pathPermissions:[Landroid/content/pm/PathPermission;

    if-nez v4, :cond_13

    .line 4274
    move-object/from16 v0, p3

    iget-object v4, v0, Landroid/content/pm/PackageParser$Provider;->info:Landroid/content/pm/ProviderInfo;

    const/4 v5, 0x1

    new-array v5, v5, [Landroid/content/pm/PathPermission;

    iput-object v5, v4, Landroid/content/pm/ProviderInfo;->pathPermissions:[Landroid/content/pm/PathPermission;

    .line 4275
    move-object/from16 v0, p3

    iget-object v4, v0, Landroid/content/pm/PackageParser$Provider;->info:Landroid/content/pm/ProviderInfo;

    iget-object v4, v4, Landroid/content/pm/ProviderInfo;->pathPermissions:[Landroid/content/pm/PathPermission;

    const/4 v5, 0x0

    aput-object v16, v4, v5

    .line 4294
    :goto_2
    invoke-static/range {p2 .. p2}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    goto/16 :goto_0

    .line 4277
    :cond_13
    move-object/from16 v0, p3

    iget-object v4, v0, Landroid/content/pm/PackageParser$Provider;->info:Landroid/content/pm/ProviderInfo;

    iget-object v4, v4, Landroid/content/pm/ProviderInfo;->pathPermissions:[Landroid/content/pm/PathPermission;

    array-length v11, v4

    .line 4278
    .restart local v11    # "N":I
    add-int/lit8 v4, v11, 0x1

    new-array v13, v4, [Landroid/content/pm/PathPermission;

    .line 4279
    .local v13, "newp":[Landroid/content/pm/PathPermission;
    move-object/from16 v0, p3

    iget-object v4, v0, Landroid/content/pm/PackageParser$Provider;->info:Landroid/content/pm/ProviderInfo;

    iget-object v4, v4, Landroid/content/pm/ProviderInfo;->pathPermissions:[Landroid/content/pm/PathPermission;

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-static {v4, v5, v13, v6, v11}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 4280
    aput-object v16, v13, v11

    .line 4281
    move-object/from16 v0, p3

    iget-object v4, v0, Landroid/content/pm/PackageParser$Provider;->info:Landroid/content/pm/ProviderInfo;

    iput-object v13, v4, Landroid/content/pm/ProviderInfo;->pathPermissions:[Landroid/content/pm/PathPermission;

    goto :goto_2

    .line 4285
    .end local v11    # "N":I
    .end local v13    # "newp":[Landroid/content/pm/PathPermission;
    :cond_14
    const-string/jumbo v4, "PackageParser"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "No path, pathPrefix, or pathPattern for <path-permission>: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 4286
    invoke-interface/range {p2 .. p2}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    move-result-object v6

    .line 4285
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 4286
    const-string/jumbo v6, " at "

    .line 4285
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 4286
    move-object/from16 v0, p0

    iget-object v6, v0, Landroid/content/pm/PackageParser;->mArchiveSourcePath:Ljava/lang/String;

    .line 4285
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 4286
    const-string/jumbo v6, " "

    .line 4285
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 4287
    invoke-interface/range {p2 .. p2}, Landroid/content/res/XmlResourceParser;->getPositionDescription()Ljava/lang/String;

    move-result-object v6

    .line 4285
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 4288
    invoke-static/range {p2 .. p2}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    goto/16 :goto_0

    .line 4298
    .end local v12    # "havePerm":Z
    .end local v18    # "path":Ljava/lang/String;
    .end local v19    # "permission":Ljava/lang/String;
    .end local v20    # "readPermission":Ljava/lang/String;
    .end local v21    # "sa":Landroid/content/res/TypedArray;
    .end local v24    # "writePermission":Ljava/lang/String;
    :cond_15
    const-string/jumbo v4, "PackageParser"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "Unknown element under <provider>: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 4299
    invoke-interface/range {p2 .. p2}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    move-result-object v6

    .line 4298
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 4299
    const-string/jumbo v6, " at "

    .line 4298
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 4299
    move-object/from16 v0, p0

    iget-object v6, v0, Landroid/content/pm/PackageParser;->mArchiveSourcePath:Ljava/lang/String;

    .line 4298
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 4299
    const-string/jumbo v6, " "

    .line 4298
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 4300
    invoke-interface/range {p2 .. p2}, Landroid/content/res/XmlResourceParser;->getPositionDescription()Ljava/lang/String;

    move-result-object v6

    .line 4298
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 4301
    invoke-static/range {p2 .. p2}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    goto/16 :goto_0

    .line 4309
    :cond_16
    const/4 v4, 0x1

    return v4
.end method

.method public static final parsePublicKey(Ljava/lang/String;)Ljava/security/PublicKey;
    .locals 9
    .param p0, "encodedPublicKey"    # Ljava/lang/String;

    .prologue
    const/4 v8, 0x0

    .line 4572
    if-nez p0, :cond_0

    .line 4573
    const-string/jumbo v6, "PackageParser"

    const-string/jumbo v7, "Could not parse null public key"

    invoke-static {v6, v7}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 4574
    return-object v8

    .line 4579
    :cond_0
    const/4 v6, 0x0

    :try_start_0
    invoke-static {p0, v6}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object v3

    .line 4580
    .local v3, "encoded":[B
    new-instance v5, Ljava/security/spec/X509EncodedKeySpec;

    invoke-direct {v5, v3}, Ljava/security/spec/X509EncodedKeySpec;-><init>([B)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 4588
    .local v5, "keySpec":Ljava/security/spec/EncodedKeySpec;
    :try_start_1
    const-string/jumbo v6, "RSA"

    invoke-static {v6}, Ljava/security/KeyFactory;->getInstance(Ljava/lang/String;)Ljava/security/KeyFactory;

    move-result-object v4

    .line 4589
    .local v4, "keyFactory":Ljava/security/KeyFactory;
    invoke-virtual {v4, v5}, Ljava/security/KeyFactory;->generatePublic(Ljava/security/spec/KeySpec;)Ljava/security/PublicKey;
    :try_end_1
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/security/spec/InvalidKeySpecException; {:try_start_1 .. :try_end_1} :catch_6

    move-result-object v6

    return-object v6

    .line 4581
    .end local v3    # "encoded":[B
    .end local v4    # "keyFactory":Ljava/security/KeyFactory;
    .end local v5    # "keySpec":Ljava/security/spec/EncodedKeySpec;
    :catch_0
    move-exception v0

    .line 4582
    .local v0, "e":Ljava/lang/IllegalArgumentException;
    const-string/jumbo v6, "PackageParser"

    const-string/jumbo v7, "Could not parse verifier public key; invalid Base64"

    invoke-static {v6, v7}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 4583
    return-object v8

    .line 4590
    .end local v0    # "e":Ljava/lang/IllegalArgumentException;
    .restart local v3    # "encoded":[B
    .restart local v5    # "keySpec":Ljava/security/spec/EncodedKeySpec;
    :catch_1
    move-exception v1

    .line 4591
    .local v1, "e":Ljava/security/NoSuchAlgorithmException;
    const-string/jumbo v6, "PackageParser"

    const-string/jumbo v7, "Could not parse public key: RSA KeyFactory not included in build"

    invoke-static {v6, v7}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 4598
    .end local v1    # "e":Ljava/security/NoSuchAlgorithmException;
    :goto_0
    :try_start_2
    const-string/jumbo v6, "EC"

    invoke-static {v6}, Ljava/security/KeyFactory;->getInstance(Ljava/lang/String;)Ljava/security/KeyFactory;

    move-result-object v4

    .line 4599
    .restart local v4    # "keyFactory":Ljava/security/KeyFactory;
    invoke-virtual {v4, v5}, Ljava/security/KeyFactory;->generatePublic(Ljava/security/spec/KeySpec;)Ljava/security/PublicKey;
    :try_end_2
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljava/security/spec/InvalidKeySpecException; {:try_start_2 .. :try_end_2} :catch_5

    move-result-object v6

    return-object v6

    .line 4600
    .end local v4    # "keyFactory":Ljava/security/KeyFactory;
    :catch_2
    move-exception v1

    .line 4601
    .restart local v1    # "e":Ljava/security/NoSuchAlgorithmException;
    const-string/jumbo v6, "PackageParser"

    const-string/jumbo v7, "Could not parse public key: EC KeyFactory not included in build"

    invoke-static {v6, v7}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 4608
    .end local v1    # "e":Ljava/security/NoSuchAlgorithmException;
    :goto_1
    :try_start_3
    const-string/jumbo v6, "DSA"

    invoke-static {v6}, Ljava/security/KeyFactory;->getInstance(Ljava/lang/String;)Ljava/security/KeyFactory;

    move-result-object v4

    .line 4609
    .restart local v4    # "keyFactory":Ljava/security/KeyFactory;
    invoke-virtual {v4, v5}, Ljava/security/KeyFactory;->generatePublic(Ljava/security/spec/KeySpec;)Ljava/security/PublicKey;
    :try_end_3
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_3 .. :try_end_3} :catch_3
    .catch Ljava/security/spec/InvalidKeySpecException; {:try_start_3 .. :try_end_3} :catch_4

    move-result-object v6

    return-object v6

    .line 4610
    .end local v4    # "keyFactory":Ljava/security/KeyFactory;
    :catch_3
    move-exception v1

    .line 4611
    .restart local v1    # "e":Ljava/security/NoSuchAlgorithmException;
    const-string/jumbo v6, "PackageParser"

    const-string/jumbo v7, "Could not parse public key: DSA KeyFactory not included in build"

    invoke-static {v6, v7}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 4617
    .end local v1    # "e":Ljava/security/NoSuchAlgorithmException;
    :goto_2
    return-object v8

    .line 4612
    :catch_4
    move-exception v2

    .local v2, "e":Ljava/security/spec/InvalidKeySpecException;
    goto :goto_2

    .line 4602
    .end local v2    # "e":Ljava/security/spec/InvalidKeySpecException;
    :catch_5
    move-exception v2

    .restart local v2    # "e":Ljava/security/spec/InvalidKeySpecException;
    goto :goto_1

    .line 4592
    .end local v2    # "e":Ljava/security/spec/InvalidKeySpecException;
    :catch_6
    move-exception v2

    .restart local v2    # "e":Ljava/security/spec/InvalidKeySpecException;
    goto :goto_0
.end method

.method private parseService(Landroid/content/pm/PackageParser$Package;Landroid/content/res/Resources;Landroid/content/res/XmlResourceParser;I[Ljava/lang/String;)Landroid/content/pm/PackageParser$Service;
    .locals 23
    .param p1, "owner"    # Landroid/content/pm/PackageParser$Package;
    .param p2, "res"    # Landroid/content/res/Resources;
    .param p3, "parser"    # Landroid/content/res/XmlResourceParser;
    .param p4, "flags"    # I
    .param p5, "outError"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 4316
    sget-object v4, Lcom/android/internal/R$styleable;->AndroidManifestService:[I

    .line 4315
    move-object/from16 v0, p2

    move-object/from16 v1, p3

    invoke-virtual {v0, v1, v4}, Landroid/content/res/Resources;->obtainAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v19

    .line 4318
    .local v19, "sa":Landroid/content/res/TypedArray;
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/content/pm/PackageParser;->mParseServiceArgs:Landroid/content/pm/PackageParser$ParseComponentArgs;

    if-nez v4, :cond_0

    .line 4319
    new-instance v4, Landroid/content/pm/PackageParser$ParseComponentArgs;

    .line 4326
    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/content/pm/PackageParser;->mSeparateProcesses:[Ljava/lang/String;

    .line 4320
    const/4 v7, 0x2

    .line 4321
    const/4 v8, 0x0

    .line 4322
    const/4 v9, 0x1

    .line 4323
    const/16 v10, 0xf

    .line 4324
    const/16 v11, 0x8

    .line 4325
    const/16 v12, 0xc

    .line 4327
    const/4 v14, 0x6

    .line 4328
    const/4 v15, 0x7

    .line 4329
    const/16 v16, 0x4

    move-object/from16 v5, p1

    move-object/from16 v6, p5

    .line 4319
    invoke-direct/range {v4 .. v16}, Landroid/content/pm/PackageParser$ParseComponentArgs;-><init>(Landroid/content/pm/PackageParser$Package;[Ljava/lang/String;IIIIII[Ljava/lang/String;III)V

    move-object/from16 v0, p0

    iput-object v4, v0, Landroid/content/pm/PackageParser;->mParseServiceArgs:Landroid/content/pm/PackageParser$ParseComponentArgs;

    .line 4330
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/content/pm/PackageParser;->mParseServiceArgs:Landroid/content/pm/PackageParser$ParseComponentArgs;

    const-string/jumbo v5, "<service>"

    iput-object v5, v4, Landroid/content/pm/PackageParser$ParseComponentArgs;->tag:Ljava/lang/String;

    .line 4333
    :cond_0
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/content/pm/PackageParser;->mParseServiceArgs:Landroid/content/pm/PackageParser$ParseComponentArgs;

    move-object/from16 v0, v19

    iput-object v0, v4, Landroid/content/pm/PackageParser$ParseComponentArgs;->sa:Landroid/content/res/TypedArray;

    .line 4334
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/content/pm/PackageParser;->mParseServiceArgs:Landroid/content/pm/PackageParser$ParseComponentArgs;

    move/from16 v0, p4

    iput v0, v4, Landroid/content/pm/PackageParser$ParseComponentArgs;->flags:I

    .line 4336
    new-instance v18, Landroid/content/pm/PackageParser$Service;

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/content/pm/PackageParser;->mParseServiceArgs:Landroid/content/pm/PackageParser$ParseComponentArgs;

    new-instance v5, Landroid/content/pm/ServiceInfo;

    invoke-direct {v5}, Landroid/content/pm/ServiceInfo;-><init>()V

    move-object/from16 v0, v18

    invoke-direct {v0, v4, v5}, Landroid/content/pm/PackageParser$Service;-><init>(Landroid/content/pm/PackageParser$ParseComponentArgs;Landroid/content/pm/ServiceInfo;)V

    .line 4337
    .local v18, "s":Landroid/content/pm/PackageParser$Service;
    const/4 v4, 0x0

    aget-object v4, p5, v4

    if-eqz v4, :cond_1

    .line 4338
    invoke-virtual/range {v19 .. v19}, Landroid/content/res/TypedArray;->recycle()V

    .line 4339
    const/4 v4, 0x0

    return-object v4

    .line 4343
    :cond_1
    const/4 v4, 0x5

    .line 4342
    move-object/from16 v0, v19

    invoke-virtual {v0, v4}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v20

    .line 4344
    .local v20, "setExported":Z
    if-eqz v20, :cond_2

    .line 4345
    move-object/from16 v0, v18

    iget-object v4, v0, Landroid/content/pm/PackageParser$Service;->info:Landroid/content/pm/ServiceInfo;

    .line 4346
    const/4 v5, 0x5

    const/4 v6, 0x0

    .line 4345
    move-object/from16 v0, v19

    invoke-virtual {v0, v5, v6}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v5

    iput-boolean v5, v4, Landroid/content/pm/ServiceInfo;->exported:Z

    .line 4350
    :cond_2
    const/4 v4, 0x3

    const/4 v5, 0x0

    .line 4349
    move-object/from16 v0, v19

    invoke-virtual {v0, v4, v5}, Landroid/content/res/TypedArray;->getNonConfigurationString(II)Ljava/lang/String;

    move-result-object v21

    .line 4351
    .local v21, "str":Ljava/lang/String;
    if-nez v21, :cond_8

    .line 4352
    move-object/from16 v0, v18

    iget-object v4, v0, Landroid/content/pm/PackageParser$Service;->info:Landroid/content/pm/ServiceInfo;

    move-object/from16 v0, p1

    iget-object v5, v0, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v5, v5, Landroid/content/pm/ApplicationInfo;->permission:Ljava/lang/String;

    iput-object v5, v4, Landroid/content/pm/ServiceInfo;->permission:Ljava/lang/String;

    .line 4357
    :goto_0
    move-object/from16 v0, v18

    iget-object v4, v0, Landroid/content/pm/PackageParser$Service;->info:Landroid/content/pm/ServiceInfo;

    const/4 v5, 0x0

    iput v5, v4, Landroid/content/pm/ServiceInfo;->flags:I

    .line 4359
    const/16 v4, 0x9

    .line 4360
    const/4 v5, 0x0

    .line 4358
    move-object/from16 v0, v19

    invoke-virtual {v0, v4, v5}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 4361
    move-object/from16 v0, v18

    iget-object v4, v0, Landroid/content/pm/PackageParser$Service;->info:Landroid/content/pm/ServiceInfo;

    iget v5, v4, Landroid/content/pm/ServiceInfo;->flags:I

    or-int/lit8 v5, v5, 0x1

    iput v5, v4, Landroid/content/pm/ServiceInfo;->flags:I

    .line 4364
    :cond_3
    const/16 v4, 0xa

    .line 4365
    const/4 v5, 0x0

    .line 4363
    move-object/from16 v0, v19

    invoke-virtual {v0, v4, v5}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 4366
    move-object/from16 v0, v18

    iget-object v4, v0, Landroid/content/pm/PackageParser$Service;->info:Landroid/content/pm/ServiceInfo;

    iget v5, v4, Landroid/content/pm/ServiceInfo;->flags:I

    or-int/lit8 v5, v5, 0x2

    iput v5, v4, Landroid/content/pm/ServiceInfo;->flags:I

    .line 4369
    :cond_4
    const/16 v4, 0xe

    .line 4370
    const/4 v5, 0x0

    .line 4368
    move-object/from16 v0, v19

    invoke-virtual {v0, v4, v5}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 4371
    move-object/from16 v0, v18

    iget-object v4, v0, Landroid/content/pm/PackageParser$Service;->info:Landroid/content/pm/ServiceInfo;

    iget v5, v4, Landroid/content/pm/ServiceInfo;->flags:I

    or-int/lit8 v5, v5, 0x4

    iput v5, v4, Landroid/content/pm/ServiceInfo;->flags:I

    .line 4374
    :cond_5
    const/16 v4, 0xb

    .line 4375
    const/4 v5, 0x0

    .line 4373
    move-object/from16 v0, v19

    invoke-virtual {v0, v4, v5}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v4

    if-eqz v4, :cond_6

    .line 4376
    move-object/from16 v0, v18

    iget-object v4, v0, Landroid/content/pm/PackageParser$Service;->info:Landroid/content/pm/ServiceInfo;

    iget v5, v4, Landroid/content/pm/ServiceInfo;->flags:I

    const/high16 v6, 0x40000000    # 2.0f

    or-int/2addr v5, v6

    iput v5, v4, Landroid/content/pm/ServiceInfo;->flags:I

    .line 4377
    move-object/from16 v0, v18

    iget-object v4, v0, Landroid/content/pm/PackageParser$Service;->info:Landroid/content/pm/ServiceInfo;

    iget-boolean v4, v4, Landroid/content/pm/ServiceInfo;->exported:Z

    if-eqz v4, :cond_6

    move/from16 v0, p4

    and-int/lit16 v4, v0, 0x80

    if-nez v4, :cond_6

    .line 4378
    const-string/jumbo v4, "PackageParser"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "Service exported request ignored due to singleUser: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 4379
    move-object/from16 v0, v18

    iget-object v6, v0, Landroid/content/pm/PackageParser$Service;->className:Ljava/lang/String;

    .line 4378
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 4379
    const-string/jumbo v6, " at "

    .line 4378
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 4379
    move-object/from16 v0, p0

    iget-object v6, v0, Landroid/content/pm/PackageParser;->mArchiveSourcePath:Ljava/lang/String;

    .line 4378
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 4379
    const-string/jumbo v6, " "

    .line 4378
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 4380
    invoke-interface/range {p3 .. p3}, Landroid/content/res/XmlResourceParser;->getPositionDescription()Ljava/lang/String;

    move-result-object v6

    .line 4378
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 4381
    move-object/from16 v0, v18

    iget-object v4, v0, Landroid/content/pm/PackageParser$Service;->info:Landroid/content/pm/ServiceInfo;

    const/4 v5, 0x0

    iput-boolean v5, v4, Landroid/content/pm/ServiceInfo;->exported:Z

    .line 4382
    const/16 v20, 0x1

    .line 4386
    .end local v20    # "setExported":Z
    :cond_6
    move-object/from16 v0, v18

    iget-object v4, v0, Landroid/content/pm/PackageParser$Service;->info:Landroid/content/pm/ServiceInfo;

    .line 4387
    const/16 v5, 0xd

    .line 4388
    const/4 v6, 0x0

    .line 4386
    move-object/from16 v0, v19

    invoke-virtual {v0, v5, v6}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v5

    move-object/from16 v0, v18

    iget-object v6, v0, Landroid/content/pm/PackageParser$Service;->info:Landroid/content/pm/ServiceInfo;

    iput-boolean v5, v6, Landroid/content/pm/ServiceInfo;->directBootAware:Z

    iput-boolean v5, v4, Landroid/content/pm/ServiceInfo;->encryptionAware:Z

    .line 4389
    move-object/from16 v0, v18

    iget-object v4, v0, Landroid/content/pm/PackageParser$Service;->info:Landroid/content/pm/ServiceInfo;

    iget-boolean v4, v4, Landroid/content/pm/ServiceInfo;->directBootAware:Z

    if-eqz v4, :cond_7

    .line 4390
    move-object/from16 v0, p1

    iget-object v4, v0, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v5, v4, Landroid/content/pm/ApplicationInfo;->privateFlags:I

    or-int/lit16 v5, v5, 0x100

    iput v5, v4, Landroid/content/pm/ApplicationInfo;->privateFlags:I

    .line 4394
    :cond_7
    invoke-virtual/range {v19 .. v19}, Landroid/content/res/TypedArray;->recycle()V

    .line 4396
    move-object/from16 v0, p1

    iget-object v4, v0, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v4, v4, Landroid/content/pm/ApplicationInfo;->privateFlags:I

    and-int/lit8 v4, v4, 0x2

    if-eqz v4, :cond_a

    .line 4400
    move-object/from16 v0, v18

    iget-object v4, v0, Landroid/content/pm/PackageParser$Service;->info:Landroid/content/pm/ServiceInfo;

    iget-object v4, v4, Landroid/content/pm/ServiceInfo;->processName:Ljava/lang/String;

    move-object/from16 v0, p1

    iget-object v5, v0, Landroid/content/pm/PackageParser$Package;->packageName:Ljava/lang/String;

    if-ne v4, v5, :cond_a

    .line 4401
    const-string/jumbo v4, "Heavy-weight applications can not have services in main process"

    const/4 v5, 0x0

    aput-object v4, p5, v5

    .line 4402
    const/4 v4, 0x0

    return-object v4

    .line 4354
    .restart local v20    # "setExported":Z
    :cond_8
    move-object/from16 v0, v18

    iget-object v5, v0, Landroid/content/pm/PackageParser$Service;->info:Landroid/content/pm/ServiceInfo;

    invoke-virtual/range {v21 .. v21}, Ljava/lang/String;->length()I

    move-result v4

    if-lez v4, :cond_9

    invoke-virtual/range {v21 .. v21}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v4

    :goto_1
    iput-object v4, v5, Landroid/content/pm/ServiceInfo;->permission:Ljava/lang/String;

    goto/16 :goto_0

    :cond_9
    const/4 v4, 0x0

    goto :goto_1

    .line 4406
    .end local v20    # "setExported":Z
    :cond_a
    invoke-interface/range {p3 .. p3}, Landroid/content/res/XmlResourceParser;->getDepth()I

    move-result v17

    .line 4408
    .local v17, "outerDepth":I
    :cond_b
    :goto_2
    invoke-interface/range {p3 .. p3}, Landroid/content/res/XmlResourceParser;->next()I

    move-result v22

    .local v22, "type":I
    const/4 v4, 0x1

    move/from16 v0, v22

    if-eq v0, v4, :cond_10

    .line 4409
    const/4 v4, 0x3

    move/from16 v0, v22

    if-ne v0, v4, :cond_c

    .line 4410
    invoke-interface/range {p3 .. p3}, Landroid/content/res/XmlResourceParser;->getDepth()I

    move-result v4

    move/from16 v0, v17

    if-le v4, v0, :cond_10

    .line 4411
    :cond_c
    const/4 v4, 0x3

    move/from16 v0, v22

    if-eq v0, v4, :cond_b

    const/4 v4, 0x4

    move/from16 v0, v22

    if-eq v0, v4, :cond_b

    .line 4415
    invoke-interface/range {p3 .. p3}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v5, "intent-filter"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_e

    .line 4416
    new-instance v9, Landroid/content/pm/PackageParser$ServiceIntentInfo;

    move-object/from16 v0, v18

    invoke-direct {v9, v0}, Landroid/content/pm/PackageParser$ServiceIntentInfo;-><init>(Landroid/content/pm/PackageParser$Service;)V

    .line 4417
    .local v9, "intent":Landroid/content/pm/PackageParser$ServiceIntentInfo;
    const/4 v7, 0x1

    const/4 v8, 0x0

    move-object/from16 v4, p0

    move-object/from16 v5, p2

    move-object/from16 v6, p3

    move-object/from16 v10, p5

    invoke-direct/range {v4 .. v10}, Landroid/content/pm/PackageParser;->parseIntent(Landroid/content/res/Resources;Landroid/content/res/XmlResourceParser;ZZLandroid/content/pm/PackageParser$IntentInfo;[Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_d

    .line 4418
    const/4 v4, 0x0

    return-object v4

    .line 4421
    :cond_d
    move-object/from16 v0, v18

    iget-object v4, v0, Landroid/content/pm/PackageParser$Service;->intents:Ljava/util/ArrayList;

    invoke-virtual {v4, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 4422
    .end local v9    # "intent":Landroid/content/pm/PackageParser$ServiceIntentInfo;
    :cond_e
    invoke-interface/range {p3 .. p3}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v5, "meta-data"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_f

    .line 4423
    move-object/from16 v0, v18

    iget-object v4, v0, Landroid/content/pm/PackageParser$Service;->metaData:Landroid/os/Bundle;

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move-object/from16 v2, p3

    move-object/from16 v3, p5

    invoke-direct {v0, v1, v2, v4, v3}, Landroid/content/pm/PackageParser;->parseMetaData(Landroid/content/res/Resources;Landroid/content/res/XmlResourceParser;Landroid/os/Bundle;[Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v4

    move-object/from16 v0, v18

    iput-object v4, v0, Landroid/content/pm/PackageParser$Service;->metaData:Landroid/os/Bundle;

    if-nez v4, :cond_b

    .line 4425
    const/4 v4, 0x0

    return-object v4

    .line 4429
    :cond_f
    const-string/jumbo v4, "PackageParser"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "Unknown element under <service>: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 4430
    invoke-interface/range {p3 .. p3}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    move-result-object v6

    .line 4429
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 4430
    const-string/jumbo v6, " at "

    .line 4429
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 4430
    move-object/from16 v0, p0

    iget-object v6, v0, Landroid/content/pm/PackageParser;->mArchiveSourcePath:Ljava/lang/String;

    .line 4429
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 4430
    const-string/jumbo v6, " "

    .line 4429
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 4431
    invoke-interface/range {p3 .. p3}, Landroid/content/res/XmlResourceParser;->getPositionDescription()Ljava/lang/String;

    move-result-object v6

    .line 4429
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 4432
    invoke-static/range {p3 .. p3}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    goto/16 :goto_2

    .line 4441
    :cond_10
    if-nez v20, :cond_11

    .line 4442
    move-object/from16 v0, v18

    iget-object v5, v0, Landroid/content/pm/PackageParser$Service;->info:Landroid/content/pm/ServiceInfo;

    move-object/from16 v0, v18

    iget-object v4, v0, Landroid/content/pm/PackageParser$Service;->intents:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-lez v4, :cond_12

    const/4 v4, 0x1

    :goto_3
    iput-boolean v4, v5, Landroid/content/pm/ServiceInfo;->exported:Z

    .line 4445
    :cond_11
    return-object v18

    .line 4442
    :cond_12
    const/4 v4, 0x0

    goto :goto_3
.end method

.method private parseSplitApk(Landroid/content/pm/PackageParser$Package;Landroid/content/res/Resources;Landroid/content/res/XmlResourceParser;II[Ljava/lang/String;)Landroid/content/pm/PackageParser$Package;
    .locals 8
    .param p1, "pkg"    # Landroid/content/pm/PackageParser$Package;
    .param p2, "res"    # Landroid/content/res/Resources;
    .param p3, "parser"    # Landroid/content/res/XmlResourceParser;
    .param p4, "flags"    # I
    .param p5, "splitIndex"    # I
    .param p6, "outError"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;,
            Landroid/content/pm/PackageParser$PackageParserException;
        }
    .end annotation

    .prologue
    .line 1068
    move-object v0, p3

    .line 1071
    .local v0, "attrs":Landroid/util/AttributeSet;
    invoke-static {p3, p3}, Landroid/content/pm/PackageParser;->parsePackageSplitNames(Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;)Landroid/util/Pair;

    .line 1073
    const/4 v5, 0x0

    iput-object v5, p0, Landroid/content/pm/PackageParser;->mParseInstrumentationArgs:Landroid/content/pm/PackageParser$ParsePackageItemArgs;

    .line 1074
    const/4 v5, 0x0

    iput-object v5, p0, Landroid/content/pm/PackageParser;->mParseActivityArgs:Landroid/content/pm/PackageParser$ParseComponentArgs;

    .line 1075
    const/4 v5, 0x0

    iput-object v5, p0, Landroid/content/pm/PackageParser;->mParseServiceArgs:Landroid/content/pm/PackageParser$ParseComponentArgs;

    .line 1076
    const/4 v5, 0x0

    iput-object v5, p0, Landroid/content/pm/PackageParser;->mParseProviderArgs:Landroid/content/pm/PackageParser$ParseComponentArgs;

    .line 1080
    const/4 v1, 0x0

    .line 1082
    .local v1, "foundApp":Z
    invoke-interface {p3}, Landroid/content/res/XmlResourceParser;->getDepth()I

    move-result v2

    .line 1083
    .local v2, "outerDepth":I
    :cond_0
    :goto_0
    invoke-interface {p3}, Landroid/content/res/XmlResourceParser;->next()I

    move-result v4

    .local v4, "type":I
    const/4 v5, 0x1

    if-eq v4, v5, :cond_4

    .line 1084
    const/4 v5, 0x3

    if-ne v4, v5, :cond_1

    invoke-interface {p3}, Landroid/content/res/XmlResourceParser;->getDepth()I

    move-result v5

    if-le v5, v2, :cond_4

    .line 1085
    :cond_1
    const/4 v5, 0x3

    if-eq v4, v5, :cond_0

    const/4 v5, 0x4

    if-eq v4, v5, :cond_0

    .line 1089
    invoke-interface {p3}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    move-result-object v3

    .line 1090
    .local v3, "tagName":Ljava/lang/String;
    const-string/jumbo v5, "application"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 1091
    if-eqz v1, :cond_2

    .line 1097
    const-string/jumbo v5, "PackageParser"

    const-string/jumbo v6, "<manifest> has more than one <application>"

    invoke-static {v5, v6}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1098
    invoke-static {p3}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    goto :goto_0

    .line 1103
    :cond_2
    const/4 v1, 0x1

    .line 1104
    invoke-direct/range {p0 .. p6}, Landroid/content/pm/PackageParser;->parseSplitApplication(Landroid/content/pm/PackageParser$Package;Landroid/content/res/Resources;Landroid/content/res/XmlResourceParser;II[Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 1105
    const/4 v5, 0x0

    return-object v5

    .line 1115
    :cond_3
    const-string/jumbo v5, "PackageParser"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "Unknown element under <manifest>: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-interface {p3}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 1116
    const-string/jumbo v7, " at "

    .line 1115
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 1116
    iget-object v7, p0, Landroid/content/pm/PackageParser;->mArchiveSourcePath:Ljava/lang/String;

    .line 1115
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 1116
    const-string/jumbo v7, " "

    .line 1115
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 1117
    invoke-interface {p3}, Landroid/content/res/XmlResourceParser;->getPositionDescription()Ljava/lang/String;

    move-result-object v7

    .line 1115
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1118
    invoke-static {p3}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    goto :goto_0

    .line 1123
    .end local v3    # "tagName":Ljava/lang/String;
    :cond_4
    if-nez v1, :cond_5

    .line 1124
    const-string/jumbo v5, "<manifest> does not contain an <application>"

    const/4 v6, 0x0

    aput-object v5, p6, v6

    .line 1125
    const/16 v5, -0x6d

    iput v5, p0, Landroid/content/pm/PackageParser;->mParseError:I

    .line 1128
    :cond_5
    return-object p1
.end method

.method private parseSplitApk(Landroid/content/pm/PackageParser$Package;ILandroid/content/res/AssetManager;I)V
    .locals 28
    .param p1, "pkg"    # Landroid/content/pm/PackageParser$Package;
    .param p2, "splitIndex"    # I
    .param p3, "assets"    # Landroid/content/res/AssetManager;
    .param p4, "flags"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/pm/PackageParser$PackageParserException;
        }
    .end annotation

    .prologue
    .line 1024
    move-object/from16 v0, p1

    iget-object v3, v0, Landroid/content/pm/PackageParser$Package;->splitCodePaths:[Ljava/lang/String;

    aget-object v21, v3, p2

    .line 1026
    .local v21, "apkPath":Ljava/lang/String;
    const/4 v3, 0x1

    move-object/from16 v0, p0

    iput v3, v0, Landroid/content/pm/PackageParser;->mParseError:I

    .line 1027
    move-object/from16 v0, v21

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/content/pm/PackageParser;->mArchiveSourcePath:Ljava/lang/String;

    .line 1031
    move-object/from16 v0, p3

    move-object/from16 v1, v21

    move/from16 v2, p4

    invoke-static {v0, v1, v2}, Landroid/content/pm/PackageParser;->loadApkIntoAssetManager(Landroid/content/res/AssetManager;Ljava/lang/String;I)I

    move-result v22

    .line 1033
    .local v22, "cookie":I
    const/16 v26, 0x0

    .line 1034
    .local v26, "res":Landroid/content/res/Resources;
    const/16 v25, 0x0

    .line 1036
    .local v25, "parser":Landroid/content/res/XmlResourceParser;
    :try_start_0
    new-instance v27, Landroid/content/res/Resources;

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/content/pm/PackageParser;->mMetrics:Landroid/util/DisplayMetrics;

    const/4 v4, 0x0

    move-object/from16 v0, v27

    move-object/from16 v1, p3

    invoke-direct {v0, v1, v3, v4}, Landroid/content/res/Resources;-><init>(Landroid/content/res/AssetManager;Landroid/util/DisplayMetrics;Landroid/content/res/Configuration;)V
    :try_end_0
    .catch Landroid/content/pm/PackageParser$PackageParserException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 1038
    .end local v26    # "res":Landroid/content/res/Resources;
    .local v27, "res":Landroid/content/res/Resources;
    :try_start_1
    sget v20, Landroid/os/Build$VERSION;->RESOURCES_SDK_INT:I

    .line 1037
    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    move-object/from16 v3, p3

    invoke-virtual/range {v3 .. v20}, Landroid/content/res/AssetManager;->setConfiguration(IILjava/lang/String;IIIIIIIIIIIIII)V

    .line 1039
    const-string/jumbo v3, "AndroidManifest.xml"

    move-object/from16 v0, p3

    move/from16 v1, v22

    invoke-virtual {v0, v1, v3}, Landroid/content/res/AssetManager;->openXmlResourceParser(ILjava/lang/String;)Landroid/content/res/XmlResourceParser;
    :try_end_1
    .catch Landroid/content/pm/PackageParser$PackageParserException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_4
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    move-result-object v6

    .line 1041
    .end local v25    # "parser":Landroid/content/res/XmlResourceParser;
    .local v6, "parser":Landroid/content/res/XmlResourceParser;
    const/4 v3, 0x1

    :try_start_2
    new-array v9, v3, [Ljava/lang/String;

    .local v9, "outError":[Ljava/lang/String;
    move-object/from16 v3, p0

    move-object/from16 v4, p1

    move-object/from16 v5, v27

    move/from16 v7, p4

    move/from16 v8, p2

    .line 1042
    invoke-direct/range {v3 .. v9}, Landroid/content/pm/PackageParser;->parseSplitApk(Landroid/content/pm/PackageParser$Package;Landroid/content/res/Resources;Landroid/content/res/XmlResourceParser;II[Ljava/lang/String;)Landroid/content/pm/PackageParser$Package;

    move-result-object p1

    .line 1043
    if-nez p1, :cond_0

    .line 1044
    new-instance v3, Landroid/content/pm/PackageParser$PackageParserException;

    move-object/from16 v0, p0

    iget v4, v0, Landroid/content/pm/PackageParser;->mParseError:I

    .line 1045
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v21

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v7, " (at "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-interface {v6}, Landroid/content/res/XmlResourceParser;->getPositionDescription()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v7, "): "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const/4 v7, 0x0

    aget-object v7, v9, v7

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 1044
    invoke-direct {v3, v4, v5}, Landroid/content/pm/PackageParser$PackageParserException;-><init>(ILjava/lang/String;)V

    throw v3
    :try_end_2
    .catch Landroid/content/pm/PackageParser$PackageParserException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_5
    .catchall {:try_start_2 .. :try_end_2} :catchall_3

    .line 1048
    .end local v9    # "outError":[Ljava/lang/String;
    :catch_0
    move-exception v23

    .local v23, "e":Landroid/content/pm/PackageParser$PackageParserException;
    move-object/from16 v26, v27

    .line 1049
    .end local v27    # "res":Landroid/content/res/Resources;
    :goto_0
    :try_start_3
    throw v23
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 1053
    .end local v23    # "e":Landroid/content/pm/PackageParser$PackageParserException;
    :catchall_0
    move-exception v3

    .line 1054
    :goto_1
    invoke-static {v6}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 1053
    throw v3

    .line 1054
    .restart local v9    # "outError":[Ljava/lang/String;
    .restart local v27    # "res":Landroid/content/res/Resources;
    :cond_0
    invoke-static {v6}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 1023
    return-void

    .line 1050
    .end local v6    # "parser":Landroid/content/res/XmlResourceParser;
    .end local v9    # "outError":[Ljava/lang/String;
    .end local v27    # "res":Landroid/content/res/Resources;
    .restart local v25    # "parser":Landroid/content/res/XmlResourceParser;
    .restart local v26    # "res":Landroid/content/res/Resources;
    :catch_1
    move-exception v24

    .local v24, "e":Ljava/lang/Exception;
    move-object/from16 v6, v25

    .line 1051
    .end local v25    # "parser":Landroid/content/res/XmlResourceParser;
    .end local v26    # "res":Landroid/content/res/Resources;
    .restart local v6    # "parser":Landroid/content/res/XmlResourceParser;
    :goto_2
    :try_start_4
    new-instance v3, Landroid/content/pm/PackageParser$PackageParserException;

    .line 1052
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Failed to read manifest from "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v21

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 1051
    const/16 v5, -0x66

    move-object/from16 v0, v24

    invoke-direct {v3, v5, v4, v0}, Landroid/content/pm/PackageParser$PackageParserException;-><init>(ILjava/lang/String;Ljava/lang/Throwable;)V

    throw v3
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 1053
    .end local v6    # "parser":Landroid/content/res/XmlResourceParser;
    .end local v24    # "e":Ljava/lang/Exception;
    .restart local v25    # "parser":Landroid/content/res/XmlResourceParser;
    .restart local v26    # "res":Landroid/content/res/Resources;
    :catchall_1
    move-exception v3

    move-object/from16 v6, v25

    .restart local v6    # "parser":Landroid/content/res/XmlResourceParser;
    goto :goto_1

    .end local v6    # "parser":Landroid/content/res/XmlResourceParser;
    .end local v26    # "res":Landroid/content/res/Resources;
    .restart local v27    # "res":Landroid/content/res/Resources;
    :catchall_2
    move-exception v3

    move-object/from16 v6, v25

    .restart local v6    # "parser":Landroid/content/res/XmlResourceParser;
    move-object/from16 v26, v27

    .end local v27    # "res":Landroid/content/res/Resources;
    .local v26, "res":Landroid/content/res/Resources;
    goto :goto_1

    .end local v25    # "parser":Landroid/content/res/XmlResourceParser;
    .end local v26    # "res":Landroid/content/res/Resources;
    .restart local v27    # "res":Landroid/content/res/Resources;
    :catchall_3
    move-exception v3

    move-object/from16 v26, v27

    .end local v27    # "res":Landroid/content/res/Resources;
    .restart local v26    # "res":Landroid/content/res/Resources;
    goto :goto_1

    .line 1048
    .end local v6    # "parser":Landroid/content/res/XmlResourceParser;
    .restart local v25    # "parser":Landroid/content/res/XmlResourceParser;
    .local v26, "res":Landroid/content/res/Resources;
    :catch_2
    move-exception v23

    .restart local v23    # "e":Landroid/content/pm/PackageParser$PackageParserException;
    move-object/from16 v6, v25

    .restart local v6    # "parser":Landroid/content/res/XmlResourceParser;
    goto :goto_0

    .end local v6    # "parser":Landroid/content/res/XmlResourceParser;
    .end local v23    # "e":Landroid/content/pm/PackageParser$PackageParserException;
    .end local v26    # "res":Landroid/content/res/Resources;
    .restart local v27    # "res":Landroid/content/res/Resources;
    :catch_3
    move-exception v23

    .restart local v23    # "e":Landroid/content/pm/PackageParser$PackageParserException;
    move-object/from16 v6, v25

    .restart local v6    # "parser":Landroid/content/res/XmlResourceParser;
    move-object/from16 v26, v27

    .end local v27    # "res":Landroid/content/res/Resources;
    .local v26, "res":Landroid/content/res/Resources;
    goto :goto_0

    .line 1050
    .end local v6    # "parser":Landroid/content/res/XmlResourceParser;
    .end local v23    # "e":Landroid/content/pm/PackageParser$PackageParserException;
    .end local v26    # "res":Landroid/content/res/Resources;
    .restart local v27    # "res":Landroid/content/res/Resources;
    :catch_4
    move-exception v24

    .restart local v24    # "e":Ljava/lang/Exception;
    move-object/from16 v6, v25

    .restart local v6    # "parser":Landroid/content/res/XmlResourceParser;
    move-object/from16 v26, v27

    .end local v27    # "res":Landroid/content/res/Resources;
    .restart local v26    # "res":Landroid/content/res/Resources;
    goto :goto_2

    .end local v24    # "e":Ljava/lang/Exception;
    .end local v25    # "parser":Landroid/content/res/XmlResourceParser;
    .end local v26    # "res":Landroid/content/res/Resources;
    .restart local v27    # "res":Landroid/content/res/Resources;
    :catch_5
    move-exception v24

    .restart local v24    # "e":Ljava/lang/Exception;
    move-object/from16 v26, v27

    .end local v27    # "res":Landroid/content/res/Resources;
    .restart local v26    # "res":Landroid/content/res/Resources;
    goto :goto_2
.end method

.method private parseSplitApplication(Landroid/content/pm/PackageParser$Package;Landroid/content/res/Resources;Landroid/content/res/XmlResourceParser;II[Ljava/lang/String;)Z
    .locals 21
    .param p1, "owner"    # Landroid/content/pm/PackageParser$Package;
    .param p2, "res"    # Landroid/content/res/Resources;
    .param p3, "parser"    # Landroid/content/res/XmlResourceParser;
    .param p4, "flags"    # I
    .param p5, "splitIndex"    # I
    .param p6, "outError"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 3272
    sget-object v4, Lcom/android/internal/R$styleable;->AndroidManifestApplication:[I

    .line 3271
    move-object/from16 v0, p2

    move-object/from16 v1, p3

    invoke-virtual {v0, v1, v4}, Landroid/content/res/Resources;->obtainAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v18

    .line 3275
    .local v18, "sa":Landroid/content/res/TypedArray;
    const/4 v4, 0x7

    const/4 v5, 0x1

    .line 3274
    move-object/from16 v0, v18

    invoke-virtual {v0, v4, v5}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 3276
    move-object/from16 v0, p1

    iget-object v4, v0, Landroid/content/pm/PackageParser$Package;->splitFlags:[I

    aget v5, v4, p5

    or-int/lit8 v5, v5, 0x4

    aput v5, v4, p5

    .line 3279
    :cond_0
    invoke-interface/range {p3 .. p3}, Landroid/content/res/XmlResourceParser;->getDepth()I

    move-result v13

    .line 3281
    .local v13, "innerDepth":I
    :cond_1
    :goto_0
    invoke-interface/range {p3 .. p3}, Landroid/content/res/XmlResourceParser;->next()I

    move-result v20

    .local v20, "type":I
    const/4 v4, 0x1

    move/from16 v0, v20

    if-eq v0, v4, :cond_12

    .line 3282
    const/4 v4, 0x3

    move/from16 v0, v20

    if-ne v0, v4, :cond_2

    invoke-interface/range {p3 .. p3}, Landroid/content/res/XmlResourceParser;->getDepth()I

    move-result v4

    if-le v4, v13, :cond_12

    .line 3283
    :cond_2
    const/4 v4, 0x3

    move/from16 v0, v20

    if-eq v0, v4, :cond_1

    const/4 v4, 0x4

    move/from16 v0, v20

    if-eq v0, v4, :cond_1

    .line 3287
    invoke-interface/range {p3 .. p3}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    move-result-object v19

    .line 3288
    .local v19, "tagName":Ljava/lang/String;
    const-string/jumbo v4, "activity"

    move-object/from16 v0, v19

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 3290
    move-object/from16 v0, p1

    iget-boolean v11, v0, Landroid/content/pm/PackageParser$Package;->baseHardwareAccelerated:Z

    .line 3289
    const/4 v10, 0x0

    move-object/from16 v4, p0

    move-object/from16 v5, p1

    move-object/from16 v6, p2

    move-object/from16 v7, p3

    move/from16 v8, p4

    move-object/from16 v9, p6

    invoke-direct/range {v4 .. v11}, Landroid/content/pm/PackageParser;->parseActivity(Landroid/content/pm/PackageParser$Package;Landroid/content/res/Resources;Landroid/content/res/XmlResourceParser;I[Ljava/lang/String;ZZ)Landroid/content/pm/PackageParser$Activity;

    move-result-object v12

    .line 3291
    .local v12, "a":Landroid/content/pm/PackageParser$Activity;
    if-nez v12, :cond_3

    .line 3292
    const/16 v4, -0x6c

    move-object/from16 v0, p0

    iput v4, v0, Landroid/content/pm/PackageParser;->mParseError:I

    .line 3293
    const/4 v4, 0x0

    return v4

    .line 3296
    :cond_3
    move-object/from16 v0, p1

    iget-object v4, v0, Landroid/content/pm/PackageParser$Package;->activities:Ljava/util/ArrayList;

    invoke-virtual {v4, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 3298
    .end local v12    # "a":Landroid/content/pm/PackageParser$Activity;
    :cond_4
    const-string/jumbo v4, "receiver"

    move-object/from16 v0, v19

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_6

    .line 3299
    const/4 v10, 0x1

    const/4 v11, 0x0

    move-object/from16 v4, p0

    move-object/from16 v5, p1

    move-object/from16 v6, p2

    move-object/from16 v7, p3

    move/from16 v8, p4

    move-object/from16 v9, p6

    invoke-direct/range {v4 .. v11}, Landroid/content/pm/PackageParser;->parseActivity(Landroid/content/pm/PackageParser$Package;Landroid/content/res/Resources;Landroid/content/res/XmlResourceParser;I[Ljava/lang/String;ZZ)Landroid/content/pm/PackageParser$Activity;

    move-result-object v12

    .line 3300
    .restart local v12    # "a":Landroid/content/pm/PackageParser$Activity;
    if-nez v12, :cond_5

    .line 3301
    const/16 v4, -0x6c

    move-object/from16 v0, p0

    iput v4, v0, Landroid/content/pm/PackageParser;->mParseError:I

    .line 3302
    const/4 v4, 0x0

    return v4

    .line 3305
    :cond_5
    move-object/from16 v0, p1

    iget-object v4, v0, Landroid/content/pm/PackageParser$Package;->receivers:Ljava/util/ArrayList;

    invoke-virtual {v4, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 3307
    .end local v12    # "a":Landroid/content/pm/PackageParser$Activity;
    :cond_6
    const-string/jumbo v4, "service"

    move-object/from16 v0, v19

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_8

    move-object/from16 v4, p0

    move-object/from16 v5, p1

    move-object/from16 v6, p2

    move-object/from16 v7, p3

    move/from16 v8, p4

    move-object/from16 v9, p6

    .line 3308
    invoke-direct/range {v4 .. v9}, Landroid/content/pm/PackageParser;->parseService(Landroid/content/pm/PackageParser$Package;Landroid/content/res/Resources;Landroid/content/res/XmlResourceParser;I[Ljava/lang/String;)Landroid/content/pm/PackageParser$Service;

    move-result-object v17

    .line 3309
    .local v17, "s":Landroid/content/pm/PackageParser$Service;
    if-nez v17, :cond_7

    .line 3310
    const/16 v4, -0x6c

    move-object/from16 v0, p0

    iput v4, v0, Landroid/content/pm/PackageParser;->mParseError:I

    .line 3311
    const/4 v4, 0x0

    return v4

    .line 3314
    :cond_7
    move-object/from16 v0, p1

    iget-object v4, v0, Landroid/content/pm/PackageParser$Package;->services:Ljava/util/ArrayList;

    move-object/from16 v0, v17

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 3316
    .end local v17    # "s":Landroid/content/pm/PackageParser$Service;
    :cond_8
    const-string/jumbo v4, "provider"

    move-object/from16 v0, v19

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_a

    move-object/from16 v4, p0

    move-object/from16 v5, p1

    move-object/from16 v6, p2

    move-object/from16 v7, p3

    move/from16 v8, p4

    move-object/from16 v9, p6

    .line 3317
    invoke-direct/range {v4 .. v9}, Landroid/content/pm/PackageParser;->parseProvider(Landroid/content/pm/PackageParser$Package;Landroid/content/res/Resources;Landroid/content/res/XmlResourceParser;I[Ljava/lang/String;)Landroid/content/pm/PackageParser$Provider;

    move-result-object v15

    .line 3318
    .local v15, "p":Landroid/content/pm/PackageParser$Provider;
    if-nez v15, :cond_9

    .line 3319
    const/16 v4, -0x6c

    move-object/from16 v0, p0

    iput v4, v0, Landroid/content/pm/PackageParser;->mParseError:I

    .line 3320
    const/4 v4, 0x0

    return v4

    .line 3323
    :cond_9
    move-object/from16 v0, p1

    iget-object v4, v0, Landroid/content/pm/PackageParser$Package;->providers:Ljava/util/ArrayList;

    invoke-virtual {v4, v15}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 3325
    .end local v15    # "p":Landroid/content/pm/PackageParser$Provider;
    :cond_a
    const-string/jumbo v4, "activity-alias"

    move-object/from16 v0, v19

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_c

    move-object/from16 v4, p0

    move-object/from16 v5, p1

    move-object/from16 v6, p2

    move-object/from16 v7, p3

    move/from16 v8, p4

    move-object/from16 v9, p6

    .line 3326
    invoke-direct/range {v4 .. v9}, Landroid/content/pm/PackageParser;->parseActivityAlias(Landroid/content/pm/PackageParser$Package;Landroid/content/res/Resources;Landroid/content/res/XmlResourceParser;I[Ljava/lang/String;)Landroid/content/pm/PackageParser$Activity;

    move-result-object v12

    .line 3327
    .restart local v12    # "a":Landroid/content/pm/PackageParser$Activity;
    if-nez v12, :cond_b

    .line 3328
    const/16 v4, -0x6c

    move-object/from16 v0, p0

    iput v4, v0, Landroid/content/pm/PackageParser;->mParseError:I

    .line 3329
    const/4 v4, 0x0

    return v4

    .line 3332
    :cond_b
    move-object/from16 v0, p1

    iget-object v4, v0, Landroid/content/pm/PackageParser$Package;->activities:Ljava/util/ArrayList;

    invoke-virtual {v4, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 3334
    .end local v12    # "a":Landroid/content/pm/PackageParser$Activity;
    :cond_c
    invoke-interface/range {p3 .. p3}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v5, "meta-data"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_d

    .line 3338
    move-object/from16 v0, p1

    iget-object v4, v0, Landroid/content/pm/PackageParser$Package;->mAppMetaData:Landroid/os/Bundle;

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move-object/from16 v2, p3

    move-object/from16 v3, p6

    invoke-direct {v0, v1, v2, v4, v3}, Landroid/content/pm/PackageParser;->parseMetaData(Landroid/content/res/Resources;Landroid/content/res/XmlResourceParser;Landroid/os/Bundle;[Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v4

    move-object/from16 v0, p1

    iput-object v4, v0, Landroid/content/pm/PackageParser$Package;->mAppMetaData:Landroid/os/Bundle;

    if-nez v4, :cond_1

    .line 3340
    const/16 v4, -0x6c

    move-object/from16 v0, p0

    iput v4, v0, Landroid/content/pm/PackageParser;->mParseError:I

    .line 3341
    const/4 v4, 0x0

    return v4

    .line 3344
    :cond_d
    const-string/jumbo v4, "uses-library"

    move-object/from16 v0, v19

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_10

    .line 3346
    sget-object v4, Lcom/android/internal/R$styleable;->AndroidManifestUsesLibrary:[I

    .line 3345
    move-object/from16 v0, p2

    move-object/from16 v1, p3

    invoke-virtual {v0, v1, v4}, Landroid/content/res/Resources;->obtainAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v18

    .line 3351
    const/4 v4, 0x0

    .line 3350
    move-object/from16 v0, v18

    invoke-virtual {v0, v4}, Landroid/content/res/TypedArray;->getNonResourceString(I)Ljava/lang/String;

    move-result-object v14

    .line 3353
    .local v14, "lname":Ljava/lang/String;
    const/4 v4, 0x1

    .line 3354
    const/4 v5, 0x1

    .line 3352
    move-object/from16 v0, v18

    invoke-virtual {v0, v4, v5}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v16

    .line 3356
    .local v16, "req":Z
    invoke-virtual/range {v18 .. v18}, Landroid/content/res/TypedArray;->recycle()V

    .line 3358
    if-eqz v14, :cond_e

    .line 3359
    invoke-virtual {v14}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v14

    .line 3360
    if-eqz v16, :cond_f

    .line 3362
    move-object/from16 v0, p1

    iget-object v4, v0, Landroid/content/pm/PackageParser$Package;->usesLibraries:Ljava/util/ArrayList;

    invoke-static {v4, v14}, Lcom/android/internal/util/ArrayUtils;->add(Ljava/util/ArrayList;Ljava/lang/Object;)Ljava/util/ArrayList;

    move-result-object v4

    move-object/from16 v0, p1

    iput-object v4, v0, Landroid/content/pm/PackageParser$Package;->usesLibraries:Ljava/util/ArrayList;

    .line 3364
    move-object/from16 v0, p1

    iget-object v4, v0, Landroid/content/pm/PackageParser$Package;->usesOptionalLibraries:Ljava/util/ArrayList;

    .line 3363
    invoke-static {v4, v14}, Lcom/android/internal/util/ArrayUtils;->remove(Ljava/util/ArrayList;Ljava/lang/Object;)Ljava/util/ArrayList;

    move-result-object v4

    move-object/from16 v0, p1

    iput-object v4, v0, Landroid/content/pm/PackageParser$Package;->usesOptionalLibraries:Ljava/util/ArrayList;

    .line 3374
    :cond_e
    :goto_1
    invoke-static/range {p3 .. p3}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    goto/16 :goto_0

    .line 3367
    :cond_f
    move-object/from16 v0, p1

    iget-object v4, v0, Landroid/content/pm/PackageParser$Package;->usesLibraries:Ljava/util/ArrayList;

    invoke-static {v4, v14}, Lcom/android/internal/util/ArrayUtils;->contains(Ljava/util/Collection;Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_e

    .line 3369
    move-object/from16 v0, p1

    iget-object v4, v0, Landroid/content/pm/PackageParser$Package;->usesOptionalLibraries:Ljava/util/ArrayList;

    .line 3368
    invoke-static {v4, v14}, Lcom/android/internal/util/ArrayUtils;->add(Ljava/util/ArrayList;Ljava/lang/Object;)Ljava/util/ArrayList;

    move-result-object v4

    move-object/from16 v0, p1

    iput-object v4, v0, Landroid/content/pm/PackageParser$Package;->usesOptionalLibraries:Ljava/util/ArrayList;

    goto :goto_1

    .line 3376
    .end local v14    # "lname":Ljava/lang/String;
    .end local v16    # "req":Z
    :cond_10
    const-string/jumbo v4, "uses-package"

    move-object/from16 v0, v19

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_11

    .line 3379
    invoke-static/range {p3 .. p3}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    goto/16 :goto_0

    .line 3383
    :cond_11
    const-string/jumbo v4, "PackageParser"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "Unknown element under <application>: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, v19

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 3384
    const-string/jumbo v6, " at "

    .line 3383
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 3384
    move-object/from16 v0, p0

    iget-object v6, v0, Landroid/content/pm/PackageParser;->mArchiveSourcePath:Ljava/lang/String;

    .line 3383
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 3384
    const-string/jumbo v6, " "

    .line 3383
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 3385
    invoke-interface/range {p3 .. p3}, Landroid/content/res/XmlResourceParser;->getPositionDescription()Ljava/lang/String;

    move-result-object v6

    .line 3383
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3386
    invoke-static/range {p3 .. p3}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    goto/16 :goto_0

    .line 3396
    .end local v19    # "tagName":Ljava/lang/String;
    :cond_12
    const/4 v4, 0x1

    return v4
.end method

.method private parseUsesFeature(Landroid/content/res/Resources;Landroid/util/AttributeSet;)Landroid/content/pm/FeatureInfo;
    .locals 5
    .param p1, "res"    # Landroid/content/res/Resources;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 2278
    new-instance v0, Landroid/content/pm/FeatureInfo;

    invoke-direct {v0}, Landroid/content/pm/FeatureInfo;-><init>()V

    .line 2280
    .local v0, "fi":Landroid/content/pm/FeatureInfo;
    sget-object v2, Lcom/android/internal/R$styleable;->AndroidManifestUsesFeature:[I

    .line 2279
    invoke-virtual {p1, p2, v2}, Landroid/content/res/Resources;->obtainAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v1

    .line 2283
    .local v1, "sa":Landroid/content/res/TypedArray;
    invoke-virtual {v1, v3}, Landroid/content/res/TypedArray;->getNonResourceString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Landroid/content/pm/FeatureInfo;->name:Ljava/lang/String;

    .line 2286
    const/4 v2, 0x3

    .line 2285
    invoke-virtual {v1, v2, v3}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v2

    iput v2, v0, Landroid/content/pm/FeatureInfo;->version:I

    .line 2287
    iget-object v2, v0, Landroid/content/pm/FeatureInfo;->name:Ljava/lang/String;

    if-nez v2, :cond_0

    .line 2288
    invoke-virtual {v1, v4, v3}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v2

    iput v2, v0, Landroid/content/pm/FeatureInfo;->reqGlEsVersion:I

    .line 2293
    :cond_0
    const/4 v2, 0x2

    .line 2292
    invoke-virtual {v1, v2, v4}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 2294
    iget v2, v0, Landroid/content/pm/FeatureInfo;->flags:I

    or-int/lit8 v2, v2, 0x1

    iput v2, v0, Landroid/content/pm/FeatureInfo;->flags:I

    .line 2296
    :cond_1
    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V

    .line 2297
    return-object v0
.end method

.method private parseUsesPermission(Landroid/content/pm/PackageParser$Package;Landroid/content/res/Resources;Landroid/content/res/XmlResourceParser;)Z
    .locals 9
    .param p1, "pkg"    # Landroid/content/pm/PackageParser$Package;
    .param p2, "res"    # Landroid/content/res/Resources;
    .param p3, "parser"    # Landroid/content/res/XmlResourceParser;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v8, 0x1

    const/4 v6, 0x0

    .line 2303
    sget-object v5, Lcom/android/internal/R$styleable;->AndroidManifestUsesPermission:[I

    .line 2302
    invoke-virtual {p2, p3, v5}, Landroid/content/res/Resources;->obtainAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v3

    .line 2307
    .local v3, "sa":Landroid/content/res/TypedArray;
    invoke-virtual {v3, v6}, Landroid/content/res/TypedArray;->getNonResourceString(I)Ljava/lang/String;

    move-result-object v2

    .line 2310
    .local v2, "name":Ljava/lang/String;
    const/4 v1, 0x0

    .line 2311
    .local v1, "maxSdkVersion":I
    invoke-virtual {v3, v8}, Landroid/content/res/TypedArray;->peekValue(I)Landroid/util/TypedValue;

    move-result-object v4

    .line 2313
    .local v4, "val":Landroid/util/TypedValue;
    if-eqz v4, :cond_0

    .line 2314
    iget v5, v4, Landroid/util/TypedValue;->type:I

    const/16 v6, 0x10

    if-lt v5, v6, :cond_0

    iget v5, v4, Landroid/util/TypedValue;->type:I

    const/16 v6, 0x1f

    if-gt v5, v6, :cond_0

    .line 2315
    iget v1, v4, Landroid/util/TypedValue;->data:I

    .line 2319
    :cond_0
    invoke-virtual {v3}, Landroid/content/res/TypedArray;->recycle()V

    .line 2321
    if-eqz v1, :cond_1

    sget v5, Landroid/os/Build$VERSION;->RESOURCES_SDK_INT:I

    if-lt v1, v5, :cond_2

    .line 2322
    :cond_1
    if-eqz v2, :cond_2

    .line 2323
    iget-object v5, p1, Landroid/content/pm/PackageParser$Package;->requestedPermissions:Ljava/util/ArrayList;

    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v0

    .line 2324
    .local v0, "index":I
    const/4 v5, -0x1

    if-ne v0, v5, :cond_3

    .line 2325
    iget-object v5, p1, Landroid/content/pm/PackageParser$Package;->requestedPermissions:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2338
    .end local v0    # "index":I
    :cond_2
    :goto_0
    invoke-static {p3}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    .line 2339
    return v8

    .line 2328
    .restart local v0    # "index":I
    :cond_3
    iget-boolean v5, p0, Landroid/content/pm/PackageParser;->mTidyLog:Z

    if-nez v5, :cond_2

    .line 2329
    const-string/jumbo v5, "PackageParser"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "Ignoring duplicate uses-permissions/uses-permissions-sdk-m: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 2330
    const-string/jumbo v7, " in package: "

    .line 2329
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 2330
    iget-object v7, p1, Landroid/content/pm/PackageParser$Package;->packageName:Ljava/lang/String;

    .line 2329
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 2330
    const-string/jumbo v7, " at: "

    .line 2329
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 2331
    invoke-interface {p3}, Landroid/content/res/XmlResourceParser;->getPositionDescription()Ljava/lang/String;

    move-result-object v7

    .line 2329
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private static parseVerifier(Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;I)Landroid/content/pm/VerifierInfo;
    .locals 8
    .param p0, "res"    # Landroid/content/res/Resources;
    .param p1, "parser"    # Lorg/xmlpull/v1/XmlPullParser;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "flags"    # I

    .prologue
    const/4 v5, 0x0

    const/4 v7, 0x0

    .line 4547
    sget-object v4, Lcom/android/internal/R$styleable;->AndroidManifestPackageVerifier:[I

    .line 4546
    invoke-virtual {p0, p2, v4}, Landroid/content/res/Resources;->obtainAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v3

    .line 4549
    .local v3, "sa":Landroid/content/res/TypedArray;
    invoke-virtual {v3, v5}, Landroid/content/res/TypedArray;->getNonResourceString(I)Ljava/lang/String;

    move-result-object v1

    .line 4553
    .local v1, "packageName":Ljava/lang/String;
    const/4 v4, 0x1

    .line 4552
    invoke-virtual {v3, v4}, Landroid/content/res/TypedArray;->getNonResourceString(I)Ljava/lang/String;

    move-result-object v0

    .line 4555
    .local v0, "encodedPublicKey":Ljava/lang/String;
    invoke-virtual {v3}, Landroid/content/res/TypedArray;->recycle()V

    .line 4557
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v4

    if-nez v4, :cond_1

    .line 4558
    :cond_0
    const-string/jumbo v4, "PackageParser"

    const-string/jumbo v5, "verifier package name was null; skipping"

    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 4559
    return-object v7

    .line 4562
    :cond_1
    invoke-static {v0}, Landroid/content/pm/PackageParser;->parsePublicKey(Ljava/lang/String;)Ljava/security/PublicKey;

    move-result-object v2

    .line 4563
    .local v2, "publicKey":Ljava/security/PublicKey;
    if-nez v2, :cond_2

    .line 4564
    const-string/jumbo v4, "PackageParser"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "Unable to parse verifier public key for "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 4565
    return-object v7

    .line 4568
    :cond_2
    new-instance v4, Landroid/content/pm/VerifierInfo;

    invoke-direct {v4, v1, v2}, Landroid/content/pm/VerifierInfo;-><init>(Ljava/lang/String;Ljava/security/PublicKey;)V

    return-object v4
.end method

.method public static populateCertificates(Landroid/content/pm/PackageParser$Package;[[Ljava/security/cert/Certificate;)V
    .locals 9
    .param p0, "pkg"    # Landroid/content/pm/PackageParser$Package;
    .param p1, "certificates"    # [[Ljava/security/cert/Certificate;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/pm/PackageParser$PackageParserException;
        }
    .end annotation

    .prologue
    const/4 v6, 0x0

    .line 1151
    iput-object v6, p0, Landroid/content/pm/PackageParser$Package;->mCertificates:[[Ljava/security/cert/Certificate;

    .line 1152
    iput-object v6, p0, Landroid/content/pm/PackageParser$Package;->mSignatures:[Landroid/content/pm/Signature;

    .line 1153
    iput-object v6, p0, Landroid/content/pm/PackageParser$Package;->mSigningKeys:Landroid/util/ArraySet;

    .line 1155
    iput-object p1, p0, Landroid/content/pm/PackageParser$Package;->mCertificates:[[Ljava/security/cert/Certificate;

    .line 1157
    :try_start_0
    invoke-static {p1}, Landroid/content/pm/PackageParser;->convertToSignatures([[Ljava/security/cert/Certificate;)[Landroid/content/pm/Signature;

    move-result-object v6

    iput-object v6, p0, Landroid/content/pm/PackageParser$Package;->mSignatures:[Landroid/content/pm/Signature;
    :try_end_0
    .catch Ljava/security/cert/CertificateEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1163
    new-instance v6, Landroid/util/ArraySet;

    array-length v7, p1

    invoke-direct {v6, v7}, Landroid/util/ArraySet;-><init>(I)V

    iput-object v6, p0, Landroid/content/pm/PackageParser$Package;->mSigningKeys:Landroid/util/ArraySet;

    .line 1164
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    array-length v6, p1

    if-ge v3, v6, :cond_0

    .line 1165
    aget-object v5, p1, v3

    .line 1166
    .local v5, "signerCerts":[Ljava/security/cert/Certificate;
    const/4 v6, 0x0

    aget-object v4, v5, v6

    .line 1167
    .local v4, "signerCert":Ljava/security/cert/Certificate;
    iget-object v6, p0, Landroid/content/pm/PackageParser$Package;->mSigningKeys:Landroid/util/ArraySet;

    invoke-virtual {v4}, Ljava/security/cert/Certificate;->getPublicKey()Ljava/security/PublicKey;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 1164
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 1158
    .end local v3    # "i":I
    .end local v4    # "signerCert":Ljava/security/cert/Certificate;
    .end local v5    # "signerCerts":[Ljava/security/cert/Certificate;
    :catch_0
    move-exception v2

    .line 1160
    .local v2, "e":Ljava/security/cert/CertificateEncodingException;
    new-instance v6, Landroid/content/pm/PackageParser$PackageParserException;

    .line 1161
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "Failed to collect certificates from "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Landroid/content/pm/PackageParser$Package;->baseCodePath:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 1160
    const/16 v8, -0x67

    invoke-direct {v6, v8, v7, v2}, Landroid/content/pm/PackageParser$PackageParserException;-><init>(ILjava/lang/String;Ljava/lang/Throwable;)V

    throw v6

    .line 1170
    .end local v2    # "e":Ljava/security/cert/CertificateEncodingException;
    .restart local v3    # "i":I
    :cond_0
    iget-object v6, p0, Landroid/content/pm/PackageParser$Package;->childPackages:Ljava/util/ArrayList;

    if-eqz v6, :cond_1

    iget-object v6, p0, Landroid/content/pm/PackageParser$Package;->childPackages:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 1171
    .local v0, "childCount":I
    :goto_1
    const/4 v3, 0x0

    :goto_2
    if-ge v3, v0, :cond_2

    .line 1172
    iget-object v6, p0, Landroid/content/pm/PackageParser$Package;->childPackages:Ljava/util/ArrayList;

    invoke-virtual {v6, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/PackageParser$Package;

    .line 1173
    .local v1, "childPkg":Landroid/content/pm/PackageParser$Package;
    iget-object v6, p0, Landroid/content/pm/PackageParser$Package;->mCertificates:[[Ljava/security/cert/Certificate;

    iput-object v6, v1, Landroid/content/pm/PackageParser$Package;->mCertificates:[[Ljava/security/cert/Certificate;

    .line 1174
    iget-object v6, p0, Landroid/content/pm/PackageParser$Package;->mSignatures:[Landroid/content/pm/Signature;

    iput-object v6, v1, Landroid/content/pm/PackageParser$Package;->mSignatures:[Landroid/content/pm/Signature;

    .line 1175
    iget-object v6, p0, Landroid/content/pm/PackageParser$Package;->mSigningKeys:Landroid/util/ArraySet;

    iput-object v6, v1, Landroid/content/pm/PackageParser$Package;->mSigningKeys:Landroid/util/ArraySet;

    .line 1171
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 1170
    .end local v0    # "childCount":I
    .end local v1    # "childPkg":Landroid/content/pm/PackageParser$Package;
    :cond_1
    const/4 v0, 0x0

    .restart local v0    # "childCount":I
    goto :goto_1

    .line 1150
    :cond_2
    return-void
.end method

.method public static readFullyIgnoringContents(Ljava/io/InputStream;)J
    .locals 6
    .param p0, "in"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    .line 5809
    sget-object v3, Landroid/content/pm/PackageParser;->sBuffer:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v3, v4}, Ljava/util/concurrent/atomic/AtomicReference;->getAndSet(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    .line 5810
    .local v0, "buffer":[B
    if-nez v0, :cond_0

    .line 5811
    const/16 v3, 0x1000

    new-array v0, v3, [B

    .line 5814
    :cond_0
    const/4 v2, 0x0

    .line 5815
    .local v2, "n":I
    const/4 v1, 0x0

    .line 5816
    .local v1, "count":I
    :goto_0
    array-length v3, v0

    const/4 v4, 0x0

    invoke-virtual {p0, v0, v4, v3}, Ljava/io/InputStream;->read([BII)I

    move-result v2

    const/4 v3, -0x1

    if-eq v2, v3, :cond_1

    .line 5817
    add-int/2addr v1, v2

    goto :goto_0

    .line 5820
    :cond_1
    sget-object v3, Landroid/content/pm/PackageParser;->sBuffer:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v3, v0}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    .line 5821
    int-to-long v4, v1

    return-wide v4
.end method

.method public static setCompatibilityModeEnabled(Z)V
    .locals 0
    .param p0, "compatibilityModeEnabled"    # Z

    .prologue
    .line 5803
    sput-boolean p0, Landroid/content/pm/PackageParser;->sCompatibilityModeEnabled:Z

    .line 5802
    return-void
.end method

.method public static stringToSignature(Ljava/lang/String;)Landroid/content/pm/Signature;
    .locals 4
    .param p0, "str"    # Ljava/lang/String;

    .prologue
    .line 1566
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    .line 1567
    .local v0, "N":I
    new-array v2, v0, [B

    .line 1568
    .local v2, "sig":[B
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 1569
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v3

    int-to-byte v3, v3

    aput-byte v3, v2, v1

    .line 1568
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1571
    :cond_0
    new-instance v3, Landroid/content/pm/Signature;

    invoke-direct {v3, v2}, Landroid/content/pm/Signature;-><init>([B)V

    return-object v3
.end method

.method private static updateApplicationInfo(Landroid/content/pm/ApplicationInfo;ILandroid/content/pm/PackageUserState;)V
    .locals 4
    .param p0, "ai"    # Landroid/content/pm/ApplicationInfo;
    .param p1, "flags"    # I
    .param p2, "state"    # Landroid/content/pm/PackageUserState;

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 5443
    sget-boolean v2, Landroid/content/pm/PackageParser;->sCompatibilityModeEnabled:Z

    if-nez v2, :cond_0

    .line 5444
    invoke-virtual {p0}, Landroid/content/pm/ApplicationInfo;->disableCompatibilityMode()V

    .line 5446
    :cond_0
    iget-boolean v2, p2, Landroid/content/pm/PackageUserState;->installed:Z

    if-eqz v2, :cond_2

    .line 5447
    iget v2, p0, Landroid/content/pm/ApplicationInfo;->flags:I

    const/high16 v3, 0x800000

    or-int/2addr v2, v3

    iput v2, p0, Landroid/content/pm/ApplicationInfo;->flags:I

    .line 5451
    :goto_0
    iget-boolean v2, p2, Landroid/content/pm/PackageUserState;->suspended:Z

    if-eqz v2, :cond_3

    .line 5452
    iget v2, p0, Landroid/content/pm/ApplicationInfo;->flags:I

    const/high16 v3, 0x40000000    # 2.0f

    or-int/2addr v2, v3

    iput v2, p0, Landroid/content/pm/ApplicationInfo;->flags:I

    .line 5456
    :goto_1
    iget-boolean v2, p2, Landroid/content/pm/PackageUserState;->hidden:Z

    if-eqz v2, :cond_4

    .line 5457
    iget v2, p0, Landroid/content/pm/ApplicationInfo;->privateFlags:I

    or-int/lit8 v2, v2, 0x1

    iput v2, p0, Landroid/content/pm/ApplicationInfo;->privateFlags:I

    .line 5461
    :goto_2
    iget v2, p2, Landroid/content/pm/PackageUserState;->enabled:I

    if-ne v2, v0, :cond_5

    .line 5462
    iput-boolean v0, p0, Landroid/content/pm/ApplicationInfo;->enabled:Z

    .line 5469
    :cond_1
    :goto_3
    iget v0, p2, Landroid/content/pm/PackageUserState;->enabled:I

    iput v0, p0, Landroid/content/pm/ApplicationInfo;->enabledSetting:I

    .line 5441
    return-void

    .line 5449
    :cond_2
    iget v2, p0, Landroid/content/pm/ApplicationInfo;->flags:I

    const v3, -0x800001

    and-int/2addr v2, v3

    iput v2, p0, Landroid/content/pm/ApplicationInfo;->flags:I

    goto :goto_0

    .line 5454
    :cond_3
    iget v2, p0, Landroid/content/pm/ApplicationInfo;->flags:I

    const v3, -0x40000001    # -1.9999999f

    and-int/2addr v2, v3

    iput v2, p0, Landroid/content/pm/ApplicationInfo;->flags:I

    goto :goto_1

    .line 5459
    :cond_4
    iget v2, p0, Landroid/content/pm/ApplicationInfo;->privateFlags:I

    and-int/lit8 v2, v2, -0x2

    iput v2, p0, Landroid/content/pm/ApplicationInfo;->privateFlags:I

    goto :goto_2

    .line 5463
    :cond_5
    iget v2, p2, Landroid/content/pm/PackageUserState;->enabled:I

    const/4 v3, 0x4

    if-ne v2, v3, :cond_7

    .line 5464
    const v2, 0x8000

    and-int/2addr v2, p1

    if-eqz v2, :cond_6

    :goto_4
    iput-boolean v0, p0, Landroid/content/pm/ApplicationInfo;->enabled:Z

    goto :goto_3

    :cond_6
    move v0, v1

    goto :goto_4

    .line 5465
    :cond_7
    iget v0, p2, Landroid/content/pm/PackageUserState;->enabled:I

    const/4 v2, 0x2

    if-eq v0, v2, :cond_8

    .line 5466
    iget v0, p2, Landroid/content/pm/PackageUserState;->enabled:I

    const/4 v2, 0x3

    if-ne v0, v2, :cond_1

    .line 5467
    :cond_8
    iput-boolean v1, p0, Landroid/content/pm/ApplicationInfo;->enabled:Z

    goto :goto_3
.end method

.method private static validateName(Ljava/lang/String;ZZ)Ljava/lang/String;
    .locals 7
    .param p0, "name"    # Ljava/lang/String;
    .param p1, "requireSeparator"    # Z
    .param p2, "requireFilename"    # Z

    .prologue

    invoke-static/range {p0 .. p0}, Landroid/content/pm/FlymePackageParserInjector;->validateName(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond__flyme_0

    const/4 v0, 0x0

    return-object v0

    :cond__flyme_0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    .local v0, "N":I
    const/4 v3, 0x0

    .local v3, "hasSep":Z
    const/4 v2, 0x1

    .local v2, "front":Z
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_0
    if-ge v4, v0, :cond_7

    .line 1428
    invoke-virtual {p0, v4}, Ljava/lang/String;->charAt(I)C

    move-result v1

    .line 1429
    .local v1, "c":C
    const/16 v5, 0x61

    if-lt v1, v5, :cond_2

    const/16 v5, 0x7a

    if-gt v1, v5, :cond_2

    .line 1430
    :cond_0
    const/4 v2, 0x0

    .line 1427
    :cond_1
    :goto_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 1429
    :cond_2
    const/16 v5, 0x41

    if-lt v1, v5, :cond_3

    const/16 v5, 0x5a

    if-le v1, v5, :cond_0

    .line 1433
    :cond_3
    if-nez v2, :cond_5

    .line 1434
    const/16 v5, 0x30

    if-lt v1, v5, :cond_4

    const/16 v5, 0x39

    if-le v1, v5, :cond_1

    :cond_4
    const/16 v5, 0x5f

    if-eq v1, v5, :cond_1

    .line 1438
    :cond_5
    const/16 v5, 0x2e

    if-ne v1, v5, :cond_6

    .line 1439
    const/4 v3, 0x1

    .line 1440
    const/4 v2, 0x1

    .line 1441
    goto :goto_1

    .line 1443
    :cond_6
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "bad character \'"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, "\'"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    return-object v5

    .line 1445
    .end local v1    # "c":C
    :cond_7
    if-eqz p2, :cond_8

    invoke-static {p0}, Landroid/os/FileUtils;->isValidExtFilename(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_9

    .line 1448
    :cond_8
    if-nez v3, :cond_a

    if-eqz p1, :cond_a

    .line 1449
    const-string/jumbo v5, "must have at least one \'.\' separator"

    .line 1448
    :goto_2
    return-object v5

    .line 1446
    :cond_9
    const-string/jumbo v5, "Invalid filename"

    return-object v5

    .line 1449
    :cond_a
    const/4 v5, 0x0

    goto :goto_2
.end method


# virtual methods
.method public parseMonolithicPackage(Ljava/io/File;I)Landroid/content/pm/PackageParser$Package;
    .locals 7
    .param p1, "apkFile"    # Ljava/io/File;
    .param p2, "flags"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/pm/PackageParser$PackageParserException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    const/16 v6, -0x6c

    .line 925
    invoke-static {p1, p2}, Landroid/content/pm/PackageParser;->parseMonolithicPackageLite(Ljava/io/File;I)Landroid/content/pm/PackageParser$PackageLite;

    move-result-object v1

    .line 927
    .local v1, "lite":Landroid/content/pm/PackageParser$PackageLite;
    iget-boolean v3, p0, Landroid/content/pm/PackageParser;->mOnlyPowerOffAlarmApps:Z

    if-eqz v3, :cond_0

    .line 928
    iget-object v3, v1, Landroid/content/pm/PackageParser$PackageLite;->packageName:Ljava/lang/String;

    invoke-direct {p0, v3}, Landroid/content/pm/PackageParser;->isPowerOffAlarmPackage(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 929
    new-instance v3, Landroid/content/pm/PackageParser$PackageParserException;

    .line 930
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Not a powerOffAlarmApp: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 929
    invoke-direct {v3, v6, v4}, Landroid/content/pm/PackageParser$PackageParserException;-><init>(ILjava/lang/String;)V

    throw v3

    .line 934
    :cond_0
    iget-boolean v3, p0, Landroid/content/pm/PackageParser;->mOnlyPowerOffAlarmApps:Z

    if-nez v3, :cond_1

    iget-boolean v3, p0, Landroid/content/pm/PackageParser;->mOnlyCoreApps:Z

    if-eqz v3, :cond_1

    .line 935
    iget-boolean v3, v1, Landroid/content/pm/PackageParser$PackageLite;->coreApp:Z

    if-nez v3, :cond_1

    .line 936
    new-instance v3, Landroid/content/pm/PackageParser$PackageParserException;

    .line 937
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Not a coreApp: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 936
    invoke-direct {v3, v6, v4}, Landroid/content/pm/PackageParser$PackageParserException;-><init>(ILjava/lang/String;)V

    throw v3

    .line 941
    :cond_1
    new-instance v0, Landroid/content/res/AssetManager;

    invoke-direct {v0}, Landroid/content/res/AssetManager;-><init>()V

    .line 943
    .local v0, "assets":Landroid/content/res/AssetManager;
    :try_start_0
    invoke-direct {p0, p1, v0, p2}, Landroid/content/pm/PackageParser;->parseBaseApk(Ljava/io/File;Landroid/content/res/AssetManager;I)Landroid/content/pm/PackageParser$Package;

    move-result-object v2

    .line 944
    .local v2, "pkg":Landroid/content/pm/PackageParser$Package;
    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/content/pm/PackageParser$Package;->setCodePath(Ljava/lang/String;)V

    .line 945
    iget-boolean v3, v1, Landroid/content/pm/PackageParser$PackageLite;->use32bitAbi:Z

    invoke-virtual {v2, v3}, Landroid/content/pm/PackageParser$Package;->setUse32bitAbi(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 948
    invoke-static {v0}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 946
    return-object v2

    .line 947
    .end local v2    # "pkg":Landroid/content/pm/PackageParser$Package;
    :catchall_0
    move-exception v3

    .line 948
    invoke-static {v0}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 947
    throw v3
.end method

.method public parsePackage(Ljava/io/File;I)Landroid/content/pm/PackageParser$Package;
    .locals 1
    .param p1, "packageFile"    # Ljava/io/File;
    .param p2, "flags"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/pm/PackageParser$PackageParserException;
        }
    .end annotation

    .prologue
    .line 821
    invoke-virtual {p1}, Ljava/io/File;->isDirectory()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 822
    invoke-direct {p0, p1, p2}, Landroid/content/pm/PackageParser;->parseClusterPackage(Ljava/io/File;I)Landroid/content/pm/PackageParser$Package;

    move-result-object v0

    return-object v0

    .line 824
    :cond_0
    invoke-virtual {p0, p1, p2}, Landroid/content/pm/PackageParser;->parseMonolithicPackage(Ljava/io/File;I)Landroid/content/pm/PackageParser$Package;

    move-result-object v0

    return-object v0
.end method

.method public setDisplayMetrics(Landroid/util/DisplayMetrics;)V
    .locals 0
    .param p1, "metrics"    # Landroid/util/DisplayMetrics;

    .prologue
    .line 467
    iput-object p1, p0, Landroid/content/pm/PackageParser;->mMetrics:Landroid/util/DisplayMetrics;

    .line 466
    return-void
.end method

.method public setOnlyCoreApps(Z)V
    .locals 0
    .param p1, "onlyCoreApps"    # Z

    .prologue
    .line 463
    iput-boolean p1, p0, Landroid/content/pm/PackageParser;->mOnlyCoreApps:Z

    .line 462
    return-void
.end method

.method public setOnlyPowerOffAlarmApps(Z)V
    .locals 0
    .param p1, "onlyPowerOffAlarmApps"    # Z

    .prologue
    .line 471
    iput-boolean p1, p0, Landroid/content/pm/PackageParser;->mOnlyPowerOffAlarmApps:Z

    .line 470
    return-void
.end method

.method public setSeparateProcesses([Ljava/lang/String;)V
    .locals 0
    .param p1, "procs"    # [Ljava/lang/String;

    .prologue
    .line 454
    iput-object p1, p0, Landroid/content/pm/PackageParser;->mSeparateProcesses:[Ljava/lang/String;

    .line 453
    return-void
.end method
