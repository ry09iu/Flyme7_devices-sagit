.class Lcom/baidu/mobstat/eu;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Landroid/webkit/WebView;

.field final synthetic b:Ljava/lang/String;


# direct methods
.method constructor <init>(Landroid/webkit/WebView;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 112
    iput-object p1, p0, Lcom/baidu/mobstat/eu;->a:Landroid/webkit/WebView;

    iput-object p2, p0, Lcom/baidu/mobstat/eu;->b:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 116
    iget-object v0, p0, Lcom/baidu/mobstat/eu;->a:Landroid/webkit/WebView;

    iget-object v1, p0, Lcom/baidu/mobstat/eu;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    .line 117
    return-void
.end method
