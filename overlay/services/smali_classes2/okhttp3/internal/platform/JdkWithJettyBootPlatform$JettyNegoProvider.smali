.class Lokhttp3/internal/platform/JdkWithJettyBootPlatform$JettyNegoProvider;
.super Ljava/lang/Object;
.source "JdkWithJettyBootPlatform.java"

# interfaces
.implements Ljava/lang/reflect/InvocationHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lokhttp3/internal/platform/JdkWithJettyBootPlatform;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "JettyNegoProvider"
.end annotation


# instance fields
.field private final protocols:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field selected:Ljava/lang/String;

.field unsupported:Z


# direct methods
.method constructor <init>(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 116
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 117
    iput-object p1, p0, Lokhttp3/internal/platform/JdkWithJettyBootPlatform$JettyNegoProvider;->protocols:Ljava/util/List;

    .line 118
    return-void
.end method


# virtual methods
.method public invoke(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x1

    const/4 v2, 0x0

    .line 121
    invoke-virtual {p2}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v0

    .line 122
    invoke-virtual {p2}, Ljava/lang/reflect/Method;->getReturnType()Ljava/lang/Class;

    move-result-object v1

    .line 123
    if-eqz p3, :cond_6

    :goto_0
    const-string/jumbo v3, "supports"

    .line 126
    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_7

    :cond_0
    const-string/jumbo v3, "unsupported"

    .line 128
    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_8

    :cond_1
    const-string/jumbo v3, "protocols"

    .line 131
    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_9

    :cond_2
    const-string/jumbo v3, "selectProtocol"

    .line 133
    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_a

    :cond_3
    const-class v3, Ljava/lang/String;

    if-eq v3, v1, :cond_b

    :cond_4
    :goto_1
    const-string/jumbo v1, "protocolSelected"

    .line 143
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_e

    :cond_5
    array-length v0, p3

    if-eq v0, v4, :cond_f

    .line 148
    :goto_2
    invoke-virtual {p2, p0, p3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0

    .line 124
    :cond_6
    sget-object p3, Lokhttp3/internal/Util;->EMPTY_STRING_ARRAY:[Ljava/lang/String;

    goto :goto_0

    .line 126
    :cond_7
    sget-object v3, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    if-ne v3, v1, :cond_0

    .line 127
    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0

    .line 128
    :cond_8
    sget-object v3, Ljava/lang/Void;->TYPE:Ljava/lang/Class;

    if-ne v3, v1, :cond_1

    .line 129
    iput-boolean v4, p0, Lokhttp3/internal/platform/JdkWithJettyBootPlatform$JettyNegoProvider;->unsupported:Z

    .line 130
    return-object v5

    .line 131
    :cond_9
    array-length v3, p3

    if-nez v3, :cond_2

    .line 132
    iget-object v0, p0, Lokhttp3/internal/platform/JdkWithJettyBootPlatform$JettyNegoProvider;->protocols:Ljava/util/List;

    return-object v0

    :cond_a
    const-string/jumbo v3, "select"

    .line 133
    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_3

    goto :goto_1

    :cond_b
    array-length v1, p3

    if-ne v1, v4, :cond_4

    aget-object v1, p3, v2

    instance-of v1, v1, Ljava/util/List;

    if-eqz v1, :cond_4

    .line 135
    aget-object v0, p3, v2

    check-cast v0, Ljava/util/List;

    .line 137
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    move v1, v2

    :goto_3
    if-lt v1, v3, :cond_c

    .line 142
    iget-object v0, p0, Lokhttp3/internal/platform/JdkWithJettyBootPlatform$JettyNegoProvider;->protocols:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lokhttp3/internal/platform/JdkWithJettyBootPlatform$JettyNegoProvider;->selected:Ljava/lang/String;

    return-object v0

    .line 138
    :cond_c
    iget-object v4, p0, Lokhttp3/internal/platform/JdkWithJettyBootPlatform$JettyNegoProvider;->protocols:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_d

    .line 137
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    .line 139
    :cond_d
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lokhttp3/internal/platform/JdkWithJettyBootPlatform$JettyNegoProvider;->selected:Ljava/lang/String;

    return-object v0

    :cond_e
    const-string/jumbo v1, "selected"

    .line 143
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5

    goto :goto_2

    .line 145
    :cond_f
    aget-object v0, p3, v2

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lokhttp3/internal/platform/JdkWithJettyBootPlatform$JettyNegoProvider;->selected:Ljava/lang/String;

    .line 146
    return-object v5
.end method
