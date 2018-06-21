.class Lcom/miui/server/MiuiCompatModePackages$5;
.super Ljava/lang/Object;
.source "MiuiCompatModePackages.java"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/server/MiuiCompatModePackages;->createDialog()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/server/MiuiCompatModePackages;


# direct methods
.method constructor <init>(Lcom/miui/server/MiuiCompatModePackages;)V
    .locals 0
    .param p1, "this$0"    # Lcom/miui/server/MiuiCompatModePackages;

    .prologue
    .line 490
    iput-object p1, p0, Lcom/miui/server/MiuiCompatModePackages$5;->this$0:Lcom/miui/server/MiuiCompatModePackages;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 2
    .param p1, "dialog"    # Landroid/content/DialogInterface;

    .prologue
    .line 493
    iget-object v0, p0, Lcom/miui/server/MiuiCompatModePackages$5;->this$0:Lcom/miui/server/MiuiCompatModePackages;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/miui/server/MiuiCompatModePackages;->-set0(Lcom/miui/server/MiuiCompatModePackages;Lmiui/app/AlertDialog;)Lmiui/app/AlertDialog;

    .line 492
    return-void
.end method
