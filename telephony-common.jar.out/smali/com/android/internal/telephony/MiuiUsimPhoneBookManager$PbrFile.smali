.class Lcom/android/internal/telephony/MiuiUsimPhoneBookManager$PbrFile;
.super Ljava/lang/Object;
.source "MiuiUsimPhoneBookManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/MiuiUsimPhoneBookManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "PbrFile"
.end annotation


# instance fields
.field mEfRecords:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/internal/telephony/MiuiUsimPhoneBookManager$EfRecord;",
            ">;>;"
        }
    .end annotation
.end field

.field mFileIds:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;>;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/android/internal/telephony/MiuiUsimPhoneBookManager;


# direct methods
.method constructor <init>(Lcom/android/internal/telephony/MiuiUsimPhoneBookManager;Ljava/util/ArrayList;)V
    .locals 6
    .param p1, "this$0"    # Lcom/android/internal/telephony/MiuiUsimPhoneBookManager;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<[B>;)V"
        }
    .end annotation

    .prologue
    .line 1134
    .local p2, "records":Ljava/util/ArrayList;, "Ljava/util/ArrayList<[B>;"
    iput-object p1, p0, Lcom/android/internal/telephony/MiuiUsimPhoneBookManager$PbrFile;->this$0:Lcom/android/internal/telephony/MiuiUsimPhoneBookManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1135
    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    iput-object v4, p0, Lcom/android/internal/telephony/MiuiUsimPhoneBookManager$PbrFile;->mFileIds:Ljava/util/HashMap;

    .line 1136
    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    iput-object v4, p0, Lcom/android/internal/telephony/MiuiUsimPhoneBookManager$PbrFile;->mEfRecords:Ljava/util/HashMap;

    .line 1139
    const/4 v3, 0x0

    .line 1140
    .local v3, "sliceCount":I
    invoke-interface {p2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "record$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [B

    .line 1141
    .local v1, "record":[B
    new-instance v0, Lcom/android/internal/telephony/gsm/SimTlv;

    array-length v4, v1

    const/4 v5, 0x0

    invoke-direct {v0, v1, v5, v4}, Lcom/android/internal/telephony/gsm/SimTlv;-><init>([BII)V

    .line 1142
    .local v0, "recTlv":Lcom/android/internal/telephony/gsm/SimTlv;
    invoke-virtual {p0, v0, v3}, Lcom/android/internal/telephony/MiuiUsimPhoneBookManager$PbrFile;->parseTag(Lcom/android/internal/telephony/gsm/SimTlv;I)V

    .line 1143
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 1134
    .end local v0    # "recTlv":Lcom/android/internal/telephony/gsm/SimTlv;
    .end local v1    # "record":[B
    :cond_0
    return-void
.end method


# virtual methods
.method parseEf(Lcom/android/internal/telephony/gsm/SimTlv;Ljava/util/Map;II)V
    .locals 8
    .param p1, "tlvEf"    # Lcom/android/internal/telephony/gsm/SimTlv;
    .param p3, "parentTag"    # I
    .param p4, "recIndex"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/internal/telephony/gsm/SimTlv;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;II)V"
        }
    .end annotation

    .prologue
    .line 1167
    .local p2, "val":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;Ljava/lang/Integer;>;"
    const/4 v4, 0x0

    .line 1169
    .local v4, "tagNumberWithinParentTag":I
    :cond_0
    invoke-virtual {p1}, Lcom/android/internal/telephony/gsm/SimTlv;->getTag()I

    move-result v3

    .line 1171
    .local v3, "tag":I
    packed-switch v3, :pswitch_data_0

    .line 1197
    :goto_0
    :pswitch_0
    add-int/lit8 v4, v4, 0x1

    .line 1198
    invoke-virtual {p1}, Lcom/android/internal/telephony/gsm/SimTlv;->nextObject()Z

    move-result v5

    if-nez v5, :cond_0

    .line 1166
    return-void

    .line 1177
    :pswitch_1
    invoke-virtual {p1}, Lcom/android/internal/telephony/gsm/SimTlv;->getData()[B

    move-result-object v0

    .line 1178
    .local v0, "data":[B
    const/4 v5, 0x0

    aget-byte v5, v0, v5

    shl-int/lit8 v5, v5, 0x8

    const/4 v6, 0x1

    aget-byte v6, v0, v6

    and-int/lit16 v6, v6, 0xff

    or-int v1, v5, v6

    .line 1179
    .local v1, "efid":I
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {p2, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1180
    new-instance v2, Lcom/android/internal/telephony/MiuiUsimPhoneBookManager$EfRecord;

    iget-object v5, p0, Lcom/android/internal/telephony/MiuiUsimPhoneBookManager$PbrFile;->this$0:Lcom/android/internal/telephony/MiuiUsimPhoneBookManager;

    invoke-direct {v2, v5}, Lcom/android/internal/telephony/MiuiUsimPhoneBookManager$EfRecord;-><init>(Lcom/android/internal/telephony/MiuiUsimPhoneBookManager;)V

    .line 1181
    .local v2, "object":Lcom/android/internal/telephony/MiuiUsimPhoneBookManager$EfRecord;
    iput v3, v2, Lcom/android/internal/telephony/MiuiUsimPhoneBookManager$EfRecord;->mTag:I

    .line 1182
    iput p4, v2, Lcom/android/internal/telephony/MiuiUsimPhoneBookManager$EfRecord;->mPbrIndex:I

    .line 1183
    iput v1, v2, Lcom/android/internal/telephony/MiuiUsimPhoneBookManager$EfRecord;->mEfTag:I

    .line 1184
    iput p3, v2, Lcom/android/internal/telephony/MiuiUsimPhoneBookManager$EfRecord;->mType:I

    .line 1185
    const/16 v5, 0xa9

    if-ne p3, v5, :cond_1

    .line 1186
    iput v4, v2, Lcom/android/internal/telephony/MiuiUsimPhoneBookManager$EfRecord;->mType2Record:I

    .line 1188
    :cond_1
    array-length v5, v0

    const/4 v6, 0x3

    if-ne v5, v6, :cond_2

    .line 1189
    const/4 v5, 0x2

    aget-byte v5, v0, v5

    iput-byte v5, v2, Lcom/android/internal/telephony/MiuiUsimPhoneBookManager$EfRecord;->mSfi:B

    .line 1191
    :cond_2
    iget-object v5, p0, Lcom/android/internal/telephony/MiuiUsimPhoneBookManager$PbrFile;->mEfRecords:Ljava/util/HashMap;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_3

    .line 1192
    iget-object v5, p0, Lcom/android/internal/telephony/MiuiUsimPhoneBookManager$PbrFile;->mEfRecords:Ljava/util/HashMap;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v5, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1194
    :cond_3
    iget-object v5, p0, Lcom/android/internal/telephony/MiuiUsimPhoneBookManager$PbrFile;->mEfRecords:Ljava/util/HashMap;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/ArrayList;

    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 1171
    :pswitch_data_0
    .packed-switch 0xc0
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method parseTag(Lcom/android/internal/telephony/gsm/SimTlv;I)V
    .locals 6
    .param p1, "tlv"    # Lcom/android/internal/telephony/gsm/SimTlv;
    .param p2, "recIndex"    # I

    .prologue
    .line 1148
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    .line 1150
    .local v3, "val":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;Ljava/lang/Integer;>;"
    :cond_0
    invoke-virtual {p1}, Lcom/android/internal/telephony/gsm/SimTlv;->getTag()I

    move-result v1

    .line 1151
    .local v1, "tag":I
    packed-switch v1, :pswitch_data_0

    .line 1162
    :goto_0
    invoke-virtual {p1}, Lcom/android/internal/telephony/gsm/SimTlv;->nextObject()Z

    move-result v4

    if-nez v4, :cond_0

    .line 1163
    iget-object v4, p0, Lcom/android/internal/telephony/MiuiUsimPhoneBookManager$PbrFile;->mFileIds:Ljava/util/HashMap;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1147
    return-void

    .line 1155
    :pswitch_0
    invoke-virtual {p1}, Lcom/android/internal/telephony/gsm/SimTlv;->getData()[B

    move-result-object v0

    .line 1156
    .local v0, "data":[B
    new-instance v2, Lcom/android/internal/telephony/gsm/SimTlv;

    array-length v4, v0

    const/4 v5, 0x0

    invoke-direct {v2, v0, v5, v4}, Lcom/android/internal/telephony/gsm/SimTlv;-><init>([BII)V

    .line 1157
    .local v2, "tlvEf":Lcom/android/internal/telephony/gsm/SimTlv;
    invoke-virtual {p0, v2, v3, v1, p2}, Lcom/android/internal/telephony/MiuiUsimPhoneBookManager$PbrFile;->parseEf(Lcom/android/internal/telephony/gsm/SimTlv;Ljava/util/Map;II)V

    goto :goto_0

    .line 1151
    nop

    :pswitch_data_0
    .packed-switch 0xa8
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method
