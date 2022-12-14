.class Landroid/app/DownloadManager$CursorTranslator;
.super Landroid/database/CursorWrapper;
.source "DownloadManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/DownloadManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "CursorTranslator"
.end annotation


# static fields
.field static final synthetic -assertionsDisabled:Z


# instance fields
.field private final mAccessFilename:Z

.field private final mBaseUri:Landroid/net/Uri;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    const-class v0, Landroid/app/DownloadManager$CursorTranslator;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    sput-boolean v0, Landroid/app/DownloadManager$CursorTranslator;->-assertionsDisabled:Z

    .line 2045
    return-void

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public constructor <init>(Landroid/database/Cursor;Landroid/net/Uri;Z)V
    .locals 0
    .param p1, "cursor"    # Landroid/database/Cursor;
    .param p2, "baseUri"    # Landroid/net/Uri;
    .param p3, "accessFilename"    # Z

    .prologue
    .line 2050
    invoke-direct {p0, p1}, Landroid/database/CursorWrapper;-><init>(Landroid/database/Cursor;)V

    .line 2051
    iput-object p2, p0, Landroid/app/DownloadManager$CursorTranslator;->mBaseUri:Landroid/net/Uri;

    .line 2052
    iput-boolean p3, p0, Landroid/app/DownloadManager$CursorTranslator;->mAccessFilename:Z

    .line 2049
    return-void
.end method

.method private getErrorCode(I)J
    .locals 2
    .param p1, "status"    # I

    .prologue
    .line 2140
    const/16 v0, 0x190

    if-gt v0, p1, :cond_1

    const/16 v0, 0x1e8

    if-ge p1, v0, :cond_1

    .line 2143
    :cond_0
    int-to-long v0, p1

    return-wide v0

    .line 2141
    :cond_1
    const/16 v0, 0x1f4

    if-gt v0, p1, :cond_2

    const/16 v0, 0x258

    if-lt p1, v0, :cond_0

    .line 2146
    :cond_2
    sparse-switch p1, :sswitch_data_0

    .line 2173
    const-wide/16 v0, 0x3e8

    return-wide v0

    .line 2148
    :sswitch_0
    const-wide/16 v0, 0x3e9

    return-wide v0

    .line 2152
    :sswitch_1
    const-wide/16 v0, 0x3ea

    return-wide v0

    .line 2155
    :sswitch_2
    const-wide/16 v0, 0x3ec

    return-wide v0

    .line 2158
    :sswitch_3
    const-wide/16 v0, 0x3ed

    return-wide v0

    .line 2161
    :sswitch_4
    const-wide/16 v0, 0x3ee

    return-wide v0

    .line 2164
    :sswitch_5
    const-wide/16 v0, 0x3ef

    return-wide v0

    .line 2167
    :sswitch_6
    const-wide/16 v0, 0x3f0

    return-wide v0

    .line 2170
    :sswitch_7
    const-wide/16 v0, 0x3f1

    return-wide v0

    .line 2146
    :sswitch_data_0
    .sparse-switch
        0xc6 -> :sswitch_4
        0xc7 -> :sswitch_5
        0x1e8 -> :sswitch_7
        0x1e9 -> :sswitch_6
        0x1ec -> :sswitch_0
        0x1ed -> :sswitch_1
        0x1ee -> :sswitch_1
        0x1ef -> :sswitch_2
        0x1f1 -> :sswitch_3
    .end sparse-switch
.end method

