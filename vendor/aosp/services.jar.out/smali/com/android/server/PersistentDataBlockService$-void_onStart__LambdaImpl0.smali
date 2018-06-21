.class final synthetic Lcom/android/server/PersistentDataBlockService$-void_onStart__LambdaImpl0;
.super Ljava/lang/Object;
.source "PersistentDataBlockService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/PersistentDataBlockService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1010
    name = "-void_onStart__LambdaImpl0"
.end annotation


# instance fields
.field private synthetic val$this:Lcom/android/server/PersistentDataBlockService;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/PersistentDataBlockService;)V
    .locals 0

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/PersistentDataBlockService$-void_onStart__LambdaImpl0;->val$this:Lcom/android/server/PersistentDataBlockService;

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    iget-object v0, p0, Lcom/android/server/PersistentDataBlockService$-void_onStart__LambdaImpl0;->val$this:Lcom/android/server/PersistentDataBlockService;

    invoke-virtual {v0}, Lcom/android/server/PersistentDataBlockService;->-com_android_server_PersistentDataBlockService_lambda$1()V

    return-void
.end method
