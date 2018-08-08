.class public Lcom/android/server/am/PKTopWindowViewFactory$ADWebView;
.super Landroid/webkit/WebView;
.source "PKTopWindowViewFactory.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/am/PKTopWindowViewFactory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ADWebView"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/am/PKTopWindowViewFactory;


# direct methods
.method public constructor <init>(Lcom/android/server/am/PKTopWindowViewFactory;Landroid/content/Context;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/am/PKTopWindowViewFactory;
    .param p2, "context"    # Landroid/content/Context;

    .prologue
    .line 496
    iput-object p1, p0, Lcom/android/server/am/PKTopWindowViewFactory$ADWebView;->this$0:Lcom/android/server/am/PKTopWindowViewFactory;

    .line 497
    invoke-direct {p0, p2}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;)V

    .line 496
    return-void
.end method


# virtual methods
.method public onCreateInputConnection(Landroid/view/inputmethod/EditorInfo;)Landroid/view/inputmethod/InputConnection;
    .locals 2
    .param p1, "outAttrs"    # Landroid/view/inputmethod/EditorInfo;

    .prologue
    .line 502
    new-instance v0, Landroid/view/inputmethod/BaseInputConnection;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Landroid/view/inputmethod/BaseInputConnection;-><init>(Landroid/view/View;Z)V

    return-object v0
.end method