.method private getLocalUri()Ljava/lang/String;
    .locals 9

    .prologue
    const/4 v8, 0x0

    .line 2089
    const-string/jumbo v5, "destination"

    invoke-virtual {p0, v5}, Landroid/app/DownloadManager$CursorTranslator;->getColumnIndex(Ljava/lang/String;)I

    move-result v5

    invoke-virtual {p0, v5}, Landroid/app/DownloadManager$CursorTranslator;->getLong(I)J

    move-result-wide v0

    .line 2090
    .local v0, "destinationType":J
    const-wide/16 v6, 0x4

    cmp-long v5, v0, v6

    if-eqz v5, :cond_0

    .line 2091
    const-wide/16 v6, 0x0

    cmp-long v5, v0, v6

    if-nez v5, :cond_1

    .line 2093
    :cond_0
    const-string/jumbo v5, "local_filename"

    invoke-virtual {p0, v5}, Landroid/app/DownloadManager$CursorTranslator;->getColumnIndex(Ljava/lang/String;)I

    move-result v5

    invoke-super {p0, v5}, Landroid/database/CursorWrapper;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 2094
    .local v4, "localPath":Ljava/lang/String;
    if-nez v4, :cond_2

    .line 2095
    return-object v8

    .line 2092
    .end local v4    # "localPath":Ljava/lang/String;
    :cond_1
    const-wide/16 v6, 0x6

    cmp-long v5, v0, v6

    if-eqz v5, :cond_0

    .line 2101
    const-string/jumbo v5, "_id"

    invoke-virtual {p0, v5}, Landroid/app/DownloadManager$CursorTranslator;->getColumnIndex(Ljava/lang/String;)I

    move-result v5

    invoke-virtual {p0, v5}, Landroid/app/DownloadManager$CursorTranslator;->getLong(I)J

    move-result-wide v2

    .line 2102
    .local v2, "downloadId":J
    sget-object v5, Landroid/provider/Downloads$Impl;->ALL_DOWNLOADS_CONTENT_URI:Landroid/net/Uri;

    invoke-static {v5, v2, v3}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v5

    invoke-virtual {v5}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v5

    return-object v5

    .line 2097
    .end local v2    # "downloadId":J
    .restart local v4    # "localPath":Ljava/lang/String;
    :cond_2
    new-instance v5, Ljava/io/File;

    invoke-direct {v5, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v5}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v5

    invoke-virtual {v5}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v5

    return-object v5
.end method

.method private getPausedReason(I)J
    .locals 2
    .param p1, "status"    # I

    .prologue
    .line 2119
    packed-switch p1, :pswitch_data_0

    .line 2135
    :pswitch_0
    const-wide/16 v0, 0x4

    return-wide v0

    .line 2121
    :pswitch_1
    const-wide/16 v0, 0x1

    return-wide v0

    .line 2124
    :pswitch_2
    const-wide/16 v0, 0x2

    return-wide v0

    .line 2127
    :pswitch_3
    const-wide/16 v0, 0x3

    return-wide v0

    .line 2130
    :pswitch_4
    const-wide/16 v0, 0x5

    return-wide v0

    .line 2133
    :pswitch_5
    const-wide/16 v0, 0x6

    return-wide v0

    .line 2119
    nop

    :pswitch_data_0
    .packed-switch 0xc1
        :pswitch_4
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_0
        :pswitch_5
    .end packed-switch
.end method

.method private getReason(I)J
    .locals 2
    .param p1, "status"    # I

    .prologue
    .line 2106
    invoke-static {p1}, Landroid/app/DownloadManager$CursorTranslator;->translateStatus(I)I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    .line 2114
    const-wide/16 v0, 0x0

    return-wide v0

    .line 2108
    :sswitch_0
    invoke-direct {p0, p1}, Landroid/app/DownloadManager$CursorTranslator;->getErrorCode(I)J

    move-result-wide v0

    return-wide v0

    .line 2111
    :sswitch_1
    invoke-direct {p0, p1}, Landroid/app/DownloadManager$CursorTranslator;->getPausedReason(I)J

    move-result-wide v0

    return-wide v0

    .line 2106
    :sswitch_data_0
    .sparse-switch
        0x4 -> :sswitch_1
        0x10 -> :sswitch_0
    .end sparse-switch
.end method

