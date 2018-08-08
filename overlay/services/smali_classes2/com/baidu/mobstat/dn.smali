.class Lcom/baidu/mobstat/dn;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnScrollChangedListener;


# instance fields
.field final synthetic a:Lcom/baidu/mobstat/dc;


# direct methods
.method constructor <init>(Lcom/baidu/mobstat/dc;)V
    .locals 0

    .prologue
    .line 404
    iput-object p1, p0, Lcom/baidu/mobstat/dn;->a:Lcom/baidu/mobstat/dc;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onScrollChanged()V
    .locals 2

    .prologue
    .line 408
    iget-object v0, p0, Lcom/baidu/mobstat/dn;->a:Lcom/baidu/mobstat/dc;

    iget-object v1, p0, Lcom/baidu/mobstat/dn;->a:Lcom/baidu/mobstat/dc;

    invoke-static {v1}, Lcom/baidu/mobstat/dc;->a(Lcom/baidu/mobstat/dc;)Ljava/lang/ref/WeakReference;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/baidu/mobstat/dc;->a(Ljava/lang/ref/WeakReference;)V

    .line 409
    return-void
.end method
