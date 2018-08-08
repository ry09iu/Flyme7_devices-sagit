.class public Lcom/alibaba/fastjson/parser/JSONToken;
.super Ljava/lang/Object;
.source "JSONToken.java"


# static fields
.field public static final COLON:I = 0x11

.field public static final COMMA:I = 0x10

.field public static final DOT:I = 0x19

.field public static final EOF:I = 0x14

.field public static final ERROR:I = 0x1

.field public static final FALSE:I = 0x7

.field public static final FIELD_NAME:I = 0x13

.field public static final HEX:I = 0x1a

.field public static final IDENTIFIER:I = 0x12

.field public static final LBRACE:I = 0xc

.field public static final LBRACKET:I = 0xe

.field public static final LITERAL_FLOAT:I = 0x3

.field public static final LITERAL_INT:I = 0x2

.field public static final LITERAL_ISO8601_DATE:I = 0x5

.field public static final LITERAL_STRING:I = 0x4

.field public static final LPAREN:I = 0xa

.field public static final NEW:I = 0x9

.field public static final NULL:I = 0x8

.field public static final RBRACE:I = 0xd

.field public static final RBRACKET:I = 0xf

.field public static final RPAREN:I = 0xb

.field public static final SEMI:I = 0x18

.field public static final SET:I = 0x15

.field public static final TREE_SET:I = 0x16

.field public static final TRUE:I = 0x6

.field public static final UNDEFINED:I = 0x17


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static name(I)Ljava/lang/String;
    .locals 1

    .prologue
    .line 74
    packed-switch p0, :pswitch_data_0

    const-string/jumbo v0, "Unknown"

    .line 128
    return-object v0

    :pswitch_0
    const-string/jumbo v0, "error"

    .line 76
    return-object v0

    :pswitch_1
    const-string/jumbo v0, "int"

    .line 78
    return-object v0

    :pswitch_2
    const-string/jumbo v0, "float"

    .line 80
    return-object v0

    :pswitch_3
    const-string/jumbo v0, "string"

    .line 82
    return-object v0

    :pswitch_4
    const-string/jumbo v0, "iso8601"

    .line 84
    return-object v0

    :pswitch_5
    const-string/jumbo v0, "true"

    .line 86
    return-object v0

    :pswitch_6
    const-string/jumbo v0, "false"

    .line 88
    return-object v0

    :pswitch_7
    const-string/jumbo v0, "null"

    .line 90
    return-object v0

    :pswitch_8
    const-string/jumbo v0, "new"

    .line 92
    return-object v0

    :pswitch_9
    const-string/jumbo v0, "("

    .line 94
    return-object v0

    :pswitch_a
    const-string/jumbo v0, ")"

    .line 96
    return-object v0

    :pswitch_b
    const-string/jumbo v0, "{"

    .line 98
    return-object v0

    :pswitch_c
    const-string/jumbo v0, "}"

    .line 100
    return-object v0

    :pswitch_d
    const-string/jumbo v0, "["

    .line 102
    return-object v0

    :pswitch_e
    const-string/jumbo v0, "]"

    .line 104
    return-object v0

    :pswitch_f
    const-string/jumbo v0, ","

    .line 106
    return-object v0

    :pswitch_10
    const-string/jumbo v0, ":"

    .line 108
    return-object v0

    :pswitch_11
    const-string/jumbo v0, ";"

    .line 110
    return-object v0

    :pswitch_12
    const-string/jumbo v0, "."

    .line 112
    return-object v0

    :pswitch_13
    const-string/jumbo v0, "ident"

    .line 114
    return-object v0

    :pswitch_14
    const-string/jumbo v0, "fieldName"

    .line 116
    return-object v0

    :pswitch_15
    const-string/jumbo v0, "EOF"

    .line 118
    return-object v0

    :pswitch_16
    const-string/jumbo v0, "Set"

    .line 120
    return-object v0

    :pswitch_17
    const-string/jumbo v0, "TreeSet"

    .line 122
    return-object v0

    :pswitch_18
    const-string/jumbo v0, "undefined"

    .line 124
    return-object v0

    :pswitch_19
    const-string/jumbo v0, "hex"

    .line 126
    return-object v0

    .line 74
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_b
        :pswitch_c
        :pswitch_d
        :pswitch_e
        :pswitch_f
        :pswitch_10
        :pswitch_13
        :pswitch_14
        :pswitch_15
        :pswitch_16
        :pswitch_17
        :pswitch_18
        :pswitch_11
        :pswitch_12
        :pswitch_19
    .end packed-switch
.end method
