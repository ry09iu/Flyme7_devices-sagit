.class Lcom/android/server/policy/MiuiScreenOnProximityLock$2;
.super Ljava/lang/Object;
.source "MiuiScreenOnProximityLock.java"

# interfaces
.implements Landroid/view/View$OnSystemUiVisibilityChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/policy/MiuiScreenOnProximityLock;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/policy/MiuiScreenOnProximityLock;


# direct methods
.method constructor <init>(Lcom/android/server/policy/MiuiScreenOnProximityLock;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/policy/MiuiScreenOnProximityLock;

    .prologue
    .line 285
    iput-object p1, p0, Lcom/android/server/policy/MiuiScreenOnProximityLock$2;->this$0:Lcom/android/server/policy/MiuiScreenOnProximityLock;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onSystemUiVisibilityChange(I)V
    .locals 2
    .param p1, "visibility"    # I

    .prologue
    .line 290
    iget-object v0, p0, Lcom/android/server/policy/MiuiScreenOnProximityLock$2;->this$0:Lcom/android/server/policy/MiuiScreenOnProximityLock;

    iget-object v0, v0, Lcom/android/server/policy/MiuiScreenOnProximityLock;->mHintContainer:Landroid/view/ViewGroup;

    if-eqz v0, :cond_0

    and-int/lit8 v0, p1, 0x4

    if-nez v0, :cond_0

    .line 294
    iget-object v0, p0, Lcom/android/server/policy/MiuiScreenOnProximityLock$2;->this$0:Lcom/android/server/policy/MiuiScreenOnProximityLock;

    iget-object v0, v0, Lcom/android/server/policy/MiuiScreenOnProximityLock;->mHintContainer:Landroid/view/ViewGroup;

    .line 295
    const/16 v1, 0xf02

    .line 294
    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setSystemUiVisibility(I)V

    .line 287
    :cond_0
    return-void
.end method
