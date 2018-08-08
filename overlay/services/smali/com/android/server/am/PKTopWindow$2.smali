.class Lcom/android/server/am/PKTopWindow$2;
.super Ljava/lang/Object;
.source "PKTopWindow.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/am/PKTopWindow;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/am/PKTopWindow;


# direct methods
.method constructor <init>(Lcom/android/server/am/PKTopWindow;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/am/PKTopWindow;

    .prologue
    .line 114
    iput-object p1, p0, Lcom/android/server/am/PKTopWindow$2;->this$0:Lcom/android/server/am/PKTopWindow;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 117
    iget-object v0, p0, Lcom/android/server/am/PKTopWindow$2;->this$0:Lcom/android/server/am/PKTopWindow;

    invoke-static {v0}, Lcom/android/server/am/PKTopWindow;->-wrap5(Lcom/android/server/am/PKTopWindow;)V

    .line 116
    return-void
.end method
