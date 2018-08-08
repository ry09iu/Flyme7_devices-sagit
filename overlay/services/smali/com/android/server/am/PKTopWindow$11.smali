.class Lcom/android/server/am/PKTopWindow$11;
.super Ljava/lang/Object;
.source "PKTopWindow.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/am/PKTopWindow;->showSecondWindow()V
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
    .line 976
    iput-object p1, p0, Lcom/android/server/am/PKTopWindow$11;->this$0:Lcom/android/server/am/PKTopWindow;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 980
    iget-object v0, p0, Lcom/android/server/am/PKTopWindow$11;->this$0:Lcom/android/server/am/PKTopWindow;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/server/am/PKTopWindow;->dismissWindowsAt(I)V

    .line 978
    return-void
.end method
