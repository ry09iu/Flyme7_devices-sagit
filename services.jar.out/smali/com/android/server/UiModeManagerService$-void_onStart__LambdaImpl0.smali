.class final synthetic Lcom/android/server/UiModeManagerService$-void_onStart__LambdaImpl0;
.super Ljava/lang/Object;
.source "UiModeManagerService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/UiModeManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1010
    name = "-void_onStart__LambdaImpl0"
.end annotation


# instance fields
.field private synthetic val$this:Lcom/android/server/UiModeManagerService;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/UiModeManagerService;)V
    .locals 0

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/UiModeManagerService$-void_onStart__LambdaImpl0;->val$this:Lcom/android/server/UiModeManagerService;

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    iget-object v0, p0, Lcom/android/server/UiModeManagerService$-void_onStart__LambdaImpl0;->val$this:Lcom/android/server/UiModeManagerService;

    invoke-virtual {v0}, Lcom/android/server/UiModeManagerService;->-com_android_server_UiModeManagerService_lambda$1()V

    return-void
.end method
