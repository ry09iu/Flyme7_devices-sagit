.class public final Lokhttp3/internal/http/HttpDate;
.super Ljava/lang/Object;
.source "HttpDate.java"


# static fields
.field private static final BROWSER_COMPATIBLE_DATE_FORMATS:[Ljava/text/DateFormat;

.field private static final BROWSER_COMPATIBLE_DATE_FORMAT_STRINGS:[Ljava/lang/String;

.field public static final MAX_DATE:J = 0xe677d21fdbffL

.field private static final STANDARD_DATE_FORMAT:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal",
            "<",
            "Ljava/text/DateFormat;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 37
    new-instance v0, Lokhttp3/internal/http/HttpDate$1;

    invoke-direct {v0}, Lokhttp3/internal/http/HttpDate$1;-><init>()V

    sput-object v0, Lokhttp3/internal/http/HttpDate;->STANDARD_DATE_FORMAT:Ljava/lang/ThreadLocal;

    const/16 v0, 0xf

    .line 49
    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string/jumbo v2, "EEE, dd MMM yyyy HH:mm:ss zzz"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string/jumbo v2, "EEEE, dd-MMM-yy HH:mm:ss zzz"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string/jumbo v2, "EEE MMM d HH:mm:ss yyyy"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string/jumbo v2, "EEE, dd-MMM-yyyy HH:mm:ss z"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string/jumbo v2, "EEE, dd-MMM-yyyy HH-mm-ss z"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string/jumbo v2, "EEE, dd MMM yy HH:mm:ss z"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string/jumbo v2, "EEE dd-MMM-yyyy HH:mm:ss z"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string/jumbo v2, "EEE dd MMM yyyy HH:mm:ss z"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string/jumbo v2, "EEE dd-MMM-yyyy HH-mm-ss z"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string/jumbo v2, "EEE dd-MMM-yy HH:mm:ss z"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string/jumbo v2, "EEE dd MMM yy HH:mm:ss z"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string/jumbo v2, "EEE,dd-MMM-yy HH:mm:ss z"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string/jumbo v2, "EEE,dd-MMM-yyyy HH:mm:ss z"

    aput-object v2, v0, v1

    const/16 v1, 0xd

    const-string/jumbo v2, "EEE, dd-MM-yyyy HH:mm:ss z"

    aput-object v2, v0, v1

    const/16 v1, 0xe

    const-string/jumbo v2, "EEE MMM d yyyy HH:mm:ss z"

    aput-object v2, v0, v1

    sput-object v0, Lokhttp3/internal/http/HttpDate;->BROWSER_COMPATIBLE_DATE_FORMAT_STRINGS:[Ljava/lang/String;

    .line 71
    sget-object v0, Lokhttp3/internal/http/HttpDate;->BROWSER_COMPATIBLE_DATE_FORMAT_STRINGS:[Ljava/lang/String;

    array-length v0, v0

    new-array v0, v0, [Ljava/text/DateFormat;

    sput-object v0, Lokhttp3/internal/http/HttpDate;->BROWSER_COMPATIBLE_DATE_FORMATS:[Ljava/text/DateFormat;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 117
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 118
    return-void
.end method

.method public static format(Ljava/util/Date;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 114
    sget-object v0, Lokhttp3/internal/http/HttpDate;->STANDARD_DATE_FORMAT:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/text/DateFormat;

    invoke-virtual {v0, p0}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static parse(Ljava/lang/String;)Ljava/util/Date;
    .locals 8

    .prologue
    const/4 v7, 0x0

    const/4 v1, 0x0

    .line 76
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_0

    .line 80
    new-instance v2, Ljava/text/ParsePosition;

    invoke-direct {v2, v1}, Ljava/text/ParsePosition;-><init>(I)V

    .line 81
    sget-object v0, Lokhttp3/internal/http/HttpDate;->STANDARD_DATE_FORMAT:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/text/DateFormat;

    invoke-virtual {v0, p0, v2}, Ljava/text/DateFormat;->parse(Ljava/lang/String;Ljava/text/ParsePosition;)Ljava/util/Date;

    move-result-object v0

    .line 82
    invoke-virtual {v2}, Ljava/text/ParsePosition;->getIndex()I

    move-result v3

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v4

    if-eq v3, v4, :cond_1

    .line 87
    sget-object v3, Lokhttp3/internal/http/HttpDate;->BROWSER_COMPATIBLE_DATE_FORMAT_STRINGS:[Ljava/lang/String;

    monitor-enter v3

    .line 88
    :try_start_0
    sget-object v0, Lokhttp3/internal/http/HttpDate;->BROWSER_COMPATIBLE_DATE_FORMAT_STRINGS:[Ljava/lang/String;

    array-length v4, v0

    :goto_0
    if-lt v1, v4, :cond_2

    .line 108
    monitor-exit v3

    .line 109
    return-object v7

    .line 77
    :cond_0
    return-object v7

    .line 85
    :cond_1
    return-object v0

    .line 89
    :cond_2
    sget-object v0, Lokhttp3/internal/http/HttpDate;->BROWSER_COMPATIBLE_DATE_FORMATS:[Ljava/text/DateFormat;

    aget-object v0, v0, v1

    .line 90
    if-eqz v0, :cond_3

    :goto_1
    const/4 v5, 0x0

    .line 97
    invoke-virtual {v2, v5}, Ljava/text/ParsePosition;->setIndex(I)V

    .line 98
    invoke-virtual {v0, p0, v2}, Ljava/text/DateFormat;->parse(Ljava/lang/String;Ljava/text/ParsePosition;)Ljava/util/Date;

    move-result-object v0

    .line 99
    invoke-virtual {v2}, Ljava/text/ParsePosition;->getIndex()I

    move-result v5

    if-nez v5, :cond_4

    .line 88
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 91
    :cond_3
    new-instance v0, Ljava/text/SimpleDateFormat;

    sget-object v5, Lokhttp3/internal/http/HttpDate;->BROWSER_COMPATIBLE_DATE_FORMAT_STRINGS:[Ljava/lang/String;

    aget-object v5, v5, v1

    sget-object v6, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-direct {v0, v5, v6}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    .line 94
    sget-object v5, Lokhttp3/internal/Util;->UTC:Ljava/util/TimeZone;

    invoke-virtual {v0, v5}, Ljava/text/DateFormat;->setTimeZone(Ljava/util/TimeZone;)V

    .line 95
    sget-object v5, Lokhttp3/internal/http/HttpDate;->BROWSER_COMPATIBLE_DATE_FORMATS:[Ljava/text/DateFormat;

    aput-object v0, v5, v1

    goto :goto_1

    .line 108
    :catchall_0
    move-exception v0

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 105
    :cond_4
    :try_start_1
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    return-object v0
.end method
