.class public Lcom/android/internal/telephony/InboundSmsTracker;
.super Ljava/lang/Object;
.source "InboundSmsTracker.java"


# static fields
.field private static final DEST_PORT_FLAG_3GPP:I = 0x20000

.field private static final DEST_PORT_FLAG_3GPP2:I = 0x40000

.field private static final DEST_PORT_FLAG_3GPP2_WAP_PDU:I = 0x80000

.field private static final DEST_PORT_FLAG_NO_PORT:I = 0x10000

.field private static final DEST_PORT_MASK:I = 0xffff


# instance fields
.field private final mAddress:Ljava/lang/String;

.field private mDeleteWhere:Ljava/lang/String;

.field private mDeleteWhereArgs:[Ljava/lang/String;

.field private final mDestPort:I

.field private final mIs3gpp2:Z

.field private final mIs3gpp2WapPdu:Z

.field private final mMessageBody:Ljava/lang/String;

.field private final mMessageCount:I

.field private final mPdu:[B

.field private final mReferenceNumber:I

.field private final mSequenceNumber:I

.field private mSubId:I

.field private final mTimestamp:J


# direct methods
.method public constructor <init>(Landroid/database/Cursor;Z)V
    .locals 12
    .param p1, "cursor"    # Landroid/database/Cursor;
    .param p2, "isCurrentFormat3gpp2"    # Z

    .prologue
    const/4 v11, 0x3

    const/4 v7, -0x1

    const/4 v10, 0x2

    const/4 v5, 0x1

    const/4 v6, 0x0

    .line 136
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 137
    invoke-interface {p1, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/android/internal/util/HexDump;->hexStringToByteArray(Ljava/lang/String;)[B

    move-result-object v4

    iput-object v4, p0, Lcom/android/internal/telephony/InboundSmsTracker;->mPdu:[B

    .line 139
    invoke-interface {p1, v10}, Landroid/database/Cursor;->isNull(I)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 140
    iput v7, p0, Lcom/android/internal/telephony/InboundSmsTracker;->mDestPort:I

    .line 141
    iput-boolean p2, p0, Lcom/android/internal/telephony/InboundSmsTracker;->mIs3gpp2:Z

    .line 142
    iput-boolean v6, p0, Lcom/android/internal/telephony/InboundSmsTracker;->mIs3gpp2WapPdu:Z

    .line 156
    :goto_0
    invoke-interface {p1, v11}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v8

    iput-wide v8, p0, Lcom/android/internal/telephony/InboundSmsTracker;->mTimestamp:J

    .line 157
    const/4 v4, 0x6

    invoke-interface {p1, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/android/internal/telephony/InboundSmsTracker;->mAddress:Ljava/lang/String;

    .line 159
    const/16 v4, 0x9

    invoke-interface {p1, v4}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v8

    long-to-int v4, v8

    iput v4, p0, Lcom/android/internal/telephony/InboundSmsTracker;->mSubId:I

    .line 161
    const/4 v4, 0x5

    invoke-interface {p1, v4}, Landroid/database/Cursor;->isNull(I)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 163
    const/4 v4, 0x7

    invoke-interface {p1, v4}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    .line 164
    .local v2, "rowId":J
    iput v7, p0, Lcom/android/internal/telephony/InboundSmsTracker;->mReferenceNumber:I

    .line 165
    invoke-virtual {p0}, Lcom/android/internal/telephony/InboundSmsTracker;->getIndexOffset()I

    move-result v4

    iput v4, p0, Lcom/android/internal/telephony/InboundSmsTracker;->mSequenceNumber:I

    .line 166
    iput v5, p0, Lcom/android/internal/telephony/InboundSmsTracker;->mMessageCount:I

    .line 167
    const-string/jumbo v4, "_id=?"

    iput-object v4, p0, Lcom/android/internal/telephony/InboundSmsTracker;->mDeleteWhere:Ljava/lang/String;

    .line 168
    new-array v4, v5, [Ljava/lang/String;

    invoke-static {v2, v3}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v6

    iput-object v4, p0, Lcom/android/internal/telephony/InboundSmsTracker;->mDeleteWhereArgs:[Ljava/lang/String;

    .line 192
    .end local v2    # "rowId":J
    :goto_1
    const/16 v4, 0x8

    invoke-interface {p1, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/android/internal/telephony/InboundSmsTracker;->mMessageBody:Ljava/lang/String;

    .line 136
    return-void

    .line 144
    :cond_0
    invoke-interface {p1, v10}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    .line 145
    .local v0, "destPort":I
    const/high16 v4, 0x20000

    and-int/2addr v4, v0

    if-eqz v4, :cond_1

    .line 146
    iput-boolean v6, p0, Lcom/android/internal/telephony/InboundSmsTracker;->mIs3gpp2:Z

    .line 152
    :goto_2
    const/high16 v4, 0x80000

    and-int/2addr v4, v0

    if-eqz v4, :cond_3

    move v4, v5

    :goto_3
    iput-boolean v4, p0, Lcom/android/internal/telephony/InboundSmsTracker;->mIs3gpp2WapPdu:Z

    .line 153
    invoke-static {v0}, Lcom/android/internal/telephony/InboundSmsTracker;->getRealDestPort(I)I

    move-result v4

    iput v4, p0, Lcom/android/internal/telephony/InboundSmsTracker;->mDestPort:I

    goto :goto_0

    .line 147
    :cond_1
    const/high16 v4, 0x40000

    and-int/2addr v4, v0

    if-eqz v4, :cond_2

    .line 148
    iput-boolean v5, p0, Lcom/android/internal/telephony/InboundSmsTracker;->mIs3gpp2:Z

    goto :goto_2

    .line 150
    :cond_2
    iput-boolean p2, p0, Lcom/android/internal/telephony/InboundSmsTracker;->mIs3gpp2:Z

    goto :goto_2

    :cond_3
    move v4, v6

    .line 152
    goto :goto_3

    .line 171
    .end local v0    # "destPort":I
    :cond_4
    const/4 v4, 0x4

    invoke-interface {p1, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    iput v4, p0, Lcom/android/internal/telephony/InboundSmsTracker;->mReferenceNumber:I

    .line 172
    const/4 v4, 0x5

    invoke-interface {p1, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    iput v4, p0, Lcom/android/internal/telephony/InboundSmsTracker;->mMessageCount:I

    .line 175
    invoke-interface {p1, v5}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    iput v4, p0, Lcom/android/internal/telephony/InboundSmsTracker;->mSequenceNumber:I

    .line 176
    iget v4, p0, Lcom/android/internal/telephony/InboundSmsTracker;->mSequenceNumber:I

    invoke-virtual {p0}, Lcom/android/internal/telephony/InboundSmsTracker;->getIndexOffset()I

    move-result v7

    sub-int v1, v4, v7

    .line 178
    .local v1, "index":I
    if-ltz v1, :cond_5

    iget v4, p0, Lcom/android/internal/telephony/InboundSmsTracker;->mMessageCount:I

    if-lt v1, v4, :cond_6

    .line 179
    :cond_5
    new-instance v4, Ljava/lang/IllegalArgumentException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "invalid PDU sequence "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p0, Lcom/android/internal/telephony/InboundSmsTracker;->mSequenceNumber:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 180
    const-string/jumbo v6, " of "

    .line 179
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 180
    iget v6, p0, Lcom/android/internal/telephony/InboundSmsTracker;->mMessageCount:I

    .line 179
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 183
    :cond_6
    const-string/jumbo v4, "address=? AND reference_number=? AND count=? AND sim_id=? AND deleted=0"

    iput-object v4, p0, Lcom/android/internal/telephony/InboundSmsTracker;->mDeleteWhere:Ljava/lang/String;

    .line 187
    const/4 v4, 0x4

    new-array v4, v4, [Ljava/lang/String;

    iget-object v7, p0, Lcom/android/internal/telephony/InboundSmsTracker;->mAddress:Ljava/lang/String;

    aput-object v7, v4, v6

    .line 188
    iget v6, p0, Lcom/android/internal/telephony/InboundSmsTracker;->mReferenceNumber:I

    invoke-static {v6}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    iget v5, p0, Lcom/android/internal/telephony/InboundSmsTracker;->mMessageCount:I

    invoke-static {v5}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v10

    .line 189
    iget v5, p0, Lcom/android/internal/telephony/InboundSmsTracker;->mSubId:I

    invoke-static {v5}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v11

    .line 187
    iput-object v4, p0, Lcom/android/internal/telephony/InboundSmsTracker;->mDeleteWhereArgs:[Ljava/lang/String;

    goto/16 :goto_1
.end method

.method public constructor <init>([BJIZLjava/lang/String;IIIZLjava/lang/String;)V
    .locals 0
    .param p1, "pdu"    # [B
    .param p2, "timestamp"    # J
    .param p4, "destPort"    # I
    .param p5, "is3gpp2"    # Z
    .param p6, "address"    # Ljava/lang/String;
    .param p7, "referenceNumber"    # I
    .param p8, "sequenceNumber"    # I
    .param p9, "messageCount"    # I
    .param p10, "is3gpp2WapPdu"    # Z
    .param p11, "messageBody"    # Ljava/lang/String;

    .prologue
    .line 115
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 118
    iput-object p1, p0, Lcom/android/internal/telephony/InboundSmsTracker;->mPdu:[B

    .line 119
    iput-wide p2, p0, Lcom/android/internal/telephony/InboundSmsTracker;->mTimestamp:J

    .line 120
    iput p4, p0, Lcom/android/internal/telephony/InboundSmsTracker;->mDestPort:I

    .line 121
    iput-boolean p5, p0, Lcom/android/internal/telephony/InboundSmsTracker;->mIs3gpp2:Z

    .line 122
    iput-boolean p10, p0, Lcom/android/internal/telephony/InboundSmsTracker;->mIs3gpp2WapPdu:Z

    .line 123
    iput-object p11, p0, Lcom/android/internal/telephony/InboundSmsTracker;->mMessageBody:Ljava/lang/String;

    .line 124
    iput-object p6, p0, Lcom/android/internal/telephony/InboundSmsTracker;->mAddress:Ljava/lang/String;

    .line 126
    iput p7, p0, Lcom/android/internal/telephony/InboundSmsTracker;->mReferenceNumber:I

    .line 127
    iput p8, p0, Lcom/android/internal/telephony/InboundSmsTracker;->mSequenceNumber:I

    .line 128
    iput p9, p0, Lcom/android/internal/telephony/InboundSmsTracker;->mMessageCount:I

    .line 117
    return-void
.end method

.method public constructor <init>([BJIZZLjava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "pdu"    # [B
    .param p2, "timestamp"    # J
    .param p4, "destPort"    # I
    .param p5, "is3gpp2"    # Z
    .param p6, "is3gpp2WapPdu"    # Z
    .param p7, "address"    # Ljava/lang/String;
    .param p8, "messageBody"    # Ljava/lang/String;

    .prologue
    .line 83
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 85
    iput-object p1, p0, Lcom/android/internal/telephony/InboundSmsTracker;->mPdu:[B

    .line 86
    iput-wide p2, p0, Lcom/android/internal/telephony/InboundSmsTracker;->mTimestamp:J

    .line 87
    iput p4, p0, Lcom/android/internal/telephony/InboundSmsTracker;->mDestPort:I

    .line 88
    iput-boolean p5, p0, Lcom/android/internal/telephony/InboundSmsTracker;->mIs3gpp2:Z

    .line 89
    iput-boolean p6, p0, Lcom/android/internal/telephony/InboundSmsTracker;->mIs3gpp2WapPdu:Z

    .line 90
    iput-object p8, p0, Lcom/android/internal/telephony/InboundSmsTracker;->mMessageBody:Ljava/lang/String;

    .line 91
    iput-object p7, p0, Lcom/android/internal/telephony/InboundSmsTracker;->mAddress:Ljava/lang/String;

    .line 93
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/internal/telephony/InboundSmsTracker;->mReferenceNumber:I

    .line 94
    invoke-virtual {p0}, Lcom/android/internal/telephony/InboundSmsTracker;->getIndexOffset()I

    move-result v0

    iput v0, p0, Lcom/android/internal/telephony/InboundSmsTracker;->mSequenceNumber:I

    .line 95
    const/4 v0, 0x1

    iput v0, p0, Lcom/android/internal/telephony/InboundSmsTracker;->mMessageCount:I

    .line 84
    return-void
.end method

.method public static getRealDestPort(I)I
    .locals 1
    .param p0, "destPort"    # I

    .prologue
    .line 234
    const/high16 v0, 0x10000

    and-int/2addr v0, p0

    if-eqz v0, :cond_0

    .line 235
    const/4 v0, -0x1

    return v0

    .line 237
    :cond_0
    const v0, 0xffff

    and-int/2addr v0, p0

    return v0
.end method


# virtual methods
.method public getAddress()Ljava/lang/String;
    .locals 1

    .prologue
    .line 301
    iget-object v0, p0, Lcom/android/internal/telephony/InboundSmsTracker;->mAddress:Ljava/lang/String;

    return-object v0
.end method

.method public getContentValues()Landroid/content/ContentValues;
    .locals 6

    .prologue
    .line 196
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 197
    .local v1, "values":Landroid/content/ContentValues;
    const-string/jumbo v2, "pdu"

    iget-object v3, p0, Lcom/android/internal/telephony/InboundSmsTracker;->mPdu:[B

    invoke-static {v3}, Lcom/android/internal/util/HexDump;->toHexString([B)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 198
    const-string/jumbo v2, "date"

    iget-wide v4, p0, Lcom/android/internal/telephony/InboundSmsTracker;->mTimestamp:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 202
    iget v2, p0, Lcom/android/internal/telephony/InboundSmsTracker;->mDestPort:I

    const/4 v3, -0x1

    if-ne v2, v3, :cond_2

    .line 203
    const/high16 v0, 0x10000

    .line 207
    .local v0, "destPort":I
    :goto_0
    iget-boolean v2, p0, Lcom/android/internal/telephony/InboundSmsTracker;->mIs3gpp2:Z

    if-eqz v2, :cond_3

    .line 208
    const/high16 v2, 0x40000

    or-int/2addr v0, v2

    .line 212
    :goto_1
    iget-boolean v2, p0, Lcom/android/internal/telephony/InboundSmsTracker;->mIs3gpp2WapPdu:Z

    if-eqz v2, :cond_0

    .line 213
    const/high16 v2, 0x80000

    or-int/2addr v0, v2

    .line 215
    :cond_0
    const-string/jumbo v2, "destination_port"

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 216
    iget-object v2, p0, Lcom/android/internal/telephony/InboundSmsTracker;->mAddress:Ljava/lang/String;

    if-eqz v2, :cond_1

    .line 217
    const-string/jumbo v2, "address"

    iget-object v3, p0, Lcom/android/internal/telephony/InboundSmsTracker;->mAddress:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 218
    const-string/jumbo v2, "reference_number"

    iget v3, p0, Lcom/android/internal/telephony/InboundSmsTracker;->mReferenceNumber:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 219
    const-string/jumbo v2, "sequence"

    iget v3, p0, Lcom/android/internal/telephony/InboundSmsTracker;->mSequenceNumber:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 220
    const-string/jumbo v2, "count"

    iget v3, p0, Lcom/android/internal/telephony/InboundSmsTracker;->mMessageCount:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 222
    :cond_1
    const-string/jumbo v2, "message_body"

    iget-object v3, p0, Lcom/android/internal/telephony/InboundSmsTracker;->mMessageBody:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 224
    const-string/jumbo v2, "sim_id"

    iget v3, p0, Lcom/android/internal/telephony/InboundSmsTracker;->mSubId:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 225
    return-object v1

    .line 205
    .end local v0    # "destPort":I
    :cond_2
    iget v2, p0, Lcom/android/internal/telephony/InboundSmsTracker;->mDestPort:I

    const v3, 0xffff

    and-int v0, v2, v3

    .restart local v0    # "destPort":I
    goto :goto_0

    .line 210
    :cond_3
    const/high16 v2, 0x20000

    or-int/2addr v0, v2

    goto :goto_1
.end method

.method public getDeleteWhere()Ljava/lang/String;
    .locals 1

    .prologue
    .line 321
    iget-object v0, p0, Lcom/android/internal/telephony/InboundSmsTracker;->mDeleteWhere:Ljava/lang/String;

    return-object v0
.end method

.method public getDeleteWhereArgs()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 325
    iget-object v0, p0, Lcom/android/internal/telephony/InboundSmsTracker;->mDeleteWhereArgs:[Ljava/lang/String;

    return-object v0
.end method

.method public getDestPort()I
    .locals 1

    .prologue
    .line 280
    iget v0, p0, Lcom/android/internal/telephony/InboundSmsTracker;->mDestPort:I

    return v0
.end method

.method public getFormat()Ljava/lang/String;
    .locals 1

    .prologue
    .line 288
    iget-boolean v0, p0, Lcom/android/internal/telephony/InboundSmsTracker;->mIs3gpp2:Z

    if-eqz v0, :cond_0

    const-string/jumbo v0, "3gpp2"

    :goto_0
    return-object v0

    :cond_0
    const-string/jumbo v0, "3gpp"

    goto :goto_0
.end method

.method public getIndexOffset()I
    .locals 1

    .prologue
    .line 297
    iget-boolean v0, p0, Lcom/android/internal/telephony/InboundSmsTracker;->mIs3gpp2:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/internal/telephony/InboundSmsTracker;->mIs3gpp2WapPdu:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public getMessageBody()Ljava/lang/String;
    .locals 1

    .prologue
    .line 305
    iget-object v0, p0, Lcom/android/internal/telephony/InboundSmsTracker;->mMessageBody:Ljava/lang/String;

    return-object v0
.end method

.method public getMessageCount()I
    .locals 1

    .prologue
    .line 317
    iget v0, p0, Lcom/android/internal/telephony/InboundSmsTracker;->mMessageCount:I

    return v0
.end method

.method public getPdu()[B
    .locals 1

    .prologue
    .line 272
    iget-object v0, p0, Lcom/android/internal/telephony/InboundSmsTracker;->mPdu:[B

    return-object v0
.end method

.method public getReferenceNumber()I
    .locals 1

    .prologue
    .line 309
    iget v0, p0, Lcom/android/internal/telephony/InboundSmsTracker;->mReferenceNumber:I

    return v0
.end method

.method public getSequenceNumber()I
    .locals 1

    .prologue
    .line 313
    iget v0, p0, Lcom/android/internal/telephony/InboundSmsTracker;->mSequenceNumber:I

    return v0
.end method

.method public getSubId()I
    .locals 1

    .prologue
    .line 338
    iget v0, p0, Lcom/android/internal/telephony/InboundSmsTracker;->mSubId:I

    return v0
.end method

.method public getTimestamp()J
    .locals 2

    .prologue
    .line 276
    iget-wide v0, p0, Lcom/android/internal/telephony/InboundSmsTracker;->mTimestamp:J

    return-wide v0
.end method

.method public is3gpp2()Z
    .locals 1

    .prologue
    .line 284
    iget-boolean v0, p0, Lcom/android/internal/telephony/InboundSmsTracker;->mIs3gpp2:Z

    return v0
.end method

.method public setDeleteWhere(Ljava/lang/String;[Ljava/lang/String;)V
    .locals 0
    .param p1, "deleteWhere"    # Ljava/lang/String;
    .param p2, "deleteWhereArgs"    # [Ljava/lang/String;

    .prologue
    .line 247
    iput-object p1, p0, Lcom/android/internal/telephony/InboundSmsTracker;->mDeleteWhere:Ljava/lang/String;

    .line 248
    iput-object p2, p0, Lcom/android/internal/telephony/InboundSmsTracker;->mDeleteWhereArgs:[Ljava/lang/String;

    .line 246
    return-void
.end method

.method public setSubId(I)V
    .locals 1
    .param p1, "subId"    # I

    .prologue
    .line 330
    invoke-static {}, Lcom/android/internal/telephony/SubscriptionController;->getInstance()Lcom/android/internal/telephony/SubscriptionController;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/SubscriptionController;->isActiveSubId(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 331
    iput p1, p0, Lcom/android/internal/telephony/InboundSmsTracker;->mSubId:I

    .line 329
    :goto_0
    return-void

    .line 333
    :cond_0
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/internal/telephony/InboundSmsTracker;->mSubId:I

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 252
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "SmsTracker{timestamp="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 253
    .local v0, "builder":Ljava/lang/StringBuilder;
    new-instance v1, Ljava/util/Date;

    iget-wide v2, p0, Lcom/android/internal/telephony/InboundSmsTracker;->mTimestamp:J

    invoke-direct {v1, v2, v3}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 254
    const-string/jumbo v1, " destPort="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/internal/telephony/InboundSmsTracker;->mDestPort:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 255
    const-string/jumbo v1, " is3gpp2="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/internal/telephony/InboundSmsTracker;->mIs3gpp2:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 256
    iget-object v1, p0, Lcom/android/internal/telephony/InboundSmsTracker;->mAddress:Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 257
    const-string/jumbo v1, " address="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/telephony/InboundSmsTracker;->mAddress:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 258
    const-string/jumbo v1, " refNumber="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/internal/telephony/InboundSmsTracker;->mReferenceNumber:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 259
    const-string/jumbo v1, " seqNumber="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/internal/telephony/InboundSmsTracker;->mSequenceNumber:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 260
    const-string/jumbo v1, " msgCount="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/internal/telephony/InboundSmsTracker;->mMessageCount:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 262
    :cond_0
    iget-object v1, p0, Lcom/android/internal/telephony/InboundSmsTracker;->mDeleteWhere:Ljava/lang/String;

    if-eqz v1, :cond_1

    .line 263
    const-string/jumbo v1, " deleteWhere("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/telephony/InboundSmsTracker;->mDeleteWhere:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 264
    const-string/jumbo v1, ") deleteArgs=("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/telephony/InboundSmsTracker;->mDeleteWhereArgs:[Ljava/lang/String;

    invoke-static {v2}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 265
    const/16 v1, 0x29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 267
    :cond_1
    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 268
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
