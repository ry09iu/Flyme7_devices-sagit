.class public Lcom/android/server/input/MiuiInputManagerService;
.super Lcom/android/server/input/MiuiBaseInputManagerService;
.source "MiuiInputManagerService.java"


# instance fields
.field private mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/os/Handler;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "handler"    # Landroid/os/Handler;

    .prologue
    .line 14
    invoke-direct {p0, p1, p2}, Lcom/android/server/input/MiuiBaseInputManagerService;-><init>(Landroid/content/Context;Landroid/os/Handler;)V

    .line 15
    iput-object p1, p0, Lcom/android/server/input/MiuiInputManagerService;->mContext:Landroid/content/Context;

    .line 13
    return-void
.end method


# virtual methods
.method public start()V
    .locals 1

    .prologue
    .line 20
    invoke-super {p0}, Lcom/android/server/input/MiuiBaseInputManagerService;->start()V

    .line 21
    iget-object v0, p0, Lcom/android/server/input/MiuiInputManagerService;->mContext:Landroid/content/Context;

    invoke-static {v0, p0}, Lcom/android/server/HandyMode;->initialize(Landroid/content/Context;Lcom/android/server/input/InputManagerService;)V

    .line 19
    return-void
.end method
