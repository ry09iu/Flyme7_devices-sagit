.class public final Lmiui/provider/ExtraTelephony;
.super Ljava/lang/Object;
.source "ExtraTelephony.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmiui/provider/ExtraTelephony$AdvancedSeen;,
        Lmiui/provider/ExtraTelephony$AntiSpamAccount;,
        Lmiui/provider/ExtraTelephony$AntiSpamMode;,
        Lmiui/provider/ExtraTelephony$AntiSpamSim;,
        Lmiui/provider/ExtraTelephony$Blacklist;,
        Lmiui/provider/ExtraTelephony$DeletableSyncColumns;,
        Lmiui/provider/ExtraTelephony$FirewallLog;,
        Lmiui/provider/ExtraTelephony$Hms;,
        Lmiui/provider/ExtraTelephony$Judge;,
        Lmiui/provider/ExtraTelephony$Keyword;,
        Lmiui/provider/ExtraTelephony$Mms;,
        Lmiui/provider/ExtraTelephony$MmsSms;,
        Lmiui/provider/ExtraTelephony$Mx;,
        Lmiui/provider/ExtraTelephony$MxType;,
        Lmiui/provider/ExtraTelephony$Phonelist;,
        Lmiui/provider/ExtraTelephony$PrivateAddresses;,
        Lmiui/provider/ExtraTelephony$QuietModeEnableListener;,
        Lmiui/provider/ExtraTelephony$ServiceCategory;,
        Lmiui/provider/ExtraTelephony$SilentModeObserver;,
        Lmiui/provider/ExtraTelephony$SimCards;,
        Lmiui/provider/ExtraTelephony$Sms;,
        Lmiui/provider/ExtraTelephony$SmsPhrase;,
        Lmiui/provider/ExtraTelephony$SyncColumns;,
        Lmiui/provider/ExtraTelephony$TextBasedSmsColumns;,
        Lmiui/provider/ExtraTelephony$Threads;,
        Lmiui/provider/ExtraTelephony$ThreadsColumns;,
        Lmiui/provider/ExtraTelephony$UnderstandInfo;,
        Lmiui/provider/ExtraTelephony$Whitelist;
    }
.end annotation


# static fields
.field public static final BANK_CATEGORY_NUMBER_PREFIX_106:Ljava/lang/String; = "106"

.field public static final BANK_CATEGORY_PATTERN:Ljava/util/regex/Pattern;

.field public static final BANK_CATEGORY_SNIPPET_PATTERN:Ljava/util/regex/Pattern;

.field public static final BLOCKED_CONV_ADDR:Ljava/lang/String; = "blocked_conv_addr"

.field public static final BLOCKED_FLAG:Ljava/lang/String; = "blocked_flag"

.field public static final BLOCKED_FLAG_ALL_MSG:Ljava/lang/String; = "2"

.field public static final BLOCKED_FLAG_BLOCKED_MSG:Ljava/lang/String; = "1"

.field public static final BLOCKED_FLAG_NO_BLOCKED_MSG:Ljava/lang/String; = "0"

.field public static final CALLER_IS_SYNCADAPTER:Ljava/lang/String; = "caller_is_syncadapter"

.field public static final CHECK_DUPLICATION:Ljava/lang/String; = "check_duplication"

.field public static final DEFAULT_THREADS_LIST_TYPE_SP:I = 0x1

.field public static final DIRTY_QUERY_LIMIT:Ljava/lang/String; = "dirty_query_limit"

.field public static final FORCE_DELETE:Ljava/lang/String; = "force_delete"

.field public static final INTERCEPT_STATE_ALL:I = 0x0

.field public static final INTERCEPT_STATE_CALL:I = 0x2

.field public static final INTERCEPT_STATE_SMS:I = 0x1

.field public static final LOCAL_PRIVATE_ADDRESS_SYNC:Ljava/lang/String; = "local.priaddr.sync"

.field public static final LOCAL_SMS_SYNC:Ljava/lang/String; = "local.sms.sync"

.field public static final LOCAL_STICKY_THREAD_SYNC:Ljava/lang/String; = "local.stkthrd.sync"

.field public static final LOCAL_SYNC_NAME:Ljava/lang/String; = "localName"

.field public static final NEED_FULL_INSERT_URI:Ljava/lang/String; = "need_full_insert_uri"

.field public static final NO_NOTIFY_FLAG:Ljava/lang/String; = "no_notify"

.field public static final PRIVACY_FLAG:Ljava/lang/String; = "privacy_flag"

.field public static final PRIVACY_FLAG_ALL_MSG:Ljava/lang/String; = "2"

.field public static final PRIVACY_FLAG_NO_PRIVATE_MSG:Ljava/lang/String; = "0"

.field public static final PRIVACY_FLAG_PRIVATE_MSG:Ljava/lang/String; = "1"

.field public static final PROVIDER_NAME:Ljava/lang/String; = "antispam"

.field public static final PrefixCode:Ljava/lang/String; = "***"

.field public static final SOURCE_ANYONE:I = 0x0

.field public static final SOURCE_CONTACT:I = 0x1

.field public static final SOURCE_STAR:I = 0x2

.field public static final SOURCE_VIP:I = 0x3

.field public static final SUPPRESS_MAKING_MMS_PREVIEW:Ljava/lang/String; = "supress_making_mms_preview"

.field private static final TAG:Ljava/lang/String; = "ExtraTelephony"

.field public static final THREADS_LIST_TYPE:Ljava/lang/String; = "threads_list_type"

.field public static final THREADS_LIST_TYPE_COMPOSITE:I = 0x0

.field public static final TYPE_INTERCEPT_ADDRESS:I = 0x2

.field public static final TYPE_INTERCEPT_NUMBER:I = 0x1

.field public static final TYPE_INTERCEPT_NUMBER_FRAGMENT:I = 0x3

.field public static final ZEN_MODE:Ljava/lang/String; = "zen_mode"

.field public static final ZEN_MODE_ALARMS:I = 0x3

.field public static final ZEN_MODE_IMPORTANT_INTERRUPTIONS:I = 0x1

.field public static final ZEN_MODE_MIUI_SILENT:I = 0x3

.field public static final ZEN_MODE_NO_INTERRUPTIONS:I = 0x2

.field public static final ZEN_MODE_OFF:I

.field private static mQuietListeners:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Lmiui/provider/ExtraTelephony$QuietModeEnableListener;",
            ">;"
        }
    .end annotation
.end field

.field private static mSilentModeObserver:Lmiui/provider/ExtraTelephony$SilentModeObserver;


