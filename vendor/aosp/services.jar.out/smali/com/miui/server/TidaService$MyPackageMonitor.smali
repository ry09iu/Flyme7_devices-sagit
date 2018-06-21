.class Lcom/miui/server/TidaService$MyPackageMonitor;
.super Lcom/android/internal/content/PackageMonitor;
.source "TidaService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/server/TidaService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MyPackageMonitor"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/server/TidaService;


# direct methods
.method private constructor <init>(Lcom/miui/server/TidaService;)V
    .locals 0
    .param p1, "this$0"    # Lcom/miui/server/TidaService;

    .prologue
    .line 40
    iput-object p1, p0, Lcom/miui/server/TidaService$MyPackageMonitor;->this$0:Lcom/miui/server/TidaService;

    invoke-direct {p0}, Lcom/android/internal/content/PackageMonitor;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/miui/server/TidaService;Lcom/miui/server/TidaService$MyPackageMonitor;)V
    .locals 0
    .param p1, "this$0"    # Lcom/miui/server/TidaService;

    .prologue
    invoke-direct {p0, p1}, Lcom/miui/server/TidaService$MyPackageMonitor;-><init>(Lcom/miui/server/TidaService;)V

    return-void
.end method


# virtual methods
.method public onUidRemoved(I)V
    .locals 1
    .param p1, "uid"    # I

    .prologue
    .line 43
    iget-object v0, p0, Lcom/miui/server/TidaService$MyPackageMonitor;->this$0:Lcom/miui/server/TidaService;

    invoke-static {v0, p1}, Lcom/miui/server/TidaService;->-wrap0(Lcom/miui/server/TidaService;I)V

    .line 42
    return-void
.end method
