.class public final Lmiui/provider/ExtraTelephony$MmsSms;
.super Ljava/lang/Object;
.source "ExtraTelephony.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiui/provider/ExtraTelephony;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "MmsSms"
.end annotation


# static fields
.field public static final BLOCKED_CONVERSATION_CONTENT_URI:Landroid/net/Uri;

.field public static final BLOCKED_THREAD_CONTENT_URI:Landroid/net/Uri;

.field public static final CONTENT_ALL_LOCKED_URI:Landroid/net/Uri;

.field public static final CONTENT_ALL_UNDERSTAND_INFO_URI:Landroid/net/Uri;

.field public static final CONTENT_EXPIRED_URI:Landroid/net/Uri;

.field public static final CONTENT_PREVIEW_URI:Landroid/net/Uri;

.field public static final CONTENT_RECENT_RECIPIENTS_URI:Landroid/net/Uri;

.field public static final CONTENT_UNDERSTAND_INFO_URI:Landroid/net/Uri;

.field public static final EXCLUDE_VERIFICATION_CODES_FLAG:Ljava/lang/String; = "exclude_verification_codes"

.field public static final EXCLUDE_VERIFICATION_CODES_FLAG_EXCLUDE:Ljava/lang/String; = "1"

.field public static final EXCLUDE_VERIFICATION_CODES_FLAG_NOT_EXCLUDE:Ljava/lang/String; = "0"

.field public static final INSERT_PATH_IGNORED:Ljava/lang/String; = "ignored"

.field public static final INSERT_PATH_INSERTED:Ljava/lang/String; = "inserted"

.field public static final INSERT_PATH_RESTORED:Ljava/lang/String; = "restored"

.field public static final INSERT_PATH_UPDATED:Ljava/lang/String; = "updated"

.field public static final PREVIEW_ADDRESS_COLUMN_INDEX:I = 0x1

.field public static final PREVIEW_BODY_COLUMN_INDEX:I = 0x4

.field public static final PREVIEW_CHARSET_COLUMN_INDEX:I = 0x5

.field public static final PREVIEW_DATE_COLUMN_INDEX:I = 0x2

.field public static final PREVIEW_ID_COLUMN_INDEX:I = 0x0

.field public static final PREVIEW_THREAD_ID_COLUMN_INDEX:I = 0x6

.field public static final PREVIEW_TYPE_COLUMN_INDEX:I = 0x3

.field public static final SYNC_STATE_DIRTY:I = 0x0

.field public static final SYNC_STATE_ERROR:I = 0x3

.field public static final SYNC_STATE_MARKED_DELETING:I = 0x10002

.field public static final SYNC_STATE_NOT_UPLOADABLE:I = 0x4

.field public static final SYNC_STATE_SYNCED:I = 0x2

.field public static final SYNC_STATE_SYNCING:I = 0x1


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 902
    const-string/jumbo v0, "content://mms-sms/message/preview"

    .line 901
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lmiui/provider/ExtraTelephony$MmsSms;->CONTENT_PREVIEW_URI:Landroid/net/Uri;

    .line 908
    const-string/jumbo v0, "content://mms-sms/locked/all"

    .line 907
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lmiui/provider/ExtraTelephony$MmsSms;->CONTENT_ALL_LOCKED_URI:Landroid/net/Uri;

    .line 911
    const-string/jumbo v0, "content://mms-sms/expired"

    .line 910
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lmiui/provider/ExtraTelephony$MmsSms;->CONTENT_EXPIRED_URI:Landroid/net/Uri;

    .line 914
    const-string/jumbo v0, "content://mms-sms/recent-recipients"

    .line 913
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lmiui/provider/ExtraTelephony$MmsSms;->CONTENT_RECENT_RECIPIENTS_URI:Landroid/net/Uri;

    .line 917
    const-string/jumbo v0, "content://mms-sms/understand-info"

    .line 916
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lmiui/provider/ExtraTelephony$MmsSms;->CONTENT_UNDERSTAND_INFO_URI:Landroid/net/Uri;

    .line 923
    const-string/jumbo v0, "content://mms-sms/understand-info/all"

    .line 922
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lmiui/provider/ExtraTelephony$MmsSms;->CONTENT_ALL_UNDERSTAND_INFO_URI:Landroid/net/Uri;

    .line 929
    const-string/jumbo v0, "content://mms-sms/blocked"

    .line 928
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lmiui/provider/ExtraTelephony$MmsSms;->BLOCKED_CONVERSATION_CONTENT_URI:Landroid/net/Uri;

    .line 934
    const-string/jumbo v0, "content://mms-sms/blocked-thread"

    .line 933
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lmiui/provider/ExtraTelephony$MmsSms;->BLOCKED_THREAD_CONTENT_URI:Landroid/net/Uri;

    .line 899
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 899
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
