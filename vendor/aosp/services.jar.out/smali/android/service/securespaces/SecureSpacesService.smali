.class public Landroid/service/securespaces/SecureSpacesService;
.super Landroid/os/securespaces/ISecureSpacesService$Stub;
.source "SecureSpacesService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/service/securespaces/SecureSpacesService$1;,
        Landroid/service/securespaces/SecureSpacesService$SecureSpacesExtension;,
        Landroid/service/securespaces/SecureSpacesService$UserRestriction;
    }
.end annotation


# static fields
.field private static final ATTR_FEATURE_TYPE:Ljava/lang/String; = "featureType"

.field private static final ATTR_SUB_ID:Ljava/lang/String; = "sub_id"

.field private static final ATTR_USER_ID:Ljava/lang/String; = "user_id"

.field private static final DEBUG:Z = true

.field private static final FEATURE_SPACE_PHONE:Ljava/lang/String; = "space_phone"

.field private static final PROPERTIES_FILE_PREFIX:Ljava/lang/String; = "space_properties"

.field private static final SPACE_EXTENSION_MAJOR_VERSION_SUFFIX:Ljava/lang/String; = "majorVersion"

.field private static final SPACE_EXTENSION_MINOR_VERSION_SUFFIX:Ljava/lang/String; = "minorVersion"

.field private static final SPACE_EXTENSION_NAME_SUFFIX:Ljava/lang/String; = "name"

.field private static final SPACE_EXTENSION_SERVICE_NAME_SUFFIX:Ljava/lang/String; = "serviceName"

.field private static final SPACE_EXTENSION_USER_RESTRICTIONS_SUFFIX:Ljava/lang/String; = "userRestrictions"

.field private static final TAG:Ljava/lang/String; = "SecureSpacesService"

.field private static final TAG_FEATURE:Ljava/lang/String; = "feature"

.field private static final TAG_SUBSCRIPTION:Ljava/lang/String; = "subscription"

.field public static final VERSION_MAJOR:I = 0x1

.field public static final VERSION_MINOR:I = 0x0

.field private static final XML_SUFFIX:Ljava/lang/String; = ".xml"

.field private static mWipeDataPendingUsers:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private static mWipeExclusionPackages:[Ljava/lang/String;

.field private static final sSpaceExtensionPattern:Ljava/util/regex/Pattern;


# instance fields
.field private mCleanupReceiver:Landroid/content/BroadcastReceiver;

.field private final mContext:Landroid/content/Context;

.field private mExtensions:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Landroid/service/securespaces/SecureSpacesService$SecureSpacesExtension;",
            ">;"
        }
    .end annotation
.end field

.field private mSubMap:Landroid/util/SparseIntArray;


