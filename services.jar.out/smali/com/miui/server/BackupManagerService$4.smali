.class Lcom/miui/server/BackupManagerService$4;
.super Ljava/lang/Object;
.source "BackupManagerService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/server/BackupManagerService;->waitForTheLastWorkingTask()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/server/BackupManagerService;


# direct methods
.method constructor <init>(Lcom/miui/server/BackupManagerService;)V
    .locals 0
    .param p1, "this$0"    # Lcom/miui/server/BackupManagerService;

    .prologue
    .line 462
    iput-object p1, p0, Lcom/miui/server/BackupManagerService$4;->this$0:Lcom/miui/server/BackupManagerService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 465
    iget-object v0, p0, Lcom/miui/server/BackupManagerService$4;->this$0:Lcom/miui/server/BackupManagerService;

    invoke-static {v0}, Lcom/miui/server/BackupManagerService;->-wrap1(Lcom/miui/server/BackupManagerService;)V

    .line 464
    return-void
.end method
