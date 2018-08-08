.class public final enum Lcom/alibaba/fastjson/PropertyNamingStrategy;
.super Ljava/lang/Enum;
.source "PropertyNamingStrategy.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/alibaba/fastjson/PropertyNamingStrategy;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/alibaba/fastjson/PropertyNamingStrategy;

.field public static final enum CamelCase:Lcom/alibaba/fastjson/PropertyNamingStrategy;

.field public static final enum KebabCase:Lcom/alibaba/fastjson/PropertyNamingStrategy;

.field public static final enum PascalCase:Lcom/alibaba/fastjson/PropertyNamingStrategy;

.field public static final enum SnakeCase:Lcom/alibaba/fastjson/PropertyNamingStrategy;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 7
    new-instance v0, Lcom/alibaba/fastjson/PropertyNamingStrategy;

    const-string/jumbo v1, "CamelCase"

    invoke-direct {v0, v1, v2}, Lcom/alibaba/fastjson/PropertyNamingStrategy;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/alibaba/fastjson/PropertyNamingStrategy;->CamelCase:Lcom/alibaba/fastjson/PropertyNamingStrategy;

    .line 8
    new-instance v0, Lcom/alibaba/fastjson/PropertyNamingStrategy;

    const-string/jumbo v1, "PascalCase"

    invoke-direct {v0, v1, v3}, Lcom/alibaba/fastjson/PropertyNamingStrategy;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/alibaba/fastjson/PropertyNamingStrategy;->PascalCase:Lcom/alibaba/fastjson/PropertyNamingStrategy;

    .line 9
    new-instance v0, Lcom/alibaba/fastjson/PropertyNamingStrategy;

    const-string/jumbo v1, "SnakeCase"

    invoke-direct {v0, v1, v4}, Lcom/alibaba/fastjson/PropertyNamingStrategy;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/alibaba/fastjson/PropertyNamingStrategy;->SnakeCase:Lcom/alibaba/fastjson/PropertyNamingStrategy;

    .line 10
    new-instance v0, Lcom/alibaba/fastjson/PropertyNamingStrategy;

    const-string/jumbo v1, "KebabCase"

    invoke-direct {v0, v1, v5}, Lcom/alibaba/fastjson/PropertyNamingStrategy;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/alibaba/fastjson/PropertyNamingStrategy;->KebabCase:Lcom/alibaba/fastjson/PropertyNamingStrategy;

    const/4 v0, 0x4

    .line 6
    new-array v0, v0, [Lcom/alibaba/fastjson/PropertyNamingStrategy;

    sget-object v1, Lcom/alibaba/fastjson/PropertyNamingStrategy;->CamelCase:Lcom/alibaba/fastjson/PropertyNamingStrategy;

    aput-object v1, v0, v2

    sget-object v1, Lcom/alibaba/fastjson/PropertyNamingStrategy;->PascalCase:Lcom/alibaba/fastjson/PropertyNamingStrategy;

    aput-object v1, v0, v3

    sget-object v1, Lcom/alibaba/fastjson/PropertyNamingStrategy;->SnakeCase:Lcom/alibaba/fastjson/PropertyNamingStrategy;

    aput-object v1, v0, v4

    sget-object v1, Lcom/alibaba/fastjson/PropertyNamingStrategy;->KebabCase:Lcom/alibaba/fastjson/PropertyNamingStrategy;

    aput-object v1, v0, v5

    sput-object v0, Lcom/alibaba/fastjson/PropertyNamingStrategy;->$VALUES:[Lcom/alibaba/fastjson/PropertyNamingStrategy;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 6
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/alibaba/fastjson/PropertyNamingStrategy;
    .locals 1

    .prologue
    const-class v0, Lcom/alibaba/fastjson/PropertyNamingStrategy;

    .line 6
    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/alibaba/fastjson/PropertyNamingStrategy;

    return-object v0
.end method

.method public static values()[Lcom/alibaba/fastjson/PropertyNamingStrategy;
    .locals 1

    .prologue
    .line 6
    sget-object v0, Lcom/alibaba/fastjson/PropertyNamingStrategy;->$VALUES:[Lcom/alibaba/fastjson/PropertyNamingStrategy;

    invoke-virtual {v0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/alibaba/fastjson/PropertyNamingStrategy;

    return-object v0
.end method


# virtual methods
.method public translate(Ljava/lang/String;)Ljava/lang/String;
    .locals 6

    .prologue
    const/16 v5, 0x5a

    const/16 v4, 0x41

    const/4 v0, 0x0

    .line 13
    sget-object v1, Lcom/alibaba/fastjson/PropertyNamingStrategy$1;->$SwitchMap$com$alibaba$fastjson$PropertyNamingStrategy:[I

    invoke-virtual {p0}, Lcom/alibaba/fastjson/PropertyNamingStrategy;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    .line 67
    return-object p1

    .line 15
    :pswitch_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 16
    :goto_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    if-lt v0, v2, :cond_0

    .line 28
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 17
    :cond_0
    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v2

    .line 18
    if-ge v2, v4, :cond_2

    .line 25
    :cond_1
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 16
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 18
    :cond_2
    if-gt v2, v5, :cond_1

    .line 19
    add-int/lit8 v2, v2, 0x20

    int-to-char v2, v2

    .line 20
    if-gtz v0, :cond_3

    .line 23
    :goto_2
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 21
    :cond_3
    const/16 v3, 0x5f

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_2

    .line 31
    :pswitch_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 32
    :goto_3
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    if-lt v0, v2, :cond_4

    .line 44
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 33
    :cond_4
    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v2

    .line 34
    if-ge v2, v4, :cond_6

    .line 41
    :cond_5
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 32
    :goto_4
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    .line 34
    :cond_6
    if-gt v2, v5, :cond_5

    .line 35
    add-int/lit8 v2, v2, 0x20

    int-to-char v2, v2

    .line 36
    if-gtz v0, :cond_7

    .line 39
    :goto_5
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_4

    .line 37
    :cond_7
    const/16 v3, 0x2d

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_5

    .line 47
    :pswitch_2
    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v2, 0x61

    .line 48
    if-ge v1, v2, :cond_9

    .line 54
    :cond_8
    return-object p1

    :cond_9
    const/16 v2, 0x7a

    .line 48
    if-gt v1, v2, :cond_8

    .line 49
    invoke-virtual {p1}, Ljava/lang/String;->toCharArray()[C

    move-result-object v1

    .line 50
    aget-char v2, v1, v0

    add-int/lit8 v2, v2, -0x20

    int-to-char v2, v2

    int-to-char v2, v2

    aput-char v2, v1, v0

    .line 51
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>([C)V

    return-object v0

    .line 57
    :pswitch_3
    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    .line 58
    if-ge v1, v4, :cond_b

    .line 64
    :cond_a
    return-object p1

    .line 58
    :cond_b
    if-gt v1, v5, :cond_a

    .line 59
    invoke-virtual {p1}, Ljava/lang/String;->toCharArray()[C

    move-result-object v1

    .line 60
    aget-char v2, v1, v0

    add-int/lit8 v2, v2, 0x20

    int-to-char v2, v2

    int-to-char v2, v2

    aput-char v2, v1, v0

    .line 61
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>([C)V

    return-object v0

    .line 13
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method
