.class Lcom/android/server/VibratorService$3;
.super Ljava/lang/Object;
.source "VibratorService.java"

# interfaces
.implements Landroid/os/PowerManagerInternal$LowPowerModeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/VibratorService;->systemReady()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/VibratorService;


# direct methods
.method constructor <init>(Lcom/android/server/VibratorService;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/VibratorService;

    .prologue
    .line 232
    iput-object p1, p0, Lcom/android/server/VibratorService$3;->this$0:Lcom/android/server/VibratorService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLowPowerModeChanged(Z)V
    .locals 1
    .param p1, "enabled"    # Z

    .prologue
    .line 235
    iget-object v0, p0, Lcom/android/server/VibratorService$3;->this$0:Lcom/android/server/VibratorService;

    invoke-static {v0}, Lcom/android/server/VibratorService;->-wrap4(Lcom/android/server/VibratorService;)V

    .line 234
    return-void
.end method
