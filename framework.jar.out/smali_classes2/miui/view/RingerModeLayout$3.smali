.class Lmiui/view/RingerModeLayout$3;
.super Ljava/lang/Object;
.source "RingerModeLayout.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiui/view/RingerModeLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lmiui/view/RingerModeLayout;


# direct methods
.method constructor <init>(Lmiui/view/RingerModeLayout;)V
    .locals 0
    .param p1, "this$0"    # Lmiui/view/RingerModeLayout;

    .prologue
    .line 285
    iput-object p1, p0, Lmiui/view/RingerModeLayout$3;->this$0:Lmiui/view/RingerModeLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 288
    iget-object v2, p0, Lmiui/view/RingerModeLayout$3;->this$0:Lmiui/view/RingerModeLayout;

    invoke-static {v2}, Lmiui/view/RingerModeLayout;->-get1(Lmiui/view/RingerModeLayout;)Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Landroid/app/ExtraNotificationManager;->getConditionId(Landroid/content/Context;)Landroid/net/Uri;

    move-result-object v0

    .line 294
    .local v0, "id":Landroid/net/Uri;
    const/4 v1, 0x0

    .line 295
    .local v1, "mode":I
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v2

    const v3, 0x110b003c

    if-ne v2, v3, :cond_1

    .line 296
    const-string/jumbo v2, "RingerModeLayout"

    const-string/jumbo v3, "set total mode"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 297
    const/4 v1, 0x3

    .line 302
    :cond_0
    :goto_0
    iget-object v2, p0, Lmiui/view/RingerModeLayout$3;->this$0:Lmiui/view/RingerModeLayout;

    invoke-static {v2}, Lmiui/view/RingerModeLayout;->-get1(Lmiui/view/RingerModeLayout;)Landroid/content/Context;

    move-result-object v2

    invoke-static {v2, v1, v0}, Landroid/provider/MiuiSettings$SilenceMode;->setSilenceMode(Landroid/content/Context;ILandroid/net/Uri;)V

    .line 287
    return-void

    .line 298
    :cond_1
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v2

    const v3, 0x110b003b

    if-ne v2, v3, :cond_0

    .line 299
    const-string/jumbo v2, "RingerModeLayout"

    const-string/jumbo v3, "set standard mode"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 300
    const/4 v1, 0x1

    goto :goto_0
.end method
