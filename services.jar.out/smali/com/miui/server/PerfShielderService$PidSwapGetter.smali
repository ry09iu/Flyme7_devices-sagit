.class Lcom/miui/server/PerfShielderService$PidSwapGetter;
.super Ljava/lang/Object;
.source "PerfShielderService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/server/PerfShielderService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "PidSwapGetter"
.end annotation


# instance fields
.field pidSwapMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/miui/server/PerfShielderService;


# direct methods
.method private constructor <init>(Lcom/miui/server/PerfShielderService;)V
    .locals 1
    .param p1, "this$0"    # Lcom/miui/server/PerfShielderService;

    .prologue
    .line 270
    iput-object p1, p0, Lcom/miui/server/PerfShielderService$PidSwapGetter;->this$0:Lcom/miui/server/PerfShielderService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 271
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/miui/server/PerfShielderService$PidSwapGetter;->pidSwapMap:Ljava/util/Map;

    .line 270
    return-void
.end method

.method synthetic constructor <init>(Lcom/miui/server/PerfShielderService;Lcom/miui/server/PerfShielderService$PidSwapGetter;)V
    .locals 0
    .param p1, "this$0"    # Lcom/miui/server/PerfShielderService;

    .prologue
    invoke-direct {p0, p1}, Lcom/miui/server/PerfShielderService$PidSwapGetter;-><init>(Lcom/miui/server/PerfShielderService;)V

    return-void
.end method


# virtual methods
.method public get(I)J
    .locals 4
    .param p1, "pid"    # I

    .prologue
    const/4 v3, 0x0

    .line 273
    if-gtz p1, :cond_0

    .line 274
    const-wide/16 v0, 0x0

    return-wide v0

    .line 276
    :cond_0
    iget-object v0, p0, Lcom/miui/server/PerfShielderService$PidSwapGetter;->pidSwapMap:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 277
    iget-object v0, p0, Lcom/miui/server/PerfShielderService$PidSwapGetter;->pidSwapMap:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iget-object v2, p0, Lcom/miui/server/PerfShielderService$PidSwapGetter;->this$0:Lcom/miui/server/PerfShielderService;

    invoke-static {v2, p1}, Lcom/miui/server/PerfShielderService;->-wrap0(Lcom/miui/server/PerfShielderService;I)[J

    move-result-object v2

    aget-wide v2, v2, v3

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 279
    :cond_1
    iget-object v0, p0, Lcom/miui/server/PerfShielderService$PidSwapGetter;->pidSwapMap:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    return-wide v0
.end method
