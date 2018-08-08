.class Lcom/android/server/am/PKTopWindow$8$1;
.super Ljava/lang/Object;
.source "PKTopWindow.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/am/PKTopWindow$8;->onTick(J)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/server/am/PKTopWindow$8;


# direct methods
.method constructor <init>(Lcom/android/server/am/PKTopWindow$8;)V
    .locals 0
    .param p1, "this$1"    # Lcom/android/server/am/PKTopWindow$8;

    .prologue
    .line 692
    iput-object p1, p0, Lcom/android/server/am/PKTopWindow$8$1;->this$1:Lcom/android/server/am/PKTopWindow$8;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 696
    iget-object v0, p0, Lcom/android/server/am/PKTopWindow$8$1;->this$1:Lcom/android/server/am/PKTopWindow$8;

    iget-object v0, v0, Lcom/android/server/am/PKTopWindow$8;->this$0:Lcom/android/server/am/PKTopWindow;

    invoke-static {v0}, Lcom/android/server/am/PKTopWindow;->-wrap5(Lcom/android/server/am/PKTopWindow;)V

    .line 694
    return-void
.end method
