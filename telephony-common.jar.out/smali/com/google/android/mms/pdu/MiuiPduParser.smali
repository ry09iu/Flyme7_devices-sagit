.class public Lcom/google/android/mms/pdu/MiuiPduParser;
.super Ljava/lang/Object;
.source "MiuiPduParser.java"


# static fields
.field static final synthetic -assertionsDisabled:Z

.field private static final DEBUG:Z = false

.field private static final END_STRING_FLAG:I = 0x0

.field private static final LENGTH_QUOTE:I = 0x1f

.field private static final LOCAL_LOGV:Z = false

.field private static final LOG_TAG:Ljava/lang/String; = "MiuiPduParser"

.field private static final LONG_INTEGER_LENGTH_MAX:I = 0x8

.field private static final QUOTE:I = 0x7f

.field private static final QUOTED_STRING_FLAG:I = 0x22

.field private static final SHORT_INTEGER_MAX:I = 0x7f

.field private static final SHORT_LENGTH_MAX:I = 0x1e

.field private static final TEXT_MAX:I = 0x7f

.field private static final TEXT_MIN:I = 0x20

.field private static final THE_FIRST_PART:I = 0x0

.field private static final THE_LAST_PART:I = 0x1

.field private static final TYPE_QUOTED_STRING:I = 0x1

.field private static final TYPE_TEXT_STRING:I = 0x0

.field private static final TYPE_TOKEN_STRING:I = 0x2

