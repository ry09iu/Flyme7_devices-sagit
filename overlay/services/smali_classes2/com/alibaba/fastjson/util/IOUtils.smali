.class public Lcom/alibaba/fastjson/util/IOUtils;
.super Ljava/lang/Object;
.source "IOUtils.java"


# static fields
.field public static final ASCII_CHARS:[C

.field public static final CA:[C

.field public static final DEFAULT_PROPERTIES:Ljava/util/Properties;

.field public static final DIGITS:[C

.field static final DigitOnes:[C

.field static final DigitTens:[C

.field public static final FASTJSON_COMPATIBLEWITHFIELDNAME:Ljava/lang/String; = "fastjson.compatibleWithFieldName"

.field public static final FASTJSON_COMPATIBLEWITHJAVABEAN:Ljava/lang/String; = "fastjson.compatibleWithJavaBean"

.field public static final FASTJSON_PROPERTIES:Ljava/lang/String; = "fastjson.properties"

.field public static final IA:[I

.field public static final UTF8:Ljava/nio/charset/Charset;

.field static final digits:[C

.field public static final firstIdentifierFlags:[Z

.field public static final identifierFlags:[Z

.field public static final replaceChars:[C

.field static final sizeTable:[I

.field public static final specicalFlags_doubleQuotes:[B

.field public static final specicalFlags_doubleQuotesFlags:[Z

.field public static final specicalFlags_singleQuotes:[B

.field public static final specicalFlags_singleQuotesFlags:[Z


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v1, 0x1

    const/16 v6, 0x32

    const/16 v5, 0x31

    const/16 v4, 0x30

    .line 46
    new-instance v0, Ljava/util/Properties;

    invoke-direct {v0}, Ljava/util/Properties;-><init>()V

    sput-object v0, Lcom/alibaba/fastjson/util/IOUtils;->DEFAULT_PROPERTIES:Ljava/util/Properties;

    const-string/jumbo v0, "UTF-8"

    .line 48
    invoke-static {v0}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v0

    sput-object v0, Lcom/alibaba/fastjson/util/IOUtils;->UTF8:Ljava/nio/charset/Charset;

    const/16 v0, 0x10

    .line 50
    new-array v0, v0, [C

    const/4 v2, 0x0

    aput-char v4, v0, v2

    aput-char v5, v0, v1

    const/4 v2, 0x2

    aput-char v6, v0, v2

    const/4 v2, 0x3

    const/16 v3, 0x33

    aput-char v3, v0, v2

    const/16 v2, 0x34

    aput-char v2, v0, v7

    const/4 v2, 0x5

    const/16 v3, 0x35

    aput-char v3, v0, v2

    const/4 v2, 0x6

    const/16 v3, 0x36

    aput-char v3, v0, v2

    const/4 v2, 0x7

    const/16 v3, 0x37

    aput-char v3, v0, v2

    const/16 v2, 0x8

    const/16 v3, 0x38

    aput-char v3, v0, v2

    const/16 v2, 0x9

    const/16 v3, 0x39

    aput-char v3, v0, v2

    const/16 v2, 0xa

    const/16 v3, 0x41

    aput-char v3, v0, v2

    const/16 v2, 0xb

    const/16 v3, 0x42

    aput-char v3, v0, v2

    const/16 v2, 0xc

    const/16 v3, 0x43

    aput-char v3, v0, v2

    const/16 v2, 0xd

    const/16 v3, 0x44

    aput-char v3, v0, v2

    const/16 v2, 0xe

    const/16 v3, 0x45

    aput-char v3, v0, v2

    const/16 v2, 0xf

    const/16 v3, 0x46

    aput-char v3, v0, v2

    sput-object v0, Lcom/alibaba/fastjson/util/IOUtils;->DIGITS:[C

    const/16 v0, 0x100

    .line 53
    new-array v0, v0, [Z

    sput-object v0, Lcom/alibaba/fastjson/util/IOUtils;->firstIdentifierFlags:[Z

    .line 55
    const/4 v0, 0x0

    :goto_0
    sget-object v2, Lcom/alibaba/fastjson/util/IOUtils;->firstIdentifierFlags:[Z

    array-length v2, v2

    if-lt v0, v2, :cond_0

    const/16 v0, 0x100

    .line 66
    new-array v0, v0, [Z

    sput-object v0, Lcom/alibaba/fastjson/util/IOUtils;->identifierFlags:[Z

    .line 69
    const/4 v0, 0x0

    :goto_1
    sget-object v2, Lcom/alibaba/fastjson/util/IOUtils;->identifierFlags:[Z

    array-length v2, v2

    if-lt v0, v2, :cond_7

    .line 84
    :try_start_0
    invoke-static {}, Lcom/alibaba/fastjson/util/IOUtils;->loadPropertiesFromFile()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :goto_2
    const/16 v0, 0xa1

    .line 122
    new-array v0, v0, [B

    sput-object v0, Lcom/alibaba/fastjson/util/IOUtils;->specicalFlags_doubleQuotes:[B

    const/16 v0, 0xa1

    .line 123
    new-array v0, v0, [B

    sput-object v0, Lcom/alibaba/fastjson/util/IOUtils;->specicalFlags_singleQuotes:[B

    const/16 v0, 0xa1

    .line 124
    new-array v0, v0, [Z

    sput-object v0, Lcom/alibaba/fastjson/util/IOUtils;->specicalFlags_doubleQuotesFlags:[Z

    const/16 v0, 0xa1

    .line 125
    new-array v0, v0, [Z

    sput-object v0, Lcom/alibaba/fastjson/util/IOUtils;->specicalFlags_singleQuotesFlags:[Z

    const/16 v0, 0x5d

    .line 127
    new-array v0, v0, [C

    sput-object v0, Lcom/alibaba/fastjson/util/IOUtils;->replaceChars:[C

    .line 129
    sget-object v0, Lcom/alibaba/fastjson/util/IOUtils;->specicalFlags_doubleQuotes:[B

    const/4 v2, 0x0

    aput-byte v7, v0, v2

    .line 130
    sget-object v0, Lcom/alibaba/fastjson/util/IOUtils;->specicalFlags_doubleQuotes:[B

    aput-byte v7, v0, v1

    .line 131
    sget-object v0, Lcom/alibaba/fastjson/util/IOUtils;->specicalFlags_doubleQuotes:[B

    const/4 v2, 0x2

    aput-byte v7, v0, v2

    .line 132
    sget-object v0, Lcom/alibaba/fastjson/util/IOUtils;->specicalFlags_doubleQuotes:[B

    const/4 v2, 0x3

    aput-byte v7, v0, v2

    .line 133
    sget-object v0, Lcom/alibaba/fastjson/util/IOUtils;->specicalFlags_doubleQuotes:[B

    aput-byte v7, v0, v7

    .line 134
    sget-object v0, Lcom/alibaba/fastjson/util/IOUtils;->specicalFlags_doubleQuotes:[B

    const/4 v2, 0x5

    aput-byte v7, v0, v2

    .line 135
    sget-object v0, Lcom/alibaba/fastjson/util/IOUtils;->specicalFlags_doubleQuotes:[B

    const/4 v2, 0x6

    aput-byte v7, v0, v2

    .line 136
    sget-object v0, Lcom/alibaba/fastjson/util/IOUtils;->specicalFlags_doubleQuotes:[B

    const/4 v2, 0x7

    aput-byte v7, v0, v2

    .line 137
    sget-object v0, Lcom/alibaba/fastjson/util/IOUtils;->specicalFlags_doubleQuotes:[B

    const/16 v2, 0x8

    aput-byte v1, v0, v2

    .line 138
    sget-object v0, Lcom/alibaba/fastjson/util/IOUtils;->specicalFlags_doubleQuotes:[B

    const/16 v2, 0x9

    aput-byte v1, v0, v2

    .line 139
    sget-object v0, Lcom/alibaba/fastjson/util/IOUtils;->specicalFlags_doubleQuotes:[B

    const/16 v2, 0xa

    aput-byte v1, v0, v2

    .line 140
    sget-object v0, Lcom/alibaba/fastjson/util/IOUtils;->specicalFlags_doubleQuotes:[B

    const/16 v2, 0xb

    aput-byte v7, v0, v2

    .line 141
    sget-object v0, Lcom/alibaba/fastjson/util/IOUtils;->specicalFlags_doubleQuotes:[B

    const/16 v2, 0xc

    aput-byte v1, v0, v2

    .line 142
    sget-object v0, Lcom/alibaba/fastjson/util/IOUtils;->specicalFlags_doubleQuotes:[B

    const/16 v2, 0xd

    aput-byte v1, v0, v2

    .line 143
    sget-object v0, Lcom/alibaba/fastjson/util/IOUtils;->specicalFlags_doubleQuotes:[B

    const/16 v2, 0x22

    aput-byte v1, v0, v2

    .line 144
    sget-object v0, Lcom/alibaba/fastjson/util/IOUtils;->specicalFlags_doubleQuotes:[B

    const/16 v2, 0x5c

    aput-byte v1, v0, v2

    .line 146
    sget-object v0, Lcom/alibaba/fastjson/util/IOUtils;->specicalFlags_singleQuotes:[B

    const/4 v2, 0x0

    aput-byte v7, v0, v2

    .line 147
    sget-object v0, Lcom/alibaba/fastjson/util/IOUtils;->specicalFlags_singleQuotes:[B

    aput-byte v7, v0, v1

    .line 148
    sget-object v0, Lcom/alibaba/fastjson/util/IOUtils;->specicalFlags_singleQuotes:[B

    const/4 v2, 0x2

    aput-byte v7, v0, v2

    .line 149
    sget-object v0, Lcom/alibaba/fastjson/util/IOUtils;->specicalFlags_singleQuotes:[B

    const/4 v2, 0x3

    aput-byte v7, v0, v2

    .line 150
    sget-object v0, Lcom/alibaba/fastjson/util/IOUtils;->specicalFlags_singleQuotes:[B

    aput-byte v7, v0, v7

    .line 151
    sget-object v0, Lcom/alibaba/fastjson/util/IOUtils;->specicalFlags_singleQuotes:[B

    const/4 v2, 0x5

    aput-byte v7, v0, v2

    .line 152
    sget-object v0, Lcom/alibaba/fastjson/util/IOUtils;->specicalFlags_singleQuotes:[B

    const/4 v2, 0x6

    aput-byte v7, v0, v2

    .line 153
    sget-object v0, Lcom/alibaba/fastjson/util/IOUtils;->specicalFlags_singleQuotes:[B

    const/4 v2, 0x7

    aput-byte v7, v0, v2

    .line 154
    sget-object v0, Lcom/alibaba/fastjson/util/IOUtils;->specicalFlags_singleQuotes:[B

    const/16 v2, 0x8

    aput-byte v1, v0, v2

    .line 155
    sget-object v0, Lcom/alibaba/fastjson/util/IOUtils;->specicalFlags_singleQuotes:[B

    const/16 v2, 0x9

    aput-byte v1, v0, v2

    .line 156
    sget-object v0, Lcom/alibaba/fastjson/util/IOUtils;->specicalFlags_singleQuotes:[B

    const/16 v2, 0xa

    aput-byte v1, v0, v2

    .line 157
    sget-object v0, Lcom/alibaba/fastjson/util/IOUtils;->specicalFlags_singleQuotes:[B

    const/16 v2, 0xb

    aput-byte v7, v0, v2

    .line 158
    sget-object v0, Lcom/alibaba/fastjson/util/IOUtils;->specicalFlags_singleQuotes:[B

    const/16 v2, 0xc

    aput-byte v1, v0, v2

    .line 159
    sget-object v0, Lcom/alibaba/fastjson/util/IOUtils;->specicalFlags_singleQuotes:[B

    const/16 v2, 0xd

    aput-byte v1, v0, v2

    .line 160
    sget-object v0, Lcom/alibaba/fastjson/util/IOUtils;->specicalFlags_singleQuotes:[B

    const/16 v2, 0x5c

    aput-byte v1, v0, v2

    .line 161
    sget-object v0, Lcom/alibaba/fastjson/util/IOUtils;->specicalFlags_singleQuotes:[B

    const/16 v2, 0x27

    aput-byte v1, v0, v2

    const/16 v0, 0xe

    :goto_3
    const/16 v2, 0x1f

    .line 163
    if-le v0, v2, :cond_f

    const/16 v0, 0x7f

    :goto_4
    const/16 v2, 0xa0

    .line 168
    if-lt v0, v2, :cond_10

    const/4 v0, 0x0

    move v2, v0

    :goto_5
    const/16 v0, 0xa1

    .line 173
    if-lt v2, v0, :cond_11

    .line 178
    sget-object v0, Lcom/alibaba/fastjson/util/IOUtils;->replaceChars:[C

    const/4 v2, 0x0

    aput-char v4, v0, v2

    .line 179
    sget-object v0, Lcom/alibaba/fastjson/util/IOUtils;->replaceChars:[C

    aput-char v5, v0, v1

    .line 180
    sget-object v0, Lcom/alibaba/fastjson/util/IOUtils;->replaceChars:[C

    const/4 v2, 0x2

    aput-char v6, v0, v2

    .line 181
    sget-object v0, Lcom/alibaba/fastjson/util/IOUtils;->replaceChars:[C

    const/4 v2, 0x3

    const/16 v3, 0x33

    aput-char v3, v0, v2

    .line 182
    sget-object v0, Lcom/alibaba/fastjson/util/IOUtils;->replaceChars:[C

    const/16 v2, 0x34

    aput-char v2, v0, v7

    .line 183
    sget-object v0, Lcom/alibaba/fastjson/util/IOUtils;->replaceChars:[C

    const/4 v2, 0x5

    const/16 v3, 0x35

    aput-char v3, v0, v2

    .line 184
    sget-object v0, Lcom/alibaba/fastjson/util/IOUtils;->replaceChars:[C

    const/4 v2, 0x6

    const/16 v3, 0x36

    aput-char v3, v0, v2

    .line 185
    sget-object v0, Lcom/alibaba/fastjson/util/IOUtils;->replaceChars:[C

    const/4 v2, 0x7

    const/16 v3, 0x37

    aput-char v3, v0, v2

    .line 186
    sget-object v0, Lcom/alibaba/fastjson/util/IOUtils;->replaceChars:[C

    const/16 v2, 0x8

    const/16 v3, 0x62

    aput-char v3, v0, v2

    .line 187
    sget-object v0, Lcom/alibaba/fastjson/util/IOUtils;->replaceChars:[C

    const/16 v2, 0x9

    const/16 v3, 0x74

    aput-char v3, v0, v2

    .line 188
    sget-object v0, Lcom/alibaba/fastjson/util/IOUtils;->replaceChars:[C

    const/16 v2, 0xa

    const/16 v3, 0x6e

    aput-char v3, v0, v2

    .line 189
    sget-object v0, Lcom/alibaba/fastjson/util/IOUtils;->replaceChars:[C

    const/16 v2, 0xb

    const/16 v3, 0x76

    aput-char v3, v0, v2

    .line 190
    sget-object v0, Lcom/alibaba/fastjson/util/IOUtils;->replaceChars:[C

    const/16 v2, 0xc

    const/16 v3, 0x66

    aput-char v3, v0, v2

    .line 191
    sget-object v0, Lcom/alibaba/fastjson/util/IOUtils;->replaceChars:[C

    const/16 v2, 0xd

    const/16 v3, 0x72

    aput-char v3, v0, v2

    .line 192
    sget-object v0, Lcom/alibaba/fastjson/util/IOUtils;->replaceChars:[C

    const/16 v2, 0x22

    const/16 v3, 0x22

    aput-char v3, v0, v2

    .line 193
    sget-object v0, Lcom/alibaba/fastjson/util/IOUtils;->replaceChars:[C

    const/16 v2, 0x27

    const/16 v3, 0x27

    aput-char v3, v0, v2

    .line 194
    sget-object v0, Lcom/alibaba/fastjson/util/IOUtils;->replaceChars:[C

    const/16 v2, 0x2f

    const/16 v3, 0x2f

    aput-char v3, v0, v2

    .line 195
    sget-object v0, Lcom/alibaba/fastjson/util/IOUtils;->replaceChars:[C

    const/16 v2, 0x5c

    const/16 v3, 0x5c

    aput-char v3, v0, v2

    const/16 v0, 0x60

    .line 198
    new-array v0, v0, [C

    const/4 v2, 0x0

    aput-char v4, v0, v2

    aput-char v4, v0, v1

    const/4 v2, 0x2

    aput-char v4, v0, v2

    const/4 v2, 0x3

    aput-char v5, v0, v2

    aput-char v4, v0, v7

    const/4 v2, 0x5

    aput-char v6, v0, v2

    const/4 v2, 0x6

    aput-char v4, v0, v2

    const/4 v2, 0x7

    const/16 v3, 0x33

    aput-char v3, v0, v2

    const/16 v2, 0x8

    aput-char v4, v0, v2

    const/16 v2, 0x9

    const/16 v3, 0x34

    aput-char v3, v0, v2

    const/16 v2, 0xa

    aput-char v4, v0, v2

    const/16 v2, 0xb

    const/16 v3, 0x35

    aput-char v3, v0, v2

    const/16 v2, 0xc

    aput-char v4, v0, v2

    const/16 v2, 0xd

    const/16 v3, 0x36

    aput-char v3, v0, v2

    const/16 v2, 0xe

    aput-char v4, v0, v2

    const/16 v2, 0xf

    const/16 v3, 0x37

    aput-char v3, v0, v2

    const/16 v2, 0x10

    aput-char v4, v0, v2

    const/16 v2, 0x11

    const/16 v3, 0x38

    aput-char v3, v0, v2

    const/16 v2, 0x12

    aput-char v4, v0, v2

    const/16 v2, 0x13

    const/16 v3, 0x39

    aput-char v3, v0, v2

    const/16 v2, 0x14

    aput-char v4, v0, v2

    const/16 v2, 0x15

    const/16 v3, 0x41

    aput-char v3, v0, v2

    const/16 v2, 0x16

    aput-char v4, v0, v2

    const/16 v2, 0x17

    const/16 v3, 0x42

    aput-char v3, v0, v2

    const/16 v2, 0x18

    aput-char v4, v0, v2

    const/16 v2, 0x19

    const/16 v3, 0x43

    aput-char v3, v0, v2

    const/16 v2, 0x1a

    aput-char v4, v0, v2

    const/16 v2, 0x1b

    const/16 v3, 0x44

    aput-char v3, v0, v2

    const/16 v2, 0x1c

    aput-char v4, v0, v2

    const/16 v2, 0x1d

    const/16 v3, 0x45

    aput-char v3, v0, v2

    const/16 v2, 0x1e

    aput-char v4, v0, v2

    const/16 v2, 0x1f

    const/16 v3, 0x46

    aput-char v3, v0, v2

    const/16 v2, 0x20

    aput-char v5, v0, v2

    const/16 v2, 0x21

    aput-char v4, v0, v2

    const/16 v2, 0x22

    aput-char v5, v0, v2

    const/16 v2, 0x23

    aput-char v5, v0, v2

    const/16 v2, 0x24

    aput-char v5, v0, v2

    const/16 v2, 0x25

    aput-char v6, v0, v2

    const/16 v2, 0x26

    aput-char v5, v0, v2

    const/16 v2, 0x27

    const/16 v3, 0x33

    aput-char v3, v0, v2

    const/16 v2, 0x28

    aput-char v5, v0, v2

    const/16 v2, 0x29

    const/16 v3, 0x34

    aput-char v3, v0, v2

    const/16 v2, 0x2a

    aput-char v5, v0, v2

    const/16 v2, 0x2b

    const/16 v3, 0x35

    aput-char v3, v0, v2

    const/16 v2, 0x2c

    aput-char v5, v0, v2

    const/16 v2, 0x2d

    const/16 v3, 0x36

    aput-char v3, v0, v2

    const/16 v2, 0x2e

    aput-char v5, v0, v2

    const/16 v2, 0x2f

    const/16 v3, 0x37

    aput-char v3, v0, v2

    aput-char v5, v0, v4

    const/16 v2, 0x38

    aput-char v2, v0, v5

    aput-char v5, v0, v6

    const/16 v2, 0x33

    const/16 v3, 0x39

    aput-char v3, v0, v2

    const/16 v2, 0x34

    aput-char v5, v0, v2

    const/16 v2, 0x35

    const/16 v3, 0x41

    aput-char v3, v0, v2

    const/16 v2, 0x36

    aput-char v5, v0, v2

    const/16 v2, 0x37

    const/16 v3, 0x42

    aput-char v3, v0, v2

    const/16 v2, 0x38

    aput-char v5, v0, v2

    const/16 v2, 0x39

    const/16 v3, 0x43

    aput-char v3, v0, v2

    const/16 v2, 0x3a

    aput-char v5, v0, v2

    const/16 v2, 0x3b

    const/16 v3, 0x44

    aput-char v3, v0, v2

    const/16 v2, 0x3c

    aput-char v5, v0, v2

    const/16 v2, 0x3d

    const/16 v3, 0x45

    aput-char v3, v0, v2

    const/16 v2, 0x3e

    aput-char v5, v0, v2

    const/16 v2, 0x3f

    const/16 v3, 0x46

    aput-char v3, v0, v2

    const/16 v2, 0x40

    aput-char v6, v0, v2

    const/16 v2, 0x41

    aput-char v4, v0, v2

    const/16 v2, 0x42

    aput-char v6, v0, v2

    const/16 v2, 0x43

    aput-char v5, v0, v2

    const/16 v2, 0x44

    aput-char v6, v0, v2

    const/16 v2, 0x45

    aput-char v6, v0, v2

    const/16 v2, 0x46

    aput-char v6, v0, v2

    const/16 v2, 0x47

    const/16 v3, 0x33

    aput-char v3, v0, v2

    const/16 v2, 0x48

    aput-char v6, v0, v2

    const/16 v2, 0x49

    const/16 v3, 0x34

    aput-char v3, v0, v2

    const/16 v2, 0x4a

    aput-char v6, v0, v2

    const/16 v2, 0x4b

    const/16 v3, 0x35

    aput-char v3, v0, v2

    const/16 v2, 0x4c

    aput-char v6, v0, v2

    const/16 v2, 0x4d

    const/16 v3, 0x36

    aput-char v3, v0, v2

    const/16 v2, 0x4e

    aput-char v6, v0, v2

    const/16 v2, 0x4f

    const/16 v3, 0x37

    aput-char v3, v0, v2

    const/16 v2, 0x50

    aput-char v6, v0, v2

    const/16 v2, 0x51

    const/16 v3, 0x38

    aput-char v3, v0, v2

    const/16 v2, 0x52

    aput-char v6, v0, v2

    const/16 v2, 0x53

    const/16 v3, 0x39

    aput-char v3, v0, v2

    const/16 v2, 0x54

    aput-char v6, v0, v2

    const/16 v2, 0x55

    const/16 v3, 0x41

    aput-char v3, v0, v2

    const/16 v2, 0x56

    aput-char v6, v0, v2

    const/16 v2, 0x57

    const/16 v3, 0x42

    aput-char v3, v0, v2

    const/16 v2, 0x58

    aput-char v6, v0, v2

    const/16 v2, 0x59

    const/16 v3, 0x43

    aput-char v3, v0, v2

    const/16 v2, 0x5a

    aput-char v6, v0, v2

    const/16 v2, 0x5b

    const/16 v3, 0x44

    aput-char v3, v0, v2

    const/16 v2, 0x5c

    aput-char v6, v0, v2

    const/16 v2, 0x5d

    const/16 v3, 0x45

    aput-char v3, v0, v2

    const/16 v2, 0x5e

    aput-char v6, v0, v2

    const/16 v2, 0x5f

    const/16 v3, 0x46

    aput-char v3, v0, v2

    sput-object v0, Lcom/alibaba/fastjson/util/IOUtils;->ASCII_CHARS:[C

    const/16 v0, 0x24

    .line 337
    new-array v0, v0, [C

    const/4 v2, 0x0

    aput-char v4, v0, v2

    aput-char v5, v0, v1

    const/4 v2, 0x2

    aput-char v6, v0, v2

    const/4 v2, 0x3

    const/16 v3, 0x33

    aput-char v3, v0, v2

    const/16 v2, 0x34

    aput-char v2, v0, v7

    const/4 v2, 0x5

    const/16 v3, 0x35

    aput-char v3, v0, v2

    const/4 v2, 0x6

    const/16 v3, 0x36

    aput-char v3, v0, v2

    const/4 v2, 0x7

    const/16 v3, 0x37

    aput-char v3, v0, v2

    const/16 v2, 0x8

    const/16 v3, 0x38

    aput-char v3, v0, v2

    const/16 v2, 0x9

    const/16 v3, 0x39

    aput-char v3, v0, v2

    const/16 v2, 0xa

    const/16 v3, 0x61

    aput-char v3, v0, v2

    const/16 v2, 0xb

    const/16 v3, 0x62

    aput-char v3, v0, v2

    const/16 v2, 0xc

    const/16 v3, 0x63

    aput-char v3, v0, v2

    const/16 v2, 0xd

    const/16 v3, 0x64

    aput-char v3, v0, v2

    const/16 v2, 0xe

    const/16 v3, 0x65

    aput-char v3, v0, v2

    const/16 v2, 0xf

    const/16 v3, 0x66

    aput-char v3, v0, v2

    const/16 v2, 0x10

    const/16 v3, 0x67

    aput-char v3, v0, v2

    const/16 v2, 0x11

    const/16 v3, 0x68

    aput-char v3, v0, v2

    const/16 v2, 0x12

    const/16 v3, 0x69

    aput-char v3, v0, v2

    const/16 v2, 0x13

    const/16 v3, 0x6a

    aput-char v3, v0, v2

    const/16 v2, 0x14

    const/16 v3, 0x6b

    aput-char v3, v0, v2

    const/16 v2, 0x15

    const/16 v3, 0x6c

    aput-char v3, v0, v2

    const/16 v2, 0x16

    const/16 v3, 0x6d

    aput-char v3, v0, v2

    const/16 v2, 0x17

    const/16 v3, 0x6e

    aput-char v3, v0, v2

    const/16 v2, 0x18

    const/16 v3, 0x6f

    aput-char v3, v0, v2

    const/16 v2, 0x19

    const/16 v3, 0x70

    aput-char v3, v0, v2

    const/16 v2, 0x1a

    const/16 v3, 0x71

    aput-char v3, v0, v2

    const/16 v2, 0x1b

    const/16 v3, 0x72

    aput-char v3, v0, v2

    const/16 v2, 0x1c

    const/16 v3, 0x73

    aput-char v3, v0, v2

    const/16 v2, 0x1d

    const/16 v3, 0x74

    aput-char v3, v0, v2

    const/16 v2, 0x1e

    const/16 v3, 0x75

    aput-char v3, v0, v2

    const/16 v2, 0x1f

    const/16 v3, 0x76

    aput-char v3, v0, v2

    const/16 v2, 0x20

    const/16 v3, 0x77

    aput-char v3, v0, v2

    const/16 v2, 0x21

    const/16 v3, 0x78

    aput-char v3, v0, v2

    const/16 v2, 0x22

    const/16 v3, 0x79

    aput-char v3, v0, v2

    const/16 v2, 0x23

    const/16 v3, 0x7a

    aput-char v3, v0, v2

    sput-object v0, Lcom/alibaba/fastjson/util/IOUtils;->digits:[C

    const/16 v0, 0x64

    .line 340
    new-array v0, v0, [C

    const/4 v2, 0x0

    aput-char v4, v0, v2

    aput-char v4, v0, v1

    const/4 v2, 0x2

    aput-char v4, v0, v2

    const/4 v2, 0x3

    aput-char v4, v0, v2

    aput-char v4, v0, v7

    const/4 v2, 0x5

    aput-char v4, v0, v2

    const/4 v2, 0x6

    aput-char v4, v0, v2

    const/4 v2, 0x7

    aput-char v4, v0, v2

    const/16 v2, 0x8

    aput-char v4, v0, v2

    const/16 v2, 0x9

    aput-char v4, v0, v2

    const/16 v2, 0xa

    aput-char v5, v0, v2

    const/16 v2, 0xb

    aput-char v5, v0, v2

    const/16 v2, 0xc

    aput-char v5, v0, v2

    const/16 v2, 0xd

    aput-char v5, v0, v2

    const/16 v2, 0xe

    aput-char v5, v0, v2

    const/16 v2, 0xf

    aput-char v5, v0, v2

    const/16 v2, 0x10

    aput-char v5, v0, v2

    const/16 v2, 0x11

    aput-char v5, v0, v2

    const/16 v2, 0x12

    aput-char v5, v0, v2

    const/16 v2, 0x13

    aput-char v5, v0, v2

    const/16 v2, 0x14

    aput-char v6, v0, v2

    const/16 v2, 0x15

    aput-char v6, v0, v2

    const/16 v2, 0x16

    aput-char v6, v0, v2

    const/16 v2, 0x17

    aput-char v6, v0, v2

    const/16 v2, 0x18

    aput-char v6, v0, v2

    const/16 v2, 0x19

    aput-char v6, v0, v2

    const/16 v2, 0x1a

    aput-char v6, v0, v2

    const/16 v2, 0x1b

    aput-char v6, v0, v2

    const/16 v2, 0x1c

    aput-char v6, v0, v2

    const/16 v2, 0x1d

    aput-char v6, v0, v2

    const/16 v2, 0x1e

    const/16 v3, 0x33

    aput-char v3, v0, v2

    const/16 v2, 0x1f

    const/16 v3, 0x33

    aput-char v3, v0, v2

    const/16 v2, 0x20

    const/16 v3, 0x33

    aput-char v3, v0, v2

    const/16 v2, 0x21

    const/16 v3, 0x33

    aput-char v3, v0, v2

    const/16 v2, 0x22

    const/16 v3, 0x33

    aput-char v3, v0, v2

    const/16 v2, 0x23

    const/16 v3, 0x33

    aput-char v3, v0, v2

    const/16 v2, 0x24

    const/16 v3, 0x33

    aput-char v3, v0, v2

    const/16 v2, 0x25

    const/16 v3, 0x33

    aput-char v3, v0, v2

    const/16 v2, 0x26

    const/16 v3, 0x33

    aput-char v3, v0, v2

    const/16 v2, 0x27

    const/16 v3, 0x33

    aput-char v3, v0, v2

    const/16 v2, 0x28

    const/16 v3, 0x34

    aput-char v3, v0, v2

    const/16 v2, 0x29

    const/16 v3, 0x34

    aput-char v3, v0, v2

    const/16 v2, 0x2a

    const/16 v3, 0x34

    aput-char v3, v0, v2

    const/16 v2, 0x2b

    const/16 v3, 0x34

    aput-char v3, v0, v2

    const/16 v2, 0x2c

    const/16 v3, 0x34

    aput-char v3, v0, v2

    const/16 v2, 0x2d

    const/16 v3, 0x34

    aput-char v3, v0, v2

    const/16 v2, 0x2e

    const/16 v3, 0x34

    aput-char v3, v0, v2

    const/16 v2, 0x2f

    const/16 v3, 0x34

    aput-char v3, v0, v2

    const/16 v2, 0x34

    aput-char v2, v0, v4

    const/16 v2, 0x34

    aput-char v2, v0, v5

    const/16 v2, 0x35

    aput-char v2, v0, v6

    const/16 v2, 0x33

    const/16 v3, 0x35

    aput-char v3, v0, v2

    const/16 v2, 0x34

    const/16 v3, 0x35

    aput-char v3, v0, v2

    const/16 v2, 0x35

    const/16 v3, 0x35

    aput-char v3, v0, v2

    const/16 v2, 0x36

    const/16 v3, 0x35

    aput-char v3, v0, v2

    const/16 v2, 0x37

    const/16 v3, 0x35

    aput-char v3, v0, v2

    const/16 v2, 0x38

    const/16 v3, 0x35

    aput-char v3, v0, v2

    const/16 v2, 0x39

    const/16 v3, 0x35

    aput-char v3, v0, v2

    const/16 v2, 0x3a

    const/16 v3, 0x35

    aput-char v3, v0, v2

    const/16 v2, 0x3b

    const/16 v3, 0x35

    aput-char v3, v0, v2

    const/16 v2, 0x3c

    const/16 v3, 0x36

    aput-char v3, v0, v2

    const/16 v2, 0x3d

    const/16 v3, 0x36

    aput-char v3, v0, v2

    const/16 v2, 0x3e

    const/16 v3, 0x36

    aput-char v3, v0, v2

    const/16 v2, 0x3f

    const/16 v3, 0x36

    aput-char v3, v0, v2

    const/16 v2, 0x40

    const/16 v3, 0x36

    aput-char v3, v0, v2

    const/16 v2, 0x41

    const/16 v3, 0x36

    aput-char v3, v0, v2

    const/16 v2, 0x42

    const/16 v3, 0x36

    aput-char v3, v0, v2

    const/16 v2, 0x43

    const/16 v3, 0x36

    aput-char v3, v0, v2

    const/16 v2, 0x44

    const/16 v3, 0x36

    aput-char v3, v0, v2

    const/16 v2, 0x45

    const/16 v3, 0x36

    aput-char v3, v0, v2

    const/16 v2, 0x46

    const/16 v3, 0x37

    aput-char v3, v0, v2

    const/16 v2, 0x47

    const/16 v3, 0x37

    aput-char v3, v0, v2

    const/16 v2, 0x48

    const/16 v3, 0x37

    aput-char v3, v0, v2

    const/16 v2, 0x49

    const/16 v3, 0x37

    aput-char v3, v0, v2

    const/16 v2, 0x4a

    const/16 v3, 0x37

    aput-char v3, v0, v2

    const/16 v2, 0x4b

    const/16 v3, 0x37

    aput-char v3, v0, v2

    const/16 v2, 0x4c

    const/16 v3, 0x37

    aput-char v3, v0, v2

    const/16 v2, 0x4d

    const/16 v3, 0x37

    aput-char v3, v0, v2

    const/16 v2, 0x4e

    const/16 v3, 0x37

    aput-char v3, v0, v2

    const/16 v2, 0x4f

    const/16 v3, 0x37

    aput-char v3, v0, v2

    const/16 v2, 0x50

    const/16 v3, 0x38

    aput-char v3, v0, v2

    const/16 v2, 0x51

    const/16 v3, 0x38

    aput-char v3, v0, v2

    const/16 v2, 0x52

    const/16 v3, 0x38

    aput-char v3, v0, v2

    const/16 v2, 0x53

    const/16 v3, 0x38

    aput-char v3, v0, v2

    const/16 v2, 0x54

    const/16 v3, 0x38

    aput-char v3, v0, v2

    const/16 v2, 0x55

    const/16 v3, 0x38

    aput-char v3, v0, v2

    const/16 v2, 0x56

    const/16 v3, 0x38

    aput-char v3, v0, v2

    const/16 v2, 0x57

    const/16 v3, 0x38

    aput-char v3, v0, v2

    const/16 v2, 0x58

    const/16 v3, 0x38

    aput-char v3, v0, v2

    const/16 v2, 0x59

    const/16 v3, 0x38

    aput-char v3, v0, v2

    const/16 v2, 0x5a

    const/16 v3, 0x39

    aput-char v3, v0, v2

    const/16 v2, 0x5b

    const/16 v3, 0x39

    aput-char v3, v0, v2

    const/16 v2, 0x5c

    const/16 v3, 0x39

    aput-char v3, v0, v2

    const/16 v2, 0x5d

    const/16 v3, 0x39

    aput-char v3, v0, v2

    const/16 v2, 0x5e

    const/16 v3, 0x39

    aput-char v3, v0, v2

    const/16 v2, 0x5f

    const/16 v3, 0x39

    aput-char v3, v0, v2

    const/16 v2, 0x60

    const/16 v3, 0x39

    aput-char v3, v0, v2

    const/16 v2, 0x61

    const/16 v3, 0x39

    aput-char v3, v0, v2

    const/16 v2, 0x62

    const/16 v3, 0x39

    aput-char v3, v0, v2

    const/16 v2, 0x63

    const/16 v3, 0x39

    aput-char v3, v0, v2

    sput-object v0, Lcom/alibaba/fastjson/util/IOUtils;->DigitTens:[C

    const/16 v0, 0x64

    .line 346
    new-array v0, v0, [C

    const/4 v2, 0x0

    aput-char v4, v0, v2

    aput-char v5, v0, v1

    const/4 v2, 0x2

    aput-char v6, v0, v2

    const/4 v2, 0x3

    const/16 v3, 0x33

    aput-char v3, v0, v2

    const/16 v2, 0x34

    aput-char v2, v0, v7

    const/4 v2, 0x5

    const/16 v3, 0x35

    aput-char v3, v0, v2

    const/4 v2, 0x6

    const/16 v3, 0x36

    aput-char v3, v0, v2

    const/4 v2, 0x7

    const/16 v3, 0x37

    aput-char v3, v0, v2

    const/16 v2, 0x8

    const/16 v3, 0x38

    aput-char v3, v0, v2

    const/16 v2, 0x9

    const/16 v3, 0x39

    aput-char v3, v0, v2

    const/16 v2, 0xa

    aput-char v4, v0, v2

    const/16 v2, 0xb

    aput-char v5, v0, v2

    const/16 v2, 0xc

    aput-char v6, v0, v2

    const/16 v2, 0xd

    const/16 v3, 0x33

    aput-char v3, v0, v2

    const/16 v2, 0xe

    const/16 v3, 0x34

    aput-char v3, v0, v2

    const/16 v2, 0xf

    const/16 v3, 0x35

    aput-char v3, v0, v2

    const/16 v2, 0x10

    const/16 v3, 0x36

    aput-char v3, v0, v2

    const/16 v2, 0x11

    const/16 v3, 0x37

    aput-char v3, v0, v2

    const/16 v2, 0x12

    const/16 v3, 0x38

    aput-char v3, v0, v2

    const/16 v2, 0x13

    const/16 v3, 0x39

    aput-char v3, v0, v2

    const/16 v2, 0x14

    aput-char v4, v0, v2

    const/16 v2, 0x15

    aput-char v5, v0, v2

    const/16 v2, 0x16

    aput-char v6, v0, v2

    const/16 v2, 0x17

    const/16 v3, 0x33

    aput-char v3, v0, v2

    const/16 v2, 0x18

    const/16 v3, 0x34

    aput-char v3, v0, v2

    const/16 v2, 0x19

    const/16 v3, 0x35

    aput-char v3, v0, v2

    const/16 v2, 0x1a

    const/16 v3, 0x36

    aput-char v3, v0, v2

    const/16 v2, 0x1b

    const/16 v3, 0x37

    aput-char v3, v0, v2

    const/16 v2, 0x1c

    const/16 v3, 0x38

    aput-char v3, v0, v2

    const/16 v2, 0x1d

    const/16 v3, 0x39

    aput-char v3, v0, v2

    const/16 v2, 0x1e

    aput-char v4, v0, v2

    const/16 v2, 0x1f

    aput-char v5, v0, v2

    const/16 v2, 0x20

    aput-char v6, v0, v2

    const/16 v2, 0x21

    const/16 v3, 0x33

    aput-char v3, v0, v2

    const/16 v2, 0x22

    const/16 v3, 0x34

    aput-char v3, v0, v2

    const/16 v2, 0x23

    const/16 v3, 0x35

    aput-char v3, v0, v2

    const/16 v2, 0x24

    const/16 v3, 0x36

    aput-char v3, v0, v2

    const/16 v2, 0x25

    const/16 v3, 0x37

    aput-char v3, v0, v2

    const/16 v2, 0x26

    const/16 v3, 0x38

    aput-char v3, v0, v2

    const/16 v2, 0x27

    const/16 v3, 0x39

    aput-char v3, v0, v2

    const/16 v2, 0x28

    aput-char v4, v0, v2

    const/16 v2, 0x29

    aput-char v5, v0, v2

    const/16 v2, 0x2a

    aput-char v6, v0, v2

    const/16 v2, 0x2b

    const/16 v3, 0x33

    aput-char v3, v0, v2

    const/16 v2, 0x2c

    const/16 v3, 0x34

    aput-char v3, v0, v2

    const/16 v2, 0x2d

    const/16 v3, 0x35

    aput-char v3, v0, v2

    const/16 v2, 0x2e

    const/16 v3, 0x36

    aput-char v3, v0, v2

    const/16 v2, 0x2f

    const/16 v3, 0x37

    aput-char v3, v0, v2

    const/16 v2, 0x38

    aput-char v2, v0, v4

    const/16 v2, 0x39

    aput-char v2, v0, v5

    aput-char v4, v0, v6

    const/16 v2, 0x33

    aput-char v5, v0, v2

    const/16 v2, 0x34

    aput-char v6, v0, v2

    const/16 v2, 0x35

    const/16 v3, 0x33

    aput-char v3, v0, v2

    const/16 v2, 0x36

    const/16 v3, 0x34

    aput-char v3, v0, v2

    const/16 v2, 0x37

    const/16 v3, 0x35

    aput-char v3, v0, v2

    const/16 v2, 0x38

    const/16 v3, 0x36

    aput-char v3, v0, v2

    const/16 v2, 0x39

    const/16 v3, 0x37

    aput-char v3, v0, v2

    const/16 v2, 0x3a

    const/16 v3, 0x38

    aput-char v3, v0, v2

    const/16 v2, 0x3b

    const/16 v3, 0x39

    aput-char v3, v0, v2

    const/16 v2, 0x3c

    aput-char v4, v0, v2

    const/16 v2, 0x3d

    aput-char v5, v0, v2

    const/16 v2, 0x3e

    aput-char v6, v0, v2

    const/16 v2, 0x3f

    const/16 v3, 0x33

    aput-char v3, v0, v2

    const/16 v2, 0x40

    const/16 v3, 0x34

    aput-char v3, v0, v2

    const/16 v2, 0x41

    const/16 v3, 0x35

    aput-char v3, v0, v2

    const/16 v2, 0x42

    const/16 v3, 0x36

    aput-char v3, v0, v2

    const/16 v2, 0x43

    const/16 v3, 0x37

    aput-char v3, v0, v2

    const/16 v2, 0x44

    const/16 v3, 0x38

    aput-char v3, v0, v2

    const/16 v2, 0x45

    const/16 v3, 0x39

    aput-char v3, v0, v2

    const/16 v2, 0x46

    aput-char v4, v0, v2

    const/16 v2, 0x47

    aput-char v5, v0, v2

    const/16 v2, 0x48

    aput-char v6, v0, v2

    const/16 v2, 0x49

    const/16 v3, 0x33

    aput-char v3, v0, v2

    const/16 v2, 0x4a

    const/16 v3, 0x34

    aput-char v3, v0, v2

    const/16 v2, 0x4b

    const/16 v3, 0x35

    aput-char v3, v0, v2

    const/16 v2, 0x4c

    const/16 v3, 0x36

    aput-char v3, v0, v2

    const/16 v2, 0x4d

    const/16 v3, 0x37

    aput-char v3, v0, v2

    const/16 v2, 0x4e

    const/16 v3, 0x38

    aput-char v3, v0, v2

    const/16 v2, 0x4f

    const/16 v3, 0x39

    aput-char v3, v0, v2

    const/16 v2, 0x50

    aput-char v4, v0, v2

    const/16 v2, 0x51

    aput-char v5, v0, v2

    const/16 v2, 0x52

    aput-char v6, v0, v2

    const/16 v2, 0x53

    const/16 v3, 0x33

    aput-char v3, v0, v2

    const/16 v2, 0x54

    const/16 v3, 0x34

    aput-char v3, v0, v2

    const/16 v2, 0x55

    const/16 v3, 0x35

    aput-char v3, v0, v2

    const/16 v2, 0x56

    const/16 v3, 0x36

    aput-char v3, v0, v2

    const/16 v2, 0x57

    const/16 v3, 0x37

    aput-char v3, v0, v2

    const/16 v2, 0x58

    const/16 v3, 0x38

    aput-char v3, v0, v2

    const/16 v2, 0x59

    const/16 v3, 0x39

    aput-char v3, v0, v2

    const/16 v2, 0x5a

    aput-char v4, v0, v2

    const/16 v2, 0x5b

    aput-char v5, v0, v2

    const/16 v2, 0x5c

    aput-char v6, v0, v2

    const/16 v2, 0x5d

    const/16 v3, 0x33

    aput-char v3, v0, v2

    const/16 v2, 0x5e

    const/16 v3, 0x34

    aput-char v3, v0, v2

    const/16 v2, 0x5f

    const/16 v3, 0x35

    aput-char v3, v0, v2

    const/16 v2, 0x60

    const/16 v3, 0x36

    aput-char v3, v0, v2

    const/16 v2, 0x61

    const/16 v3, 0x37

    aput-char v3, v0, v2

    const/16 v2, 0x62

    const/16 v3, 0x38

    aput-char v3, v0, v2

    const/16 v2, 0x63

    const/16 v3, 0x39

    aput-char v3, v0, v2

    sput-object v0, Lcom/alibaba/fastjson/util/IOUtils;->DigitOnes:[C

    const/16 v0, 0xa

    .line 352
    new-array v0, v0, [I

    const/4 v2, 0x0

    const/16 v3, 0x9

    aput v3, v0, v2

    const/16 v2, 0x63

    aput v2, v0, v1

    const/4 v1, 0x2

    const/16 v2, 0x3e7

    aput v2, v0, v1

    const/4 v1, 0x3

    const/16 v2, 0x270f

    aput v2, v0, v1

    const v1, 0x1869f

    aput v1, v0, v7

    const/4 v1, 0x5

    const v2, 0xf423f

    aput v2, v0, v1

    const/4 v1, 0x6

    const v2, 0x98967f

    aput v2, v0, v1

    const/4 v1, 0x7

    const v2, 0x5f5e0ff

    aput v2, v0, v1

    const/16 v1, 0x8

    const v2, 0x3b9ac9ff

    aput v2, v0, v1

    const/16 v1, 0x9

    const v2, 0x7fffffff

    aput v2, v0, v1

    sput-object v0, Lcom/alibaba/fastjson/util/IOUtils;->sizeTable:[I

    const-string/jumbo v0, "ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789+/"

    .line 391
    invoke-virtual {v0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    sput-object v0, Lcom/alibaba/fastjson/util/IOUtils;->CA:[C

    const/16 v0, 0x100

    .line 392
    new-array v0, v0, [I

    sput-object v0, Lcom/alibaba/fastjson/util/IOUtils;->IA:[I

    .line 394
    sget-object v0, Lcom/alibaba/fastjson/util/IOUtils;->IA:[I

    const/4 v1, -0x1

    invoke-static {v0, v1}, Ljava/util/Arrays;->fill([II)V

    const/4 v0, 0x0

    .line 395
    sget-object v1, Lcom/alibaba/fastjson/util/IOUtils;->CA:[C

    array-length v1, v1

    :goto_6
    if-lt v0, v1, :cond_14

    .line 397
    sget-object v0, Lcom/alibaba/fastjson/util/IOUtils;->IA:[I

    const/16 v1, 0x3d

    const/4 v2, 0x0

    aput v2, v0, v1

    .line 398
    return-void

    :cond_0
    const/16 v2, 0x41

    .line 56
    if-ge v0, v2, :cond_4

    :cond_1
    const/16 v2, 0x61

    .line 58
    if-ge v0, v2, :cond_5

    :cond_2
    const/16 v2, 0x5f

    .line 60
    if-ne v0, v2, :cond_6

    .line 61
    :cond_3
    sget-object v2, Lcom/alibaba/fastjson/util/IOUtils;->firstIdentifierFlags:[Z

    aput-boolean v1, v2, v0

    .line 55
    :goto_7
    add-int/lit8 v0, v0, 0x1

    int-to-char v0, v0

    goto/16 :goto_0

    :cond_4
    const/16 v2, 0x5a

    .line 56
    if-gt v0, v2, :cond_1

    .line 57
    sget-object v2, Lcom/alibaba/fastjson/util/IOUtils;->firstIdentifierFlags:[Z

    aput-boolean v1, v2, v0

    goto :goto_7

    :cond_5
    const/16 v2, 0x7a

    .line 58
    if-gt v0, v2, :cond_2

    .line 59
    sget-object v2, Lcom/alibaba/fastjson/util/IOUtils;->firstIdentifierFlags:[Z

    aput-boolean v1, v2, v0

    goto :goto_7

    :cond_6
    const/16 v2, 0x24

    .line 60
    if-eq v0, v2, :cond_3

    goto :goto_7

    :cond_7
    const/16 v2, 0x41

    .line 70
    if-ge v0, v2, :cond_b

    :cond_8
    const/16 v2, 0x61

    .line 72
    if-ge v0, v2, :cond_c

    :cond_9
    const/16 v2, 0x5f

    .line 74
    if-eq v0, v2, :cond_d

    .line 76
    if-ge v0, v4, :cond_e

    .line 69
    :cond_a
    :goto_8
    add-int/lit8 v0, v0, 0x1

    int-to-char v0, v0

    goto/16 :goto_1

    :cond_b
    const/16 v2, 0x5a

    .line 70
    if-gt v0, v2, :cond_8

    .line 71
    sget-object v2, Lcom/alibaba/fastjson/util/IOUtils;->identifierFlags:[Z

    aput-boolean v1, v2, v0

    goto :goto_8

    :cond_c
    const/16 v2, 0x7a

    .line 72
    if-gt v0, v2, :cond_9

    .line 73
    sget-object v2, Lcom/alibaba/fastjson/util/IOUtils;->identifierFlags:[Z

    aput-boolean v1, v2, v0

    goto :goto_8

    .line 75
    :cond_d
    sget-object v2, Lcom/alibaba/fastjson/util/IOUtils;->identifierFlags:[Z

    aput-boolean v1, v2, v0

    goto :goto_8

    :cond_e
    const/16 v2, 0x39

    .line 76
    if-gt v0, v2, :cond_a

    .line 77
    sget-object v2, Lcom/alibaba/fastjson/util/IOUtils;->identifierFlags:[Z

    aput-boolean v1, v2, v0

    goto :goto_8

    .line 87
    :catch_0
    move-exception v0

    goto/16 :goto_2

    .line 164
    :cond_f
    sget-object v2, Lcom/alibaba/fastjson/util/IOUtils;->specicalFlags_doubleQuotes:[B

    aput-byte v7, v2, v0

    .line 165
    sget-object v2, Lcom/alibaba/fastjson/util/IOUtils;->specicalFlags_singleQuotes:[B

    aput-byte v7, v2, v0

    .line 163
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_3

    .line 169
    :cond_10
    sget-object v2, Lcom/alibaba/fastjson/util/IOUtils;->specicalFlags_doubleQuotes:[B

    aput-byte v7, v2, v0

    .line 170
    sget-object v2, Lcom/alibaba/fastjson/util/IOUtils;->specicalFlags_singleQuotes:[B

    aput-byte v7, v2, v0

    .line 168
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_4

    .line 174
    :cond_11
    sget-object v3, Lcom/alibaba/fastjson/util/IOUtils;->specicalFlags_doubleQuotesFlags:[Z

    sget-object v0, Lcom/alibaba/fastjson/util/IOUtils;->specicalFlags_doubleQuotes:[B

    aget-byte v0, v0, v2

    if-nez v0, :cond_12

    const/4 v0, 0x0

    :goto_9
    aput-boolean v0, v3, v2

    .line 175
    sget-object v3, Lcom/alibaba/fastjson/util/IOUtils;->specicalFlags_singleQuotesFlags:[Z

    sget-object v0, Lcom/alibaba/fastjson/util/IOUtils;->specicalFlags_singleQuotes:[B

    aget-byte v0, v0, v2

    if-nez v0, :cond_13

    const/4 v0, 0x0

    :goto_a
    aput-boolean v0, v3, v2

    .line 173
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto/16 :goto_5

    :cond_12
    move v0, v1

    .line 174
    goto :goto_9

    :cond_13
    move v0, v1

    .line 175
    goto :goto_a

    .line 396
    :cond_14
    sget-object v2, Lcom/alibaba/fastjson/util/IOUtils;->IA:[I

    sget-object v3, Lcom/alibaba/fastjson/util/IOUtils;->CA:[C

    aget-char v3, v3, v0

    aput v0, v2, v3

    .line 395
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_6
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static close(Ljava/io/Closeable;)V
    .locals 1

    .prologue
    .line 206
    if-nez p0, :cond_0

    .line 213
    :goto_0
    return-void

    .line 208
    :cond_0
    :try_start_0
    invoke-interface {p0}, Ljava/io/Closeable;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 211
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public static decode(Ljava/nio/charset/CharsetDecoder;Ljava/nio/ByteBuffer;Ljava/nio/CharBuffer;)V
    .locals 4

    .prologue
    .line 365
    const/4 v0, 0x1

    :try_start_0
    invoke-virtual {p0, p1, p2, v0}, Ljava/nio/charset/CharsetDecoder;->decode(Ljava/nio/ByteBuffer;Ljava/nio/CharBuffer;Z)Ljava/nio/charset/CoderResult;

    move-result-object v0

    .line 367
    invoke-virtual {v0}, Ljava/nio/charset/CoderResult;->isUnderflow()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 371
    :goto_0
    invoke-virtual {p0, p2}, Ljava/nio/charset/CharsetDecoder;->flush(Ljava/nio/CharBuffer;)Ljava/nio/charset/CoderResult;

    move-result-object v0

    .line 373
    invoke-virtual {v0}, Ljava/nio/charset/CoderResult;->isUnderflow()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 381
    :goto_1
    return-void

    .line 368
    :cond_0
    invoke-virtual {v0}, Ljava/nio/charset/CoderResult;->throwException()V
    :try_end_0
    .catch Ljava/nio/charset/CharacterCodingException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 380
    :catch_0
    move-exception v0

    .line 379
    new-instance v1, Lcom/alibaba/fastjson/JSONException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "utf8 decode error, "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/nio/charset/CharacterCodingException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 374
    :cond_1
    :try_start_1
    invoke-virtual {v0}, Ljava/nio/charset/CoderResult;->throwException()V
    :try_end_1
    .catch Ljava/nio/charset/CharacterCodingException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1
.end method

.method public static decodeBase64(Ljava/lang/String;)[B
    .locals 13

    .prologue
    const/16 v8, 0x4c

    const/16 v7, 0x3d

    const/4 v1, 0x0

    .line 534
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    .line 535
    if-eqz v2, :cond_4

    .line 539
    add-int/lit8 v0, v2, -0x1

    move v4, v1

    .line 542
    :goto_0
    if-lt v4, v0, :cond_5

    :cond_0
    move v6, v0

    .line 546
    :goto_1
    if-gtz v6, :cond_6

    .line 550
    :cond_1
    invoke-virtual {p0, v6}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-eq v0, v7, :cond_7

    move v0, v1

    .line 551
    :goto_2
    sub-int v3, v6, v4

    add-int/lit8 v3, v3, 0x1

    .line 552
    if-gt v2, v8, :cond_9

    move v2, v1

    .line 554
    :goto_3
    sub-int/2addr v3, v2

    mul-int/lit8 v3, v3, 0x6

    shr-int/lit8 v3, v3, 0x3

    sub-int v7, v3, v0

    .line 555
    new-array v8, v7, [B

    .line 559
    div-int/lit8 v3, v7, 0x3

    mul-int/lit8 v9, v3, 0x3

    move v3, v1

    move v5, v1

    :cond_2
    :goto_4
    if-lt v5, v9, :cond_b

    .line 576
    if-lt v5, v7, :cond_c

    .line 586
    :cond_3
    return-object v8

    .line 536
    :cond_4
    new-array v0, v1, [B

    return-object v0

    .line 542
    :cond_5
    sget-object v3, Lcom/alibaba/fastjson/util/IOUtils;->IA:[I

    invoke-virtual {p0, v4}, Ljava/lang/String;->charAt(I)C

    move-result v5

    and-int/lit16 v5, v5, 0xff

    aget v3, v3, v5

    if-gez v3, :cond_0

    .line 543
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 546
    :cond_6
    sget-object v0, Lcom/alibaba/fastjson/util/IOUtils;->IA:[I

    invoke-virtual {p0, v6}, Ljava/lang/String;->charAt(I)C

    move-result v3

    and-int/lit16 v3, v3, 0xff

    aget v0, v0, v3

    if-gez v0, :cond_1

    .line 547
    add-int/lit8 v0, v6, -0x1

    move v6, v0

    goto :goto_1

    .line 550
    :cond_7
    add-int/lit8 v0, v6, -0x1

    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-eq v0, v7, :cond_8

    const/4 v0, 0x1

    goto :goto_2

    :cond_8
    const/4 v0, 0x2

    goto :goto_2

    .line 552
    :cond_9
    invoke-virtual {p0, v8}, Ljava/lang/String;->charAt(I)C

    move-result v2

    const/16 v5, 0xd

    if-eq v2, v5, :cond_a

    move v2, v1

    :goto_5
    shl-int/lit8 v2, v2, 0x1

    goto :goto_3

    :cond_a
    div-int/lit8 v2, v3, 0x4e

    goto :goto_5

    .line 561
    :cond_b
    sget-object v10, Lcom/alibaba/fastjson/util/IOUtils;->IA:[I

    add-int/lit8 v11, v4, 0x1

    invoke-virtual {p0, v4}, Ljava/lang/String;->charAt(I)C

    move-result v4

    aget v4, v10, v4

    shl-int/lit8 v4, v4, 0x12

    sget-object v10, Lcom/alibaba/fastjson/util/IOUtils;->IA:[I

    add-int/lit8 v12, v11, 0x1

    invoke-virtual {p0, v11}, Ljava/lang/String;->charAt(I)C

    move-result v11

    aget v10, v10, v11

    shl-int/lit8 v10, v10, 0xc

    or-int/2addr v4, v10

    sget-object v10, Lcom/alibaba/fastjson/util/IOUtils;->IA:[I

    add-int/lit8 v11, v12, 0x1

    invoke-virtual {p0, v12}, Ljava/lang/String;->charAt(I)C

    move-result v12

    aget v10, v10, v12

    shl-int/lit8 v10, v10, 0x6

    or-int/2addr v10, v4

    sget-object v12, Lcom/alibaba/fastjson/util/IOUtils;->IA:[I

    add-int/lit8 v4, v11, 0x1

    .line 562
    invoke-virtual {p0, v11}, Ljava/lang/String;->charAt(I)C

    move-result v11

    aget v11, v12, v11

    or-int/2addr v10, v11

    .line 565
    add-int/lit8 v11, v5, 0x1

    shr-int/lit8 v12, v10, 0x10

    int-to-byte v12, v12

    int-to-byte v12, v12

    aput-byte v12, v8, v5

    .line 566
    add-int/lit8 v12, v11, 0x1

    shr-int/lit8 v5, v10, 0x8

    int-to-byte v5, v5

    int-to-byte v5, v5

    aput-byte v5, v8, v11

    .line 567
    add-int/lit8 v5, v12, 0x1

    int-to-byte v10, v10

    int-to-byte v10, v10

    aput-byte v10, v8, v12

    .line 570
    if-lez v2, :cond_2

    add-int/lit8 v3, v3, 0x1

    const/16 v10, 0x13

    if-ne v3, v10, :cond_2

    .line 571
    add-int/lit8 v3, v4, 0x2

    move v4, v3

    move v3, v1

    .line 572
    goto/16 :goto_4

    :cond_c
    move v3, v1

    move v2, v4

    .line 579
    :goto_6
    sub-int v4, v6, v0

    if-le v2, v4, :cond_d

    const/16 v0, 0x10

    move v1, v5

    .line 582
    :goto_7
    if-ge v1, v7, :cond_3

    .line 583
    add-int/lit8 v2, v1, 0x1

    shr-int v4, v3, v0

    int-to-byte v4, v4

    int-to-byte v4, v4

    aput-byte v4, v8, v1

    .line 582
    add-int/lit8 v0, v0, -0x8

    move v1, v2

    goto :goto_7

    .line 580
    :cond_d
    sget-object v9, Lcom/alibaba/fastjson/util/IOUtils;->IA:[I

    add-int/lit8 v4, v2, 0x1

    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v2

    aget v2, v9, v2

    mul-int/lit8 v9, v1, 0x6

    rsub-int/lit8 v9, v9, 0x12

    shl-int/2addr v2, v9

    or-int/2addr v2, v3

    .line 579
    add-int/lit8 v1, v1, 0x1

    move v3, v2

    move v2, v4

    goto :goto_6
.end method

.method public static decodeBase64(Ljava/lang/String;II)[B
    .locals 13

    .prologue
    const/16 v7, 0x4c

    const/16 v5, 0x3d

    const/4 v1, 0x0

    .line 468
    if-eqz p2, :cond_4

    .line 472
    add-int v0, p1, p2

    add-int/lit8 v0, v0, -0x1

    move v4, p1

    .line 475
    :goto_0
    if-lt v4, v0, :cond_5

    :cond_0
    move v6, v0

    .line 479
    :goto_1
    if-gtz v6, :cond_6

    .line 483
    :cond_1
    invoke-virtual {p0, v6}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-eq v0, v5, :cond_7

    move v0, v1

    .line 484
    :goto_2
    sub-int v2, v6, v4

    add-int/lit8 v3, v2, 0x1

    .line 485
    if-gt p2, v7, :cond_9

    move v2, v1

    .line 487
    :goto_3
    sub-int/2addr v3, v2

    mul-int/lit8 v3, v3, 0x6

    shr-int/lit8 v3, v3, 0x3

    sub-int v7, v3, v0

    .line 488
    new-array v8, v7, [B

    .line 492
    div-int/lit8 v3, v7, 0x3

    mul-int/lit8 v9, v3, 0x3

    move v3, v1

    move v5, v1

    :cond_2
    :goto_4
    if-lt v5, v9, :cond_b

    .line 508
    if-lt v5, v7, :cond_c

    .line 518
    :cond_3
    return-object v8

    .line 469
    :cond_4
    new-array v0, v1, [B

    return-object v0

    .line 475
    :cond_5
    sget-object v2, Lcom/alibaba/fastjson/util/IOUtils;->IA:[I

    invoke-virtual {p0, v4}, Ljava/lang/String;->charAt(I)C

    move-result v3

    aget v2, v2, v3

    if-gez v2, :cond_0

    .line 476
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 479
    :cond_6
    sget-object v0, Lcom/alibaba/fastjson/util/IOUtils;->IA:[I

    invoke-virtual {p0, v6}, Ljava/lang/String;->charAt(I)C

    move-result v2

    aget v0, v0, v2

    if-gez v0, :cond_1

    .line 480
    add-int/lit8 v0, v6, -0x1

    move v6, v0

    goto :goto_1

    .line 483
    :cond_7
    add-int/lit8 v0, v6, -0x1

    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-eq v0, v5, :cond_8

    const/4 v0, 0x1

    goto :goto_2

    :cond_8
    const/4 v0, 0x2

    goto :goto_2

    .line 485
    :cond_9
    invoke-virtual {p0, v7}, Ljava/lang/String;->charAt(I)C

    move-result v2

    const/16 v5, 0xd

    if-eq v2, v5, :cond_a

    move v2, v1

    :goto_5
    shl-int/lit8 v2, v2, 0x1

    goto :goto_3

    :cond_a
    div-int/lit8 v2, v3, 0x4e

    goto :goto_5

    .line 494
    :cond_b
    sget-object v10, Lcom/alibaba/fastjson/util/IOUtils;->IA:[I

    add-int/lit8 v11, v4, 0x1

    invoke-virtual {p0, v4}, Ljava/lang/String;->charAt(I)C

    move-result v4

    aget v4, v10, v4

    shl-int/lit8 v4, v4, 0x12

    sget-object v10, Lcom/alibaba/fastjson/util/IOUtils;->IA:[I

    add-int/lit8 v12, v11, 0x1

    invoke-virtual {p0, v11}, Ljava/lang/String;->charAt(I)C

    move-result v11

    aget v10, v10, v11

    shl-int/lit8 v10, v10, 0xc

    or-int/2addr v4, v10

    sget-object v10, Lcom/alibaba/fastjson/util/IOUtils;->IA:[I

    add-int/lit8 v11, v12, 0x1

    invoke-virtual {p0, v12}, Ljava/lang/String;->charAt(I)C

    move-result v12

    aget v10, v10, v12

    shl-int/lit8 v10, v10, 0x6

    or-int/2addr v10, v4

    sget-object v12, Lcom/alibaba/fastjson/util/IOUtils;->IA:[I

    add-int/lit8 v4, v11, 0x1

    invoke-virtual {p0, v11}, Ljava/lang/String;->charAt(I)C

    move-result v11

    aget v11, v12, v11

    or-int/2addr v10, v11

    .line 497
    add-int/lit8 v11, v5, 0x1

    shr-int/lit8 v12, v10, 0x10

    int-to-byte v12, v12

    int-to-byte v12, v12

    aput-byte v12, v8, v5

    .line 498
    add-int/lit8 v12, v11, 0x1

    shr-int/lit8 v5, v10, 0x8

    int-to-byte v5, v5

    int-to-byte v5, v5

    aput-byte v5, v8, v11

    .line 499
    add-int/lit8 v5, v12, 0x1

    int-to-byte v10, v10

    int-to-byte v10, v10

    aput-byte v10, v8, v12

    .line 502
    if-lez v2, :cond_2

    add-int/lit8 v3, v3, 0x1

    const/16 v10, 0x13

    if-ne v3, v10, :cond_2

    .line 503
    add-int/lit8 v3, v4, 0x2

    move v4, v3

    move v3, v1

    .line 504
    goto/16 :goto_4

    :cond_c
    move v3, v1

    move v2, v4

    .line 511
    :goto_6
    sub-int v4, v6, v0

    if-le v2, v4, :cond_d

    const/16 v0, 0x10

    move v1, v5

    .line 514
    :goto_7
    if-ge v1, v7, :cond_3

    .line 515
    add-int/lit8 v2, v1, 0x1

    shr-int v4, v3, v0

    int-to-byte v4, v4

    int-to-byte v4, v4

    aput-byte v4, v8, v1

    .line 514
    add-int/lit8 v0, v0, -0x8

    move v1, v2

    goto :goto_7

    .line 512
    :cond_d
    sget-object v9, Lcom/alibaba/fastjson/util/IOUtils;->IA:[I

    add-int/lit8 v4, v2, 0x1

    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v2

    aget v2, v9, v2

    mul-int/lit8 v9, v1, 0x6

    rsub-int/lit8 v9, v9, 0x12

    shl-int/2addr v2, v9

    or-int/2addr v2, v3

    .line 511
    add-int/lit8 v1, v1, 0x1

    move v3, v2

    move v2, v4

    goto :goto_6
.end method

.method public static decodeBase64([CII)[B
    .locals 13

    .prologue
    const/16 v7, 0x4c

    const/16 v5, 0x3d

    const/4 v1, 0x0

    .line 413
    if-eqz p2, :cond_4

    .line 417
    add-int v0, p1, p2

    add-int/lit8 v0, v0, -0x1

    move v4, p1

    .line 420
    :goto_0
    if-lt v4, v0, :cond_5

    :cond_0
    move v6, v0

    .line 424
    :goto_1
    if-gtz v6, :cond_6

    .line 428
    :cond_1
    aget-char v0, p0, v6

    if-eq v0, v5, :cond_7

    move v0, v1

    .line 429
    :goto_2
    sub-int v2, v6, v4

    add-int/lit8 v3, v2, 0x1

    .line 430
    if-gt p2, v7, :cond_9

    move v2, v1

    .line 432
    :goto_3
    sub-int/2addr v3, v2

    mul-int/lit8 v3, v3, 0x6

    shr-int/lit8 v3, v3, 0x3

    sub-int v7, v3, v0

    .line 433
    new-array v8, v7, [B

    .line 437
    div-int/lit8 v3, v7, 0x3

    mul-int/lit8 v9, v3, 0x3

    move v3, v1

    move v5, v1

    :cond_2
    :goto_4
    if-lt v5, v9, :cond_b

    .line 453
    if-lt v5, v7, :cond_c

    .line 463
    :cond_3
    return-object v8

    .line 414
    :cond_4
    new-array v0, v1, [B

    return-object v0

    .line 420
    :cond_5
    sget-object v2, Lcom/alibaba/fastjson/util/IOUtils;->IA:[I

    aget-char v3, p0, v4

    aget v2, v2, v3

    if-gez v2, :cond_0

    .line 421
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 424
    :cond_6
    sget-object v0, Lcom/alibaba/fastjson/util/IOUtils;->IA:[I

    aget-char v2, p0, v6

    aget v0, v0, v2

    if-gez v0, :cond_1

    .line 425
    add-int/lit8 v0, v6, -0x1

    move v6, v0

    goto :goto_1

    .line 428
    :cond_7
    add-int/lit8 v0, v6, -0x1

    aget-char v0, p0, v0

    if-eq v0, v5, :cond_8

    const/4 v0, 0x1

    goto :goto_2

    :cond_8
    const/4 v0, 0x2

    goto :goto_2

    .line 430
    :cond_9
    aget-char v2, p0, v7

    const/16 v5, 0xd

    if-eq v2, v5, :cond_a

    move v2, v1

    :goto_5
    shl-int/lit8 v2, v2, 0x1

    goto :goto_3

    :cond_a
    div-int/lit8 v2, v3, 0x4e

    goto :goto_5

    .line 439
    :cond_b
    sget-object v10, Lcom/alibaba/fastjson/util/IOUtils;->IA:[I

    add-int/lit8 v11, v4, 0x1

    aget-char v4, p0, v4

    aget v4, v10, v4

    shl-int/lit8 v4, v4, 0x12

    sget-object v10, Lcom/alibaba/fastjson/util/IOUtils;->IA:[I

    add-int/lit8 v12, v11, 0x1

    aget-char v11, p0, v11

    aget v10, v10, v11

    shl-int/lit8 v10, v10, 0xc

    or-int/2addr v4, v10

    sget-object v10, Lcom/alibaba/fastjson/util/IOUtils;->IA:[I

    add-int/lit8 v11, v12, 0x1

    aget-char v12, p0, v12

    aget v10, v10, v12

    shl-int/lit8 v10, v10, 0x6

    or-int/2addr v10, v4

    sget-object v12, Lcom/alibaba/fastjson/util/IOUtils;->IA:[I

    add-int/lit8 v4, v11, 0x1

    aget-char v11, p0, v11

    aget v11, v12, v11

    or-int/2addr v10, v11

    .line 442
    add-int/lit8 v11, v5, 0x1

    shr-int/lit8 v12, v10, 0x10

    int-to-byte v12, v12

    int-to-byte v12, v12

    aput-byte v12, v8, v5

    .line 443
    add-int/lit8 v12, v11, 0x1

    shr-int/lit8 v5, v10, 0x8

    int-to-byte v5, v5

    int-to-byte v5, v5

    aput-byte v5, v8, v11

    .line 444
    add-int/lit8 v5, v12, 0x1

    int-to-byte v10, v10

    int-to-byte v10, v10

    aput-byte v10, v8, v12

    .line 447
    if-lez v2, :cond_2

    add-int/lit8 v3, v3, 0x1

    const/16 v10, 0x13

    if-ne v3, v10, :cond_2

    .line 448
    add-int/lit8 v3, v4, 0x2

    move v4, v3

    move v3, v1

    .line 449
    goto/16 :goto_4

    :cond_c
    move v3, v1

    move v2, v4

    .line 456
    :goto_6
    sub-int v4, v6, v0

    if-le v2, v4, :cond_d

    const/16 v0, 0x10

    move v1, v5

    .line 459
    :goto_7
    if-ge v1, v7, :cond_3

    .line 460
    add-int/lit8 v2, v1, 0x1

    shr-int v4, v3, v0

    int-to-byte v4, v4

    int-to-byte v4, v4

    aput-byte v4, v8, v1

    .line 459
    add-int/lit8 v0, v0, -0x8

    move v1, v2

    goto :goto_7

    .line 457
    :cond_d
    sget-object v9, Lcom/alibaba/fastjson/util/IOUtils;->IA:[I

    add-int/lit8 v4, v2, 0x1

    aget-char v2, p0, v2

    aget v2, v9, v2

    mul-int/lit8 v9, v1, 0x6

    rsub-int/lit8 v9, v9, 0x12

    shl-int/2addr v2, v9

    or-int/2addr v2, v3

    .line 456
    add-int/lit8 v1, v1, 0x1

    move v3, v2

    move v2, v4

    goto :goto_6
.end method

.method public static decodeUTF8([BII[C)I
    .locals 9

    .prologue
    .line 653
    add-int v4, p1, p2

    const/4 v0, 0x0

    .line 655
    array-length v1, p3

    invoke-static {p2, v1}, Ljava/lang/Math;->min(II)I

    move-result v3

    move v1, p1

    .line 658
    :goto_0
    if-lt v0, v3, :cond_1

    :cond_0
    move v8, v0

    move v0, v1

    move v1, v8

    .line 661
    :goto_1
    if-lt v0, v4, :cond_2

    .line 736
    return v1

    .line 658
    :cond_1
    aget-byte v2, p0, v1

    if-ltz v2, :cond_0

    .line 659
    add-int/lit8 v2, v0, 0x1

    add-int/lit8 p1, v1, 0x1

    aget-byte v1, p0, v1

    int-to-char v1, v1

    int-to-char v1, v1

    aput-char v1, p3, v0

    move v0, v2

    move v1, p1

    goto :goto_0

    .line 662
    :cond_2
    add-int/lit8 v3, v0, 0x1

    aget-byte v5, p0, v0

    .line 663
    if-gez v5, :cond_4

    .line 666
    shr-int/lit8 v0, v5, 0x5

    const/4 v2, -0x2

    if-eq v0, v2, :cond_5

    .line 680
    :cond_3
    shr-int/lit8 v0, v5, 0x4

    const/4 v2, -0x2

    if-eq v0, v2, :cond_8

    .line 706
    shr-int/lit8 v0, v5, 0x3

    const/4 v2, -0x2

    if-eq v0, v2, :cond_11

    const/4 v0, -0x1

    .line 733
    return v0

    .line 665
    :cond_4
    add-int/lit8 v0, v1, 0x1

    int-to-char v2, v5

    int-to-char v2, v2

    aput-char v2, p3, v1

    move v1, v0

    move v0, v3

    .line 735
    goto :goto_1

    .line 666
    :cond_5
    and-int/lit8 v0, v5, 0x1e

    if-eqz v0, :cond_3

    .line 668
    if-lt v3, v4, :cond_6

    const/4 v0, -0x1

    .line 679
    return v0

    .line 669
    :cond_6
    add-int/lit8 v2, v3, 0x1

    aget-byte v3, p0, v3

    .line 670
    and-int/lit16 v0, v3, 0xc0

    const/16 v6, 0x80

    if-ne v0, v6, :cond_7

    .line 673
    add-int/lit8 v0, v1, 0x1

    shl-int/lit8 v5, v5, 0x6

    xor-int/2addr v3, v5

    xor-int/lit16 v3, v3, 0xf80

    int-to-char v3, v3

    int-to-char v3, v3

    aput-char v3, p3, v1

    move v1, v0

    move v0, v2

    .line 677
    goto :goto_1

    :cond_7
    const/4 v0, -0x1

    .line 671
    return v0

    .line 682
    :cond_8
    add-int/lit8 v0, v3, 0x1

    if-lt v0, v4, :cond_9

    const/4 v0, -0x1

    .line 705
    return v0

    .line 683
    :cond_9
    add-int/lit8 v0, v3, 0x1

    aget-byte v3, p0, v3

    .line 684
    add-int/lit8 v2, v0, 0x1

    aget-byte v0, p0, v0

    const/16 v6, -0x20

    .line 685
    if-eq v5, v6, :cond_c

    :cond_a
    and-int/lit16 v6, v3, 0xc0

    const/16 v7, 0x80

    if-eq v6, v7, :cond_d

    :cond_b
    :goto_2
    const/4 v0, -0x1

    .line 688
    return v0

    .line 685
    :cond_c
    and-int/lit16 v6, v3, 0xe0

    const/16 v7, 0x80

    if-ne v6, v7, :cond_a

    goto :goto_2

    :cond_d
    and-int/lit16 v6, v0, 0xc0

    const/16 v7, 0x80

    if-ne v6, v7, :cond_b

    .line 690
    shl-int/lit8 v5, v5, 0xc

    shl-int/lit8 v3, v3, 0x6

    xor-int/2addr v3, v5

    const v5, -0x1e080

    xor-int/2addr v0, v5

    xor-int/2addr v0, v3

    int-to-char v3, v0

    const v0, 0xd800

    .line 696
    if-ge v3, v0, :cond_f

    :cond_e
    const/4 v0, 0x0

    .line 697
    :goto_3
    if-nez v0, :cond_10

    .line 700
    add-int/lit8 v0, v1, 0x1

    int-to-char v3, v3

    aput-char v3, p3, v1

    move v1, v0

    move v0, v2

    .line 703
    goto/16 :goto_1

    :cond_f
    const v0, 0xe000

    .line 696
    if-ge v3, v0, :cond_e

    const/4 v0, 0x1

    goto :goto_3

    :cond_10
    const/4 v0, -0x1

    .line 698
    return v0

    .line 708
    :cond_11
    add-int/lit8 v0, v3, 0x2

    if-lt v0, v4, :cond_12

    const/4 v0, -0x1

    .line 731
    return v0

    .line 709
    :cond_12
    add-int/lit8 v0, v3, 0x1

    aget-byte v3, p0, v3

    .line 710
    add-int/lit8 v6, v0, 0x1

    aget-byte v0, p0, v0

    .line 711
    add-int/lit8 v2, v6, 0x1

    aget-byte v6, p0, v6

    .line 712
    shl-int/lit8 v5, v5, 0x12

    shl-int/lit8 v7, v3, 0xc

    xor-int/2addr v5, v7

    shl-int/lit8 v7, v0, 0x6

    xor-int/2addr v5, v7

    const v7, 0x381f80

    xor-int/2addr v7, v6

    xor-int/2addr v5, v7

    .line 720
    and-int/lit16 v3, v3, 0xc0

    const/16 v7, 0x80

    if-eq v3, v7, :cond_14

    :cond_13
    const/4 v0, -0x1

    .line 724
    return v0

    .line 720
    :cond_14
    and-int/lit16 v0, v0, 0xc0

    const/16 v3, 0x80

    if-ne v0, v3, :cond_13

    and-int/lit16 v0, v6, 0xc0

    const/16 v3, 0x80

    if-ne v0, v3, :cond_13

    .line 723
    invoke-static {v5}, Ljava/lang/Character;->isSupplementaryCodePoint(I)Z

    move-result v0

    if-eqz v0, :cond_13

    .line 726
    add-int/lit8 v3, v1, 0x1

    ushr-int/lit8 v0, v5, 0xa

    const v6, 0xd7c0

    add-int/2addr v0, v6

    int-to-char v0, v0

    int-to-char v0, v0

    aput-char v0, p3, v1

    .line 727
    add-int/lit8 v0, v3, 0x1

    and-int/lit16 v1, v5, 0x3ff

    const v5, 0xdc00

    add-int/2addr v1, v5

    int-to-char v1, v1

    int-to-char v1, v1

    aput-char v1, p3, v3

    move v1, v0

    move v0, v2

    .line 729
    goto/16 :goto_1
.end method

.method public static encodeUTF8([CII[B)I
    .locals 9

    .prologue
    const/4 v8, 0x1

    const/4 v0, 0x0

    const/16 v7, 0x80

    .line 590
    add-int v4, p1, p2

    .line 592
    array-length v1, p3

    invoke-static {p2, v1}, Ljava/lang/Math;->min(II)I

    move-result v1

    add-int/lit8 v3, v1, 0x0

    move v1, p1

    .line 595
    :goto_0
    if-lt v0, v3, :cond_1

    :cond_0
    move v3, v0

    move v0, v1

    .line 599
    :goto_1
    if-lt v0, v4, :cond_2

    .line 646
    return v3

    .line 595
    :cond_1
    aget-char v2, p0, v1

    if-ge v2, v7, :cond_0

    .line 596
    add-int/lit8 v2, v0, 0x1

    add-int/lit8 p1, v1, 0x1

    aget-char v1, p0, v1

    int-to-byte v1, v1

    int-to-byte v1, v1

    aput-byte v1, p3, v0

    move v0, v2

    move v1, p1

    goto :goto_0

    .line 600
    :cond_2
    add-int/lit8 v1, v0, 0x1

    aget-char v2, p0, v0

    .line 601
    if-lt v2, v7, :cond_4

    const/16 v0, 0x800

    .line 604
    if-lt v2, v0, :cond_5

    const v0, 0xd800

    .line 608
    if-ge v2, v0, :cond_6

    .line 641
    :cond_3
    add-int/lit8 v0, v3, 0x1

    shr-int/lit8 v5, v2, 0xc

    or-int/lit16 v5, v5, 0xe0

    int-to-byte v5, v5

    int-to-byte v5, v5

    aput-byte v5, p3, v3

    .line 642
    add-int/lit8 v3, v0, 0x1

    shr-int/lit8 v5, v2, 0x6

    and-int/lit8 v5, v5, 0x3f

    or-int/lit16 v5, v5, 0x80

    int-to-byte v5, v5

    int-to-byte v5, v5

    aput-byte v5, p3, v0

    .line 643
    add-int/lit8 v0, v3, 0x1

    and-int/lit8 v2, v2, 0x3f

    or-int/lit16 v2, v2, 0x80

    int-to-byte v2, v2

    int-to-byte v2, v2

    aput-byte v2, p3, v3

    :goto_2
    move v3, v0

    move v0, v1

    .line 645
    goto :goto_1

    .line 603
    :cond_4
    add-int/lit8 v0, v3, 0x1

    int-to-byte v2, v2

    int-to-byte v2, v2

    aput-byte v2, p3, v3

    goto :goto_2

    .line 606
    :cond_5
    add-int/lit8 v5, v3, 0x1

    shr-int/lit8 v0, v2, 0x6

    or-int/lit16 v0, v0, 0xc0

    int-to-byte v0, v0

    int-to-byte v0, v0

    aput-byte v0, p3, v3

    .line 607
    add-int/lit8 v0, v5, 0x1

    and-int/lit8 v2, v2, 0x3f

    or-int/lit16 v2, v2, 0x80

    int-to-byte v2, v2

    int-to-byte v2, v2

    aput-byte v2, p3, v5

    goto :goto_2

    :cond_6
    const v0, 0xe000

    .line 608
    if-ge v2, v0, :cond_3

    .line 610
    add-int/lit8 v0, v1, -0x1

    .line 611
    invoke-static {v2}, Ljava/lang/Character;->isHighSurrogate(C)Z

    move-result v5

    if-nez v5, :cond_7

    .line 623
    invoke-static {v2}, Ljava/lang/Character;->isLowSurrogate(C)Z

    move-result v0

    if-nez v0, :cond_a

    .line 630
    :goto_3
    if-ltz v2, :cond_b

    .line 633
    add-int/lit8 v0, v3, 0x1

    shr-int/lit8 v5, v2, 0x12

    or-int/lit16 v5, v5, 0xf0

    int-to-byte v5, v5

    int-to-byte v5, v5

    aput-byte v5, p3, v3

    .line 634
    add-int/lit8 v3, v0, 0x1

    shr-int/lit8 v5, v2, 0xc

    and-int/lit8 v5, v5, 0x3f

    or-int/lit16 v5, v5, 0x80

    int-to-byte v5, v5

    int-to-byte v5, v5

    aput-byte v5, p3, v0

    .line 635
    add-int/lit8 v5, v3, 0x1

    shr-int/lit8 v0, v2, 0x6

    and-int/lit8 v0, v0, 0x3f

    or-int/lit16 v0, v0, 0x80

    int-to-byte v0, v0

    int-to-byte v0, v0

    aput-byte v0, p3, v3

    .line 636
    add-int/lit8 v0, v5, 0x1

    and-int/lit8 v2, v2, 0x3f

    or-int/lit16 v2, v2, 0x80

    int-to-byte v2, v2

    int-to-byte v2, v2

    aput-byte v2, p3, v5

    .line 637
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 612
    :cond_7
    sub-int v5, v4, v0

    const/4 v6, 0x2

    if-lt v5, v6, :cond_8

    .line 615
    add-int/lit8 v0, v0, 0x1

    aget-char v0, p0, v0

    .line 616
    invoke-static {v0}, Ljava/lang/Character;->isLowSurrogate(C)Z

    move-result v5

    if-nez v5, :cond_9

    .line 619
    new-instance v0, Lcom/alibaba/fastjson/JSONException;

    const-string/jumbo v1, "encodeUTF8 error"

    new-instance v2, Ljava/nio/charset/MalformedInputException;

    invoke-direct {v2, v8}, Ljava/nio/charset/MalformedInputException;-><init>(I)V

    invoke-direct {v0, v1, v2}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0

    :cond_8
    const/4 v0, -0x1

    move v2, v0

    .line 613
    goto :goto_3

    .line 617
    :cond_9
    invoke-static {v2, v0}, Ljava/lang/Character;->toCodePoint(CC)I

    move-result v0

    move v2, v0

    .line 621
    goto :goto_3

    .line 624
    :cond_a
    new-instance v0, Lcom/alibaba/fastjson/JSONException;

    const-string/jumbo v1, "encodeUTF8 error"

    new-instance v2, Ljava/nio/charset/MalformedInputException;

    invoke-direct {v2, v8}, Ljava/nio/charset/MalformedInputException;-><init>(I)V

    invoke-direct {v0, v1, v2}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0

    .line 631
    :cond_b
    add-int/lit8 v0, v3, 0x1

    const/16 v2, 0x3f

    aput-byte v2, p3, v3

    goto/16 :goto_2
.end method

.method public static firstIdentifier(C)Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 384
    sget-object v1, Lcom/alibaba/fastjson/util/IOUtils;->firstIdentifierFlags:[Z

    array-length v1, v1

    if-lt p0, v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    sget-object v1, Lcom/alibaba/fastjson/util/IOUtils;->firstIdentifierFlags:[Z

    aget-boolean v1, v1, p0

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method

.method public static getChars(BI[C)V
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 315
    if-ltz p0, :cond_0

    :goto_0
    const v1, 0xcccd

    .line 323
    mul-int/2addr v1, p0

    ushr-int/lit8 v1, v1, 0x13

    .line 324
    shl-int/lit8 v2, v1, 0x3

    shl-int/lit8 v3, v1, 0x1

    add-int/2addr v2, v3

    sub-int v2, p0, v2

    .line 325
    add-int/lit8 p1, p1, -0x1

    sget-object v3, Lcom/alibaba/fastjson/util/IOUtils;->digits:[C

    aget-char v2, v3, v2

    int-to-char v2, v2

    aput-char v2, p2, p1

    .line 327
    if-eqz v1, :cond_1

    move p0, v1

    goto :goto_0

    .line 316
    :cond_0
    const/16 v0, 0x2d

    .line 317
    neg-int p0, p0

    goto :goto_0

    .line 329
    :cond_1
    if-nez v0, :cond_2

    .line 332
    :goto_1
    return-void

    .line 330
    :cond_2
    add-int/lit8 v1, p1, -0x1

    int-to-char v0, v0

    aput-char v0, p2, v1

    goto :goto_1
.end method

.method public static getChars(II[C)V
    .locals 6

    .prologue
    const/4 v0, 0x0

    .line 281
    if-ltz p0, :cond_0

    move v3, v0

    move v1, p0

    move v0, p1

    :goto_0
    const/high16 v2, 0x10000

    .line 286
    if-ge v1, v2, :cond_1

    :goto_1
    const v2, 0xcccd

    .line 298
    mul-int/2addr v2, v1

    ushr-int/lit8 v2, v2, 0x13

    .line 299
    shl-int/lit8 v4, v2, 0x3

    shl-int/lit8 v5, v2, 0x1

    add-int/2addr v4, v5

    sub-int/2addr v1, v4

    .line 300
    add-int/lit8 v0, v0, -0x1

    sget-object v4, Lcom/alibaba/fastjson/util/IOUtils;->digits:[C

    aget-char v1, v4, v1

    int-to-char v1, v1

    aput-char v1, p2, v0

    .line 302
    if-eqz v2, :cond_2

    move v1, v2

    goto :goto_1

    .line 282
    :cond_0
    const/16 v0, 0x2d

    .line 283
    neg-int v1, p0

    move v3, v0

    move v0, p1

    goto :goto_0

    .line 287
    :cond_1
    div-int/lit8 p0, v1, 0x64

    .line 289
    shl-int/lit8 v2, p0, 0x6

    shl-int/lit8 v4, p0, 0x5

    add-int/2addr v2, v4

    shl-int/lit8 v4, p0, 0x2

    add-int/2addr v2, v4

    sub-int/2addr v1, v2

    .line 291
    add-int/lit8 v0, v0, -0x1

    sget-object v2, Lcom/alibaba/fastjson/util/IOUtils;->DigitOnes:[C

    aget-char v2, v2, v1

    int-to-char v2, v2

    aput-char v2, p2, v0

    .line 292
    add-int/lit8 p1, v0, -0x1

    sget-object v0, Lcom/alibaba/fastjson/util/IOUtils;->DigitTens:[C

    aget-char v0, v0, v1

    int-to-char v0, v0

    aput-char v0, p2, p1

    move v0, p1

    move v1, p0

    goto :goto_0

    .line 304
    :cond_2
    if-nez v3, :cond_3

    .line 307
    :goto_2
    return-void

    .line 305
    :cond_3
    add-int/lit8 v0, v0, -0x1

    int-to-char v1, v3

    aput-char v1, p2, v0

    goto :goto_2
.end method

.method public static getChars(JI[C)V
    .locals 12

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    const-wide/16 v0, 0x0

    .line 231
    cmp-long v0, p0, v0

    if-ltz v0, :cond_0

    move v0, v2

    :goto_0
    if-nez v0, :cond_1

    .line 232
    const/16 v0, 0x2d

    .line 233
    neg-long p0, p0

    move v4, v0

    move v1, p2

    :goto_1
    const-wide/32 v6, 0x7fffffff

    .line 237
    cmp-long v0, p0, v6

    if-gtz v0, :cond_2

    move v0, v2

    :goto_2
    if-nez v0, :cond_3

    const-wide/16 v6, 0x64

    .line 238
    div-long v6, p0, v6

    const/4 v0, 0x6

    .line 240
    shl-long v8, v6, v0

    const/4 v0, 0x5

    shl-long v10, v6, v0

    add-long/2addr v8, v10

    const/4 v0, 0x2

    shl-long v10, v6, v0

    add-long/2addr v8, v10

    sub-long v8, p0, v8

    long-to-int v0, v8

    .line 242
    add-int/lit8 v1, v1, -0x1

    sget-object v5, Lcom/alibaba/fastjson/util/IOUtils;->DigitOnes:[C

    aget-char v5, v5, v0

    int-to-char v5, v5

    aput-char v5, p3, v1

    .line 243
    add-int/lit8 p2, v1, -0x1

    sget-object v1, Lcom/alibaba/fastjson/util/IOUtils;->DigitTens:[C

    aget-char v0, v1, v0

    int-to-char v0, v0

    aput-char v0, p3, p2

    move v1, p2

    move-wide p0, v6

    goto :goto_1

    :cond_0
    move v0, v3

    .line 231
    goto :goto_0

    :cond_1
    move v4, v3

    move v1, p2

    goto :goto_1

    :cond_2
    move v0, v3

    .line 237
    goto :goto_2

    .line 248
    :cond_3
    long-to-int v0, p0

    :goto_3
    const/high16 v2, 0x10000

    .line 249
    if-ge v0, v2, :cond_4

    move v2, v1

    :goto_4
    const v1, 0xcccd

    .line 261
    mul-int/2addr v1, v0

    ushr-int/lit8 v1, v1, 0x13

    .line 262
    shl-int/lit8 v3, v1, 0x3

    shl-int/lit8 v5, v1, 0x1

    add-int/2addr v3, v5

    sub-int v3, v0, v3

    .line 263
    add-int/lit8 v0, v2, -0x1

    sget-object v2, Lcom/alibaba/fastjson/util/IOUtils;->digits:[C

    aget-char v2, v2, v3

    int-to-char v2, v2

    aput-char v2, p3, v0

    .line 265
    if-eqz v1, :cond_5

    move v2, v0

    move v0, v1

    goto :goto_4

    .line 250
    :cond_4
    div-int/lit8 v2, v0, 0x64

    .line 252
    shl-int/lit8 v3, v2, 0x6

    shl-int/lit8 v5, v2, 0x5

    add-int/2addr v3, v5

    shl-int/lit8 v5, v2, 0x2

    add-int/2addr v3, v5

    sub-int/2addr v0, v3

    .line 254
    add-int/lit8 v1, v1, -0x1

    sget-object v3, Lcom/alibaba/fastjson/util/IOUtils;->DigitOnes:[C

    aget-char v3, v3, v0

    int-to-char v3, v3

    aput-char v3, p3, v1

    .line 255
    add-int/lit8 v1, v1, -0x1

    sget-object v3, Lcom/alibaba/fastjson/util/IOUtils;->DigitTens:[C

    aget-char v0, v3, v0

    int-to-char v0, v0

    aput-char v0, p3, v1

    move v0, v2

    goto :goto_3

    .line 267
    :cond_5
    if-nez v4, :cond_6

    .line 270
    :goto_5
    return-void

    .line 268
    :cond_6
    add-int/lit8 v0, v0, -0x1

    int-to-char v1, v4

    aput-char v1, p3, v0

    goto :goto_5
.end method

.method public static getStringProperty(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 93
    :try_start_0
    invoke-static {p0}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 97
    :goto_0
    if-eqz v0, :cond_0

    :goto_1
    return-object v0

    .line 96
    :catch_0
    move-exception v1

    goto :goto_0

    .line 97
    :cond_0
    sget-object v0, Lcom/alibaba/fastjson/util/IOUtils;->DEFAULT_PROPERTIES:Ljava/util/Properties;

    invoke-virtual {v0, p0}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_1
.end method

.method public static isIdent(C)Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 388
    sget-object v1, Lcom/alibaba/fastjson/util/IOUtils;->identifierFlags:[Z

    array-length v1, v1

    if-lt p0, v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    sget-object v1, Lcom/alibaba/fastjson/util/IOUtils;->identifierFlags:[Z

    aget-boolean v1, v1, p0

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method

.method public static isValidJsonpQueryParam(Ljava/lang/String;)Z
    .locals 5

    .prologue
    const/4 v1, 0x0

    .line 762
    if-nez p0, :cond_1

    .line 763
    :cond_0
    return v1

    .line 762
    :cond_1
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_0

    .line 766
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    move v0, v1

    :goto_0
    if-lt v0, v2, :cond_2

    .line 773
    const/4 v0, 0x1

    return v0

    .line 767
    :cond_2
    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v3

    const/16 v4, 0x2e

    .line 768
    if-ne v3, v4, :cond_4

    .line 766
    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 768
    :cond_4
    invoke-static {v3}, Lcom/alibaba/fastjson/util/IOUtils;->isIdent(C)Z

    move-result v3

    if-nez v3, :cond_3

    .line 769
    return v1
.end method

.method public static loadPropertiesFromFile()V
    .locals 2

    .prologue
    .line 101
    new-instance v0, Lcom/alibaba/fastjson/util/IOUtils$1;

    invoke-direct {v0}, Lcom/alibaba/fastjson/util/IOUtils$1;-><init>()V

    invoke-static {v0}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedAction;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/io/InputStream;

    .line 112
    if-nez v0, :cond_0

    .line 120
    :goto_0
    return-void

    .line 114
    :cond_0
    :try_start_0
    sget-object v1, Lcom/alibaba/fastjson/util/IOUtils;->DEFAULT_PROPERTIES:Ljava/util/Properties;

    invoke-virtual {v1, v0}, Ljava/util/Properties;->load(Ljava/io/InputStream;)V

    .line 115
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 118
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public static readAll(Ljava/io/Reader;)Ljava/lang/String;
    .locals 4

    .prologue
    .line 743
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v1, 0x800

    .line 746
    :try_start_0
    new-array v1, v1, [C

    :goto_0
    const/4 v2, 0x0

    .line 748
    array-length v3, v1

    invoke-virtual {p0, v1, v2, v3}, Ljava/io/Reader;->read([CII)I

    move-result v2

    .line 749
    if-ltz v2, :cond_0

    const/4 v3, 0x0

    .line 752
    invoke-virtual {v0, v1, v3, v2}, Ljava/lang/StringBuilder;->append([CII)Ljava/lang/StringBuilder;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 756
    :catch_0
    move-exception v0

    .line 755
    new-instance v1, Lcom/alibaba/fastjson/JSONException;

    const-string/jumbo v2, "read string from reader error"

    invoke-direct {v1, v2, v0}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 758
    :cond_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static stringSize(I)I
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 357
    :goto_0
    sget-object v1, Lcom/alibaba/fastjson/util/IOUtils;->sizeTable:[I

    aget v1, v1, v0

    if-le p0, v1, :cond_0

    .line 356
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 358
    :cond_0
    add-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public static stringSize(J)I
    .locals 8

    .prologue
    const-wide/16 v6, 0xa

    const/16 v3, 0x13

    const/4 v1, 0x1

    move v2, v1

    move-wide v4, v6

    .line 218
    :goto_0
    if-lt v2, v3, :cond_0

    .line 222
    return v3

    .line 219
    :cond_0
    cmp-long v0, p0, v4

    if-ltz v0, :cond_1

    move v0, v1

    :goto_1
    if-nez v0, :cond_2

    return v2

    :cond_1
    const/4 v0, 0x0

    goto :goto_1

    .line 220
    :cond_2
    mul-long/2addr v4, v6

    .line 218
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_0
.end method
