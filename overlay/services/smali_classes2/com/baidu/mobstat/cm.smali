.class Lcom/baidu/mobstat/cm;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 247
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2

    .prologue
    .line 250
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 252
    invoke-static {}, Lcom/baidu/mobstat/ct;->a()Lcom/baidu/mobstat/ct;

    move-result-object v0

    invoke-virtual {v0}, Lcom/baidu/mobstat/ct;->c()V

    .line 254
    invoke-static {}, Lcom/baidu/mobstat/eh;->c()Lcom/baidu/mobstat/eh;

    move-result-object v0

    const-string/jumbo v1, "autotrace: connect close, app close"

    invoke-virtual {v0, v1}, Lcom/baidu/mobstat/eh;->a(Ljava/lang/String;)V

    .line 255
    invoke-static {}, Lcom/baidu/mobstat/ct;->a()Lcom/baidu/mobstat/ct;

    move-result-object v0

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/baidu/mobstat/ct;->a(I)V

    .line 258
    invoke-static {}, Lcom/baidu/mobstat/ct;->a()Lcom/baidu/mobstat/ct;

    move-result-object v0

    invoke-virtual {v0}, Lcom/baidu/mobstat/ct;->d()V

    .line 259
    return-void
.end method
