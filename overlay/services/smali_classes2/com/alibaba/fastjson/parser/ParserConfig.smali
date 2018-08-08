.class public Lcom/alibaba/fastjson/parser/ParserConfig;
.super Ljava/lang/Object;
.source "ParserConfig.java"


# static fields
.field public static final AUTOTYPE_ACCEPT:Ljava/lang/String; = "fastjson.parser.autoTypeAccept"

.field public static final AUTOTYPE_SUPPORT_PROPERTY:Ljava/lang/String; = "fastjson.parser.autoTypeSupport"

.field public static final AUTO_SUPPORT:Z

.field private static final AUTO_TYPE_ACCEPT_LIST:[Ljava/lang/String;

.field public static final DENYS:[Ljava/lang/String;

.field public static final DENY_PROPERTY:Ljava/lang/String; = "fastjson.parser.deny"

.field private static awtError:Z

.field public static global:Lcom/alibaba/fastjson/parser/ParserConfig;

.field private static jdk8Error:Z


# instance fields
.field private acceptHashCodes:[J

.field private asmEnable:Z

.field protected asmFactory:Lcom/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory;

.field private autoTypeSupport:Z

.field public compatibleWithJavaBean:Z

.field protected defaultClassLoader:Ljava/lang/ClassLoader;

.field private denyHashCodes:[J

.field private final deserializers:Lcom/alibaba/fastjson/util/IdentityHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/alibaba/fastjson/util/IdentityHashMap",
            "<",
            "Ljava/lang/reflect/Type;",
            "Lcom/alibaba/fastjson/parser/deserializer/ObjectDeserializer;",
            ">;"
        }
    .end annotation
.end field

.field public final fieldBased:Z

.field public propertyNamingStrategy:Lcom/alibaba/fastjson/PropertyNamingStrategy;

.field public final symbolTable:Lcom/alibaba/fastjson/parser/SymbolTable;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const-string/jumbo v0, "fastjson.parser.deny"

    .line 79
    invoke-static {v0}, Lcom/alibaba/fastjson/util/IOUtils;->getStringProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 80
    invoke-static {v0}, Lcom/alibaba/fastjson/parser/ParserConfig;->splitItemsFormProperty(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/alibaba/fastjson/parser/ParserConfig;->DENYS:[Ljava/lang/String;

    const-string/jumbo v0, "fastjson.parser.autoTypeSupport"

    .line 83
    invoke-static {v0}, Lcom/alibaba/fastjson/util/IOUtils;->getStringProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "true"

    .line 84
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    sput-boolean v0, Lcom/alibaba/fastjson/parser/ParserConfig;->AUTO_SUPPORT:Z

    const-string/jumbo v0, "fastjson.parser.autoTypeAccept"

    .line 87
    invoke-static {v0}, Lcom/alibaba/fastjson/util/IOUtils;->getStringProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 88
    invoke-static {v0}, Lcom/alibaba/fastjson/parser/ParserConfig;->splitItemsFormProperty(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 89
    if-eqz v0, :cond_0

    .line 92
    :goto_0
    sput-object v0, Lcom/alibaba/fastjson/parser/ParserConfig;->AUTO_TYPE_ACCEPT_LIST:[Ljava/lang/String;

    .line 100
    new-instance v0, Lcom/alibaba/fastjson/parser/ParserConfig;

    invoke-direct {v0}, Lcom/alibaba/fastjson/parser/ParserConfig;-><init>()V

    sput-object v0, Lcom/alibaba/fastjson/parser/ParserConfig;->global:Lcom/alibaba/fastjson/parser/ParserConfig;

    .line 114
    sput-boolean v2, Lcom/alibaba/fastjson/parser/ParserConfig;->awtError:Z

    .line 115
    sput-boolean v2, Lcom/alibaba/fastjson/parser/ParserConfig;->jdk8Error:Z

    return-void

    .line 90
    :cond_0
    new-array v0, v2, [Ljava/lang/String;

    goto :goto_0
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 180
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/alibaba/fastjson/parser/ParserConfig;-><init>(Z)V

    .line 181
    return-void
.end method

.method public constructor <init>(Lcom/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory;)V
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 192
    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1}, Lcom/alibaba/fastjson/parser/ParserConfig;-><init>(Lcom/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory;Ljava/lang/ClassLoader;Z)V

    .line 193
    return-void
.end method

.method private constructor <init>(Lcom/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory;Ljava/lang/ClassLoader;Z)V
    .locals 6

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 195
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 102
    new-instance v0, Lcom/alibaba/fastjson/util/IdentityHashMap;

    invoke-direct {v0}, Lcom/alibaba/fastjson/util/IdentityHashMap;-><init>()V

    iput-object v0, p0, Lcom/alibaba/fastjson/parser/ParserConfig;->deserializers:Lcom/alibaba/fastjson/util/IdentityHashMap;

    .line 104
    sget-boolean v0, Lcom/alibaba/fastjson/util/ASMUtils;->IS_ANDROID:Z

    if-eqz v0, :cond_1

    move v0, v1

    :goto_0
    iput-boolean v0, p0, Lcom/alibaba/fastjson/parser/ParserConfig;->asmEnable:Z

    .line 106
    new-instance v0, Lcom/alibaba/fastjson/parser/SymbolTable;

    const/16 v3, 0x1000

    invoke-direct {v0, v3}, Lcom/alibaba/fastjson/parser/SymbolTable;-><init>(I)V

    iput-object v0, p0, Lcom/alibaba/fastjson/parser/ParserConfig;->symbolTable:Lcom/alibaba/fastjson/parser/SymbolTable;

    .line 117
    sget-boolean v0, Lcom/alibaba/fastjson/parser/ParserConfig;->AUTO_SUPPORT:Z

    iput-boolean v0, p0, Lcom/alibaba/fastjson/parser/ParserConfig;->autoTypeSupport:Z

    .line 124
    sget-boolean v0, Lcom/alibaba/fastjson/util/TypeUtils;->compatibleWithJavaBean:Z

    iput-boolean v0, p0, Lcom/alibaba/fastjson/parser/ParserConfig;->compatibleWithJavaBean:Z

    const/16 v0, 0x29

    .line 127
    new-array v0, v0, [J

    const-wide v4, -0x7903d40641508511L    # -5.085553800937495E-275

    aput-wide v4, v0, v1

    const-wide v4, -0x71522bf34d56bbbdL

    aput-wide v4, v0, v2

    const/4 v2, 0x2

    const-wide v4, -0x708a0605f20fc080L    # -3.455901468587826E-234

    aput-wide v4, v0, v2

    const/4 v2, 0x3

    const-wide v4, -0x702e69f67743174cL

    aput-wide v4, v0, v2

    const/4 v2, 0x4

    const-wide v4, -0x6e8d5ac0ea86cf51L

    aput-wide v4, v0, v2

    const/4 v2, 0x5

    const-wide v4, -0x6dedd28ef1c9b048L    # -1.257180119856368E-221

    aput-wide v4, v0, v2

    const/4 v2, 0x6

    const-wide v4, -0x6bcfa3d9a7f08c3bL    # -1.943861383644949E-211

    aput-wide v4, v0, v2

    const/4 v2, 0x7

    const-wide v4, -0x6bc886d7ce2082c1L

    aput-wide v4, v0, v2

    const/16 v2, 0x8

    const-wide v4, -0x5edc59d06ce874e0L    # -4.802155510082355E-149

    aput-wide v4, v0, v2

    const/16 v2, 0x9

    const-wide v4, -0x55c250024ef3b6c9L

    aput-wide v4, v0, v2

    const/16 v2, 0xa

    const-wide v4, -0x4817128a80a2ec5eL    # -2.2892361373052172E-39

    aput-wide v4, v0, v2

    const/16 v2, 0xb

    const-wide v4, -0x4322623ed8990f32L    # -1.644030941651994E-15

    aput-wide v4, v0, v2

    const/16 v2, 0xc

    const-wide v4, -0x38a661401c18dbfaL    # -5.3210898116926836E35

    aput-wide v4, v0, v2

    const/16 v2, 0xd

    const-wide v4, -0x369c96af7d028d72L    # -3.463106763999075E45

    aput-wide v4, v0, v2

    const/16 v2, 0xe

    const-wide v4, -0x26362409442d844fL    # -3.418880144874191E124

    aput-wide v4, v0, v2

    const/16 v2, 0xf

    const-wide v4, -0x20d2200cef324c8bL    # -3.0559968239287952E150

    aput-wide v4, v0, v2

    const/16 v2, 0x10

    const-wide v4, -0x1f651b9fb7bda7d1L    # -2.3076098125244163E157

    aput-wide v4, v0, v2

    const/16 v2, 0x11

    const-wide v4, -0x19fc295ae05296d5L    # -2.6342395696172524E183

    aput-wide v4, v0, v2

    const/16 v2, 0x12

    const-wide v4, -0x160df452da09f7f9L    # -2.2100835374064227E202

    aput-wide v4, v0, v2

    const/16 v2, 0x13

    const-wide v4, -0x388c51df37d896fL

    aput-wide v4, v0, v2

    const/16 v2, 0x14

    const-wide v4, -0x2a4039effa928e0L    # -7.14947811210233E295

    aput-wide v4, v0, v2

    const/16 v2, 0x15

    const-wide v4, 0x761619136cc13eL

    aput-wide v4, v0, v2

    const/16 v2, 0x16

    const-wide v4, 0x45b11bc78a3aba3L

    aput-wide v4, v0, v2

    const/16 v2, 0x17

    const-wide v4, 0xee6511b66fd5ef0L    # 6.854342740564376E-237

    aput-wide v4, v0, v2

    const/16 v2, 0x18

    const-wide v4, 0x10b2bdca849d9b3eL    # 3.09032861507223E-228

    aput-wide v4, v0, v2

    const/16 v2, 0x19

    const-wide v4, 0x14db2e6fead04af0L    # 3.307156557815155E-208

    aput-wide v4, v0, v2

    const/16 v2, 0x1a

    const-wide v4, 0x313bb4abd8d4554cL    # 1.56808971921097E-71

    aput-wide v4, v0, v2

    const/16 v2, 0x1b

    const-wide v4, 0x33c64b921f523f2fL    # 2.77486720533494E-59

    aput-wide v4, v0, v2

    const/16 v2, 0x1c

    const-wide v4, 0x34a81ee78429fdf1L    # 4.918595094295287E-55

    aput-wide v4, v0, v2

    const/16 v2, 0x1d

    const-wide v4, 0x398f942e01920cf0L    # 1.9461954727645544E-31

    aput-wide v4, v0, v2

    const/16 v2, 0x1e

    const-wide v4, 0x4a3797b30328202cL    # 3.448058737338662E49

    aput-wide v4, v0, v2

    const/16 v2, 0x1f

    const-wide v4, 0x4ba3e254e758d70dL    # 2.4377845509161763E56

    aput-wide v4, v0, v2

    const/16 v2, 0x20

    const-wide v4, 0x4ef08c90ff16c675L    # 1.8274816638330285E72

    aput-wide v4, v0, v2

    const/16 v2, 0x21

    const-wide v4, 0x4fd10ddc6d13821fL    # 3.085523505057036E76

    aput-wide v4, v0, v2

    const/16 v2, 0x22

    const-wide v4, 0x527db6b46ce3bcbcL    # 2.3643694017797754E89

    aput-wide v4, v0, v2

    const/16 v2, 0x23

    const-wide v4, 0x5d92e6ddde40ed84L    # 5.762376793011253E142

    aput-wide v4, v0, v2

    const/16 v2, 0x24

    const-wide v4, 0x616323f12c2ce25eL    # 1.345484437108061E161

    aput-wide v4, v0, v2

    const/16 v2, 0x25

    const-wide v4, 0x63a220e60a17c7b9L    # 8.757288450874107E171

    aput-wide v4, v0, v2

    const/16 v2, 0x26

    const-wide v4, 0x6749835432e0f0d2L

    aput-wide v4, v0, v2

    const/16 v2, 0x27

    const-wide v4, 0x746bd4a53ec195fbL    # 6.376313675246868E252

    aput-wide v4, v0, v2

    const/16 v2, 0x28

    const-wide v4, 0x7aa7ee3627a19cf3L    # 6.950210684357695E282

    aput-wide v4, v0, v2

    iput-object v0, p0, Lcom/alibaba/fastjson/parser/ParserConfig;->denyHashCodes:[J

    .line 171
    sget-object v0, Lcom/alibaba/fastjson/parser/ParserConfig;->AUTO_TYPE_ACCEPT_LIST:[Ljava/lang/String;

    array-length v0, v0

    new-array v2, v0, [J

    move v0, v1

    .line 172
    :goto_1
    sget-object v3, Lcom/alibaba/fastjson/parser/ParserConfig;->AUTO_TYPE_ACCEPT_LIST:[Ljava/lang/String;

    array-length v3, v3

    if-lt v0, v3, :cond_2

    .line 175
    invoke-static {v2}, Ljava/util/Arrays;->sort([J)V

    .line 176
    iput-object v2, p0, Lcom/alibaba/fastjson/parser/ParserConfig;->acceptHashCodes:[J

    .line 196
    iput-boolean p3, p0, Lcom/alibaba/fastjson/parser/ParserConfig;->fieldBased:Z

    .line 197
    if-eqz p1, :cond_3

    .line 213
    :cond_0
    :goto_2
    iput-object p1, p0, Lcom/alibaba/fastjson/parser/ParserConfig;->asmFactory:Lcom/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory;

    .line 215
    if-eqz p1, :cond_5

    .line 219
    :goto_3
    invoke-direct {p0}, Lcom/alibaba/fastjson/parser/ParserConfig;->initDeserializers()V

    .line 221
    sget-object v0, Lcom/alibaba/fastjson/parser/ParserConfig;->DENYS:[Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/alibaba/fastjson/parser/ParserConfig;->addItemsToDeny([Ljava/lang/String;)V

    .line 222
    sget-object v0, Lcom/alibaba/fastjson/parser/ParserConfig;->AUTO_TYPE_ACCEPT_LIST:[Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/alibaba/fastjson/parser/ParserConfig;->addItemsToAccept([Ljava/lang/String;)V

    .line 224
    return-void

    :cond_1
    move v0, v2

    .line 104
    goto/16 :goto_0

    .line 173
    :cond_2
    sget-object v3, Lcom/alibaba/fastjson/parser/ParserConfig;->AUTO_TYPE_ACCEPT_LIST:[Ljava/lang/String;

    aget-object v3, v3, v0

    invoke-static {v3}, Lcom/alibaba/fastjson/util/TypeUtils;->fnv1a_64(Ljava/lang/String;)J

    move-result-wide v4

    aput-wide v4, v2, v0

    .line 172
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 197
    :cond_3
    sget-boolean v0, Lcom/alibaba/fastjson/util/ASMUtils;->IS_ANDROID:Z

    if-nez v0, :cond_0

    .line 199
    if-eqz p2, :cond_4

    .line 202
    :try_start_0
    new-instance v0, Lcom/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory;

    invoke-direct {v0, p2}, Lcom/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory;-><init>(Ljava/lang/ClassLoader;)V

    :goto_4
    move-object p1, v0

    .line 210
    goto :goto_2

    .line 200
    :cond_4
    new-instance v0, Lcom/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory;

    new-instance v2, Lcom/alibaba/fastjson/util/ASMClassLoader;

    invoke-direct {v2}, Lcom/alibaba/fastjson/util/ASMClassLoader;-><init>()V

    invoke-direct {v0, v2}, Lcom/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory;-><init>(Ljava/lang/ClassLoader;)V
    :try_end_0
    .catch Ljava/lang/ExceptionInInitializerError; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/security/AccessControlException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/NoClassDefFoundError; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_4

    .line 210
    :catch_0
    move-exception v0

    goto :goto_2

    .line 216
    :cond_5
    iput-boolean v1, p0, Lcom/alibaba/fastjson/parser/ParserConfig;->asmEnable:Z

    goto :goto_3

    .line 210
    :catch_1
    move-exception v0

    goto :goto_2

    :catch_2
    move-exception v0

    goto :goto_2
.end method

.method public constructor <init>(Ljava/lang/ClassLoader;)V
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 188
    const/4 v1, 0x0

    invoke-direct {p0, v0, p1, v1}, Lcom/alibaba/fastjson/parser/ParserConfig;-><init>(Lcom/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory;Ljava/lang/ClassLoader;Z)V

    .line 189
    return-void
.end method

.method public constructor <init>(Z)V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 184
    invoke-direct {p0, v0, v0, p1}, Lcom/alibaba/fastjson/parser/ParserConfig;-><init>(Lcom/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory;Ljava/lang/ClassLoader;Z)V

    .line 185
    return-void
.end method

.method private addItemsToAccept([Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 349
    if-eqz p1, :cond_0

    const/4 v0, 0x0

    .line 353
    :goto_0
    array-length v1, p1

    if-lt v0, v1, :cond_1

    .line 357
    return-void

    .line 350
    :cond_0
    return-void

    .line 354
    :cond_1
    aget-object v1, p1, v0

    .line 355
    invoke-virtual {p0, v1}, Lcom/alibaba/fastjson/parser/ParserConfig;->addAccept(Ljava/lang/String;)V

    .line 353
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method private addItemsToDeny([Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 338
    if-eqz p1, :cond_0

    const/4 v0, 0x0

    .line 342
    :goto_0
    array-length v1, p1

    if-lt v0, v1, :cond_1

    .line 346
    return-void

    .line 339
    :cond_0
    return-void

    .line 343
    :cond_1
    aget-object v1, p1, v0

    .line 344
    invoke-virtual {p0, v1}, Lcom/alibaba/fastjson/parser/ParserConfig;->addDeny(Ljava/lang/String;)V

    .line 342
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public static getFieldFromCache(Ljava/lang/String;Ljava/util/Map;)Ljava/lang/reflect/Field;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/reflect/Field;",
            ">;)",
            "Ljava/lang/reflect/Field;"
        }
    .end annotation

    .prologue
    const/16 v6, 0x7a

    const/16 v5, 0x61

    const/4 v4, 0x2

    const/4 v3, 0x0

    .line 817
    invoke-interface {p1, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/reflect/Field;

    .line 819
    if-eqz v0, :cond_1

    .line 823
    :goto_0
    if-eqz v0, :cond_2

    .line 827
    :goto_1
    if-eqz v0, :cond_3

    move-object v2, v0

    .line 851
    :cond_0
    :goto_2
    return-object v2

    .line 820
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/reflect/Field;

    goto :goto_0

    .line 824
    :cond_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "m_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/reflect/Field;

    goto :goto_1

    .line 828
    :cond_3
    invoke-virtual {p0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v1

    .line 829
    if-ge v1, v5, :cond_6

    :cond_4
    move-object v2, v0

    .line 836
    :goto_3
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-le v0, v4, :cond_0

    const/4 v0, 0x1

    .line 837
    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 838
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    if-le v3, v4, :cond_0

    if-lt v1, v5, :cond_0

    if-gt v1, v6, :cond_0

    const/16 v1, 0x41

    if-lt v0, v1, :cond_0

    const/16 v1, 0x5a

    if-gt v0, v1, :cond_0

    .line 841
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_5
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 842
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {p0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 843
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/reflect/Field;

    move-object v2, v0

    .line 844
    goto/16 :goto_2

    .line 829
    :cond_6
    if-gt v1, v6, :cond_4

    .line 830
    invoke-virtual {p0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    .line 831
    aget-char v2, v0, v3

    add-int/lit8 v2, v2, -0x20

    int-to-char v2, v2

    int-to-char v2, v2

    aput-char v2, v0, v3

    .line 832
    new-instance v2, Ljava/lang/String;

    invoke-direct {v2, v0}, Ljava/lang/String;-><init>([C)V

    .line 833
    invoke-interface {p1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/reflect/Field;

    move-object v2, v0

    goto :goto_3
.end method

.method public static getGlobalInstance()Lcom/alibaba/fastjson/parser/ParserConfig;
    .locals 1

    .prologue
    .line 97
    sget-object v0, Lcom/alibaba/fastjson/parser/ParserConfig;->global:Lcom/alibaba/fastjson/parser/ParserConfig;

    return-object v0
.end method

.method private initDeserializers()V
    .locals 3

    .prologue
    .line 227
    iget-object v0, p0, Lcom/alibaba/fastjson/parser/ParserConfig;->deserializers:Lcom/alibaba/fastjson/util/IdentityHashMap;

    const-class v1, Ljava/text/SimpleDateFormat;

    sget-object v2, Lcom/alibaba/fastjson/serializer/MiscCodec;->instance:Lcom/alibaba/fastjson/serializer/MiscCodec;

    invoke-virtual {v0, v1, v2}, Lcom/alibaba/fastjson/util/IdentityHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 228
    iget-object v0, p0, Lcom/alibaba/fastjson/parser/ParserConfig;->deserializers:Lcom/alibaba/fastjson/util/IdentityHashMap;

    const-class v1, Ljava/sql/Timestamp;

    sget-object v2, Lcom/alibaba/fastjson/parser/deserializer/SqlDateDeserializer;->instance_timestamp:Lcom/alibaba/fastjson/parser/deserializer/SqlDateDeserializer;

    invoke-virtual {v0, v1, v2}, Lcom/alibaba/fastjson/util/IdentityHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 229
    iget-object v0, p0, Lcom/alibaba/fastjson/parser/ParserConfig;->deserializers:Lcom/alibaba/fastjson/util/IdentityHashMap;

    const-class v1, Ljava/sql/Date;

    sget-object v2, Lcom/alibaba/fastjson/parser/deserializer/SqlDateDeserializer;->instance:Lcom/alibaba/fastjson/parser/deserializer/SqlDateDeserializer;

    invoke-virtual {v0, v1, v2}, Lcom/alibaba/fastjson/util/IdentityHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 230
    iget-object v0, p0, Lcom/alibaba/fastjson/parser/ParserConfig;->deserializers:Lcom/alibaba/fastjson/util/IdentityHashMap;

    const-class v1, Ljava/sql/Time;

    sget-object v2, Lcom/alibaba/fastjson/parser/deserializer/TimeDeserializer;->instance:Lcom/alibaba/fastjson/parser/deserializer/TimeDeserializer;

    invoke-virtual {v0, v1, v2}, Lcom/alibaba/fastjson/util/IdentityHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 231
    iget-object v0, p0, Lcom/alibaba/fastjson/parser/ParserConfig;->deserializers:Lcom/alibaba/fastjson/util/IdentityHashMap;

    const-class v1, Ljava/util/Date;

    sget-object v2, Lcom/alibaba/fastjson/serializer/DateCodec;->instance:Lcom/alibaba/fastjson/serializer/DateCodec;

    invoke-virtual {v0, v1, v2}, Lcom/alibaba/fastjson/util/IdentityHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 232
    iget-object v0, p0, Lcom/alibaba/fastjson/parser/ParserConfig;->deserializers:Lcom/alibaba/fastjson/util/IdentityHashMap;

    const-class v1, Ljava/util/Calendar;

    sget-object v2, Lcom/alibaba/fastjson/serializer/CalendarCodec;->instance:Lcom/alibaba/fastjson/serializer/CalendarCodec;

    invoke-virtual {v0, v1, v2}, Lcom/alibaba/fastjson/util/IdentityHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 233
    iget-object v0, p0, Lcom/alibaba/fastjson/parser/ParserConfig;->deserializers:Lcom/alibaba/fastjson/util/IdentityHashMap;

    const-class v1, Ljavax/xml/datatype/XMLGregorianCalendar;

    sget-object v2, Lcom/alibaba/fastjson/serializer/CalendarCodec;->instance:Lcom/alibaba/fastjson/serializer/CalendarCodec;

    invoke-virtual {v0, v1, v2}, Lcom/alibaba/fastjson/util/IdentityHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 235
    iget-object v0, p0, Lcom/alibaba/fastjson/parser/ParserConfig;->deserializers:Lcom/alibaba/fastjson/util/IdentityHashMap;

    const-class v1, Lcom/alibaba/fastjson/JSONObject;

    sget-object v2, Lcom/alibaba/fastjson/parser/deserializer/MapDeserializer;->instance:Lcom/alibaba/fastjson/parser/deserializer/MapDeserializer;

    invoke-virtual {v0, v1, v2}, Lcom/alibaba/fastjson/util/IdentityHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 236
    iget-object v0, p0, Lcom/alibaba/fastjson/parser/ParserConfig;->deserializers:Lcom/alibaba/fastjson/util/IdentityHashMap;

    const-class v1, Lcom/alibaba/fastjson/JSONArray;

    sget-object v2, Lcom/alibaba/fastjson/serializer/CollectionCodec;->instance:Lcom/alibaba/fastjson/serializer/CollectionCodec;

    invoke-virtual {v0, v1, v2}, Lcom/alibaba/fastjson/util/IdentityHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 238
    iget-object v0, p0, Lcom/alibaba/fastjson/parser/ParserConfig;->deserializers:Lcom/alibaba/fastjson/util/IdentityHashMap;

    const-class v1, Ljava/util/Map;

    sget-object v2, Lcom/alibaba/fastjson/parser/deserializer/MapDeserializer;->instance:Lcom/alibaba/fastjson/parser/deserializer/MapDeserializer;

    invoke-virtual {v0, v1, v2}, Lcom/alibaba/fastjson/util/IdentityHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 239
    iget-object v0, p0, Lcom/alibaba/fastjson/parser/ParserConfig;->deserializers:Lcom/alibaba/fastjson/util/IdentityHashMap;

    const-class v1, Ljava/util/HashMap;

    sget-object v2, Lcom/alibaba/fastjson/parser/deserializer/MapDeserializer;->instance:Lcom/alibaba/fastjson/parser/deserializer/MapDeserializer;

    invoke-virtual {v0, v1, v2}, Lcom/alibaba/fastjson/util/IdentityHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 240
    iget-object v0, p0, Lcom/alibaba/fastjson/parser/ParserConfig;->deserializers:Lcom/alibaba/fastjson/util/IdentityHashMap;

    const-class v1, Ljava/util/LinkedHashMap;

    sget-object v2, Lcom/alibaba/fastjson/parser/deserializer/MapDeserializer;->instance:Lcom/alibaba/fastjson/parser/deserializer/MapDeserializer;

    invoke-virtual {v0, v1, v2}, Lcom/alibaba/fastjson/util/IdentityHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 241
    iget-object v0, p0, Lcom/alibaba/fastjson/parser/ParserConfig;->deserializers:Lcom/alibaba/fastjson/util/IdentityHashMap;

    const-class v1, Ljava/util/TreeMap;

    sget-object v2, Lcom/alibaba/fastjson/parser/deserializer/MapDeserializer;->instance:Lcom/alibaba/fastjson/parser/deserializer/MapDeserializer;

    invoke-virtual {v0, v1, v2}, Lcom/alibaba/fastjson/util/IdentityHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 242
    iget-object v0, p0, Lcom/alibaba/fastjson/parser/ParserConfig;->deserializers:Lcom/alibaba/fastjson/util/IdentityHashMap;

    const-class v1, Ljava/util/concurrent/ConcurrentMap;

    sget-object v2, Lcom/alibaba/fastjson/parser/deserializer/MapDeserializer;->instance:Lcom/alibaba/fastjson/parser/deserializer/MapDeserializer;

    invoke-virtual {v0, v1, v2}, Lcom/alibaba/fastjson/util/IdentityHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 243
    iget-object v0, p0, Lcom/alibaba/fastjson/parser/ParserConfig;->deserializers:Lcom/alibaba/fastjson/util/IdentityHashMap;

    const-class v1, Ljava/util/concurrent/ConcurrentHashMap;

    sget-object v2, Lcom/alibaba/fastjson/parser/deserializer/MapDeserializer;->instance:Lcom/alibaba/fastjson/parser/deserializer/MapDeserializer;

    invoke-virtual {v0, v1, v2}, Lcom/alibaba/fastjson/util/IdentityHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 245
    iget-object v0, p0, Lcom/alibaba/fastjson/parser/ParserConfig;->deserializers:Lcom/alibaba/fastjson/util/IdentityHashMap;

    const-class v1, Ljava/util/Collection;

    sget-object v2, Lcom/alibaba/fastjson/serializer/CollectionCodec;->instance:Lcom/alibaba/fastjson/serializer/CollectionCodec;

    invoke-virtual {v0, v1, v2}, Lcom/alibaba/fastjson/util/IdentityHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 246
    iget-object v0, p0, Lcom/alibaba/fastjson/parser/ParserConfig;->deserializers:Lcom/alibaba/fastjson/util/IdentityHashMap;

    const-class v1, Ljava/util/List;

    sget-object v2, Lcom/alibaba/fastjson/serializer/CollectionCodec;->instance:Lcom/alibaba/fastjson/serializer/CollectionCodec;

    invoke-virtual {v0, v1, v2}, Lcom/alibaba/fastjson/util/IdentityHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 247
    iget-object v0, p0, Lcom/alibaba/fastjson/parser/ParserConfig;->deserializers:Lcom/alibaba/fastjson/util/IdentityHashMap;

    const-class v1, Ljava/util/ArrayList;

    sget-object v2, Lcom/alibaba/fastjson/serializer/CollectionCodec;->instance:Lcom/alibaba/fastjson/serializer/CollectionCodec;

    invoke-virtual {v0, v1, v2}, Lcom/alibaba/fastjson/util/IdentityHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 249
    iget-object v0, p0, Lcom/alibaba/fastjson/parser/ParserConfig;->deserializers:Lcom/alibaba/fastjson/util/IdentityHashMap;

    const-class v1, Ljava/lang/Object;

    sget-object v2, Lcom/alibaba/fastjson/parser/deserializer/JavaObjectDeserializer;->instance:Lcom/alibaba/fastjson/parser/deserializer/JavaObjectDeserializer;

    invoke-virtual {v0, v1, v2}, Lcom/alibaba/fastjson/util/IdentityHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 250
    iget-object v0, p0, Lcom/alibaba/fastjson/parser/ParserConfig;->deserializers:Lcom/alibaba/fastjson/util/IdentityHashMap;

    const-class v1, Ljava/lang/String;

    sget-object v2, Lcom/alibaba/fastjson/serializer/StringCodec;->instance:Lcom/alibaba/fastjson/serializer/StringCodec;

    invoke-virtual {v0, v1, v2}, Lcom/alibaba/fastjson/util/IdentityHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 251
    iget-object v0, p0, Lcom/alibaba/fastjson/parser/ParserConfig;->deserializers:Lcom/alibaba/fastjson/util/IdentityHashMap;

    const-class v1, Ljava/lang/StringBuffer;

    sget-object v2, Lcom/alibaba/fastjson/serializer/StringCodec;->instance:Lcom/alibaba/fastjson/serializer/StringCodec;

    invoke-virtual {v0, v1, v2}, Lcom/alibaba/fastjson/util/IdentityHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 252
    iget-object v0, p0, Lcom/alibaba/fastjson/parser/ParserConfig;->deserializers:Lcom/alibaba/fastjson/util/IdentityHashMap;

    const-class v1, Ljava/lang/StringBuilder;

    sget-object v2, Lcom/alibaba/fastjson/serializer/StringCodec;->instance:Lcom/alibaba/fastjson/serializer/StringCodec;

    invoke-virtual {v0, v1, v2}, Lcom/alibaba/fastjson/util/IdentityHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 253
    iget-object v0, p0, Lcom/alibaba/fastjson/parser/ParserConfig;->deserializers:Lcom/alibaba/fastjson/util/IdentityHashMap;

    sget-object v1, Ljava/lang/Character;->TYPE:Ljava/lang/Class;

    sget-object v2, Lcom/alibaba/fastjson/serializer/CharacterCodec;->instance:Lcom/alibaba/fastjson/serializer/CharacterCodec;

    invoke-virtual {v0, v1, v2}, Lcom/alibaba/fastjson/util/IdentityHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 254
    iget-object v0, p0, Lcom/alibaba/fastjson/parser/ParserConfig;->deserializers:Lcom/alibaba/fastjson/util/IdentityHashMap;

    const-class v1, Ljava/lang/Character;

    sget-object v2, Lcom/alibaba/fastjson/serializer/CharacterCodec;->instance:Lcom/alibaba/fastjson/serializer/CharacterCodec;

    invoke-virtual {v0, v1, v2}, Lcom/alibaba/fastjson/util/IdentityHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 255
    iget-object v0, p0, Lcom/alibaba/fastjson/parser/ParserConfig;->deserializers:Lcom/alibaba/fastjson/util/IdentityHashMap;

    sget-object v1, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    sget-object v2, Lcom/alibaba/fastjson/parser/deserializer/NumberDeserializer;->instance:Lcom/alibaba/fastjson/parser/deserializer/NumberDeserializer;

    invoke-virtual {v0, v1, v2}, Lcom/alibaba/fastjson/util/IdentityHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 256
    iget-object v0, p0, Lcom/alibaba/fastjson/parser/ParserConfig;->deserializers:Lcom/alibaba/fastjson/util/IdentityHashMap;

    const-class v1, Ljava/lang/Byte;

    sget-object v2, Lcom/alibaba/fastjson/parser/deserializer/NumberDeserializer;->instance:Lcom/alibaba/fastjson/parser/deserializer/NumberDeserializer;

    invoke-virtual {v0, v1, v2}, Lcom/alibaba/fastjson/util/IdentityHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 257
    iget-object v0, p0, Lcom/alibaba/fastjson/parser/ParserConfig;->deserializers:Lcom/alibaba/fastjson/util/IdentityHashMap;

    sget-object v1, Ljava/lang/Short;->TYPE:Ljava/lang/Class;

    sget-object v2, Lcom/alibaba/fastjson/parser/deserializer/NumberDeserializer;->instance:Lcom/alibaba/fastjson/parser/deserializer/NumberDeserializer;

    invoke-virtual {v0, v1, v2}, Lcom/alibaba/fastjson/util/IdentityHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 258
    iget-object v0, p0, Lcom/alibaba/fastjson/parser/ParserConfig;->deserializers:Lcom/alibaba/fastjson/util/IdentityHashMap;

    const-class v1, Ljava/lang/Short;

    sget-object v2, Lcom/alibaba/fastjson/parser/deserializer/NumberDeserializer;->instance:Lcom/alibaba/fastjson/parser/deserializer/NumberDeserializer;

    invoke-virtual {v0, v1, v2}, Lcom/alibaba/fastjson/util/IdentityHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 259
    iget-object v0, p0, Lcom/alibaba/fastjson/parser/ParserConfig;->deserializers:Lcom/alibaba/fastjson/util/IdentityHashMap;

    sget-object v1, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    sget-object v2, Lcom/alibaba/fastjson/serializer/IntegerCodec;->instance:Lcom/alibaba/fastjson/serializer/IntegerCodec;

    invoke-virtual {v0, v1, v2}, Lcom/alibaba/fastjson/util/IdentityHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 260
    iget-object v0, p0, Lcom/alibaba/fastjson/parser/ParserConfig;->deserializers:Lcom/alibaba/fastjson/util/IdentityHashMap;

    const-class v1, Ljava/lang/Integer;

    sget-object v2, Lcom/alibaba/fastjson/serializer/IntegerCodec;->instance:Lcom/alibaba/fastjson/serializer/IntegerCodec;

    invoke-virtual {v0, v1, v2}, Lcom/alibaba/fastjson/util/IdentityHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 261
    iget-object v0, p0, Lcom/alibaba/fastjson/parser/ParserConfig;->deserializers:Lcom/alibaba/fastjson/util/IdentityHashMap;

    sget-object v1, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    sget-object v2, Lcom/alibaba/fastjson/serializer/LongCodec;->instance:Lcom/alibaba/fastjson/serializer/LongCodec;

    invoke-virtual {v0, v1, v2}, Lcom/alibaba/fastjson/util/IdentityHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 262
    iget-object v0, p0, Lcom/alibaba/fastjson/parser/ParserConfig;->deserializers:Lcom/alibaba/fastjson/util/IdentityHashMap;

    const-class v1, Ljava/lang/Long;

    sget-object v2, Lcom/alibaba/fastjson/serializer/LongCodec;->instance:Lcom/alibaba/fastjson/serializer/LongCodec;

    invoke-virtual {v0, v1, v2}, Lcom/alibaba/fastjson/util/IdentityHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 263
    iget-object v0, p0, Lcom/alibaba/fastjson/parser/ParserConfig;->deserializers:Lcom/alibaba/fastjson/util/IdentityHashMap;

    const-class v1, Ljava/math/BigInteger;

    sget-object v2, Lcom/alibaba/fastjson/serializer/BigIntegerCodec;->instance:Lcom/alibaba/fastjson/serializer/BigIntegerCodec;

    invoke-virtual {v0, v1, v2}, Lcom/alibaba/fastjson/util/IdentityHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 264
    iget-object v0, p0, Lcom/alibaba/fastjson/parser/ParserConfig;->deserializers:Lcom/alibaba/fastjson/util/IdentityHashMap;

    const-class v1, Ljava/math/BigDecimal;

    sget-object v2, Lcom/alibaba/fastjson/serializer/BigDecimalCodec;->instance:Lcom/alibaba/fastjson/serializer/BigDecimalCodec;

    invoke-virtual {v0, v1, v2}, Lcom/alibaba/fastjson/util/IdentityHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 265
    iget-object v0, p0, Lcom/alibaba/fastjson/parser/ParserConfig;->deserializers:Lcom/alibaba/fastjson/util/IdentityHashMap;

    sget-object v1, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    sget-object v2, Lcom/alibaba/fastjson/serializer/FloatCodec;->instance:Lcom/alibaba/fastjson/serializer/FloatCodec;

    invoke-virtual {v0, v1, v2}, Lcom/alibaba/fastjson/util/IdentityHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 266
    iget-object v0, p0, Lcom/alibaba/fastjson/parser/ParserConfig;->deserializers:Lcom/alibaba/fastjson/util/IdentityHashMap;

    const-class v1, Ljava/lang/Float;

    sget-object v2, Lcom/alibaba/fastjson/serializer/FloatCodec;->instance:Lcom/alibaba/fastjson/serializer/FloatCodec;

    invoke-virtual {v0, v1, v2}, Lcom/alibaba/fastjson/util/IdentityHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 267
    iget-object v0, p0, Lcom/alibaba/fastjson/parser/ParserConfig;->deserializers:Lcom/alibaba/fastjson/util/IdentityHashMap;

    sget-object v1, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    sget-object v2, Lcom/alibaba/fastjson/parser/deserializer/NumberDeserializer;->instance:Lcom/alibaba/fastjson/parser/deserializer/NumberDeserializer;

    invoke-virtual {v0, v1, v2}, Lcom/alibaba/fastjson/util/IdentityHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 268
    iget-object v0, p0, Lcom/alibaba/fastjson/parser/ParserConfig;->deserializers:Lcom/alibaba/fastjson/util/IdentityHashMap;

    const-class v1, Ljava/lang/Double;

    sget-object v2, Lcom/alibaba/fastjson/parser/deserializer/NumberDeserializer;->instance:Lcom/alibaba/fastjson/parser/deserializer/NumberDeserializer;

    invoke-virtual {v0, v1, v2}, Lcom/alibaba/fastjson/util/IdentityHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 269
    iget-object v0, p0, Lcom/alibaba/fastjson/parser/ParserConfig;->deserializers:Lcom/alibaba/fastjson/util/IdentityHashMap;

    sget-object v1, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    sget-object v2, Lcom/alibaba/fastjson/serializer/BooleanCodec;->instance:Lcom/alibaba/fastjson/serializer/BooleanCodec;

    invoke-virtual {v0, v1, v2}, Lcom/alibaba/fastjson/util/IdentityHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 270
    iget-object v0, p0, Lcom/alibaba/fastjson/parser/ParserConfig;->deserializers:Lcom/alibaba/fastjson/util/IdentityHashMap;

    const-class v1, Ljava/lang/Boolean;

    sget-object v2, Lcom/alibaba/fastjson/serializer/BooleanCodec;->instance:Lcom/alibaba/fastjson/serializer/BooleanCodec;

    invoke-virtual {v0, v1, v2}, Lcom/alibaba/fastjson/util/IdentityHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 271
    iget-object v0, p0, Lcom/alibaba/fastjson/parser/ParserConfig;->deserializers:Lcom/alibaba/fastjson/util/IdentityHashMap;

    const-class v1, Ljava/lang/Class;

    sget-object v2, Lcom/alibaba/fastjson/serializer/MiscCodec;->instance:Lcom/alibaba/fastjson/serializer/MiscCodec;

    invoke-virtual {v0, v1, v2}, Lcom/alibaba/fastjson/util/IdentityHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 272
    iget-object v0, p0, Lcom/alibaba/fastjson/parser/ParserConfig;->deserializers:Lcom/alibaba/fastjson/util/IdentityHashMap;

    const-class v1, [C

    new-instance v2, Lcom/alibaba/fastjson/serializer/CharArrayCodec;

    invoke-direct {v2}, Lcom/alibaba/fastjson/serializer/CharArrayCodec;-><init>()V

    invoke-virtual {v0, v1, v2}, Lcom/alibaba/fastjson/util/IdentityHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 274
    iget-object v0, p0, Lcom/alibaba/fastjson/parser/ParserConfig;->deserializers:Lcom/alibaba/fastjson/util/IdentityHashMap;

    const-class v1, Ljava/util/concurrent/atomic/AtomicBoolean;

    sget-object v2, Lcom/alibaba/fastjson/serializer/BooleanCodec;->instance:Lcom/alibaba/fastjson/serializer/BooleanCodec;

    invoke-virtual {v0, v1, v2}, Lcom/alibaba/fastjson/util/IdentityHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 275
    iget-object v0, p0, Lcom/alibaba/fastjson/parser/ParserConfig;->deserializers:Lcom/alibaba/fastjson/util/IdentityHashMap;

    const-class v1, Ljava/util/concurrent/atomic/AtomicInteger;

    sget-object v2, Lcom/alibaba/fastjson/serializer/IntegerCodec;->instance:Lcom/alibaba/fastjson/serializer/IntegerCodec;

    invoke-virtual {v0, v1, v2}, Lcom/alibaba/fastjson/util/IdentityHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 276
    iget-object v0, p0, Lcom/alibaba/fastjson/parser/ParserConfig;->deserializers:Lcom/alibaba/fastjson/util/IdentityHashMap;

    const-class v1, Ljava/util/concurrent/atomic/AtomicLong;

    sget-object v2, Lcom/alibaba/fastjson/serializer/LongCodec;->instance:Lcom/alibaba/fastjson/serializer/LongCodec;

    invoke-virtual {v0, v1, v2}, Lcom/alibaba/fastjson/util/IdentityHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 277
    iget-object v0, p0, Lcom/alibaba/fastjson/parser/ParserConfig;->deserializers:Lcom/alibaba/fastjson/util/IdentityHashMap;

    const-class v1, Ljava/util/concurrent/atomic/AtomicReference;

    sget-object v2, Lcom/alibaba/fastjson/serializer/ReferenceCodec;->instance:Lcom/alibaba/fastjson/serializer/ReferenceCodec;

    invoke-virtual {v0, v1, v2}, Lcom/alibaba/fastjson/util/IdentityHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 279
    iget-object v0, p0, Lcom/alibaba/fastjson/parser/ParserConfig;->deserializers:Lcom/alibaba/fastjson/util/IdentityHashMap;

    const-class v1, Ljava/lang/ref/WeakReference;

    sget-object v2, Lcom/alibaba/fastjson/serializer/ReferenceCodec;->instance:Lcom/alibaba/fastjson/serializer/ReferenceCodec;

    invoke-virtual {v0, v1, v2}, Lcom/alibaba/fastjson/util/IdentityHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 280
    iget-object v0, p0, Lcom/alibaba/fastjson/parser/ParserConfig;->deserializers:Lcom/alibaba/fastjson/util/IdentityHashMap;

    const-class v1, Ljava/lang/ref/SoftReference;

    sget-object v2, Lcom/alibaba/fastjson/serializer/ReferenceCodec;->instance:Lcom/alibaba/fastjson/serializer/ReferenceCodec;

    invoke-virtual {v0, v1, v2}, Lcom/alibaba/fastjson/util/IdentityHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 282
    iget-object v0, p0, Lcom/alibaba/fastjson/parser/ParserConfig;->deserializers:Lcom/alibaba/fastjson/util/IdentityHashMap;

    const-class v1, Ljava/util/UUID;

    sget-object v2, Lcom/alibaba/fastjson/serializer/MiscCodec;->instance:Lcom/alibaba/fastjson/serializer/MiscCodec;

    invoke-virtual {v0, v1, v2}, Lcom/alibaba/fastjson/util/IdentityHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 283
    iget-object v0, p0, Lcom/alibaba/fastjson/parser/ParserConfig;->deserializers:Lcom/alibaba/fastjson/util/IdentityHashMap;

    const-class v1, Ljava/util/TimeZone;

    sget-object v2, Lcom/alibaba/fastjson/serializer/MiscCodec;->instance:Lcom/alibaba/fastjson/serializer/MiscCodec;

    invoke-virtual {v0, v1, v2}, Lcom/alibaba/fastjson/util/IdentityHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 284
    iget-object v0, p0, Lcom/alibaba/fastjson/parser/ParserConfig;->deserializers:Lcom/alibaba/fastjson/util/IdentityHashMap;

    const-class v1, Ljava/util/Locale;

    sget-object v2, Lcom/alibaba/fastjson/serializer/MiscCodec;->instance:Lcom/alibaba/fastjson/serializer/MiscCodec;

    invoke-virtual {v0, v1, v2}, Lcom/alibaba/fastjson/util/IdentityHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 285
    iget-object v0, p0, Lcom/alibaba/fastjson/parser/ParserConfig;->deserializers:Lcom/alibaba/fastjson/util/IdentityHashMap;

    const-class v1, Ljava/util/Currency;

    sget-object v2, Lcom/alibaba/fastjson/serializer/MiscCodec;->instance:Lcom/alibaba/fastjson/serializer/MiscCodec;

    invoke-virtual {v0, v1, v2}, Lcom/alibaba/fastjson/util/IdentityHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 286
    iget-object v0, p0, Lcom/alibaba/fastjson/parser/ParserConfig;->deserializers:Lcom/alibaba/fastjson/util/IdentityHashMap;

    const-class v1, Ljava/net/InetAddress;

    sget-object v2, Lcom/alibaba/fastjson/serializer/MiscCodec;->instance:Lcom/alibaba/fastjson/serializer/MiscCodec;

    invoke-virtual {v0, v1, v2}, Lcom/alibaba/fastjson/util/IdentityHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 287
    iget-object v0, p0, Lcom/alibaba/fastjson/parser/ParserConfig;->deserializers:Lcom/alibaba/fastjson/util/IdentityHashMap;

    const-class v1, Ljava/net/Inet4Address;

    sget-object v2, Lcom/alibaba/fastjson/serializer/MiscCodec;->instance:Lcom/alibaba/fastjson/serializer/MiscCodec;

    invoke-virtual {v0, v1, v2}, Lcom/alibaba/fastjson/util/IdentityHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 288
    iget-object v0, p0, Lcom/alibaba/fastjson/parser/ParserConfig;->deserializers:Lcom/alibaba/fastjson/util/IdentityHashMap;

    const-class v1, Ljava/net/Inet6Address;

    sget-object v2, Lcom/alibaba/fastjson/serializer/MiscCodec;->instance:Lcom/alibaba/fastjson/serializer/MiscCodec;

    invoke-virtual {v0, v1, v2}, Lcom/alibaba/fastjson/util/IdentityHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 289
    iget-object v0, p0, Lcom/alibaba/fastjson/parser/ParserConfig;->deserializers:Lcom/alibaba/fastjson/util/IdentityHashMap;

    const-class v1, Ljava/net/InetSocketAddress;

    sget-object v2, Lcom/alibaba/fastjson/serializer/MiscCodec;->instance:Lcom/alibaba/fastjson/serializer/MiscCodec;

    invoke-virtual {v0, v1, v2}, Lcom/alibaba/fastjson/util/IdentityHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 290
    iget-object v0, p0, Lcom/alibaba/fastjson/parser/ParserConfig;->deserializers:Lcom/alibaba/fastjson/util/IdentityHashMap;

    const-class v1, Ljava/io/File;

    sget-object v2, Lcom/alibaba/fastjson/serializer/MiscCodec;->instance:Lcom/alibaba/fastjson/serializer/MiscCodec;

    invoke-virtual {v0, v1, v2}, Lcom/alibaba/fastjson/util/IdentityHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 291
    iget-object v0, p0, Lcom/alibaba/fastjson/parser/ParserConfig;->deserializers:Lcom/alibaba/fastjson/util/IdentityHashMap;

    const-class v1, Ljava/net/URI;

    sget-object v2, Lcom/alibaba/fastjson/serializer/MiscCodec;->instance:Lcom/alibaba/fastjson/serializer/MiscCodec;

    invoke-virtual {v0, v1, v2}, Lcom/alibaba/fastjson/util/IdentityHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 292
    iget-object v0, p0, Lcom/alibaba/fastjson/parser/ParserConfig;->deserializers:Lcom/alibaba/fastjson/util/IdentityHashMap;

    const-class v1, Ljava/net/URL;

    sget-object v2, Lcom/alibaba/fastjson/serializer/MiscCodec;->instance:Lcom/alibaba/fastjson/serializer/MiscCodec;

    invoke-virtual {v0, v1, v2}, Lcom/alibaba/fastjson/util/IdentityHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 293
    iget-object v0, p0, Lcom/alibaba/fastjson/parser/ParserConfig;->deserializers:Lcom/alibaba/fastjson/util/IdentityHashMap;

    const-class v1, Ljava/util/regex/Pattern;

    sget-object v2, Lcom/alibaba/fastjson/serializer/MiscCodec;->instance:Lcom/alibaba/fastjson/serializer/MiscCodec;

    invoke-virtual {v0, v1, v2}, Lcom/alibaba/fastjson/util/IdentityHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 294
    iget-object v0, p0, Lcom/alibaba/fastjson/parser/ParserConfig;->deserializers:Lcom/alibaba/fastjson/util/IdentityHashMap;

    const-class v1, Ljava/nio/charset/Charset;

    sget-object v2, Lcom/alibaba/fastjson/serializer/MiscCodec;->instance:Lcom/alibaba/fastjson/serializer/MiscCodec;

    invoke-virtual {v0, v1, v2}, Lcom/alibaba/fastjson/util/IdentityHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 295
    iget-object v0, p0, Lcom/alibaba/fastjson/parser/ParserConfig;->deserializers:Lcom/alibaba/fastjson/util/IdentityHashMap;

    const-class v1, Lcom/alibaba/fastjson/JSONPath;

    sget-object v2, Lcom/alibaba/fastjson/serializer/MiscCodec;->instance:Lcom/alibaba/fastjson/serializer/MiscCodec;

    invoke-virtual {v0, v1, v2}, Lcom/alibaba/fastjson/util/IdentityHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 296
    iget-object v0, p0, Lcom/alibaba/fastjson/parser/ParserConfig;->deserializers:Lcom/alibaba/fastjson/util/IdentityHashMap;

    const-class v1, Ljava/lang/Number;

    sget-object v2, Lcom/alibaba/fastjson/parser/deserializer/NumberDeserializer;->instance:Lcom/alibaba/fastjson/parser/deserializer/NumberDeserializer;

    invoke-virtual {v0, v1, v2}, Lcom/alibaba/fastjson/util/IdentityHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 297
    iget-object v0, p0, Lcom/alibaba/fastjson/parser/ParserConfig;->deserializers:Lcom/alibaba/fastjson/util/IdentityHashMap;

    const-class v1, Ljava/util/concurrent/atomic/AtomicIntegerArray;

    sget-object v2, Lcom/alibaba/fastjson/serializer/AtomicCodec;->instance:Lcom/alibaba/fastjson/serializer/AtomicCodec;

    invoke-virtual {v0, v1, v2}, Lcom/alibaba/fastjson/util/IdentityHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 298
    iget-object v0, p0, Lcom/alibaba/fastjson/parser/ParserConfig;->deserializers:Lcom/alibaba/fastjson/util/IdentityHashMap;

    const-class v1, Ljava/util/concurrent/atomic/AtomicLongArray;

    sget-object v2, Lcom/alibaba/fastjson/serializer/AtomicCodec;->instance:Lcom/alibaba/fastjson/serializer/AtomicCodec;

    invoke-virtual {v0, v1, v2}, Lcom/alibaba/fastjson/util/IdentityHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 299
    iget-object v0, p0, Lcom/alibaba/fastjson/parser/ParserConfig;->deserializers:Lcom/alibaba/fastjson/util/IdentityHashMap;

    const-class v1, Ljava/lang/StackTraceElement;

    sget-object v2, Lcom/alibaba/fastjson/parser/deserializer/StackTraceElementDeserializer;->instance:Lcom/alibaba/fastjson/parser/deserializer/StackTraceElementDeserializer;

    invoke-virtual {v0, v1, v2}, Lcom/alibaba/fastjson/util/IdentityHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 301
    iget-object v0, p0, Lcom/alibaba/fastjson/parser/ParserConfig;->deserializers:Lcom/alibaba/fastjson/util/IdentityHashMap;

    const-class v1, Ljava/io/Serializable;

    sget-object v2, Lcom/alibaba/fastjson/parser/deserializer/JavaObjectDeserializer;->instance:Lcom/alibaba/fastjson/parser/deserializer/JavaObjectDeserializer;

    invoke-virtual {v0, v1, v2}, Lcom/alibaba/fastjson/util/IdentityHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 302
    iget-object v0, p0, Lcom/alibaba/fastjson/parser/ParserConfig;->deserializers:Lcom/alibaba/fastjson/util/IdentityHashMap;

    const-class v1, Ljava/lang/Cloneable;

    sget-object v2, Lcom/alibaba/fastjson/parser/deserializer/JavaObjectDeserializer;->instance:Lcom/alibaba/fastjson/parser/deserializer/JavaObjectDeserializer;

    invoke-virtual {v0, v1, v2}, Lcom/alibaba/fastjson/util/IdentityHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 303
    iget-object v0, p0, Lcom/alibaba/fastjson/parser/ParserConfig;->deserializers:Lcom/alibaba/fastjson/util/IdentityHashMap;

    const-class v1, Ljava/lang/Comparable;

    sget-object v2, Lcom/alibaba/fastjson/parser/deserializer/JavaObjectDeserializer;->instance:Lcom/alibaba/fastjson/parser/deserializer/JavaObjectDeserializer;

    invoke-virtual {v0, v1, v2}, Lcom/alibaba/fastjson/util/IdentityHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 304
    iget-object v0, p0, Lcom/alibaba/fastjson/parser/ParserConfig;->deserializers:Lcom/alibaba/fastjson/util/IdentityHashMap;

    const-class v1, Ljava/io/Closeable;

    sget-object v2, Lcom/alibaba/fastjson/parser/deserializer/JavaObjectDeserializer;->instance:Lcom/alibaba/fastjson/parser/deserializer/JavaObjectDeserializer;

    invoke-virtual {v0, v1, v2}, Lcom/alibaba/fastjson/util/IdentityHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 306
    iget-object v0, p0, Lcom/alibaba/fastjson/parser/ParserConfig;->deserializers:Lcom/alibaba/fastjson/util/IdentityHashMap;

    const-class v1, Lcom/alibaba/fastjson/JSONPObject;

    new-instance v2, Lcom/alibaba/fastjson/parser/deserializer/JSONPDeserializer;

    invoke-direct {v2}, Lcom/alibaba/fastjson/parser/deserializer/JSONPDeserializer;-><init>()V

    invoke-virtual {v0, v1, v2}, Lcom/alibaba/fastjson/util/IdentityHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 307
    return-void
.end method

.method public static isPrimitive2(Ljava/lang/Class;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;)Z"
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 777
    invoke-virtual {p0}, Ljava/lang/Class;->isPrimitive()Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const-class v1, Ljava/lang/Boolean;

    if-eq p0, v1, :cond_0

    const-class v1, Ljava/lang/Character;

    if-eq p0, v1, :cond_0

    const-class v1, Ljava/lang/Byte;

    if-eq p0, v1, :cond_0

    const-class v1, Ljava/lang/Short;

    if-eq p0, v1, :cond_0

    const-class v1, Ljava/lang/Integer;

    if-eq p0, v1, :cond_0

    const-class v1, Ljava/lang/Long;

    if-eq p0, v1, :cond_0

    const-class v1, Ljava/lang/Float;

    if-eq p0, v1, :cond_0

    const-class v1, Ljava/lang/Double;

    if-eq p0, v1, :cond_0

    const-class v1, Ljava/math/BigInteger;

    if-eq p0, v1, :cond_0

    const-class v1, Ljava/math/BigDecimal;

    if-eq p0, v1, :cond_0

    const-class v1, Ljava/lang/String;

    if-eq p0, v1, :cond_0

    const-class v1, Ljava/util/Date;

    if-eq p0, v1, :cond_0

    const-class v1, Ljava/sql/Date;

    if-eq p0, v1, :cond_0

    const-class v1, Ljava/sql/Time;

    if-eq p0, v1, :cond_0

    const-class v1, Ljava/sql/Timestamp;

    if-eq p0, v1, :cond_0

    .line 793
    invoke-virtual {p0}, Ljava/lang/Class;->isEnum()Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0
.end method

.method public static parserAllFieldToCache(Ljava/lang/Class;Ljava/util/Map;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/reflect/Field;",
            ">;)V"
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 804
    invoke-virtual {p0}, Ljava/lang/Class;->getDeclaredFields()[Ljava/lang/reflect/Field;

    move-result-object v1

    .line 805
    array-length v2, v1

    :goto_0
    if-lt v0, v2, :cond_1

    .line 811
    invoke-virtual {p0}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v0

    if-nez v0, :cond_3

    .line 814
    :cond_0
    :goto_1
    return-void

    .line 805
    :cond_1
    aget-object v3, v1, v0

    .line 806
    invoke-virtual {v3}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v4

    .line 807
    invoke-interface {p1, v4}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 805
    :goto_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 808
    :cond_2
    invoke-interface {p1, v4, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    .line 811
    :cond_3
    invoke-virtual {p0}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v0

    const-class v1, Ljava/lang/Object;

    if-eq v0, v1, :cond_0

    .line 812
    invoke-virtual {p0}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/alibaba/fastjson/parser/ParserConfig;->parserAllFieldToCache(Ljava/lang/Class;Ljava/util/Map;)V

    goto :goto_1
.end method

.method private static splitItemsFormProperty(Ljava/lang/String;)[Ljava/lang/String;
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 310
    if-nez p0, :cond_1

    .line 313
    :cond_0
    return-object v1

    .line 310
    :cond_1
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_0

    const-string/jumbo v0, ","

    .line 311
    invoke-virtual {p0, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public addAccept(Ljava/lang/String;)V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 880
    if-nez p1, :cond_1

    .line 881
    :cond_0
    return-void

    .line 880
    :cond_1
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_0

    .line 884
    invoke-static {p1}, Lcom/alibaba/fastjson/util/TypeUtils;->fnv1a_64(Ljava/lang/String;)J

    move-result-wide v0

    .line 885
    iget-object v2, p0, Lcom/alibaba/fastjson/parser/ParserConfig;->acceptHashCodes:[J

    invoke-static {v2, v0, v1}, Ljava/util/Arrays;->binarySearch([JJ)I

    move-result v2

    if-gez v2, :cond_2

    .line 889
    iget-object v2, p0, Lcom/alibaba/fastjson/parser/ParserConfig;->acceptHashCodes:[J

    array-length v2, v2

    add-int/lit8 v2, v2, 0x1

    new-array v2, v2, [J

    .line 890
    array-length v3, v2

    add-int/lit8 v3, v3, -0x1

    aput-wide v0, v2, v3

    .line 891
    iget-object v0, p0, Lcom/alibaba/fastjson/parser/ParserConfig;->acceptHashCodes:[J

    iget-object v1, p0, Lcom/alibaba/fastjson/parser/ParserConfig;->acceptHashCodes:[J

    array-length v1, v1

    invoke-static {v0, v4, v2, v4, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 892
    invoke-static {v2}, Ljava/util/Arrays;->sort([J)V

    .line 893
    iput-object v2, p0, Lcom/alibaba/fastjson/parser/ParserConfig;->acceptHashCodes:[J

    .line 894
    return-void

    .line 886
    :cond_2
    return-void
.end method

.method public addDeny(Ljava/lang/String;)V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 863
    if-nez p1, :cond_1

    .line 864
    :cond_0
    return-void

    .line 863
    :cond_1
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_0

    .line 867
    invoke-static {p1}, Lcom/alibaba/fastjson/util/TypeUtils;->fnv1a_64(Ljava/lang/String;)J

    move-result-wide v0

    .line 868
    iget-object v2, p0, Lcom/alibaba/fastjson/parser/ParserConfig;->denyHashCodes:[J

    invoke-static {v2, v0, v1}, Ljava/util/Arrays;->binarySearch([JJ)I

    move-result v2

    if-gez v2, :cond_2

    .line 872
    iget-object v2, p0, Lcom/alibaba/fastjson/parser/ParserConfig;->denyHashCodes:[J

    array-length v2, v2

    add-int/lit8 v2, v2, 0x1

    new-array v2, v2, [J

    .line 873
    array-length v3, v2

    add-int/lit8 v3, v3, -0x1

    aput-wide v0, v2, v3

    .line 874
    iget-object v0, p0, Lcom/alibaba/fastjson/parser/ParserConfig;->denyHashCodes:[J

    iget-object v1, p0, Lcom/alibaba/fastjson/parser/ParserConfig;->denyHashCodes:[J

    array-length v1, v1

    invoke-static {v0, v4, v2, v4, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 875
    invoke-static {v2}, Ljava/util/Arrays;->sort([J)V

    .line 876
    iput-object v2, p0, Lcom/alibaba/fastjson/parser/ParserConfig;->denyHashCodes:[J

    .line 877
    return-void

    .line 869
    :cond_2
    return-void
.end method

.method public checkAutoType(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/Class",
            "<*>;)",
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation

    .prologue
    .line 897
    sget v0, Lcom/alibaba/fastjson/JSON;->DEFAULT_PARSER_FEATURE:I

    invoke-virtual {p0, p1, p2, v0}, Lcom/alibaba/fastjson/parser/ParserConfig;->checkAutoType(Ljava/lang/String;Ljava/lang/Class;I)Ljava/lang/Class;

    move-result-object v0

    return-object v0
.end method

.method public checkAutoType(Ljava/lang/String;Ljava/lang/Class;I)Ljava/lang/Class;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/Class",
            "<*>;I)",
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation

    .prologue
    .line 901
    if-eqz p1, :cond_1

    .line 905
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v1, 0x80

    if-lt v0, v1, :cond_2

    .line 906
    :cond_0
    new-instance v0, Lcom/alibaba/fastjson/JSONException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "autoType is not support. "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    const/4 v0, 0x0

    .line 902
    return-object v0

    .line 905
    :cond_2
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x3

    if-lt v0, v1, :cond_0

    .line 909
    const/16 v0, 0x24

    const/16 v1, 0x2e

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v6

    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 915
    invoke-virtual {v6, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    int-to-long v2, v0

    const-wide v4, -0x340d631b7bdddcdbL    # -7.302176725335867E57

    xor-long/2addr v2, v4

    const-wide v4, 0x100000001b3L

    mul-long/2addr v2, v4

    const-wide v4, -0x509be9b379fdb0e6L    # -2.1176223865607047E-80

    .line 916
    cmp-long v0, v2, v4

    if-nez v0, :cond_3

    .line 917
    new-instance v0, Lcom/alibaba/fastjson/JSONException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "autoType is not support. "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 920
    :cond_3
    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {v6, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    int-to-long v4, v0

    xor-long/2addr v2, v4

    const-wide v4, 0x100000001b3L

    mul-long/2addr v2, v4

    const-wide v4, 0x9198507b5af98f0L

    cmp-long v0, v2, v4

    if-nez v0, :cond_4

    .line 921
    new-instance v0, Lcom/alibaba/fastjson/JSONException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "autoType is not support. "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_4
    const/4 v0, 0x0

    .line 924
    invoke-virtual {v6, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    int-to-long v2, v0

    const-wide v4, -0x340d631b7bdddcdbL    # -7.302176725335867E57

    xor-long/2addr v2, v4

    const-wide v4, 0x100000001b3L

    mul-long/2addr v2, v4

    const/4 v0, 0x1

    .line 926
    invoke-virtual {v6, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    int-to-long v4, v0

    xor-long/2addr v2, v4

    const-wide v4, 0x100000001b3L

    mul-long/2addr v2, v4

    const/4 v0, 0x2

    .line 928
    invoke-virtual {v6, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    int-to-long v4, v0

    xor-long/2addr v2, v4

    const-wide v4, 0x100000001b3L

    mul-long/2addr v4, v2

    .line 931
    iget-boolean v0, p0, Lcom/alibaba/fastjson/parser/ParserConfig;->autoTypeSupport:Z

    if-eqz v0, :cond_9

    :cond_5
    const/4 v0, 0x3

    move-wide v2, v4

    .line 933
    :goto_0
    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v7

    if-lt v0, v7, :cond_a

    .line 948
    :goto_1
    if-eqz v1, :cond_f

    .line 952
    :goto_2
    if-eqz v1, :cond_10

    .line 956
    :goto_3
    if-nez v1, :cond_11

    .line 966
    iget-boolean v0, p0, Lcom/alibaba/fastjson/parser/ParserConfig;->autoTypeSupport:Z

    if-eqz v0, :cond_14

    .line 991
    :cond_6
    if-eqz v1, :cond_1a

    .line 995
    :goto_4
    if-nez v1, :cond_1b

    .line 1020
    :cond_7
    sget-object v0, Lcom/alibaba/fastjson/parser/Feature;->SupportAutoType:Lcom/alibaba/fastjson/parser/Feature;

    iget v0, v0, Lcom/alibaba/fastjson/parser/Feature;->mask:I

    .line 1021
    iget-boolean v2, p0, Lcom/alibaba/fastjson/parser/ParserConfig;->autoTypeSupport:Z

    if-eqz v2, :cond_21

    :cond_8
    const/4 v0, 0x1

    .line 1025
    :goto_5
    if-eqz v0, :cond_22

    .line 1029
    return-object v1

    .line 931
    :cond_9
    if-nez p2, :cond_5

    goto :goto_1

    .line 934
    :cond_a
    invoke-virtual {v6, v0}, Ljava/lang/String;->charAt(I)C

    move-result v7

    int-to-long v8, v7

    xor-long/2addr v2, v8

    const-wide v8, 0x100000001b3L

    .line 935
    mul-long/2addr v2, v8

    .line 936
    iget-object v7, p0, Lcom/alibaba/fastjson/parser/ParserConfig;->acceptHashCodes:[J

    invoke-static {v7, v2, v3}, Ljava/util/Arrays;->binarySearch([JJ)I

    move-result v7

    if-gez v7, :cond_d

    .line 942
    :cond_b
    iget-object v7, p0, Lcom/alibaba/fastjson/parser/ParserConfig;->denyHashCodes:[J

    invoke-static {v7, v2, v3}, Ljava/util/Arrays;->binarySearch([JJ)I

    move-result v7

    if-gez v7, :cond_e

    .line 933
    :cond_c
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 937
    :cond_d
    iget-object v1, p0, Lcom/alibaba/fastjson/parser/ParserConfig;->defaultClassLoader:Ljava/lang/ClassLoader;

    const/4 v7, 0x0

    invoke-static {p1, v1, v7}, Lcom/alibaba/fastjson/util/TypeUtils;->loadClass(Ljava/lang/String;Ljava/lang/ClassLoader;Z)Ljava/lang/Class;

    move-result-object v1

    .line 938
    if-eqz v1, :cond_b

    .line 939
    return-object v1

    .line 942
    :cond_e
    invoke-static {p1}, Lcom/alibaba/fastjson/util/TypeUtils;->getClassFromMapping(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v7

    if-nez v7, :cond_c

    .line 943
    new-instance v0, Lcom/alibaba/fastjson/JSONException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "autoType is not support. "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 949
    :cond_f
    invoke-static {p1}, Lcom/alibaba/fastjson/util/TypeUtils;->getClassFromMapping(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    goto :goto_2

    .line 953
    :cond_10
    iget-object v0, p0, Lcom/alibaba/fastjson/parser/ParserConfig;->deserializers:Lcom/alibaba/fastjson/util/IdentityHashMap;

    invoke-virtual {v0, p1}, Lcom/alibaba/fastjson/util/IdentityHashMap;->findClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    goto :goto_3

    .line 957
    :cond_11
    if-nez p2, :cond_13

    .line 963
    :cond_12
    return-object v1

    :cond_13
    const-class v0, Ljava/util/HashMap;

    .line 957
    if-eq v1, v0, :cond_12

    .line 959
    invoke-virtual {p2, v1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-nez v0, :cond_12

    .line 960
    new-instance v0, Lcom/alibaba/fastjson/JSONException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "type not match. "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " -> "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_14
    const/4 v0, 0x3

    .line 968
    :goto_6
    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v2

    if-ge v0, v2, :cond_6

    .line 969
    invoke-virtual {v6, v0}, Ljava/lang/String;->charAt(I)C

    move-result v2

    .line 970
    int-to-long v2, v2

    xor-long/2addr v2, v4

    const-wide v4, 0x100000001b3L

    .line 971
    mul-long/2addr v4, v2

    .line 973
    iget-object v2, p0, Lcom/alibaba/fastjson/parser/ParserConfig;->denyHashCodes:[J

    invoke-static {v2, v4, v5}, Ljava/util/Arrays;->binarySearch([JJ)I

    move-result v2

    if-gez v2, :cond_15

    .line 977
    iget-object v2, p0, Lcom/alibaba/fastjson/parser/ParserConfig;->acceptHashCodes:[J

    invoke-static {v2, v4, v5}, Ljava/util/Arrays;->binarySearch([JJ)I

    move-result v2

    if-gez v2, :cond_16

    .line 968
    add-int/lit8 v0, v0, 0x1

    goto :goto_6

    .line 974
    :cond_15
    new-instance v0, Lcom/alibaba/fastjson/JSONException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "autoType is not support. "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 978
    :cond_16
    if-eqz v1, :cond_18

    .line 982
    :goto_7
    if-nez p2, :cond_19

    .line 986
    :cond_17
    return-object v1

    .line 979
    :cond_18
    iget-object v0, p0, Lcom/alibaba/fastjson/parser/ParserConfig;->defaultClassLoader:Ljava/lang/ClassLoader;

    const/4 v1, 0x0

    invoke-static {p1, v0, v1}, Lcom/alibaba/fastjson/util/TypeUtils;->loadClass(Ljava/lang/String;Ljava/lang/ClassLoader;Z)Ljava/lang/Class;

    move-result-object v1

    goto :goto_7

    .line 982
    :cond_19
    invoke-virtual {p2, v1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_17

    .line 983
    new-instance v0, Lcom/alibaba/fastjson/JSONException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "type not match. "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " -> "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 992
    :cond_1a
    iget-object v0, p0, Lcom/alibaba/fastjson/parser/ParserConfig;->defaultClassLoader:Ljava/lang/ClassLoader;

    const/4 v1, 0x0

    invoke-static {p1, v0, v1}, Lcom/alibaba/fastjson/util/TypeUtils;->loadClass(Ljava/lang/String;Ljava/lang/ClassLoader;Z)Ljava/lang/Class;

    move-result-object v0

    move-object v1, v0

    goto/16 :goto_4

    :cond_1b
    const-class v0, Lcom/alibaba/fastjson/annotation/JSONType;

    .line 996
    invoke-static {v1, v0}, Lcom/alibaba/fastjson/util/TypeUtils;->getAnnotation(Ljava/lang/Class;Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v0

    if-nez v0, :cond_1d

    const-class v0, Ljava/lang/ClassLoader;

    .line 1000
    invoke-virtual {v0, v1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_1e

    .line 1003
    :cond_1c
    new-instance v0, Lcom/alibaba/fastjson/JSONException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "autoType is not support. "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 997
    :cond_1d
    return-object v1

    :cond_1e
    const-class v0, Ljavax/sql/DataSource;

    .line 1001
    invoke-virtual {v0, v1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-nez v0, :cond_1c

    .line 1006
    if-nez p2, :cond_1f

    .line 1014
    iget-object v0, p0, Lcom/alibaba/fastjson/parser/ParserConfig;->propertyNamingStrategy:Lcom/alibaba/fastjson/PropertyNamingStrategy;

    invoke-static {v1, v1, v0}, Lcom/alibaba/fastjson/util/JavaBeanInfo;->build(Ljava/lang/Class;Ljava/lang/reflect/Type;Lcom/alibaba/fastjson/PropertyNamingStrategy;)Lcom/alibaba/fastjson/util/JavaBeanInfo;

    move-result-object v0

    .line 1015
    iget-object v0, v0, Lcom/alibaba/fastjson/util/JavaBeanInfo;->creatorConstructor:Ljava/lang/reflect/Constructor;

    if-eqz v0, :cond_7

    iget-boolean v0, p0, Lcom/alibaba/fastjson/parser/ParserConfig;->autoTypeSupport:Z

    if-eqz v0, :cond_7

    .line 1016
    new-instance v0, Lcom/alibaba/fastjson/JSONException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "autoType is not support. "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1007
    :cond_1f
    invoke-virtual {p2, v1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-nez v0, :cond_20

    .line 1010
    new-instance v0, Lcom/alibaba/fastjson/JSONException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "type not match. "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " -> "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1008
    :cond_20
    return-object v1

    .line 1021
    :cond_21
    and-int v2, p3, v0

    if-nez v2, :cond_8

    sget v2, Lcom/alibaba/fastjson/JSON;->DEFAULT_PARSER_FEATURE:I

    and-int/2addr v0, v2

    if-nez v0, :cond_8

    const/4 v0, 0x0

    goto/16 :goto_5

    .line 1026
    :cond_22
    new-instance v0, Lcom/alibaba/fastjson/JSONException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "autoType is not support. "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public clearDeserializers()V
    .locals 1

    .prologue
    .line 1033
    iget-object v0, p0, Lcom/alibaba/fastjson/parser/ParserConfig;->deserializers:Lcom/alibaba/fastjson/util/IdentityHashMap;

    invoke-virtual {v0}, Lcom/alibaba/fastjson/util/IdentityHashMap;->clear()V

    .line 1034
    invoke-direct {p0}, Lcom/alibaba/fastjson/parser/ParserConfig;->initDeserializers()V

    .line 1035
    return-void
.end method

.method public configFromPropety(Ljava/util/Properties;)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const-string/jumbo v0, "fastjson.parser.deny"

    .line 318
    invoke-virtual {p1, v0}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 319
    invoke-static {v0}, Lcom/alibaba/fastjson/parser/ParserConfig;->splitItemsFormProperty(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 320
    invoke-direct {p0, v0}, Lcom/alibaba/fastjson/parser/ParserConfig;->addItemsToDeny([Ljava/lang/String;)V

    const-string/jumbo v0, "fastjson.parser.autoTypeAccept"

    .line 323
    invoke-virtual {p1, v0}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 324
    invoke-static {v0}, Lcom/alibaba/fastjson/parser/ParserConfig;->splitItemsFormProperty(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 325
    invoke-direct {p0, v0}, Lcom/alibaba/fastjson/parser/ParserConfig;->addItemsToAccept([Ljava/lang/String;)V

    const-string/jumbo v0, "fastjson.parser.autoTypeSupport"

    .line 328
    invoke-virtual {p1, v0}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "true"

    .line 329
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string/jumbo v1, "false"

    .line 331
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 335
    :goto_0
    return-void

    .line 330
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/alibaba/fastjson/parser/ParserConfig;->autoTypeSupport:Z

    goto :goto_0

    .line 332
    :cond_1
    iput-boolean v2, p0, Lcom/alibaba/fastjson/parser/ParserConfig;->autoTypeSupport:Z

    goto :goto_0
.end method

.method public createFieldDeserializer(Lcom/alibaba/fastjson/parser/ParserConfig;Lcom/alibaba/fastjson/util/JavaBeanInfo;Lcom/alibaba/fastjson/util/FieldInfo;)Lcom/alibaba/fastjson/parser/deserializer/FieldDeserializer;
    .locals 5

    .prologue
    const/4 v0, 0x0

    .line 739
    iget-object v2, p2, Lcom/alibaba/fastjson/util/JavaBeanInfo;->clazz:Ljava/lang/Class;

    .line 740
    iget-object v3, p3, Lcom/alibaba/fastjson/util/FieldInfo;->fieldClass:Ljava/lang/Class;

    .line 743
    invoke-virtual {p3}, Lcom/alibaba/fastjson/util/FieldInfo;->getAnnotation()Lcom/alibaba/fastjson/annotation/JSONField;

    move-result-object v1

    .line 744
    if-nez v1, :cond_1

    .line 751
    :cond_0
    :goto_0
    if-eqz v0, :cond_2

    .line 755
    :goto_1
    new-instance v0, Lcom/alibaba/fastjson/parser/deserializer/DefaultFieldDeserializer;

    invoke-direct {v0, p1, v2, p3}, Lcom/alibaba/fastjson/parser/deserializer/DefaultFieldDeserializer;-><init>(Lcom/alibaba/fastjson/parser/ParserConfig;Ljava/lang/Class;Lcom/alibaba/fastjson/util/FieldInfo;)V

    return-object v0

    .line 745
    :cond_1
    invoke-interface {v1}, Lcom/alibaba/fastjson/annotation/JSONField;->deserializeUsing()Ljava/lang/Class;

    move-result-object v1

    const-class v4, Ljava/lang/Void;

    .line 746
    if-eq v1, v4, :cond_0

    move-object v0, v1

    goto :goto_0

    :cond_2
    const-class v0, Ljava/util/List;

    .line 751
    if-ne v3, v0, :cond_4

    .line 752
    :cond_3
    new-instance v0, Lcom/alibaba/fastjson/parser/deserializer/ArrayListTypeFieldDeserializer;

    invoke-direct {v0, p1, v2, p3}, Lcom/alibaba/fastjson/parser/deserializer/ArrayListTypeFieldDeserializer;-><init>(Lcom/alibaba/fastjson/parser/ParserConfig;Ljava/lang/Class;Lcom/alibaba/fastjson/util/FieldInfo;)V

    return-object v0

    :cond_4
    const-class v0, Ljava/util/ArrayList;

    .line 751
    if-eq v3, v0, :cond_3

    goto :goto_1
.end method

.method public createJavaBeanDeserializer(Ljava/lang/Class;Ljava/lang/reflect/Type;)Lcom/alibaba/fastjson/parser/deserializer/ObjectDeserializer;
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;",
            "Ljava/lang/reflect/Type;",
            ")",
            "Lcom/alibaba/fastjson/parser/deserializer/ObjectDeserializer;"
        }
    .end annotation

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 600
    iget-boolean v2, p0, Lcom/alibaba/fastjson/parser/ParserConfig;->asmEnable:Z

    iget-boolean v1, p0, Lcom/alibaba/fastjson/parser/ParserConfig;->fieldBased:Z

    if-eqz v1, :cond_3

    move v1, v3

    :goto_0
    and-int/2addr v2, v1

    .line 601
    if-nez v2, :cond_4

    move v1, v2

    .line 640
    :goto_1
    invoke-virtual {p1}, Ljava/lang/Class;->getTypeParameters()[Ljava/lang/reflect/TypeVariable;

    move-result-object v2

    array-length v2, v2

    if-nez v2, :cond_d

    .line 644
    :goto_2
    if-nez v1, :cond_e

    .line 648
    :cond_0
    :goto_3
    if-nez v1, :cond_f

    .line 652
    :goto_4
    if-nez v1, :cond_10

    .line 711
    :cond_1
    :goto_5
    if-nez v1, :cond_23

    move v3, v1

    .line 717
    :cond_2
    :goto_6
    if-eqz v3, :cond_25

    .line 721
    iget-object v1, p0, Lcom/alibaba/fastjson/parser/ParserConfig;->propertyNamingStrategy:Lcom/alibaba/fastjson/PropertyNamingStrategy;

    invoke-static {p1, p2, v1}, Lcom/alibaba/fastjson/util/JavaBeanInfo;->build(Ljava/lang/Class;Ljava/lang/reflect/Type;Lcom/alibaba/fastjson/PropertyNamingStrategy;)Lcom/alibaba/fastjson/util/JavaBeanInfo;

    move-result-object v1

    .line 723
    :try_start_0
    iget-object v2, p0, Lcom/alibaba/fastjson/parser/ParserConfig;->asmFactory:Lcom/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory;

    invoke-virtual {v2, p0, v1}, Lcom/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory;->createJavaBeanDeserializer(Lcom/alibaba/fastjson/parser/ParserConfig;Lcom/alibaba/fastjson/util/JavaBeanInfo;)Lcom/alibaba/fastjson/parser/deserializer/ObjectDeserializer;
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lcom/alibaba/fastjson/JSONException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    move-result-object v1

    return-object v1

    :cond_3
    move v1, v4

    .line 600
    goto :goto_0

    :cond_4
    const-class v1, Lcom/alibaba/fastjson/annotation/JSONType;

    .line 602
    invoke-static {p1, v1}, Lcom/alibaba/fastjson/util/TypeUtils;->getAnnotation(Ljava/lang/Class;Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v1

    check-cast v1, Lcom/alibaba/fastjson/annotation/JSONType;

    .line 604
    if-nez v1, :cond_5

    .line 620
    :goto_7
    if-nez v2, :cond_8

    move v1, v2

    goto :goto_1

    .line 605
    :cond_5
    invoke-interface {v1}, Lcom/alibaba/fastjson/annotation/JSONType;->deserializer()Ljava/lang/Class;

    move-result-object v2

    const-class v5, Ljava/lang/Void;

    .line 606
    if-ne v2, v5, :cond_7

    .line 617
    :cond_6
    :goto_8
    invoke-interface {v1}, Lcom/alibaba/fastjson/annotation/JSONType;->asm()Z

    move-result v2

    goto :goto_7

    .line 608
    :cond_7
    :try_start_1
    invoke-virtual {v2}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v2

    .line 609
    instance-of v5, v2, Lcom/alibaba/fastjson/parser/deserializer/ObjectDeserializer;

    if-eqz v5, :cond_6

    .line 610
    move-object v0, v2

    check-cast v0, Lcom/alibaba/fastjson/parser/deserializer/ObjectDeserializer;

    move-object v1, v0
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_3

    return-object v1

    .line 621
    :cond_8
    invoke-static {p1, v1}, Lcom/alibaba/fastjson/util/JavaBeanInfo;->getBuilderClass(Ljava/lang/Class;Lcom/alibaba/fastjson/annotation/JSONType;)Ljava/lang/Class;

    move-result-object v1

    .line 622
    if-eqz v1, :cond_a

    .line 627
    :cond_9
    :goto_9
    invoke-virtual {v1}, Ljava/lang/Class;->getModifiers()I

    move-result v5

    invoke-static {v5}, Ljava/lang/reflect/Modifier;->isPublic(I)Z

    move-result v5

    if-eqz v5, :cond_b

    .line 632
    invoke-virtual {v1}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v1

    const-class v5, Ljava/lang/Object;

    .line 633
    if-ne v1, v5, :cond_c

    move v1, v2

    goto :goto_1

    :cond_a
    move-object v1, p1

    .line 623
    goto :goto_9

    :cond_b
    move v1, v3

    .line 629
    goto :goto_1

    .line 633
    :cond_c
    if-nez v1, :cond_9

    move v1, v2

    .line 634
    goto :goto_1

    :cond_d
    move v1, v3

    .line 641
    goto :goto_2

    .line 644
    :cond_e
    iget-object v2, p0, Lcom/alibaba/fastjson/parser/ParserConfig;->asmFactory:Lcom/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/alibaba/fastjson/parser/ParserConfig;->asmFactory:Lcom/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory;

    iget-object v2, v2, Lcom/alibaba/fastjson/parser/deserializer/ASMDeserializerFactory;->classLoader:Lcom/alibaba/fastjson/util/ASMClassLoader;

    invoke-virtual {v2, p1}, Lcom/alibaba/fastjson/util/ASMClassLoader;->isExternalClass(Ljava/lang/Class;)Z

    move-result v2

    if-eqz v2, :cond_0

    move v1, v3

    .line 645
    goto :goto_3

    .line 649
    :cond_f
    invoke-virtual {p1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/alibaba/fastjson/util/ASMUtils;->checkName(Ljava/lang/String;)Z

    move-result v1

    goto :goto_4

    .line 653
    :cond_10
    invoke-virtual {p1}, Ljava/lang/Class;->isInterface()Z

    move-result v2

    if-nez v2, :cond_17

    .line 656
    :goto_a
    iget-object v2, p0, Lcom/alibaba/fastjson/parser/ParserConfig;->propertyNamingStrategy:Lcom/alibaba/fastjson/PropertyNamingStrategy;

    invoke-static {p1, p2, v2}, Lcom/alibaba/fastjson/util/JavaBeanInfo;->build(Ljava/lang/Class;Ljava/lang/reflect/Type;Lcom/alibaba/fastjson/PropertyNamingStrategy;)Lcom/alibaba/fastjson/util/JavaBeanInfo;

    move-result-object v2

    .line 658
    if-nez v1, :cond_18

    .line 662
    :cond_11
    :goto_b
    iget-object v5, v2, Lcom/alibaba/fastjson/util/JavaBeanInfo;->defaultConstructor:Ljava/lang/reflect/Constructor;

    .line 663
    if-nez v1, :cond_19

    .line 667
    :cond_12
    :goto_c
    iget-object v5, v2, Lcom/alibaba/fastjson/util/JavaBeanInfo;->fields:[Lcom/alibaba/fastjson/util/FieldInfo;

    array-length v6, v5

    move v2, v3

    :goto_d
    if-ge v2, v6, :cond_1

    aget-object v7, v5, v2

    .line 668
    iget-boolean v8, v7, Lcom/alibaba/fastjson/util/FieldInfo;->getOnly:Z

    if-nez v8, :cond_1a

    .line 673
    iget-object v8, v7, Lcom/alibaba/fastjson/util/FieldInfo;->fieldClass:Ljava/lang/Class;

    .line 674
    invoke-virtual {v8}, Ljava/lang/Class;->getModifiers()I

    move-result v9

    invoke-static {v9}, Ljava/lang/reflect/Modifier;->isPublic(I)Z

    move-result v9

    if-eqz v9, :cond_1b

    .line 679
    invoke-virtual {v8}, Ljava/lang/Class;->isMemberClass()Z

    move-result v9

    if-nez v9, :cond_1c

    .line 684
    :cond_13
    invoke-virtual {v7}, Lcom/alibaba/fastjson/util/FieldInfo;->getMember()Ljava/lang/reflect/Member;

    move-result-object v9

    if-nez v9, :cond_1d

    .line 690
    :cond_14
    invoke-virtual {v7}, Lcom/alibaba/fastjson/util/FieldInfo;->getAnnotation()Lcom/alibaba/fastjson/annotation/JSONField;

    move-result-object v9

    .line 691
    if-nez v9, :cond_1e

    .line 695
    :cond_15
    iget-object v9, v7, Lcom/alibaba/fastjson/util/FieldInfo;->method:Ljava/lang/reflect/Method;

    if-nez v9, :cond_21

    .line 701
    :goto_e
    invoke-virtual {v8}, Ljava/lang/Class;->isEnum()Z

    move-result v7

    if-nez v7, :cond_22

    .line 667
    :cond_16
    add-int/lit8 v2, v2, 0x1

    goto :goto_d

    :cond_17
    move v1, v3

    .line 654
    goto :goto_a

    .line 658
    :cond_18
    iget-object v5, v2, Lcom/alibaba/fastjson/util/JavaBeanInfo;->fields:[Lcom/alibaba/fastjson/util/FieldInfo;

    array-length v5, v5

    const/16 v6, 0xc8

    if-le v5, v6, :cond_11

    move v1, v3

    .line 659
    goto :goto_b

    .line 663
    :cond_19
    if-nez v5, :cond_12

    invoke-virtual {p1}, Ljava/lang/Class;->isInterface()Z

    move-result v5

    if-nez v5, :cond_12

    move v1, v3

    .line 664
    goto :goto_c

    :cond_1a
    move v1, v3

    .line 670
    goto/16 :goto_5

    :cond_1b
    move v1, v3

    .line 676
    goto/16 :goto_5

    .line 679
    :cond_1c
    invoke-virtual {v8}, Ljava/lang/Class;->getModifiers()I

    move-result v9

    invoke-static {v9}, Ljava/lang/reflect/Modifier;->isStatic(I)Z

    move-result v9

    if-nez v9, :cond_13

    move v1, v3

    .line 681
    goto/16 :goto_5

    .line 685
    :cond_1d
    invoke-virtual {v7}, Lcom/alibaba/fastjson/util/FieldInfo;->getMember()Ljava/lang/reflect/Member;

    move-result-object v9

    invoke-interface {v9}, Ljava/lang/reflect/Member;->getName()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Lcom/alibaba/fastjson/util/ASMUtils;->checkName(Ljava/lang/String;)Z

    move-result v9

    if-nez v9, :cond_14

    move v1, v3

    .line 687
    goto/16 :goto_5

    .line 692
    :cond_1e
    invoke-interface {v9}, Lcom/alibaba/fastjson/annotation/JSONField;->name()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Lcom/alibaba/fastjson/util/ASMUtils;->checkName(Ljava/lang/String;)Z

    move-result v10

    if-nez v10, :cond_20

    :cond_1f
    :goto_f
    move v1, v3

    .line 698
    goto/16 :goto_5

    .line 693
    :cond_20
    invoke-interface {v9}, Lcom/alibaba/fastjson/annotation/JSONField;->format()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/String;->length()I

    move-result v10

    if-nez v10, :cond_1f

    .line 694
    invoke-interface {v9}, Lcom/alibaba/fastjson/annotation/JSONField;->deserializeUsing()Ljava/lang/Class;

    move-result-object v10

    const-class v11, Ljava/lang/Void;

    if-ne v10, v11, :cond_1f

    .line 695
    invoke-interface {v9}, Lcom/alibaba/fastjson/annotation/JSONField;->unwrapped()Z

    move-result v9

    if-eqz v9, :cond_15

    goto :goto_f

    :cond_21
    iget-object v7, v7, Lcom/alibaba/fastjson/util/FieldInfo;->method:Ljava/lang/reflect/Method;

    .line 696
    invoke-virtual {v7}, Ljava/lang/reflect/Method;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v7

    array-length v7, v7

    if-gt v7, v4, :cond_1f

    goto :goto_e

    .line 702
    :cond_22
    invoke-virtual {p0, v8}, Lcom/alibaba/fastjson/parser/ParserConfig;->getDeserializer(Ljava/lang/reflect/Type;)Lcom/alibaba/fastjson/parser/deserializer/ObjectDeserializer;

    move-result-object v7

    .line 703
    instance-of v7, v7, Lcom/alibaba/fastjson/parser/deserializer/EnumDeserializer;

    if-nez v7, :cond_16

    move v1, v3

    .line 705
    goto/16 :goto_5

    .line 712
    :cond_23
    invoke-virtual {p1}, Ljava/lang/Class;->isMemberClass()Z

    move-result v2

    if-nez v2, :cond_24

    :goto_10
    move v3, v1

    goto/16 :goto_6

    :cond_24
    invoke-virtual {p1}, Ljava/lang/Class;->getModifiers()I

    move-result v2

    invoke-static {v2}, Ljava/lang/reflect/Modifier;->isStatic(I)Z

    move-result v2

    if-eqz v2, :cond_2

    goto :goto_10

    .line 718
    :cond_25
    new-instance v1, Lcom/alibaba/fastjson/parser/deserializer/JavaBeanDeserializer;

    invoke-direct {v1, p0, p1, p2}, Lcom/alibaba/fastjson/parser/deserializer/JavaBeanDeserializer;-><init>(Lcom/alibaba/fastjson/parser/ParserConfig;Ljava/lang/Class;Ljava/lang/reflect/Type;)V

    return-object v1

    .line 723
    :catch_0
    move-exception v1

    .line 728
    new-instance v1, Lcom/alibaba/fastjson/parser/deserializer/JavaBeanDeserializer;

    invoke-direct {v1, p0, p1, p2}, Lcom/alibaba/fastjson/parser/deserializer/JavaBeanDeserializer;-><init>(Lcom/alibaba/fastjson/parser/ParserConfig;Ljava/lang/Class;Ljava/lang/reflect/Type;)V

    return-object v1

    :catch_1
    move-exception v2

    .line 730
    new-instance v2, Lcom/alibaba/fastjson/parser/deserializer/JavaBeanDeserializer;

    invoke-direct {v2, p0, v1}, Lcom/alibaba/fastjson/parser/deserializer/JavaBeanDeserializer;-><init>(Lcom/alibaba/fastjson/parser/ParserConfig;Lcom/alibaba/fastjson/util/JavaBeanInfo;)V

    return-object v2

    :catch_2
    move-exception v1

    .line 732
    new-instance v2, Lcom/alibaba/fastjson/JSONException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "create asm deserializer error, "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3, v1}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2

    .line 614
    :catch_3
    move-exception v2

    goto/16 :goto_8
.end method

.method public getDefaultClassLoader()Ljava/lang/ClassLoader;
    .locals 1

    .prologue
    .line 855
    iget-object v0, p0, Lcom/alibaba/fastjson/parser/ParserConfig;->defaultClassLoader:Ljava/lang/ClassLoader;

    return-object v0
.end method

.method public getDeserializer(Lcom/alibaba/fastjson/util/FieldInfo;)Lcom/alibaba/fastjson/parser/deserializer/ObjectDeserializer;
    .locals 2

    .prologue
    .line 763
    iget-object v0, p1, Lcom/alibaba/fastjson/util/FieldInfo;->fieldClass:Ljava/lang/Class;

    iget-object v1, p1, Lcom/alibaba/fastjson/util/FieldInfo;->fieldType:Ljava/lang/reflect/Type;

    invoke-virtual {p0, v0, v1}, Lcom/alibaba/fastjson/parser/ParserConfig;->getDeserializer(Ljava/lang/Class;Ljava/lang/reflect/Type;)Lcom/alibaba/fastjson/parser/deserializer/ObjectDeserializer;

    move-result-object v0

    return-object v0
.end method

.method public getDeserializer(Ljava/lang/Class;Ljava/lang/reflect/Type;)Lcom/alibaba/fastjson/parser/deserializer/ObjectDeserializer;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;",
            "Ljava/lang/reflect/Type;",
            ")",
            "Lcom/alibaba/fastjson/parser/deserializer/ObjectDeserializer;"
        }
    .end annotation

    .prologue
    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v7, 0x1

    const/4 v2, 0x0

    .line 411
    iget-object v0, p0, Lcom/alibaba/fastjson/parser/ParserConfig;->deserializers:Lcom/alibaba/fastjson/util/IdentityHashMap;

    invoke-virtual {v0, p2}, Lcom/alibaba/fastjson/util/IdentityHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/fastjson/parser/deserializer/ObjectDeserializer;

    .line 412
    if-nez v0, :cond_6

    .line 416
    if-eqz p2, :cond_7

    .line 420
    :goto_0
    iget-object v0, p0, Lcom/alibaba/fastjson/parser/ParserConfig;->deserializers:Lcom/alibaba/fastjson/util/IdentityHashMap;

    invoke-virtual {v0, p2}, Lcom/alibaba/fastjson/util/IdentityHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/fastjson/parser/deserializer/ObjectDeserializer;

    .line 421
    if-nez v0, :cond_8

    const-class v1, Lcom/alibaba/fastjson/annotation/JSONType;

    .line 426
    invoke-static {p1, v1}, Lcom/alibaba/fastjson/util/TypeUtils;->getAnnotation(Ljava/lang/Class;Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v1

    check-cast v1, Lcom/alibaba/fastjson/annotation/JSONType;

    .line 427
    if-nez v1, :cond_9

    .line 435
    :cond_0
    instance-of v1, p2, Ljava/lang/reflect/WildcardType;

    if-eqz v1, :cond_a

    .line 436
    :cond_1
    iget-object v0, p0, Lcom/alibaba/fastjson/parser/ParserConfig;->deserializers:Lcom/alibaba/fastjson/util/IdentityHashMap;

    invoke-virtual {v0, p1}, Lcom/alibaba/fastjson/util/IdentityHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/fastjson/parser/deserializer/ObjectDeserializer;

    .line 439
    :goto_1
    if-nez v0, :cond_b

    .line 443
    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    .line 444
    const/16 v3, 0x24

    const/16 v4, 0x2e

    invoke-virtual {v1, v3, v4}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v1, "java.awt."

    .line 446
    invoke-virtual {v3, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_c

    .line 472
    :cond_2
    :goto_2
    sget-boolean v1, Lcom/alibaba/fastjson/parser/ParserConfig;->jdk8Error:Z

    if-eqz v1, :cond_f

    :cond_3
    :goto_3
    const-string/jumbo v1, "java.nio.file.Path"

    .line 516
    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_13

    :goto_4
    const-class v1, Ljava/util/Map$Entry;

    .line 520
    if-eq p1, v1, :cond_14

    move-object v2, v0

    .line 524
    :goto_5
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->getContextClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    :try_start_0
    const-class v1, Lcom/alibaba/fastjson/parser/deserializer/AutowiredObjectDeserializer;

    .line 526
    invoke-static {v1, v0}, Lcom/alibaba/fastjson/util/ServiceLoader;->load(Ljava/lang/Class;Ljava/lang/ClassLoader;)Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_4
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    move-result v0

    if-nez v0, :cond_15

    .line 536
    :goto_6
    if-eqz v2, :cond_16

    .line 540
    :goto_7
    if-nez v2, :cond_17

    .line 544
    invoke-virtual {p1}, Ljava/lang/Class;->isEnum()Z

    move-result v0

    if-nez v0, :cond_18

    .line 559
    invoke-virtual {p1}, Ljava/lang/Class;->isArray()Z

    move-result v0

    if-nez v0, :cond_1a

    const-class v0, Ljava/util/Set;

    .line 561
    if-ne p1, v0, :cond_1b

    .line 563
    :cond_5
    sget-object v0, Lcom/alibaba/fastjson/serializer/CollectionCodec;->instance:Lcom/alibaba/fastjson/serializer/CollectionCodec;

    .line 576
    :goto_8
    invoke-virtual {p0, p2, v0}, Lcom/alibaba/fastjson/parser/ParserConfig;->putDeserializer(Ljava/lang/reflect/Type;Lcom/alibaba/fastjson/parser/deserializer/ObjectDeserializer;)V

    .line 578
    return-object v0

    .line 413
    :cond_6
    return-object v0

    :cond_7
    move-object p2, p1

    .line 417
    goto :goto_0

    .line 422
    :cond_8
    return-object v0

    .line 428
    :cond_9
    invoke-interface {v1}, Lcom/alibaba/fastjson/annotation/JSONType;->mappingTo()Ljava/lang/Class;

    move-result-object v1

    const-class v3, Ljava/lang/Void;

    .line 429
    if-eq v1, v3, :cond_0

    .line 430
    invoke-virtual {p0, v1, v1}, Lcom/alibaba/fastjson/parser/ParserConfig;->getDeserializer(Ljava/lang/Class;Ljava/lang/reflect/Type;)Lcom/alibaba/fastjson/parser/deserializer/ObjectDeserializer;

    move-result-object v0

    return-object v0

    .line 435
    :cond_a
    instance-of v1, p2, Ljava/lang/reflect/TypeVariable;

    if-nez v1, :cond_1

    instance-of v1, p2, Ljava/lang/reflect/ParameterizedType;

    if-nez v1, :cond_1

    goto :goto_1

    .line 440
    :cond_b
    return-object v0

    .line 447
    :cond_c
    invoke-static {p1}, Lcom/alibaba/fastjson/serializer/AwtCodec;->support(Ljava/lang/Class;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 448
    sget-boolean v1, Lcom/alibaba/fastjson/parser/ParserConfig;->awtError:Z

    if-nez v1, :cond_2

    const/4 v0, 0x4

    .line 449
    new-array v1, v0, [Ljava/lang/String;

    const-string/jumbo v0, "java.awt.Point"

    aput-object v0, v1, v2

    const-string/jumbo v0, "java.awt.Font"

    aput-object v0, v1, v7

    const-string/jumbo v0, "java.awt.Rectangle"

    aput-object v0, v1, v5

    const-string/jumbo v0, "java.awt.Color"

    aput-object v0, v1, v6

    .line 457
    :try_start_1
    array-length v4, v1
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    move v0, v2

    :goto_9
    if-lt v0, v4, :cond_d

    .line 468
    :goto_a
    sget-object v0, Lcom/alibaba/fastjson/serializer/AwtCodec;->instance:Lcom/alibaba/fastjson/serializer/AwtCodec;

    goto/16 :goto_2

    .line 457
    :cond_d
    :try_start_2
    aget-object v5, v1, v0

    .line 458
    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_e

    .line 457
    add-int/lit8 v0, v0, 0x1

    goto :goto_9

    .line 459
    :cond_e
    iget-object v0, p0, Lcom/alibaba/fastjson/parser/ParserConfig;->deserializers:Lcom/alibaba/fastjson/util/IdentityHashMap;

    invoke-static {v5}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    sget-object v4, Lcom/alibaba/fastjson/serializer/AwtCodec;->instance:Lcom/alibaba/fastjson/serializer/AwtCodec;

    invoke-virtual {v0, v1, v4}, Lcom/alibaba/fastjson/util/IdentityHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Z
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_0

    .line 460
    return-object v4

    .line 466
    :catch_0
    move-exception v0

    .line 465
    sput-boolean v7, Lcom/alibaba/fastjson/parser/ParserConfig;->awtError:Z

    goto :goto_a

    :cond_f
    :try_start_3
    const-string/jumbo v1, "java.time."

    .line 474
    invoke-virtual {v3, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_10

    const-string/jumbo v1, "java.util.Optional"

    .line 496
    invoke-virtual {v3, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    const/4 v1, 0x4

    .line 497
    new-array v4, v1, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string/jumbo v5, "java.util.Optional"

    aput-object v5, v4, v1

    const/4 v1, 0x1

    const-string/jumbo v5, "java.util.OptionalDouble"

    aput-object v5, v4, v1

    const/4 v1, 0x2

    const-string/jumbo v5, "java.util.OptionalInt"

    aput-object v5, v4, v1

    const/4 v1, 0x3

    const-string/jumbo v5, "java.util.OptionalLong"

    aput-object v5, v4, v1

    .line 503
    array-length v5, v4

    move v1, v2

    :goto_b
    if-ge v1, v5, :cond_3

    aget-object v2, v4, v1

    .line 504
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_12

    .line 503
    add-int/lit8 v1, v1, 0x1

    goto :goto_b

    :cond_10
    const/16 v1, 0xc

    .line 475
    new-array v1, v1, [Ljava/lang/String;

    const/4 v4, 0x0

    const-string/jumbo v5, "java.time.LocalDateTime"

    aput-object v5, v1, v4

    const/4 v4, 0x1

    const-string/jumbo v5, "java.time.LocalDate"

    aput-object v5, v1, v4

    const/4 v4, 0x2

    const-string/jumbo v5, "java.time.LocalTime"

    aput-object v5, v1, v4

    const/4 v4, 0x3

    const-string/jumbo v5, "java.time.ZonedDateTime"

    aput-object v5, v1, v4

    const/4 v4, 0x4

    const-string/jumbo v5, "java.time.OffsetDateTime"

    aput-object v5, v1, v4

    const/4 v4, 0x5

    const-string/jumbo v5, "java.time.OffsetTime"

    aput-object v5, v1, v4

    const/4 v4, 0x6

    const-string/jumbo v5, "java.time.ZoneOffset"

    aput-object v5, v1, v4

    const/4 v4, 0x7

    const-string/jumbo v5, "java.time.ZoneRegion"

    aput-object v5, v1, v4

    const/16 v4, 0x8

    const-string/jumbo v5, "java.time.ZoneId"

    aput-object v5, v1, v4

    const/16 v4, 0x9

    const-string/jumbo v5, "java.time.Period"

    aput-object v5, v1, v4

    const/16 v4, 0xa

    const-string/jumbo v5, "java.time.Duration"

    aput-object v5, v1, v4

    const/16 v4, 0xb

    const-string/jumbo v5, "java.time.Instant"

    aput-object v5, v1, v4

    .line 490
    array-length v4, v1

    :goto_c
    if-ge v2, v4, :cond_3

    aget-object v5, v1, v2

    .line 491
    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_11

    .line 490
    add-int/lit8 v2, v2, 0x1

    goto :goto_c

    .line 492
    :cond_11
    iget-object v1, p0, Lcom/alibaba/fastjson/parser/ParserConfig;->deserializers:Lcom/alibaba/fastjson/util/IdentityHashMap;

    invoke-static {v5}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    sget-object v0, Lcom/alibaba/fastjson/parser/deserializer/Jdk8DateCodec;->instance:Lcom/alibaba/fastjson/parser/deserializer/Jdk8DateCodec;

    invoke-virtual {v1, v2, v0}, Lcom/alibaba/fastjson/util/IdentityHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 493
    return-object v0

    .line 505
    :cond_12
    iget-object v1, p0, Lcom/alibaba/fastjson/parser/ParserConfig;->deserializers:Lcom/alibaba/fastjson/util/IdentityHashMap;

    invoke-static {v2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    sget-object v0, Lcom/alibaba/fastjson/parser/deserializer/OptionalCodec;->instance:Lcom/alibaba/fastjson/parser/deserializer/OptionalCodec;

    invoke-virtual {v1, v2, v0}, Lcom/alibaba/fastjson/util/IdentityHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Z
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_1

    .line 506
    return-object v0

    .line 513
    :catch_1
    move-exception v1

    .line 512
    sput-boolean v7, Lcom/alibaba/fastjson/parser/ParserConfig;->jdk8Error:Z

    goto/16 :goto_3

    .line 517
    :cond_13
    iget-object v1, p0, Lcom/alibaba/fastjson/parser/ParserConfig;->deserializers:Lcom/alibaba/fastjson/util/IdentityHashMap;

    sget-object v0, Lcom/alibaba/fastjson/serializer/MiscCodec;->instance:Lcom/alibaba/fastjson/serializer/MiscCodec;

    invoke-virtual {v1, p1, v0}, Lcom/alibaba/fastjson/util/IdentityHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Z

    goto/16 :goto_4

    .line 521
    :cond_14
    iget-object v1, p0, Lcom/alibaba/fastjson/parser/ParserConfig;->deserializers:Lcom/alibaba/fastjson/util/IdentityHashMap;

    sget-object v0, Lcom/alibaba/fastjson/serializer/MiscCodec;->instance:Lcom/alibaba/fastjson/serializer/MiscCodec;

    invoke-virtual {v1, p1, v0}, Lcom/alibaba/fastjson/util/IdentityHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-object v2, v0

    goto/16 :goto_5

    .line 526
    :cond_15
    :try_start_4
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/fastjson/parser/deserializer/AutowiredObjectDeserializer;

    .line 528
    invoke-interface {v0}, Lcom/alibaba/fastjson/parser/deserializer/AutowiredObjectDeserializer;->getAutowiredFor()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_d
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/reflect/Type;

    .line 529
    iget-object v5, p0, Lcom/alibaba/fastjson/parser/ParserConfig;->deserializers:Lcom/alibaba/fastjson/util/IdentityHashMap;

    invoke-virtual {v5, v1, v0}, Lcom/alibaba/fastjson/util/IdentityHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Z
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2

    goto :goto_d

    .line 534
    :catch_2
    move-exception v0

    goto/16 :goto_6

    .line 537
    :cond_16
    iget-object v0, p0, Lcom/alibaba/fastjson/parser/ParserConfig;->deserializers:Lcom/alibaba/fastjson/util/IdentityHashMap;

    invoke-virtual {v0, p2}, Lcom/alibaba/fastjson/util/IdentityHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/fastjson/parser/deserializer/ObjectDeserializer;

    move-object v2, v0

    goto/16 :goto_7

    .line 541
    :cond_17
    return-object v2

    :cond_18
    const-class v0, Lcom/alibaba/fastjson/annotation/JSONType;

    .line 546
    invoke-virtual {p1, v0}, Ljava/lang/Class;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v0

    check-cast v0, Lcom/alibaba/fastjson/annotation/JSONType;

    .line 547
    if-nez v0, :cond_19

    .line 558
    :goto_e
    new-instance v0, Lcom/alibaba/fastjson/parser/deserializer/EnumDeserializer;

    invoke-direct {v0, p1}, Lcom/alibaba/fastjson/parser/deserializer/EnumDeserializer;-><init>(Ljava/lang/Class;)V

    goto/16 :goto_8

    .line 548
    :cond_19
    invoke-interface {v0}, Lcom/alibaba/fastjson/annotation/JSONType;->deserializer()Ljava/lang/Class;

    move-result-object v0

    .line 550
    :try_start_5
    invoke-virtual {v0}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/fastjson/parser/deserializer/ObjectDeserializer;

    .line 551
    iget-object v1, p0, Lcom/alibaba/fastjson/parser/ParserConfig;->deserializers:Lcom/alibaba/fastjson/util/IdentityHashMap;

    invoke-virtual {v1, p1, v0}, Lcom/alibaba/fastjson/util/IdentityHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Z
    :try_end_5
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_5} :catch_3

    .line 552
    return-object v0

    .line 560
    :cond_1a
    sget-object v0, Lcom/alibaba/fastjson/serializer/ObjectArrayCodec;->instance:Lcom/alibaba/fastjson/serializer/ObjectArrayCodec;

    goto/16 :goto_8

    :cond_1b
    const-class v0, Ljava/util/HashSet;

    .line 561
    if-eq p1, v0, :cond_5

    const-class v0, Ljava/util/Collection;

    if-eq p1, v0, :cond_5

    const-class v0, Ljava/util/List;

    if-eq p1, v0, :cond_5

    const-class v0, Ljava/util/ArrayList;

    if-eq p1, v0, :cond_5

    const-class v0, Ljava/util/Collection;

    .line 564
    invoke-virtual {v0, p1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-nez v0, :cond_1c

    const-class v0, Ljava/util/Map;

    .line 566
    invoke-virtual {v0, p1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-nez v0, :cond_1d

    const-class v0, Ljava/lang/Throwable;

    .line 568
    invoke-virtual {v0, p1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-nez v0, :cond_1e

    const-class v0, Lcom/alibaba/fastjson/parser/deserializer/PropertyProcessable;

    .line 570
    invoke-virtual {v0, p1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-nez v0, :cond_1f

    .line 573
    invoke-virtual {p0, p1, p2}, Lcom/alibaba/fastjson/parser/ParserConfig;->createJavaBeanDeserializer(Ljava/lang/Class;Ljava/lang/reflect/Type;)Lcom/alibaba/fastjson/parser/deserializer/ObjectDeserializer;

    move-result-object v0

    goto/16 :goto_8

    .line 565
    :cond_1c
    sget-object v0, Lcom/alibaba/fastjson/serializer/CollectionCodec;->instance:Lcom/alibaba/fastjson/serializer/CollectionCodec;

    goto/16 :goto_8

    .line 567
    :cond_1d
    sget-object v0, Lcom/alibaba/fastjson/parser/deserializer/MapDeserializer;->instance:Lcom/alibaba/fastjson/parser/deserializer/MapDeserializer;

    goto/16 :goto_8

    .line 569
    :cond_1e
    new-instance v0, Lcom/alibaba/fastjson/parser/deserializer/ThrowableDeserializer;

    invoke-direct {v0, p0, p1}, Lcom/alibaba/fastjson/parser/deserializer/ThrowableDeserializer;-><init>(Lcom/alibaba/fastjson/parser/ParserConfig;Ljava/lang/Class;)V

    goto/16 :goto_8

    .line 571
    :cond_1f
    new-instance v0, Lcom/alibaba/fastjson/parser/deserializer/PropertyProcessableDeserializer;

    invoke-direct {v0, p1}, Lcom/alibaba/fastjson/parser/deserializer/PropertyProcessableDeserializer;-><init>(Ljava/lang/Class;)V

    goto/16 :goto_8

    .line 552
    :catch_3
    move-exception v0

    goto :goto_e
.end method

.method public getDeserializer(Ljava/lang/reflect/Type;)Lcom/alibaba/fastjson/parser/deserializer/ObjectDeserializer;
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 380
    iget-object v0, p0, Lcom/alibaba/fastjson/parser/ParserConfig;->deserializers:Lcom/alibaba/fastjson/util/IdentityHashMap;

    invoke-virtual {v0, p1}, Lcom/alibaba/fastjson/util/IdentityHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/fastjson/parser/deserializer/ObjectDeserializer;

    .line 381
    if-nez v0, :cond_1

    .line 385
    instance-of v0, p1, Ljava/lang/Class;

    if-nez v0, :cond_2

    .line 389
    instance-of v0, p1, Ljava/lang/reflect/ParameterizedType;

    if-nez v0, :cond_3

    .line 398
    instance-of v0, p1, Ljava/lang/reflect/WildcardType;

    if-nez v0, :cond_5

    .line 407
    :cond_0
    sget-object v0, Lcom/alibaba/fastjson/parser/deserializer/JavaObjectDeserializer;->instance:Lcom/alibaba/fastjson/parser/deserializer/JavaObjectDeserializer;

    return-object v0

    .line 382
    :cond_1
    return-object v0

    :cond_2
    move-object v0, p1

    .line 386
    check-cast v0, Ljava/lang/Class;

    invoke-virtual {p0, v0, p1}, Lcom/alibaba/fastjson/parser/ParserConfig;->getDeserializer(Ljava/lang/Class;Ljava/lang/reflect/Type;)Lcom/alibaba/fastjson/parser/deserializer/ObjectDeserializer;

    move-result-object v0

    return-object v0

    :cond_3
    move-object v0, p1

    .line 390
    check-cast v0, Ljava/lang/reflect/ParameterizedType;

    invoke-interface {v0}, Ljava/lang/reflect/ParameterizedType;->getRawType()Ljava/lang/reflect/Type;

    move-result-object v0

    .line 391
    instance-of v1, v0, Ljava/lang/Class;

    if-nez v1, :cond_4

    .line 394
    invoke-virtual {p0, v0}, Lcom/alibaba/fastjson/parser/ParserConfig;->getDeserializer(Ljava/lang/reflect/Type;)Lcom/alibaba/fastjson/parser/deserializer/ObjectDeserializer;

    move-result-object v0

    return-object v0

    .line 392
    :cond_4
    check-cast v0, Ljava/lang/Class;

    invoke-virtual {p0, v0, p1}, Lcom/alibaba/fastjson/parser/ParserConfig;->getDeserializer(Ljava/lang/Class;Ljava/lang/reflect/Type;)Lcom/alibaba/fastjson/parser/deserializer/ObjectDeserializer;

    move-result-object v0

    return-object v0

    .line 399
    :cond_5
    check-cast p1, Ljava/lang/reflect/WildcardType;

    .line 400
    invoke-interface {p1}, Ljava/lang/reflect/WildcardType;->getUpperBounds()[Ljava/lang/reflect/Type;

    move-result-object v0

    .line 401
    array-length v1, v0

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    .line 402
    aget-object v0, v0, v3

    .line 403
    invoke-virtual {p0, v0}, Lcom/alibaba/fastjson/parser/ParserConfig;->getDeserializer(Ljava/lang/reflect/Type;)Lcom/alibaba/fastjson/parser/deserializer/ObjectDeserializer;

    move-result-object v0

    return-object v0
.end method

.method public getDeserializers()Lcom/alibaba/fastjson/util/IdentityHashMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/alibaba/fastjson/util/IdentityHashMap",
            "<",
            "Ljava/lang/reflect/Type;",
            "Lcom/alibaba/fastjson/parser/deserializer/ObjectDeserializer;",
            ">;"
        }
    .end annotation

    .prologue
    .line 376
    iget-object v0, p0, Lcom/alibaba/fastjson/parser/ParserConfig;->deserializers:Lcom/alibaba/fastjson/util/IdentityHashMap;

    return-object v0
.end method

.method public varargs initJavaBeanDeserializers([Ljava/lang/Class;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/Class",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 586
    if-eqz p1, :cond_0

    .line 590
    array-length v1, p1

    const/4 v0, 0x0

    :goto_0
    if-lt v0, v1, :cond_1

    .line 597
    return-void

    .line 587
    :cond_0
    return-void

    .line 590
    :cond_1
    aget-object v2, p1, v0

    .line 591
    if-eqz v2, :cond_2

    .line 594
    invoke-virtual {p0, v2, v2}, Lcom/alibaba/fastjson/parser/ParserConfig;->createJavaBeanDeserializer(Ljava/lang/Class;Ljava/lang/reflect/Type;)Lcom/alibaba/fastjson/parser/deserializer/ObjectDeserializer;

    move-result-object v3

    .line 595
    invoke-virtual {p0, v2, v3}, Lcom/alibaba/fastjson/parser/ParserConfig;->putDeserializer(Ljava/lang/reflect/Type;Lcom/alibaba/fastjson/parser/deserializer/ObjectDeserializer;)V

    .line 590
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public isAsmEnable()Z
    .locals 1

    .prologue
    .line 368
    iget-boolean v0, p0, Lcom/alibaba/fastjson/parser/ParserConfig;->asmEnable:Z

    return v0
.end method

.method public isAutoTypeSupport()Z
    .locals 1

    .prologue
    .line 360
    iget-boolean v0, p0, Lcom/alibaba/fastjson/parser/ParserConfig;->autoTypeSupport:Z

    return v0
.end method

.method public isPrimitive(Ljava/lang/Class;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;)Z"
        }
    .end annotation

    .prologue
    .line 770
    invoke-static {p1}, Lcom/alibaba/fastjson/parser/ParserConfig;->isPrimitive2(Ljava/lang/Class;)Z

    move-result v0

    return v0
.end method

.method public putDeserializer(Ljava/lang/reflect/Type;Lcom/alibaba/fastjson/parser/deserializer/ObjectDeserializer;)V
    .locals 1

    .prologue
    .line 759
    iget-object v0, p0, Lcom/alibaba/fastjson/parser/ParserConfig;->deserializers:Lcom/alibaba/fastjson/util/IdentityHashMap;

    invoke-virtual {v0, p1, p2}, Lcom/alibaba/fastjson/util/IdentityHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 760
    return-void
.end method

.method public setAsmEnable(Z)V
    .locals 0

    .prologue
    .line 372
    iput-boolean p1, p0, Lcom/alibaba/fastjson/parser/ParserConfig;->asmEnable:Z

    .line 373
    return-void
.end method

.method public setAutoTypeSupport(Z)V
    .locals 0

    .prologue
    .line 364
    iput-boolean p1, p0, Lcom/alibaba/fastjson/parser/ParserConfig;->autoTypeSupport:Z

    .line 365
    return-void
.end method

.method public setDefaultClassLoader(Ljava/lang/ClassLoader;)V
    .locals 0

    .prologue
    .line 859
    iput-object p1, p0, Lcom/alibaba/fastjson/parser/ParserConfig;->defaultClassLoader:Ljava/lang/ClassLoader;

    .line 860
    return-void
.end method
