.class Lcom/miui/server/BackupManagerService$BackupHandler;
.super Landroid/os/Handler;
.source "BackupManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/server/BackupManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "BackupHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/server/BackupManagerService;


# direct methods
.method private constructor <init>(Lcom/miui/server/BackupManagerService;Landroid/os/Looper;)V
    .locals 0
    .param p1, "this$0"    # Lcom/miui/server/BackupManagerService;
    .param p2, "looper"    # Landroid/os/Looper;

    .prologue
    .line 736
    iput-object p1, p0, Lcom/miui/server/BackupManagerService$BackupHandler;->this$0:Lcom/miui/server/BackupManagerService;

    .line 737
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 736
    return-void
.end method

.method synthetic constructor <init>(Lcom/miui/server/BackupManagerService;Landroid/os/Looper;Lcom/miui/server/BackupManagerService$BackupHandler;)V
    .locals 0
    .param p1, "this$0"    # Lcom/miui/server/BackupManagerService;
    .param p2, "looper"    # Landroid/os/Looper;

    .prologue
    invoke-direct {p0, p1, p2}, Lcom/miui/server/BackupManagerService$BackupHandler;-><init>(Lcom/miui/server/BackupManagerService;Landroid/os/Looper;)V

    return-void
.end method
