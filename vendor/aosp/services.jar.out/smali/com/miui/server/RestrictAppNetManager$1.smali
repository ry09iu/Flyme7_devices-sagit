.class final Lcom/miui/server/RestrictAppNetManager$1;
.super Landroid/database/ContentObserver;
.source "RestrictAppNetManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/server/RestrictAppNetManager;->registerCloudDataObserver(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$context:Landroid/content/Context;


# direct methods
.method constructor <init>(Landroid/os/Handler;Landroid/content/Context;)V
    .locals 0
    .param p1, "$anonymous0"    # Landroid/os/Handler;
    .param p2, "val$context"    # Landroid/content/Context;

    .prologue
    .line 103
    iput-object p2, p0, Lcom/miui/server/RestrictAppNetManager$1;->val$context:Landroid/content/Context;

    invoke-direct {p0, p1}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 1
    .param p1, "selfChange"    # Z

    .prologue
    .line 106
    iget-object v0, p0, Lcom/miui/server/RestrictAppNetManager$1;->val$context:Landroid/content/Context;

    invoke-static {v0}, Lcom/miui/server/RestrictAppNetManager;->-wrap0(Landroid/content/Context;)V

    .line 105
    return-void
.end method