.field private static mStartParam:[B

.field private static mTypeParam:[B


# instance fields
.field private mBody:Lcom/google/android/mms/pdu/PduBody;

.field private mHeaders:Lcom/google/android/mms/pdu/PduHeaders;

.field private final mParseContentDisposition:Z

.field private mPduDataStream:Ljava/io/ByteArrayInputStream;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    const-class v0, Lcom/google/android/mms/pdu/MiuiPduParser;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    sput-boolean v0, Lcom/google/android/mms/pdu/MiuiPduParser;->-assertionsDisabled:Z

    .line 60
    sput-object v1, Lcom/google/android/mms/pdu/MiuiPduParser;->mTypeParam:[B

    .line 65
    sput-object v1, Lcom/google/android/mms/pdu/MiuiPduParser;->mStartParam:[B

    .line 17
    return-void

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public constructor <init>([B)V
    .locals 2
    .param p1, "pduDataStream"    # [B

    .prologue
    const/4 v0, 0x0

    .line 84
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    iput-object v0, p0, Lcom/google/android/mms/pdu/MiuiPduParser;->mPduDataStream:Ljava/io/ByteArrayInputStream;

    .line 50
    iput-object v0, p0, Lcom/google/android/mms/pdu/MiuiPduParser;->mHeaders:Lcom/google/android/mms/pdu/PduHeaders;

    .line 55
    iput-object v0, p0, Lcom/google/android/mms/pdu/MiuiPduParser;->mBody:Lcom/google/android/mms/pdu/PduBody;

    .line 85
    new-instance v0, Ljava/io/ByteArrayInputStream;

    invoke-direct {v0, p1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    iput-object v0, p0, Lcom/google/android/mms/pdu/MiuiPduParser;->mPduDataStream:Ljava/io/ByteArrayInputStream;

    .line 86
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v0

    .line 87
    const v1, 0x1120068

    .line 86
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    iput-boolean v0, p0, Lcom/google/android/mms/pdu/MiuiPduParser;->mParseContentDisposition:Z

    .line 84
    return-void
.end method

.method public constructor <init>([BZ)V
    .locals 1
    .param p1, "pduDataStream"    # [B
    .param p2, "parseContentDisposition"    # Z

    .prologue
    const/4 v0, 0x0

    .line 96
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    iput-object v0, p0, Lcom/google/android/mms/pdu/MiuiPduParser;->mPduDataStream:Ljava/io/ByteArrayInputStream;

    .line 50
    iput-object v0, p0, Lcom/google/android/mms/pdu/MiuiPduParser;->mHeaders:Lcom/google/android/mms/pdu/PduHeaders;

    .line 55
    iput-object v0, p0, Lcom/google/android/mms/pdu/MiuiPduParser;->mBody:Lcom/google/android/mms/pdu/PduBody;

    .line 97
    new-instance v0, Ljava/io/ByteArrayInputStream;

    invoke-direct {v0, p1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    iput-object v0, p0, Lcom/google/android/mms/pdu/MiuiPduParser;->mPduDataStream:Ljava/io/ByteArrayInputStream;

    .line 98
    iput-boolean p2, p0, Lcom/google/android/mms/pdu/MiuiPduParser;->mParseContentDisposition:Z

    .line 96
    return-void
.end method

.method protected static checkMandatoryHeader(Lcom/google/android/mms/pdu/PduHeaders;)Z
    .locals 40
    .param p0, "headers"    # Lcom/google/android/mms/pdu/PduHeaders;

    .prologue
    .line 1796
    if-nez p0, :cond_0

    .line 1797
    const/16 v37, 0x0

    return v37

    .line 1801
    :cond_0
    const/16 v37, 0x8c

    move-object/from16 v0, p0

    move/from16 v1, v37

    invoke-virtual {v0, v1}, Lcom/google/android/mms/pdu/PduHeaders;->getOctet(I)I

    move-result v8

    .line 1804
    .local v8, "messageType":I
    const/16 v37, 0x8d

    move-object/from16 v0, p0

    move/from16 v1, v37

    invoke-virtual {v0, v1}, Lcom/google/android/mms/pdu/PduHeaders;->getOctet(I)I

    move-result v9

    .line 1805
    .local v9, "mmsVersion":I
    if-nez v9, :cond_1

    .line 1807
    const/16 v37, 0x0

    return v37

    .line 1811
    :cond_1
    packed-switch v8, :pswitch_data_0

    .line 2000
    const/16 v37, 0x0

    return v37

    .line 1814
    :pswitch_0
    const/16 v37, 0x84

    move-object/from16 v0, p0

    move/from16 v1, v37

    invoke-virtual {v0, v1}, Lcom/google/android/mms/pdu/PduHeaders;->getTextString(I)[B

    move-result-object v34

    .line 1815
    .local v34, "srContentType":[B
    if-nez v34, :cond_2

    .line 1816
    const/16 v37, 0x0

    return v37

    .line 1820
    :cond_2
    const/16 v37, 0x89

    move-object/from16 v0, p0

    move/from16 v1, v37

    invoke-virtual {v0, v1}, Lcom/google/android/mms/pdu/PduHeaders;->getEncodedStringValue(I)Lcom/google/android/mms/pdu/EncodedStringValue;

    move-result-object v35

    .line 1821
    .local v35, "srFrom":Lcom/google/android/mms/pdu/EncodedStringValue;
    if-nez v35, :cond_3

    .line 1822
    const/16 v37, 0x0

    return v37

    .line 1826
    :cond_3
    const/16 v37, 0x98

    move-object/from16 v0, p0

    move/from16 v1, v37

    invoke-virtual {v0, v1}, Lcom/google/android/mms/pdu/PduHeaders;->getTextString(I)[B

    move-result-object v36

    .line 1827
    .local v36, "srTransactionId":[B
    if-nez v36, :cond_15

    .line 1828
    const/16 v37, 0x0

    return v37

    .line 1834
    .end local v34    # "srContentType":[B
    .end local v35    # "srFrom":Lcom/google/android/mms/pdu/EncodedStringValue;
    .end local v36    # "srTransactionId":[B
    :pswitch_1
    const/16 v37, 0x92

    move-object/from16 v0, p0

    move/from16 v1, v37

    invoke-virtual {v0, v1}, Lcom/google/android/mms/pdu/PduHeaders;->getOctet(I)I

    move-result v32

    .line 1835
    .local v32, "scResponseStatus":I
    if-nez v32, :cond_4

    .line 1836
    const/16 v37, 0x0

    return v37

    .line 1840
    :cond_4
    const/16 v37, 0x98

    move-object/from16 v0, p0

    move/from16 v1, v37

    invoke-virtual {v0, v1}, Lcom/google/android/mms/pdu/PduHeaders;->getTextString(I)[B

    move-result-object v33

    .line 1841
    .local v33, "scTransactionId":[B
    if-nez v33, :cond_15

    .line 1842
    const/16 v37, 0x0

    return v37

    .line 1848
    .end local v32    # "scResponseStatus":I
    .end local v33    # "scTransactionId":[B
    :pswitch_2
    const/16 v37, 0x83

    move-object/from16 v0, p0

    move/from16 v1, v37

    invoke-virtual {v0, v1}, Lcom/google/android/mms/pdu/PduHeaders;->getTextString(I)[B

    move-result-object v10

    .line 1849
    .local v10, "niContentLocation":[B
    if-nez v10, :cond_5

    .line 1850
    const/16 v37, 0x0

    return v37

    .line 1854
    :cond_5
    const/16 v37, 0x88

    move-object/from16 v0, p0

    move/from16 v1, v37

    invoke-virtual {v0, v1}, Lcom/google/android/mms/pdu/PduHeaders;->getLongInteger(I)J

    move-result-wide v12

    .line 1855
    .local v12, "niExpiry":J
    const-wide/16 v38, -0x1

    cmp-long v37, v38, v12

    if-nez v37, :cond_6

    .line 1856
    const/16 v37, 0x0

    return v37

    .line 1860
    :cond_6
    const/16 v37, 0x8a

    move-object/from16 v0, p0

    move/from16 v1, v37

    invoke-virtual {v0, v1}, Lcom/google/android/mms/pdu/PduHeaders;->getTextString(I)[B

    move-result-object v11

    .line 1861
    .local v11, "niMessageClass":[B
    if-nez v11, :cond_7

    .line 1862
    const/16 v37, 0x0

    return v37

    .line 1866
    :cond_7
    const/16 v37, 0x8e

    move-object/from16 v0, p0

    move/from16 v1, v37

    invoke-virtual {v0, v1}, Lcom/google/android/mms/pdu/PduHeaders;->getLongInteger(I)J

    move-result-wide v14

    .line 1867
    .local v14, "niMessageSize":J
    const-wide/16 v38, -0x1

    cmp-long v37, v38, v14

    if-nez v37, :cond_8

    .line 1868
    const/16 v37, 0x0

    return v37

    .line 1872
    :cond_8
    const/16 v37, 0x98

    move-object/from16 v0, p0

    move/from16 v1, v37

    invoke-virtual {v0, v1}, Lcom/google/android/mms/pdu/PduHeaders;->getTextString(I)[B

    move-result-object v16

    .line 1873
    .local v16, "niTransactionId":[B
    if-nez v16, :cond_15

    .line 1874
    const/16 v37, 0x0

    return v37

    .line 1880
    .end local v10    # "niContentLocation":[B
    .end local v11    # "niMessageClass":[B
    .end local v12    # "niExpiry":J
    .end local v14    # "niMessageSize":J
    .end local v16    # "niTransactionId":[B
    :pswitch_3
    const/16 v37, 0x95

    move-object/from16 v0, p0

    move/from16 v1, v37

    invoke-virtual {v0, v1}, Lcom/google/android/mms/pdu/PduHeaders;->getOctet(I)I

    move-result v17

    .line 1881
    .local v17, "nriStatus":I
    if-nez v17, :cond_9

    .line 1882
    const/16 v37, 0x0

    return v37

    .line 1886
    :cond_9
    const/16 v37, 0x98

    move-object/from16 v0, p0

    move/from16 v1, v37

    invoke-virtual {v0, v1}, Lcom/google/android/mms/pdu/PduHeaders;->getTextString(I)[B

    move-result-object v18

    .line 1887
    .local v18, "nriTransactionId":[B
    if-nez v18, :cond_15

    .line 1888
    const/16 v37, 0x0

    return v37

    .line 1894
    .end local v17    # "nriStatus":I
    .end local v18    # "nriTransactionId":[B
    :pswitch_4
    const/16 v37, 0x84

    move-object/from16 v0, p0

    move/from16 v1, v37

    invoke-virtual {v0, v1}, Lcom/google/android/mms/pdu/PduHeaders;->getTextString(I)[B

    move-result-object v19

    .line 1895
    .local v19, "rcContentType":[B
    if-nez v19, :cond_a

    .line 1896
    const/16 v37, 0x0

    return v37

    .line 1900
    :cond_a
    const/16 v37, 0x85

    move-object/from16 v0, p0

    move/from16 v1, v37

    invoke-virtual {v0, v1}, Lcom/google/android/mms/pdu/PduHeaders;->getLongInteger(I)J

    move-result-wide v20

    .line 1901
    .local v20, "rcDate":J
    const-wide/16 v38, -0x1

    cmp-long v37, v38, v20

    if-nez v37, :cond_15

    .line 1902
    const/16 v37, 0x0

    return v37

    .line 1908
    .end local v19    # "rcContentType":[B
    .end local v20    # "rcDate":J
    :pswitch_5
    const/16 v37, 0x85

    move-object/from16 v0, p0

    move/from16 v1, v37

    invoke-virtual {v0, v1}, Lcom/google/android/mms/pdu/PduHeaders;->getLongInteger(I)J

    move-result-wide v4

    .line 1909
    .local v4, "diDate":J
    const-wide/16 v38, -0x1

    cmp-long v37, v38, v4

    if-nez v37, :cond_b

    .line 1910
    const/16 v37, 0x0

    return v37

    .line 1914
    :cond_b
    const/16 v37, 0x8b

    move-object/from16 v0, p0

    move/from16 v1, v37

    invoke-virtual {v0, v1}, Lcom/google/android/mms/pdu/PduHeaders;->getTextString(I)[B

    move-result-object v3

    .line 1915
    .local v3, "diMessageId":[B
    if-nez v3, :cond_c

    .line 1916
    const/16 v37, 0x0

    return v37

    .line 1920
    :cond_c
    const/16 v37, 0x95

    move-object/from16 v0, p0

    move/from16 v1, v37

    invoke-virtual {v0, v1}, Lcom/google/android/mms/pdu/PduHeaders;->getOctet(I)I

    move-result v6

    .line 1921
    .local v6, "diStatus":I
    if-nez v6, :cond_d

    .line 1922
    const/16 v37, 0x0

    return v37

    .line 1926
    :cond_d
    const/16 v37, 0x97

    move-object/from16 v0, p0

    move/from16 v1, v37

    invoke-virtual {v0, v1}, Lcom/google/android/mms/pdu/PduHeaders;->getEncodedStringValues(I)[Lcom/google/android/mms/pdu/EncodedStringValue;

    move-result-object v7

    .line 1927
    .local v7, "diTo":[Lcom/google/android/mms/pdu/EncodedStringValue;
    if-nez v7, :cond_15

    .line 1928
    const/16 v37, 0x0

    return v37

    .line 1934
    .end local v3    # "diMessageId":[B
    .end local v4    # "diDate":J
    .end local v6    # "diStatus":I
    .end local v7    # "diTo":[Lcom/google/android/mms/pdu/EncodedStringValue;
    :pswitch_6
    const/16 v37, 0x98

    move-object/from16 v0, p0

    move/from16 v1, v37

    invoke-virtual {v0, v1}, Lcom/google/android/mms/pdu/PduHeaders;->getTextString(I)[B

    move-result-object v2

    .line 1935
    .local v2, "aiTransactionId":[B
    if-nez v2, :cond_15

    .line 1936
    const/16 v37, 0x0

    return v37

    .line 1942
    .end local v2    # "aiTransactionId":[B
    :pswitch_7
    const/16 v37, 0x85

    move-object/from16 v0, p0

    move/from16 v1, v37

    invoke-virtual {v0, v1}, Lcom/google/android/mms/pdu/PduHeaders;->getLongInteger(I)J

    move-result-wide v22

    .line 1943
    .local v22, "roDate":J
    const-wide/16 v38, -0x1

    cmp-long v37, v38, v22

    if-nez v37, :cond_e

    .line 1944
    const/16 v37, 0x0

    return v37

    .line 1948
    :cond_e
    const/16 v37, 0x89

    move-object/from16 v0, p0

    move/from16 v1, v37

    invoke-virtual {v0, v1}, Lcom/google/android/mms/pdu/PduHeaders;->getEncodedStringValue(I)Lcom/google/android/mms/pdu/EncodedStringValue;

    move-result-object v24

    .line 1949
    .local v24, "roFrom":Lcom/google/android/mms/pdu/EncodedStringValue;
    if-nez v24, :cond_f

    .line 1950
    const/16 v37, 0x0

    return v37

    .line 1954
    :cond_f
    const/16 v37, 0x8b

    move-object/from16 v0, p0

    move/from16 v1, v37

    invoke-virtual {v0, v1}, Lcom/google/android/mms/pdu/PduHeaders;->getTextString(I)[B

    move-result-object v25

    .line 1955
    .local v25, "roMessageId":[B
    if-nez v25, :cond_10

    .line 1956
    const/16 v37, 0x0

    return v37

    .line 1960
    :cond_10
    const/16 v37, 0x9b

    move-object/from16 v0, p0

    move/from16 v1, v37

    invoke-virtual {v0, v1}, Lcom/google/android/mms/pdu/PduHeaders;->getOctet(I)I

    move-result v26

    .line 1961
    .local v26, "roReadStatus":I
    if-nez v26, :cond_11

    .line 1962
    const/16 v37, 0x0

    return v37

    .line 1966
    :cond_11
    const/16 v37, 0x97

    move-object/from16 v0, p0

    move/from16 v1, v37

    invoke-virtual {v0, v1}, Lcom/google/android/mms/pdu/PduHeaders;->getEncodedStringValues(I)[Lcom/google/android/mms/pdu/EncodedStringValue;

    move-result-object v27

    .line 1967
    .local v27, "roTo":[Lcom/google/android/mms/pdu/EncodedStringValue;
    if-nez v27, :cond_15

    .line 1968
    const/16 v37, 0x0

    return v37

    .line 1974
    .end local v22    # "roDate":J
    .end local v24    # "roFrom":Lcom/google/android/mms/pdu/EncodedStringValue;
    .end local v25    # "roMessageId":[B
    .end local v26    # "roReadStatus":I
    .end local v27    # "roTo":[Lcom/google/android/mms/pdu/EncodedStringValue;
    :pswitch_8
    const/16 v37, 0x89

    move-object/from16 v0, p0

    move/from16 v1, v37

    invoke-virtual {v0, v1}, Lcom/google/android/mms/pdu/PduHeaders;->getEncodedStringValue(I)Lcom/google/android/mms/pdu/EncodedStringValue;

    move-result-object v28

    .line 1975
    .local v28, "rrFrom":Lcom/google/android/mms/pdu/EncodedStringValue;
    if-nez v28, :cond_12

    .line 1976
    const/16 v37, 0x0

    return v37

    .line 1980
    :cond_12
    const/16 v37, 0x8b

    move-object/from16 v0, p0

    move/from16 v1, v37

    invoke-virtual {v0, v1}, Lcom/google/android/mms/pdu/PduHeaders;->getTextString(I)[B

    move-result-object v29

    .line 1981
    .local v29, "rrMessageId":[B
    if-nez v29, :cond_13

    .line 1982
    const/16 v37, 0x0

    return v37

    .line 1986
    :cond_13
    const/16 v37, 0x9b

    move-object/from16 v0, p0

    move/from16 v1, v37

    invoke-virtual {v0, v1}, Lcom/google/android/mms/pdu/PduHeaders;->getOctet(I)I

    move-result v30

    .line 1987
    .local v30, "rrReadStatus":I
    if-nez v30, :cond_14

    .line 1988
    const/16 v37, 0x0

    return v37

    .line 1992
    :cond_14
    const/16 v37, 0x97

    move-object/from16 v0, p0

    move/from16 v1, v37

    invoke-virtual {v0, v1}, Lcom/google/android/mms/pdu/PduHeaders;->getEncodedStringValues(I)[Lcom/google/android/mms/pdu/EncodedStringValue;

    move-result-object v31

    .line 1993
    .local v31, "rrTo":[Lcom/google/android/mms/pdu/EncodedStringValue;
    if-nez v31, :cond_15

    .line 1994
    const/16 v37, 0x0

    return v37

    .line 2003
    .end local v28    # "rrFrom":Lcom/google/android/mms/pdu/EncodedStringValue;
    .end local v29    # "rrMessageId":[B
    .end local v30    # "rrReadStatus":I
    .end local v31    # "rrTo":[Lcom/google/android/mms/pdu/EncodedStringValue;
    :cond_15
    const/16 v37, 0x1

    return v37

    .line 1811
    nop

    :pswitch_data_0
    .packed-switch 0x80
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_6
        :pswitch_5
        :pswitch_8
        :pswitch_7
    .end packed-switch
.end method

.method private static checkPartPosition(Lcom/google/android/mms/pdu/PduPart;)I
    .locals 5
    .param p0, "part"    # Lcom/google/android/mms/pdu/PduPart;

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 1760
    sget-boolean v2, Lcom/google/android/mms/pdu/MiuiPduParser;->-assertionsDisabled:Z

    if-nez v2, :cond_1

    if-eqz p0, :cond_0

    move v2, v3

    :goto_0
    if-nez v2, :cond_1

    new-instance v2, Ljava/lang/AssertionError;

    invoke-direct {v2}, Ljava/lang/AssertionError;-><init>()V

    throw v2

    :cond_0
    move v2, v4

    goto :goto_0

    .line 1761
    :cond_1
    sget-object v2, Lcom/google/android/mms/pdu/MiuiPduParser;->mTypeParam:[B

    if-nez v2, :cond_2

    .line 1762
    sget-object v2, Lcom/google/android/mms/pdu/MiuiPduParser;->mStartParam:[B

    if-nez v2, :cond_2

    .line 1763
    return v3

    .line 1767
    :cond_2
    sget-object v2, Lcom/google/android/mms/pdu/MiuiPduParser;->mStartParam:[B

    if-eqz v2, :cond_3

    .line 1768
    invoke-virtual {p0}, Lcom/google/android/mms/pdu/PduPart;->getContentId()[B

    move-result-object v0

    .line 1769
    .local v0, "contentId":[B
    if-eqz v0, :cond_3

    .line 1770
    sget-object v2, Lcom/google/android/mms/pdu/MiuiPduParser;->mStartParam:[B

    invoke-static {v2, v0}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 1771
    return v4

    .line 1777
    .end local v0    # "contentId":[B
    :cond_3
    sget-object v2, Lcom/google/android/mms/pdu/MiuiPduParser;->mTypeParam:[B

    if-eqz v2, :cond_4

    .line 1778
    invoke-virtual {p0}, Lcom/google/android/mms/pdu/PduPart;->getContentType()[B

    move-result-object v1

    .line 1779
    .local v1, "contentType":[B
    if-eqz v1, :cond_4

    .line 1780
    sget-object v2, Lcom/google/android/mms/pdu/MiuiPduParser;->mTypeParam:[B

    invoke-static {v2, v1}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 1781
    return v4

    .line 1786
    .end local v1    # "contentType":[B
    :cond_4
    return v3
.end method

.method protected static extractByteValue(Ljava/io/ByteArrayInputStream;)I
    .locals 4
    .param p0, "pduDataStream"    # Ljava/io/ByteArrayInputStream;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 1224
    sget-boolean v3, Lcom/google/android/mms/pdu/MiuiPduParser;->-assertionsDisabled:Z

    if-nez v3, :cond_1

    if-eqz p0, :cond_0

    move v3, v1

    :goto_0
    if-nez v3, :cond_1

    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    throw v1

    :cond_0
    move v3, v2

    goto :goto_0

    .line 1225
    :cond_1
    invoke-virtual {p0}, Ljava/io/ByteArrayInputStream;->read()I

    move-result v0

    .line 1226
    .local v0, "temp":I
    sget-boolean v3, Lcom/google/android/mms/pdu/MiuiPduParser;->-assertionsDisabled:Z

    if-nez v3, :cond_3

    const/4 v3, -0x1

    if-eq v3, v0, :cond_2

    :goto_1
    if-nez v1, :cond_3

    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    throw v1

    :cond_2
    move v1, v2

    goto :goto_1

    .line 1227
    :cond_3
    and-int/lit16 v1, v0, 0xff

    return v1
.end method

.method protected static getWapString(Ljava/io/ByteArrayInputStream;I)[B
    .locals 7
    .param p0, "pduDataStream"    # Ljava/io/ByteArrayInputStream;
    .param p1, "stringType"    # I

    .prologue
    const/4 v6, 0x0

    const/4 v3, 0x1

    const/4 v5, -0x1

    const/4 v4, 0x0

    .line 1190
    sget-boolean v2, Lcom/google/android/mms/pdu/MiuiPduParser;->-assertionsDisabled:Z

    if-nez v2, :cond_1

    if-eqz p0, :cond_0

    move v2, v3

    :goto_0
    if-nez v2, :cond_1

    new-instance v2, Ljava/lang/AssertionError;

    invoke-direct {v2}, Ljava/lang/AssertionError;-><init>()V

    throw v2

    :cond_0
    move v2, v4

    goto :goto_0

    .line 1191
    :cond_1
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 1192
    .local v0, "out":Ljava/io/ByteArrayOutputStream;
    invoke-virtual {p0}, Ljava/io/ByteArrayInputStream;->read()I

    move-result v1

    .line 1193
    .local v1, "temp":I
    sget-boolean v2, Lcom/google/android/mms/pdu/MiuiPduParser;->-assertionsDisabled:Z

    if-nez v2, :cond_3

    if-eq v5, v1, :cond_2

    move v2, v3

    :goto_1
    if-nez v2, :cond_3

    new-instance v2, Ljava/lang/AssertionError;

    invoke-direct {v2}, Ljava/lang/AssertionError;-><init>()V

    throw v2

    :cond_2
    move v2, v4

    goto :goto_1

    .line 1194
    :cond_3
    if-eq v5, v1, :cond_7

    if-eqz v1, :cond_7

    .line 1196
    const/4 v2, 0x2

    if-ne p1, v2, :cond_5

    .line 1197
    invoke-static {v1}, Lcom/google/android/mms/pdu/MiuiPduParser;->isTokenCharacter(I)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 1198
    invoke-virtual {v0, v1}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 1206
    :cond_4
    :goto_2
    invoke-virtual {p0}, Ljava/io/ByteArrayInputStream;->read()I

    move-result v1

    .line 1207
    sget-boolean v2, Lcom/google/android/mms/pdu/MiuiPduParser;->-assertionsDisabled:Z

    if-nez v2, :cond_3

    if-eq v5, v1, :cond_6

    move v2, v3

    :goto_3
    if-nez v2, :cond_3

    new-instance v2, Ljava/lang/AssertionError;

    invoke-direct {v2}, Ljava/lang/AssertionError;-><init>()V

    throw v2

    .line 1201
    :cond_5
    invoke-static {v1}, Lcom/google/android/mms/pdu/MiuiPduParser;->isText(I)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 1202
    invoke-virtual {v0, v1}, Ljava/io/ByteArrayOutputStream;->write(I)V

    goto :goto_2

    :cond_6
    move v2, v4

    .line 1207
    goto :goto_3

    .line 1210
    :cond_7
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->size()I

    move-result v2

    if-lez v2, :cond_8

    .line 1211
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v2

    return-object v2

    .line 1214
    :cond_8
    return-object v6
.end method

.method protected static isText(I)Z
    .locals 2
    .param p0, "ch"    # I

    .prologue
    const/4 v1, 0x1

    .line 1174
    const/16 v0, 0x20

    if-lt p0, v0, :cond_1

    const/16 v0, 0x7e

    if-gt p0, v0, :cond_1

    .line 1175
    :cond_0
    return v1

    .line 1174
    :cond_1
    const/16 v0, 0x80

    if-lt p0, v0, :cond_2

    const/16 v0, 0xff

    if-le p0, v0, :cond_0

    .line 1178
    :cond_2
    packed-switch p0, :pswitch_data_0

    .line 1185
    :pswitch_0
    const/4 v0, 0x0

    return v0

    .line 1182
    :pswitch_1
    return v1

    .line 1178
    :pswitch_data_0
    .packed-switch 0x9
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method protected static isTokenCharacter(I)Z
    .locals 2
    .param p0, "ch"    # I

    .prologue
    const/4 v1, 0x0

    .line 1130
    const/16 v0, 0x21

    if-lt p0, v0, :cond_0

    const/16 v0, 0x7e

    if-le p0, v0, :cond_1

    .line 1131
    :cond_0
    return v1

    .line 1134
    :cond_1
    sparse-switch p0, :sswitch_data_0

    .line 1155
    const/4 v0, 0x1

    return v0

    .line 1152
    :sswitch_0
    return v1

    .line 1134
    :sswitch_data_0
    .sparse-switch
        0x22 -> :sswitch_0
        0x28 -> :sswitch_0
        0x29 -> :sswitch_0
        0x2c -> :sswitch_0
        0x2f -> :sswitch_0
        0x3a -> :sswitch_0
        0x3b -> :sswitch_0
        0x3c -> :sswitch_0
        0x3d -> :sswitch_0
        0x3e -> :sswitch_0
        0x3f -> :sswitch_0
        0x40 -> :sswitch_0
        0x5b -> :sswitch_0
        0x5c -> :sswitch_0
        0x5d -> :sswitch_0
        0x7b -> :sswitch_0
        0x7d -> :sswitch_0
    .end sparse-switch
.end method

.method private static log(Ljava/lang/String;)V
    .locals 0
    .param p0, "text"    # Ljava/lang/String;

    .prologue
    .line 946
    return-void
.end method

.method protected static parseContentType(Ljava/io/ByteArrayInputStream;Ljava/util/HashMap;)[B
    .locals 11
    .param p0, "pduDataStream"    # Ljava/io/ByteArrayInputStream;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/ByteArrayInputStream;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Object;",
            ">;)[B"
        }
    .end annotation

    .prologue
    .line 1528
    .local p1, "map":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Integer;Ljava/lang/Object;>;"
    sget-boolean v9, Lcom/google/android/mms/pdu/MiuiPduParser;->-assertionsDisabled:Z

    if-nez v9, :cond_1

    if-eqz p0, :cond_0

    const/4 v9, 0x1

    :goto_0
    if-nez v9, :cond_1

    new-instance v9, Ljava/lang/AssertionError;

    invoke-direct {v9}, Ljava/lang/AssertionError;-><init>()V

    throw v9

    :cond_0
    const/4 v9, 0x0

    goto :goto_0

    .line 1530
    :cond_1
    const/4 v0, 0x0

    .line 1531
    .local v0, "contentType":[B
    const/4 v9, 0x1

    invoke-virtual {p0, v9}, Ljava/io/ByteArrayInputStream;->mark(I)V

    .line 1532
    invoke-virtual {p0}, Ljava/io/ByteArrayInputStream;->read()I

    move-result v8

    .line 1533
    .local v8, "temp":I
    sget-boolean v9, Lcom/google/android/mms/pdu/MiuiPduParser;->-assertionsDisabled:Z

    if-nez v9, :cond_3

    const/4 v9, -0x1

    if-eq v9, v8, :cond_2

    const/4 v9, 0x1

    :goto_1
    if-nez v9, :cond_3

    new-instance v9, Ljava/lang/AssertionError;

    invoke-direct {v9}, Ljava/lang/AssertionError;-><init>()V

    throw v9

    :cond_2
    const/4 v9, 0x0

    goto :goto_1

    .line 1534
    :cond_3
    invoke-virtual {p0}, Ljava/io/ByteArrayInputStream;->reset()V

    .line 1536
    and-int/lit16 v1, v8, 0xff

    .line 1538
    .local v1, "cur":I
    const/16 v9, 0x20

    if-ge v1, v9, :cond_a

    .line 1539
    invoke-static {p0}, Lcom/google/android/mms/pdu/MiuiPduParser;->parseValueLength(Ljava/io/ByteArrayInputStream;)I

    move-result v5

    .line 1540
    .local v5, "length":I
    invoke-virtual {p0}, Ljava/io/ByteArrayInputStream;->available()I

    move-result v7

    .line 1541
    .local v7, "startPos":I
    const/4 v9, 0x1

    invoke-virtual {p0, v9}, Ljava/io/ByteArrayInputStream;->mark(I)V

    .line 1542
    invoke-virtual {p0}, Ljava/io/ByteArrayInputStream;->read()I

    move-result v8

    .line 1543
    sget-boolean v9, Lcom/google/android/mms/pdu/MiuiPduParser;->-assertionsDisabled:Z

    if-nez v9, :cond_5

    const/4 v9, -0x1

    if-eq v9, v8, :cond_4

    const/4 v9, 0x1

    :goto_2
    if-nez v9, :cond_5

    new-instance v9, Ljava/lang/AssertionError;

    invoke-direct {v9}, Ljava/lang/AssertionError;-><init>()V

    throw v9

    :cond_4
    const/4 v9, 0x0

    goto :goto_2

    .line 1544
    :cond_5
    invoke-virtual {p0}, Ljava/io/ByteArrayInputStream;->reset()V

    .line 1545
    and-int/lit16 v3, v8, 0xff

    .line 1547
    .local v3, "first":I
    const/16 v9, 0x20

    if-lt v3, v9, :cond_7

    const/16 v9, 0x7f

    if-gt v3, v9, :cond_7

    .line 1548
    const/4 v9, 0x0

    invoke-static {p0, v9}, Lcom/google/android/mms/pdu/MiuiPduParser;->parseWapString(Ljava/io/ByteArrayInputStream;I)[B

    move-result-object v0

    .line 1563
    .local v0, "contentType":[B
    :goto_3
    invoke-virtual {p0}, Ljava/io/ByteArrayInputStream;->available()I

    move-result v2

    .line 1564
    .local v2, "endPos":I
    sub-int v9, v7, v2

    sub-int v6, v5, v9

    .line 1565
    .local v6, "parameterLen":I
    if-lez v6, :cond_6

    .line 1566
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-static {p0, p1, v9}, Lcom/google/android/mms/pdu/MiuiPduParser;->parseContentTypeParams(Ljava/io/ByteArrayInputStream;Ljava/util/HashMap;Ljava/lang/Integer;)V

    .line 1569
    :cond_6
    if-gez v6, :cond_b

    .line 1570
    const-string/jumbo v9, "MiuiPduParser"

    const-string/jumbo v10, "Corrupt MMS message"

    invoke-static {v9, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1571
    sget-object v9, Lcom/google/android/mms/pdu/PduContentTypes;->contentTypes:[Ljava/lang/String;

    const/4 v10, 0x0

    aget-object v9, v9, v10

    invoke-virtual {v9}, Ljava/lang/String;->getBytes()[B

    move-result-object v9

    return-object v9

    .line 1549
    .end local v2    # "endPos":I
    .end local v6    # "parameterLen":I
    .local v0, "contentType":[B
    :cond_7
    const/16 v9, 0x7f

    if-le v3, v9, :cond_9

    .line 1550
    invoke-static {p0}, Lcom/google/android/mms/pdu/MiuiPduParser;->parseShortInteger(Ljava/io/ByteArrayInputStream;)I

    move-result v4

    .line 1552
    .local v4, "index":I
    sget-object v9, Lcom/google/android/mms/pdu/PduContentTypes;->contentTypes:[Ljava/lang/String;

    array-length v9, v9

    if-ge v4, v9, :cond_8

    .line 1553
    sget-object v9, Lcom/google/android/mms/pdu/PduContentTypes;->contentTypes:[Ljava/lang/String;

    aget-object v9, v9, v4

    invoke-virtual {v9}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    .local v0, "contentType":[B
    goto :goto_3

    .line 1555
    .local v0, "contentType":[B
    :cond_8
    invoke-virtual {p0}, Ljava/io/ByteArrayInputStream;->reset()V

    .line 1556
    const/4 v9, 0x0

    invoke-static {p0, v9}, Lcom/google/android/mms/pdu/MiuiPduParser;->parseWapString(Ljava/io/ByteArrayInputStream;I)[B

    move-result-object v0

    .local v0, "contentType":[B
    goto :goto_3

    .line 1559
    .end local v4    # "index":I
    .local v0, "contentType":[B
    :cond_9
    const-string/jumbo v9, "MiuiPduParser"

    const-string/jumbo v10, "Corrupt content-type"

    invoke-static {v9, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1560
    sget-object v9, Lcom/google/android/mms/pdu/PduContentTypes;->contentTypes:[Ljava/lang/String;

    const/4 v10, 0x0

    aget-object v9, v9, v10

    invoke-virtual {v9}, Ljava/lang/String;->getBytes()[B

    move-result-object v9

    return-object v9

    .line 1573
    .end local v3    # "first":I
    .end local v5    # "length":I
    .end local v7    # "startPos":I
    :cond_a
    const/16 v9, 0x7f

    if-gt v1, v9, :cond_c

    .line 1574
    const/4 v9, 0x0

    invoke-static {p0, v9}, Lcom/google/android/mms/pdu/MiuiPduParser;->parseWapString(Ljava/io/ByteArrayInputStream;I)[B

    move-result-object v0

    .line 1580
    .local v0, "contentType":[B
    :cond_b
    :goto_4
    return-object v0

    .line 1577
    .local v0, "contentType":[B
    :cond_c
    sget-object v9, Lcom/google/android/mms/pdu/PduContentTypes;->contentTypes:[Ljava/lang/String;

    invoke-static {p0}, Lcom/google/android/mms/pdu/MiuiPduParser;->parseShortInteger(Ljava/io/ByteArrayInputStream;)I

    move-result v10

    aget-object v9, v9, v10

    invoke-virtual {v9}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    .local v0, "contentType":[B
    goto :goto_4
.end method

.method protected static parseContentTypeParams(Ljava/io/ByteArrayInputStream;Ljava/util/HashMap;Ljava/lang/Integer;)V
    .locals 20
    .param p0, "pduDataStream"    # Ljava/io/ByteArrayInputStream;
    .param p2, "length"    # Ljava/lang/Integer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/ByteArrayInputStream;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Object;",
            ">;",
            "Ljava/lang/Integer;",
            ")V"
        }
    .end annotation

    .prologue
    .line 1357
    .local p1, "map":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Integer;Ljava/lang/Object;>;"
    sget-boolean v18, Lcom/google/android/mms/pdu/MiuiPduParser;->-assertionsDisabled:Z

    if-nez v18, :cond_1

    if-eqz p0, :cond_0

    const/16 v18, 0x1

    :goto_0
    if-nez v18, :cond_1

    new-instance v18, Ljava/lang/AssertionError;

    invoke-direct/range {v18 .. v18}, Ljava/lang/AssertionError;-><init>()V

    throw v18

    :cond_0
    const/16 v18, 0x0

    goto :goto_0

    .line 1358
    :cond_1
    sget-boolean v18, Lcom/google/android/mms/pdu/MiuiPduParser;->-assertionsDisabled:Z

    if-nez v18, :cond_3

    invoke-virtual/range {p2 .. p2}, Ljava/lang/Integer;->intValue()I

    move-result v18

    if-lez v18, :cond_2

    const/16 v18, 0x1

    :goto_1
    if-nez v18, :cond_3

    new-instance v18, Ljava/lang/AssertionError;

    invoke-direct/range {v18 .. v18}, Ljava/lang/AssertionError;-><init>()V

    throw v18

    :cond_2
    const/16 v18, 0x0

    goto :goto_1

    .line 1360
    :cond_3
    invoke-virtual/range {p0 .. p0}, Ljava/io/ByteArrayInputStream;->available()I

    move-result v15

    .line 1361
    .local v15, "startPos":I
    const/16 v16, 0x0

    .line 1362
    .local v16, "tempPos":I
    invoke-virtual/range {p2 .. p2}, Ljava/lang/Integer;->intValue()I

    move-result v11

    .line 1363
    .local v11, "lastLen":I
    :goto_2
    if-lez v11, :cond_e

    .line 1364
    invoke-virtual/range {p0 .. p0}, Ljava/io/ByteArrayInputStream;->read()I

    move-result v13

    .line 1365
    .local v13, "param":I
    sget-boolean v18, Lcom/google/android/mms/pdu/MiuiPduParser;->-assertionsDisabled:Z

    if-nez v18, :cond_5

    const/16 v18, -0x1

    move/from16 v0, v18

    if-eq v0, v13, :cond_4

    const/16 v18, 0x1

    :goto_3
    if-nez v18, :cond_5

    new-instance v18, Ljava/lang/AssertionError;

    invoke-direct/range {v18 .. v18}, Ljava/lang/AssertionError;-><init>()V

    throw v18

    :cond_4
    const/16 v18, 0x0

    goto :goto_3

    .line 1366
    :cond_5
    add-int/lit8 v11, v11, -0x1

    .line 1368
    sparse-switch v13, :sswitch_data_0

    .line 1499
    move-object/from16 v0, p0

    invoke-static {v0, v11}, Lcom/google/android/mms/pdu/MiuiPduParser;->skipWapValue(Ljava/io/ByteArrayInputStream;I)I

    move-result v18

    const/16 v19, -0x1

    move/from16 v0, v19

    move/from16 v1, v18

    if-ne v0, v1, :cond_d

    .line 1500
    const-string/jumbo v18, "MiuiPduParser"

    const-string/jumbo v19, "Corrupt Content-Type"

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 1384
    :sswitch_0
    const/16 v18, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/io/ByteArrayInputStream;->mark(I)V

    .line 1385
    invoke-static/range {p0 .. p0}, Lcom/google/android/mms/pdu/MiuiPduParser;->extractByteValue(Ljava/io/ByteArrayInputStream;)I

    move-result v8

    .line 1386
    .local v8, "first":I
    invoke-virtual/range {p0 .. p0}, Ljava/io/ByteArrayInputStream;->reset()V

    .line 1387
    const/16 v18, 0x7f

    move/from16 v0, v18

    if-le v8, v0, :cond_7

    .line 1389
    invoke-static/range {p0 .. p0}, Lcom/google/android/mms/pdu/MiuiPduParser;->parseShortInteger(Ljava/io/ByteArrayInputStream;)I

    move-result v10

    .line 1391
    .local v10, "index":I
    sget-object v18, Lcom/google/android/mms/pdu/PduContentTypes;->contentTypes:[Ljava/lang/String;

    move-object/from16 v0, v18

    array-length v0, v0

    move/from16 v18, v0

    move/from16 v0, v18

    if-ge v10, v0, :cond_6

    .line 1392
    sget-object v18, Lcom/google/android/mms/pdu/PduContentTypes;->contentTypes:[Ljava/lang/String;

    aget-object v18, v18, v10

    invoke-virtual/range {v18 .. v18}, Ljava/lang/String;->getBytes()[B

    move-result-object v17

    .line 1393
    .local v17, "type":[B
    const/16 v18, 0x83

    invoke-static/range {v18 .. v18}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v18

    move-object/from16 v0, p1

    move-object/from16 v1, v18

    move-object/from16 v2, v17

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1405
    .end local v10    # "index":I
    .end local v17    # "type":[B
    :cond_6
    :goto_4
    invoke-virtual/range {p0 .. p0}, Ljava/io/ByteArrayInputStream;->available()I

    move-result v16

    .line 1406
    invoke-virtual/range {p2 .. p2}, Ljava/lang/Integer;->intValue()I

    move-result v18

    sub-int v19, v15, v16

    sub-int v11, v18, v19

    .line 1407
    goto/16 :goto_2

    .line 1399
    :cond_7
    const/16 v18, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-static {v0, v1}, Lcom/google/android/mms/pdu/MiuiPduParser;->parseWapString(Ljava/io/ByteArrayInputStream;I)[B

    move-result-object v17

    .line 1400
    .restart local v17    # "type":[B
    if-eqz v17, :cond_6

    if-eqz p1, :cond_6

    .line 1401
    const/16 v18, 0x83

    invoke-static/range {v18 .. v18}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v18

    move-object/from16 v0, p1

    move-object/from16 v1, v18

    move-object/from16 v2, v17

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_4

    .line 1424
    .end local v8    # "first":I
    .end local v17    # "type":[B
    :sswitch_1
    const/16 v18, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-static {v0, v1}, Lcom/google/android/mms/pdu/MiuiPduParser;->parseWapString(Ljava/io/ByteArrayInputStream;I)[B

    move-result-object v14

    .line 1425
    .local v14, "start":[B
    if-eqz v14, :cond_8

    if-eqz p1, :cond_8

    .line 1426
    const/16 v18, 0x99

    invoke-static/range {v18 .. v18}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v18

    move-object/from16 v0, p1

    move-object/from16 v1, v18

    invoke-virtual {v0, v1, v14}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1429
    :cond_8
    invoke-virtual/range {p0 .. p0}, Ljava/io/ByteArrayInputStream;->available()I

    move-result v16

    .line 1430
    invoke-virtual/range {p2 .. p2}, Ljava/lang/Integer;->intValue()I

    move-result v18

    sub-int v19, v15, v16

    sub-int v11, v18, v19

    .line 1431
    goto/16 :goto_2

    .line 1448
    .end local v14    # "start":[B
    :sswitch_2
    const/16 v18, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/io/ByteArrayInputStream;->mark(I)V

    .line 1449
    invoke-static/range {p0 .. p0}, Lcom/google/android/mms/pdu/MiuiPduParser;->extractByteValue(Ljava/io/ByteArrayInputStream;)I

    move-result v9

    .line 1450
    .local v9, "firstValue":I
    invoke-virtual/range {p0 .. p0}, Ljava/io/ByteArrayInputStream;->reset()V

    .line 1452
    const/16 v18, 0x20

    move/from16 v0, v18

    if-le v9, v0, :cond_b

    const/16 v18, 0x7f

    move/from16 v0, v18

    if-ge v9, v0, :cond_b

    .line 1455
    :cond_9
    const/16 v18, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-static {v0, v1}, Lcom/google/android/mms/pdu/MiuiPduParser;->parseWapString(Ljava/io/ByteArrayInputStream;I)[B

    move-result-object v6

    .line 1458
    .local v6, "charsetStr":[B
    :try_start_0
    new-instance v18, Ljava/lang/String;

    move-object/from16 v0, v18

    invoke-direct {v0, v6}, Ljava/lang/String;-><init>([B)V

    .line 1457
    invoke-static/range {v18 .. v18}, Lcom/google/android/mms/pdu/CharacterSets;->getMibEnumValue(Ljava/lang/String;)I

    move-result v5

    .line 1459
    .local v5, "charsetInt":I
    const/16 v18, 0x81

    invoke-static/range {v18 .. v18}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v18

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v19

    move-object/from16 v0, p1

    move-object/from16 v1, v18

    move-object/from16 v2, v19

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1473
    .end local v5    # "charsetInt":I
    .end local v6    # "charsetStr":[B
    :cond_a
    :goto_5
    invoke-virtual/range {p0 .. p0}, Ljava/io/ByteArrayInputStream;->available()I

    move-result v16

    .line 1474
    invoke-virtual/range {p2 .. p2}, Ljava/lang/Integer;->intValue()I

    move-result v18

    sub-int v19, v15, v16

    sub-int v11, v18, v19

    .line 1475
    goto/16 :goto_2

    .line 1453
    :cond_b
    if-eqz v9, :cond_9

    .line 1467
    invoke-static/range {p0 .. p0}, Lcom/google/android/mms/pdu/MiuiPduParser;->parseIntegerValue(Ljava/io/ByteArrayInputStream;)J

    move-result-wide v18

    move-wide/from16 v0, v18

    long-to-int v4, v0

    .line 1468
    .local v4, "charset":I
    if-eqz p1, :cond_a

    .line 1469
    const/16 v18, 0x81

    invoke-static/range {v18 .. v18}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v18

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v19

    move-object/from16 v0, p1

    move-object/from16 v1, v18

    move-object/from16 v2, v19

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_5

    .line 1460
    .end local v4    # "charset":I
    .restart local v6    # "charsetStr":[B
    :catch_0
    move-exception v7

    .line 1462
    .local v7, "e":Ljava/io/UnsupportedEncodingException;
    const-string/jumbo v18, "MiuiPduParser"

    invoke-static {v6}, Ljava/util/Arrays;->toString([B)Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-static {v0, v1, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1463
    const/16 v18, 0x81

    invoke-static/range {v18 .. v18}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v18

    const/16 v19, 0x0

    invoke-static/range {v19 .. v19}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v19

    move-object/from16 v0, p1

    move-object/from16 v1, v18

    move-object/from16 v2, v19

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_5

    .line 1487
    .end local v6    # "charsetStr":[B
    .end local v7    # "e":Ljava/io/UnsupportedEncodingException;
    .end local v9    # "firstValue":I
    :sswitch_3
    const/16 v18, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-static {v0, v1}, Lcom/google/android/mms/pdu/MiuiPduParser;->parseWapString(Ljava/io/ByteArrayInputStream;I)[B

    move-result-object v12

    .line 1488
    .local v12, "name":[B
    if-eqz v12, :cond_c

    if-eqz p1, :cond_c

    .line 1489
    const/16 v18, 0x97

    invoke-static/range {v18 .. v18}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v18

    move-object/from16 v0, p1

    move-object/from16 v1, v18

    invoke-virtual {v0, v1, v12}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1492
    :cond_c
    invoke-virtual/range {p0 .. p0}, Ljava/io/ByteArrayInputStream;->available()I

    move-result v16

    .line 1493
    invoke-virtual/range {p2 .. p2}, Ljava/lang/Integer;->intValue()I

    move-result v18

    sub-int v19, v15, v16

    sub-int v11, v18, v19

    .line 1494
    goto/16 :goto_2

    .line 1502
    .end local v12    # "name":[B
    :cond_d
    const/4 v11, 0x0

    goto/16 :goto_2

    .line 1508
    .end local v13    # "param":I
    :cond_e
    if-eqz v11, :cond_f

    .line 1509
    const-string/jumbo v18, "MiuiPduParser"

    const-string/jumbo v19, "Corrupt Content-Type"

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1338
    :cond_f
    return-void

    .line 1368
    nop

    :sswitch_data_0
    .sparse-switch
        0x81 -> :sswitch_2
        0x83 -> :sswitch_0
        0x85 -> :sswitch_3
        0x89 -> :sswitch_0
        0x8a -> :sswitch_1
        0x97 -> :sswitch_3
        0x99 -> :sswitch_1
    .end sparse-switch
.end method

.method protected static parseEncodedStringValue(Ljava/io/ByteArrayInputStream;)Lcom/google/android/mms/pdu/EncodedStringValue;
    .locals 10
    .param p0, "pduDataStream"    # Ljava/io/ByteArrayInputStream;

    .prologue
    const/4 v9, 0x0

    const/4 v6, 0x1

    const/4 v7, 0x0

    .line 1026
    sget-boolean v8, Lcom/google/android/mms/pdu/MiuiPduParser;->-assertionsDisabled:Z

    if-nez v8, :cond_1

    if-eqz p0, :cond_0

    move v8, v6

    :goto_0
    if-nez v8, :cond_1

    new-instance v6, Ljava/lang/AssertionError;

    invoke-direct {v6}, Ljava/lang/AssertionError;-><init>()V

    throw v6

    :cond_0
    move v8, v7

    goto :goto_0

    .line 1027
    :cond_1
    invoke-virtual {p0, v6}, Ljava/io/ByteArrayInputStream;->mark(I)V

    .line 1028
    const/4 v3, 0x0

    .line 1029
    .local v3, "returnValue":Lcom/google/android/mms/pdu/EncodedStringValue;
    const/4 v0, 0x0

    .line 1030
    .local v0, "charset":I
    invoke-virtual {p0}, Ljava/io/ByteArrayInputStream;->read()I

    move-result v4

    .line 1031
    .local v4, "temp":I
    sget-boolean v8, Lcom/google/android/mms/pdu/MiuiPduParser;->-assertionsDisabled:Z

    if-nez v8, :cond_3

    const/4 v8, -0x1

    if-eq v8, v4, :cond_2

    :goto_1
    if-nez v6, :cond_3

    new-instance v6, Ljava/lang/AssertionError;

    invoke-direct {v6}, Ljava/lang/AssertionError;-><init>()V

    throw v6

    :cond_2
    move v6, v7

    goto :goto_1

    .line 1032
    :cond_3
    and-int/lit16 v2, v4, 0xff

    .line 1033
    .local v2, "first":I
    if-nez v2, :cond_4

    .line 1034
    new-instance v6, Lcom/google/android/mms/pdu/EncodedStringValue;

    const-string/jumbo v7, ""

    invoke-direct {v6, v7}, Lcom/google/android/mms/pdu/EncodedStringValue;-><init>(Ljava/lang/String;)V

    return-object v6

    .line 1037
    :cond_4
    invoke-virtual {p0}, Ljava/io/ByteArrayInputStream;->reset()V

    .line 1038
    const/16 v6, 0x20

    if-ge v2, v6, :cond_5

    .line 1039
    invoke-static {p0}, Lcom/google/android/mms/pdu/MiuiPduParser;->parseValueLength(Ljava/io/ByteArrayInputStream;)I

    .line 1041
    invoke-static {p0}, Lcom/google/android/mms/pdu/MiuiPduParser;->parseShortInteger(Ljava/io/ByteArrayInputStream;)I

    move-result v0

    .line 1044
    :cond_5
    invoke-static {p0, v7}, Lcom/google/android/mms/pdu/MiuiPduParser;->parseWapString(Ljava/io/ByteArrayInputStream;I)[B

    move-result-object v5

    .line 1047
    .local v5, "textString":[B
    if-eqz v0, :cond_6

    .line 1048
    :try_start_0
    new-instance v3, Lcom/google/android/mms/pdu/EncodedStringValue;

    .end local v3    # "returnValue":Lcom/google/android/mms/pdu/EncodedStringValue;
    invoke-direct {v3, v0, v5}, Lcom/google/android/mms/pdu/EncodedStringValue;-><init>(I[B)V

    .line 1056
    .local v3, "returnValue":Lcom/google/android/mms/pdu/EncodedStringValue;
    :goto_2
    return-object v3

    .line 1050
    .local v3, "returnValue":Lcom/google/android/mms/pdu/EncodedStringValue;
    :cond_6
    new-instance v3, Lcom/google/android/mms/pdu/EncodedStringValue;

    .end local v3    # "returnValue":Lcom/google/android/mms/pdu/EncodedStringValue;
    invoke-direct {v3, v5}, Lcom/google/android/mms/pdu/EncodedStringValue;-><init>([B)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .local v3, "returnValue":Lcom/google/android/mms/pdu/EncodedStringValue;
    goto :goto_2

    .line 1052
    .end local v3    # "returnValue":Lcom/google/android/mms/pdu/EncodedStringValue;
    :catch_0
    move-exception v1

    .line 1053
    .local v1, "e":Ljava/lang/Exception;
    return-object v9
.end method

.method protected static parseIntegerValue(Ljava/io/ByteArrayInputStream;)J
    .locals 4
    .param p0, "pduDataStream"    # Ljava/io/ByteArrayInputStream;

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 1299
    sget-boolean v3, Lcom/google/android/mms/pdu/MiuiPduParser;->-assertionsDisabled:Z

    if-nez v3, :cond_1

    if-eqz p0, :cond_0

    move v3, v1

    :goto_0
    if-nez v3, :cond_1

    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    throw v1

    :cond_0
    move v3, v2

    goto :goto_0

    .line 1300
    :cond_1
    invoke-virtual {p0, v1}, Ljava/io/ByteArrayInputStream;->mark(I)V

    .line 1301
    invoke-virtual {p0}, Ljava/io/ByteArrayInputStream;->read()I

    move-result v0

    .line 1302
    .local v0, "temp":I
    sget-boolean v3, Lcom/google/android/mms/pdu/MiuiPduParser;->-assertionsDisabled:Z

    if-nez v3, :cond_3

    const/4 v3, -0x1

    if-eq v3, v0, :cond_2

    :goto_1
    if-nez v1, :cond_3

    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    throw v1

    :cond_2
    move v1, v2

    goto :goto_1

    .line 1303
    :cond_3
    invoke-virtual {p0}, Ljava/io/ByteArrayInputStream;->reset()V

    .line 1304
    const/16 v1, 0x7f

    if-le v0, v1, :cond_4

    .line 1305
    invoke-static {p0}, Lcom/google/android/mms/pdu/MiuiPduParser;->parseShortInteger(Ljava/io/ByteArrayInputStream;)I

    move-result v1

    int-to-long v2, v1

    return-wide v2

    .line 1307
    :cond_4
    invoke-static {p0}, Lcom/google/android/mms/pdu/MiuiPduParser;->parseLongInteger(Ljava/io/ByteArrayInputStream;)J

    move-result-wide v2

    return-wide v2
.end method

.method protected static parseLongInteger(Ljava/io/ByteArrayInputStream;)J
    .locals 12
    .param p0, "pduDataStream"    # Ljava/io/ByteArrayInputStream;

    .prologue
    const/16 v11, 0x8

    const/4 v10, -0x1

    const/4 v6, 0x1

    const/4 v7, 0x0

    .line 1267
    sget-boolean v5, Lcom/google/android/mms/pdu/MiuiPduParser;->-assertionsDisabled:Z

    if-nez v5, :cond_1

    if-eqz p0, :cond_0

    move v5, v6

    :goto_0
    if-nez v5, :cond_1

    new-instance v5, Ljava/lang/AssertionError;

    invoke-direct {v5}, Ljava/lang/AssertionError;-><init>()V

    throw v5

    :cond_0
    move v5, v7

    goto :goto_0

    .line 1268
    :cond_1
    invoke-virtual {p0}, Ljava/io/ByteArrayInputStream;->read()I

    move-result v4

    .line 1269
    .local v4, "temp":I
    sget-boolean v5, Lcom/google/android/mms/pdu/MiuiPduParser;->-assertionsDisabled:Z

    if-nez v5, :cond_3

    if-eq v10, v4, :cond_2

    move v5, v6

    :goto_1
    if-nez v5, :cond_3

    new-instance v5, Ljava/lang/AssertionError;

    invoke-direct {v5}, Ljava/lang/AssertionError;-><init>()V

    throw v5

    :cond_2
    move v5, v7

    goto :goto_1

    .line 1270
    :cond_3
    and-int/lit16 v0, v4, 0xff

    .line 1272
    .local v0, "count":I
    if-le v0, v11, :cond_4

    .line 1273
    new-instance v5, Ljava/lang/RuntimeException;

    const-string/jumbo v6, "Octet count greater than 8 and I can\'t represent that!"

    invoke-direct {v5, v6}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 1276
    :cond_4
    const-wide/16 v2, 0x0

    .line 1278
    .local v2, "result":J
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_2
    if-ge v1, v0, :cond_7

    .line 1279
    invoke-virtual {p0}, Ljava/io/ByteArrayInputStream;->read()I

    move-result v4

    .line 1280
    sget-boolean v5, Lcom/google/android/mms/pdu/MiuiPduParser;->-assertionsDisabled:Z

    if-nez v5, :cond_6

    if-eq v10, v4, :cond_5

    move v5, v6

    :goto_3
    if-nez v5, :cond_6

    new-instance v5, Ljava/lang/AssertionError;

    invoke-direct {v5}, Ljava/lang/AssertionError;-><init>()V

    throw v5

    :cond_5
    move v5, v7

    goto :goto_3

    .line 1281
    :cond_6
    shl-long/2addr v2, v11

    .line 1282
    and-int/lit16 v5, v4, 0xff

    int-to-long v8, v5

    add-long/2addr v2, v8

    .line 1278
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 1285
    :cond_7
    return-wide v2
.end method

.method protected static parseShortInteger(Ljava/io/ByteArrayInputStream;)I
    .locals 4
    .param p0, "pduDataStream"    # Ljava/io/ByteArrayInputStream;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 1244
    sget-boolean v3, Lcom/google/android/mms/pdu/MiuiPduParser;->-assertionsDisabled:Z

    if-nez v3, :cond_1

    if-eqz p0, :cond_0

    move v3, v1

    :goto_0
    if-nez v3, :cond_1

    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    throw v1

    :cond_0
    move v3, v2

    goto :goto_0

    .line 1245
    :cond_1
    invoke-virtual {p0}, Ljava/io/ByteArrayInputStream;->read()I

    move-result v0

    .line 1246
    .local v0, "temp":I
    sget-boolean v3, Lcom/google/android/mms/pdu/MiuiPduParser;->-assertionsDisabled:Z

    if-nez v3, :cond_3

    const/4 v3, -0x1

    if-eq v3, v0, :cond_2

    :goto_1
    if-nez v1, :cond_3

    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    throw v1

    :cond_2
    move v1, v2

    goto :goto_1

    .line 1247
    :cond_3
    and-int/lit8 v1, v0, 0x7f

    return v1
.end method

.method protected static parseUnsignedInt(Ljava/io/ByteArrayInputStream;)I
    .locals 5
    .param p0, "pduDataStream"    # Ljava/io/ByteArrayInputStream;

    .prologue
    const/4 v2, 0x0

    const/4 v4, -0x1

    .line 964
    sget-boolean v3, Lcom/google/android/mms/pdu/MiuiPduParser;->-assertionsDisabled:Z

    if-nez v3, :cond_1

    if-eqz p0, :cond_0

    const/4 v2, 0x1

    :cond_0
    if-nez v2, :cond_1

    new-instance v2, Ljava/lang/AssertionError;

    invoke-direct {v2}, Ljava/lang/AssertionError;-><init>()V

    throw v2

    .line 965
    :cond_1
    const/4 v0, 0x0

    .line 966
    .local v0, "result":I
    invoke-virtual {p0}, Ljava/io/ByteArrayInputStream;->read()I

    move-result v1

    .line 967
    .local v1, "temp":I
    if-ne v1, v4, :cond_2

    .line 968
    return v1

    .line 971
    :cond_2
    and-int/lit16 v2, v1, 0x80

    if-eqz v2, :cond_3

    .line 972
    shl-int/lit8 v0, v0, 0x7

    .line 973
    and-int/lit8 v2, v1, 0x7f

    or-int/2addr v0, v2

    .line 974
    invoke-virtual {p0}, Ljava/io/ByteArrayInputStream;->read()I

    move-result v1

    .line 975
    if-ne v1, v4, :cond_2

    .line 976
    return v1

    .line 980
    :cond_3
    shl-int/lit8 v0, v0, 0x7

    .line 981
    and-int/lit8 v2, v1, 0x7f

    or-int/2addr v0, v2

    .line 983
    return v0
.end method

.method protected static parseValueLength(Ljava/io/ByteArrayInputStream;)I
    .locals 5
    .param p0, "pduDataStream"    # Ljava/io/ByteArrayInputStream;

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 1001
    sget-boolean v4, Lcom/google/android/mms/pdu/MiuiPduParser;->-assertionsDisabled:Z

    if-nez v4, :cond_1

    if-eqz p0, :cond_0

    move v4, v2

    :goto_0
    if-nez v4, :cond_1

    new-instance v2, Ljava/lang/AssertionError;

    invoke-direct {v2}, Ljava/lang/AssertionError;-><init>()V

    throw v2

    :cond_0
    move v4, v3

    goto :goto_0

    .line 1002
    :cond_1
    invoke-virtual {p0}, Ljava/io/ByteArrayInputStream;->read()I

    move-result v1

    .line 1003
    .local v1, "temp":I
    sget-boolean v4, Lcom/google/android/mms/pdu/MiuiPduParser;->-assertionsDisabled:Z

    if-nez v4, :cond_3

    const/4 v4, -0x1

    if-eq v4, v1, :cond_2

    :goto_1
    if-nez v2, :cond_3

    new-instance v2, Ljava/lang/AssertionError;

    invoke-direct {v2}, Ljava/lang/AssertionError;-><init>()V

    throw v2

    :cond_2
    move v2, v3

    goto :goto_1

    .line 1004
    :cond_3
    and-int/lit16 v0, v1, 0xff

    .line 1006
    .local v0, "first":I
    const/16 v2, 0x1e

    if-gt v0, v2, :cond_4

    .line 1007
    return v0

    .line 1008
    :cond_4
    const/16 v2, 0x1f

    if-ne v0, v2, :cond_5

    .line 1009
    invoke-static {p0}, Lcom/google/android/mms/pdu/MiuiPduParser;->parseUnsignedInt(Ljava/io/ByteArrayInputStream;)I

    move-result v2

    return v2

    .line 1012
    :cond_5
    new-instance v2, Ljava/lang/RuntimeException;

    const-string/jumbo v3, "Value length > LENGTH_QUOTE!"

    invoke-direct {v2, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method protected static parseWapString(Ljava/io/ByteArrayInputStream;I)[B
    .locals 4
    .param p0, "pduDataStream"    # Ljava/io/ByteArrayInputStream;
    .param p1, "stringType"    # I

    .prologue
    const/4 v1, 0x0

    const/4 v2, 0x1

    .line 1068
    sget-boolean v3, Lcom/google/android/mms/pdu/MiuiPduParser;->-assertionsDisabled:Z

    if-nez v3, :cond_1

    if-eqz p0, :cond_0

    move v3, v2

    :goto_0
    if-nez v3, :cond_1

    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    throw v1

    :cond_0
    move v3, v1

    goto :goto_0

    .line 1086
    :cond_1
    invoke-virtual {p0, v2}, Ljava/io/ByteArrayInputStream;->mark(I)V

    .line 1089
    invoke-virtual {p0}, Ljava/io/ByteArrayInputStream;->read()I

    move-result v0

    .line 1090
    .local v0, "temp":I
    sget-boolean v3, Lcom/google/android/mms/pdu/MiuiPduParser;->-assertionsDisabled:Z

    if-nez v3, :cond_3

    const/4 v3, -0x1

    if-eq v3, v0, :cond_2

    move v1, v2

    :cond_2
    if-nez v1, :cond_3

    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    throw v1

    .line 1091
    :cond_3
    if-ne v2, p1, :cond_4

    .line 1092
    const/16 v1, 0x22

    if-ne v1, v0, :cond_4

    .line 1094
    invoke-virtual {p0, v2}, Ljava/io/ByteArrayInputStream;->mark(I)V

    .line 1109
    :goto_1
    invoke-static {p0, p1}, Lcom/google/android/mms/pdu/MiuiPduParser;->getWapString(Ljava/io/ByteArrayInputStream;I)[B

    move-result-object v1

    return-object v1

    .line 1095
    :cond_4
    if-nez p1, :cond_5

    .line 1096
    const/16 v1, 0x7f

    if-ne v1, v0, :cond_5

    .line 1098
    invoke-virtual {p0, v2}, Ljava/io/ByteArrayInputStream;->mark(I)V

    goto :goto_1

    .line 1101
    :cond_5
    invoke-virtual {p0}, Ljava/io/ByteArrayInputStream;->reset()V

    goto :goto_1
.end method

.method protected static skipWapValue(Ljava/io/ByteArrayInputStream;I)I
    .locals 4
    .param p0, "pduDataStream"    # Ljava/io/ByteArrayInputStream;
    .param p1, "length"    # I

    .prologue
    const/4 v3, 0x0

    .line 1319
    sget-boolean v2, Lcom/google/android/mms/pdu/MiuiPduParser;->-assertionsDisabled:Z

    if-nez v2, :cond_1

    if-eqz p0, :cond_0

    const/4 v2, 0x1

    :goto_0
    if-nez v2, :cond_1

    new-instance v2, Ljava/lang/AssertionError;

    invoke-direct {v2}, Ljava/lang/AssertionError;-><init>()V

    throw v2

    :cond_0
    move v2, v3

    goto :goto_0

    .line 1320
    :cond_1
    new-array v0, p1, [B

    .line 1321
    .local v0, "area":[B
    invoke-virtual {p0, v0, v3, p1}, Ljava/io/ByteArrayInputStream;->read([BII)I

    move-result v1

    .line 1322
    .local v1, "readLen":I
    if-ge v1, p1, :cond_2

    .line 1323
    const/4 v2, -0x1

    return v2

    .line 1325
    :cond_2
    return v1
.end method


# virtual methods
.method public parse()Lcom/google/android/mms/pdu/GenericPdu;
    .locals 15

    .prologue
    .line 108
    iget-object v13, p0, Lcom/google/android/mms/pdu/MiuiPduParser;->mPduDataStream:Ljava/io/ByteArrayInputStream;

    if-nez v13, :cond_0

    .line 109
    const/4 v13, 0x0

    return-object v13

    .line 113
    :cond_0
    iget-object v13, p0, Lcom/google/android/mms/pdu/MiuiPduParser;->mPduDataStream:Ljava/io/ByteArrayInputStream;

    invoke-virtual {p0, v13}, Lcom/google/android/mms/pdu/MiuiPduParser;->parseHeaders(Ljava/io/ByteArrayInputStream;)Lcom/google/android/mms/pdu/PduHeaders;

    move-result-object v13

    iput-object v13, p0, Lcom/google/android/mms/pdu/MiuiPduParser;->mHeaders:Lcom/google/android/mms/pdu/PduHeaders;

    .line 114
    iget-object v13, p0, Lcom/google/android/mms/pdu/MiuiPduParser;->mHeaders:Lcom/google/android/mms/pdu/PduHeaders;

    if-nez v13, :cond_1

    .line 116
    const/4 v13, 0x0

    return-object v13

    .line 120
    :cond_1
    iget-object v13, p0, Lcom/google/android/mms/pdu/MiuiPduParser;->mHeaders:Lcom/google/android/mms/pdu/PduHeaders;

    const/16 v14, 0x8c

    invoke-virtual {v13, v14}, Lcom/google/android/mms/pdu/PduHeaders;->getOctet(I)I

    move-result v5

    .line 123
    .local v5, "messageType":I
    iget-object v13, p0, Lcom/google/android/mms/pdu/MiuiPduParser;->mHeaders:Lcom/google/android/mms/pdu/PduHeaders;

    invoke-static {v13}, Lcom/google/android/mms/pdu/MiuiPduParser;->checkMandatoryHeader(Lcom/google/android/mms/pdu/PduHeaders;)Z

    move-result v13

    if-nez v13, :cond_2

    .line 124
    const-string/jumbo v13, "check mandatory headers failed!"

    invoke-static {v13}, Lcom/google/android/mms/pdu/MiuiPduParser;->log(Ljava/lang/String;)V

    .line 125
    const/4 v13, 0x0

    return-object v13

    .line 128
    :cond_2
    const/16 v13, 0x80

    if-eq v13, v5, :cond_3

    .line 129
    const/16 v13, 0x84

    if-ne v13, v5, :cond_4

    .line 131
    :cond_3
    iget-object v13, p0, Lcom/google/android/mms/pdu/MiuiPduParser;->mPduDataStream:Ljava/io/ByteArrayInputStream;

    invoke-virtual {p0, v13}, Lcom/google/android/mms/pdu/MiuiPduParser;->parseParts(Ljava/io/ByteArrayInputStream;)Lcom/google/android/mms/pdu/PduBody;

    move-result-object v13

    iput-object v13, p0, Lcom/google/android/mms/pdu/MiuiPduParser;->mBody:Lcom/google/android/mms/pdu/PduBody;

    .line 132
    iget-object v13, p0, Lcom/google/android/mms/pdu/MiuiPduParser;->mBody:Lcom/google/android/mms/pdu/PduBody;

    if-nez v13, :cond_4

    .line 134
    const/4 v13, 0x0

    return-object v13

    .line 138
    :cond_4
    packed-switch v5, :pswitch_data_0

    .line 222
    const-string/jumbo v13, "Parser doesn\'t support this message type in this version!"

    invoke-static {v13}, Lcom/google/android/mms/pdu/MiuiPduParser;->log(Ljava/lang/String;)V

    .line 223
    const/4 v13, 0x0

    return-object v13

    .line 143
    :pswitch_0
    new-instance v12, Lcom/google/android/mms/pdu/SendReq;

    iget-object v13, p0, Lcom/google/android/mms/pdu/MiuiPduParser;->mHeaders:Lcom/google/android/mms/pdu/PduHeaders;

    iget-object v14, p0, Lcom/google/android/mms/pdu/MiuiPduParser;->mBody:Lcom/google/android/mms/pdu/PduBody;

    invoke-direct {v12, v13, v14}, Lcom/google/android/mms/pdu/SendReq;-><init>(Lcom/google/android/mms/pdu/PduHeaders;Lcom/google/android/mms/pdu/PduBody;)V

    .line 144
    .local v12, "sendReq":Lcom/google/android/mms/pdu/SendReq;
    return-object v12

    .line 149
    .end local v12    # "sendReq":Lcom/google/android/mms/pdu/SendReq;
    :pswitch_1
    new-instance v11, Lcom/google/android/mms/pdu/SendConf;

    iget-object v13, p0, Lcom/google/android/mms/pdu/MiuiPduParser;->mHeaders:Lcom/google/android/mms/pdu/PduHeaders;

    invoke-direct {v11, v13}, Lcom/google/android/mms/pdu/SendConf;-><init>(Lcom/google/android/mms/pdu/PduHeaders;)V

    .line 150
    .local v11, "sendConf":Lcom/google/android/mms/pdu/SendConf;
    return-object v11

    .line 156
    .end local v11    # "sendConf":Lcom/google/android/mms/pdu/SendConf;
    :pswitch_2
    new-instance v6, Lcom/google/android/mms/pdu/NotificationInd;

    iget-object v13, p0, Lcom/google/android/mms/pdu/MiuiPduParser;->mHeaders:Lcom/google/android/mms/pdu/PduHeaders;

    invoke-direct {v6, v13}, Lcom/google/android/mms/pdu/NotificationInd;-><init>(Lcom/google/android/mms/pdu/PduHeaders;)V

    .line 157
    .local v6, "notificationInd":Lcom/google/android/mms/pdu/NotificationInd;
    return-object v6

    .line 163
    .end local v6    # "notificationInd":Lcom/google/android/mms/pdu/NotificationInd;
    :pswitch_3
    new-instance v7, Lcom/google/android/mms/pdu/NotifyRespInd;

    iget-object v13, p0, Lcom/google/android/mms/pdu/MiuiPduParser;->mHeaders:Lcom/google/android/mms/pdu/PduHeaders;

    invoke-direct {v7, v13}, Lcom/google/android/mms/pdu/NotifyRespInd;-><init>(Lcom/google/android/mms/pdu/PduHeaders;)V

    .line 164
    .local v7, "notifyRespInd":Lcom/google/android/mms/pdu/NotifyRespInd;
    return-object v7

    .line 170
    .end local v7    # "notifyRespInd":Lcom/google/android/mms/pdu/NotifyRespInd;
    :pswitch_4
    new-instance v10, Lcom/google/android/mms/pdu/RetrieveConf;

    iget-object v13, p0, Lcom/google/android/mms/pdu/MiuiPduParser;->mHeaders:Lcom/google/android/mms/pdu/PduHeaders;

    iget-object v14, p0, Lcom/google/android/mms/pdu/MiuiPduParser;->mBody:Lcom/google/android/mms/pdu/PduBody;

    invoke-direct {v10, v13, v14}, Lcom/google/android/mms/pdu/RetrieveConf;-><init>(Lcom/google/android/mms/pdu/PduHeaders;Lcom/google/android/mms/pdu/PduBody;)V

    .line 172
    .local v10, "retrieveConf":Lcom/google/android/mms/pdu/RetrieveConf;
    invoke-virtual {v10}, Lcom/google/android/mms/pdu/RetrieveConf;->getContentType()[B

    move-result-object v1

    .line 173
    .local v1, "contentType":[B
    if-nez v1, :cond_5

    .line 174
    const/4 v13, 0x0

    return-object v13

    .line 176
    :cond_5
    new-instance v2, Ljava/lang/String;

    invoke-direct {v2, v1}, Ljava/lang/String;-><init>([B)V

    .line 177
    .local v2, "ctTypeStr":Ljava/lang/String;
    const-string/jumbo v13, "application/vnd.wap.multipart.mixed"

    invoke-virtual {v2, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-nez v13, :cond_6

    .line 178
    const-string/jumbo v13, "application/vnd.wap.multipart.related"

    invoke-virtual {v2, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    .line 177
    if-nez v13, :cond_6

    .line 179
    const-string/jumbo v13, "application/vnd.wap.multipart.alternative"

    invoke-virtual {v2, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    .line 177
    if-eqz v13, :cond_7

    .line 183
    :cond_6
    return-object v10

    .line 184
    :cond_7
    const-string/jumbo v13, "application/vnd.wap.multipart.alternative"

    invoke-virtual {v2, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_8

    .line 187
    iget-object v13, p0, Lcom/google/android/mms/pdu/MiuiPduParser;->mBody:Lcom/google/android/mms/pdu/PduBody;

    const/4 v14, 0x0

    invoke-virtual {v13, v14}, Lcom/google/android/mms/pdu/PduBody;->getPart(I)Lcom/google/android/mms/pdu/PduPart;

    move-result-object v4

    .line 188
    .local v4, "firstPart":Lcom/google/android/mms/pdu/PduPart;
    iget-object v13, p0, Lcom/google/android/mms/pdu/MiuiPduParser;->mBody:Lcom/google/android/mms/pdu/PduBody;

    invoke-virtual {v13}, Lcom/google/android/mms/pdu/PduBody;->removeAll()V

    .line 189
    iget-object v13, p0, Lcom/google/android/mms/pdu/MiuiPduParser;->mBody:Lcom/google/android/mms/pdu/PduBody;

    const/4 v14, 0x0

    invoke-virtual {v13, v14, v4}, Lcom/google/android/mms/pdu/PduBody;->addPart(ILcom/google/android/mms/pdu/PduPart;)V

    .line 190
    return-object v10

    .line 192
    .end local v4    # "firstPart":Lcom/google/android/mms/pdu/PduPart;
    :cond_8
    const/4 v13, 0x0

    return-object v13

    .line 198
    .end local v1    # "contentType":[B
    .end local v2    # "ctTypeStr":Ljava/lang/String;
    .end local v10    # "retrieveConf":Lcom/google/android/mms/pdu/RetrieveConf;
    :pswitch_5
    new-instance v3, Lcom/google/android/mms/pdu/DeliveryInd;

    iget-object v13, p0, Lcom/google/android/mms/pdu/MiuiPduParser;->mHeaders:Lcom/google/android/mms/pdu/PduHeaders;

    invoke-direct {v3, v13}, Lcom/google/android/mms/pdu/DeliveryInd;-><init>(Lcom/google/android/mms/pdu/PduHeaders;)V

    .line 199
    .local v3, "deliveryInd":Lcom/google/android/mms/pdu/DeliveryInd;
    return-object v3

    .line 205
    .end local v3    # "deliveryInd":Lcom/google/android/mms/pdu/DeliveryInd;
    :pswitch_6
    new-instance v0, Lcom/google/android/mms/pdu/AcknowledgeInd;

    iget-object v13, p0, Lcom/google/android/mms/pdu/MiuiPduParser;->mHeaders:Lcom/google/android/mms/pdu/PduHeaders;

    invoke-direct {v0, v13}, Lcom/google/android/mms/pdu/AcknowledgeInd;-><init>(Lcom/google/android/mms/pdu/PduHeaders;)V

    .line 206
    .local v0, "acknowledgeInd":Lcom/google/android/mms/pdu/AcknowledgeInd;
    return-object v0

    .line 212
    .end local v0    # "acknowledgeInd":Lcom/google/android/mms/pdu/AcknowledgeInd;
    :pswitch_7
    new-instance v8, Lcom/google/android/mms/pdu/ReadOrigInd;

    iget-object v13, p0, Lcom/google/android/mms/pdu/MiuiPduParser;->mHeaders:Lcom/google/android/mms/pdu/PduHeaders;

    invoke-direct {v8, v13}, Lcom/google/android/mms/pdu/ReadOrigInd;-><init>(Lcom/google/android/mms/pdu/PduHeaders;)V

    .line 213
    .local v8, "readOrigInd":Lcom/google/android/mms/pdu/ReadOrigInd;
    return-object v8

    .line 219
    .end local v8    # "readOrigInd":Lcom/google/android/mms/pdu/ReadOrigInd;
    :pswitch_8
    new-instance v9, Lcom/google/android/mms/pdu/ReadRecInd;

    iget-object v13, p0, Lcom/google/android/mms/pdu/MiuiPduParser;->mHeaders:Lcom/google/android/mms/pdu/PduHeaders;

    invoke-direct {v9, v13}, Lcom/google/android/mms/pdu/ReadRecInd;-><init>(Lcom/google/android/mms/pdu/PduHeaders;)V

    .line 220
    .local v9, "readRecInd":Lcom/google/android/mms/pdu/ReadRecInd;
    return-object v9

    .line 138
    nop

    :pswitch_data_0
    .packed-switch 0x80
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_6
        :pswitch_5
        :pswitch_8
        :pswitch_7
    .end packed-switch
.end method

.method protected parseHeaders(Ljava/io/ByteArrayInputStream;)Lcom/google/android/mms/pdu/PduHeaders;
    .locals 38
    .param p1, "pduDataStream"    # Ljava/io/ByteArrayInputStream;

    .prologue
    .line 234
    if-nez p1, :cond_0

    .line 235
    const/16 v33, 0x0

    return-object v33

    .line 237
    :cond_0
    const/4 v15, 0x1

    .line 238
    .local v15, "keepParsing":Z
    new-instance v14, Lcom/google/android/mms/pdu/PduHeaders;

    invoke-direct {v14}, Lcom/google/android/mms/pdu/PduHeaders;-><init>()V

    .line 240
    .local v14, "headers":Lcom/google/android/mms/pdu/PduHeaders;
    :cond_1
    :goto_0
    if-eqz v15, :cond_e

    invoke-virtual/range {p1 .. p1}, Ljava/io/ByteArrayInputStream;->available()I

    move-result v33

    if-lez v33, :cond_e

    .line 241
    const/16 v33, 0x1

    move-object/from16 v0, p1

    move/from16 v1, v33

    invoke-virtual {v0, v1}, Ljava/io/ByteArrayInputStream;->mark(I)V

    .line 242
    invoke-static/range {p1 .. p1}, Lcom/google/android/mms/pdu/MiuiPduParser;->extractByteValue(Ljava/io/ByteArrayInputStream;)I

    move-result v13

    .line 244
    .local v13, "headerField":I
    const/16 v33, 0x20

    move/from16 v0, v33

    if-lt v13, v0, :cond_2

    const/16 v33, 0x7f

    move/from16 v0, v33

    if-gt v13, v0, :cond_2

    .line 245
    invoke-virtual/range {p1 .. p1}, Ljava/io/ByteArrayInputStream;->reset()V

    .line 246
    const/16 v33, 0x0

    move-object/from16 v0, p1

    move/from16 v1, v33

    invoke-static {v0, v1}, Lcom/google/android/mms/pdu/MiuiPduParser;->parseWapString(Ljava/io/ByteArrayInputStream;I)[B

    move-result-object v5

    .local v5, "bVal":[B
    goto :goto_0

    .line 253
    .end local v5    # "bVal":[B
    :cond_2
    packed-switch v13, :pswitch_data_0

    .line 818
    :pswitch_0
    const-string/jumbo v33, "Unknown header"

    invoke-static/range {v33 .. v33}, Lcom/google/android/mms/pdu/MiuiPduParser;->log(Ljava/lang/String;)V

    goto :goto_0

    .line 256
    :pswitch_1
    invoke-static/range {p1 .. p1}, Lcom/google/android/mms/pdu/MiuiPduParser;->extractByteValue(Ljava/io/ByteArrayInputStream;)I

    move-result v19

    .line 260
    .local v19, "messageType":I
    packed-switch v19, :pswitch_data_1

    .line 280
    :try_start_0
    move/from16 v0, v19

    invoke-virtual {v14, v0, v13}, Lcom/google/android/mms/pdu/PduHeaders;->setOctet(II)V
    :try_end_0
    .catch Lcom/google/android/mms/InvalidHeaderValueException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    .line 281
    :catch_0
    move-exception v7

    .line 282
    .local v7, "e":Lcom/google/android/mms/InvalidHeaderValueException;
    new-instance v33, Ljava/lang/StringBuilder;

    invoke-direct/range {v33 .. v33}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v34, "Set invalid Octet value: "

    invoke-virtual/range {v33 .. v34}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v33

    move-object/from16 v0, v33

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v33

    .line 283
    const-string/jumbo v34, " into the header filed: "

    .line 282
    invoke-virtual/range {v33 .. v34}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v33

    move-object/from16 v0, v33

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v33

    invoke-virtual/range {v33 .. v33}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v33

    invoke-static/range {v33 .. v33}, Lcom/google/android/mms/pdu/MiuiPduParser;->log(Ljava/lang/String;)V

    .line 284
    const/16 v33, 0x0

    return-object v33

    .line 277
    .end local v7    # "e":Lcom/google/android/mms/InvalidHeaderValueException;
    :pswitch_2
    const/16 v33, 0x0

    return-object v33

    .line 285
    :catch_1
    move-exception v9

    .line 286
    .local v9, "e":Ljava/lang/RuntimeException;
    new-instance v33, Ljava/lang/StringBuilder;

    invoke-direct/range {v33 .. v33}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v33

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v33

    const-string/jumbo v34, "is not Octet header field!"

    invoke-virtual/range {v33 .. v34}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v33

    invoke-virtual/range {v33 .. v33}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v33

    invoke-static/range {v33 .. v33}, Lcom/google/android/mms/pdu/MiuiPduParser;->log(Ljava/lang/String;)V

    .line 287
    const/16 v33, 0x0

    return-object v33

    .line 320
    .end local v9    # "e":Ljava/lang/RuntimeException;
    .end local v19    # "messageType":I
    :pswitch_3
    invoke-static/range {p1 .. p1}, Lcom/google/android/mms/pdu/MiuiPduParser;->extractByteValue(Ljava/io/ByteArrayInputStream;)I

    move-result v27

    .line 327
    .local v27, "value":I
    :try_start_1
    move/from16 v0, v27

    invoke-virtual {v14, v0, v13}, Lcom/google/android/mms/pdu/PduHeaders;->setOctet(II)V
    :try_end_1
    .catch Lcom/google/android/mms/InvalidHeaderValueException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_3

    goto/16 :goto_0

    .line 328
    :catch_2
    move-exception v7

    .line 329
    .restart local v7    # "e":Lcom/google/android/mms/InvalidHeaderValueException;
    new-instance v33, Ljava/lang/StringBuilder;

    invoke-direct/range {v33 .. v33}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v34, "Set invalid Octet value: "

    invoke-virtual/range {v33 .. v34}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v33

    move-object/from16 v0, v33

    move/from16 v1, v27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v33

    .line 330
    const-string/jumbo v34, " into the header filed: "

    .line 329
    invoke-virtual/range {v33 .. v34}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v33

    move-object/from16 v0, v33

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v33

    invoke-virtual/range {v33 .. v33}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v33

    invoke-static/range {v33 .. v33}, Lcom/google/android/mms/pdu/MiuiPduParser;->log(Ljava/lang/String;)V

    .line 331
    const/16 v33, 0x0

    return-object v33

    .line 332
    .end local v7    # "e":Lcom/google/android/mms/InvalidHeaderValueException;
    :catch_3
    move-exception v9

    .line 333
    .restart local v9    # "e":Ljava/lang/RuntimeException;
    new-instance v33, Ljava/lang/StringBuilder;

    invoke-direct/range {v33 .. v33}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v33

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v33

    const-string/jumbo v34, "is not Octet header field!"

    invoke-virtual/range {v33 .. v34}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v33

    invoke-virtual/range {v33 .. v33}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v33

    invoke-static/range {v33 .. v33}, Lcom/google/android/mms/pdu/MiuiPduParser;->log(Ljava/lang/String;)V

    .line 334
    const/16 v33, 0x0

    return-object v33

    .line 345
    .end local v9    # "e":Ljava/lang/RuntimeException;
    .end local v27    # "value":I
    :pswitch_4
    :try_start_2
    invoke-static/range {p1 .. p1}, Lcom/google/android/mms/pdu/MiuiPduParser;->parseLongInteger(Ljava/io/ByteArrayInputStream;)J

    move-result-wide v28

    .line 350
    .local v28, "value":J
    move-wide/from16 v0, v28

    invoke-virtual {v14, v0, v1, v13}, Lcom/google/android/mms/pdu/PduHeaders;->setLongInteger(JI)V
    :try_end_2
    .catch Ljava/lang/RuntimeException; {:try_start_2 .. :try_end_2} :catch_4

    goto/16 :goto_0

    .line 351
    .end local v28    # "value":J
    :catch_4
    move-exception v9

    .line 352
    .restart local v9    # "e":Ljava/lang/RuntimeException;
    new-instance v33, Ljava/lang/StringBuilder;

    invoke-direct/range {v33 .. v33}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v33

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v33

    const-string/jumbo v34, "is not Long-Integer header field!"

    invoke-virtual/range {v33 .. v34}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v33

    invoke-virtual/range {v33 .. v33}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v33

    invoke-static/range {v33 .. v33}, Lcom/google/android/mms/pdu/MiuiPduParser;->log(Ljava/lang/String;)V

    .line 353
    const/16 v33, 0x0

    return-object v33

    .line 364
    .end local v9    # "e":Ljava/lang/RuntimeException;
    :pswitch_5
    :try_start_3
    invoke-static/range {p1 .. p1}, Lcom/google/android/mms/pdu/MiuiPduParser;->parseIntegerValue(Ljava/io/ByteArrayInputStream;)J

    move-result-wide v28

    .line 369
    .restart local v28    # "value":J
    move-wide/from16 v0, v28

    invoke-virtual {v14, v0, v1, v13}, Lcom/google/android/mms/pdu/PduHeaders;->setLongInteger(JI)V
    :try_end_3
    .catch Ljava/lang/RuntimeException; {:try_start_3 .. :try_end_3} :catch_5

    goto/16 :goto_0

    .line 370
    .end local v28    # "value":J
    :catch_5
    move-exception v9

    .line 371
    .restart local v9    # "e":Ljava/lang/RuntimeException;
    new-instance v33, Ljava/lang/StringBuilder;

    invoke-direct/range {v33 .. v33}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v33

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v33

    const-string/jumbo v34, "is not Long-Integer header field!"

    invoke-virtual/range {v33 .. v34}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v33

    invoke-virtual/range {v33 .. v33}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v33

    invoke-static/range {v33 .. v33}, Lcom/google/android/mms/pdu/MiuiPduParser;->log(Ljava/lang/String;)V

    .line 372
    const/16 v33, 0x0

    return-object v33

    .line 398
    .end local v9    # "e":Ljava/lang/RuntimeException;
    :pswitch_6
    const/16 v33, 0x0

    move-object/from16 v0, p1

    move/from16 v1, v33

    invoke-static {v0, v1}, Lcom/google/android/mms/pdu/MiuiPduParser;->parseWapString(Ljava/io/ByteArrayInputStream;I)[B

    move-result-object v31

    .line 399
    .local v31, "value":[B
    if-eqz v31, :cond_1

    .line 405
    :try_start_4
    move-object/from16 v0, v31

    invoke-virtual {v14, v0, v13}, Lcom/google/android/mms/pdu/PduHeaders;->setTextString([BI)V
    :try_end_4
    .catch Ljava/lang/NullPointerException; {:try_start_4 .. :try_end_4} :catch_6
    .catch Ljava/lang/RuntimeException; {:try_start_4 .. :try_end_4} :catch_7

    goto/16 :goto_0

    .line 406
    :catch_6
    move-exception v8

    .line 407
    .local v8, "e":Ljava/lang/NullPointerException;
    const-string/jumbo v33, "null pointer error!"

    invoke-static/range {v33 .. v33}, Lcom/google/android/mms/pdu/MiuiPduParser;->log(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 408
    .end local v8    # "e":Ljava/lang/NullPointerException;
    :catch_7
    move-exception v9

    .line 409
    .restart local v9    # "e":Ljava/lang/RuntimeException;
    new-instance v33, Ljava/lang/StringBuilder;

    invoke-direct/range {v33 .. v33}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v33

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v33

    const-string/jumbo v34, "is not Text-String header field!"

    invoke-virtual/range {v33 .. v34}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v33

    invoke-virtual/range {v33 .. v33}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v33

    invoke-static/range {v33 .. v33}, Lcom/google/android/mms/pdu/MiuiPduParser;->log(Ljava/lang/String;)V

    .line 410
    const/16 v33, 0x0

    return-object v33

    .line 427
    .end local v9    # "e":Ljava/lang/RuntimeException;
    .end local v31    # "value":[B
    :pswitch_7
    invoke-static/range {p1 .. p1}, Lcom/google/android/mms/pdu/MiuiPduParser;->parseEncodedStringValue(Ljava/io/ByteArrayInputStream;)Lcom/google/android/mms/pdu/EncodedStringValue;

    move-result-object v30

    .line 428
    .local v30, "value":Lcom/google/android/mms/pdu/EncodedStringValue;
    if-eqz v30, :cond_1

    .line 434
    :try_start_5
    move-object/from16 v0, v30

    invoke-virtual {v14, v0, v13}, Lcom/google/android/mms/pdu/PduHeaders;->setEncodedStringValue(Lcom/google/android/mms/pdu/EncodedStringValue;I)V
    :try_end_5
    .catch Ljava/lang/NullPointerException; {:try_start_5 .. :try_end_5} :catch_8
    .catch Ljava/lang/RuntimeException; {:try_start_5 .. :try_end_5} :catch_9

    goto/16 :goto_0

    .line 435
    :catch_8
    move-exception v8

    .line 436
    .restart local v8    # "e":Ljava/lang/NullPointerException;
    const-string/jumbo v33, "null pointer error!"

    invoke-static/range {v33 .. v33}, Lcom/google/android/mms/pdu/MiuiPduParser;->log(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 437
    .end local v8    # "e":Ljava/lang/NullPointerException;
    :catch_9
    move-exception v9

    .line 438
    .restart local v9    # "e":Ljava/lang/RuntimeException;
    new-instance v33, Ljava/lang/StringBuilder;

    invoke-direct/range {v33 .. v33}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v33

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v33

    const-string/jumbo v34, "is not Encoded-String-Value header field!"

    invoke-virtual/range {v33 .. v34}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v33

    invoke-virtual/range {v33 .. v33}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v33

    invoke-static/range {v33 .. v33}, Lcom/google/android/mms/pdu/MiuiPduParser;->log(Ljava/lang/String;)V

    .line 439
    const/16 v33, 0x0

    return-object v33

    .line 451
    .end local v9    # "e":Ljava/lang/RuntimeException;
    .end local v30    # "value":Lcom/google/android/mms/pdu/EncodedStringValue;
    :pswitch_8
    invoke-static/range {p1 .. p1}, Lcom/google/android/mms/pdu/MiuiPduParser;->parseEncodedStringValue(Ljava/io/ByteArrayInputStream;)Lcom/google/android/mms/pdu/EncodedStringValue;

    move-result-object v30

    .line 452
    .restart local v30    # "value":Lcom/google/android/mms/pdu/EncodedStringValue;
    if-eqz v30, :cond_1

    .line 453
    invoke-virtual/range {v30 .. v30}, Lcom/google/android/mms/pdu/EncodedStringValue;->getTextString()[B

    move-result-object v4

    .line 454
    .local v4, "address":[B
    if-eqz v4, :cond_4

    .line 455
    new-instance v23, Ljava/lang/String;

    move-object/from16 v0, v23

    invoke-direct {v0, v4}, Ljava/lang/String;-><init>([B)V

    .line 460
    .local v23, "str":Ljava/lang/String;
    const-string/jumbo v33, "/"

    move-object/from16 v0, v23

    move-object/from16 v1, v33

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v10

    .line 461
    .local v10, "endIndex":I
    if-lez v10, :cond_3

    .line 462
    const/16 v33, 0x0

    move-object/from16 v0, v23

    move/from16 v1, v33

    invoke-virtual {v0, v1, v10}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v23

    .line 465
    :cond_3
    :try_start_6
    invoke-virtual/range {v23 .. v23}, Ljava/lang/String;->getBytes()[B

    move-result-object v33

    move-object/from16 v0, v30

    move-object/from16 v1, v33

    invoke-virtual {v0, v1}, Lcom/google/android/mms/pdu/EncodedStringValue;->setTextString([B)V
    :try_end_6
    .catch Ljava/lang/NullPointerException; {:try_start_6 .. :try_end_6} :catch_b

    .line 473
    .end local v10    # "endIndex":I
    .end local v23    # "str":Ljava/lang/String;
    :cond_4
    :try_start_7
    move-object/from16 v0, v30

    invoke-virtual {v14, v0, v13}, Lcom/google/android/mms/pdu/PduHeaders;->appendEncodedStringValue(Lcom/google/android/mms/pdu/EncodedStringValue;I)V
    :try_end_7
    .catch Ljava/lang/NullPointerException; {:try_start_7 .. :try_end_7} :catch_a
    .catch Ljava/lang/RuntimeException; {:try_start_7 .. :try_end_7} :catch_c

    goto/16 :goto_0

    .line 474
    :catch_a
    move-exception v8

    .line 475
    .restart local v8    # "e":Ljava/lang/NullPointerException;
    const-string/jumbo v33, "null pointer error!"

    invoke-static/range {v33 .. v33}, Lcom/google/android/mms/pdu/MiuiPduParser;->log(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 466
    .end local v8    # "e":Ljava/lang/NullPointerException;
    .restart local v10    # "endIndex":I
    .restart local v23    # "str":Ljava/lang/String;
    :catch_b
    move-exception v8

    .line 467
    .restart local v8    # "e":Ljava/lang/NullPointerException;
    const-string/jumbo v33, "null pointer error!"

    invoke-static/range {v33 .. v33}, Lcom/google/android/mms/pdu/MiuiPduParser;->log(Ljava/lang/String;)V

    .line 468
    const/16 v33, 0x0

    return-object v33

    .line 476
    .end local v8    # "e":Ljava/lang/NullPointerException;
    .end local v10    # "endIndex":I
    .end local v23    # "str":Ljava/lang/String;
    :catch_c
    move-exception v9

    .line 477
    .restart local v9    # "e":Ljava/lang/RuntimeException;
    new-instance v33, Ljava/lang/StringBuilder;

    invoke-direct/range {v33 .. v33}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v33

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v33

    const-string/jumbo v34, "is not Encoded-String-Value header field!"

    invoke-virtual/range {v33 .. v34}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v33

    invoke-virtual/range {v33 .. v33}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v33

    invoke-static/range {v33 .. v33}, Lcom/google/android/mms/pdu/MiuiPduParser;->log(Ljava/lang/String;)V

    .line 478
    const/16 v33, 0x0

    return-object v33

    .line 491
    .end local v4    # "address":[B
    .end local v9    # "e":Ljava/lang/RuntimeException;
    .end local v30    # "value":Lcom/google/android/mms/pdu/EncodedStringValue;
    :pswitch_9
    invoke-static/range {p1 .. p1}, Lcom/google/android/mms/pdu/MiuiPduParser;->parseValueLength(Ljava/io/ByteArrayInputStream;)I

    .line 494
    invoke-static/range {p1 .. p1}, Lcom/google/android/mms/pdu/MiuiPduParser;->extractByteValue(Ljava/io/ByteArrayInputStream;)I

    move-result v26

    .line 499
    .local v26, "token":I
    :try_start_8
    invoke-static/range {p1 .. p1}, Lcom/google/android/mms/pdu/MiuiPduParser;->parseLongInteger(Ljava/io/ByteArrayInputStream;)J
    :try_end_8
    .catch Ljava/lang/RuntimeException; {:try_start_8 .. :try_end_8} :catch_e

    move-result-wide v24

    .line 504
    .local v24, "timeValue":J
    const/16 v33, 0x81

    move/from16 v0, v33

    move/from16 v1, v26

    if-ne v0, v1, :cond_5

    .line 507
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v34

    const-wide/16 v36, 0x3e8

    div-long v34, v34, v36

    add-long v24, v24, v34

    .line 515
    :cond_5
    :try_start_9
    move-wide/from16 v0, v24

    invoke-virtual {v14, v0, v1, v13}, Lcom/google/android/mms/pdu/PduHeaders;->setLongInteger(JI)V
    :try_end_9
    .catch Ljava/lang/RuntimeException; {:try_start_9 .. :try_end_9} :catch_d

    goto/16 :goto_0

    .line 516
    :catch_d
    move-exception v9

    .line 517
    .restart local v9    # "e":Ljava/lang/RuntimeException;
    new-instance v33, Ljava/lang/StringBuilder;

    invoke-direct/range {v33 .. v33}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v33

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v33

    const-string/jumbo v34, "is not Long-Integer header field!"

    invoke-virtual/range {v33 .. v34}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v33

    invoke-virtual/range {v33 .. v33}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v33

    invoke-static/range {v33 .. v33}, Lcom/google/android/mms/pdu/MiuiPduParser;->log(Ljava/lang/String;)V

    .line 518
    const/16 v33, 0x0

    return-object v33

    .line 500
    .end local v9    # "e":Ljava/lang/RuntimeException;
    .end local v24    # "timeValue":J
    :catch_e
    move-exception v9

    .line 501
    .restart local v9    # "e":Ljava/lang/RuntimeException;
    new-instance v33, Ljava/lang/StringBuilder;

    invoke-direct/range {v33 .. v33}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v33

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v33

    const-string/jumbo v34, "is not Long-Integer header field!"

    invoke-virtual/range {v33 .. v34}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v33

    invoke-virtual/range {v33 .. v33}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v33

    invoke-static/range {v33 .. v33}, Lcom/google/android/mms/pdu/MiuiPduParser;->log(Ljava/lang/String;)V

    .line 502
    const/16 v33, 0x0

    return-object v33

    .line 528
    .end local v9    # "e":Ljava/lang/RuntimeException;
    .end local v26    # "token":I
    :pswitch_a
    const/4 v11, 0x0

    .line 529
    .local v11, "from":Lcom/google/android/mms/pdu/EncodedStringValue;
    invoke-static/range {p1 .. p1}, Lcom/google/android/mms/pdu/MiuiPduParser;->parseValueLength(Ljava/io/ByteArrayInputStream;)I

    .line 532
    invoke-static/range {p1 .. p1}, Lcom/google/android/mms/pdu/MiuiPduParser;->extractByteValue(Ljava/io/ByteArrayInputStream;)I

    move-result v12

    .line 535
    .local v12, "fromToken":I
    const/16 v33, 0x80

    move/from16 v0, v33

    if-ne v0, v12, :cond_8

    .line 537
    invoke-static/range {p1 .. p1}, Lcom/google/android/mms/pdu/MiuiPduParser;->parseEncodedStringValue(Ljava/io/ByteArrayInputStream;)Lcom/google/android/mms/pdu/EncodedStringValue;

    move-result-object v11

    .line 538
    .local v11, "from":Lcom/google/android/mms/pdu/EncodedStringValue;
    if-eqz v11, :cond_7

    .line 539
    invoke-virtual {v11}, Lcom/google/android/mms/pdu/EncodedStringValue;->getTextString()[B

    move-result-object v4

    .line 540
    .restart local v4    # "address":[B
    if-eqz v4, :cond_7

    .line 541
    new-instance v23, Ljava/lang/String;

    move-object/from16 v0, v23

    invoke-direct {v0, v4}, Ljava/lang/String;-><init>([B)V

    .line 542
    .restart local v23    # "str":Ljava/lang/String;
    const-string/jumbo v33, "/"

    move-object/from16 v0, v23

    move-object/from16 v1, v33

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v10

    .line 543
    .restart local v10    # "endIndex":I
    if-lez v10, :cond_6

    .line 544
    const/16 v33, 0x0

    move-object/from16 v0, v23

    move/from16 v1, v33

    invoke-virtual {v0, v1, v10}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v23

    .line 547
    :cond_6
    :try_start_a
    invoke-virtual/range {v23 .. v23}, Ljava/lang/String;->getBytes()[B

    move-result-object v33

    move-object/from16 v0, v33

    invoke-virtual {v11, v0}, Lcom/google/android/mms/pdu/EncodedStringValue;->setTextString([B)V
    :try_end_a
    .catch Ljava/lang/NullPointerException; {:try_start_a .. :try_end_a} :catch_10

    .line 569
    .end local v4    # "address":[B
    .end local v10    # "endIndex":I
    .end local v23    # "str":Ljava/lang/String;
    :cond_7
    :goto_1
    const/16 v33, 0x89

    :try_start_b
    move/from16 v0, v33

    invoke-virtual {v14, v11, v0}, Lcom/google/android/mms/pdu/PduHeaders;->setEncodedStringValue(Lcom/google/android/mms/pdu/EncodedStringValue;I)V
    :try_end_b
    .catch Ljava/lang/NullPointerException; {:try_start_b .. :try_end_b} :catch_f
    .catch Ljava/lang/RuntimeException; {:try_start_b .. :try_end_b} :catch_12

    goto/16 :goto_0

    .line 570
    :catch_f
    move-exception v8

    .line 571
    .restart local v8    # "e":Ljava/lang/NullPointerException;
    const-string/jumbo v33, "null pointer error!"

    invoke-static/range {v33 .. v33}, Lcom/google/android/mms/pdu/MiuiPduParser;->log(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 548
    .end local v8    # "e":Ljava/lang/NullPointerException;
    .restart local v4    # "address":[B
    .restart local v10    # "endIndex":I
    .restart local v23    # "str":Ljava/lang/String;
    :catch_10
    move-exception v8

    .line 549
    .restart local v8    # "e":Ljava/lang/NullPointerException;
    const-string/jumbo v33, "null pointer error!"

    invoke-static/range {v33 .. v33}, Lcom/google/android/mms/pdu/MiuiPduParser;->log(Ljava/lang/String;)V

    .line 550
    const/16 v33, 0x0

    return-object v33

    .line 556
    .end local v4    # "address":[B
    .end local v8    # "e":Ljava/lang/NullPointerException;
    .end local v10    # "endIndex":I
    .end local v23    # "str":Ljava/lang/String;
    .local v11, "from":Lcom/google/android/mms/pdu/EncodedStringValue;
    :cond_8
    :try_start_c
    new-instance v11, Lcom/google/android/mms/pdu/EncodedStringValue;

    .line 557
    .end local v11    # "from":Lcom/google/android/mms/pdu/EncodedStringValue;
    const-string/jumbo v33, "insert-address-token"

    invoke-virtual/range {v33 .. v33}, Ljava/lang/String;->getBytes()[B

    move-result-object v33

    .line 556
    move-object/from16 v0, v33

    invoke-direct {v11, v0}, Lcom/google/android/mms/pdu/EncodedStringValue;-><init>([B)V
    :try_end_c
    .catch Ljava/lang/NullPointerException; {:try_start_c .. :try_end_c} :catch_11

    .local v11, "from":Lcom/google/android/mms/pdu/EncodedStringValue;
    goto :goto_1

    .line 558
    .end local v11    # "from":Lcom/google/android/mms/pdu/EncodedStringValue;
    :catch_11
    move-exception v8

    .line 559
    .restart local v8    # "e":Ljava/lang/NullPointerException;
    new-instance v33, Ljava/lang/StringBuilder;

    invoke-direct/range {v33 .. v33}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v33

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v33

    const-string/jumbo v34, "is not Encoded-String-Value header field!"

    invoke-virtual/range {v33 .. v34}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v33

    invoke-virtual/range {v33 .. v33}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v33

    invoke-static/range {v33 .. v33}, Lcom/google/android/mms/pdu/MiuiPduParser;->log(Ljava/lang/String;)V

    .line 560
    const/16 v33, 0x0

    return-object v33

    .line 572
    .end local v8    # "e":Ljava/lang/NullPointerException;
    .restart local v11    # "from":Lcom/google/android/mms/pdu/EncodedStringValue;
    :catch_12
    move-exception v9

    .line 573
    .restart local v9    # "e":Ljava/lang/RuntimeException;
    new-instance v33, Ljava/lang/StringBuilder;

    invoke-direct/range {v33 .. v33}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v33

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v33

    const-string/jumbo v34, "is not Encoded-String-Value header field!"

    invoke-virtual/range {v33 .. v34}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v33

    invoke-virtual/range {v33 .. v33}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v33

    invoke-static/range {v33 .. v33}, Lcom/google/android/mms/pdu/MiuiPduParser;->log(Ljava/lang/String;)V

    .line 574
    const/16 v33, 0x0

    return-object v33

    .line 581
    .end local v9    # "e":Ljava/lang/RuntimeException;
    .end local v11    # "from":Lcom/google/android/mms/pdu/EncodedStringValue;
    .end local v12    # "fromToken":I
    :pswitch_b
    const/16 v33, 0x1

    move-object/from16 v0, p1

    move/from16 v1, v33

    invoke-virtual {v0, v1}, Ljava/io/ByteArrayInputStream;->mark(I)V

    .line 582
    invoke-static/range {p1 .. p1}, Lcom/google/android/mms/pdu/MiuiPduParser;->extractByteValue(Ljava/io/ByteArrayInputStream;)I

    move-result v17

    .line 588
    .local v17, "messageClass":I
    const/16 v33, 0x80

    move/from16 v0, v17

    move/from16 v1, v33

    if-lt v0, v1, :cond_c

    .line 591
    const/16 v33, 0x80

    move/from16 v0, v33

    move/from16 v1, v17

    if-ne v0, v1, :cond_9

    .line 593
    :try_start_d
    const-string/jumbo v33, "personal"

    invoke-virtual/range {v33 .. v33}, Ljava/lang/String;->getBytes()[B

    move-result-object v33

    .line 594
    const/16 v34, 0x8a

    .line 592
    move-object/from16 v0, v33

    move/from16 v1, v34

    invoke-virtual {v14, v0, v1}, Lcom/google/android/mms/pdu/PduHeaders;->setTextString([BI)V
    :try_end_d
    .catch Ljava/lang/NullPointerException; {:try_start_d .. :try_end_d} :catch_13
    .catch Ljava/lang/RuntimeException; {:try_start_d .. :try_end_d} :catch_14

    goto/16 :goto_0

    .line 608
    :catch_13
    move-exception v8

    .line 609
    .restart local v8    # "e":Ljava/lang/NullPointerException;
    const-string/jumbo v33, "null pointer error!"

    invoke-static/range {v33 .. v33}, Lcom/google/android/mms/pdu/MiuiPduParser;->log(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 595
    .end local v8    # "e":Ljava/lang/NullPointerException;
    :cond_9
    const/16 v33, 0x81

    move/from16 v0, v33

    move/from16 v1, v17

    if-ne v0, v1, :cond_a

    .line 597
    :try_start_e
    const-string/jumbo v33, "advertisement"

    invoke-virtual/range {v33 .. v33}, Ljava/lang/String;->getBytes()[B

    move-result-object v33

    .line 598
    const/16 v34, 0x8a

    .line 596
    move-object/from16 v0, v33

    move/from16 v1, v34

    invoke-virtual {v14, v0, v1}, Lcom/google/android/mms/pdu/PduHeaders;->setTextString([BI)V
    :try_end_e
    .catch Ljava/lang/NullPointerException; {:try_start_e .. :try_end_e} :catch_13
    .catch Ljava/lang/RuntimeException; {:try_start_e .. :try_end_e} :catch_14

    goto/16 :goto_0

    .line 610
    :catch_14
    move-exception v9

    .line 611
    .restart local v9    # "e":Ljava/lang/RuntimeException;
    new-instance v33, Ljava/lang/StringBuilder;

    invoke-direct/range {v33 .. v33}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v33

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v33

    const-string/jumbo v34, "is not Text-String header field!"

    invoke-virtual/range {v33 .. v34}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v33

    invoke-virtual/range {v33 .. v33}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v33

    invoke-static/range {v33 .. v33}, Lcom/google/android/mms/pdu/MiuiPduParser;->log(Ljava/lang/String;)V

    .line 612
    const/16 v33, 0x0

    return-object v33

    .line 599
    .end local v9    # "e":Ljava/lang/RuntimeException;
    :cond_a
    const/16 v33, 0x82

    move/from16 v0, v33

    move/from16 v1, v17

    if-ne v0, v1, :cond_b

    .line 601
    :try_start_f
    const-string/jumbo v33, "informational"

    invoke-virtual/range {v33 .. v33}, Ljava/lang/String;->getBytes()[B

    move-result-object v33

    .line 602
    const/16 v34, 0x8a

    .line 600
    move-object/from16 v0, v33

    move/from16 v1, v34

    invoke-virtual {v14, v0, v1}, Lcom/google/android/mms/pdu/PduHeaders;->setTextString([BI)V

    goto/16 :goto_0

    .line 603
    :cond_b
    const/16 v33, 0x83

    move/from16 v0, v33

    move/from16 v1, v17

    if-ne v0, v1, :cond_1

    .line 605
    const-string/jumbo v33, "auto"

    invoke-virtual/range {v33 .. v33}, Ljava/lang/String;->getBytes()[B

    move-result-object v33

    .line 606
    const/16 v34, 0x8a

    .line 604
    move-object/from16 v0, v33

    move/from16 v1, v34

    invoke-virtual {v14, v0, v1}, Lcom/google/android/mms/pdu/PduHeaders;->setTextString([BI)V
    :try_end_f
    .catch Ljava/lang/NullPointerException; {:try_start_f .. :try_end_f} :catch_13
    .catch Ljava/lang/RuntimeException; {:try_start_f .. :try_end_f} :catch_14

    goto/16 :goto_0

    .line 616
    :cond_c
    invoke-virtual/range {p1 .. p1}, Ljava/io/ByteArrayInputStream;->reset()V

    .line 617
    const/16 v33, 0x0

    move-object/from16 v0, p1

    move/from16 v1, v33

    invoke-static {v0, v1}, Lcom/google/android/mms/pdu/MiuiPduParser;->parseWapString(Ljava/io/ByteArrayInputStream;I)[B

    move-result-object v18

    .line 618
    .local v18, "messageClassString":[B
    if-eqz v18, :cond_1

    .line 620
    const/16 v33, 0x8a

    :try_start_10
    move-object/from16 v0, v18

    move/from16 v1, v33

    invoke-virtual {v14, v0, v1}, Lcom/google/android/mms/pdu/PduHeaders;->setTextString([BI)V
    :try_end_10
    .catch Ljava/lang/NullPointerException; {:try_start_10 .. :try_end_10} :catch_15
    .catch Ljava/lang/RuntimeException; {:try_start_10 .. :try_end_10} :catch_16

    goto/16 :goto_0

    .line 621
    :catch_15
    move-exception v8

    .line 622
    .restart local v8    # "e":Ljava/lang/NullPointerException;
    const-string/jumbo v33, "null pointer error!"

    invoke-static/range {v33 .. v33}, Lcom/google/android/mms/pdu/MiuiPduParser;->log(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 623
    .end local v8    # "e":Ljava/lang/NullPointerException;
    :catch_16
    move-exception v9

    .line 624
    .restart local v9    # "e":Ljava/lang/RuntimeException;
    new-instance v33, Ljava/lang/StringBuilder;

    invoke-direct/range {v33 .. v33}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v33

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v33

    const-string/jumbo v34, "is not Text-String header field!"

    invoke-virtual/range {v33 .. v34}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v33

    invoke-virtual/range {v33 .. v33}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v33

    invoke-static/range {v33 .. v33}, Lcom/google/android/mms/pdu/MiuiPduParser;->log(Ljava/lang/String;)V

    .line 625
    const/16 v33, 0x0

    return-object v33

    .line 633
    .end local v9    # "e":Ljava/lang/RuntimeException;
    .end local v17    # "messageClass":I
    .end local v18    # "messageClassString":[B
    :pswitch_c
    invoke-static/range {p1 .. p1}, Lcom/google/android/mms/pdu/MiuiPduParser;->parseShortInteger(Ljava/io/ByteArrayInputStream;)I

    move-result v32

    .line 640
    .local v32, "version":I
    const/16 v33, 0x8d

    :try_start_11
    move/from16 v0, v32

    move/from16 v1, v33

    invoke-virtual {v14, v0, v1}, Lcom/google/android/mms/pdu/PduHeaders;->setOctet(II)V
    :try_end_11
    .catch Lcom/google/android/mms/InvalidHeaderValueException; {:try_start_11 .. :try_end_11} :catch_17
    .catch Ljava/lang/RuntimeException; {:try_start_11 .. :try_end_11} :catch_18

    goto/16 :goto_0

    .line 641
    :catch_17
    move-exception v7

    .line 642
    .restart local v7    # "e":Lcom/google/android/mms/InvalidHeaderValueException;
    new-instance v33, Ljava/lang/StringBuilder;

    invoke-direct/range {v33 .. v33}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v34, "Set invalid Octet value: "

    invoke-virtual/range {v33 .. v34}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v33

    move-object/from16 v0, v33

    move/from16 v1, v32

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v33

    .line 643
    const-string/jumbo v34, " into the header filed: "

    .line 642
    invoke-virtual/range {v33 .. v34}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v33

    move-object/from16 v0, v33

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v33

    invoke-virtual/range {v33 .. v33}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v33

    invoke-static/range {v33 .. v33}, Lcom/google/android/mms/pdu/MiuiPduParser;->log(Ljava/lang/String;)V

    .line 644
    const/16 v33, 0x0

    return-object v33

    .line 645
    .end local v7    # "e":Lcom/google/android/mms/InvalidHeaderValueException;
    :catch_18
    move-exception v9

    .line 646
    .restart local v9    # "e":Ljava/lang/RuntimeException;
    new-instance v33, Ljava/lang/StringBuilder;

    invoke-direct/range {v33 .. v33}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v33

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v33

    const-string/jumbo v34, "is not Octet header field!"

    invoke-virtual/range {v33 .. v34}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v33

    invoke-virtual/range {v33 .. v33}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v33

    invoke-static/range {v33 .. v33}, Lcom/google/android/mms/pdu/MiuiPduParser;->log(Ljava/lang/String;)V

    .line 647
    const/16 v33, 0x0

    return-object v33

    .line 656
    .end local v9    # "e":Ljava/lang/RuntimeException;
    .end local v32    # "version":I
    :pswitch_d
    invoke-static/range {p1 .. p1}, Lcom/google/android/mms/pdu/MiuiPduParser;->parseValueLength(Ljava/io/ByteArrayInputStream;)I

    .line 660
    :try_start_12
    invoke-static/range {p1 .. p1}, Lcom/google/android/mms/pdu/MiuiPduParser;->parseIntegerValue(Ljava/io/ByteArrayInputStream;)J
    :try_end_12
    .catch Ljava/lang/RuntimeException; {:try_start_12 .. :try_end_12} :catch_1a

    .line 668
    invoke-static/range {p1 .. p1}, Lcom/google/android/mms/pdu/MiuiPduParser;->parseEncodedStringValue(Ljava/io/ByteArrayInputStream;)Lcom/google/android/mms/pdu/EncodedStringValue;

    move-result-object v22

    .line 669
    .local v22, "previouslySentBy":Lcom/google/android/mms/pdu/EncodedStringValue;
    if-eqz v22, :cond_1

    .line 676
    const/16 v33, 0xa0

    .line 675
    :try_start_13
    move-object/from16 v0, v22

    move/from16 v1, v33

    invoke-virtual {v14, v0, v1}, Lcom/google/android/mms/pdu/PduHeaders;->setEncodedStringValue(Lcom/google/android/mms/pdu/EncodedStringValue;I)V
    :try_end_13
    .catch Ljava/lang/NullPointerException; {:try_start_13 .. :try_end_13} :catch_19
    .catch Ljava/lang/RuntimeException; {:try_start_13 .. :try_end_13} :catch_1b

    goto/16 :goto_0

    .line 677
    :catch_19
    move-exception v8

    .line 678
    .restart local v8    # "e":Ljava/lang/NullPointerException;
    const-string/jumbo v33, "null pointer error!"

    invoke-static/range {v33 .. v33}, Lcom/google/android/mms/pdu/MiuiPduParser;->log(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 661
    .end local v8    # "e":Ljava/lang/NullPointerException;
    .end local v22    # "previouslySentBy":Lcom/google/android/mms/pdu/EncodedStringValue;
    :catch_1a
    move-exception v9

    .line 662
    .restart local v9    # "e":Ljava/lang/RuntimeException;
    new-instance v33, Ljava/lang/StringBuilder;

    invoke-direct/range {v33 .. v33}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v33

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v33

    const-string/jumbo v34, " is not Integer-Value"

    invoke-virtual/range {v33 .. v34}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v33

    invoke-virtual/range {v33 .. v33}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v33

    invoke-static/range {v33 .. v33}, Lcom/google/android/mms/pdu/MiuiPduParser;->log(Ljava/lang/String;)V

    .line 663
    const/16 v33, 0x0

    return-object v33

    .line 679
    .end local v9    # "e":Ljava/lang/RuntimeException;
    .restart local v22    # "previouslySentBy":Lcom/google/android/mms/pdu/EncodedStringValue;
    :catch_1b
    move-exception v9

    .line 680
    .restart local v9    # "e":Ljava/lang/RuntimeException;
    new-instance v33, Ljava/lang/StringBuilder;

    invoke-direct/range {v33 .. v33}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v33

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v33

    const-string/jumbo v34, "is not Encoded-String-Value header field!"

    invoke-virtual/range {v33 .. v34}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v33

    invoke-virtual/range {v33 .. v33}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v33

    invoke-static/range {v33 .. v33}, Lcom/google/android/mms/pdu/MiuiPduParser;->log(Ljava/lang/String;)V

    .line 681
    const/16 v33, 0x0

    return-object v33

    .line 691
    .end local v9    # "e":Ljava/lang/RuntimeException;
    .end local v22    # "previouslySentBy":Lcom/google/android/mms/pdu/EncodedStringValue;
    :pswitch_e
    invoke-static/range {p1 .. p1}, Lcom/google/android/mms/pdu/MiuiPduParser;->parseValueLength(Ljava/io/ByteArrayInputStream;)I

    .line 695
    :try_start_14
    invoke-static/range {p1 .. p1}, Lcom/google/android/mms/pdu/MiuiPduParser;->parseIntegerValue(Ljava/io/ByteArrayInputStream;)J
    :try_end_14
    .catch Ljava/lang/RuntimeException; {:try_start_14 .. :try_end_14} :catch_1d

    .line 703
    :try_start_15
    invoke-static/range {p1 .. p1}, Lcom/google/android/mms/pdu/MiuiPduParser;->parseLongInteger(Ljava/io/ByteArrayInputStream;)J

    move-result-wide v20

    .line 709
    .local v20, "perviouslySentDate":J
    const/16 v33, 0xa1

    .line 708
    move-wide/from16 v0, v20

    move/from16 v2, v33

    invoke-virtual {v14, v0, v1, v2}, Lcom/google/android/mms/pdu/PduHeaders;->setLongInteger(JI)V
    :try_end_15
    .catch Ljava/lang/RuntimeException; {:try_start_15 .. :try_end_15} :catch_1c

    goto/16 :goto_0

    .line 710
    .end local v20    # "perviouslySentDate":J
    :catch_1c
    move-exception v9

    .line 711
    .restart local v9    # "e":Ljava/lang/RuntimeException;
    new-instance v33, Ljava/lang/StringBuilder;

    invoke-direct/range {v33 .. v33}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v33

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v33

    const-string/jumbo v34, "is not Long-Integer header field!"

    invoke-virtual/range {v33 .. v34}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v33

    invoke-virtual/range {v33 .. v33}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v33

    invoke-static/range {v33 .. v33}, Lcom/google/android/mms/pdu/MiuiPduParser;->log(Ljava/lang/String;)V

    .line 712
    const/16 v33, 0x0

    return-object v33

    .line 696
    .end local v9    # "e":Ljava/lang/RuntimeException;
    :catch_1d
    move-exception v9

    .line 697
    .restart local v9    # "e":Ljava/lang/RuntimeException;
    new-instance v33, Ljava/lang/StringBuilder;

    invoke-direct/range {v33 .. v33}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v33

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v33

    const-string/jumbo v34, " is not Integer-Value"

    invoke-virtual/range {v33 .. v34}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v33

    invoke-virtual/range {v33 .. v33}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v33

    invoke-static/range {v33 .. v33}, Lcom/google/android/mms/pdu/MiuiPduParser;->log(Ljava/lang/String;)V

    .line 698
    const/16 v33, 0x0

    return-object v33

    .line 729
    .end local v9    # "e":Ljava/lang/RuntimeException;
    :pswitch_f
    invoke-static/range {p1 .. p1}, Lcom/google/android/mms/pdu/MiuiPduParser;->parseValueLength(Ljava/io/ByteArrayInputStream;)I

    .line 732
    invoke-static/range {p1 .. p1}, Lcom/google/android/mms/pdu/MiuiPduParser;->extractByteValue(Ljava/io/ByteArrayInputStream;)I

    .line 735
    invoke-static/range {p1 .. p1}, Lcom/google/android/mms/pdu/MiuiPduParser;->parseEncodedStringValue(Ljava/io/ByteArrayInputStream;)Lcom/google/android/mms/pdu/EncodedStringValue;

    goto/16 :goto_0

    .line 751
    :pswitch_10
    invoke-static/range {p1 .. p1}, Lcom/google/android/mms/pdu/MiuiPduParser;->parseValueLength(Ljava/io/ByteArrayInputStream;)I

    .line 754
    invoke-static/range {p1 .. p1}, Lcom/google/android/mms/pdu/MiuiPduParser;->extractByteValue(Ljava/io/ByteArrayInputStream;)I

    .line 758
    :try_start_16
    invoke-static/range {p1 .. p1}, Lcom/google/android/mms/pdu/MiuiPduParser;->parseIntegerValue(Ljava/io/ByteArrayInputStream;)J
    :try_end_16
    .catch Ljava/lang/RuntimeException; {:try_start_16 .. :try_end_16} :catch_1e

    goto/16 :goto_0

    .line 759
    :catch_1e
    move-exception v9

    .line 760
    .restart local v9    # "e":Ljava/lang/RuntimeException;
    new-instance v33, Ljava/lang/StringBuilder;

    invoke-direct/range {v33 .. v33}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v33

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v33

    const-string/jumbo v34, " is not Integer-Value"

    invoke-virtual/range {v33 .. v34}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v33

    invoke-virtual/range {v33 .. v33}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v33

    invoke-static/range {v33 .. v33}, Lcom/google/android/mms/pdu/MiuiPduParser;->log(Ljava/lang/String;)V

    .line 761
    const/16 v33, 0x0

    return-object v33

    .line 773
    .end local v9    # "e":Ljava/lang/RuntimeException;
    :pswitch_11
    const/16 v33, 0x0

    move-object/from16 v0, p1

    move-object/from16 v1, v33

    invoke-static {v0, v1}, Lcom/google/android/mms/pdu/MiuiPduParser;->parseContentType(Ljava/io/ByteArrayInputStream;Ljava/util/HashMap;)[B

    goto/16 :goto_0

    .line 782
    :pswitch_12
    new-instance v16, Ljava/util/HashMap;

    invoke-direct/range {v16 .. v16}, Ljava/util/HashMap;-><init>()V

    .line 784
    .local v16, "map":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Integer;Ljava/lang/Object;>;"
    move-object/from16 v0, p1

    move-object/from16 v1, v16

    invoke-static {v0, v1}, Lcom/google/android/mms/pdu/MiuiPduParser;->parseContentType(Ljava/io/ByteArrayInputStream;Ljava/util/HashMap;)[B

    move-result-object v6

    .line 786
    .local v6, "contentType":[B
    if-eqz v6, :cond_d

    .line 792
    const/16 v33, 0x84

    :try_start_17
    move/from16 v0, v33

    invoke-virtual {v14, v6, v0}, Lcom/google/android/mms/pdu/PduHeaders;->setTextString([BI)V
    :try_end_17
    .catch Ljava/lang/NullPointerException; {:try_start_17 .. :try_end_17} :catch_20
    .catch Ljava/lang/RuntimeException; {:try_start_17 .. :try_end_17} :catch_1f

    .line 802
    :cond_d
    :goto_2
    const/16 v33, 0x99

    invoke-static/range {v33 .. v33}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v33

    move-object/from16 v0, v16

    move-object/from16 v1, v33

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v33

    check-cast v33, [B

    sput-object v33, Lcom/google/android/mms/pdu/MiuiPduParser;->mStartParam:[B

    .line 805
    const/16 v33, 0x83

    invoke-static/range {v33 .. v33}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v33

    move-object/from16 v0, v16

    move-object/from16 v1, v33

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v33

    check-cast v33, [B

    sput-object v33, Lcom/google/android/mms/pdu/MiuiPduParser;->mTypeParam:[B

    .line 807
    const/4 v15, 0x0

    .line 808
    goto/16 :goto_0

    .line 795
    :catch_1f
    move-exception v9

    .line 796
    .restart local v9    # "e":Ljava/lang/RuntimeException;
    new-instance v33, Ljava/lang/StringBuilder;

    invoke-direct/range {v33 .. v33}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v33

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v33

    const-string/jumbo v34, "is not Text-String header field!"

    invoke-virtual/range {v33 .. v34}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v33

    invoke-virtual/range {v33 .. v33}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v33

    invoke-static/range {v33 .. v33}, Lcom/google/android/mms/pdu/MiuiPduParser;->log(Ljava/lang/String;)V

    .line 797
    const/16 v33, 0x0

    return-object v33

    .line 793
    .end local v9    # "e":Ljava/lang/RuntimeException;
    :catch_20
    move-exception v8

    .line 794
    .restart local v8    # "e":Ljava/lang/NullPointerException;
    const-string/jumbo v33, "null pointer error!"

    invoke-static/range {v33 .. v33}, Lcom/google/android/mms/pdu/MiuiPduParser;->log(Ljava/lang/String;)V

    goto :goto_2

    .line 823
    .end local v6    # "contentType":[B
    .end local v8    # "e":Ljava/lang/NullPointerException;
    .end local v13    # "headerField":I
    .end local v16    # "map":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Integer;Ljava/lang/Object;>;"
    :cond_e
    return-object v14

    .line 253
    :pswitch_data_0
    .packed-switch 0x81
        :pswitch_8
        :pswitch_8
        :pswitch_6
        :pswitch_12
        :pswitch_4
        :pswitch_3
        :pswitch_9
        :pswitch_9
        :pswitch_a
        :pswitch_b
        :pswitch_6
        :pswitch_1
        :pswitch_c
        :pswitch_4
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_7
        :pswitch_3
        :pswitch_3
        :pswitch_7
        :pswitch_8
        :pswitch_6
        :pswitch_3
        :pswitch_7
        :pswitch_3
        :pswitch_3
        :pswitch_9
        :pswitch_6
        :pswitch_4
        :pswitch_d
        :pswitch_e
        :pswitch_3
        :pswitch_3
        :pswitch_f
        :pswitch_3
        :pswitch_7
        :pswitch_3
        :pswitch_0
        :pswitch_3
        :pswitch_10
        :pswitch_3
        :pswitch_10
        :pswitch_5
        :pswitch_0
        :pswitch_5
        :pswitch_0
        :pswitch_3
        :pswitch_11
        :pswitch_5
        :pswitch_3
        :pswitch_7
        :pswitch_7
        :pswitch_6
        :pswitch_6
        :pswitch_6
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_6
        :pswitch_6
        :pswitch_3
    .end packed-switch

    .line 260
    :pswitch_data_1
    .packed-switch 0x89
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
    .end packed-switch
.end method

.method protected parsePartHeaders(Ljava/io/ByteArrayInputStream;Lcom/google/android/mms/pdu/PduPart;I)Z
    .locals 17
    .param p1, "pduDataStream"    # Ljava/io/ByteArrayInputStream;
    .param p2, "part"    # Lcom/google/android/mms/pdu/PduPart;
    .param p3, "length"    # I

    .prologue
    .line 1593
    sget-boolean v15, Lcom/google/android/mms/pdu/MiuiPduParser;->-assertionsDisabled:Z

    if-nez v15, :cond_1

    if-eqz p1, :cond_0

    const/4 v15, 0x1

    :goto_0
    if-nez v15, :cond_1

    new-instance v15, Ljava/lang/AssertionError;

    invoke-direct {v15}, Ljava/lang/AssertionError;-><init>()V

    throw v15

    :cond_0
    const/4 v15, 0x0

    goto :goto_0

    .line 1594
    :cond_1
    sget-boolean v15, Lcom/google/android/mms/pdu/MiuiPduParser;->-assertionsDisabled:Z

    if-nez v15, :cond_3

    if-eqz p2, :cond_2

    const/4 v15, 0x1

    :goto_1
    if-nez v15, :cond_3

    new-instance v15, Ljava/lang/AssertionError;

    invoke-direct {v15}, Ljava/lang/AssertionError;-><init>()V

    throw v15

    :cond_2
    const/4 v15, 0x0

    goto :goto_1

    .line 1595
    :cond_3
    sget-boolean v15, Lcom/google/android/mms/pdu/MiuiPduParser;->-assertionsDisabled:Z

    if-nez v15, :cond_5

    if-lez p3, :cond_4

    const/4 v15, 0x1

    :goto_2
    if-nez v15, :cond_5

    new-instance v15, Ljava/lang/AssertionError;

    invoke-direct {v15}, Ljava/lang/AssertionError;-><init>()V

    throw v15

    :cond_4
    const/4 v15, 0x0

    goto :goto_2

    .line 1613
    :cond_5
    invoke-virtual/range {p1 .. p1}, Ljava/io/ByteArrayInputStream;->available()I

    move-result v7

    .line 1614
    .local v7, "startPos":I
    const/4 v10, 0x0

    .line 1615
    .local v10, "tempPos":I
    move/from16 v5, p3

    .line 1616
    .local v5, "lastLen":I
    :cond_6
    :goto_3
    if-lez v5, :cond_15

    .line 1617
    invoke-virtual/range {p1 .. p1}, Ljava/io/ByteArrayInputStream;->read()I

    move-result v3

    .line 1618
    .local v3, "header":I
    sget-boolean v15, Lcom/google/android/mms/pdu/MiuiPduParser;->-assertionsDisabled:Z

    if-nez v15, :cond_8

    const/4 v15, -0x1

    if-eq v15, v3, :cond_7

    const/4 v15, 0x1

    :goto_4
    if-nez v15, :cond_8

    new-instance v15, Ljava/lang/AssertionError;

    invoke-direct {v15}, Ljava/lang/AssertionError;-><init>()V

    throw v15

    :cond_7
    const/4 v15, 0x0

    goto :goto_4

    .line 1619
    :cond_8
    add-int/lit8 v5, v5, -0x1

    .line 1621
    const/16 v15, 0x7f

    if-le v3, v15, :cond_11

    .line 1623
    sparse-switch v3, :sswitch_data_0

    .line 1711
    move-object/from16 v0, p1

    invoke-static {v0, v5}, Lcom/google/android/mms/pdu/MiuiPduParser;->skipWapValue(Ljava/io/ByteArrayInputStream;I)I

    move-result v15

    const/16 v16, -0x1

    move/from16 v0, v16

    if-ne v0, v15, :cond_10

    .line 1712
    const-string/jumbo v15, "MiuiPduParser"

    const-string/jumbo v16, "Corrupt Part headers"

    invoke-static/range {v15 .. v16}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1713
    const/4 v15, 0x0

    return v15

    .line 1629
    :sswitch_0
    const/4 v15, 0x0

    move-object/from16 v0, p1

    invoke-static {v0, v15}, Lcom/google/android/mms/pdu/MiuiPduParser;->parseWapString(Ljava/io/ByteArrayInputStream;I)[B

    move-result-object v2

    .line 1630
    .local v2, "contentLocation":[B
    if-eqz v2, :cond_9

    .line 1631
    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Lcom/google/android/mms/pdu/PduPart;->setContentLocation([B)V

    .line 1634
    :cond_9
    invoke-virtual/range {p1 .. p1}, Ljava/io/ByteArrayInputStream;->available()I

    move-result v10

    .line 1635
    sub-int v15, v7, v10

    sub-int v5, p3, v15

    .line 1636
    goto :goto_3

    .line 1642
    .end local v2    # "contentLocation":[B
    :sswitch_1
    const/4 v15, 0x1

    move-object/from16 v0, p1

    invoke-static {v0, v15}, Lcom/google/android/mms/pdu/MiuiPduParser;->parseWapString(Ljava/io/ByteArrayInputStream;I)[B

    move-result-object v1

    .line 1643
    .local v1, "contentId":[B
    if-eqz v1, :cond_a

    .line 1644
    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Lcom/google/android/mms/pdu/PduPart;->setContentId([B)V

    .line 1647
    :cond_a
    invoke-virtual/range {p1 .. p1}, Ljava/io/ByteArrayInputStream;->available()I

    move-result v10

    .line 1648
    sub-int v15, v7, v10

    sub-int v5, p3, v15

    .line 1649
    goto :goto_3

    .line 1665
    .end local v1    # "contentId":[B
    :sswitch_2
    move-object/from16 v0, p0

    iget-boolean v15, v0, Lcom/google/android/mms/pdu/MiuiPduParser;->mParseContentDisposition:Z

    if-eqz v15, :cond_6

    .line 1666
    invoke-static/range {p1 .. p1}, Lcom/google/android/mms/pdu/MiuiPduParser;->parseValueLength(Ljava/io/ByteArrayInputStream;)I

    move-result v6

    .line 1667
    .local v6, "len":I
    const/4 v15, 0x1

    move-object/from16 v0, p1

    invoke-virtual {v0, v15}, Ljava/io/ByteArrayInputStream;->mark(I)V

    .line 1668
    invoke-virtual/range {p1 .. p1}, Ljava/io/ByteArrayInputStream;->available()I

    move-result v13

    .line 1669
    .local v13, "thisStartPos":I
    const/4 v12, 0x0

    .line 1670
    .local v12, "thisEndPos":I
    invoke-virtual/range {p1 .. p1}, Ljava/io/ByteArrayInputStream;->read()I

    move-result v14

    .line 1672
    .local v14, "value":I
    const/16 v15, 0x80

    if-ne v14, v15, :cond_d

    .line 1673
    sget-object v15, Lcom/google/android/mms/pdu/PduPart;->DISPOSITION_FROM_DATA:[B

    move-object/from16 v0, p2

    invoke-virtual {v0, v15}, Lcom/google/android/mms/pdu/PduPart;->setContentDisposition([B)V

    .line 1686
    :goto_5
    invoke-virtual/range {p1 .. p1}, Ljava/io/ByteArrayInputStream;->available()I

    move-result v12

    .line 1687
    sub-int v15, v13, v12

    if-ge v15, v6, :cond_c

    .line 1688
    invoke-virtual/range {p1 .. p1}, Ljava/io/ByteArrayInputStream;->read()I

    move-result v14

    .line 1689
    const/16 v15, 0x98

    if-ne v14, v15, :cond_b

    .line 1691
    const/4 v15, 0x0

    .line 1690
    move-object/from16 v0, p1

    invoke-static {v0, v15}, Lcom/google/android/mms/pdu/MiuiPduParser;->parseWapString(Ljava/io/ByteArrayInputStream;I)[B

    move-result-object v15

    move-object/from16 v0, p2

    invoke-virtual {v0, v15}, Lcom/google/android/mms/pdu/PduPart;->setFilename([B)V

    .line 1695
    :cond_b
    invoke-virtual/range {p1 .. p1}, Ljava/io/ByteArrayInputStream;->available()I

    move-result v12

    .line 1696
    sub-int v15, v13, v12

    if-ge v15, v6, :cond_c

    .line 1697
    sub-int v15, v13, v12

    sub-int v4, v6, v15

    .line 1698
    .local v4, "last":I
    new-array v8, v4, [B

    .line 1699
    .local v8, "temp":[B
    const/4 v15, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v8, v15, v4}, Ljava/io/ByteArrayInputStream;->read([BII)I

    .line 1703
    .end local v4    # "last":I
    .end local v8    # "temp":[B
    :cond_c
    invoke-virtual/range {p1 .. p1}, Ljava/io/ByteArrayInputStream;->available()I

    move-result v10

    .line 1704
    sub-int v15, v7, v10

    sub-int v5, p3, v15

    goto/16 :goto_3

    .line 1674
    :cond_d
    const/16 v15, 0x81

    if-ne v14, v15, :cond_e

    .line 1675
    sget-object v15, Lcom/google/android/mms/pdu/PduPart;->DISPOSITION_ATTACHMENT:[B

    move-object/from16 v0, p2

    invoke-virtual {v0, v15}, Lcom/google/android/mms/pdu/PduPart;->setContentDisposition([B)V

    goto :goto_5

    .line 1676
    :cond_e
    const/16 v15, 0x82

    if-ne v14, v15, :cond_f

    .line 1677
    sget-object v15, Lcom/google/android/mms/pdu/PduPart;->DISPOSITION_INLINE:[B

    move-object/from16 v0, p2

    invoke-virtual {v0, v15}, Lcom/google/android/mms/pdu/PduPart;->setContentDisposition([B)V

    goto :goto_5

    .line 1679
    :cond_f
    invoke-virtual/range {p1 .. p1}, Ljava/io/ByteArrayInputStream;->reset()V

    .line 1682
    const/4 v15, 0x0

    .line 1681
    move-object/from16 v0, p1

    invoke-static {v0, v15}, Lcom/google/android/mms/pdu/MiuiPduParser;->parseWapString(Ljava/io/ByteArrayInputStream;I)[B

    move-result-object v15

    move-object/from16 v0, p2

    invoke-virtual {v0, v15}, Lcom/google/android/mms/pdu/PduPart;->setContentDisposition([B)V

    goto :goto_5

    .line 1715
    .end local v6    # "len":I
    .end local v12    # "thisEndPos":I
    .end local v13    # "thisStartPos":I
    .end local v14    # "value":I
    :cond_10
    const/4 v5, 0x0

    .line 1716
    goto/16 :goto_3

    .line 1718
    :cond_11
    const/16 v15, 0x20

    if-lt v3, v15, :cond_13

    const/16 v15, 0x7f

    if-gt v3, v15, :cond_13

    .line 1720
    const/4 v15, 0x0

    move-object/from16 v0, p1

    invoke-static {v0, v15}, Lcom/google/android/mms/pdu/MiuiPduParser;->parseWapString(Ljava/io/ByteArrayInputStream;I)[B

    move-result-object v9

    .line 1721
    .local v9, "tempHeader":[B
    const/4 v15, 0x0

    move-object/from16 v0, p1

    invoke-static {v0, v15}, Lcom/google/android/mms/pdu/MiuiPduParser;->parseWapString(Ljava/io/ByteArrayInputStream;I)[B

    move-result-object v11

    .line 1725
    .local v11, "tempValue":[B
    const-string/jumbo v15, "Content-Transfer-Encoding"

    new-instance v16, Ljava/lang/String;

    move-object/from16 v0, v16

    invoke-direct {v0, v9}, Ljava/lang/String;-><init>([B)V

    invoke-virtual/range {v15 .. v16}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v15

    .line 1724
    if-eqz v15, :cond_12

    .line 1726
    move-object/from16 v0, p2

    invoke-virtual {v0, v11}, Lcom/google/android/mms/pdu/PduPart;->setContentTransferEncoding([B)V

    .line 1729
    :cond_12
    invoke-virtual/range {p1 .. p1}, Ljava/io/ByteArrayInputStream;->available()I

    move-result v10

    .line 1730
    sub-int v15, v7, v10

    sub-int v5, p3, v15

    .line 1718
    goto/16 :goto_3

    .line 1736
    .end local v9    # "tempHeader":[B
    .end local v11    # "tempValue":[B
    :cond_13
    move-object/from16 v0, p1

    invoke-static {v0, v5}, Lcom/google/android/mms/pdu/MiuiPduParser;->skipWapValue(Ljava/io/ByteArrayInputStream;I)I

    move-result v15

    const/16 v16, -0x1

    move/from16 v0, v16

    if-ne v0, v15, :cond_14

    .line 1737
    const-string/jumbo v15, "MiuiPduParser"

    const-string/jumbo v16, "Corrupt Part headers"

    invoke-static/range {v15 .. v16}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1738
    const/4 v15, 0x0

    return v15

    .line 1740
    :cond_14
    const/4 v5, 0x0

    goto/16 :goto_3

    .line 1744
    .end local v3    # "header":I
    :cond_15
    if-eqz v5, :cond_16

    .line 1745
    const-string/jumbo v15, "MiuiPduParser"

    const-string/jumbo v16, "Corrupt Part headers"

    invoke-static/range {v15 .. v16}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1746
    const/4 v15, 0x0

    return v15

    .line 1749
    :cond_16
    const/4 v15, 0x1

    return v15

    .line 1623
    nop

    :sswitch_data_0
    .sparse-switch
        0x8e -> :sswitch_0
        0xae -> :sswitch_2
        0xc0 -> :sswitch_1
        0xc5 -> :sswitch_2
    .end sparse-switch
.end method

.method protected parseParts(Ljava/io/ByteArrayInputStream;)Lcom/google/android/mms/pdu/PduBody;
    .locals 24
    .param p1, "pduDataStream"    # Ljava/io/ByteArrayInputStream;

    .prologue
    .line 833
    if-nez p1, :cond_0

    .line 834
    const/16 v22, 0x0

    return-object v22

    .line 837
    :cond_0
    invoke-static/range {p1 .. p1}, Lcom/google/android/mms/pdu/MiuiPduParser;->parseUnsignedInt(Ljava/io/ByteArrayInputStream;)I

    move-result v8

    .line 838
    .local v8, "count":I
    new-instance v4, Lcom/google/android/mms/pdu/PduBody;

    invoke-direct {v4}, Lcom/google/android/mms/pdu/PduBody;-><init>()V

    .line 840
    .local v4, "body":Lcom/google/android/mms/pdu/PduBody;
    const/4 v13, 0x0

    .local v13, "i":I
    :goto_0
    if-ge v13, v8, :cond_e

    .line 841
    invoke-static/range {p1 .. p1}, Lcom/google/android/mms/pdu/MiuiPduParser;->parseUnsignedInt(Ljava/io/ByteArrayInputStream;)I

    move-result v12

    .line 842
    .local v12, "headerLength":I
    invoke-static/range {p1 .. p1}, Lcom/google/android/mms/pdu/MiuiPduParser;->parseUnsignedInt(Ljava/io/ByteArrayInputStream;)I

    move-result v9

    .line 843
    .local v9, "dataLength":I
    new-instance v16, Lcom/google/android/mms/pdu/PduPart;

    invoke-direct/range {v16 .. v16}, Lcom/google/android/mms/pdu/PduPart;-><init>()V

    .line 844
    .local v16, "part":Lcom/google/android/mms/pdu/PduPart;
    invoke-virtual/range {p1 .. p1}, Ljava/io/ByteArrayInputStream;->available()I

    move-result v21

    .line 845
    .local v21, "startPos":I
    if-gtz v21, :cond_1

    .line 847
    const/16 v22, 0x0

    return-object v22

    .line 851
    :cond_1
    new-instance v14, Ljava/util/HashMap;

    invoke-direct {v14}, Ljava/util/HashMap;-><init>()V

    .line 852
    .local v14, "map":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Integer;Ljava/lang/Object;>;"
    move-object/from16 v0, p1

    invoke-static {v0, v14}, Lcom/google/android/mms/pdu/MiuiPduParser;->parseContentType(Ljava/io/ByteArrayInputStream;Ljava/util/HashMap;)[B

    move-result-object v7

    .line 853
    .local v7, "contentType":[B
    if-eqz v7, :cond_4

    .line 854
    move-object/from16 v0, v16

    invoke-virtual {v0, v7}, Lcom/google/android/mms/pdu/PduPart;->setContentType([B)V

    .line 860
    :goto_1
    const/16 v22, 0x97

    invoke-static/range {v22 .. v22}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v14, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, [B

    .line 861
    .local v15, "name":[B
    if-eqz v15, :cond_2

    .line 862
    move-object/from16 v0, v16

    invoke-virtual {v0, v15}, Lcom/google/android/mms/pdu/PduPart;->setName([B)V

    .line 866
    :cond_2
    const/16 v22, 0x81

    invoke-static/range {v22 .. v22}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v14, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    .line 867
    .local v5, "charset":Ljava/lang/Integer;
    if-eqz v5, :cond_3

    .line 868
    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v22

    move-object/from16 v0, v16

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/google/android/mms/pdu/PduPart;->setCharset(I)V

    .line 872
    :cond_3
    invoke-virtual/range {p1 .. p1}, Ljava/io/ByteArrayInputStream;->available()I

    move-result v11

    .line 873
    .local v11, "endPos":I
    sub-int v22, v21, v11

    sub-int v20, v12, v22

    .line 874
    .local v20, "partHeaderLen":I
    if-lez v20, :cond_5

    .line 875
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, v16

    move/from16 v3, v20

    invoke-virtual {v0, v1, v2, v3}, Lcom/google/android/mms/pdu/MiuiPduParser;->parsePartHeaders(Ljava/io/ByteArrayInputStream;Lcom/google/android/mms/pdu/PduPart;I)Z

    move-result v22

    if-nez v22, :cond_6

    .line 877
    const/16 v22, 0x0

    return-object v22

    .line 856
    .end local v5    # "charset":Ljava/lang/Integer;
    .end local v11    # "endPos":I
    .end local v15    # "name":[B
    .end local v20    # "partHeaderLen":I
    :cond_4
    sget-object v22, Lcom/google/android/mms/pdu/PduContentTypes;->contentTypes:[Ljava/lang/String;

    const/16 v23, 0x0

    aget-object v22, v22, v23

    invoke-virtual/range {v22 .. v22}, Ljava/lang/String;->getBytes()[B

    move-result-object v22

    move-object/from16 v0, v16

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/google/android/mms/pdu/PduPart;->setContentType([B)V

    goto :goto_1

    .line 879
    .restart local v5    # "charset":Ljava/lang/Integer;
    .restart local v11    # "endPos":I
    .restart local v15    # "name":[B
    .restart local v20    # "partHeaderLen":I
    :cond_5
    if-gez v20, :cond_6

    .line 881
    const/16 v22, 0x0

    return-object v22

    .line 887
    :cond_6
    invoke-virtual/range {v16 .. v16}, Lcom/google/android/mms/pdu/PduPart;->getContentLocation()[B

    move-result-object v22

    if-nez v22, :cond_7

    .line 888
    invoke-virtual/range {v16 .. v16}, Lcom/google/android/mms/pdu/PduPart;->getName()[B

    move-result-object v22

    if-nez v22, :cond_7

    .line 889
    invoke-virtual/range {v16 .. v16}, Lcom/google/android/mms/pdu/PduPart;->getFilename()[B

    move-result-object v22

    if-nez v22, :cond_7

    .line 890
    invoke-virtual/range {v16 .. v16}, Lcom/google/android/mms/pdu/PduPart;->getContentId()[B

    move-result-object v22

    if-nez v22, :cond_7

    .line 892
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v22

    .line 891
    invoke-static/range {v22 .. v23}, Ljava/lang/Long;->toOctalString(J)Ljava/lang/String;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/String;->getBytes()[B

    move-result-object v22

    move-object/from16 v0, v16

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/google/android/mms/pdu/PduPart;->setContentLocation([B)V

    .line 896
    :cond_7
    if-lez v9, :cond_8

    .line 897
    new-array v0, v9, [B

    move-object/from16 v18, v0

    .line 898
    .local v18, "partData":[B
    new-instance v17, Ljava/lang/String;

    invoke-virtual/range {v16 .. v16}, Lcom/google/android/mms/pdu/PduPart;->getContentType()[B

    move-result-object v22

    move-object/from16 v0, v17

    move-object/from16 v1, v22

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>([B)V

    .line 899
    .local v17, "partContentType":Ljava/lang/String;
    const/16 v22, 0x0

    move-object/from16 v0, p1

    move-object/from16 v1, v18

    move/from16 v2, v22

    invoke-virtual {v0, v1, v2, v9}, Ljava/io/ByteArrayInputStream;->read([BII)I

    .line 900
    const-string/jumbo v22, "application/vnd.wap.multipart.alternative"

    move-object/from16 v0, v17

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v22

    if-eqz v22, :cond_9

    .line 902
    new-instance v22, Ljava/io/ByteArrayInputStream;

    move-object/from16 v0, v22

    move-object/from16 v1, v18

    invoke-direct {v0, v1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/google/android/mms/pdu/MiuiPduParser;->parseParts(Ljava/io/ByteArrayInputStream;)Lcom/google/android/mms/pdu/PduBody;

    move-result-object v6

    .line 904
    .local v6, "childBody":Lcom/google/android/mms/pdu/PduBody;
    const/16 v22, 0x0

    move/from16 v0, v22

    invoke-virtual {v6, v0}, Lcom/google/android/mms/pdu/PduBody;->getPart(I)Lcom/google/android/mms/pdu/PduPart;

    move-result-object v16

    .line 929
    .end local v6    # "childBody":Lcom/google/android/mms/pdu/PduBody;
    .end local v17    # "partContentType":Ljava/lang/String;
    .end local v18    # "partData":[B
    :cond_8
    :goto_2
    invoke-static/range {v16 .. v16}, Lcom/google/android/mms/pdu/MiuiPduParser;->checkPartPosition(Lcom/google/android/mms/pdu/PduPart;)I

    move-result v22

    if-nez v22, :cond_d

    .line 931
    const/16 v22, 0x0

    move/from16 v0, v22

    move-object/from16 v1, v16

    invoke-virtual {v4, v0, v1}, Lcom/google/android/mms/pdu/PduBody;->addPart(ILcom/google/android/mms/pdu/PduPart;)V

    .line 840
    :goto_3
    add-int/lit8 v13, v13, 0x1

    goto/16 :goto_0

    .line 907
    .restart local v17    # "partContentType":Ljava/lang/String;
    .restart local v18    # "partData":[B
    :cond_9
    invoke-virtual/range {v16 .. v16}, Lcom/google/android/mms/pdu/PduPart;->getContentTransferEncoding()[B

    move-result-object v19

    .line 908
    .local v19, "partDataEncoding":[B
    if-eqz v19, :cond_a

    .line 909
    new-instance v10, Ljava/lang/String;

    move-object/from16 v0, v19

    invoke-direct {v10, v0}, Ljava/lang/String;-><init>([B)V

    .line 910
    .local v10, "encoding":Ljava/lang/String;
    const-string/jumbo v22, "base64"

    move-object/from16 v0, v22

    invoke-virtual {v10, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v22

    if-eqz v22, :cond_b

    .line 912
    invoke-static/range {v18 .. v18}, Lcom/google/android/mms/pdu/Base64;->decodeBase64([B)[B

    move-result-object v18

    .line 920
    .end local v10    # "encoding":Ljava/lang/String;
    :cond_a
    :goto_4
    if-nez v18, :cond_c

    .line 921
    const-string/jumbo v22, "Decode part data error!"

    invoke-static/range {v22 .. v22}, Lcom/google/android/mms/pdu/MiuiPduParser;->log(Ljava/lang/String;)V

    .line 922
    const/16 v22, 0x0

    return-object v22

    .line 913
    .restart local v10    # "encoding":Ljava/lang/String;
    :cond_b
    const-string/jumbo v22, "quoted-printable"

    move-object/from16 v0, v22

    invoke-virtual {v10, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v22

    if-eqz v22, :cond_a

    .line 915
    invoke-static/range {v18 .. v18}, Lcom/google/android/mms/pdu/QuotedPrintable;->decodeQuotedPrintable([B)[B

    move-result-object v18

    goto :goto_4

    .line 924
    .end local v10    # "encoding":Ljava/lang/String;
    :cond_c
    move-object/from16 v0, v16

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/google/android/mms/pdu/PduPart;->setData([B)V

    goto :goto_2

    .line 934
    .end local v17    # "partContentType":Ljava/lang/String;
    .end local v18    # "partData":[B
    .end local v19    # "partDataEncoding":[B
    :cond_d
    move-object/from16 v0, v16

    invoke-virtual {v4, v0}, Lcom/google/android/mms/pdu/PduBody;->addPart(Lcom/google/android/mms/pdu/PduPart;)Z

    goto :goto_3

    .line 938
    .end local v5    # "charset":Ljava/lang/Integer;
    .end local v7    # "contentType":[B
    .end local v9    # "dataLength":I
    .end local v11    # "endPos":I
    .end local v12    # "headerLength":I
    .end local v14    # "map":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Integer;Ljava/lang/Object;>;"
    .end local v15    # "name":[B
    .end local v16    # "part":Lcom/google/android/mms/pdu/PduPart;
    .end local v20    # "partHeaderLen":I
    .end local v21    # "startPos":I
    :cond_e
    return-object v4
.end method
