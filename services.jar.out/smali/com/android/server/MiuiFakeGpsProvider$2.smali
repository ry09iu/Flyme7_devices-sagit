.class Lcom/android/server/MiuiFakeGpsProvider$2;
.super Ljava/lang/Object;
.source "MiuiFakeGpsProvider.java"

# interfaces
.implements Lcom/android/server/LocationPolicyManagerService$FakeGpsStationaryListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/MiuiFakeGpsProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/MiuiFakeGpsProvider;


# direct methods
.method constructor <init>(Lcom/android/server/MiuiFakeGpsProvider;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/MiuiFakeGpsProvider;

    .prologue
    .line 63
    iput-object p1, p0, Lcom/android/server/MiuiFakeGpsProvider$2;->this$0:Lcom/android/server/MiuiFakeGpsProvider;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onStationaryChanged(Z)V
    .locals 3
    .param p1, "stationary"    # Z

    .prologue
    .line 66
    const-string/jumbo v0, "MiuiGpsProvider"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "status changed stationary: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 67
    iget-object v0, p0, Lcom/android/server/MiuiFakeGpsProvider$2;->this$0:Lcom/android/server/MiuiFakeGpsProvider;

    invoke-static {v0, p1}, Lcom/android/server/MiuiFakeGpsProvider;->-wrap1(Lcom/android/server/MiuiFakeGpsProvider;Z)V

    .line 65
    return-void
.end method
