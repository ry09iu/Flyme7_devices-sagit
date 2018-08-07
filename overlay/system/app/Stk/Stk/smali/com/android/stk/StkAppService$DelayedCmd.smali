.class Lcom/android/stk/StkAppService$DelayedCmd;
.super Ljava/lang/Object;
.source "StkAppService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/stk/StkAppService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "DelayedCmd"
.end annotation


# instance fields
.field id:I

.field msg:Lcom/android/internal/telephony/cat/CatCmdMessage;

.field slotId:I

.field final synthetic this$0:Lcom/android/stk/StkAppService;


# direct methods
.method constructor <init>(Lcom/android/stk/StkAppService;ILcom/android/internal/telephony/cat/CatCmdMessage;I)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/stk/StkAppService;
    .param p2, "id"    # I
    .param p3, "msg"    # Lcom/android/internal/telephony/cat/CatCmdMessage;
    .param p4, "slotId"    # I

    .prologue
    .line 277
    iput-object p1, p0, Lcom/android/stk/StkAppService$DelayedCmd;->this$0:Lcom/android/stk/StkAppService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 278
    iput p2, p0, Lcom/android/stk/StkAppService$DelayedCmd;->id:I

    .line 279
    iput-object p3, p0, Lcom/android/stk/StkAppService$DelayedCmd;->msg:Lcom/android/internal/telephony/cat/CatCmdMessage;

    .line 280
    iput p4, p0, Lcom/android/stk/StkAppService$DelayedCmd;->slotId:I

    .line 277
    return-void
.end method
