.class public Lcom/baidu/mobstat/ff;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static a:Ljava/lang/String;

.field private static b:Ljava/lang/String;

.field private static c:Ljava/lang/String;

.field private static final d:Ljava/util/regex/Pattern;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 56
    sput-object v0, Lcom/baidu/mobstat/ff;->a:Ljava/lang/String;

    .line 57
    sput-object v0, Lcom/baidu/mobstat/ff;->b:Ljava/lang/String;

    .line 58
    sput-object v0, Lcom/baidu/mobstat/ff;->c:Ljava/lang/String;

    const-string/jumbo v0, "\\s*|\t|\r|\n"

    .line 60
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/baidu/mobstat/ff;->d:Ljava/util/regex/Pattern;

    return-void
.end method

.method public static a()Ljava/lang/String;
    .locals 9

    .prologue
    const/16 v7, 0xd

    const/4 v1, 0x0

    .line 460
    new-instance v3, Ljava/lang/StringBuffer;

    invoke-direct {v3}, Ljava/lang/StringBuffer;-><init>()V

    const/16 v0, 0x14

    .line 462
    :try_start_0
    new-array v4, v0, [C

    .line 464
    new-instance v0, Ljava/io/InputStreamReader;

    new-instance v2, Ljava/io/FileInputStream;

    const-string/jumbo v5, "/sys/class/net/eth0/address"

    invoke-direct {v2, v5}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    invoke-direct {v0, v2}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_4
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 465
    :cond_0
    :goto_0
    :try_start_1
    invoke-virtual {v0, v4}, Ljava/io/Reader;->read([C)I

    move-result v5

    const/4 v2, -0x1

    if-ne v5, v2, :cond_1

    .line 477
    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, ":"

    const-string/jumbo v4, ""

    .line 478
    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 484
    if-nez v0, :cond_5

    .line 480
    :goto_1
    return-object v1

    .line 466
    :cond_1
    array-length v2, v4

    if-eq v5, v2, :cond_3

    :cond_2
    const/4 v2, 0x0

    .line 469
    :goto_2
    if-ge v2, v5, :cond_0

    .line 470
    aget-char v6, v4, v2

    if-ne v6, v7, :cond_4

    .line 469
    :goto_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 466
    :cond_3
    array-length v2, v4

    add-int/lit8 v2, v2, -0x1

    aget-char v2, v4, v2

    if-eq v2, v7, :cond_2

    .line 467
    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {v2, v4}, Ljava/io/PrintStream;->print([C)V

    goto :goto_0

    .line 480
    :catch_0
    move-exception v2

    .line 484
    :goto_4
    if-nez v0, :cond_6

    .line 493
    :goto_5
    return-object v1

    .line 471
    :cond_4
    aget-char v6, v4, v2

    invoke-virtual {v3, v6}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_3

    .line 489
    :catchall_0
    move-exception v1

    move-object v8, v1

    move-object v1, v0

    move-object v0, v8

    .line 484
    :goto_6
    if-nez v1, :cond_7

    .line 491
    :goto_7
    throw v0

    .line 486
    :cond_5
    :try_start_2
    invoke-virtual {v0}, Ljava/io/Reader;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_1

    .line 489
    :catch_1
    move-exception v0

    goto :goto_1

    .line 486
    :cond_6
    :try_start_3
    invoke-virtual {v0}, Ljava/io/Reader;->close()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    goto :goto_5

    .line 489
    :catch_2
    move-exception v0

    goto :goto_5

    .line 486
    :cond_7
    :try_start_4
    invoke-virtual {v1}, Ljava/io/Reader;->close()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_3

    goto :goto_7

    .line 489
    :catch_3
    move-exception v1

    goto :goto_7

    :catchall_1
    move-exception v0

    goto :goto_6

    .line 480
    :catch_4
    move-exception v0

    move-object v0, v1

    goto :goto_4
.end method

.method private static a(B)Ljava/lang/String;
    .locals 2

    .prologue
    .line 365
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "00"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 366
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, -0x3

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static a(ILandroid/content/Context;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 98
    :try_start_0
    invoke-static {p1}, Lcom/baidu/mobstat/ff;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 99
    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    invoke-static {p0, v0}, Lcom/baidu/mobstat/ev$b;->c(I[B)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    return-object v0

    :catch_0
    move-exception v0

    const-string/jumbo v0, ""

    .line 104
    return-object v0
.end method

.method public static a(Landroid/content/Context;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 108
    invoke-static {p0}, Lcom/baidu/mobstat/fh;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 110
    sget-object v1, Lcom/baidu/mobstat/ff;->d:Ljava/util/regex/Pattern;

    invoke-virtual {v1, v0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    const-string/jumbo v1, ""

    .line 111
    invoke-virtual {v0, v1}, Ljava/util/regex/Matcher;->replaceAll(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 113
    return-object v0
.end method

.method public static a(Landroid/content/Context;I)Ljava/lang/String;
    .locals 2

    .prologue
    .line 504
    invoke-static {p0}, Lcom/baidu/mobstat/ff;->m(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 505
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    invoke-static {p1, v0}, Lcom/baidu/mobstat/ev$b;->c(I[B)Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const-string/jumbo v0, ""

    goto :goto_0
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .locals 5

    .prologue
    const/4 v1, 0x0

    const-string/jumbo v0, ""

    .line 70
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    .line 74
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    const/16 v4, 0x80

    invoke-virtual {v2, v3, v4}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 79
    if-nez v2, :cond_0

    .line 93
    :goto_0
    return-object v0

    .line 77
    :catch_0
    move-exception v1

    .line 76
    return-object v0

    .line 81
    :cond_0
    iget-object v3, v2, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    if-nez v3, :cond_1

    .line 85
    :goto_1
    if-eqz v1, :cond_2

    .line 90
    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 82
    :cond_1
    iget-object v1, v2, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    invoke-virtual {v1, p1}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    goto :goto_1

    .line 86
    :cond_2
    invoke-static {}, Lcom/baidu/mobstat/eh;->c()Lcom/baidu/mobstat/eh;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "can\'t find information in AndroidManifest.xml for key "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/baidu/mobstat/eh;->a(Ljava/lang/String;)V

    .line 87
    return-object v0
.end method

.method private static a(Ljava/lang/String;)Ljava/lang/String;
    .locals 6

    .prologue
    const/4 v1, 0x0

    .line 987
    :try_start_0
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "getprop "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/Runtime;->exec(Ljava/lang/String;)Ljava/lang/Process;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    .line 988
    :try_start_1
    new-instance v2, Ljava/io/BufferedReader;

    new-instance v3, Ljava/io/InputStreamReader;

    invoke-virtual {v0}, Ljava/lang/Process;->getInputStream()Ljava/io/InputStream;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    const/16 v4, 0x400

    invoke-direct {v2, v3, v4}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;I)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_4
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 989
    :try_start_2
    invoke-virtual {v2}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_5
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    move-result-object v1

    .line 993
    if-nez v2, :cond_1

    .line 1000
    :goto_0
    if-nez v0, :cond_2

    .line 1005
    :cond_0
    :goto_1
    return-object v1

    .line 995
    :cond_1
    :try_start_3
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_0

    .line 998
    :catch_0
    move-exception v2

    goto :goto_0

    .line 1001
    :cond_2
    invoke-virtual {v0}, Ljava/lang/Process;->destroy()V

    goto :goto_1

    :catch_1
    move-exception v0

    move-object v0, v1

    move-object v2, v1

    .line 993
    :goto_2
    if-nez v2, :cond_3

    .line 1000
    :goto_3
    if-eqz v0, :cond_0

    .line 1001
    invoke-virtual {v0}, Ljava/lang/Process;->destroy()V

    goto :goto_1

    .line 995
    :cond_3
    :try_start_4
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2

    goto :goto_3

    .line 998
    :catch_2
    move-exception v2

    goto :goto_3

    .line 1001
    :catchall_0
    move-exception v0

    move-object v2, v1

    .line 993
    :goto_4
    if-nez v2, :cond_4

    .line 1000
    :goto_5
    if-nez v1, :cond_5

    .line 1003
    :goto_6
    throw v0

    .line 995
    :cond_4
    :try_start_5
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_3

    goto :goto_5

    .line 998
    :catch_3
    move-exception v2

    goto :goto_5

    .line 1001
    :cond_5
    invoke-virtual {v1}, Ljava/lang/Process;->destroy()V

    goto :goto_6

    :catchall_1
    move-exception v2

    move-object v5, v2

    move-object v2, v1

    move-object v1, v0

    move-object v0, v5

    goto :goto_4

    :catchall_2
    move-exception v1

    move-object v5, v1

    move-object v1, v0

    move-object v0, v5

    goto :goto_4

    :catch_4
    move-exception v2

    move-object v2, v1

    goto :goto_2

    :catch_5
    move-exception v3

    goto :goto_2
.end method

.method public static b()Ljava/lang/String;
    .locals 3

    .prologue
    .line 953
    sget-object v0, Lcom/baidu/mobstat/ff;->c:Ljava/lang/String;

    if-nez v0, :cond_1

    const-string/jumbo v0, ""

    const-string/jumbo v1, "ro.miui.ui.version.name"

    .line 959
    invoke-static {v1}, Lcom/baidu/mobstat/ff;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    const-string/jumbo v1, "ro.build.version.opporom"

    .line 961
    invoke-static {v1}, Lcom/baidu/mobstat/ff;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_3

    const-string/jumbo v1, "ro.build.version.emui"

    .line 963
    invoke-static {v1}, Lcom/baidu/mobstat/ff;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_4

    const-string/jumbo v1, "ro.vivo.os.version"

    .line 965
    invoke-static {v1}, Lcom/baidu/mobstat/ff;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_5

    const-string/jumbo v1, "ro.smartisan.version"

    .line 967
    invoke-static {v1}, Lcom/baidu/mobstat/ff;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 971
    :goto_0
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_7

    .line 978
    :cond_0
    :goto_1
    sput-object v0, Lcom/baidu/mobstat/ff;->c:Ljava/lang/String;

    .line 979
    sget-object v0, Lcom/baidu/mobstat/ff;->c:Ljava/lang/String;

    return-object v0

    .line 954
    :cond_1
    sget-object v0, Lcom/baidu/mobstat/ff;->c:Ljava/lang/String;

    return-object v0

    :cond_2
    const-string/jumbo v0, "miui"

    goto :goto_0

    :cond_3
    const-string/jumbo v0, "coloros"

    goto :goto_0

    :cond_4
    const-string/jumbo v0, "emui"

    goto :goto_0

    :cond_5
    const-string/jumbo v0, "funtouch"

    goto :goto_0

    :cond_6
    const-string/jumbo v0, "smartisan"

    goto :goto_0

    :cond_7
    const-string/jumbo v1, "ro.build.display.id"

    .line 972
    invoke-static {v1}, Lcom/baidu/mobstat/ff;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 973
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string/jumbo v2, "Flyme"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string/jumbo v0, "flyme"

    goto :goto_1
.end method

.method public static b(ILandroid/content/Context;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 280
    invoke-static {p1}, Lcom/baidu/mobstat/ff;->l(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 281
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    invoke-static {p0, v0}, Lcom/baidu/mobstat/ev$b;->c(I[B)Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const-string/jumbo v0, ""

    goto :goto_0
.end method

.method public static b(Landroid/content/Context;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 117
    invoke-static {p0}, Lcom/baidu/mobstat/ff;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 119
    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    invoke-static {v0}, Lcom/baidu/mobstat/fb$a;->a([B)Ljava/lang/String;

    move-result-object v0

    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {v0, v1}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static b(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 811
    if-eqz p1, :cond_1

    const/16 v1, 0x3a

    .line 815
    invoke-virtual {p1, v1}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v1

    .line 816
    if-gtz v1, :cond_2

    .line 817
    :cond_0
    :goto_0
    return-object v0

    .line 812
    :cond_1
    return-object v0

    .line 816
    :cond_2
    add-int/lit8 v2, v1, 0x1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    if-ge v2, v3, :cond_0

    add-int/lit8 v0, v1, 0x1

    invoke-virtual {p1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public static c(Landroid/content/Context;)I
    .locals 2

    .prologue
    .line 126
    new-instance v0, Landroid/util/DisplayMetrics;

    invoke-direct {v0}, Landroid/util/DisplayMetrics;-><init>()V

    .line 128
    :try_start_0
    invoke-static {p0}, Lcom/baidu/mobstat/ff;->e(Landroid/content/Context;)Landroid/util/DisplayMetrics;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 133
    :goto_0
    iget v0, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    return v0

    .line 131
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method private static c()Ljava/lang/String;
    .locals 8
    .annotation build Landroid/annotation/TargetApi;
        value = 0x9
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 330
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x9

    if-lt v0, v2, :cond_1

    :try_start_0
    const-string/jumbo v2, "wlan0"

    .line 336
    invoke-static {}, Ljava/net/NetworkInterface;->getNetworkInterfaces()Ljava/util/Enumeration;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Collections;->list(Ljava/util/Enumeration;)Ljava/util/ArrayList;

    move-result-object v0

    .line 337
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    if-nez v0, :cond_2

    :goto_0
    const-string/jumbo v0, ""

    .line 361
    return-object v0

    :cond_1
    const-string/jumbo v0, ""

    .line 331
    return-object v0

    .line 337
    :cond_2
    :try_start_1
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/net/NetworkInterface;

    .line 338
    invoke-virtual {v0}, Ljava/net/NetworkInterface;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 342
    invoke-virtual {v0}, Ljava/net/NetworkInterface;->getHardwareAddress()[B

    move-result-object v2

    .line 343
    if-eqz v2, :cond_3

    .line 347
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 348
    array-length v4, v2

    move v0, v1

    :goto_1
    if-lt v0, v4, :cond_4

    .line 351
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    if-gtz v0, :cond_5

    .line 354
    :goto_2
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_3
    const-string/jumbo v0, ""

    .line 344
    return-object v0

    .line 348
    :cond_4
    aget-byte v1, v2, v0

    const-string/jumbo v5, "%02x:"

    const/4 v6, 0x1

    .line 349
    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    invoke-static {v1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v1

    aput-object v1, v6, v7

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 348
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 352
    :cond_5
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->deleteCharAt(I)Ljava/lang/StringBuilder;
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_2

    .line 359
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public static c(ILandroid/content/Context;)Ljava/lang/String;
    .locals 3

    .prologue
    .line 374
    invoke-static {p0, p1}, Lcom/baidu/mobstat/ff;->d(ILandroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    const/4 v0, 0x0

    .line 377
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 381
    :goto_0
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 385
    :goto_1
    return-object v0

    .line 378
    :cond_0
    invoke-virtual {v1}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    invoke-static {p0, v0}, Lcom/baidu/mobstat/ev$b;->c(I[B)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_1
    const-string/jumbo v0, ""

    goto :goto_1
.end method

.method private static c(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 822
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v1

    .line 823
    if-eqz v1, :cond_1

    .line 828
    iget-object v1, v1, Landroid/content/pm/ApplicationInfo;->processName:Ljava/lang/String;

    .line 829
    if-nez v1, :cond_2

    :goto_0
    move-object p1, v0

    .line 833
    :cond_0
    return-object p1

    .line 824
    :cond_1
    return-object v0

    .line 829
    :cond_2
    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0
.end method

.method public static d(Landroid/content/Context;)I
    .locals 2

    .prologue
    .line 140
    new-instance v0, Landroid/util/DisplayMetrics;

    invoke-direct {v0}, Landroid/util/DisplayMetrics;-><init>()V

    .line 142
    :try_start_0
    invoke-static {p0}, Lcom/baidu/mobstat/ff;->e(Landroid/content/Context;)Landroid/util/DisplayMetrics;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 147
    :goto_0
    iget v0, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    return v0

    .line 145
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public static d(ILandroid/content/Context;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 390
    invoke-static {}, Lcom/baidu/mobstat/ff;->a()Ljava/lang/String;

    move-result-object v0

    .line 391
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 396
    :goto_0
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 400
    :goto_1
    return-object v0

    .line 393
    :cond_0
    invoke-static {p0, p1}, Lcom/baidu/mobstat/ff;->e(ILandroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_1
    const-string/jumbo v0, ""

    goto :goto_1
.end method

.method public static e(Landroid/content/Context;)Landroid/util/DisplayMetrics;
    .locals 3

    .prologue
    .line 151
    new-instance v1, Landroid/util/DisplayMetrics;

    invoke-direct {v1}, Landroid/util/DisplayMetrics;-><init>()V

    .line 152
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string/jumbo v2, "window"

    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    .line 153
    invoke-virtual {v0, v1}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 154
    return-object v1
.end method

.method public static e(ILandroid/content/Context;)Ljava/lang/String;
    .locals 8
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    const/4 v3, 0x0

    .line 411
    new-instance v4, Ljava/lang/StringBuffer;

    invoke-direct {v4}, Ljava/lang/StringBuffer;-><init>()V

    .line 413
    :try_start_0
    invoke-static {}, Ljava/net/NetworkInterface;->getNetworkInterfaces()Ljava/util/Enumeration;

    move-result-object v5

    .line 414
    :cond_0
    :goto_0
    invoke-interface {v5}, Ljava/util/Enumeration;->hasMoreElements()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    if-nez v0, :cond_1

    .line 435
    :goto_1
    if-nez v2, :cond_5

    .line 444
    invoke-static {p0, p1}, Lcom/baidu/mobstat/ff;->b(ILandroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 445
    if-nez v0, :cond_7

    .line 449
    :goto_2
    return-object v0

    .line 415
    :cond_1
    :try_start_1
    invoke-interface {v5}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/net/NetworkInterface;

    .line 416
    invoke-virtual {v0}, Ljava/net/NetworkInterface;->getInetAddresses()Ljava/util/Enumeration;

    move-result-object v6

    .line 418
    :cond_2
    :goto_3
    invoke-interface {v6}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 419
    invoke-interface {v6}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/net/InetAddress;

    .line 420
    invoke-virtual {v1}, Ljava/net/InetAddress;->isAnyLocalAddress()Z

    move-result v7

    if-nez v7, :cond_2

    instance-of v7, v1, Ljava/net/Inet4Address;

    if-eqz v7, :cond_2

    invoke-virtual {v1}, Ljava/net/InetAddress;->isLoopbackAddress()Z

    move-result v7

    if-nez v7, :cond_2

    .line 423
    invoke-virtual {v1}, Ljava/net/InetAddress;->isSiteLocalAddress()Z

    move-result v7

    if-nez v7, :cond_3

    .line 425
    invoke-virtual {v1}, Ljava/net/InetAddress;->isLinkLocalAddress()Z

    move-result v1

    if-eqz v1, :cond_4

    move-object v1, v2

    :goto_4
    move-object v2, v1

    .line 429
    goto :goto_3

    .line 424
    :cond_3
    invoke-virtual {v0}, Ljava/net/NetworkInterface;->getHardwareAddress()[B

    move-result-object v1

    goto :goto_4

    .line 426
    :cond_4
    invoke-virtual {v0}, Ljava/net/NetworkInterface;->getHardwareAddress()[B
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v2

    goto :goto_0

    :cond_5
    move v0, v3

    .line 436
    :goto_5
    array-length v1, v2

    if-lt v0, v1, :cond_6

    .line 439
    invoke-virtual {v4}, Ljava/lang/StringBuffer;->length()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {v4, v3, v0}, Ljava/lang/StringBuffer;->substring(II)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, ":"

    const-string/jumbo v2, ""

    .line 440
    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 441
    return-object v0

    .line 437
    :cond_6
    aget-byte v1, v2, v0

    invoke-static {v1}, Lcom/baidu/mobstat/ff;->a(B)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 436
    add-int/lit8 v0, v0, 0x1

    goto :goto_5

    :cond_7
    const-string/jumbo v1, ":"

    const-string/jumbo v2, ""

    .line 447
    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_2

    .line 433
    :catch_0
    move-exception v0

    goto :goto_1
.end method

.method public static f(Landroid/content/Context;)I
    .locals 3

    .prologue
    .line 165
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 166
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    .line 169
    :try_start_0
    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v0

    .line 170
    iget v0, v0, Landroid/content/pm/PackageInfo;->versionCode:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    const/4 v0, 0x1

    .line 175
    return v0
.end method

.method public static f(ILandroid/content/Context;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 530
    invoke-static {p1}, Lcom/baidu/mobstat/ff;->n(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 531
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    invoke-static {p0, v0}, Lcom/baidu/mobstat/ev$b;->c(I[B)Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const-string/jumbo v0, ""

    goto :goto_0
.end method

.method public static g(ILandroid/content/Context;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 589
    invoke-static {p1}, Lcom/baidu/mobstat/ff;->p(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 590
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 594
    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    invoke-static {p0, v0}, Lcom/baidu/mobstat/ev$b;->d(I[B)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    const-string/jumbo v0, ""

    .line 591
    return-object v0
.end method

.method public static g(Landroid/content/Context;)Ljava/lang/String;
    .locals 3

    .prologue
    .line 184
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 185
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    .line 188
    :try_start_0
    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v0

    .line 189
    iget-object v0, v0, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    const-string/jumbo v0, ""

    .line 194
    return-object v0
.end method

.method public static h(ILandroid/content/Context;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 767
    invoke-static {p1}, Lcom/baidu/mobstat/ff;->t(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 768
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    :goto_0
    const-string/jumbo v0, ""

    .line 776
    return-object v0

    .line 770
    :cond_0
    :try_start_0
    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    invoke-static {p0, v0}, Lcom/baidu/mobstat/ev$b;->c(I[B)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    return-object v0

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public static h(Landroid/content/Context;)Ljava/lang/String;
    .locals 3

    .prologue
    const-string/jumbo v1, ""

    .line 212
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 213
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v2

    .line 214
    invoke-virtual {v0, v2}, Landroid/content/pm/PackageManager;->getApplicationLabel(Landroid/content/pm/ApplicationInfo;)Ljava/lang/CharSequence;

    move-result-object v0

    check-cast v0, Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 219
    :goto_0
    return-object v0

    .line 217
    :catch_0
    move-exception v0

    move-object v0, v1

    goto :goto_0
.end method

.method public static i(Landroid/content/Context;)Ljava/lang/String;
    .locals 9

    .prologue
    const/4 v5, 0x2

    const/4 v1, 0x3

    const/4 v4, 0x1

    const/4 v3, 0x0

    const-string/jumbo v0, "%s_%s_%s"

    const-string/jumbo v0, "%s_%s_%s"

    .line 224
    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v4

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v5

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    :try_start_0
    const-string/jumbo v0, "android.permission.ACCESS_FINE_LOCATION"

    .line 226
    invoke-static {p0, v0}, Lcom/baidu/mobstat/ex;->e(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const-string/jumbo v0, "phone"

    .line 229
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getCellLocation()Landroid/telephony/CellLocation;

    move-result-object v0

    .line 231
    if-eqz v0, :cond_2

    .line 235
    instance-of v2, v0, Landroid/telephony/gsm/GsmCellLocation;

    if-nez v2, :cond_3

    .line 240
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v2, "["

    const-string/jumbo v3, ""

    invoke-virtual {v0, v2, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v2, "]"

    const-string/jumbo v3, ""

    invoke-virtual {v0, v2, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v2, ","

    invoke-virtual {v0, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v2, "%s_%s_%s"

    const/4 v3, 0x3

    .line 241
    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    const/4 v5, 0x0

    aget-object v5, v0, v5

    aput-object v5, v3, v4

    const/4 v4, 0x1

    const/4 v5, 0x3

    aget-object v5, v0, v5

    aput-object v5, v3, v4

    const/4 v4, 0x2

    const/4 v5, 0x4

    aget-object v0, v0, v5

    aput-object v0, v3, v4

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_1
    const-string/jumbo v0, "android.permission.ACCESS_COARSE_LOCATION"

    .line 227
    invoke-static {p0, v0}, Lcom/baidu/mobstat/ex;->e(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 248
    :goto_0
    return-object v1

    .line 232
    :cond_2
    return-object v1

    .line 236
    :cond_3
    check-cast v0, Landroid/telephony/gsm/GsmCellLocation;

    const-string/jumbo v2, "%s_%s_%s"

    const/4 v3, 0x3

    .line 237
    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    const-string/jumbo v5, "%d"

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    invoke-virtual {v0}, Landroid/telephony/gsm/GsmCellLocation;->getCid()I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v6, v7

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x1

    const-string/jumbo v5, "%d"

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    .line 238
    invoke-virtual {v0}, Landroid/telephony/gsm/GsmCellLocation;->getLac()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v6, v7

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v3, v4

    const/4 v0, 0x2

    const/4 v4, 0x0

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v0

    .line 237
    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    return-object v0

    .line 246
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public static j(Landroid/content/Context;)Ljava/lang/String;
    .locals 8

    .prologue
    const-string/jumbo v1, ""

    :try_start_0
    const-string/jumbo v0, "android.permission.ACCESS_FINE_LOCATION"

    .line 262
    invoke-static {p0, v0}, Lcom/baidu/mobstat/ex;->e(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 274
    :cond_0
    :goto_0
    return-object v1

    :cond_1
    const-string/jumbo v0, "location"

    .line 263
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/location/LocationManager;

    const-string/jumbo v2, "gps"

    .line 264
    invoke-virtual {v0, v2}, Landroid/location/LocationManager;->getLastKnownLocation(Ljava/lang/String;)Landroid/location/Location;

    move-result-object v0

    .line 265
    if-eqz v0, :cond_0

    const-string/jumbo v2, "%s_%s_%s"

    const/4 v3, 0x3

    .line 266
    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-virtual {v0}, Landroid/location/Location;->getTime()J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x1

    invoke-virtual {v0}, Landroid/location/Location;->getLongitude()D

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x2

    invoke-virtual {v0}, Landroid/location/Location;->getLatitude()D

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    aput-object v0, v3, v4

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 267
    return-object v0

    .line 272
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public static k(Landroid/content/Context;)Ljava/lang/String;
    .locals 2

    .prologue
    const-string/jumbo v0, ""

    .line 292
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x17

    if-lt v0, v1, :cond_0

    .line 295
    invoke-static {}, Lcom/baidu/mobstat/ff;->c()Ljava/lang/String;

    move-result-object v0

    .line 298
    :goto_0
    return-object v0

    .line 293
    :cond_0
    invoke-static {p0}, Lcom/baidu/mobstat/ff;->l(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public static l(Landroid/content/Context;)Ljava/lang/String;
    .locals 2

    .prologue
    :try_start_0
    const-string/jumbo v0, "android.permission.ACCESS_WIFI_STATE"

    .line 310
    invoke-static {p0, v0}, Lcom/baidu/mobstat/ex;->e(Landroid/content/Context;Ljava/lang/String;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    const-string/jumbo v0, ""

    .line 325
    return-object v0

    :cond_1
    :try_start_1
    const-string/jumbo v0, "wifi"

    .line 311
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiManager;

    .line 313
    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v0

    .line 314
    if-eqz v0, :cond_0

    .line 315
    invoke-virtual {v0}, Landroid/net/wifi/WifiInfo;->getMacAddress()Ljava/lang/String;

    move-result-object v0

    .line 316
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-result v1

    if-nez v1, :cond_0

    .line 317
    return-object v0

    .line 323
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public static m(Landroid/content/Context;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 515
    :try_start_0
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 516
    if-nez v0, :cond_1

    :cond_0
    :goto_0
    const-string/jumbo v0, ""

    .line 526
    return-object v0

    .line 517
    :cond_1
    :try_start_1
    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->getName()Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v0

    .line 518
    if-eqz v0, :cond_0

    .line 519
    return-object v0

    .line 524
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public static n(Landroid/content/Context;)Ljava/lang/String;
    .locals 3
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    .prologue
    .line 541
    sget-object v0, Landroid/os/Build;->BRAND:Ljava/lang/String;

    .line 542
    sget-object v1, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    const-string/jumbo v2, "4.1.1"

    .line 543
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    :cond_0
    :try_start_0
    const-string/jumbo v0, "android.permission.BLUETOOTH"

    .line 548
    invoke-static {p0, v0}, Lcom/baidu/mobstat/ex;->e(Landroid/content/Context;Ljava/lang/String;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    if-nez v0, :cond_3

    :cond_1
    :goto_0
    const-string/jumbo v0, ""

    .line 561
    return-object v0

    :cond_2
    const-string/jumbo v1, "TCT"

    .line 543
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string/jumbo v0, ""

    .line 544
    return-object v0

    .line 549
    :cond_3
    :try_start_1
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v0

    .line 550
    if-eqz v0, :cond_1

    .line 551
    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->getAddress()Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v0

    .line 552
    if-eqz v0, :cond_1

    .line 553
    return-object v0

    .line 559
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public static o(Landroid/content/Context;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 572
    invoke-static {p0}, Lcom/baidu/mobstat/ff;->p(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 573
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 577
    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    invoke-static {v0}, Lcom/baidu/mobstat/ev$a;->a([B)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    const-string/jumbo v0, ""

    .line 574
    return-object v0
.end method

.method public static p(Landroid/content/Context;)Ljava/lang/String;
    .locals 14

    .prologue
    const/4 v5, 0x1

    const/16 v13, 0x1e

    const/4 v4, 0x0

    const/4 v1, 0x0

    .line 605
    if-eqz p0, :cond_2

    const-string/jumbo v0, "android.permission.ACCESS_WIFI_STATE"

    .line 609
    invoke-static {p0, v0}, Lcom/baidu/mobstat/ex;->e(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    :try_start_0
    const-string/jumbo v0, "android.permission.ACCESS_FINE_LOCATION"

    .line 615
    invoke-static {p0, v0}, Lcom/baidu/mobstat/ex;->e(Landroid/content/Context;Ljava/lang/String;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    if-nez v0, :cond_4

    move v0, v1

    :goto_0
    move v2, v0

    :goto_1
    :try_start_1
    const-string/jumbo v0, "wifi"

    .line 626
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiManager;

    .line 627
    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v3

    .line 630
    :try_start_2
    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->getScanResults()Ljava/util/List;
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_4

    move-result-object v0

    move-object v7, v0

    move-object v8, v3

    .line 635
    :goto_2
    if-nez v7, :cond_5

    .line 645
    :cond_0
    :goto_3
    new-instance v9, Lorg/json/JSONArray;

    invoke-direct {v9}, Lorg/json/JSONArray;-><init>()V

    move v6, v1

    .line 646
    :goto_4
    if-nez v7, :cond_6

    .line 670
    :cond_1
    invoke-virtual {v9}, Lorg/json/JSONArray;->length()I

    move-result v0

    if-eqz v0, :cond_a

    .line 674
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 676
    :try_start_3
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 678
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    invoke-virtual {v3, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string/jumbo v4, "|"

    .line 679
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 681
    if-nez v2, :cond_b

    :goto_5
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string/jumbo v1, "|"

    .line 682
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 684
    invoke-static {p0}, Lcom/baidu/mobstat/ff;->j(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v1, "ap-list"

    .line 686
    invoke-virtual {v0, v1, v9}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string/jumbo v1, "meta-data"

    .line 687
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 689
    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    move-result-object v0

    return-object v0

    :cond_2
    const-string/jumbo v0, ""

    .line 606
    return-object v0

    :cond_3
    const-string/jumbo v0, ""

    .line 610
    return-object v0

    :cond_4
    :try_start_4
    const-string/jumbo v0, "location"

    .line 616
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/location/LocationManager;

    const-string/jumbo v2, "gps"

    .line 617
    invoke-virtual {v0, v2}, Landroid/location/LocationManager;->isProviderEnabled(Ljava/lang/String;)Z
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    move-result v0

    goto :goto_0

    .line 621
    :catch_0
    move-exception v0

    move v2, v1

    goto :goto_1

    .line 633
    :catch_1
    move-exception v0

    move-object v0, v4

    :goto_6
    move-object v7, v4

    move-object v8, v0

    goto :goto_2

    .line 635
    :cond_5
    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v0

    if-eqz v0, :cond_0

    .line 636
    new-instance v0, Lcom/baidu/mobstat/fg;

    invoke-direct {v0}, Lcom/baidu/mobstat/fg;-><init>()V

    invoke-static {v7, v0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    goto :goto_3

    .line 646
    :cond_6
    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v0

    if-ge v6, v0, :cond_1

    if-ge v6, v13, :cond_1

    .line 648
    :try_start_5
    invoke-interface {v7, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/ScanResult;

    .line 650
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    .line 652
    iget-object v3, v0, Landroid/net/wifi/ScanResult;->BSSID:Ljava/lang/String;

    invoke-virtual {v10, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v3, "|"

    .line 653
    invoke-virtual {v10, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 655
    iget-object v3, v0, Landroid/net/wifi/ScanResult;->SSID:Ljava/lang/String;

    const-string/jumbo v11, "\\|"

    const-string/jumbo v12, ""

    invoke-virtual {v3, v11, v12}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 656
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v11

    if-gt v11, v13, :cond_8

    :goto_7
    invoke-virtual {v10, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v3, "|"

    .line 657
    invoke-virtual {v10, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 659
    iget v3, v0, Landroid/net/wifi/ScanResult;->level:I

    invoke-virtual {v10, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string/jumbo v3, "|"

    .line 660
    invoke-virtual {v10, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 662
    if-nez v8, :cond_9

    :cond_7
    move v0, v1

    :goto_8
    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 664
    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v9, v0}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 646
    :goto_9
    add-int/lit8 v0, v6, 0x1

    move v6, v0

    goto/16 :goto_4

    :cond_8
    const/4 v11, 0x0

    const/16 v12, 0x1e

    .line 656
    invoke-virtual {v3, v11, v12}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    goto :goto_7

    .line 662
    :cond_9
    iget-object v0, v0, Landroid/net/wifi/ScanResult;->BSSID:Ljava/lang/String;

    invoke-virtual {v8}, Landroid/net/wifi/WifiInfo;->getBSSID()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_3

    move-result v0

    if-eqz v0, :cond_7

    move v0, v5

    goto :goto_8

    .line 671
    :cond_a
    return-object v4

    :cond_b
    move v1, v5

    .line 681
    goto/16 :goto_5

    .line 689
    :catch_2
    move-exception v0

    const-string/jumbo v0, ""

    .line 694
    return-object v0

    .line 667
    :catch_3
    move-exception v0

    goto :goto_9

    .line 633
    :catch_4
    move-exception v0

    move-object v0, v3

    goto/16 :goto_6
.end method

.method public static q(Landroid/content/Context;)Z
    .locals 4

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 705
    if-nez p0, :cond_0

    .line 717
    :goto_0
    return v1

    :cond_0
    :try_start_0
    const-string/jumbo v0, "connectivity"

    .line 707
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    const/4 v3, 0x1

    .line 708
    invoke-virtual {v0, v3}, Landroid/net/ConnectivityManager;->getNetworkInfo(I)Landroid/net/NetworkInfo;

    move-result-object v0

    .line 709
    if-nez v0, :cond_2

    :cond_1
    move v0, v1

    :goto_1
    move v1, v0

    .line 714
    goto :goto_0

    .line 709
    :cond_2
    invoke-virtual {v0}, Landroid/net/NetworkInfo;->isAvailable()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->isConnected()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    if-eqz v0, :cond_1

    move v0, v2

    .line 710
    goto :goto_1

    .line 714
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public static r(Landroid/content/Context;)Ljava/lang/String;
    .locals 3

    .prologue
    const-string/jumbo v1, ""

    :try_start_0
    const-string/jumbo v0, "connectivity"

    .line 724
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 725
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v2

    .line 727
    if-nez v2, :cond_1

    move-object v0, v1

    .line 738
    :cond_0
    :goto_0
    return-object v0

    .line 728
    :cond_1
    invoke-virtual {v2}, Landroid/net/NetworkInfo;->getTypeName()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :try_start_1
    const-string/jumbo v1, "WIFI"

    .line 730
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {v2}, Landroid/net/NetworkInfo;->getSubtypeName()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 731
    invoke-virtual {v2}, Landroid/net/NetworkInfo;->getSubtypeName()Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v0

    goto :goto_0

    .line 736
    :catch_0
    move-exception v0

    :goto_1
    move-object v0, v1

    goto :goto_0

    :catch_1
    move-exception v1

    move-object v1, v0

    goto :goto_1
.end method

.method public static s(Landroid/content/Context;)Z
    .locals 1

    .prologue
    .line 747
    if-nez p0, :cond_1

    .line 755
    :cond_0
    const/4 v0, 0x0

    return v0

    :cond_1
    const-string/jumbo v0, "connectivity"

    .line 749
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 750
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v0

    .line 751
    if-eqz v0, :cond_0

    .line 752
    invoke-virtual {v0}, Landroid/net/NetworkInfo;->isAvailable()Z

    move-result v0

    return v0
.end method

.method public static t(Landroid/content/Context;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 759
    if-nez p0, :cond_0

    const-string/jumbo v0, ""

    .line 763
    return-object v0

    .line 760
    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static u(Landroid/content/Context;)Ljava/lang/String;
    .locals 3

    .prologue
    .line 845
    sget-object v0, Lcom/baidu/mobstat/ff;->b:Ljava/lang/String;

    .line 846
    if-eqz v0, :cond_0

    .line 861
    :goto_0
    return-object v0

    .line 847
    :cond_0
    invoke-static {p0}, Lcom/baidu/mobstat/ff;->y(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    .line 848
    invoke-static {p0, v1}, Lcom/baidu/mobstat/ff;->b(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 849
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 853
    :goto_1
    if-eqz v0, :cond_2

    .line 858
    :goto_2
    sput-object v0, Lcom/baidu/mobstat/ff;->b:Ljava/lang/String;

    goto :goto_0

    .line 850
    :cond_1
    invoke-static {p0, v1}, Lcom/baidu/mobstat/ff;->c(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    :cond_2
    const-string/jumbo v0, ""

    goto :goto_2
.end method

.method public static v(Landroid/content/Context;)Ljava/lang/String;
    .locals 7

    .prologue
    const/4 v1, 0x0

    const/4 v2, 0x0

    const-string/jumbo v0, ""

    .line 873
    invoke-static {p0}, Lcom/baidu/mobstat/ff;->y(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    .line 874
    if-eqz v3, :cond_0

    .line 878
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    .line 881
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x4

    invoke-virtual {v4, v5, v6}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 886
    :goto_0
    if-eqz v2, :cond_1

    .line 890
    iget-object v2, v2, Landroid/content/pm/PackageInfo;->services:[Landroid/content/pm/ServiceInfo;

    .line 891
    if-eqz v2, :cond_2

    .line 895
    array-length v4, v2

    :goto_1
    if-lt v1, v4, :cond_3

    .line 903
    :goto_2
    if-eqz v0, :cond_5

    .line 907
    :goto_3
    return-object v0

    .line 875
    :cond_0
    return-object v0

    .line 887
    :cond_1
    return-object v0

    .line 892
    :cond_2
    return-object v0

    .line 895
    :cond_3
    aget-object v5, v2, v1

    .line 896
    iget-object v6, v5, Landroid/content/pm/ServiceInfo;->processName:Ljava/lang/String;

    .line 897
    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_4

    .line 895
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 898
    :cond_4
    iget-object v0, v5, Landroid/content/pm/ServiceInfo;->name:Ljava/lang/String;

    goto :goto_2

    :cond_5
    const-string/jumbo v0, ""

    goto :goto_3

    .line 884
    :catch_0
    move-exception v4

    goto :goto_0
.end method

.method public static w(Landroid/content/Context;)Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 912
    if-nez p0, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    const-string/jumbo v2, "android.hardware.type.watch"

    invoke-virtual {v1, v2}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :catch_0
    move-exception v1

    .line 917
    return v0
.end method

.method public static x(Landroid/content/Context;)Ljava/lang/String;
    .locals 6

    .prologue
    :try_start_0
    const-string/jumbo v0, "activity"

    .line 922
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    .line 924
    new-instance v1, Landroid/app/ActivityManager$MemoryInfo;

    invoke-direct {v1}, Landroid/app/ActivityManager$MemoryInfo;-><init>()V

    .line 925
    invoke-virtual {v0, v1}, Landroid/app/ActivityManager;->getMemoryInfo(Landroid/app/ActivityManager$MemoryInfo;)V

    .line 927
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    const-string/jumbo v2, "m"

    .line 928
    iget-wide v4, v1, Landroid/app/ActivityManager$MemoryInfo;->availMem:J

    invoke-virtual {v0, v2, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    const-string/jumbo v2, "l"

    .line 929
    iget-boolean v3, v1, Landroid/app/ActivityManager$MemoryInfo;->lowMemory:Z

    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    const-string/jumbo v2, "t"

    .line 930
    iget-wide v4, v1, Landroid/app/ActivityManager$MemoryInfo;->threshold:J

    invoke-virtual {v0, v2, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 932
    new-instance v1, Lorg/json/JSONArray;

    invoke-direct {v1}, Lorg/json/JSONArray;-><init>()V

    .line 933
    invoke-virtual {v1, v0}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 934
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 935
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 937
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    const-string/jumbo v3, "app_mem"

    .line 938
    invoke-virtual {v2, v3, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string/jumbo v1, "meta-data"

    .line 939
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v1, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 941
    invoke-virtual {v2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    .line 943
    invoke-static {v0}, Lcom/baidu/mobstat/ev$a;->a([B)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    return-object v0

    :catch_0
    move-exception v0

    const-string/jumbo v0, ""

    .line 948
    return-object v0
.end method

.method private static y(Landroid/content/Context;)Ljava/lang/String;
    .locals 6

    .prologue
    .line 780
    sget-object v1, Lcom/baidu/mobstat/ff;->a:Ljava/lang/String;

    .line 781
    if-eqz v1, :cond_0

    .line 806
    :goto_0
    return-object v1

    :cond_0
    :try_start_0
    const-string/jumbo v0, "activity"

    .line 783
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    .line 785
    invoke-virtual {v0}, Landroid/app/ActivityManager;->getRunningAppProcesses()Ljava/util/List;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    const/4 v0, 0x0

    move v2, v0

    .line 786
    :goto_1
    if-nez v3, :cond_2

    :cond_1
    move-object v0, v1

    .line 798
    :goto_2
    if-eqz v0, :cond_5

    .line 803
    :goto_3
    sput-object v0, Lcom/baidu/mobstat/ff;->a:Ljava/lang/String;

    move-object v1, v0

    goto :goto_0

    .line 786
    :cond_2
    :try_start_1
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v0

    if-ge v2, v0, :cond_1

    .line 787
    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager$RunningAppProcessInfo;

    .line 789
    if-nez v0, :cond_4

    .line 786
    :cond_3
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_1

    .line 789
    :cond_4
    iget v4, v0, Landroid/app/ActivityManager$RunningAppProcessInfo;->pid:I

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v5

    if-ne v4, v5, :cond_3

    .line 790
    iget-object v0, v0, Landroid/app/ActivityManager$RunningAppProcessInfo;->processName:Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_2

    .line 796
    :catch_0
    move-exception v0

    move-object v0, v1

    goto :goto_2

    :cond_5
    const-string/jumbo v0, ""

    goto :goto_3
.end method