.method static translateStatus(I)I
    .locals 1
    .param p0, "status"    # I

    .prologue
    .line 2178
    packed-switch p0, :pswitch_data_0

    .line 2196
    :pswitch_0
    sget-boolean v0, Landroid/app/DownloadManager$CursorTranslator;->-assertionsDisabled:Z

    if-nez v0, :cond_0

    invoke-static {p0}, Landroid/provider/Downloads$Impl;->isStatusError(I)Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 2180
    :pswitch_1
    const/4 v0, 0x1

    return v0

    .line 2183
    :pswitch_2
    const/4 v0, 0x2

    return v0

    .line 2190
    :pswitch_3
    const/4 v0, 0x4

    return v0

    .line 2193
    :pswitch_4
    const/16 v0, 0x8

    return v0

    .line 2197
    :cond_0
    const/16 v0, 0x10

    return v0

    .line 2178
    nop

    :pswitch_data_0
    .packed-switch 0xbe
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_0
        :pswitch_3
        :pswitch_0
        :pswitch_4
    .end packed-switch
.end method


# virtual methods
.method public getInt(I)I
    .locals 2
    .param p1, "columnIndex"    # I

    .prologue
    .line 2057
    invoke-virtual {p0, p1}, Landroid/app/DownloadManager$CursorTranslator;->getLong(I)J

    move-result-wide v0

    long-to-int v0, v0

    return v0
.end method

.method public getLong(I)J
    .locals 2
    .param p1, "columnIndex"    # I

    .prologue
    .line 2062
    invoke-virtual {p0, p1}, Landroid/app/DownloadManager$CursorTranslator;->getColumnName(I)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "reason"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2063
    const-string/jumbo v0, "status"

    invoke-virtual {p0, v0}, Landroid/app/DownloadManager$CursorTranslator;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-super {p0, v0}, Landroid/database/CursorWrapper;->getInt(I)I

    move-result v0

    invoke-direct {p0, v0}, Landroid/app/DownloadManager$CursorTranslator;->getReason(I)J

    move-result-wide v0

    return-wide v0

    .line 2064
    :cond_0
    invoke-virtual {p0, p1}, Landroid/app/DownloadManager$CursorTranslator;->getColumnName(I)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "status"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2065
    const-string/jumbo v0, "status"

    invoke-virtual {p0, v0}, Landroid/app/DownloadManager$CursorTranslator;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-super {p0, v0}, Landroid/database/CursorWrapper;->getInt(I)I

    move-result v0

    invoke-static {v0}, Landroid/app/DownloadManager$CursorTranslator;->translateStatus(I)I

    move-result v0

    int-to-long v0, v0

    return-wide v0

    .line 2067
    :cond_1
    invoke-super {p0, p1}, Landroid/database/CursorWrapper;->getLong(I)J

    move-result-wide v0

    return-wide v0
.end method

.method public getString(I)Ljava/lang/String;
    .locals 3
    .param p1, "columnIndex"    # I

    .prologue
    .line 2073
    invoke-virtual {p0, p1}, Landroid/app/DownloadManager$CursorTranslator;->getColumnName(I)Ljava/lang/String;

    move-result-object v0

    .line 2074
    .local v0, "columnName":Ljava/lang/String;
    const-string/jumbo v1, "local_uri"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2076
    invoke-direct {p0}, Landroid/app/DownloadManager$CursorTranslator;->getLocalUri()Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 2074
    :cond_0
    const-string/jumbo v1, "local_filename"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 2078
    iget-boolean v1, p0, Landroid/app/DownloadManager$CursorTranslator;->mAccessFilename:Z

    if-nez v1, :cond_1

    .line 2079
    new-instance v1, Ljava/lang/SecurityException;

    .line 2080
    const-string/jumbo v2, "COLUMN_LOCAL_FILENAME is deprecated; use ContentResolver.openFileDescriptor() instead"

    .line 2079
    invoke-direct {v1, v2}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 2084
    :cond_1
    invoke-super {p0, p1}, Landroid/database/CursorWrapper;->getString(I)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
