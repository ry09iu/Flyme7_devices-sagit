.class public final Lcom/baidu/mobstat/g;
.super Ljava/lang/Object;
.source "Unknown"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/baidu/mobstat/g$a;,
        Lcom/baidu/mobstat/g$b;,
        Lcom/baidu/mobstat/g$c;
    }
.end annotation


# static fields
.field private static final a:Ljava/lang/String;

.field private static e:Lcom/baidu/mobstat/g$b;


# instance fields
.field private final b:Landroid/content/Context;

.field private c:I

.field private d:Ljava/security/PublicKey;


# direct methods
.method static constructor <clinit>()V
    .locals 9

    const/4 v8, 0x2

    const/4 v7, 0x1

    const/4 v6, 0x0

    const/16 v4, 0x4d

    const/16 v5, 0x49

    new-instance v0, Ljava/lang/String;

    const/16 v1, 0xc

    new-array v1, v1, [B

    aput-byte v4, v1, v6

    const/16 v2, 0x7a

    aput-byte v2, v1, v7

    const/16 v2, 0x41

    aput-byte v2, v1, v8

    const/4 v2, 0x3

    const/16 v3, 0x79

    aput-byte v3, v1, v2

    const/4 v2, 0x4

    aput-byte v4, v1, v2

    const/4 v2, 0x5

    const/16 v3, 0x54

    aput-byte v3, v1, v2

    const/4 v2, 0x6

    aput-byte v5, v1, v2

    const/4 v2, 0x7

    const/16 v3, 0x78

    aput-byte v3, v1, v2

    const/16 v2, 0x8

    aput-byte v4, v1, v2

    const/16 v2, 0x9

    const/16 v3, 0x44

    aput-byte v3, v1, v2

    const/16 v2, 0xa

    aput-byte v5, v1, v2

    const/16 v2, 0xb

    const/16 v3, 0x3d

    aput-byte v3, v1, v2

    invoke-static {v1}, Lcom/baidu/mobstat/b;->a([B)[B

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>([B)V

    new-instance v1, Ljava/lang/String;

    const/16 v2, 0xc

    new-array v2, v2, [B

    const/16 v3, 0x5a

    aput-byte v3, v2, v6

    const/16 v3, 0x47

    aput-byte v3, v2, v7

    const/16 v3, 0x6c

    aput-byte v3, v2, v8

    const/4 v3, 0x3

    const/16 v4, 0x6a

    aput-byte v4, v2, v3

    const/4 v3, 0x4

    const/16 v4, 0x64

    aput-byte v4, v2, v3

    const/4 v3, 0x5

    const/16 v4, 0x57

    aput-byte v4, v2, v3

    const/4 v3, 0x6

    const/16 v4, 0x52

    aput-byte v4, v2, v3

    const/4 v3, 0x7

    const/16 v4, 0x70

    aput-byte v4, v2, v3

    const/16 v3, 0x8

    const/16 v4, 0x59

    aput-byte v4, v2, v3

    const/16 v3, 0x9

    const/16 v4, 0x57

    aput-byte v4, v2, v3

    const/16 v3, 0xa

    aput-byte v5, v2, v3

    const/16 v3, 0xb

    const/16 v4, 0x3d

    aput-byte v4, v2, v3

    invoke-static {v2}, Lcom/baidu/mobstat/b;->a([B)[B

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/String;-><init>([B)V

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/baidu/mobstat/g;->a:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/baidu/mobstat/g;->c:I

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/baidu/mobstat/g;->b:Landroid/content/Context;

    invoke-direct {p0}, Lcom/baidu/mobstat/g;->a()V

    return-void
.end method

.method public static a(Landroid/content/Context;)Ljava/lang/String;
    .locals 1

    invoke-static {p0}, Lcom/baidu/mobstat/g;->c(Landroid/content/Context;)Lcom/baidu/mobstat/g$b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/baidu/mobstat/g$b;->b()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static a(Ljava/io/File;)Ljava/lang/String;
    .locals 6

    const/4 v2, 0x0

    :try_start_0
    new-instance v1, Ljava/io/FileReader;

    invoke-direct {v1, p0}, Ljava/io/FileReader;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_4
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/16 v0, 0x2000

    :try_start_1
    new-array v0, v0, [C

    new-instance v3, Ljava/io/CharArrayWriter;

    invoke-direct {v3}, Ljava/io/CharArrayWriter;-><init>()V

    :goto_0
    invoke-virtual {v1, v0}, Ljava/io/FileReader;->read([C)I

    move-result v4

    if-gtz v4, :cond_0

    invoke-virtual {v3}, Ljava/io/CharArrayWriter;->toString()Ljava/lang/String;

    move-result-object v0

    if-nez v1, :cond_1

    :goto_1
    return-object v0

    :cond_0
    const/4 v5, 0x0

    invoke-virtual {v3, v0, v5, v4}, Ljava/io/CharArrayWriter;->write([CII)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_0

    :catch_0
    move-exception v0

    :goto_2
    :try_start_2
    invoke-static {v0}, Lcom/baidu/mobstat/g;->b(Ljava/lang/Throwable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    if-nez v1, :cond_2

    :goto_3
    return-object v2

    :cond_1
    :try_start_3
    invoke-virtual {v1}, Ljava/io/FileReader;->close()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_1

    :catch_1
    move-exception v1

    invoke-static {v1}, Lcom/baidu/mobstat/g;->b(Ljava/lang/Throwable;)V

    goto :goto_1

    :cond_2
    :try_start_4
    invoke-virtual {v1}, Ljava/io/FileReader;->close()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2

    goto :goto_3

    :catch_2
    move-exception v0

    invoke-static {v0}, Lcom/baidu/mobstat/g;->b(Ljava/lang/Throwable;)V

    goto :goto_3

    :catchall_0
    move-exception v0

    move-object v1, v2

    :goto_4
    if-nez v1, :cond_3

    :goto_5
    throw v0

    :cond_3
    :try_start_5
    invoke-virtual {v1}, Ljava/io/FileReader;->close()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_3

    goto :goto_5

    :catch_3
    move-exception v1

    invoke-static {v1}, Lcom/baidu/mobstat/g;->b(Ljava/lang/Throwable;)V

    goto :goto_5

    :catchall_1
    move-exception v0

    goto :goto_4

    :catch_4
    move-exception v0

    move-object v1, v2

    goto :goto_2
.end method

.method private static a([B)Ljava/lang/String;
    .locals 5

    if-eqz p0, :cond_0

    const-string/jumbo v1, ""

    const-string/jumbo v0, ""

    const/4 v0, 0x0

    :goto_0
    array-length v2, p0

    if-lt v0, v2, :cond_1

    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Argument b ( byte array ) is null! "

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    aget-byte v2, p0, v0

    and-int/lit16 v2, v2, 0xff

    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    const/4 v4, 0x1

    if-eq v3, v4, :cond_2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v3, "0"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_1
.end method

.method private a(Landroid/content/Intent;Z)Ljava/util/List;
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Intent;",
            "Z)",
            "Ljava/util/List",
            "<",
            "Lcom/baidu/mobstat/g$a;",
            ">;"
        }
    .end annotation

    const/4 v1, 0x1

    const/4 v2, 0x0

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iget-object v0, p0, Lcom/baidu/mobstat/g;->b:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    invoke-virtual {v4, p1, v2}, Landroid/content/pm/PackageManager;->queryBroadcastReceivers(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v0

    if-nez v0, :cond_1

    :cond_0
    new-instance v0, Lcom/baidu/mobstat/h;

    invoke-direct {v0, p0}, Lcom/baidu/mobstat/h;-><init>(Lcom/baidu/mobstat/g;)V

    invoke-static {v3, v0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    return-object v3

    :cond_1
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_2
    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/ResolveInfo;

    iget-object v6, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    if-eqz v6, :cond_2

    iget-object v6, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v6, v6, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    if-eqz v6, :cond_2

    :try_start_0
    new-instance v6, Landroid/content/ComponentName;

    iget-object v7, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v7, v7, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    iget-object v8, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v8, v8, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-direct {v6, v7, v8}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v7, 0x80

    invoke-virtual {v4, v6, v7}, Landroid/content/pm/PackageManager;->getReceiverInfo(Landroid/content/ComponentName;I)Landroid/content/pm/ActivityInfo;

    move-result-object v6

    iget-object v6, v6, Landroid/content/pm/ActivityInfo;->metaData:Landroid/os/Bundle;

    if-eqz v6, :cond_2

    const-string/jumbo v7, "galaxy_data"

    invoke-virtual {v6, v7}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_2

    const-string/jumbo v8, "utf-8"

    invoke-virtual {v7, v8}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v7

    invoke-static {v7}, Lcom/baidu/mobstat/b;->a([B)[B

    move-result-object v7

    new-instance v8, Ljava/lang/String;

    invoke-direct {v8, v7}, Ljava/lang/String;-><init>([B)V

    new-instance v9, Lorg/json/JSONObject;

    invoke-direct {v9, v8}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    new-instance v8, Lcom/baidu/mobstat/g$a;

    const/4 v10, 0x0

    invoke-direct {v8, v10}, Lcom/baidu/mobstat/g$a;-><init>(Lcom/baidu/mobstat/h;)V

    const-string/jumbo v10, "priority"

    invoke-virtual {v9, v10}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v10

    iput v10, v8, Lcom/baidu/mobstat/g$a;->b:I

    iget-object v10, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v10, v10, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iput-object v10, v8, Lcom/baidu/mobstat/g$a;->a:Landroid/content/pm/ApplicationInfo;

    iget-object v10, p0, Lcom/baidu/mobstat/g;->b:Landroid/content/Context;

    invoke-virtual {v10}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v10

    iget-object v11, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v11, v11, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v11, v11, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_4

    :goto_1
    if-nez p2, :cond_5

    :cond_3
    :goto_2
    invoke-interface {v3, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :catch_0
    move-exception v0

    goto :goto_0

    :cond_4
    const/4 v10, 0x1

    iput-boolean v10, v8, Lcom/baidu/mobstat/g$a;->d:Z

    goto :goto_1

    :cond_5
    const-string/jumbo v10, "galaxy_sf"

    invoke-virtual {v6, v10}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-nez v10, :cond_3

    iget-object v0, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    const/16 v10, 0x40

    invoke-virtual {v4, v0, v10}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v10

    const-string/jumbo v0, "sigs"

    invoke-virtual {v9, v0}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v9

    invoke-virtual {v9}, Lorg/json/JSONArray;->length()I

    move-result v0

    new-array v11, v0, [Ljava/lang/String;

    move v0, v2

    :goto_3
    array-length v12, v11

    if-lt v0, v12, :cond_7

    iget-object v0, v10, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    invoke-direct {p0, v0}, Lcom/baidu/mobstat/g;->a([Landroid/content/pm/Signature;)[Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v11, v0}, Lcom/baidu/mobstat/g;->a([Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-virtual {v6}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    invoke-static {v0}, Lcom/baidu/mobstat/b;->a([B)[B

    move-result-object v0

    iget-object v6, p0, Lcom/baidu/mobstat/g;->d:Ljava/security/PublicKey;

    invoke-static {v0, v6}, Lcom/baidu/mobstat/g;->a([BLjava/security/PublicKey;)[B

    move-result-object v0

    invoke-static {v7}, Lcom/baidu/mobstat/d;->a([B)[B

    move-result-object v6

    if-nez v0, :cond_8

    :cond_6
    move v0, v2

    :goto_4
    if-eqz v0, :cond_3

    const/4 v0, 0x1

    iput-boolean v0, v8, Lcom/baidu/mobstat/g$a;->c:Z

    goto :goto_2

    :cond_7
    invoke-virtual {v9, v0}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v12

    aput-object v12, v11, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    :cond_8
    invoke-static {v0, v6}, Ljava/util/Arrays;->equals([B[B)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    if-eqz v0, :cond_6

    move v0, v1

    goto :goto_4
.end method

.method private a()V
    .locals 4

    const/4 v1, 0x0

    :try_start_0
    new-instance v0, Ljava/io/ByteArrayInputStream;

    invoke-static {}, Lcom/baidu/mobstat/f;->a()[B

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/io/ByteArrayInputStream;-><init>([B)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    const-string/jumbo v1, "X.509"

    invoke-static {v1}, Ljava/security/cert/CertificateFactory;->getInstance(Ljava/lang/String;)Ljava/security/cert/CertificateFactory;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/security/cert/CertificateFactory;->generateCertificate(Ljava/io/InputStream;)Ljava/security/cert/Certificate;

    move-result-object v1

    invoke-virtual {v1}, Ljava/security/cert/Certificate;->getPublicKey()Ljava/security/PublicKey;

    move-result-object v1

    iput-object v1, p0, Lcom/baidu/mobstat/g;->d:Ljava/security/PublicKey;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_4
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    :try_start_2
    invoke-virtual {v0}, Ljava/io/ByteArrayInputStream;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-static {v0}, Lcom/baidu/mobstat/g;->b(Ljava/lang/Throwable;)V

    goto :goto_0

    :catch_1
    move-exception v0

    move-object v0, v1

    :goto_1
    if-eqz v0, :cond_0

    :try_start_3
    invoke-virtual {v0}, Ljava/io/ByteArrayInputStream;->close()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    goto :goto_0

    :catch_2
    move-exception v0

    invoke-static {v0}, Lcom/baidu/mobstat/g;->b(Ljava/lang/Throwable;)V

    goto :goto_0

    :catchall_0
    move-exception v0

    :goto_2
    if-nez v1, :cond_2

    :goto_3
    throw v0

    :cond_2
    :try_start_4
    invoke-virtual {v1}, Ljava/io/ByteArrayInputStream;->close()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_3

    goto :goto_3

    :catch_3
    move-exception v1

    invoke-static {v1}, Lcom/baidu/mobstat/g;->b(Ljava/lang/Throwable;)V

    goto :goto_3

    :catchall_1
    move-exception v1

    move-object v3, v1

    move-object v1, v0

    move-object v0, v3

    goto :goto_2

    :catch_4
    move-exception v1

    goto :goto_1
.end method

.method static synthetic a(Ljava/lang/Throwable;)V
    .locals 0

    invoke-static {p0}, Lcom/baidu/mobstat/g;->b(Ljava/lang/Throwable;)V

    return-void
.end method

.method private a(Ljava/lang/String;)Z
    .locals 6
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x0

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x18

    if-ge v0, v4, :cond_0

    move v0, v1

    :goto_0
    :try_start_0
    iget-object v4, p0, Lcom/baidu/mobstat/g;->b:Landroid/content/Context;

    const-string/jumbo v5, "libcuid.so"

    invoke-virtual {v4, v5, v0}, Landroid/content/Context;->openFileOutput(Ljava/lang/String;I)Ljava/io/FileOutputStream;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v3

    :try_start_1
    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/io/FileOutputStream;->write([B)V

    invoke-virtual {v3}, Ljava/io/FileOutputStream;->flush()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_4
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-nez v3, :cond_1

    :goto_1
    if-eqz v0, :cond_4

    return v1

    :cond_0
    move v0, v2

    goto :goto_0

    :cond_1
    :try_start_2
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_1

    :catch_0
    move-exception v2

    invoke-static {v2}, Lcom/baidu/mobstat/g;->b(Ljava/lang/Throwable;)V

    goto :goto_1

    :catch_1
    move-exception v0

    move-object v1, v3

    :goto_2
    :try_start_3
    invoke-static {v0}, Lcom/baidu/mobstat/g;->b(Ljava/lang/Throwable;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    if-nez v1, :cond_2

    :goto_3
    return v2

    :cond_2
    :try_start_4
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2

    goto :goto_3

    :catch_2
    move-exception v0

    invoke-static {v0}, Lcom/baidu/mobstat/g;->b(Ljava/lang/Throwable;)V

    goto :goto_3

    :catchall_0
    move-exception v0

    :goto_4
    if-nez v3, :cond_3

    :goto_5
    throw v0

    :cond_3
    :try_start_5
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_3

    goto :goto_5

    :catch_3
    move-exception v1

    invoke-static {v1}, Lcom/baidu/mobstat/g;->b(Ljava/lang/Throwable;)V

    goto :goto_5

    :cond_4
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/baidu/mobstat/g;->b:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v1

    const-string/jumbo v2, "libcuid.so"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0x1b4

    invoke-static {v0, v1}, Lcom/baidu/mobstat/g$c;->a(Ljava/lang/String;I)Z

    move-result v0

    return v0

    :catchall_1
    move-exception v0

    move-object v3, v1

    goto :goto_4

    :catch_4
    move-exception v0

    move-object v1, v3

    goto :goto_2
.end method

.method private a(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1

    :try_start_0
    iget-object v0, p0, Lcom/baidu/mobstat/g;->b:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-static {v0, p1, p2}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    return v0

    :catch_0
    move-exception v0

    invoke-static {v0}, Lcom/baidu/mobstat/g;->b(Ljava/lang/Throwable;)V

    const/4 v0, 0x0

    return v0
.end method

.method private a([Ljava/lang/String;[Ljava/lang/String;)Z
    .locals 5

    const/4 v0, 0x0

    if-nez p1, :cond_1

    :cond_0
    return v0

    :cond_1
    if-eqz p2, :cond_0

    array-length v1, p1

    array-length v2, p2

    if-ne v1, v2, :cond_0

    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    array-length v3, p1

    move v1, v0

    :goto_0
    if-lt v1, v3, :cond_2

    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    array-length v3, p2

    :goto_1
    if-lt v0, v3, :cond_3

    invoke-virtual {v2, v1}, Ljava/util/HashSet;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0

    :cond_2
    aget-object v4, p1, v1

    invoke-virtual {v2, v4}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_3
    aget-object v4, p2, v0

    invoke-virtual {v1, v4}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method

.method private static a([BLjava/security/PublicKey;)[B
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const-string/jumbo v0, "RSA/ECB/PKCS1Padding"

    invoke-static {v0}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v0

    const/4 v1, 0x2

    invoke-virtual {v0, v1, p1}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;)V

    invoke-virtual {v0, p0}, Ljavax/crypto/Cipher;->doFinal([B)[B

    move-result-object v0

    return-object v0
.end method

.method private a([Landroid/content/pm/Signature;)[Ljava/lang/String;
    .locals 3

    array-length v0, p1

    new-array v1, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    :goto_0
    array-length v2, v1

    if-lt v0, v2, :cond_0

    return-object v1

    :cond_0
    aget-object v2, p1, v0

    invoke-virtual {v2}, Landroid/content/pm/Signature;->toByteArray()[B

    move-result-object v2

    invoke-static {v2}, Lcom/baidu/mobstat/d;->a([B)[B

    move-result-object v2

    invoke-static {v2}, Lcom/baidu/mobstat/g;->a([B)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method private b()Lcom/baidu/mobstat/g$b;
    .locals 9

    const/4 v7, 0x3

    const/4 v5, 0x1

    const/4 v4, 0x0

    const/4 v2, 0x0

    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "com.baidu.intent.action.GALAXY"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/baidu/mobstat/g;->b:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    invoke-direct {p0, v0, v5}, Lcom/baidu/mobstat/g;->a(Landroid/content/Intent;Z)Ljava/util/List;

    move-result-object v0

    if-nez v0, :cond_7

    :cond_0
    move v0, v2

    :goto_0
    if-lt v0, v7, :cond_9

    move v0, v2

    :goto_1
    new-instance v1, Ljava/io/File;

    iget-object v3, p0, Lcom/baidu/mobstat/g;->b:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v3

    const-string/jumbo v6, "libcuid.so"

    invoke-direct {v1, v3, v6}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v3

    if-nez v3, :cond_b

    move-object v3, v4

    :goto_2
    if-eqz v3, :cond_c

    :cond_1
    move-object v0, v3

    :cond_2
    if-eqz v0, :cond_10

    :goto_3
    const-string/jumbo v1, "android.permission.READ_EXTERNAL_STORAGE"

    invoke-direct {p0, v1}, Lcom/baidu/mobstat/g;->c(Ljava/lang/String;)Z

    move-result v3

    if-eqz v0, :cond_11

    :cond_3
    :goto_4
    move-object v1, v0

    if-eqz v1, :cond_12

    :goto_5
    if-eqz v1, :cond_13

    :cond_4
    move-object v0, v4

    :goto_6
    if-eqz v1, :cond_14

    move-object v0, v1

    :goto_7
    new-instance v1, Ljava/io/File;

    iget-object v2, p0, Lcom/baidu/mobstat/g;->b:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v2

    const-string/jumbo v3, "libcuid.so"

    invoke-direct {v1, v2, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iget v2, p0, Lcom/baidu/mobstat/g;->c:I

    and-int/lit8 v2, v2, 0x10

    if-eqz v2, :cond_17

    :cond_5
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_18

    move-object v1, v4

    :goto_8
    invoke-direct {p0, v1}, Lcom/baidu/mobstat/g;->a(Ljava/lang/String;)Z

    move-object v4, v1

    :goto_9
    invoke-direct {p0}, Lcom/baidu/mobstat/g;->c()Z

    move-result v1

    if-nez v1, :cond_19

    :goto_a
    const-string/jumbo v2, "android.permission.WRITE_EXTERNAL_STORAGE"

    invoke-direct {p0, v2}, Lcom/baidu/mobstat/g;->c(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1d

    :goto_b
    if-nez v1, :cond_21

    :goto_c
    if-nez v1, :cond_24

    :cond_6
    :goto_d
    return-object v0

    :cond_7
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/baidu/mobstat/g$a;

    iget-boolean v1, v0, Lcom/baidu/mobstat/g$a;->c:Z

    iget-boolean v0, v0, Lcom/baidu/mobstat/g$a;->c:Z

    if-eqz v0, :cond_a

    :cond_8
    move v0, v1

    goto :goto_1

    :cond_9
    const-string/jumbo v1, "DeviceId"

    const-string/jumbo v3, "galaxy lib host missing meta-data,make sure you know the right way to integrate galaxy"

    invoke-static {v1, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_0

    :cond_a
    move v0, v2

    :goto_e
    if-ge v0, v7, :cond_8

    const-string/jumbo v3, "DeviceId"

    const-string/jumbo v6, "galaxy config err, In the release version of the signature should be matched"

    invoke-static {v3, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    add-int/lit8 v0, v0, 0x1

    goto :goto_e

    :cond_b
    invoke-static {v1}, Lcom/baidu/mobstat/g;->a(Ljava/io/File;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/baidu/mobstat/g;->f(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/baidu/mobstat/g$b;->a(Ljava/lang/String;)Lcom/baidu/mobstat/g$b;

    move-result-object v3

    goto/16 :goto_2

    :cond_c
    iget v1, p0, Lcom/baidu/mobstat/g;->c:I

    or-int/lit8 v1, v1, 0x10

    iput v1, p0, Lcom/baidu/mobstat/g;->c:I

    new-instance v1, Landroid/content/Intent;

    const-string/jumbo v6, "com.baidu.intent.action.GALAXY"

    invoke-direct {v1, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, v1, v0}, Lcom/baidu/mobstat/g;->a(Landroid/content/Intent;Z)Ljava/util/List;

    move-result-object v6

    if-eqz v6, :cond_1

    const-string/jumbo v0, "files"

    iget-object v1, p0, Lcom/baidu/mobstat/g;->b:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_e

    :goto_f
    move-object v1, v0

    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_d
    :goto_10
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/baidu/mobstat/g$a;

    iget-boolean v7, v0, Lcom/baidu/mobstat/g$a;->d:Z

    if-nez v7, :cond_d

    new-instance v7, Ljava/io/File;

    new-instance v8, Ljava/io/File;

    iget-object v0, v0, Lcom/baidu/mobstat/g$a;->a:Landroid/content/pm/ApplicationInfo;

    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->dataDir:Ljava/lang/String;

    invoke-direct {v8, v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v0, "libcuid.so"

    invoke-direct {v7, v8, v0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v7}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_f

    move-object v0, v3

    :goto_11
    move-object v3, v0

    goto :goto_10

    :cond_e
    const-string/jumbo v0, "DeviceId"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "fetal error:: app files dir name is unexpectedly :: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v0, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v0

    goto :goto_f

    :cond_f
    invoke-static {v7}, Lcom/baidu/mobstat/g;->a(Ljava/io/File;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/baidu/mobstat/g;->f(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/baidu/mobstat/g$b;->a(Ljava/lang/String;)Lcom/baidu/mobstat/g$b;

    move-result-object v0

    if-nez v0, :cond_2

    goto :goto_11

    :cond_10
    const-string/jumbo v0, "com.baidu.deviceid.v2"

    invoke-direct {p0, v0}, Lcom/baidu/mobstat/g;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/baidu/mobstat/g;->f(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/baidu/mobstat/g$b;->a(Ljava/lang/String;)Lcom/baidu/mobstat/g$b;

    move-result-object v0

    goto/16 :goto_3

    :cond_11
    if-eqz v3, :cond_3

    iget v0, p0, Lcom/baidu/mobstat/g;->c:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/baidu/mobstat/g;->c:I

    invoke-direct {p0}, Lcom/baidu/mobstat/g;->e()Lcom/baidu/mobstat/g$b;

    move-result-object v0

    goto/16 :goto_4

    :cond_12
    iget v0, p0, Lcom/baidu/mobstat/g;->c:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Lcom/baidu/mobstat/g;->c:I

    invoke-direct {p0}, Lcom/baidu/mobstat/g;->d()Lcom/baidu/mobstat/g$b;

    move-result-object v1

    goto/16 :goto_5

    :cond_13
    if-eqz v3, :cond_4

    iget v0, p0, Lcom/baidu/mobstat/g;->c:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/baidu/mobstat/g;->c:I

    const-string/jumbo v0, ""

    invoke-direct {p0, v0}, Lcom/baidu/mobstat/g;->h(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/baidu/mobstat/g;->d(Ljava/lang/String;)Lcom/baidu/mobstat/g$b;

    move-result-object v1

    move v2, v5

    goto/16 :goto_6

    :cond_14
    iget v1, p0, Lcom/baidu/mobstat/g;->c:I

    or-int/lit8 v1, v1, 0x4

    iput v1, p0, Lcom/baidu/mobstat/g;->c:I

    if-eqz v2, :cond_15

    :goto_12
    new-instance v2, Lcom/baidu/mobstat/g$b;

    invoke-direct {v2, v4}, Lcom/baidu/mobstat/g$b;-><init>(Lcom/baidu/mobstat/h;)V

    iget-object v1, p0, Lcom/baidu/mobstat/g;->b:Landroid/content/Context;

    invoke-static {v1}, Lcom/baidu/mobstat/g;->b(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v6, 0x17

    if-lt v3, v6, :cond_16

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "com.baidu"

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    :goto_13
    invoke-virtual {v1}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    invoke-static {v1, v5}, Lcom/baidu/mobstat/c;->a([BZ)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v2, Lcom/baidu/mobstat/g$b;->a:Ljava/lang/String;

    iput-object v0, v2, Lcom/baidu/mobstat/g$b;->b:Ljava/lang/String;

    move-object v0, v2

    goto/16 :goto_7

    :cond_15
    const-string/jumbo v0, ""

    invoke-direct {p0, v0}, Lcom/baidu/mobstat/g;->h(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_12

    :cond_16
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v3

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_13

    :cond_17
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_5

    goto/16 :goto_9

    :cond_18
    invoke-virtual {v0}, Lcom/baidu/mobstat/g$b;->a()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/baidu/mobstat/g;->e(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_8

    :cond_19
    iget v2, p0, Lcom/baidu/mobstat/g;->c:I

    and-int/lit8 v2, v2, 0x2

    if-eqz v2, :cond_1b

    :cond_1a
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1c

    :goto_14
    const-string/jumbo v2, "com.baidu.deviceid.v2"

    invoke-direct {p0, v2, v4}, Lcom/baidu/mobstat/g;->a(Ljava/lang/String;Ljava/lang/String;)Z

    goto/16 :goto_a

    :cond_1b
    const-string/jumbo v2, "com.baidu.deviceid.v2"

    invoke-direct {p0, v2}, Lcom/baidu/mobstat/g;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1a

    goto/16 :goto_a

    :cond_1c
    invoke-virtual {v0}, Lcom/baidu/mobstat/g$b;->a()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/baidu/mobstat/g;->e(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    goto :goto_14

    :cond_1d
    new-instance v2, Ljava/io/File;

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v3

    const-string/jumbo v5, "backups/.SystemConfig/.cuid2"

    invoke-direct {v2, v3, v5}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iget v3, p0, Lcom/baidu/mobstat/g;->c:I

    and-int/lit8 v3, v3, 0x8

    if-eqz v3, :cond_1f

    :cond_1e
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_20

    :goto_15
    invoke-static {v4}, Lcom/baidu/mobstat/g;->g(Ljava/lang/String;)V

    goto/16 :goto_b

    :cond_1f
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_1e

    goto/16 :goto_b

    :cond_20
    invoke-virtual {v0}, Lcom/baidu/mobstat/g$b;->a()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/baidu/mobstat/g;->e(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    goto :goto_15

    :cond_21
    iget v2, p0, Lcom/baidu/mobstat/g;->c:I

    and-int/lit8 v2, v2, 0x1

    if-eqz v2, :cond_23

    :cond_22
    const-string/jumbo v2, "com.baidu.deviceid"

    iget-object v3, v0, Lcom/baidu/mobstat/g$b;->a:Ljava/lang/String;

    invoke-direct {p0, v2, v3}, Lcom/baidu/mobstat/g;->a(Ljava/lang/String;Ljava/lang/String;)Z

    const-string/jumbo v2, "bd_setting_i"

    iget-object v3, v0, Lcom/baidu/mobstat/g$b;->b:Ljava/lang/String;

    invoke-direct {p0, v2, v3}, Lcom/baidu/mobstat/g;->a(Ljava/lang/String;Ljava/lang/String;)Z

    goto/16 :goto_c

    :cond_23
    const-string/jumbo v2, "com.baidu.deviceid"

    invoke-direct {p0, v2}, Lcom/baidu/mobstat/g;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_22

    goto/16 :goto_c

    :cond_24
    iget-object v1, v0, Lcom/baidu/mobstat/g$b;->b:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_6

    new-instance v1, Ljava/io/File;

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v2

    const-string/jumbo v3, "backups/.SystemConfig/.cuid"

    invoke-direct {v1, v2, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iget v2, p0, Lcom/baidu/mobstat/g;->c:I

    and-int/lit8 v2, v2, 0x2

    if-eqz v2, :cond_26

    :cond_25
    iget-object v1, v0, Lcom/baidu/mobstat/g$b;->b:Ljava/lang/String;

    iget-object v2, v0, Lcom/baidu/mobstat/g$b;->a:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/baidu/mobstat/g;->b(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_d

    :cond_26
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_25

    goto/16 :goto_d
.end method

.method public static b(Landroid/content/Context;)Ljava/lang/String;
    .locals 2

    const-string/jumbo v0, ""

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "android_id"

    invoke-static {v0, v1}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    :goto_0
    return-object v0

    :cond_0
    const-string/jumbo v0, ""

    goto :goto_0
.end method

.method private b(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    :try_start_0
    iget-object v0, p0, Lcom/baidu/mobstat/g;->b:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-static {v0, p1}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    return-object v0

    :catch_0
    move-exception v0

    invoke-static {v0}, Lcom/baidu/mobstat/g;->b(Ljava/lang/Throwable;)V

    const/4 v0, 0x0

    return-object v0
.end method

.method private static b(Ljava/lang/String;Ljava/lang/String;)V
    .locals 9

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v1, "="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v1, Ljava/io/File;

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v2

    const-string/jumbo v3, "backups/.SystemConfig"

    invoke-direct {v1, v2, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    new-instance v2, Ljava/io/File;

    const-string/jumbo v3, ".cuid"

    invoke-direct {v2, v1, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    :try_start_0
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v3

    if-nez v3, :cond_2

    :cond_0
    :goto_0
    invoke-virtual {v1}, Ljava/io/File;->mkdirs()Z

    new-instance v1, Ljava/io/FileWriter;

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3}, Ljava/io/FileWriter;-><init>(Ljava/io/File;Z)V

    sget-object v2, Lcom/baidu/mobstat/g;->a:Ljava/lang/String;

    sget-object v3, Lcom/baidu/mobstat/g;->a:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    invoke-static {v2, v3, v0}, Lcom/baidu/mobstat/a;->a(Ljava/lang/String;Ljava/lang/String;[B)[B

    move-result-object v0

    const-string/jumbo v2, "utf-8"

    invoke-static {v0, v2}, Lcom/baidu/mobstat/b;->a([BLjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/io/FileWriter;->write(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/FileWriter;->flush()V

    invoke-virtual {v1}, Ljava/io/FileWriter;->close()V

    :goto_1
    return-void

    :cond_1
    return-void

    :cond_2
    invoke-virtual {v1}, Ljava/io/File;->isDirectory()Z

    move-result v3

    if-nez v3, :cond_0

    new-instance v3, Ljava/util/Random;

    invoke-direct {v3}, Ljava/util/Random;-><init>()V

    invoke-virtual {v1}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v4

    invoke-virtual {v1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v5

    :cond_3
    new-instance v6, Ljava/io/File;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v3}, Ljava/util/Random;->nextInt()I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, ".tmp"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v4, v7}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v6}, Ljava/io/File;->exists()Z

    move-result v7

    if-nez v7, :cond_3

    invoke-virtual {v1, v6}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    invoke-virtual {v6}, Ljava/io/File;->delete()Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    :catch_0
    move-exception v0

    goto :goto_1

    :catch_1
    move-exception v0

    goto :goto_1
.end method

.method private static b(Ljava/lang/Throwable;)V
    .locals 0

    return-void
.end method

.method private static c(Landroid/content/Context;)Lcom/baidu/mobstat/g$b;
    .locals 2

    sget-object v0, Lcom/baidu/mobstat/g;->e:Lcom/baidu/mobstat/g$b;

    if-eqz v0, :cond_0

    :goto_0
    sget-object v0, Lcom/baidu/mobstat/g;->e:Lcom/baidu/mobstat/g$b;

    return-object v0

    :cond_0
    const-class v1, Lcom/baidu/mobstat/g$b;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/baidu/mobstat/g;->e:Lcom/baidu/mobstat/g$b;

    if-eqz v0, :cond_1

    :goto_1
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_1
    :try_start_1
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    new-instance v0, Lcom/baidu/mobstat/g;

    invoke-direct {v0, p0}, Lcom/baidu/mobstat/g;-><init>(Landroid/content/Context;)V

    invoke-direct {v0}, Lcom/baidu/mobstat/g;->b()Lcom/baidu/mobstat/g$b;

    move-result-object v0

    sput-object v0, Lcom/baidu/mobstat/g;->e:Lcom/baidu/mobstat/g$b;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1
.end method

.method private c()Z
    .locals 1

    const-string/jumbo v0, "android.permission.WRITE_SETTINGS"

    invoke-direct {p0, v0}, Lcom/baidu/mobstat/g;->c(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method private c(Ljava/lang/String;)Z
    .locals 4

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/baidu/mobstat/g;->b:Landroid/content/Context;

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v2

    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v3

    invoke-virtual {v1, p1, v2, v3}, Landroid/content/Context;->checkPermission(Ljava/lang/String;II)I

    move-result v1

    if-eqz v1, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private d()Lcom/baidu/mobstat/g$b;
    .locals 5

    const/4 v4, 0x0

    const-string/jumbo v0, "com.baidu.deviceid"

    invoke-direct {p0, v0}, Lcom/baidu/mobstat/g;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v0, "bd_setting_i"

    invoke-direct {p0, v0}, Lcom/baidu/mobstat/g;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    :cond_0
    :goto_0
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_2

    :goto_1
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_3

    return-object v4

    :cond_1
    const-string/jumbo v0, ""

    invoke-direct {p0, v0}, Lcom/baidu/mobstat/g;->h(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string/jumbo v2, "bd_setting_i"

    invoke-direct {p0, v2, v0}, Lcom/baidu/mobstat/g;->a(Ljava/lang/String;Ljava/lang/String;)Z

    goto :goto_0

    :cond_2
    iget-object v1, p0, Lcom/baidu/mobstat/g;->b:Landroid/content/Context;

    invoke-static {v1}, Lcom/baidu/mobstat/g;->b(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "com.baidu"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    const/4 v2, 0x1

    invoke-static {v1, v2}, Lcom/baidu/mobstat/c;->a([BZ)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/baidu/mobstat/g;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto :goto_1

    :cond_3
    new-instance v2, Lcom/baidu/mobstat/g$b;

    invoke-direct {v2, v4}, Lcom/baidu/mobstat/g$b;-><init>(Lcom/baidu/mobstat/h;)V

    iput-object v1, v2, Lcom/baidu/mobstat/g$b;->a:Ljava/lang/String;

    iput-object v0, v2, Lcom/baidu/mobstat/g$b;->b:Ljava/lang/String;

    return-object v2
.end method

.method private d(Ljava/lang/String;)Lcom/baidu/mobstat/g$b;
    .locals 8

    const/4 v7, 0x0

    const/4 v2, 0x1

    const/4 v3, 0x0

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x17

    if-lt v0, v1, :cond_2

    move v4, v3

    :goto_0
    if-nez v4, :cond_3

    :cond_0
    const-string/jumbo v0, ""

    new-instance v1, Ljava/io/File;

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v5

    const-string/jumbo v6, "baidu/.cuid"

    invoke-direct {v1, v5, v6}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v5

    if-nez v5, :cond_4

    new-instance v1, Ljava/io/File;

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v3

    const-string/jumbo v5, "backups/.SystemConfig/.cuid"

    invoke-direct {v1, v3, v5}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    :goto_1
    :try_start_0
    new-instance v3, Ljava/io/FileReader;

    invoke-direct {v3, v1}, Ljava/io/FileReader;-><init>(Ljava/io/File;)V

    new-instance v1, Ljava/io/BufferedReader;

    invoke-direct {v1, v3}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    :goto_2
    invoke-virtual {v1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v5

    if-nez v5, :cond_5

    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V

    new-instance v1, Ljava/lang/String;

    sget-object v5, Lcom/baidu/mobstat/g;->a:Ljava/lang/String;

    sget-object v6, Lcom/baidu/mobstat/g;->a:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->getBytes()[B

    move-result-object v3

    invoke-static {v3}, Lcom/baidu/mobstat/b;->a([B)[B

    move-result-object v3

    invoke-static {v5, v6, v3}, Lcom/baidu/mobstat/a;->b(Ljava/lang/String;Ljava/lang/String;[B)[B

    move-result-object v3

    invoke-direct {v1, v3}, Ljava/lang/String;-><init>([B)V

    const-string/jumbo v3, "="

    invoke-virtual {v1, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    move-result-object v1

    if-nez v1, :cond_6

    :cond_1
    :goto_3
    if-eqz v2, :cond_a

    :goto_4
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_b

    return-object v7

    :cond_2
    move v4, v2

    goto :goto_0

    :cond_3
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-object v7

    :cond_4
    move v2, v3

    goto :goto_1

    :cond_5
    :try_start_1
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v5, "\r\n"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2

    :catch_0
    move-exception v1

    goto :goto_4

    :cond_6
    array-length v3, v1

    const/4 v5, 0x2

    if-ne v3, v5, :cond_1

    if-nez v4, :cond_8

    :cond_7
    if-nez v4, :cond_1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_9

    :goto_5
    const/4 v3, 0x1

    aget-object v0, v1, v3

    goto :goto_3

    :cond_8
    const/4 v3, 0x0

    aget-object v3, v1, v3

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_7

    const/4 v3, 0x1

    aget-object v0, v1, v3

    goto :goto_3

    :cond_9
    const/4 v3, 0x1

    aget-object p1, v1, v3

    goto :goto_5

    :cond_a
    invoke-static {p1, v0}, Lcom/baidu/mobstat/g;->b(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2

    goto :goto_4

    :catch_1
    move-exception v1

    goto :goto_4

    :cond_b
    new-instance v1, Lcom/baidu/mobstat/g$b;

    invoke-direct {v1, v7}, Lcom/baidu/mobstat/g$b;-><init>(Lcom/baidu/mobstat/h;)V

    iput-object v0, v1, Lcom/baidu/mobstat/g$b;->a:Ljava/lang/String;

    iput-object p1, v1, Lcom/baidu/mobstat/g$b;->b:Ljava/lang/String;

    return-object v1

    :catch_2
    move-exception v1

    goto :goto_4
.end method

.method private e()Lcom/baidu/mobstat/g$b;
    .locals 4

    new-instance v0, Ljava/io/File;

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v1

    const-string/jumbo v2, "backups/.SystemConfig/.cuid2"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    const/4 v0, 0x0

    return-object v0

    :cond_1
    invoke-static {v0}, Lcom/baidu/mobstat/g;->a(Ljava/io/File;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    :try_start_0
    new-instance v1, Ljava/lang/String;

    sget-object v2, Lcom/baidu/mobstat/g;->a:Ljava/lang/String;

    sget-object v3, Lcom/baidu/mobstat/g;->a:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    invoke-static {v0}, Lcom/baidu/mobstat/b;->a([B)[B

    move-result-object v0

    invoke-static {v2, v3, v0}, Lcom/baidu/mobstat/a;->b(Ljava/lang/String;Ljava/lang/String;[B)[B

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/String;-><init>([B)V

    invoke-static {v1}, Lcom/baidu/mobstat/g$b;->a(Ljava/lang/String;)Lcom/baidu/mobstat/g$b;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    return-object v0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method private static e(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    :try_start_0
    sget-object v0, Lcom/baidu/mobstat/g;->a:Ljava/lang/String;

    sget-object v1, Lcom/baidu/mobstat/g;->a:Ljava/lang/String;

    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/baidu/mobstat/a;->a(Ljava/lang/String;Ljava/lang/String;[B)[B

    move-result-object v0

    const-string/jumbo v1, "utf-8"

    invoke-static {v0, v1}, Lcom/baidu/mobstat/b;->a([BLjava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0

    :catch_0
    move-exception v0

    invoke-static {v0}, Lcom/baidu/mobstat/g;->b(Ljava/lang/Throwable;)V

    :goto_0
    const-string/jumbo v0, ""

    return-object v0

    :catch_1
    move-exception v0

    invoke-static {v0}, Lcom/baidu/mobstat/g;->b(Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method private static f(Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    :try_start_0
    new-instance v0, Ljava/lang/String;

    sget-object v1, Lcom/baidu/mobstat/g;->a:Ljava/lang/String;

    sget-object v2, Lcom/baidu/mobstat/g;->a:Ljava/lang/String;

    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object v3

    invoke-static {v3}, Lcom/baidu/mobstat/b;->a([B)[B

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcom/baidu/mobstat/a;->b(Ljava/lang/String;Ljava/lang/String;[B)[B

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>([B)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0

    :catch_0
    move-exception v0

    invoke-static {v0}, Lcom/baidu/mobstat/g;->b(Ljava/lang/Throwable;)V

    const-string/jumbo v0, ""

    return-object v0
.end method

.method private static g(Ljava/lang/String;)V
    .locals 8

    new-instance v0, Ljava/io/File;

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v1

    const-string/jumbo v2, "backups/.SystemConfig"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    new-instance v1, Ljava/io/File;

    const-string/jumbo v2, ".cuid2"

    invoke-direct {v1, v0, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    :try_start_0
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_1

    :cond_0
    :goto_0
    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    new-instance v0, Ljava/io/FileWriter;

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Ljava/io/FileWriter;-><init>(Ljava/io/File;Z)V

    invoke-virtual {v0, p0}, Ljava/io/FileWriter;->write(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/FileWriter;->flush()V

    invoke-virtual {v0}, Ljava/io/FileWriter;->close()V

    :goto_1
    return-void

    :cond_1
    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    move-result v2

    if-nez v2, :cond_0

    new-instance v2, Ljava/util/Random;

    invoke-direct {v2}, Ljava/util/Random;-><init>()V

    invoke-virtual {v0}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v3

    invoke-virtual {v0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v4

    :cond_2
    new-instance v5, Ljava/io/File;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v2}, Ljava/util/Random;->nextInt()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, ".tmp"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v3, v6}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v5}, Ljava/io/File;->exists()Z

    move-result v6

    if-nez v6, :cond_2

    invoke-virtual {v0, v5}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    invoke-virtual {v5}, Ljava/io/File;->delete()Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    :catch_0
    move-exception v0

    goto :goto_1

    :catch_1
    move-exception v0

    goto :goto_1
.end method

.method private h(Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    const/4 v1, 0x0

    :try_start_0
    iget-object v0, p0, Lcom/baidu/mobstat/g;->b:Landroid/content/Context;

    const-string/jumbo v2, "phone"

    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-nez v0, :cond_1

    :goto_0
    move-object v0, v1

    :goto_1
    invoke-static {v0}, Lcom/baidu/mobstat/g;->i(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    move-object p1, v0

    :cond_0
    return-object p1

    :cond_1
    :try_start_1
    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getDeviceId()Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v0

    goto :goto_1

    :catch_0
    move-exception v0

    const-string/jumbo v2, "DeviceId"

    const-string/jumbo v3, "Read IMEI failed"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method private static i(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    if-nez p0, :cond_1

    :cond_0
    return-object p0

    :cond_1
    const-string/jumbo v0, ":"

    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string/jumbo v0, ""

    return-object v0
.end method
