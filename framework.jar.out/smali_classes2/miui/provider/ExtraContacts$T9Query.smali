.class public Lmiui/provider/ExtraContacts$T9Query;
.super Ljava/lang/Object;
.source "ExtraContacts.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiui/provider/ExtraContacts;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "T9Query"
.end annotation


# static fields
.field public static final CLOUD_ANTISPAM_TYPE:I = 0x14

.field public static final CLOUD_ANTISPAM_TYPE_TAG:I = 0x15

.field public static final COLUMNS:[Ljava/lang/String;

.field public static final COLUMNS_WITH_CONFERENCE:[Ljava/lang/String;

.field public static final CONFERENCE_ID:I = 0x1c

.field public static final CONFERENCE_MEMBERS_NAME:I = 0x1e

.field public static final CONFERENCE_NAME:I = 0x1d

.field public static final CONTACT_ID:I = 0x1

.field public static final COUNT:I = 0x5

.field public static final COUNTRY_ISO:I = 0x10

.field public static final CREDIT_IMG:I = 0x1b

.field public static final DATA_ID:I = 0x13

.field public static final DATA_TAG:I = 0x16

.field public static final DATE:I = 0x8

.field public static final DURATION:I = 0x9

.field public static final FEATURES:I = 0x1a

.field public static final FIREWALL_TYPE:I = 0xd

.field public static final FORWARDED_CALL:I = 0xe

.field public static final MISSED_COUNT:I = 0xa

.field public static final NAME:I = 0x2

.field public static final NEW:I = 0x6

.field public static final NORMALIZED_NUMBER:I = 0x12

.field public static final NUMBER:I = 0x3

.field public static final NUMBER_TYPE:I = 0x17

.field public static final PHONE_CALL_TYPE:I = 0x19

.field public static final PHOTO_ID:I = 0x4

.field public static final SIM_ID:I = 0x18

.field public static final T9DISPLAY_STRING:I = 0xf

.field public static final T9KEY_TYPE:I = 0xb

.field public static final T9MATCH_DETAIL:I = 0xc

.field public static final TYPE:I = 0x7

.field public static final VOICEMAIL_URI:I = 0x11

.field public static final _ID:I


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 122
    const/16 v0, 0x1c

    new-array v0, v0, [Ljava/lang/String;

    .line 123
    const-string/jumbo v1, "_id"

    aput-object v1, v0, v3

    const-string/jumbo v1, "contact_id"

    aput-object v1, v0, v4

    const-string/jumbo v1, "name"

    aput-object v1, v0, v5

    const-string/jumbo v1, "number"

    aput-object v1, v0, v6

    .line 124
    const-string/jumbo v1, "photo_id"

    aput-object v1, v0, v7

    const-string/jumbo v1, "call_count"

    const/4 v2, 0x5

    aput-object v1, v0, v2

    const-string/jumbo v1, "is_new"

    const/4 v2, 0x6

    aput-object v1, v0, v2

    .line 125
    const-string/jumbo v1, "call_type"

    const/4 v2, 0x7

    aput-object v1, v0, v2

    const-string/jumbo v1, "call_date"

    const/16 v2, 0x8

    aput-object v1, v0, v2

    const-string/jumbo v1, "call_duration"

    const/16 v2, 0x9

    aput-object v1, v0, v2

    .line 126
    const-string/jumbo v1, "missed_count"

    const/16 v2, 0xa

    aput-object v1, v0, v2

    const-string/jumbo v1, "key_type"

    const/16 v2, 0xb

    aput-object v1, v0, v2

    const-string/jumbo v1, "match_detail"

    const/16 v2, 0xc

    aput-object v1, v0, v2

    .line 127
    const-string/jumbo v1, "firewall_type"

    const/16 v2, 0xd

    aput-object v1, v0, v2

    const-string/jumbo v1, "forwarded_call"

    const/16 v2, 0xe

    aput-object v1, v0, v2

    const-string/jumbo v1, "display_string"

    const/16 v2, 0xf

    aput-object v1, v0, v2

    .line 128
    const-string/jumbo v1, "country_iso"

    const/16 v2, 0x10

    aput-object v1, v0, v2

    const-string/jumbo v1, "voicemail_uri"

    const/16 v2, 0x11

    aput-object v1, v0, v2

    const-string/jumbo v1, "normalized_number"

    const/16 v2, 0x12

    aput-object v1, v0, v2

    .line 129
    const-string/jumbo v1, "data_id"

    const/16 v2, 0x13

    aput-object v1, v0, v2

    const-string/jumbo v1, "cloud_antispam_type"

    const/16 v2, 0x14

    aput-object v1, v0, v2

    const-string/jumbo v1, "cloud_antispam_type_tag"

    const/16 v2, 0x15

    aput-object v1, v0, v2

    .line 130
    const-string/jumbo v1, "data_tag"

    const/16 v2, 0x16

    aput-object v1, v0, v2

    const-string/jumbo v1, "number_type"

    const/16 v2, 0x17

    aput-object v1, v0, v2

    const-string/jumbo v1, "sim_id"

    const/16 v2, 0x18

    aput-object v1, v0, v2

    const-string/jumbo v1, "phone_call_type"

    const/16 v2, 0x19

    aput-object v1, v0, v2

    .line 131
    const-string/jumbo v1, "features"

    const/16 v2, 0x1a

    aput-object v1, v0, v2

    const-string/jumbo v1, "credit_img"

    const/16 v2, 0x1b

    aput-object v1, v0, v2

    .line 122
    sput-object v0, Lmiui/provider/ExtraContacts$T9Query;->COLUMNS:[Ljava/lang/String;

    .line 137
    const/16 v0, 0x1f

    new-array v0, v0, [Ljava/lang/String;

    .line 138
    const-string/jumbo v1, "_id"

    aput-object v1, v0, v3

    const-string/jumbo v1, "contact_id"

    aput-object v1, v0, v4

    const-string/jumbo v1, "name"

    aput-object v1, v0, v5

    const-string/jumbo v1, "number"

    aput-object v1, v0, v6

    .line 139
    const-string/jumbo v1, "photo_id"

    aput-object v1, v0, v7

    const-string/jumbo v1, "call_count"

    const/4 v2, 0x5

    aput-object v1, v0, v2

    const-string/jumbo v1, "is_new"

    const/4 v2, 0x6

    aput-object v1, v0, v2

    .line 140
    const-string/jumbo v1, "call_type"

    const/4 v2, 0x7

    aput-object v1, v0, v2

    const-string/jumbo v1, "call_date"

    const/16 v2, 0x8

    aput-object v1, v0, v2

    const-string/jumbo v1, "call_duration"

    const/16 v2, 0x9

    aput-object v1, v0, v2

    .line 141
    const-string/jumbo v1, "missed_count"

    const/16 v2, 0xa

    aput-object v1, v0, v2

    const-string/jumbo v1, "key_type"

    const/16 v2, 0xb

    aput-object v1, v0, v2

    const-string/jumbo v1, "match_detail"

    const/16 v2, 0xc

    aput-object v1, v0, v2

    .line 142
    const-string/jumbo v1, "firewall_type"

    const/16 v2, 0xd

    aput-object v1, v0, v2

    const-string/jumbo v1, "forwarded_call"

    const/16 v2, 0xe

    aput-object v1, v0, v2

    const-string/jumbo v1, "display_string"

    const/16 v2, 0xf

    aput-object v1, v0, v2

    .line 143
    const-string/jumbo v1, "country_iso"

    const/16 v2, 0x10

    aput-object v1, v0, v2

    const-string/jumbo v1, "voicemail_uri"

    const/16 v2, 0x11

    aput-object v1, v0, v2

    const-string/jumbo v1, "normalized_number"

    const/16 v2, 0x12

    aput-object v1, v0, v2

    .line 144
    const-string/jumbo v1, "data_id"

    const/16 v2, 0x13

    aput-object v1, v0, v2

    const-string/jumbo v1, "cloud_antispam_type"

    const/16 v2, 0x14

    aput-object v1, v0, v2

    const-string/jumbo v1, "cloud_antispam_type_tag"

    const/16 v2, 0x15

    aput-object v1, v0, v2

    .line 145
    const-string/jumbo v1, "data_tag"

    const/16 v2, 0x16

    aput-object v1, v0, v2

    const-string/jumbo v1, "number_type"

    const/16 v2, 0x17

    aput-object v1, v0, v2

    const-string/jumbo v1, "sim_id"

    const/16 v2, 0x18

    aput-object v1, v0, v2

    const-string/jumbo v1, "phone_call_type"

    const/16 v2, 0x19

    aput-object v1, v0, v2

    .line 146
    const-string/jumbo v1, "features"

    const/16 v2, 0x1a

    aput-object v1, v0, v2

    const-string/jumbo v1, "credit_img"

    const/16 v2, 0x1b

    aput-object v1, v0, v2

    .line 147
    const-string/jumbo v1, "conference_id"

    const/16 v2, 0x1c

    aput-object v1, v0, v2

    const-string/jumbo v1, "conference_name"

    const/16 v2, 0x1d

    aput-object v1, v0, v2

    const-string/jumbo v1, "conference_members_name"

    const/16 v2, 0x1e

    aput-object v1, v0, v2

    .line 137
    sput-object v0, Lmiui/provider/ExtraContacts$T9Query;->COLUMNS_WITH_CONFERENCE:[Ljava/lang/String;

    .line 119
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 119
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
