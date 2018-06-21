.class Lcom/android/server/policy/SuspendGestureListener$2;
.super Ljava/lang/Object;
.source "SuspendGestureListener.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/policy/SuspendGestureListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/policy/SuspendGestureListener;


# direct methods
.method constructor <init>(Lcom/android/server/policy/SuspendGestureListener;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/policy/SuspendGestureListener;

    .prologue
    .line 82
    iput-object p1, p0, Lcom/android/server/policy/SuspendGestureListener$2;->this$0:Lcom/android/server/policy/SuspendGestureListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 85
    iget-object v0, p0, Lcom/android/server/policy/SuspendGestureListener$2;->this$0:Lcom/android/server/policy/SuspendGestureListener;

    invoke-virtual {v0}, Lcom/android/server/policy/SuspendGestureListener;->onGoingToSleep()V

    .line 84
    return-void
.end method
