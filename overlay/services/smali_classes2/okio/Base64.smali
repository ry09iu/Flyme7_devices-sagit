.class final Lokio/Base64;
.super Ljava/lang/Object;
.source "Base64.java"


# static fields
.field private static final MAP:[B

.field private static final URL_MAP:[B


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/16 v7, 0x34

    const/16 v6, 0x33

    const/16 v5, 0x32

    const/16 v4, 0x31

    const/16 v3, 0x30

    const/16 v0, 0x40

    .line 110
    new-array v0, v0, [B

    const/4 v1, 0x0

    const/16 v2, 0x41

    aput-byte v2, v0, v1

    const/4 v1, 0x1

    const/16 v2, 0x42

    aput-byte v2, v0, v1

    const/4 v1, 0x2

    const/16 v2, 0x43

    aput-byte v2, v0, v1

    const/4 v1, 0x3

    const/16 v2, 0x44

    aput-byte v2, v0, v1

    const/4 v1, 0x4

    const/16 v2, 0x45

    aput-byte v2, v0, v1

    const/4 v1, 0x5

    const/16 v2, 0x46

    aput-byte v2, v0, v1

    const/4 v1, 0x6

    const/16 v2, 0x47

    aput-byte v2, v0, v1

    const/4 v1, 0x7

    const/16 v2, 0x48

    aput-byte v2, v0, v1

    const/16 v1, 0x8

    const/16 v2, 0x49

    aput-byte v2, v0, v1

    const/16 v1, 0x9

    const/16 v2, 0x4a

    aput-byte v2, v0, v1

    const/16 v1, 0xa

    const/16 v2, 0x4b

    aput-byte v2, v0, v1

    const/16 v1, 0xb

    const/16 v2, 0x4c

    aput-byte v2, v0, v1

    const/16 v1, 0xc

    const/16 v2, 0x4d

    aput-byte v2, v0, v1

    const/16 v1, 0xd

    const/16 v2, 0x4e

    aput-byte v2, v0, v1

    const/16 v1, 0xe

    const/16 v2, 0x4f

    aput-byte v2, v0, v1

    const/16 v1, 0xf

    const/16 v2, 0x50

    aput-byte v2, v0, v1

    const/16 v1, 0x10

    const/16 v2, 0x51

    aput-byte v2, v0, v1

    const/16 v1, 0x11

    const/16 v2, 0x52

    aput-byte v2, v0, v1

    const/16 v1, 0x12

    const/16 v2, 0x53

    aput-byte v2, v0, v1

    const/16 v1, 0x13

    const/16 v2, 0x54

    aput-byte v2, v0, v1

    const/16 v1, 0x14

    const/16 v2, 0x55

    aput-byte v2, v0, v1

    const/16 v1, 0x15

    const/16 v2, 0x56

    aput-byte v2, v0, v1

    const/16 v1, 0x16

    const/16 v2, 0x57

    aput-byte v2, v0, v1

    const/16 v1, 0x17

    const/16 v2, 0x58

    aput-byte v2, v0, v1

    const/16 v1, 0x18

    const/16 v2, 0x59

    aput-byte v2, v0, v1

    const/16 v1, 0x19

    const/16 v2, 0x5a

    aput-byte v2, v0, v1

    const/16 v1, 0x1a

    const/16 v2, 0x61

    aput-byte v2, v0, v1

    const/16 v1, 0x1b

    const/16 v2, 0x62

    aput-byte v2, v0, v1

    const/16 v1, 0x1c

    const/16 v2, 0x63

    aput-byte v2, v0, v1

    const/16 v1, 0x1d

    const/16 v2, 0x64

    aput-byte v2, v0, v1

    const/16 v1, 0x1e

    const/16 v2, 0x65

    aput-byte v2, v0, v1

    const/16 v1, 0x1f

    const/16 v2, 0x66

    aput-byte v2, v0, v1

    const/16 v1, 0x20

    const/16 v2, 0x67

    aput-byte v2, v0, v1

    const/16 v1, 0x21

    const/16 v2, 0x68

    aput-byte v2, v0, v1

    const/16 v1, 0x22

    const/16 v2, 0x69

    aput-byte v2, v0, v1

    const/16 v1, 0x23

    const/16 v2, 0x6a

    aput-byte v2, v0, v1

    const/16 v1, 0x24

    const/16 v2, 0x6b

    aput-byte v2, v0, v1

    const/16 v1, 0x25

    const/16 v2, 0x6c

    aput-byte v2, v0, v1

    const/16 v1, 0x26

    const/16 v2, 0x6d

    aput-byte v2, v0, v1

    const/16 v1, 0x27

    const/16 v2, 0x6e

    aput-byte v2, v0, v1

    const/16 v1, 0x28

    const/16 v2, 0x6f

    aput-byte v2, v0, v1

    const/16 v1, 0x29

    const/16 v2, 0x70

    aput-byte v2, v0, v1

    const/16 v1, 0x2a

    const/16 v2, 0x71

    aput-byte v2, v0, v1

    const/16 v1, 0x2b

    const/16 v2, 0x72

    aput-byte v2, v0, v1

    const/16 v1, 0x2c

    const/16 v2, 0x73

    aput-byte v2, v0, v1

    const/16 v1, 0x2d

    const/16 v2, 0x74

    aput-byte v2, v0, v1

    const/16 v1, 0x2e

    const/16 v2, 0x75

    aput-byte v2, v0, v1

    const/16 v1, 0x2f

    const/16 v2, 0x76

    aput-byte v2, v0, v1

    const/16 v1, 0x77

    aput-byte v1, v0, v3

    const/16 v1, 0x78

    aput-byte v1, v0, v4

    const/16 v1, 0x79

    aput-byte v1, v0, v5

    const/16 v1, 0x7a

    aput-byte v1, v0, v6

    aput-byte v3, v0, v7

    const/16 v1, 0x35

    aput-byte v4, v0, v1

    const/16 v1, 0x36

    aput-byte v5, v0, v1

    const/16 v1, 0x37

    aput-byte v6, v0, v1

    const/16 v1, 0x38

    aput-byte v7, v0, v1

    const/16 v1, 0x39

    const/16 v2, 0x35

    aput-byte v2, v0, v1

    const/16 v1, 0x3a

    const/16 v2, 0x36

    aput-byte v2, v0, v1

    const/16 v1, 0x3b

    const/16 v2, 0x37

    aput-byte v2, v0, v1

    const/16 v1, 0x3c

    const/16 v2, 0x38

    aput-byte v2, v0, v1

    const/16 v1, 0x3d

    const/16 v2, 0x39

    aput-byte v2, v0, v1

    const/16 v1, 0x3e

    const/16 v2, 0x2b

    aput-byte v2, v0, v1

    const/16 v1, 0x3f

    const/16 v2, 0x2f

    aput-byte v2, v0, v1

    sput-object v0, Lokio/Base64;->MAP:[B

    const/16 v0, 0x40

    .line 117
    new-array v0, v0, [B

    const/4 v1, 0x0

    const/16 v2, 0x41

    aput-byte v2, v0, v1

    const/4 v1, 0x1

    const/16 v2, 0x42

    aput-byte v2, v0, v1

    const/4 v1, 0x2

    const/16 v2, 0x43

    aput-byte v2, v0, v1

    const/4 v1, 0x3

    const/16 v2, 0x44

    aput-byte v2, v0, v1

    const/4 v1, 0x4

    const/16 v2, 0x45

    aput-byte v2, v0, v1

    const/4 v1, 0x5

    const/16 v2, 0x46

    aput-byte v2, v0, v1

    const/4 v1, 0x6

    const/16 v2, 0x47

    aput-byte v2, v0, v1

    const/4 v1, 0x7

    const/16 v2, 0x48

    aput-byte v2, v0, v1

    const/16 v1, 0x8

    const/16 v2, 0x49

    aput-byte v2, v0, v1

    const/16 v1, 0x9

    const/16 v2, 0x4a

    aput-byte v2, v0, v1

    const/16 v1, 0xa

    const/16 v2, 0x4b

    aput-byte v2, v0, v1

    const/16 v1, 0xb

    const/16 v2, 0x4c

    aput-byte v2, v0, v1

    const/16 v1, 0xc

    const/16 v2, 0x4d

    aput-byte v2, v0, v1

    const/16 v1, 0xd

    const/16 v2, 0x4e

    aput-byte v2, v0, v1

    const/16 v1, 0xe

    const/16 v2, 0x4f

    aput-byte v2, v0, v1

    const/16 v1, 0xf

    const/16 v2, 0x50

    aput-byte v2, v0, v1

    const/16 v1, 0x10

    const/16 v2, 0x51

    aput-byte v2, v0, v1

    const/16 v1, 0x11

    const/16 v2, 0x52

    aput-byte v2, v0, v1

    const/16 v1, 0x12

    const/16 v2, 0x53

    aput-byte v2, v0, v1

    const/16 v1, 0x13

    const/16 v2, 0x54

    aput-byte v2, v0, v1

    const/16 v1, 0x14

    const/16 v2, 0x55

    aput-byte v2, v0, v1

    const/16 v1, 0x15

    const/16 v2, 0x56

    aput-byte v2, v0, v1

    const/16 v1, 0x16

    const/16 v2, 0x57

    aput-byte v2, v0, v1

    const/16 v1, 0x17

    const/16 v2, 0x58

    aput-byte v2, v0, v1

    const/16 v1, 0x18

    const/16 v2, 0x59

    aput-byte v2, v0, v1

    const/16 v1, 0x19

    const/16 v2, 0x5a

    aput-byte v2, v0, v1

    const/16 v1, 0x1a

    const/16 v2, 0x61

    aput-byte v2, v0, v1

    const/16 v1, 0x1b

    const/16 v2, 0x62

    aput-byte v2, v0, v1

    const/16 v1, 0x1c

    const/16 v2, 0x63

    aput-byte v2, v0, v1

    const/16 v1, 0x1d

    const/16 v2, 0x64

    aput-byte v2, v0, v1

    const/16 v1, 0x1e

    const/16 v2, 0x65

    aput-byte v2, v0, v1

    const/16 v1, 0x1f

    const/16 v2, 0x66

    aput-byte v2, v0, v1

    const/16 v1, 0x20

    const/16 v2, 0x67

    aput-byte v2, v0, v1

    const/16 v1, 0x21

    const/16 v2, 0x68

    aput-byte v2, v0, v1

    const/16 v1, 0x22

    const/16 v2, 0x69

    aput-byte v2, v0, v1

    const/16 v1, 0x23

    const/16 v2, 0x6a

    aput-byte v2, v0, v1

    const/16 v1, 0x24

    const/16 v2, 0x6b

    aput-byte v2, v0, v1

    const/16 v1, 0x25

    const/16 v2, 0x6c

    aput-byte v2, v0, v1

    const/16 v1, 0x26

    const/16 v2, 0x6d

    aput-byte v2, v0, v1

    const/16 v1, 0x27

    const/16 v2, 0x6e

    aput-byte v2, v0, v1

    const/16 v1, 0x28

    const/16 v2, 0x6f

    aput-byte v2, v0, v1

    const/16 v1, 0x29

    const/16 v2, 0x70

    aput-byte v2, v0, v1

    const/16 v1, 0x2a

    const/16 v2, 0x71

    aput-byte v2, v0, v1

    const/16 v1, 0x2b

    const/16 v2, 0x72

    aput-byte v2, v0, v1

    const/16 v1, 0x2c

    const/16 v2, 0x73

    aput-byte v2, v0, v1

    const/16 v1, 0x2d

    const/16 v2, 0x74

    aput-byte v2, v0, v1

    const/16 v1, 0x2e

    const/16 v2, 0x75

    aput-byte v2, v0, v1

    const/16 v1, 0x2f

    const/16 v2, 0x76

    aput-byte v2, v0, v1

    const/16 v1, 0x77

    aput-byte v1, v0, v3

    const/16 v1, 0x78

    aput-byte v1, v0, v4

    const/16 v1, 0x79

    aput-byte v1, v0, v5

    const/16 v1, 0x7a

    aput-byte v1, v0, v6

    aput-byte v3, v0, v7

    const/16 v1, 0x35

    aput-byte v4, v0, v1

    const/16 v1, 0x36

    aput-byte v5, v0, v1

    const/16 v1, 0x37

    aput-byte v6, v0, v1

    const/16 v1, 0x38

    aput-byte v7, v0, v1

    const/16 v1, 0x39

    const/16 v2, 0x35

    aput-byte v2, v0, v1

    const/16 v1, 0x3a

    const/16 v2, 0x36

    aput-byte v2, v0, v1

    const/16 v1, 0x3b

    const/16 v2, 0x37

    aput-byte v2, v0, v1

    const/16 v1, 0x3c

    const/16 v2, 0x38

    aput-byte v2, v0, v1

    const/16 v1, 0x3d

    const/16 v2, 0x39

    aput-byte v2, v0, v1

    const/16 v1, 0x3e

    const/16 v2, 0x2d

    aput-byte v2, v0, v1

    const/16 v1, 0x3f

    const/16 v2, 0x5f

    aput-byte v2, v0, v1

    sput-object v0, Lokio/Base64;->URL_MAP:[B

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    return-void
.end method

.method public static decode(Ljava/lang/String;)[B
    .locals 13

    .prologue
    const/16 v12, 0x20

    const/16 v11, 0xd

    const/16 v10, 0xa

    const/16 v9, 0x9

    const/4 v5, 0x0

    .line 31
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    move v6, v0

    .line 32
    :goto_0
    if-gtz v6, :cond_1

    .line 40
    :cond_0
    int-to-long v0, v6

    const-wide/16 v2, 0x6

    mul-long/2addr v0, v2

    const-wide/16 v2, 0x8

    div-long/2addr v0, v2

    long-to-int v0, v0

    new-array v7, v0, [B

    move v4, v5

    move v1, v5

    move v2, v5

    move v3, v5

    .line 45
    :goto_1
    if-lt v4, v6, :cond_4

    .line 86
    rem-int/lit8 v0, v2, 0x4

    const/4 v2, 0x1

    .line 87
    if-eq v0, v2, :cond_13

    const/4 v2, 0x2

    .line 90
    if-eq v0, v2, :cond_14

    const/4 v2, 0x3

    .line 94
    if-eq v0, v2, :cond_15

    .line 102
    :goto_2
    array-length v0, v7

    if-eq v3, v0, :cond_16

    .line 105
    new-array v0, v3, [B

    .line 106
    invoke-static {v7, v5, v0, v5, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 107
    return-object v0

    .line 33
    :cond_1
    add-int/lit8 v0, v6, -0x1

    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v1, 0x3d

    .line 34
    if-ne v0, v1, :cond_3

    .line 32
    :cond_2
    :goto_3
    add-int/lit8 v0, v6, -0x1

    move v6, v0

    goto :goto_0

    .line 34
    :cond_3
    if-eq v0, v10, :cond_2

    if-eq v0, v11, :cond_2

    if-eq v0, v12, :cond_2

    if-ne v0, v9, :cond_0

    goto :goto_3

    .line 46
    :cond_4
    invoke-virtual {p0, v4}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v8, 0x41

    .line 49
    if-ge v0, v8, :cond_9

    :cond_5
    const/16 v8, 0x61

    .line 54
    if-ge v0, v8, :cond_a

    :cond_6
    const/16 v8, 0x30

    .line 59
    if-ge v0, v8, :cond_b

    :cond_7
    const/16 v8, 0x2b

    .line 64
    if-ne v0, v8, :cond_c

    :cond_8
    const/16 v0, 0x3e

    .line 75
    :goto_4
    shl-int/lit8 v1, v1, 0x6

    int-to-byte v0, v0

    or-int/2addr v0, v1

    .line 78
    add-int/lit8 v1, v2, 0x1

    .line 79
    rem-int/lit8 v2, v1, 0x4

    if-eqz v2, :cond_12

    move v2, v3

    .line 45
    :goto_5
    add-int/lit8 v3, v4, 0x1

    move v4, v3

    move v3, v2

    move v2, v1

    move v1, v0

    goto :goto_1

    :cond_9
    const/16 v8, 0x5a

    .line 49
    if-gt v0, v8, :cond_5

    .line 53
    add-int/lit8 v0, v0, -0x41

    goto :goto_4

    :cond_a
    const/16 v8, 0x7a

    .line 54
    if-gt v0, v8, :cond_6

    .line 58
    add-int/lit8 v0, v0, -0x47

    goto :goto_4

    :cond_b
    const/16 v8, 0x39

    .line 59
    if-gt v0, v8, :cond_7

    .line 63
    add-int/lit8 v0, v0, 0x4

    goto :goto_4

    :cond_c
    const/16 v8, 0x2d

    .line 64
    if-eq v0, v8, :cond_8

    const/16 v8, 0x2f

    .line 66
    if-ne v0, v8, :cond_e

    :cond_d
    const/16 v0, 0x3f

    .line 67
    goto :goto_4

    :cond_e
    const/16 v8, 0x5f

    .line 66
    if-eq v0, v8, :cond_d

    .line 68
    if-ne v0, v10, :cond_10

    :cond_f
    move v0, v1

    move v1, v2

    move v2, v3

    goto :goto_5

    :cond_10
    if-eq v0, v11, :cond_f

    if-eq v0, v12, :cond_f

    if-eq v0, v9, :cond_11

    const/4 v0, 0x0

    .line 71
    return-object v0

    :cond_11
    move v0, v1

    move v1, v2

    move v2, v3

    .line 69
    goto :goto_5

    .line 80
    :cond_12
    add-int/lit8 v2, v3, 0x1

    shr-int/lit8 v8, v0, 0x10

    int-to-byte v8, v8

    int-to-byte v8, v8

    aput-byte v8, v7, v3

    .line 81
    add-int/lit8 v3, v2, 0x1

    shr-int/lit8 v8, v0, 0x8

    int-to-byte v8, v8

    int-to-byte v8, v8

    aput-byte v8, v7, v2

    .line 82
    add-int/lit8 v2, v3, 0x1

    int-to-byte v8, v0

    int-to-byte v8, v8

    aput-byte v8, v7, v3

    goto :goto_5

    :cond_13
    const/4 v0, 0x0

    .line 89
    return-object v0

    .line 92
    :cond_14
    shl-int/lit8 v1, v1, 0xc

    .line 93
    add-int/lit8 v0, v3, 0x1

    shr-int/lit8 v1, v1, 0x10

    int-to-byte v1, v1

    int-to-byte v1, v1

    aput-byte v1, v7, v3

    move v3, v0

    goto/16 :goto_2

    .line 96
    :cond_15
    shl-int/lit8 v0, v1, 0x6

    .line 97
    add-int/lit8 v1, v3, 0x1

    shr-int/lit8 v2, v0, 0x10

    int-to-byte v2, v2

    int-to-byte v2, v2

    aput-byte v2, v7, v3

    .line 98
    add-int/lit8 v3, v1, 0x1

    shr-int/lit8 v0, v0, 0x8

    int-to-byte v0, v0

    int-to-byte v0, v0

    aput-byte v0, v7, v1

    goto/16 :goto_2

    .line 102
    :cond_16
    return-object v7
.end method

.method public static encode([B)Ljava/lang/String;
    .locals 1

    .prologue
    .line 125
    sget-object v0, Lokio/Base64;->MAP:[B

    invoke-static {p0, v0}, Lokio/Base64;->encode([B[B)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static encode([B[B)Ljava/lang/String;
    .locals 8

    .prologue
    const/4 v0, 0x0

    const/16 v7, 0x3d

    .line 133
    array-length v1, p0

    add-int/lit8 v1, v1, 0x2

    div-int/lit8 v1, v1, 0x3

    mul-int/lit8 v1, v1, 0x4

    .line 134
    new-array v2, v1, [B

    .line 135
    array-length v1, p0

    array-length v3, p0

    rem-int/lit8 v3, v3, 0x3

    sub-int v3, v1, v3

    move v1, v0

    .line 136
    :goto_0
    if-lt v0, v3, :cond_0

    .line 142
    array-length v0, p0

    rem-int/lit8 v0, v0, 0x3

    packed-switch v0, :pswitch_data_0

    .line 157
    :goto_1
    :try_start_0
    new-instance v0, Ljava/lang/String;

    const-string/jumbo v1, "US-ASCII"

    invoke-direct {v0, v2, v1}, Ljava/lang/String;-><init>([BLjava/lang/String;)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 137
    :cond_0
    add-int/lit8 v4, v1, 0x1

    aget-byte v5, p0, v0

    and-int/lit16 v5, v5, 0xff

    shr-int/lit8 v5, v5, 0x2

    aget-byte v5, p1, v5

    int-to-byte v5, v5

    aput-byte v5, v2, v1

    .line 138
    add-int/lit8 v1, v4, 0x1

    aget-byte v5, p0, v0

    and-int/lit8 v5, v5, 0x3

    shl-int/lit8 v5, v5, 0x4

    add-int/lit8 v6, v0, 0x1

    aget-byte v6, p0, v6

    and-int/lit16 v6, v6, 0xff

    shr-int/lit8 v6, v6, 0x4

    or-int/2addr v5, v6

    aget-byte v5, p1, v5

    int-to-byte v5, v5

    aput-byte v5, v2, v4

    .line 139
    add-int/lit8 v4, v1, 0x1

    add-int/lit8 v5, v0, 0x1

    aget-byte v5, p0, v5

    and-int/lit8 v5, v5, 0xf

    shl-int/lit8 v5, v5, 0x2

    add-int/lit8 v6, v0, 0x2

    aget-byte v6, p0, v6

    and-int/lit16 v6, v6, 0xff

    shr-int/lit8 v6, v6, 0x6

    or-int/2addr v5, v6

    aget-byte v5, p1, v5

    int-to-byte v5, v5

    aput-byte v5, v2, v1

    .line 140
    add-int/lit8 v1, v4, 0x1

    add-int/lit8 v5, v0, 0x2

    aget-byte v5, p0, v5

    and-int/lit8 v5, v5, 0x3f

    aget-byte v5, p1, v5

    int-to-byte v5, v5

    aput-byte v5, v2, v4

    .line 136
    add-int/lit8 v0, v0, 0x3

    goto :goto_0

    .line 144
    :pswitch_0
    add-int/lit8 v0, v1, 0x1

    aget-byte v4, p0, v3

    and-int/lit16 v4, v4, 0xff

    shr-int/lit8 v4, v4, 0x2

    aget-byte v4, p1, v4

    int-to-byte v4, v4

    aput-byte v4, v2, v1

    .line 145
    add-int/lit8 v1, v0, 0x1

    aget-byte v3, p0, v3

    and-int/lit8 v3, v3, 0x3

    shl-int/lit8 v3, v3, 0x4

    aget-byte v3, p1, v3

    int-to-byte v3, v3

    aput-byte v3, v2, v0

    .line 146
    add-int/lit8 v0, v1, 0x1

    aput-byte v7, v2, v1

    .line 147
    add-int/lit8 v1, v0, 0x1

    aput-byte v7, v2, v0

    goto :goto_1

    .line 150
    :pswitch_1
    add-int/lit8 v0, v1, 0x1

    aget-byte v4, p0, v3

    and-int/lit16 v4, v4, 0xff

    shr-int/lit8 v4, v4, 0x2

    aget-byte v4, p1, v4

    int-to-byte v4, v4

    aput-byte v4, v2, v1

    .line 151
    add-int/lit8 v1, v0, 0x1

    aget-byte v4, p0, v3

    and-int/lit8 v4, v4, 0x3

    shl-int/lit8 v4, v4, 0x4

    add-int/lit8 v5, v3, 0x1

    aget-byte v5, p0, v5

    and-int/lit16 v5, v5, 0xff

    shr-int/lit8 v5, v5, 0x4

    or-int/2addr v4, v5

    aget-byte v4, p1, v4

    int-to-byte v4, v4

    aput-byte v4, v2, v0

    .line 152
    add-int/lit8 v0, v1, 0x1

    add-int/lit8 v3, v3, 0x1

    aget-byte v3, p0, v3

    and-int/lit8 v3, v3, 0xf

    shl-int/lit8 v3, v3, 0x2

    aget-byte v3, p1, v3

    int-to-byte v3, v3

    aput-byte v3, v2, v1

    .line 153
    add-int/lit8 v1, v0, 0x1

    aput-byte v7, v2, v0

    goto/16 :goto_1

    .line 157
    :catch_0
    move-exception v0

    .line 159
    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1, v0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v1

    .line 142
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public static encodeUrl([B)Ljava/lang/String;
    .locals 1

    .prologue
    .line 129
    sget-object v0, Lokio/Base64;->URL_MAP:[B

    invoke-static {p0, v0}, Lokio/Base64;->encode([B[B)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