# direct methods
.method static synthetic -wrap0(Landroid/service/securespaces/SecureSpacesService;I)V
    .locals 0
    .param p1, "userId"    # I

    .prologue
    invoke-direct {p0, p1}, Landroid/service/securespaces/SecureSpacesService;->onUserRemoved(I)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 89
    const-string/jumbo v0, "^securespaces_extension_(.*)"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    .line 88
    sput-object v0, Landroid/service/securespaces/SecureSpacesService;->sSpaceExtensionPattern:Ljava/util/regex/Pattern;

    .line 100
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    sput-object v0, Landroid/service/securespaces/SecureSpacesService;->mWipeDataPendingUsers:Ljava/util/HashSet;

    .line 101
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/String;

    sput-object v0, Landroid/service/securespaces/SecureSpacesService;->mWipeExclusionPackages:[Ljava/lang/String;

    .line 68
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 151
    invoke-direct {p0}, Landroid/os/securespaces/ISecureSpacesService$Stub;-><init>()V

    .line 98
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 97
    iput-object v0, p0, Landroid/service/securespaces/SecureSpacesService;->mExtensions:Ljava/util/HashMap;

    .line 116
    new-instance v0, Landroid/service/securespaces/SecureSpacesService$1;

    invoke-direct {v0, p0}, Landroid/service/securespaces/SecureSpacesService$1;-><init>(Landroid/service/securespaces/SecureSpacesService;)V

    iput-object v0, p0, Landroid/service/securespaces/SecureSpacesService;->mCleanupReceiver:Landroid/content/BroadcastReceiver;

    .line 152
    iput-object p1, p0, Landroid/service/securespaces/SecureSpacesService;->mContext:Landroid/content/Context;

    .line 153
    new-instance v0, Landroid/util/SparseIntArray;

    invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V

    iput-object v0, p0, Landroid/service/securespaces/SecureSpacesService;->mSubMap:Landroid/util/SparseIntArray;

    .line 154
    invoke-direct {p0}, Landroid/service/securespaces/SecureSpacesService;->findExtensions()V

    .line 151
    return-void
.end method

.method private buildUserRestrictions([Ljava/lang/String;)Ljava/util/ArrayList;
    .locals 13
    .param p1, "entries"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/service/securespaces/SecureSpacesService$UserRestriction;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v12, 0x0

    const/4 v7, 0x0

    .line 257
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 260
    .local v5, "restrictions":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/service/securespaces/SecureSpacesService$UserRestriction;>;"
    array-length v8, p1

    move v6, v7

    :goto_0
    if-ge v6, v8, :cond_2

    aget-object v1, p1, v6

    .line 261
    .local v1, "entry":Ljava/lang/String;
    const-string/jumbo v9, ","

    invoke-virtual {v1, v9}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    .line 262
    .local v4, "parts":[Ljava/lang/String;
    array-length v9, v4

    const/4 v10, 0x2

    if-eq v9, v10, :cond_0

    return-object v12

    .line 263
    :cond_0
    aget-object v2, v4, v7

    .line 264
    .local v2, "name":Ljava/lang/String;
    const/4 v3, 0x0

    .line 266
    .local v3, "ownerControlled":Z
    const/4 v9, 0x1

    :try_start_0
    aget-object v9, v4, v9

    invoke-static {v9}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v9

    if-lez v9, :cond_1

    .line 267
    const/4 v3, 0x1

    .line 272
    :cond_1
    new-instance v9, Landroid/service/securespaces/SecureSpacesService$UserRestriction;

    invoke-direct {v9, p0, v2, v3}, Landroid/service/securespaces/SecureSpacesService$UserRestriction;-><init>(Landroid/service/securespaces/SecureSpacesService;Ljava/lang/String;Z)V

    invoke-virtual {v5, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 273
    const-string/jumbo v9, "SecureSpacesService"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "Added user restriction: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    .line 274
    const-string/jumbo v11, ", ownerControlled="

    .line 273
    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 260
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 269
    :catch_0
    move-exception v0

    .line 270
    .local v0, "e":Ljava/lang/NumberFormatException;
    return-object v12

    .line 276
    .end local v0    # "e":Ljava/lang/NumberFormatException;
    .end local v1    # "entry":Ljava/lang/String;
    .end local v2    # "name":Ljava/lang/String;
    .end local v3    # "ownerControlled":Z
    .end local v4    # "parts":[Ljava/lang/String;
    :cond_2
    return-object v5
.end method

.method public static checkCallerIsSystem()V
    .locals 4

    .prologue
    .line 504
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    .line 505
    .local v0, "caller":I
    const/16 v1, 0x2710

    if-ge v0, v1, :cond_0

    .line 506
    const-string/jumbo v1, "SecureSpacesService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Caller is from system, uid: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 507
    return-void

    .line 509
    :cond_0
    new-instance v1, Ljava/lang/RuntimeException;

    const-string/jumbo v2, "Only the system may call the internal SecureSpacesService"

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private findExtensions()V
    .locals 23

    .prologue
    .line 164
    const-class v8, Lcom/android/internal/R$bool;

    .line 165
    .local v8, "c":Ljava/lang/Class;, "Ljava/lang/Class<Lcom/android/internal/R$bool;>;"
    invoke-virtual {v8}, Ljava/lang/Class;->getDeclaredFields()[Ljava/lang/reflect/Field;

    move-result-object v13

    .line 166
    .local v13, "fields":[Ljava/lang/reflect/Field;
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/service/securespaces/SecureSpacesService;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v18

    .line 167
    .local v18, "res":Landroid/content/res/Resources;
    const-string/jumbo v2, "SecureSpacesService"

    const-string/jumbo v3, "Finding extensions"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 169
    const/4 v14, 0x0

    .local v14, "i":I
    array-length v0, v13

    move/from16 v16, v0

    .local v16, "max":I
    :goto_0
    move/from16 v0, v16

    if-ge v14, v0, :cond_4

    .line 172
    :try_start_0
    aget-object v2, v13, v14

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-result v19

    .line 176
    .local v19, "resourceId":I
    invoke-virtual/range {v18 .. v19}, Landroid/content/res/Resources;->getResourceEntryName(I)Ljava/lang/String;

    move-result-object v20

    .line 177
    .local v20, "resourceName":Ljava/lang/String;
    if-nez v20, :cond_0

    .line 178
    const-string/jumbo v2, "SecureSpacesService"

    const-string/jumbo v3, "Error enumerating Secure Spaces Extensions"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 179
    return-void

    .line 181
    :cond_0
    sget-object v2, Landroid/service/securespaces/SecureSpacesService;->sSpaceExtensionPattern:Ljava/util/regex/Pattern;

    move-object/from16 v0, v20

    invoke-virtual {v2, v0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v15

    .line 182
    .local v15, "matcher":Ljava/util/regex/Matcher;
    invoke-virtual {v15}, Ljava/util/regex/Matcher;->find()Z

    move-result v2

    if-nez v2, :cond_1

    .line 169
    .end local v15    # "matcher":Ljava/util/regex/Matcher;
    .end local v19    # "resourceId":I
    .end local v20    # "resourceName":Ljava/lang/String;
    :goto_1
    add-int/lit8 v14, v14, 0x1

    goto :goto_0

    .line 184
    .restart local v15    # "matcher":Ljava/util/regex/Matcher;
    .restart local v19    # "resourceId":I
    .restart local v20    # "resourceName":Ljava/lang/String;
    :cond_1
    invoke-virtual/range {v18 .. v19}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v11

    .line 185
    .local v11, "enabled":Z
    const/4 v2, 0x1

    invoke-virtual {v15, v2}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v12

    .line 186
    .local v12, "extensionLabel":Ljava/lang/String;
    const-string/jumbo v2, "SecureSpacesService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v22, "Found extension: "

    move-object/from16 v0, v22

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v22, ", enabled: "

    move-object/from16 v0, v22

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v11}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 187
    if-nez v11, :cond_2

    .line 188
    const-string/jumbo v2, "SecureSpacesService"

    const-string/jumbo v3, "Extension not enabled.  Skipping..."

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 193
    :cond_2
    :try_start_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v20

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "_"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "name"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 194
    const-class v3, Lcom/android/internal/R$string;

    .line 193
    move-object/from16 v0, p0

    invoke-direct {v0, v2, v3}, Landroid/service/securespaces/SecureSpacesService;->getPrivateResource(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v17

    .line 192
    check-cast v17, Ljava/lang/String;

    .line 196
    .local v17, "name":Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v20

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "_"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "majorVersion"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 197
    const-class v3, Lcom/android/internal/R$integer;

    .line 196
    move-object/from16 v0, p0

    invoke-direct {v0, v2, v3}, Landroid/service/securespaces/SecureSpacesService;->getPrivateResource(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    .line 195
    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v4

    .line 199
    .local v4, "majorVersion":I
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v20

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "_"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "minorVersion"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 200
    const-class v3, Lcom/android/internal/R$integer;

    .line 199
    move-object/from16 v0, p0

    invoke-direct {v0, v2, v3}, Landroid/service/securespaces/SecureSpacesService;->getPrivateResource(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    .line 198
    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v5

    .line 202
    .local v5, "minorVersion":I
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v20

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "_"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "serviceName"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 203
    const-class v3, Lcom/android/internal/R$string;

    .line 202
    move-object/from16 v0, p0

    invoke-direct {v0, v2, v3}, Landroid/service/securespaces/SecureSpacesService;->getPrivateResource(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v6

    .line 201
    check-cast v6, Ljava/lang/String;

    .line 205
    .local v6, "serviceName":Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v20

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "_"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "userRestrictions"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 206
    const-class v3, Lcom/android/internal/R$array;

    .line 205
    move-object/from16 v0, p0

    invoke-direct {v0, v2, v3}, Landroid/service/securespaces/SecureSpacesService;->getPrivateResource(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v21

    .line 204
    check-cast v21, [Ljava/lang/String;

    .line 208
    .local v21, "userRestrictionEntries":[Ljava/lang/String;
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 209
    .local v7, "userRestrictions":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/service/securespaces/SecureSpacesService$UserRestriction;>;"
    if-eqz v21, :cond_3

    .line 210
    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-direct {v0, v1}, Landroid/service/securespaces/SecureSpacesService;->buildUserRestrictions([Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v7

    .line 211
    if-nez v7, :cond_3

    .line 212
    const-string/jumbo v2, "SecureSpacesService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v22, "Invalid user restriction string in Secure Spaces Extension: "

    move-object/from16 v0, v22

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 213
    const-string/jumbo v22, ".  Skipping extention..."

    .line 212
    move-object/from16 v0, v22

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_1

    .line 220
    .end local v4    # "majorVersion":I
    .end local v5    # "minorVersion":I
    .end local v6    # "serviceName":Ljava/lang/String;
    .end local v7    # "userRestrictions":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/service/securespaces/SecureSpacesService$UserRestriction;>;"
    .end local v17    # "name":Ljava/lang/String;
    .end local v21    # "userRestrictionEntries":[Ljava/lang/String;
    :catch_0
    move-exception v9

    .line 221
    .local v9, "e":Landroid/content/res/Resources$NotFoundException;
    const-string/jumbo v2, "SecureSpacesService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v22, "Could not find needed resource for Secure Spaces Extension: "

    move-object/from16 v0, v22

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 222
    const-string/jumbo v22, ". Skipping..."

    .line 221
    move-object/from16 v0, v22

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_1

    .line 217
    .end local v9    # "e":Landroid/content/res/Resources$NotFoundException;
    .restart local v4    # "majorVersion":I
    .restart local v5    # "minorVersion":I
    .restart local v6    # "serviceName":Ljava/lang/String;
    .restart local v7    # "userRestrictions":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/service/securespaces/SecureSpacesService$UserRestriction;>;"
    .restart local v17    # "name":Ljava/lang/String;
    .restart local v21    # "userRestrictionEntries":[Ljava/lang/String;
    :cond_3
    :try_start_2
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/service/securespaces/SecureSpacesService;->mExtensions:Ljava/util/HashMap;

    move-object/from16 v22, v0

    new-instance v2, Landroid/service/securespaces/SecureSpacesService$SecureSpacesExtension;

    move-object/from16 v3, p0

    invoke-direct/range {v2 .. v7}, Landroid/service/securespaces/SecureSpacesService$SecureSpacesExtension;-><init>(Landroid/service/securespaces/SecureSpacesService;IILjava/lang/String;Ljava/util/ArrayList;)V

    move-object/from16 v0, v22

    move-object/from16 v1, v17

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 219
    const-string/jumbo v2, "SecureSpacesService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v22, "Added extension: "

    move-object/from16 v0, v22

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_2 .. :try_end_2} :catch_0

    goto/16 :goto_1

    .line 163
    .end local v4    # "majorVersion":I
    .end local v5    # "minorVersion":I
    .end local v6    # "serviceName":Ljava/lang/String;
    .end local v7    # "userRestrictions":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/service/securespaces/SecureSpacesService$UserRestriction;>;"
    .end local v11    # "enabled":Z
    .end local v12    # "extensionLabel":Ljava/lang/String;
    .end local v15    # "matcher":Ljava/util/regex/Matcher;
    .end local v17    # "name":Ljava/lang/String;
    .end local v19    # "resourceId":I
    .end local v20    # "resourceName":Ljava/lang/String;
    .end local v21    # "userRestrictionEntries":[Ljava/lang/String;
    :cond_4
    return-void

    .line 173
    :catch_1
    move-exception v10

    .local v10, "e":Ljava/lang/Exception;
    goto/16 :goto_1
.end method

.method private getPrivateResource(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;
    .locals 9
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "c"    # Ljava/lang/Class;

    .prologue
    .line 229
    invoke-virtual {p2}, Ljava/lang/Class;->getDeclaredFields()[Ljava/lang/reflect/Field;

    move-result-object v1

    .line 230
    .local v1, "fields":[Ljava/lang/reflect/Field;
    iget-object v7, p0, Landroid/service/securespaces/SecureSpacesService;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    .line 232
    .local v4, "res":Landroid/content/res/Resources;
    const/4 v2, 0x0

    .local v2, "i":I
    array-length v3, v1

    .local v3, "max":I
    :goto_0
    if-ge v2, v3, :cond_4

    .line 235
    :try_start_0
    aget-object v7, v1, v2

    const/4 v8, 0x0

    invoke-virtual {v7, v8}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v5

    .line 239
    .local v5, "resourceId":I
    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getResourceEntryName(I)Ljava/lang/String;

    move-result-object v6

    .line 240
    .local v6, "resourceName":Ljava/lang/String;
    invoke-virtual {p1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_3

    .line 241
    const-class v7, Lcom/android/internal/R$bool;

    if-ne p2, v7, :cond_0

    .line 242
    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v7

    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    return-object v7

    .line 243
    :cond_0
    const-class v7, Lcom/android/internal/R$integer;

    if-ne p2, v7, :cond_1

    .line 244
    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    return-object v7

    .line 245
    :cond_1
    const-class v7, Lcom/android/internal/R$string;

    if-ne p2, v7, :cond_2

    .line 246
    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v7

    return-object v7

    .line 247
    :cond_2
    const-class v7, Lcom/android/internal/R$array;

    if-ne p2, v7, :cond_3

    .line 248
    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v7

    return-object v7

    .line 236
    .end local v5    # "resourceId":I
    .end local v6    # "resourceName":Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 232
    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 252
    :cond_4
    new-instance v7, Landroid/content/res/Resources$NotFoundException;

    invoke-direct {v7}, Landroid/content/res/Resources$NotFoundException;-><init>()V

    throw v7
.end method

.method private getSpacePropertyFileName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 469
    const-string/jumbo v0, "space_properties.xml"

    return-object v0
.end method

.method private getSpaces()Ljava/util/List;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Landroid/content/pm/UserInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 492
    iget-object v5, p0, Landroid/service/securespaces/SecureSpacesService;->mContext:Landroid/content/Context;

    const-string/jumbo v6, "user"

    invoke-virtual {v5, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/UserManager;

    .line 493
    .local v2, "um":Landroid/os/UserManager;
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 494
    .local v1, "temp":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    invoke-virtual {v2}, Landroid/os/UserManager;->getUsers()Ljava/util/List;

    move-result-object v0

    .line 495
    .local v0, "spaces":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, "userInfo$iterator":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/pm/UserInfo;

    .line 496
    .local v3, "userInfo":Landroid/content/pm/UserInfo;
    invoke-virtual {v3}, Landroid/content/pm/UserInfo;->isSpace()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 497
    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 500
    .end local v3    # "userInfo":Landroid/content/pm/UserInfo;
    :cond_1
    return-object v0
.end method

.method public static isPackageExcludedFromWipe(Ljava/lang/String;)Z
    .locals 6
    .param p0, "pkgname"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    .line 108
    sget-object v3, Landroid/service/securespaces/SecureSpacesService;->mWipeExclusionPackages:[Ljava/lang/String;

    array-length v4, v3

    move v1, v2

    :goto_0
    if-ge v1, v4, :cond_1

    aget-object v0, v3, v1

    .line 109
    .local v0, "item":Ljava/lang/String;
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 110
    const/4 v1, 0x1

    return v1

    .line 108
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 113
    .end local v0    # "item":Ljava/lang/String;
    :cond_1
    return v2
.end method

.method public static isUserWipeDataPending(I)Z
    .locals 2
    .param p0, "userId"    # I

    .prologue
    .line 104
    sget-object v0, Landroid/service/securespaces/SecureSpacesService;->mWipeDataPendingUsers:Ljava/util/HashSet;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method private onUserRemoved(I)V
    .locals 9
    .param p1, "userId"    # I

    .prologue
    .line 473
    const/4 v1, 0x0

    .line 474
    .local v1, "removed":Z
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 475
    .local v4, "removedSubMap":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v7, p0, Landroid/service/securespaces/SecureSpacesService;->mSubMap:Landroid/util/SparseIntArray;

    invoke-virtual {v7}, Landroid/util/SparseIntArray;->size()I

    move-result v7

    if-ge v0, v7, :cond_1

    .line 476
    iget-object v7, p0, Landroid/service/securespaces/SecureSpacesService;->mSubMap:Landroid/util/SparseIntArray;

    invoke-virtual {v7, v0}, Landroid/util/SparseIntArray;->keyAt(I)I

    move-result v5

    .line 477
    .local v5, "subId":I
    iget-object v7, p0, Landroid/service/securespaces/SecureSpacesService;->mSubMap:Landroid/util/SparseIntArray;

    invoke-virtual {v7, v5}, Landroid/util/SparseIntArray;->get(I)I

    move-result v6

    .line 478
    .local v6, "subUserId":I
    if-ne v6, p1, :cond_0

    .line 479
    const/4 v1, 0x1

    .line 480
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-interface {v4, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 475
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 483
    .end local v5    # "subId":I
    .end local v6    # "subUserId":I
    :cond_1
    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "removedSub$iterator":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    .line 484
    .local v2, "removedSub":Ljava/lang/Integer;
    iget-object v7, p0, Landroid/service/securespaces/SecureSpacesService;->mSubMap:Landroid/util/SparseIntArray;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v8

    invoke-virtual {v7, v8}, Landroid/util/SparseIntArray;->delete(I)V

    goto :goto_1

    .line 486
    .end local v2    # "removedSub":Ljava/lang/Integer;
    :cond_2
    if-eqz v1, :cond_3

    .line 487
    invoke-direct {p0}, Landroid/service/securespaces/SecureSpacesService;->writeSpacePropertiesLocked()V

    .line 472
    :cond_3
    return-void
.end method

.method private readSpacePropertiesLocked()V
    .locals 15

    .prologue
    const/4 v14, 0x2

    .line 385
    new-instance v6, Landroid/os/Bundle;

    invoke-direct {v6}, Landroid/os/Bundle;-><init>()V

    .line 386
    .local v6, "restrictions":Landroid/os/Bundle;
    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    .line 387
    .local v10, "values":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    const/4 v1, 0x0

    .line 390
    .local v1, "fis":Ljava/io/FileInputStream;
    :try_start_0
    new-instance v5, Landroid/util/AtomicFile;

    new-instance v11, Ljava/io/File;

    invoke-static {}, Landroid/os/Environment;->getDataSystemDirectory()Ljava/io/File;

    move-result-object v12

    .line 391
    invoke-direct {p0}, Landroid/service/securespaces/SecureSpacesService;->getSpacePropertyFileName()Ljava/lang/String;

    move-result-object v13

    .line 390
    invoke-direct {v11, v12, v13}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-direct {v5, v11}, Landroid/util/AtomicFile;-><init>(Ljava/io/File;)V

    .line 395
    .local v5, "propertiesFile":Landroid/util/AtomicFile;
    invoke-virtual {v5}, Landroid/util/AtomicFile;->openRead()Ljava/io/FileInputStream;

    move-result-object v1

    .line 396
    .local v1, "fis":Ljava/io/FileInputStream;
    invoke-static {}, Landroid/util/Xml;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v3

    .line 397
    .local v3, "parser":Lorg/xmlpull/v1/XmlPullParser;
    const/4 v11, 0x0

    invoke-interface {v3, v1, v11}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/InputStream;Ljava/lang/String;)V

    .line 399
    :cond_0
    invoke-interface {v3}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v8

    .local v8, "type":I
    const/4 v11, 0x1

    if-eq v8, v11, :cond_3

    .line 401
    if-ne v8, v14, :cond_0

    const-string/jumbo v11, "feature"

    invoke-interface {v3}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_0

    .line 403
    const-string/jumbo v11, "space_phone"

    .line 404
    const-string/jumbo v12, "featureType"

    .line 403
    const/4 v13, 0x0

    invoke-interface {v3, v13, v12}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_0

    .line 406
    :cond_1
    :goto_0
    invoke-interface {v3}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v8

    const/4 v11, 0x3

    if-eq v8, v11, :cond_0

    const-string/jumbo v11, "feature"

    invoke-interface {v3}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_0

    .line 408
    if-ne v8, v14, :cond_1

    const-string/jumbo v11, "subscription"

    invoke-interface {v3}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_1

    .line 410
    const-string/jumbo v11, "sub_id"

    const/4 v12, 0x0

    invoke-interface {v3, v12, v11}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    .line 411
    .local v7, "subId":I
    const-string/jumbo v11, "user_id"

    const/4 v12, 0x0

    invoke-interface {v3, v12, v11}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v9

    .line 412
    .local v9, "userId":I
    iget-object v11, p0, Landroid/service/securespaces/SecureSpacesService;->mSubMap:Landroid/util/SparseIntArray;

    invoke-virtual {v11, v7, v9}, Landroid/util/SparseIntArray;->put(II)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 418
    .end local v1    # "fis":Ljava/io/FileInputStream;
    .end local v3    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .end local v5    # "propertiesFile":Landroid/util/AtomicFile;
    .end local v7    # "subId":I
    .end local v8    # "type":I
    .end local v9    # "userId":I
    :catch_0
    move-exception v2

    .line 419
    .local v2, "ioe":Ljava/io/IOException;
    :try_start_1
    const-string/jumbo v11, "SecureSpacesService"

    const-string/jumbo v12, "IOException reading SpaceProp file, file may not exist yet."

    invoke-static {v11, v12}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 423
    if-eqz v1, :cond_2

    .line 425
    :try_start_2
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_4

    .line 384
    .end local v2    # "ioe":Ljava/io/IOException;
    :cond_2
    :goto_1
    return-void

    .line 423
    .restart local v1    # "fis":Ljava/io/FileInputStream;
    .restart local v3    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .restart local v5    # "propertiesFile":Landroid/util/AtomicFile;
    .restart local v8    # "type":I
    :cond_3
    if-eqz v1, :cond_2

    .line 425
    :try_start_3
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_1

    .line 426
    :catch_1
    move-exception v0

    .local v0, "e":Ljava/io/IOException;
    goto :goto_1

    .line 420
    .end local v0    # "e":Ljava/io/IOException;
    .end local v1    # "fis":Ljava/io/FileInputStream;
    .end local v3    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .end local v5    # "propertiesFile":Landroid/util/AtomicFile;
    .end local v8    # "type":I
    :catch_2
    move-exception v4

    .line 421
    .local v4, "pe":Lorg/xmlpull/v1/XmlPullParserException;
    :try_start_4
    const-string/jumbo v11, "SecureSpacesService"

    const-string/jumbo v12, "XmlPullParserException reading SpaceProp file"

    invoke-static {v11, v12, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 423
    if-eqz v1, :cond_2

    .line 425
    :try_start_5
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_3

    goto :goto_1

    .line 426
    :catch_3
    move-exception v0

    .restart local v0    # "e":Ljava/io/IOException;
    goto :goto_1

    .end local v0    # "e":Ljava/io/IOException;
    .end local v4    # "pe":Lorg/xmlpull/v1/XmlPullParserException;
    .restart local v2    # "ioe":Ljava/io/IOException;
    :catch_4
    move-exception v0

    .restart local v0    # "e":Ljava/io/IOException;
    goto :goto_1

    .line 422
    .end local v0    # "e":Ljava/io/IOException;
    .end local v2    # "ioe":Ljava/io/IOException;
    :catchall_0
    move-exception v11

    .line 423
    if-eqz v1, :cond_4

    .line 425
    :try_start_6
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_5

    .line 422
    :cond_4
    :goto_2
    throw v11

    .line 426
    :catch_5
    move-exception v0

    .restart local v0    # "e":Ljava/io/IOException;
    goto :goto_2
.end method

.method private writeSpacePropertiesLocked()V
    .locals 12

    .prologue
    .line 433
    const/4 v2, 0x0

    .line 435
    .local v2, "fos":Ljava/io/FileOutputStream;
    new-instance v4, Landroid/util/AtomicFile;

    new-instance v9, Ljava/io/File;

    invoke-static {}, Landroid/os/Environment;->getDataSystemDirectory()Ljava/io/File;

    move-result-object v10

    .line 436
    invoke-direct {p0}, Landroid/service/securespaces/SecureSpacesService;->getSpacePropertyFileName()Ljava/lang/String;

    move-result-object v11

    .line 435
    invoke-direct {v9, v10, v11}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-direct {v4, v9}, Landroid/util/AtomicFile;-><init>(Ljava/io/File;)V

    .line 440
    .local v4, "propertiesFile":Landroid/util/AtomicFile;
    invoke-direct {p0}, Landroid/service/securespaces/SecureSpacesService;->getSpaces()Ljava/util/List;

    move-result-object v6

    .line 442
    .local v6, "spaces":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    :try_start_0
    invoke-virtual {v4}, Landroid/util/AtomicFile;->startWrite()Ljava/io/FileOutputStream;

    move-result-object v2

    .line 443
    .local v2, "fos":Ljava/io/FileOutputStream;
    new-instance v0, Ljava/io/BufferedOutputStream;

    invoke-direct {v0, v2}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 444
    .local v0, "bos":Ljava/io/BufferedOutputStream;
    new-instance v5, Lcom/android/internal/util/FastXmlSerializer;

    invoke-direct {v5}, Lcom/android/internal/util/FastXmlSerializer;-><init>()V

    .line 445
    .local v5, "serializer":Lorg/xmlpull/v1/XmlSerializer;
    const-string/jumbo v9, "utf-8"

    invoke-interface {v5, v0, v9}, Lorg/xmlpull/v1/XmlSerializer;->setOutput(Ljava/io/OutputStream;Ljava/lang/String;)V

    .line 446
    const/4 v9, 0x1

    invoke-static {v9}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v9

    const/4 v10, 0x0

    invoke-interface {v5, v10, v9}, Lorg/xmlpull/v1/XmlSerializer;->startDocument(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 447
    const-string/jumbo v9, "http://xmlpull.org/v1/doc/features.html#indent-output"

    const/4 v10, 0x1

    invoke-interface {v5, v9, v10}, Lorg/xmlpull/v1/XmlSerializer;->setFeature(Ljava/lang/String;Z)V

    .line 448
    const-string/jumbo v9, "feature"

    const/4 v10, 0x0

    invoke-interface {v5, v10, v9}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 449
    const-string/jumbo v9, "featureType"

    const-string/jumbo v10, "space_phone"

    const/4 v11, 0x0

    invoke-interface {v5, v11, v9, v10}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 450
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    iget-object v9, p0, Landroid/service/securespaces/SecureSpacesService;->mSubMap:Landroid/util/SparseIntArray;

    invoke-virtual {v9}, Landroid/util/SparseIntArray;->size()I

    move-result v9

    if-ge v3, v9, :cond_0

    .line 451
    iget-object v9, p0, Landroid/service/securespaces/SecureSpacesService;->mSubMap:Landroid/util/SparseIntArray;

    invoke-virtual {v9, v3}, Landroid/util/SparseIntArray;->keyAt(I)I

    move-result v7

    .line 452
    .local v7, "subId":I
    iget-object v9, p0, Landroid/service/securespaces/SecureSpacesService;->mSubMap:Landroid/util/SparseIntArray;

    invoke-virtual {v9, v7}, Landroid/util/SparseIntArray;->get(I)I

    move-result v8

    .line 453
    .local v8, "userId":I
    const-string/jumbo v9, "subscription"

    const/4 v10, 0x0

    invoke-interface {v5, v10, v9}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 454
    const-string/jumbo v9, "sub_id"

    invoke-static {v7}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v10

    const/4 v11, 0x0

    invoke-interface {v5, v11, v9, v10}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 455
    const-string/jumbo v9, "user_id"

    invoke-static {v8}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v10

    const/4 v11, 0x0

    invoke-interface {v5, v11, v9, v10}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 456
    const-string/jumbo v9, "subscription"

    const/4 v10, 0x0

    invoke-interface {v5, v10, v9}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 450
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 459
    .end local v7    # "subId":I
    .end local v8    # "userId":I
    :cond_0
    const-string/jumbo v9, "feature"

    const/4 v10, 0x0

    invoke-interface {v5, v10, v9}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 460
    invoke-interface {v5}, Lorg/xmlpull/v1/XmlSerializer;->endDocument()V

    .line 461
    invoke-virtual {v4, v2}, Landroid/util/AtomicFile;->finishWrite(Ljava/io/FileOutputStream;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 432
    .end local v0    # "bos":Ljava/io/BufferedOutputStream;
    .end local v2    # "fos":Ljava/io/FileOutputStream;
    .end local v3    # "i":I
    .end local v5    # "serializer":Lorg/xmlpull/v1/XmlSerializer;
    :goto_1
    return-void

    .line 462
    :catch_0
    move-exception v1

    .line 463
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v4, v2}, Landroid/util/AtomicFile;->failWrite(Ljava/io/FileOutputStream;)V

    .line 464
    const-string/jumbo v9, "SecureSpacesService"

    const-string/jumbo v10, "Error writing space properties list"

    invoke-static {v9, v10, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1
.end method


# virtual methods
.method public getDeviceOwnerUserRestrictions()Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 342
    invoke-static {}, Landroid/service/securespaces/SecureSpacesService;->checkCallerIsSystem()V

    .line 343
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 344
    .local v4, "restrictions":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    iget-object v5, p0, Landroid/service/securespaces/SecureSpacesService;->mExtensions:Ljava/util/HashMap;

    invoke-virtual {v5}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v5

    invoke-interface {v5}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "extention$iterator":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/service/securespaces/SecureSpacesService$SecureSpacesExtension;

    .line 345
    .local v0, "extention":Landroid/service/securespaces/SecureSpacesService$SecureSpacesExtension;
    iget-object v5, v0, Landroid/service/securespaces/SecureSpacesService$SecureSpacesExtension;->userRestrictions:Ljava/util/ArrayList;

    invoke-interface {v5}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "restriction$iterator":Ljava/util/Iterator;
    :cond_1
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/service/securespaces/SecureSpacesService$UserRestriction;

    .line 346
    .local v2, "restriction":Landroid/service/securespaces/SecureSpacesService$UserRestriction;
    iget-boolean v5, v2, Landroid/service/securespaces/SecureSpacesService$UserRestriction;->deviceOwnerOnly:Z

    if-eqz v5, :cond_1

    .line 347
    iget-object v5, v2, Landroid/service/securespaces/SecureSpacesService$UserRestriction;->name:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 350
    .end local v0    # "extention":Landroid/service/securespaces/SecureSpacesService$SecureSpacesExtension;
    .end local v2    # "restriction":Landroid/service/securespaces/SecureSpacesService$UserRestriction;
    .end local v3    # "restriction$iterator":Ljava/util/Iterator;
    :cond_2
    return-object v4
.end method

.method public getExtensionMajorVersion(Ljava/lang/String;)I
    .locals 3
    .param p1, "extensionName"    # Ljava/lang/String;

    .prologue
    .line 304
    invoke-static {}, Landroid/service/securespaces/SecureSpacesService;->checkCallerIsSystem()V

    .line 305
    iget-object v1, p0, Landroid/service/securespaces/SecureSpacesService;->mExtensions:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/service/securespaces/SecureSpacesService$SecureSpacesExtension;

    .line 306
    .local v0, "extension":Landroid/service/securespaces/SecureSpacesService$SecureSpacesExtension;
    if-nez v0, :cond_0

    .line 307
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v2, "Invalid Secure Spaces extension"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 308
    :cond_0
    iget v1, v0, Landroid/service/securespaces/SecureSpacesService$SecureSpacesExtension;->majorVersion:I

    return v1
.end method

.method public getExtensionMinorVersion(Ljava/lang/String;)I
    .locals 3
    .param p1, "extensionName"    # Ljava/lang/String;

    .prologue
    .line 313
    invoke-static {}, Landroid/service/securespaces/SecureSpacesService;->checkCallerIsSystem()V

    .line 314
    iget-object v1, p0, Landroid/service/securespaces/SecureSpacesService;->mExtensions:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/service/securespaces/SecureSpacesService$SecureSpacesExtension;

    .line 315
    .local v0, "extension":Landroid/service/securespaces/SecureSpacesService$SecureSpacesExtension;
    if-nez v0, :cond_0

    .line 316
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v2, "Invalid Secure Spaces extension"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 317
    :cond_0
    iget v1, v0, Landroid/service/securespaces/SecureSpacesService$SecureSpacesExtension;->minorVersion:I

    return v1
.end method

.method public getExtensionServiceName(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p1, "extensionName"    # Ljava/lang/String;

    .prologue
    .line 322
    invoke-static {}, Landroid/service/securespaces/SecureSpacesService;->checkCallerIsSystem()V

    .line 323
    iget-object v1, p0, Landroid/service/securespaces/SecureSpacesService;->mExtensions:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/service/securespaces/SecureSpacesService$SecureSpacesExtension;

    .line 324
    .local v0, "extension":Landroid/service/securespaces/SecureSpacesService$SecureSpacesExtension;
    if-nez v0, :cond_0

    .line 325
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v2, "Invalid Secure Spaces extension"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 326
    :cond_0
    iget-object v1, v0, Landroid/service/securespaces/SecureSpacesService$SecureSpacesExtension;->serviceName:Ljava/lang/String;

    return-object v1
.end method

.method public getExtensions()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 293
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Landroid/service/securespaces/SecureSpacesService;->mExtensions:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    return-object v0
.end method

.method public getMajorVersionNumber()I
    .locals 1

    .prologue
    .line 281
    invoke-static {}, Landroid/service/securespaces/SecureSpacesService;->checkCallerIsSystem()V

    .line 282
    const/4 v0, 0x1

    return v0
.end method

.method public getMinorVersionNumber()I
    .locals 1

    .prologue
    .line 287
    invoke-static {}, Landroid/service/securespaces/SecureSpacesService;->checkCallerIsSystem()V

    .line 288
    const/4 v0, 0x0

    return v0
.end method

.method public getSubsForSpace(I)[I
    .locals 6
    .param p1, "spaceId"    # I

    .prologue
    .line 369
    invoke-static {}, Landroid/service/securespaces/SecureSpacesService;->checkCallerIsSystem()V

    .line 370
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 371
    .local v3, "subs":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v5, p0, Landroid/service/securespaces/SecureSpacesService;->mSubMap:Landroid/util/SparseIntArray;

    invoke-virtual {v5}, Landroid/util/SparseIntArray;->size()I

    move-result v5

    if-ge v0, v5, :cond_1

    .line 372
    iget-object v5, p0, Landroid/service/securespaces/SecureSpacesService;->mSubMap:Landroid/util/SparseIntArray;

    invoke-virtual {v5, v0}, Landroid/util/SparseIntArray;->keyAt(I)I

    move-result v2

    .line 373
    .local v2, "subId":I
    iget-object v5, p0, Landroid/service/securespaces/SecureSpacesService;->mSubMap:Landroid/util/SparseIntArray;

    invoke-virtual {v5, v2}, Landroid/util/SparseIntArray;->get(I)I

    move-result v4

    .line 374
    .local v4, "userId":I
    if-ne v4, p1, :cond_0

    .line 375
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v3, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 371
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 378
    .end local v2    # "subId":I
    .end local v4    # "userId":I
    :cond_1
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v5

    new-array v1, v5, [I

    .line 379
    .local v1, "ret":[I
    const/4 v0, 0x0

    :goto_1
    array-length v5, v1

    if-ge v0, v5, :cond_2

    .line 380
    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    aput v5, v1, v0

    .line 379
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 381
    :cond_2
    return-object v1
.end method

.method public getUserIdForSub(I)I
    .locals 3
    .param p1, "subId"    # I

    .prologue
    .line 362
    invoke-static {}, Landroid/service/securespaces/SecureSpacesService;->checkCallerIsSystem()V

    .line 363
    iget-object v1, p0, Landroid/service/securespaces/SecureSpacesService;->mSubMap:Landroid/util/SparseIntArray;

    const/4 v2, -0x1

    invoke-virtual {v1, p1, v2}, Landroid/util/SparseIntArray;->get(II)I

    move-result v0

    .line 364
    .local v0, "userId":I
    return v0
.end method

.method public getUserRestrictions()Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 331
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 332
    .local v4, "restrictions":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    iget-object v5, p0, Landroid/service/securespaces/SecureSpacesService;->mExtensions:Ljava/util/HashMap;

    invoke-virtual {v5}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v5

    invoke-interface {v5}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "extention$iterator":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/service/securespaces/SecureSpacesService$SecureSpacesExtension;

    .line 333
    .local v0, "extention":Landroid/service/securespaces/SecureSpacesService$SecureSpacesExtension;
    iget-object v5, v0, Landroid/service/securespaces/SecureSpacesService$SecureSpacesExtension;->userRestrictions:Ljava/util/ArrayList;

    invoke-interface {v5}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "restriction$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/service/securespaces/SecureSpacesService$UserRestriction;

    .line 334
    .local v2, "restriction":Landroid/service/securespaces/SecureSpacesService$UserRestriction;
    iget-object v5, v2, Landroid/service/securespaces/SecureSpacesService$UserRestriction;->name:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 337
    .end local v0    # "extention":Landroid/service/securespaces/SecureSpacesService$SecureSpacesExtension;
    .end local v2    # "restriction":Landroid/service/securespaces/SecureSpacesService$UserRestriction;
    .end local v3    # "restriction$iterator":Ljava/util/Iterator;
    :cond_1
    return-object v4
.end method

.method public hasExtension(Ljava/lang/String;)Z
    .locals 1
    .param p1, "extensionName"    # Ljava/lang/String;

    .prologue
    .line 298
    invoke-static {}, Landroid/service/securespaces/SecureSpacesService;->checkCallerIsSystem()V

    .line 299
    iget-object v0, p0, Landroid/service/securespaces/SecureSpacesService;->mExtensions:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public setSubForUserId(II)V
    .locals 1
    .param p1, "userId"    # I
    .param p2, "subId"    # I

    .prologue
    .line 355
    invoke-static {}, Landroid/service/securespaces/SecureSpacesService;->checkCallerIsSystem()V

    .line 356
    iget-object v0, p0, Landroid/service/securespaces/SecureSpacesService;->mSubMap:Landroid/util/SparseIntArray;

    invoke-virtual {v0, p2, p1}, Landroid/util/SparseIntArray;->put(II)V

    .line 357
    invoke-direct {p0}, Landroid/service/securespaces/SecureSpacesService;->writeSpacePropertiesLocked()V

    .line 354
    return-void
.end method

.method public systemReady()V
    .locals 3

    .prologue
    .line 158
    invoke-direct {p0}, Landroid/service/securespaces/SecureSpacesService;->readSpacePropertiesLocked()V

    .line 159
    new-instance v0, Landroid/content/IntentFilter;

    const-string/jumbo v1, "android.intent.action.USER_REMOVED"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 160
    .local v0, "filter":Landroid/content/IntentFilter;
    iget-object v1, p0, Landroid/service/securespaces/SecureSpacesService;->mContext:Landroid/content/Context;

    iget-object v2, p0, Landroid/service/securespaces/SecureSpacesService;->mCleanupReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 157
    return-void
.end method
