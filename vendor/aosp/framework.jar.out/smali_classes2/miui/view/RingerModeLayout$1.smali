.class Lmiui/view/RingerModeLayout$1;
.super Ljava/lang/Object;
.source "RingerModeLayout.java"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


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
    .line 218
    iput-object p1, p0, Lmiui/view/RingerModeLayout$1;->this$0:Lmiui/view/RingerModeLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 6
    .param p1, "compoundButton"    # Landroid/widget/CompoundButton;
    .param p2, "isChecked"    # Z

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 221
    iget-object v1, p0, Lmiui/view/RingerModeLayout$1;->this$0:Lmiui/view/RingerModeLayout;

    invoke-static {v1}, Lmiui/view/RingerModeLayout;->-get10(Lmiui/view/RingerModeLayout;)Z

    move-result v1

    if-nez v1, :cond_0

    return-void

    .line 222
    :cond_0
    if-eqz p2, :cond_2

    .line 223
    const-string/jumbo v1, "RingerModeLayout"

    const-string/jumbo v2, "sliding to true"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 225
    iget-object v1, p0, Lmiui/view/RingerModeLayout$1;->this$0:Lmiui/view/RingerModeLayout;

    invoke-static {v1}, Lmiui/view/RingerModeLayout;->-get16(Lmiui/view/RingerModeLayout;)Lmiui/view/VolumeDialog;

    move-result-object v1

    invoke-virtual {v1, v3}, Lmiui/view/VolumeDialog;->setExpandedH(Z)V

    .line 226
    iget-object v1, p0, Lmiui/view/RingerModeLayout$1;->this$0:Lmiui/view/RingerModeLayout;

    invoke-virtual {v1, v4}, Lmiui/view/RingerModeLayout;->expandSilenceModeContent(Z)V

    .line 227
    iget-object v1, p0, Lmiui/view/RingerModeLayout$1;->this$0:Lmiui/view/RingerModeLayout;

    invoke-static {v1}, Lmiui/view/RingerModeLayout;->-get2(Lmiui/view/RingerModeLayout;)I

    move-result v1

    if-nez v1, :cond_1

    .line 228
    iget-object v1, p0, Lmiui/view/RingerModeLayout$1;->this$0:Lmiui/view/RingerModeLayout;

    invoke-static {v1}, Lmiui/view/RingerModeLayout;->-get1(Lmiui/view/RingerModeLayout;)Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Landroid/provider/MiuiSettings$SilenceMode;->getLastestQuietMode(Landroid/content/Context;)I

    move-result v0

    .line 229
    .local v0, "mode":I
    iget-object v1, p0, Lmiui/view/RingerModeLayout$1;->this$0:Lmiui/view/RingerModeLayout;

    invoke-static {v1}, Lmiui/view/RingerModeLayout;->-get1(Lmiui/view/RingerModeLayout;)Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, v0, v5}, Landroid/provider/MiuiSettings$SilenceMode;->setSilenceMode(Landroid/content/Context;ILandroid/net/Uri;)V

    .line 231
    .end local v0    # "mode":I
    :cond_1
    iget-object v1, p0, Lmiui/view/RingerModeLayout$1;->this$0:Lmiui/view/RingerModeLayout;

    invoke-static {v1}, Lmiui/view/RingerModeLayout;->-wrap3(Lmiui/view/RingerModeLayout;)V

    .line 220
    :goto_0
    return-void

    .line 233
    :cond_2
    const-string/jumbo v1, "RingerModeLayout"

    const-string/jumbo v2, "sliding to false"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 234
    iget-object v1, p0, Lmiui/view/RingerModeLayout$1;->this$0:Lmiui/view/RingerModeLayout;

    invoke-static {v1}, Lmiui/view/RingerModeLayout;->-get6(Lmiui/view/RingerModeLayout;)Landroid/widget/RadioGroup;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/RadioGroup;->clearCheck()V

    .line 235
    iget-object v1, p0, Lmiui/view/RingerModeLayout$1;->this$0:Lmiui/view/RingerModeLayout;

    invoke-static {v1, v3}, Lmiui/view/RingerModeLayout;->-set1(Lmiui/view/RingerModeLayout;I)I

    .line 236
    iget-object v1, p0, Lmiui/view/RingerModeLayout$1;->this$0:Lmiui/view/RingerModeLayout;

    invoke-virtual {v1, v3}, Lmiui/view/RingerModeLayout;->expandSilenceModeContent(Z)V

    .line 237
    iget-object v1, p0, Lmiui/view/RingerModeLayout$1;->this$0:Lmiui/view/RingerModeLayout;

    invoke-static {v1}, Lmiui/view/RingerModeLayout;->-get1(Lmiui/view/RingerModeLayout;)Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, v3, v5}, Landroid/provider/MiuiSettings$SilenceMode;->setSilenceMode(Landroid/content/Context;ILandroid/net/Uri;)V

    .line 238
    iget-object v1, p0, Lmiui/view/RingerModeLayout$1;->this$0:Lmiui/view/RingerModeLayout;

    invoke-static {v1}, Lmiui/view/RingerModeLayout;->-get16(Lmiui/view/RingerModeLayout;)Lmiui/view/VolumeDialog;

    move-result-object v1

    invoke-virtual {v1}, Lmiui/view/VolumeDialog;->recheckAll()V

    .line 239
    iget-object v1, p0, Lmiui/view/RingerModeLayout$1;->this$0:Lmiui/view/RingerModeLayout;

    invoke-static {v1}, Lmiui/view/RingerModeLayout;->-get4(Lmiui/view/RingerModeLayout;)Lmiui/view/RingerModeLayout$H;

    move-result-object v1

    invoke-virtual {v1, v4}, Lmiui/view/RingerModeLayout$H;->removeMessages(I)V

    .line 240
    iget-object v1, p0, Lmiui/view/RingerModeLayout$1;->this$0:Lmiui/view/RingerModeLayout;

    invoke-static {v1}, Lmiui/view/RingerModeLayout;->-get4(Lmiui/view/RingerModeLayout;)Lmiui/view/RingerModeLayout$H;

    move-result-object v1

    const-wide/16 v2, 0x32

    invoke-virtual {v1, v4, v2, v3}, Lmiui/view/RingerModeLayout$H;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0
.end method
