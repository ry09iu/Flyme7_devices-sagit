.class Lcom/android/stk/StkApp$StkAppDelegate;
.super Lmiui/external/ApplicationDelegate;
.source "StkApp.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/stk/StkApp;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "StkAppDelegate"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/stk/StkApp;


# direct methods
.method private constructor <init>(Lcom/android/stk/StkApp;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/stk/StkApp;

    .prologue
    .line 84
    iput-object p1, p0, Lcom/android/stk/StkApp$StkAppDelegate;->this$0:Lcom/android/stk/StkApp;

    invoke-direct {p0}, Lmiui/external/ApplicationDelegate;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/stk/StkApp;Lcom/android/stk/StkApp$StkAppDelegate;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/stk/StkApp;

    .prologue
    invoke-direct {p0, p1}, Lcom/android/stk/StkApp$StkAppDelegate;-><init>(Lcom/android/stk/StkApp;)V

    return-void
.end method
