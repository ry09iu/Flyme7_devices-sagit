.class final Lcom/android/server/power/ButtonLightAutoController$5;
.super Landroid/database/ContentObserver;
.source "ButtonLightAutoController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/power/ButtonLightAutoController;->setButtonLight(Landroid/content/Context;Landroid/os/Handler;Lcom/android/server/lights/Light;)V
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
    .line 155
    iput-object p2, p0, Lcom/android/server/power/ButtonLightAutoController$5;->val$context:Landroid/content/Context;

    invoke-direct {p0, p1}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(ZLandroid/net/Uri;)V
    .locals 1
    .param p1, "selfChange"    # Z
    .param p2, "uri"    # Landroid/net/Uri;

    .prologue
    .line 158
    iget-object v0, p0, Lcom/android/server/power/ButtonLightAutoController$5;->val$context:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/server/power/ButtonLightAutoController;->updateButtonLightTimeout(Landroid/content/Context;)V

    .line 157
    return-void
.end method
