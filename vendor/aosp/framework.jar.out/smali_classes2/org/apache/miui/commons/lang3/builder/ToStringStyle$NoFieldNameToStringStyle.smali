.class final Lorg/apache/miui/commons/lang3/builder/ToStringStyle$NoFieldNameToStringStyle;
.super Lorg/apache/miui/commons/lang3/builder/ToStringStyle;
.source "ToStringStyle.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/miui/commons/lang3/builder/ToStringStyle;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "NoFieldNameToStringStyle"
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x1L


# direct methods
.method constructor <init>()V
    .locals 1

    .prologue
    .line 2152
    invoke-direct {p0}, Lorg/apache/miui/commons/lang3/builder/ToStringStyle;-><init>()V

    .line 2153
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lorg/apache/miui/commons/lang3/builder/ToStringStyle$NoFieldNameToStringStyle;->setUseFieldNames(Z)V

    .line 2151
    return-void
.end method

.method private readResolve()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 2162
    sget-object v0, Lorg/apache/miui/commons/lang3/builder/ToStringStyle;->NO_FIELD_NAMES_STYLE:Lorg/apache/miui/commons/lang3/builder/ToStringStyle;

    return-object v0
.end method