# direct methods
.method static synthetic -get0()Ljava/util/Set;
    .locals 1

    sget-object v0, Lmiui/provider/ExtraTelephony;->mQuietListeners:Ljava/util/Set;

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 137
    const-string/jumbo v0, "\u94f6\u884c|\u4fe1\u7528\u5361|Bank|BANK|\u652f\u4ed8\u5b9d|\u4e2d\u56fd\u94f6\u8054"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lmiui/provider/ExtraTelephony;->BANK_CATEGORY_PATTERN:Ljava/util/regex/Pattern;

    .line 141
    const-string/jumbo v0, "((\\[[\\s\\S]*(\u94f6\u884c|\u4fe1\u7528\u5361|Bank|BANK|\u652f\u4ed8\u5b9d|\u4e2d\u56fd\u94f6\u8054)\\])|(\\\u3010[\\s\\S]*(\u94f6\u884c|\u4fe1\u7528\u5361|Bank|BANK|\u652f\u4ed8\u5b9d|\u4e2d\u56fd\u94f6\u8054)\\\u3011))$"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lmiui/provider/ExtraTelephony;->BANK_CATEGORY_SNIPPET_PATTERN:Ljava/util/regex/Pattern;

    .line 259
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    sput-object v0, Lmiui/provider/ExtraTelephony;->mQuietListeners:Ljava/util/Set;

    .line 44
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static addInterceptCallLog(Landroid/content/Context;Ljava/lang/String;IJIJI)V
    .locals 5
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "number"    # Ljava/lang/String;
    .param p2, "presentation"    # I
    .param p3, "date"    # J
    .param p5, "blockType"    # I
    .param p6, "duration"    # J
    .param p8, "subId"    # I

    .prologue
    const/4 v4, 0x1

    .line 1907
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 1908
    .local v1, "values":Landroid/content/ContentValues;
    const-string/jumbo v2, "number"

    invoke-static {p2, p1}, Lmiui/provider/ExtraTelephony;->convertPresentationToFilterNumber(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1909
    const-string/jumbo v2, "date"

    invoke-static {p3, p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 1910
    const-string/jumbo v2, "type"

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1911
    const-string/jumbo v2, "reason"

    invoke-static {p5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1912
    const-string/jumbo v2, "data1"

    invoke-static {p6, p7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 1913
    const-string/jumbo v2, "simid"

    invoke-static {p8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1914
    const-string/jumbo v2, "callType"

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1916
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    sget-object v3, Lmiui/provider/ExtraTelephony$FirewallLog;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v2, v3, v1}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1922
    :goto_0
    invoke-static {p0, p1, p5, p8}, Lmiui/provider/ExtraTelephony;->sendCallInterceptNotification(Landroid/content/Context;Ljava/lang/String;II)V

    .line 1905
    return-void

    .line 1917
    :catch_0
    move-exception v0

    .line 1918
    .local v0, "e":Ljava/lang/Exception;
    const-string/jumbo v2, "ExtraTelephony"

    const-string/jumbo v3, "Failed to add call intercept log into antispam !"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method private static appendNonSeparator(Ljava/lang/StringBuilder;CI)V
    .locals 2
    .param p0, "sb"    # Ljava/lang/StringBuilder;
    .param p1, "c"    # C
    .param p2, "pos"    # I

    .prologue
    .line 2146
    if-nez p2, :cond_0

    const/16 v1, 0x2b

    if-ne p1, v1, :cond_0

    return-void

    .line 2147
    :cond_0
    const/16 v1, 0xa

    invoke-static {p1, v1}, Ljava/lang/Character;->digit(CI)I

    move-result v0

    .line 2148
    .local v0, "digit":I
    const/4 v1, -0x1

    if-ne v0, v1, :cond_1

    invoke-static {p1}, Lmiui/telephony/PhoneNumberUtils;->isNonSeparator(C)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 2149
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 2145
    :cond_1
    return-void
.end method

.method public static checkKeyguardForQuiet(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 10
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "pkg"    # Ljava/lang/String;

    .prologue
    const/4 v9, 0x0

    const/4 v8, 0x1

    .line 2062
    sget-boolean v0, Landroid/provider/MiuiSettings$SilenceMode;->isSupported:Z

    if-eqz v0, :cond_0

    .line 2063
    invoke-static {p0}, Lmiui/provider/ExtraTelephony;->checkKeyguardForSilentMode(Landroid/content/Context;)Z

    move-result v0

    return v0

    .line 2066
    :cond_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-ge v0, v1, :cond_1

    .line 2067
    invoke-static {p0}, Landroid/provider/MiuiSettings$AntiSpam;->isQuietModeEnable(Landroid/content/Context;)Z

    move-result v0

    return v0

    .line 2069
    :cond_1
    invoke-static {p0}, Landroid/provider/MiuiSettings$AntiSpam;->isQuietModeEnable(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 2070
    const-string/jumbo v0, "com.android.mms"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 2071
    return v8

    .line 2072
    :cond_2
    const-string/jumbo v0, "com.android.incallui"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 2073
    const-string/jumbo v0, "com.android.server.telecom"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 2072
    if-eqz v0, :cond_4

    .line 2075
    :cond_3
    return v8

    .line 2077
    :cond_4
    const/4 v6, 0x0

    .line 2079
    .local v6, "c":Landroid/database/Cursor;
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 2080
    const-string/jumbo v1, "content://antispamCommon/zenmode"

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 2081
    const-string/jumbo v2, "4"

    .line 2080
    invoke-static {v1, v2}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 2081
    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    .line 2079
    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v6

    .line 2082
    .local v6, "c":Landroid/database/Cursor;
    if-eqz v6, :cond_6

    .line 2088
    if-eqz v6, :cond_5

    .line 2089
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 2083
    :cond_5
    return v9

    .line 2088
    :cond_6
    if-eqz v6, :cond_7

    .line 2089
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 2097
    .end local v6    # "c":Landroid/database/Cursor;
    :cond_7
    :goto_0
    return v8

    .line 2085
    .local v6, "c":Landroid/database/Cursor;
    :catch_0
    move-exception v7

    .line 2086
    .local v7, "e":Ljava/lang/Exception;
    :try_start_1
    invoke-virtual {v7}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 2087
    .end local v7    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v0

    throw v0

    .line 2094
    .end local v6    # "c":Landroid/database/Cursor;
    :cond_8
    return v9
.end method

.method public static checkKeyguardForSilentMode(Landroid/content/Context;)Z
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 2104
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-ge v0, v1, :cond_0

    .line 2105
    invoke-static {p0}, Landroid/provider/MiuiSettings$SilenceMode;->isSilenceModeEnable(Landroid/content/Context;)Z

    move-result v0

    return v0

    .line 2107
    :cond_0
    invoke-static {p0}, Landroid/provider/MiuiSettings$SilenceMode;->getZenMode(Landroid/content/Context;)I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_1

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static checkMarkedNumberIntercept(Landroid/content/Context;IILjava/lang/String;IZI)Z
    .locals 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "simId"    # I
    .param p2, "cid"    # I
    .param p3, "number"    # Ljava/lang/String;
    .param p4, "antispamProviderId"    # I
    .param p5, "isUserMarked"    # Z
    .param p6, "markedCount"    # I

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 1643
    sget-object v0, Landroid/provider/MiuiSettings$AntiSpam;->mapIdToState:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/HashMap;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1644
    sget-object v0, Landroid/provider/MiuiSettings$AntiSpam;->mapIdToState:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/HashMap;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {p0, v0, v3}, Landroid/provider/MiuiSettings$AntiSpam;->getMode(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v0

    if-nez v0, :cond_0

    .line 1645
    invoke-static {p0, p3}, Lmiui/provider/ExtraTelephony;->isRelatedNumber(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1654
    :cond_0
    return v2

    .line 1647
    :cond_1
    if-nez p5, :cond_2

    .line 1648
    const/16 v0, 0x18e

    if-ne p4, v0, :cond_3

    .line 1651
    :cond_2
    :goto_0
    return v3

    .line 1649
    :cond_3
    sget-object v0, Landroid/provider/MiuiSettings$AntiSpam;->mapIdToMarkTime:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/HashMap;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 1650
    const/16 v1, 0x32

    .line 1649
    invoke-static {p0, v0, v1}, Landroid/provider/MiuiSettings$AntiSpam;->getMode(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v0

    if-gt v0, p6, :cond_0

    goto :goto_0
.end method

.method private static convertPresentationToFilterNumber(ILjava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "presentation"    # I
    .param p1, "logNumber"    # Ljava/lang/String;

    .prologue
    .line 1972
    const/4 v0, 0x2

    if-ne p0, v0, :cond_1

    .line 1973
    const-string/jumbo p1, "-2"

    .line 1980
    :cond_0
    :goto_0
    return-object p1

    .line 1974
    :cond_1
    const/4 v0, 0x4

    if-ne p0, v0, :cond_2

    .line 1975
    const-string/jumbo p1, "-3"

    goto :goto_0

    .line 1976
    :cond_2
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 1977
    const/4 v0, 0x3

    if-ne p0, v0, :cond_0

    .line 1978
    :cond_3
    const-string/jumbo p1, "-1"

    goto :goto_0
.end method

.method public static getCallBlockType(Landroid/content/Context;Ljava/lang/String;IZZZ)I
    .locals 12
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "number"    # Ljava/lang/String;
    .param p2, "slotId"    # I
    .param p3, "isForwardCall"    # Z
    .param p4, "isRepeated"    # Z
    .param p5, "isRepeatedBlocked"    # Z

    .prologue
    .line 1702
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1703
    const/4 v0, 0x0

    return v0

    .line 1706
    :cond_0
    const/4 v7, 0x0

    .line 1708
    .local v7, "blockType":I
    new-instance v11, Ljava/util/concurrent/FutureTask;

    new-instance v0, Lmiui/provider/ExtraTelephony$1;

    move-object v1, p0

    move-object v2, p1

    move v3, p2

    move v4, p3

    move/from16 v5, p4

    move/from16 v6, p5

    invoke-direct/range {v0 .. v6}, Lmiui/provider/ExtraTelephony$1;-><init>(Landroid/content/Context;Ljava/lang/String;IZZZ)V

    invoke-direct {v11, v0}, Ljava/util/concurrent/FutureTask;-><init>(Ljava/util/concurrent/Callable;)V

    .line 1726
    .local v11, "task":Ljava/util/concurrent/FutureTask;, "Ljava/util/concurrent/FutureTask<Ljava/lang/Integer;>;"
    :try_start_0
    new-instance v0, Ljava/lang/Thread;

    invoke-direct {v0, v11}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 1727
    const-wide/16 v0, 0x1388

    sget-object v2, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v11, v0, v1, v2}, Ljava/util/concurrent/FutureTask;->get(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v7

    .line 1740
    :goto_0
    return v7

    .line 1733
    :catch_0
    move-exception v10

    .line 1735
    .local v10, "e":Ljava/util/concurrent/TimeoutException;
    invoke-virtual {v11}, Ljava/util/concurrent/FutureTask;->isDone()Z

    move-result v0

    if-nez v0, :cond_1

    .line 1736
    const/4 v0, 0x1

    invoke-virtual {v11, v0}, Ljava/util/concurrent/FutureTask;->cancel(Z)Z

    .line 1738
    :cond_1
    const-string/jumbo v0, "ExtraTelephony"

    const-string/jumbo v1, "TimeoutException when getCallBlockType"

    invoke-static {v0, v1, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 1731
    .end local v10    # "e":Ljava/util/concurrent/TimeoutException;
    :catch_1
    move-exception v9

    .line 1732
    .local v9, "e":Ljava/util/concurrent/ExecutionException;
    const-string/jumbo v0, "ExtraTelephony"

    const-string/jumbo v1, "ExecutionException when getCallBlockType"

    invoke-static {v0, v1, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 1729
    .end local v9    # "e":Ljava/util/concurrent/ExecutionException;
    :catch_2
    move-exception v8

    .line 1730
    .local v8, "e":Ljava/lang/InterruptedException;
    const-string/jumbo v0, "ExtraTelephony"

    const-string/jumbo v1, "InterruptedException when getCallBlockType"

    invoke-static {v0, v1, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public static getRealBlockType(I)I
    .locals 1
    .param p0, "blockType"    # I

    .prologue
    .line 1878
    and-int/lit8 v0, p0, 0x7f

    return v0
.end method

.method public static getSmsBlockType(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;I)I
    .locals 9
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "number"    # Ljava/lang/String;
    .param p2, "body"    # Ljava/lang/String;
    .param p3, "slotId"    # I

    .prologue
    .line 1755
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 1756
    const/4 v6, 0x0

    return v6

    .line 1759
    :cond_0
    const/4 v0, 0x0

    .line 1760
    .local v0, "blockType":I
    if-nez p2, :cond_1

    const-string/jumbo v4, ""

    .line 1762
    .local v4, "smsBody":Ljava/lang/String;
    :goto_0
    new-instance v5, Ljava/util/concurrent/FutureTask;

    new-instance v6, Lmiui/provider/ExtraTelephony$2;

    invoke-direct {v6, p0, p1, v4, p3}, Lmiui/provider/ExtraTelephony$2;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-direct {v5, v6}, Ljava/util/concurrent/FutureTask;-><init>(Ljava/util/concurrent/Callable;)V

    .line 1778
    .local v5, "task":Ljava/util/concurrent/FutureTask;, "Ljava/util/concurrent/FutureTask<Ljava/lang/Integer;>;"
    :try_start_0
    new-instance v6, Ljava/lang/Thread;

    invoke-direct {v6, v5}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v6}, Ljava/lang/Thread;->start()V

    .line 1779
    const-wide/16 v6, 0x7d0

    sget-object v8, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v5, v6, v7, v8}, Ljava/util/concurrent/FutureTask;->get(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 1792
    :goto_1
    return v0

    .line 1760
    .end local v4    # "smsBody":Ljava/lang/String;
    .end local v5    # "task":Ljava/util/concurrent/FutureTask;, "Ljava/util/concurrent/FutureTask<Ljava/lang/Integer;>;"
    :cond_1
    move-object v4, p2

    .restart local v4    # "smsBody":Ljava/lang/String;
    goto :goto_0

    .line 1785
    .restart local v5    # "task":Ljava/util/concurrent/FutureTask;, "Ljava/util/concurrent/FutureTask<Ljava/lang/Integer;>;"
    :catch_0
    move-exception v3

    .line 1787
    .local v3, "e":Ljava/util/concurrent/TimeoutException;
    invoke-virtual {v5}, Ljava/util/concurrent/FutureTask;->isDone()Z

    move-result v6

    if-nez v6, :cond_2

    .line 1788
    const/4 v6, 0x1

    invoke-virtual {v5, v6}, Ljava/util/concurrent/FutureTask;->cancel(Z)Z

    .line 1790
    :cond_2
    const-string/jumbo v6, "ExtraTelephony"

    const-string/jumbo v7, "TimeoutException when getSmsBlockType : "

    invoke-static {v6, v7, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    .line 1783
    .end local v3    # "e":Ljava/util/concurrent/TimeoutException;
    :catch_1
    move-exception v2

    .line 1784
    .local v2, "e":Ljava/util/concurrent/ExecutionException;
    const-string/jumbo v6, "ExtraTelephony"

    const-string/jumbo v7, "ExecutionException when getSmsBlockType : "

    invoke-static {v6, v7, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    .line 1781
    .end local v2    # "e":Ljava/util/concurrent/ExecutionException;
    :catch_2
    move-exception v1

    .line 1782
    .local v1, "e":Ljava/lang/InterruptedException;
    const-string/jumbo v6, "ExtraTelephony"

    const-string/jumbo v7, "InterruptedException when getSmsBlockType : "

    invoke-static {v6, v7, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1
.end method

.method public static getSmsURLScanResult(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I
    .locals 6
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "num"    # Ljava/lang/String;
    .param p2, "url"    # Ljava/lang/String;

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 1828
    invoke-static {p1}, Lmiui/telephony/PhoneNumberUtils$PhoneNumber;->parse(Ljava/lang/CharSequence;)Lmiui/telephony/PhoneNumberUtils$PhoneNumber;

    move-result-object v2

    invoke-virtual {v2, v3, v4}, Lmiui/telephony/PhoneNumberUtils$PhoneNumber;->getNormalizedNumber(ZZ)Ljava/lang/String;

    move-result-object p1

    .line 1832
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 1833
    .local v1, "resolver":Landroid/content/ContentResolver;
    sget-object v2, Lmiui/provider/ExtraTelephony$Judge;->URL_CONTENT_URI:Landroid/net/Uri;

    .line 1834
    new-instance v3, Landroid/content/ContentValues;

    invoke-direct {v3}, Landroid/content/ContentValues;-><init>()V

    .line 1835
    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/String;

    .line 1836
    const/4 v5, 0x0

    aput-object p1, v4, v5

    const/4 v5, 0x1

    aput-object p2, v4, v5

    .line 1834
    const/4 v5, 0x0

    .line 1833
    invoke-virtual {v1, v2, v3, v5, v4}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    return v2

    .line 1838
    .end local v1    # "resolver":Landroid/content/ContentResolver;
    :catch_0
    move-exception v0

    .line 1839
    .local v0, "e":Ljava/lang/Exception;
    const-string/jumbo v2, "ExtraTelephony"

    const-string/jumbo v3, "Exception when getSmsURLScanResult()"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1841
    const/4 v2, -0x1

    return v2
.end method

.method public static isAddressInBlack(Landroid/content/Context;Ljava/lang/String;II)Z
    .locals 12
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "rawNumber"    # Ljava/lang/String;
    .param p2, "state"    # I
    .param p3, "simId"    # I

    .prologue
    const/4 v2, 0x0

    const/4 v11, 0x1

    const/4 v10, 0x0

    .line 1207
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 1208
    sget-object v1, Lmiui/provider/ExtraTelephony$Phonelist;->CONTENT_URI:Landroid/net/Uri;

    .line 1209
    const-string/jumbo v3, "number = ? AND type = ? AND sim_id = ? AND sync_dirty <> ? "

    .line 1213
    const/4 v4, 0x4

    new-array v4, v4, [Ljava/lang/String;

    .line 1214
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "***"

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {p0, p1}, Lmiui/telephony/PhoneNumberUtils$PhoneNumber;->getLocationAreaCode(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v10

    .line 1215
    const-string/jumbo v5, "1"

    aput-object v5, v4, v11

    invoke-static {p3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    const/4 v9, 0x2

    aput-object v5, v4, v9

    .line 1216
    invoke-static {v11}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    const/4 v9, 0x3

    aput-object v5, v4, v9

    move-object v5, v2

    .line 1207
    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 1218
    .local v6, "c":Landroid/database/Cursor;
    if-eqz v6, :cond_2

    .line 1220
    :try_start_0
    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1221
    const-string/jumbo v0, "state"

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getInt(I)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v7

    .line 1222
    .local v7, "dbState":I
    if-eqz v7, :cond_0

    if-ne v7, p2, :cond_1

    .line 1229
    :cond_0
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 1223
    return v11

    .line 1229
    .end local v7    # "dbState":I
    :cond_1
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 1232
    :cond_2
    :goto_0
    return v10

    .line 1226
    :catch_0
    move-exception v8

    .line 1227
    .local v8, "e":Ljava/lang/Exception;
    :try_start_1
    const-string/jumbo v0, "ExtraTelephony"

    const-string/jumbo v1, "Cursor exception in isAddressInBlack(): "

    invoke-static {v0, v1, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1229
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 1228
    .end local v8    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v0

    .line 1229
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 1228
    throw v0
.end method

.method public static isCallTransferBlocked(Landroid/content/Context;I)Z
    .locals 10
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "slotId"    # I

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 1805
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    .line 1806
    sget-object v5, Lmiui/provider/ExtraTelephony$Judge;->CALL_TRANSFER_CONTENT_URI:Landroid/net/Uri;

    .line 1807
    new-instance v6, Landroid/content/ContentValues;

    invoke-direct {v6}, Landroid/content/ContentValues;-><init>()V

    .line 1808
    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/String;

    .line 1809
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v8

    const/4 v9, 0x0

    aput-object v8, v7, v9

    .line 1807
    const/4 v8, 0x0

    .line 1805
    invoke-virtual {v4, v5, v6, v8, v7}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 1811
    .local v1, "result":I
    if-ne v1, v2, :cond_0

    :goto_0
    return v2

    :cond_0
    move v2, v3

    goto :goto_0

    .line 1813
    .end local v1    # "result":I
    :catch_0
    move-exception v0

    .line 1814
    .local v0, "e":Ljava/lang/Exception;
    const-string/jumbo v2, "ExtraTelephony"

    const-string/jumbo v4, "Exception when isCallTransferBlocked()"

    invoke-static {v2, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1816
    return v3
.end method

.method public static isInBlacklist(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 10
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "number"    # Ljava/lang/String;

    .prologue
    const/4 v8, 0x1

    const/4 v9, 0x0

    .line 1049
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1050
    return v9

    .line 1052
    :cond_0
    const-string/jumbo v0, "*"

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {p1}, Lmiui/provider/ExtraTelephony;->normalizeNumber(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 1055
    :goto_0
    const/4 v6, 0x0

    .line 1057
    .local v6, "c":Landroid/database/Cursor;
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 1058
    sget-object v1, Lmiui/provider/ExtraTelephony$Phonelist;->CONTENT_URI:Landroid/net/Uri;

    .line 1059
    const-string/jumbo v3, "number = ? AND type = ? AND sync_dirty <> ? "

    .line 1062
    const/4 v2, 0x3

    new-array v4, v2, [Ljava/lang/String;

    const/4 v2, 0x0

    aput-object p1, v4, v2

    const-string/jumbo v2, "1"

    const/4 v5, 0x1

    aput-object v2, v4, v5

    .line 1063
    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    const/4 v5, 0x2

    aput-object v2, v4, v5

    .line 1058
    const/4 v2, 0x0

    .line 1063
    const/4 v5, 0x0

    .line 1057
    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 1065
    .local v6, "c":Landroid/database/Cursor;
    if-eqz v6, :cond_3

    .line 1066
    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-lez v0, :cond_2

    move v0, v8

    .line 1071
    :goto_1
    invoke-static {v6}, Lmiui/util/IOUtils;->closeQuietly(Ljava/io/Closeable;)V

    .line 1066
    return v0

    .line 1053
    .end local v6    # "c":Landroid/database/Cursor;
    :cond_1
    invoke-static {p1}, Lmiui/telephony/PhoneNumberUtils$PhoneNumber;->parse(Ljava/lang/CharSequence;)Lmiui/telephony/PhoneNumberUtils$PhoneNumber;

    move-result-object v0

    invoke-virtual {v0, v9, v8}, Lmiui/telephony/PhoneNumberUtils$PhoneNumber;->getNormalizedNumber(ZZ)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    .restart local v6    # "c":Landroid/database/Cursor;
    :cond_2
    move v0, v9

    .line 1066
    goto :goto_1

    .line 1071
    :cond_3
    invoke-static {v6}, Lmiui/util/IOUtils;->closeQuietly(Ljava/io/Closeable;)V

    .line 1073
    .end local v6    # "c":Landroid/database/Cursor;
    :goto_2
    return v9

    .line 1068
    :catch_0
    move-exception v7

    .line 1069
    .local v7, "e":Ljava/lang/Exception;
    :try_start_1
    const-string/jumbo v0, "ExtraTelephony"

    const-string/jumbo v1, "Cursor exception in isInBlacklist(): "

    invoke-static {v0, v1, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1071
    invoke-static {v6}, Lmiui/util/IOUtils;->closeQuietly(Ljava/io/Closeable;)V

    goto :goto_2

    .line 1070
    .end local v7    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v0

    .line 1071
    invoke-static {v6}, Lmiui/util/IOUtils;->closeQuietly(Ljava/io/Closeable;)V

    .line 1070
    throw v0
.end method

.method public static isInBlacklist(Landroid/content/Context;Ljava/lang/String;I)Z
    .locals 11
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "number"    # Ljava/lang/String;
    .param p2, "simId"    # I

    .prologue
    const/4 v2, 0x0

    const/4 v8, 0x1

    const/4 v9, 0x0

    .line 1085
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1086
    return v9

    .line 1088
    :cond_0
    const-string/jumbo v0, "*"

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {p1}, Lmiui/provider/ExtraTelephony;->normalizeNumber(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 1091
    :goto_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 1092
    sget-object v1, Lmiui/provider/ExtraTelephony$Phonelist;->CONTENT_URI:Landroid/net/Uri;

    .line 1093
    const-string/jumbo v3, "number = ? AND type = ? AND sim_id = ? AND sync_dirty <> ? "

    .line 1097
    const/4 v4, 0x4

    new-array v4, v4, [Ljava/lang/String;

    aput-object p1, v4, v9

    const-string/jumbo v5, "1"

    aput-object v5, v4, v8

    .line 1098
    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    const/4 v10, 0x2

    aput-object v5, v4, v10

    .line 1099
    invoke-static {v8}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    const/4 v10, 0x3

    aput-object v5, v4, v10

    move-object v5, v2

    .line 1091
    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 1101
    .local v6, "c":Landroid/database/Cursor;
    if-eqz v6, :cond_3

    .line 1103
    :try_start_0
    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-lez v0, :cond_2

    move v0, v8

    .line 1107
    :goto_1
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 1103
    return v0

    .line 1089
    .end local v6    # "c":Landroid/database/Cursor;
    :cond_1
    invoke-static {p1}, Lmiui/telephony/PhoneNumberUtils$PhoneNumber;->parse(Ljava/lang/CharSequence;)Lmiui/telephony/PhoneNumberUtils$PhoneNumber;

    move-result-object v0

    invoke-virtual {v0, v9, v8}, Lmiui/telephony/PhoneNumberUtils$PhoneNumber;->getNormalizedNumber(ZZ)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    .restart local v6    # "c":Landroid/database/Cursor;
    :cond_2
    move v0, v9

    .line 1103
    goto :goto_1

    .line 1104
    :catch_0
    move-exception v7

    .line 1105
    .local v7, "e":Ljava/lang/Exception;
    :try_start_1
    const-string/jumbo v0, "ExtraTelephony"

    const-string/jumbo v1, "Cursor exception in isInBlacklist(): "

    invoke-static {v0, v1, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1107
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 1110
    .end local v7    # "e":Ljava/lang/Exception;
    :cond_3
    return v9

    .line 1106
    :catchall_0
    move-exception v0

    .line 1107
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 1106
    throw v0
.end method

.method public static isInBlacklist(Landroid/content/Context;Ljava/lang/String;II)Z
    .locals 12
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "number"    # Ljava/lang/String;
    .param p2, "state"    # I
    .param p3, "simId"    # I

    .prologue
    const/4 v2, 0x0

    const/4 v11, 0x1

    const/4 v10, 0x0

    .line 1122
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1123
    return v10

    .line 1126
    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 1127
    sget-object v1, Lmiui/provider/ExtraTelephony$Phonelist;->CONTENT_URI:Landroid/net/Uri;

    .line 1128
    const-string/jumbo v3, "number = ? AND type = ? AND sim_id = ? AND sync_dirty <> ? "

    .line 1132
    const/4 v4, 0x4

    new-array v4, v4, [Ljava/lang/String;

    .line 1133
    aput-object p1, v4, v10

    const-string/jumbo v5, "1"

    aput-object v5, v4, v11

    invoke-static {p3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    const/4 v9, 0x2

    aput-object v5, v4, v9

    .line 1134
    invoke-static {v11}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    const/4 v9, 0x3

    aput-object v5, v4, v9

    move-object v5, v2

    .line 1126
    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 1136
    .local v6, "c":Landroid/database/Cursor;
    if-eqz v6, :cond_3

    .line 1138
    :try_start_0
    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1139
    const-string/jumbo v0, "state"

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getInt(I)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v7

    .line 1140
    .local v7, "dbState":I
    if-eqz v7, :cond_1

    if-ne v7, p2, :cond_2

    .line 1147
    :cond_1
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 1141
    return v11

    .line 1147
    .end local v7    # "dbState":I
    :cond_2
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 1150
    :cond_3
    :goto_0
    return v10

    .line 1144
    :catch_0
    move-exception v8

    .line 1145
    .local v8, "e":Ljava/lang/Exception;
    :try_start_1
    const-string/jumbo v0, "ExtraTelephony"

    const-string/jumbo v1, "Cursor exception in isInBlacklist(): "

    invoke-static {v0, v1, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1147
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 1146
    .end local v8    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v0

    .line 1147
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 1146
    throw v0
.end method

.method public static isInCloudPhoneList(Landroid/content/Context;Ljava/lang/String;ILjava/lang/String;)Z
    .locals 11
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "number"    # Ljava/lang/String;
    .param p2, "state"    # I
    .param p3, "type"    # Ljava/lang/String;

    .prologue
    .line 1462
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1463
    const/4 v0, 0x0

    return v0

    .line 1467
    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 1468
    sget-object v1, Lmiui/provider/ExtraTelephony$Phonelist;->CONTENT_URI:Landroid/net/Uri;

    .line 1469
    const-string/jumbo v3, "number = ? AND type = ? "

    .line 1471
    const/4 v2, 0x2

    new-array v4, v2, [Ljava/lang/String;

    const/4 v2, 0x0

    aput-object p1, v4, v2

    const/4 v2, 0x1

    aput-object p3, v4, v2

    .line 1468
    const/4 v2, 0x0

    .line 1471
    const/4 v5, 0x0

    .line 1467
    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 1473
    .local v6, "cursor":Landroid/database/Cursor;
    if-eqz v6, :cond_3

    .line 1475
    :try_start_0
    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1476
    const-string/jumbo v0, "state"

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getInt(I)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v7

    .line 1477
    .local v7, "dbState":I
    if-eqz v7, :cond_1

    if-ne v7, p2, :cond_2

    .line 1478
    :cond_1
    const/4 v0, 0x1

    .line 1484
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 1478
    return v0

    .line 1484
    .end local v7    # "dbState":I
    :cond_2
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 1489
    :cond_3
    :goto_0
    const-string/jumbo v10, ""

    .line 1490
    .local v10, "tmp":Ljava/lang/String;
    const/4 v9, 0x0

    .local v9, "i":I
    :goto_1
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-ge v9, v0, :cond_7

    .line 1491
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1, v9}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    .line 1492
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 1493
    sget-object v1, Lmiui/provider/ExtraTelephony$Phonelist;->CONTENT_URI:Landroid/net/Uri;

    .line 1494
    const-string/jumbo v3, "number = ? AND type = ? "

    .line 1496
    const/4 v2, 0x2

    new-array v4, v2, [Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v5, "*"

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v5, 0x0

    aput-object v2, v4, v5

    const/4 v2, 0x1

    aput-object p3, v4, v2

    .line 1493
    const/4 v2, 0x0

    .line 1496
    const/4 v5, 0x0

    .line 1492
    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 1498
    if-eqz v6, :cond_6

    .line 1500
    :try_start_1
    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 1501
    const-string/jumbo v0, "state"

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getInt(I)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result v7

    .line 1502
    .restart local v7    # "dbState":I
    if-eqz v7, :cond_4

    if-ne v7, p2, :cond_5

    .line 1503
    :cond_4
    const/4 v0, 0x1

    .line 1509
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 1503
    return v0

    .line 1481
    .end local v7    # "dbState":I
    .end local v9    # "i":I
    .end local v10    # "tmp":Ljava/lang/String;
    :catch_0
    move-exception v8

    .line 1482
    .local v8, "e":Ljava/lang/Exception;
    :try_start_2
    const-string/jumbo v0, "ExtraTelephony"

    const-string/jumbo v1, "Cursor exception when check complete cloudPhoneList: "

    invoke-static {v0, v1, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 1484
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 1483
    .end local v8    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v0

    .line 1484
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 1483
    throw v0

    .line 1509
    .restart local v9    # "i":I
    .restart local v10    # "tmp":Ljava/lang/String;
    :cond_5
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 1490
    :cond_6
    :goto_2
    add-int/lit8 v9, v9, 0x1

    goto :goto_1

    .line 1506
    :catch_1
    move-exception v8

    .line 1507
    .restart local v8    # "e":Ljava/lang/Exception;
    :try_start_3
    const-string/jumbo v0, "ExtraTelephony"

    const-string/jumbo v1, "Cursor exception when check prefix cloudPhoneList: "

    invoke-static {v0, v1, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 1509
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_2

    .line 1508
    .end local v8    # "e":Ljava/lang/Exception;
    :catchall_1
    move-exception v0

    .line 1509
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 1508
    throw v0

    .line 1513
    :cond_7
    const/4 v0, 0x0

    return v0
.end method

.method public static isInHidingWhite(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 11
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "number"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    const/4 v8, 0x1

    const/4 v9, 0x0

    .line 1562
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1563
    return v9

    .line 1566
    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 1567
    sget-object v1, Lmiui/provider/ExtraTelephony$Phonelist;->CONTENT_URI:Landroid/net/Uri;

    .line 1568
    const-string/jumbo v3, "number = ? AND type = ? AND isdisplay = ? AND sync_dirty <> ? "

    .line 1572
    const/4 v4, 0x4

    new-array v4, v4, [Ljava/lang/String;

    .line 1573
    aput-object p1, v4, v9

    const-string/jumbo v5, "2"

    aput-object v5, v4, v8

    const-string/jumbo v5, "0"

    const/4 v10, 0x2

    aput-object v5, v4, v10

    .line 1574
    invoke-static {v8}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    const/4 v10, 0x3

    aput-object v5, v4, v10

    move-object v5, v2

    .line 1566
    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 1576
    .local v6, "c":Landroid/database/Cursor;
    if-eqz v6, :cond_2

    .line 1578
    :try_start_0
    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-lez v0, :cond_1

    move v0, v8

    .line 1582
    :goto_0
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 1578
    return v0

    :cond_1
    move v0, v9

    goto :goto_0

    .line 1579
    :catch_0
    move-exception v7

    .line 1580
    .local v7, "e":Ljava/lang/Exception;
    :try_start_1
    const-string/jumbo v0, "ExtraTelephony"

    const-string/jumbo v1, "Cursor exception in isInHidingWhite()"

    invoke-static {v0, v1, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1582
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 1585
    .end local v7    # "e":Ljava/lang/Exception;
    :cond_2
    return v9

    .line 1581
    :catchall_0
    move-exception v0

    .line 1582
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 1581
    throw v0
.end method

.method public static isInKeywords(Landroid/content/Context;Ljava/lang/String;II)Z
    .locals 11
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "body"    # Ljava/lang/String;
    .param p2, "type"    # I
    .param p3, "simId"    # I

    .prologue
    const/4 v10, 0x1

    const/4 v9, 0x0

    const/4 v2, 0x0

    .line 1527
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 1528
    sget-object v1, Lmiui/provider/ExtraTelephony$Keyword;->CONTENT_URI:Landroid/net/Uri;

    .line 1529
    const-string/jumbo v3, "type = ? AND sim_id = ? "

    .line 1531
    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/String;

    .line 1532
    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v9

    .line 1533
    invoke-static {p3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v10

    move-object v5, v2

    .line 1527
    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 1535
    .local v6, "cursor":Landroid/database/Cursor;
    if-eqz v6, :cond_2

    .line 1537
    :cond_0
    :try_start_0
    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1538
    const-string/jumbo v0, "data"

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v8

    .line 1539
    .local v8, "keyword":Ljava/lang/String;
    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1540
    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v8}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    .line 1539
    if-eqz v0, :cond_0

    .line 1547
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 1541
    return v10

    .line 1547
    .end local v8    # "keyword":Ljava/lang/String;
    :cond_1
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 1550
    :cond_2
    :goto_0
    return v9

    .line 1544
    :catch_0
    move-exception v7

    .line 1545
    .local v7, "e":Ljava/lang/Exception;
    :try_start_1
    const-string/jumbo v0, "ExtraTelephony"

    const-string/jumbo v1, "Cursor exception in shouldFilter()"

    invoke-static {v0, v1, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1547
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 1546
    .end local v7    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v0

    .line 1547
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 1546
    throw v0
.end method

.method public static isInSmsWhiteList(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 11
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "number"    # Ljava/lang/String;

    .prologue
    const/4 v10, 0x1

    const/4 v4, 0x0

    const/4 v9, 0x0

    .line 1597
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1598
    return v9

    .line 1601
    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lmiui/yellowpage/YellowPageContract$AntispamWhiteList;->CONTNET_URI:Landroid/net/Uri;

    .line 1602
    new-array v2, v10, [Ljava/lang/String;

    const-string/jumbo v3, "number"

    aput-object v3, v2, v9

    .line 1603
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "number LIKE \'"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v5, "%\'"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object v5, v4

    .line 1601
    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 1605
    .local v7, "c":Landroid/database/Cursor;
    if-eqz v7, :cond_4

    .line 1607
    :cond_1
    :try_start_0
    invoke-interface {v7}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1608
    const/4 v0, 0x0

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 1615
    .local v6, "antispamNumber":Ljava/lang/String;
    invoke-static {p1, v6}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 1616
    const-string/jumbo v0, "106"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    .line 1615
    if-eqz v0, :cond_1

    .line 1623
    :cond_2
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 1617
    return v10

    .line 1623
    .end local v6    # "antispamNumber":Ljava/lang/String;
    :cond_3
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 1626
    :cond_4
    :goto_0
    return v9

    .line 1620
    :catch_0
    move-exception v8

    .line 1621
    .local v8, "e":Ljava/lang/Exception;
    :try_start_1
    invoke-virtual {v8}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1623
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 1622
    .end local v8    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v0

    .line 1623
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 1622
    throw v0
.end method

.method public static isInVipList(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 11
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "number"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    const/4 v8, 0x1

    const/4 v9, 0x0

    .line 1425
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1426
    return v9

    .line 1429
    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 1430
    sget-object v1, Lmiui/provider/ExtraTelephony$Phonelist;->CONTENT_URI:Landroid/net/Uri;

    .line 1431
    const-string/jumbo v3, "number = ? AND type = ? AND sync_dirty <> ? "

    .line 1434
    const/4 v4, 0x3

    new-array v4, v4, [Ljava/lang/String;

    .line 1435
    aput-object p1, v4, v9

    const-string/jumbo v5, "3"

    aput-object v5, v4, v8

    .line 1436
    invoke-static {v8}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    const/4 v10, 0x2

    aput-object v5, v4, v10

    move-object v5, v2

    .line 1429
    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 1438
    .local v6, "cursor":Landroid/database/Cursor;
    if-eqz v6, :cond_2

    .line 1440
    :try_start_0
    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-lez v0, :cond_1

    move v0, v8

    .line 1444
    :goto_0
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 1440
    return v0

    :cond_1
    move v0, v9

    goto :goto_0

    .line 1441
    :catch_0
    move-exception v7

    .line 1442
    .local v7, "e":Ljava/lang/Exception;
    :try_start_1
    const-string/jumbo v0, "ExtraTelephony"

    const-string/jumbo v1, "Cursor exception in isInVipList(): "

    invoke-static {v0, v1, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1444
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 1447
    .end local v7    # "e":Ljava/lang/Exception;
    :cond_2
    return v9

    .line 1443
    :catchall_0
    move-exception v0

    .line 1444
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 1443
    throw v0
.end method

.method public static isInWhiteList(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 11
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "number"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    const/4 v8, 0x1

    const/4 v9, 0x0

    .line 1243
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1244
    return v9

    .line 1246
    :cond_0
    const-string/jumbo v0, "*"

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {p1}, Lmiui/provider/ExtraTelephony;->normalizeNumber(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 1249
    :goto_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 1250
    sget-object v1, Lmiui/provider/ExtraTelephony$Phonelist;->CONTENT_URI:Landroid/net/Uri;

    .line 1251
    const-string/jumbo v3, "number = ? AND type = ? AND isdisplay = ? AND sync_dirty <> ? "

    .line 1255
    const/4 v4, 0x4

    new-array v4, v4, [Ljava/lang/String;

    .line 1256
    aput-object p1, v4, v9

    const-string/jumbo v5, "2"

    aput-object v5, v4, v8

    const-string/jumbo v5, "1"

    const/4 v10, 0x2

    aput-object v5, v4, v10

    .line 1257
    invoke-static {v8}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    const/4 v10, 0x3

    aput-object v5, v4, v10

    move-object v5, v2

    .line 1249
    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 1259
    .local v6, "c":Landroid/database/Cursor;
    if-eqz v6, :cond_3

    .line 1261
    :try_start_0
    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-lez v0, :cond_2

    move v0, v8

    .line 1265
    :goto_1
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 1261
    return v0

    .line 1247
    .end local v6    # "c":Landroid/database/Cursor;
    :cond_1
    invoke-static {p1}, Lmiui/telephony/PhoneNumberUtils$PhoneNumber;->parse(Ljava/lang/CharSequence;)Lmiui/telephony/PhoneNumberUtils$PhoneNumber;

    move-result-object v0

    invoke-virtual {v0, v9, v8}, Lmiui/telephony/PhoneNumberUtils$PhoneNumber;->getNormalizedNumber(ZZ)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    .restart local v6    # "c":Landroid/database/Cursor;
    :cond_2
    move v0, v9

    .line 1261
    goto :goto_1

    .line 1262
    :catch_0
    move-exception v7

    .line 1263
    .local v7, "e":Ljava/lang/Exception;
    :try_start_1
    const-string/jumbo v0, "ExtraTelephony"

    const-string/jumbo v1, "Cursor exception in isInWhiteList(): "

    invoke-static {v0, v1, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1265
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 1268
    .end local v7    # "e":Ljava/lang/Exception;
    :cond_3
    return v9

    .line 1264
    :catchall_0
    move-exception v0

    .line 1265
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 1264
    throw v0
.end method

.method public static isInWhiteList(Landroid/content/Context;Ljava/lang/String;I)Z
    .locals 11
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "number"    # Ljava/lang/String;
    .param p2, "simId"    # I

    .prologue
    const/4 v2, 0x0

    const/4 v8, 0x1

    const/4 v9, 0x0

    .line 1280
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1281
    return v9

    .line 1283
    :cond_0
    const-string/jumbo v0, "*"

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {p1}, Lmiui/provider/ExtraTelephony;->normalizeNumber(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 1286
    :goto_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 1287
    sget-object v1, Lmiui/provider/ExtraTelephony$Phonelist;->CONTENT_URI:Landroid/net/Uri;

    .line 1288
    const-string/jumbo v3, "number = ? AND type = ? AND isdisplay = ? AND sim_id = ? AND sync_dirty <> ? "

    .line 1293
    const/4 v4, 0x5

    new-array v4, v4, [Ljava/lang/String;

    .line 1294
    aput-object p1, v4, v9

    const-string/jumbo v5, "2"

    aput-object v5, v4, v8

    .line 1295
    const-string/jumbo v5, "1"

    const/4 v10, 0x2

    aput-object v5, v4, v10

    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    const/4 v10, 0x3

    aput-object v5, v4, v10

    .line 1296
    invoke-static {v8}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    const/4 v10, 0x4

    aput-object v5, v4, v10

    move-object v5, v2

    .line 1286
    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 1298
    .local v6, "c":Landroid/database/Cursor;
    if-eqz v6, :cond_3

    .line 1300
    :try_start_0
    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-lez v0, :cond_2

    move v0, v8

    .line 1304
    :goto_1
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 1300
    return v0

    .line 1284
    .end local v6    # "c":Landroid/database/Cursor;
    :cond_1
    invoke-static {p1}, Lmiui/telephony/PhoneNumberUtils$PhoneNumber;->parse(Ljava/lang/CharSequence;)Lmiui/telephony/PhoneNumberUtils$PhoneNumber;

    move-result-object v0

    invoke-virtual {v0, v9, v8}, Lmiui/telephony/PhoneNumberUtils$PhoneNumber;->getNormalizedNumber(ZZ)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    .restart local v6    # "c":Landroid/database/Cursor;
    :cond_2
    move v0, v9

    .line 1300
    goto :goto_1

    .line 1301
    :catch_0
    move-exception v7

    .line 1302
    .local v7, "e":Ljava/lang/Exception;
    :try_start_1
    const-string/jumbo v0, "ExtraTelephony"

    const-string/jumbo v1, "Cursor exception in isInWhiteList(): "

    invoke-static {v0, v1, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1304
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 1307
    .end local v7    # "e":Ljava/lang/Exception;
    :cond_3
    return v9

    .line 1303
    :catchall_0
    move-exception v0

    .line 1304
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 1303
    throw v0
.end method

.method public static isInWhiteList(Landroid/content/Context;Ljava/lang/String;II)Z
    .locals 12
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "rawNumber"    # Ljava/lang/String;
    .param p2, "state"    # I
    .param p3, "simId"    # I

    .prologue
    .line 1321
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1322
    const/4 v0, 0x0

    return v0

    .line 1326
    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 1327
    sget-object v1, Lmiui/provider/ExtraTelephony$Phonelist;->CONTENT_URI:Landroid/net/Uri;

    .line 1328
    const-string/jumbo v3, "number = ? AND type = ? AND isdisplay = ? AND sim_id = ? AND sync_dirty <> ? "

    .line 1333
    const/4 v2, 0x5

    new-array v4, v2, [Ljava/lang/String;

    .line 1334
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "***"

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {p0, p1}, Lmiui/telephony/PhoneNumberUtils$PhoneNumber;->getLocationAreaCode(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v5, 0x0

    aput-object v2, v4, v5

    .line 1335
    const-string/jumbo v2, "2"

    const/4 v5, 0x1

    aput-object v2, v4, v5

    const-string/jumbo v2, "1"

    const/4 v5, 0x2

    aput-object v2, v4, v5

    invoke-static {p3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    const/4 v5, 0x3

    aput-object v2, v4, v5

    .line 1336
    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    const/4 v5, 0x4

    aput-object v2, v4, v5

    .line 1327
    const/4 v2, 0x0

    .line 1336
    const/4 v5, 0x0

    .line 1326
    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 1338
    .local v6, "cursor":Landroid/database/Cursor;
    if-eqz v6, :cond_3

    .line 1340
    :try_start_0
    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1341
    const-string/jumbo v0, "state"

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getInt(I)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v7

    .line 1342
    .local v7, "dbState":I
    if-eqz v7, :cond_1

    if-ne v7, p2, :cond_2

    .line 1343
    :cond_1
    const/4 v0, 0x1

    .line 1349
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 1343
    return v0

    .line 1349
    .end local v7    # "dbState":I
    :cond_2
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 1353
    :cond_3
    :goto_0
    invoke-static {p1}, Lmiui/telephony/PhoneNumberUtils$PhoneNumber;->parse(Ljava/lang/CharSequence;)Lmiui/telephony/PhoneNumberUtils$PhoneNumber;

    move-result-object v0

    .line 1354
    const/4 v1, 0x0

    const/4 v2, 0x1

    .line 1353
    invoke-virtual {v0, v1, v2}, Lmiui/telephony/PhoneNumberUtils$PhoneNumber;->getNormalizedNumber(ZZ)Ljava/lang/String;

    move-result-object v10

    .line 1356
    .local v10, "normalizedNum":Ljava/lang/String;
    const-string/jumbo v11, ""

    .line 1357
    .local v11, "tmp":Ljava/lang/String;
    const/4 v9, 0x0

    .local v9, "i":I
    :goto_1
    invoke-virtual {v10}, Ljava/lang/String;->length()I

    move-result v0

    if-ge v9, v0, :cond_7

    .line 1358
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v10, v9}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    .line 1359
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 1360
    sget-object v1, Lmiui/provider/ExtraTelephony$Phonelist;->CONTENT_URI:Landroid/net/Uri;

    .line 1361
    const-string/jumbo v3, "number = ? AND type = ? AND isdisplay = ? AND sim_id = ? AND sync_dirty <> ? "

    .line 1366
    const/4 v2, 0x5

    new-array v4, v2, [Ljava/lang/String;

    .line 1367
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v5, "*"

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v5, 0x0

    aput-object v2, v4, v5

    const-string/jumbo v2, "2"

    const/4 v5, 0x1

    aput-object v2, v4, v5

    const-string/jumbo v2, "1"

    const/4 v5, 0x2

    aput-object v2, v4, v5

    invoke-static {p3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    const/4 v5, 0x3

    aput-object v2, v4, v5

    .line 1368
    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    const/4 v5, 0x4

    aput-object v2, v4, v5

    .line 1360
    const/4 v2, 0x0

    .line 1368
    const/4 v5, 0x0

    .line 1359
    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 1370
    if-eqz v6, :cond_6

    .line 1372
    :try_start_1
    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 1373
    const-string/jumbo v0, "state"

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getInt(I)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result v7

    .line 1374
    .restart local v7    # "dbState":I
    if-eqz v7, :cond_4

    if-ne v7, p2, :cond_5

    .line 1375
    :cond_4
    const/4 v0, 0x1

    .line 1381
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 1375
    return v0

    .line 1346
    .end local v7    # "dbState":I
    .end local v9    # "i":I
    .end local v10    # "normalizedNum":Ljava/lang/String;
    .end local v11    # "tmp":Ljava/lang/String;
    :catch_0
    move-exception v8

    .line 1347
    .local v8, "e":Ljava/lang/Exception;
    :try_start_2
    const-string/jumbo v0, "ExtraTelephony"

    const-string/jumbo v1, "Cursor exception when area check in whiteList: "

    invoke-static {v0, v1, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 1349
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto/16 :goto_0

    .line 1348
    .end local v8    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v0

    .line 1349
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 1348
    throw v0

    .line 1381
    .restart local v9    # "i":I
    .restart local v10    # "normalizedNum":Ljava/lang/String;
    .restart local v11    # "tmp":Ljava/lang/String;
    :cond_5
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 1357
    :cond_6
    :goto_2
    add-int/lit8 v9, v9, 0x1

    goto/16 :goto_1

    .line 1378
    :catch_1
    move-exception v8

    .line 1379
    .restart local v8    # "e":Ljava/lang/Exception;
    :try_start_3
    const-string/jumbo v0, "ExtraTelephony"

    const-string/jumbo v1, "Cursor exception when prefix check in whiteList: "

    invoke-static {v0, v1, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 1381
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_2

    .line 1380
    .end local v8    # "e":Ljava/lang/Exception;
    :catchall_1
    move-exception v0

    .line 1381
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 1380
    throw v0

    .line 1387
    :cond_7
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 1388
    sget-object v1, Lmiui/provider/ExtraTelephony$Phonelist;->CONTENT_URI:Landroid/net/Uri;

    .line 1389
    const-string/jumbo v3, "number= ? AND type= ? AND isdisplay = ? AND sim_id = ? AND sync_dirty <> ? "

    .line 1394
    const/4 v2, 0x5

    new-array v4, v2, [Ljava/lang/String;

    .line 1395
    const/4 v2, 0x0

    aput-object v10, v4, v2

    const-string/jumbo v2, "2"

    const/4 v5, 0x1

    aput-object v2, v4, v5

    const-string/jumbo v2, "1"

    const/4 v5, 0x2

    aput-object v2, v4, v5

    invoke-static {p3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    const/4 v5, 0x3

    aput-object v2, v4, v5

    .line 1396
    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    const/4 v5, 0x4

    aput-object v2, v4, v5

    .line 1388
    const/4 v2, 0x0

    .line 1396
    const/4 v5, 0x0

    .line 1387
    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 1398
    if-eqz v6, :cond_a

    .line 1400
    :try_start_4
    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 1401
    const-string/jumbo v0, "state"

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getInt(I)I
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    move-result v7

    .line 1402
    .restart local v7    # "dbState":I
    if-eqz v7, :cond_8

    if-ne v7, p2, :cond_9

    .line 1403
    :cond_8
    const/4 v0, 0x1

    .line 1409
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 1403
    return v0

    .line 1409
    .end local v7    # "dbState":I
    :cond_9
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 1413
    :cond_a
    :goto_3
    const/4 v0, 0x0

    return v0

    .line 1406
    :catch_2
    move-exception v8

    .line 1407
    .restart local v8    # "e":Ljava/lang/Exception;
    :try_start_5
    const-string/jumbo v0, "ExtraTelephony"

    const-string/jumbo v1, "Cursor exception when complete check in whiteList: "

    invoke-static {v0, v1, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    .line 1409
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_3

    .line 1408
    .end local v8    # "e":Ljava/lang/Exception;
    :catchall_2
    move-exception v0

    .line 1409
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 1408
    throw v0
.end method

.method public static isPrefixInBlack(Landroid/content/Context;Ljava/lang/String;II)Z
    .locals 11
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "number"    # Ljava/lang/String;
    .param p2, "state"    # I
    .param p3, "simId"    # I

    .prologue
    .line 1162
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1163
    const/4 v0, 0x0

    return v0

    .line 1166
    :cond_0
    const-string/jumbo v10, ""

    .line 1167
    .local v10, "tmp":Ljava/lang/String;
    const/4 v9, 0x0

    .local v9, "i":I
    :goto_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-ge v9, v0, :cond_4

    .line 1168
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1, v9}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    .line 1169
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 1170
    sget-object v1, Lmiui/provider/ExtraTelephony$Phonelist;->CONTENT_URI:Landroid/net/Uri;

    .line 1171
    const-string/jumbo v3, "number = ? AND type = ? AND sim_id = ? AND sync_dirty <> ? "

    .line 1175
    const/4 v2, 0x4

    new-array v4, v2, [Ljava/lang/String;

    .line 1176
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v5, "*"

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v5, 0x0

    aput-object v2, v4, v5

    const-string/jumbo v2, "1"

    const/4 v5, 0x1

    aput-object v2, v4, v5

    invoke-static {p3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    const/4 v5, 0x2

    aput-object v2, v4, v5

    .line 1177
    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    const/4 v5, 0x3

    aput-object v2, v4, v5

    .line 1170
    const/4 v2, 0x0

    .line 1177
    const/4 v5, 0x0

    .line 1169
    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 1179
    .local v6, "c":Landroid/database/Cursor;
    if-eqz v6, :cond_3

    .line 1181
    :try_start_0
    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1182
    const-string/jumbo v0, "state"

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getInt(I)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v7

    .line 1183
    .local v7, "dbState":I
    if-eqz v7, :cond_1

    if-ne v7, p2, :cond_2

    .line 1184
    :cond_1
    const/4 v0, 0x1

    .line 1190
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 1184
    return v0

    .line 1190
    .end local v7    # "dbState":I
    :cond_2
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 1167
    :cond_3
    :goto_1
    add-int/lit8 v9, v9, 0x1

    goto :goto_0

    .line 1187
    :catch_0
    move-exception v8

    .line 1188
    .local v8, "e":Ljava/lang/Exception;
    :try_start_1
    const-string/jumbo v0, "ExtraTelephony"

    const-string/jumbo v1, "Cursor exception in isPrefixInBlack(): "

    invoke-static {v0, v1, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1190
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_1

    .line 1189
    .end local v8    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v0

    .line 1190
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 1189
    throw v0

    .line 1194
    .end local v6    # "c":Landroid/database/Cursor;
    :cond_4
    const/4 v0, 0x0

    return v0
.end method

.method private static isRelatedNumber(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 11
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "number"    # Ljava/lang/String;

    .prologue
    const/4 v10, 0x2

    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 1666
    const/4 v6, 0x0

    .line 1668
    .local v6, "c":Landroid/database/Cursor;
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 1669
    sget-object v1, Landroid/provider/CallLog$Calls;->CONTENT_URI:Landroid/net/Uri;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const-string/jumbo v3, "type"

    const/4 v4, 0x0

    aput-object v3, v2, v4

    .line 1670
    const-string/jumbo v3, "number = ? OR normalized_number = ? "

    .line 1672
    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    aput-object p1, v4, v5

    const/4 v5, 0x1

    aput-object p1, v4, v5

    const-string/jumbo v5, "date DESC"

    .line 1668
    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 1674
    .local v6, "c":Landroid/database/Cursor;
    if-eqz v6, :cond_1

    .line 1675
    :cond_0
    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1676
    const/4 v0, 0x0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getInt(I)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-ne v0, v10, :cond_0

    .line 1684
    invoke-static {v6}, Lmiui/util/IOUtils;->closeQuietly(Ljava/io/Closeable;)V

    .line 1677
    return v9

    .line 1684
    :cond_1
    invoke-static {v6}, Lmiui/util/IOUtils;->closeQuietly(Ljava/io/Closeable;)V

    .line 1686
    .end local v6    # "c":Landroid/database/Cursor;
    :goto_0
    return v8

    .line 1681
    :catch_0
    move-exception v7

    .line 1682
    .local v7, "e":Ljava/lang/Exception;
    :try_start_1
    const-string/jumbo v0, "ExtraTelephony"

    const-string/jumbo v1, "Cursor exception in isRelatedNumber(): "

    invoke-static {v0, v1, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1684
    invoke-static {v6}, Lmiui/util/IOUtils;->closeQuietly(Ljava/io/Closeable;)V

    goto :goto_0

    .line 1683
    .end local v7    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v0

    .line 1684
    invoke-static {v6}, Lmiui/util/IOUtils;->closeQuietly(Ljava/io/Closeable;)V

    .line 1683
    throw v0
.end method

.method public static isServiceNumber(Ljava/lang/String;)Z
    .locals 4
    .param p0, "address"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 2474
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2475
    return v2

    .line 2477
    :cond_0
    invoke-static {p0}, Lmiui/telephony/PhoneNumberUtils$PhoneNumber;->parse(Ljava/lang/CharSequence;)Lmiui/telephony/PhoneNumberUtils$PhoneNumber;

    move-result-object v0

    .line 2478
    .local v0, "phoneNumber":Lmiui/telephony/PhoneNumberUtils$PhoneNumber;
    invoke-virtual {v0}, Lmiui/telephony/PhoneNumberUtils$PhoneNumber;->isServiceNumber()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 2479
    return v3

    .line 2480
    :cond_1
    invoke-virtual {v0}, Lmiui/telephony/PhoneNumberUtils$PhoneNumber;->isChineseNumber()Z

    move-result v1

    if-eqz v1, :cond_2

    const-string/jumbo v1, "106"

    invoke-virtual {p0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 2481
    return v3

    .line 2483
    :cond_2
    return v2
.end method

.method public static isTargetServiceNum(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 9
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "num"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 1854
    invoke-static {p1}, Lmiui/telephony/PhoneNumberUtils$PhoneNumber;->parse(Ljava/lang/CharSequence;)Lmiui/telephony/PhoneNumberUtils$PhoneNumber;

    move-result-object v5

    invoke-virtual {v5, v4, v3}, Lmiui/telephony/PhoneNumberUtils$PhoneNumber;->getNormalizedNumber(ZZ)Ljava/lang/String;

    move-result-object p1

    .line 1857
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 1858
    .local v1, "resolver":Landroid/content/ContentResolver;
    sget-object v5, Lmiui/provider/ExtraTelephony$Judge;->SERVICE_NUM_CONTENT_URI:Landroid/net/Uri;

    .line 1859
    new-instance v6, Landroid/content/ContentValues;

    invoke-direct {v6}, Landroid/content/ContentValues;-><init>()V

    .line 1860
    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/String;

    .line 1861
    const/4 v8, 0x0

    aput-object p1, v7, v8

    .line 1859
    const/4 v8, 0x0

    .line 1858
    invoke-virtual {v1, v5, v6, v8, v7}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    .line 1863
    .local v2, "result":I
    if-ne v2, v3, :cond_0

    :goto_0
    return v3

    :cond_0
    move v3, v4

    goto :goto_0

    .line 1864
    .end local v1    # "resolver":Landroid/content/ContentResolver;
    .end local v2    # "result":I
    :catch_0
    move-exception v0

    .line 1865
    .local v0, "e":Ljava/lang/Exception;
    const-string/jumbo v3, "ExtraTelephony"

    const-string/jumbo v5, "Exception when isTargetServiceNum()"

    invoke-static {v3, v5, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1867
    return v4
.end method

.method public static isURLFlagRisky(I)Z
    .locals 2
    .param p0, "blockType"    # I

    .prologue
    .line 1889
    and-int/lit16 v0, p0, 0x80

    const/16 v1, 0x80

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static normalizeNumber(Ljava/lang/String;)Ljava/lang/String;
    .locals 6
    .param p0, "phoneNumber"    # Ljava/lang/String;

    .prologue
    .line 2122
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 2123
    const-string/jumbo v5, ""

    return-object v5

    .line 2126
    :cond_0
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 2127
    .local v4, "sb":Ljava/lang/StringBuilder;
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    .line 2128
    .local v3, "len":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v3, :cond_5

    .line 2129
    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 2132
    .local v0, "c":C
    invoke-static {v4, v0, v2}, Lmiui/provider/ExtraTelephony;->appendNonSeparator(Ljava/lang/StringBuilder;CI)V

    .line 2133
    const/16 v5, 0xa

    invoke-static {v0, v5}, Ljava/lang/Character;->digit(CI)I

    move-result v1

    .line 2134
    .local v1, "digit":I
    const/4 v5, -0x1

    if-eq v1, v5, :cond_2

    .line 2135
    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 2128
    :cond_1
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 2136
    :cond_2
    if-nez v2, :cond_3

    const/16 v5, 0x2b

    if-ne v0, v5, :cond_3

    .line 2137
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 2138
    :cond_3
    const/16 v5, 0x61

    if-lt v0, v5, :cond_4

    const/16 v5, 0x7a

    if-gt v0, v5, :cond_4

    .line 2139
    :goto_2
    invoke-static {p0}, Lmiui/telephony/PhoneNumberUtils;->convertKeypadLettersToDigits(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lmiui/provider/ExtraTelephony;->normalizeNumber(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    return-object v5

    .line 2138
    :cond_4
    const/16 v5, 0x41

    if-lt v0, v5, :cond_1

    const/16 v5, 0x5a

    if-gt v0, v5, :cond_1

    goto :goto_2

    .line 2142
    .end local v0    # "c":C
    .end local v1    # "digit":I
    :cond_5
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    return-object v5
.end method

.method public static registerQuietModeEnableListener(Landroid/content/Context;Lmiui/provider/ExtraTelephony$QuietModeEnableListener;)V
    .locals 5
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "quietListener"    # Lmiui/provider/ExtraTelephony$QuietModeEnableListener;

    .prologue
    const/4 v4, 0x0

    const/4 v3, -0x1

    .line 2015
    sget-object v0, Lmiui/provider/ExtraTelephony;->mQuietListeners:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 2016
    sget-object v0, Lmiui/provider/ExtraTelephony;->mSilentModeObserver:Lmiui/provider/ExtraTelephony$SilentModeObserver;

    if-nez v0, :cond_0

    .line 2017
    new-instance v0, Lmiui/provider/ExtraTelephony$SilentModeObserver;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lmiui/provider/ExtraTelephony$SilentModeObserver;-><init>(Landroid/content/Context;Landroid/os/Handler;)V

    sput-object v0, Lmiui/provider/ExtraTelephony;->mSilentModeObserver:Lmiui/provider/ExtraTelephony$SilentModeObserver;

    .line 2019
    :cond_0
    sget-boolean v0, Landroid/provider/MiuiSettings$SilenceMode;->isSupported:Z

    if-eqz v0, :cond_1

    .line 2020
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 2021
    const-string/jumbo v1, "zen_mode"

    invoke-static {v1}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 2022
    sget-object v2, Lmiui/provider/ExtraTelephony;->mSilentModeObserver:Lmiui/provider/ExtraTelephony$SilentModeObserver;

    .line 2020
    invoke-virtual {v0, v1, v4, v2, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 2023
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 2024
    const-string/jumbo v1, "vibrate_in_silent"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 2025
    sget-object v2, Lmiui/provider/ExtraTelephony;->mSilentModeObserver:Lmiui/provider/ExtraTelephony$SilentModeObserver;

    .line 2023
    invoke-virtual {v0, v1, v4, v2, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 2026
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 2027
    const-string/jumbo v1, "show_notification"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 2028
    sget-object v2, Lmiui/provider/ExtraTelephony;->mSilentModeObserver:Lmiui/provider/ExtraTelephony$SilentModeObserver;

    .line 2026
    invoke-virtual {v0, v1, v4, v2, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 2014
    :goto_0
    return-void

    .line 2030
    :cond_1
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 2031
    const-string/jumbo v1, "quiet_mode_enable"

    invoke-static {v1}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 2032
    sget-object v2, Lmiui/provider/ExtraTelephony;->mSilentModeObserver:Lmiui/provider/ExtraTelephony$SilentModeObserver;

    .line 2030
    invoke-virtual {v0, v1, v4, v2, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    goto :goto_0
.end method

.method private static sendCallInterceptNotification(Landroid/content/Context;Ljava/lang/String;II)V
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "number"    # Ljava/lang/String;
    .param p2, "blockType"    # I
    .param p3, "subId"    # I

    .prologue
    const/4 v2, 0x1

    .line 1933
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "android.intent.action.FIREWALL_UPDATED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1934
    .local v0, "intent":Landroid/content/Intent;
    const-string/jumbo v1, "key_sim_id"

    invoke-virtual {v0, v1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1935
    const-string/jumbo v1, "notification_intercept_number"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1936
    const-string/jumbo v1, "key_block_log_type"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1937
    const/4 v1, 0x3

    if-eq p2, v1, :cond_0

    .line 1938
    const/4 v1, 0x6

    if-ne p2, v1, :cond_1

    .line 1940
    :cond_0
    const-string/jumbo v1, "notification_show_type"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1944
    :goto_0
    sget-object v1, Landroid/os/UserHandle;->CURRENT_OR_SELF:Landroid/os/UserHandle;

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 1932
    return-void

    .line 1939
    :cond_1
    const/16 v1, 0xd

    if-eq p2, v1, :cond_0

    .line 1942
    const-string/jumbo v1, "notification_show_type"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    goto :goto_0
.end method

.method public static sendMsgInterceptNotification(Landroid/content/Context;II)V
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "blockType"    # I
    .param p2, "subId"    # I

    .prologue
    .line 1955
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "android.intent.action.FIREWALL_UPDATED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1956
    .local v0, "intent":Landroid/content/Intent;
    const-string/jumbo v1, "key_sim_id"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1957
    const-string/jumbo v1, "key_block_log_type"

    const/4 v2, 0x2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1958
    const/4 v1, 0x3

    if-eq p1, v1, :cond_0

    .line 1959
    const/16 v1, 0xd

    if-ne p1, v1, :cond_1

    .line 1962
    :cond_0
    const-string/jumbo v1, "notification_show_type"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1966
    :goto_0
    invoke-virtual {p0, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 1954
    return-void

    .line 1960
    :cond_1
    const/4 v1, 0x6

    if-eq p1, v1, :cond_0

    .line 1961
    const/16 v1, 0xc

    if-eq p1, v1, :cond_0

    .line 1964
    const-string/jumbo v1, "notification_show_type"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    goto :goto_0
.end method

.method public static unRegisterQuietModeEnableListener(Landroid/content/Context;Lmiui/provider/ExtraTelephony$QuietModeEnableListener;)V
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "quietListener"    # Lmiui/provider/ExtraTelephony$QuietModeEnableListener;

    .prologue
    const/4 v2, 0x0

    .line 2041
    sget-object v0, Lmiui/provider/ExtraTelephony;->mQuietListeners:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 2042
    sget-object v0, Lmiui/provider/ExtraTelephony;->mQuietListeners:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v0

    if-gtz v0, :cond_0

    sget-object v0, Lmiui/provider/ExtraTelephony;->mSilentModeObserver:Lmiui/provider/ExtraTelephony$SilentModeObserver;

    if-eqz v0, :cond_0

    .line 2043
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lmiui/provider/ExtraTelephony;->mSilentModeObserver:Lmiui/provider/ExtraTelephony$SilentModeObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 2044
    sput-object v2, Lmiui/provider/ExtraTelephony;->mSilentModeObserver:Lmiui/provider/ExtraTelephony$SilentModeObserver;

    .line 2040
    :cond_0
    return-void
.end method
