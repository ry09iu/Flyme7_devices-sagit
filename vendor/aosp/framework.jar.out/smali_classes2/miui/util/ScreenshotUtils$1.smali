.class final Lmiui/util/ScreenshotUtils$1;
.super Ljava/lang/Object;
.source "ScreenshotUtils.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lmiui/util/ScreenshotUtils;->captureActivityScreenshot(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Boolean;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$finalHasNavigationBar:Z

.field final synthetic val$isPort:Z

.field final synthetic val$rotation:I

.field final synthetic val$shortComponentName:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;IZZ)V
    .locals 0
    .param p1, "val$shortComponentName"    # Ljava/lang/String;
    .param p2, "val$rotation"    # I
    .param p3, "val$isPort"    # Z
    .param p4, "val$finalHasNavigationBar"    # Z

    .prologue
    .line 140
    iput-object p1, p0, Lmiui/util/ScreenshotUtils$1;->val$shortComponentName:Ljava/lang/String;

    iput p2, p0, Lmiui/util/ScreenshotUtils$1;->val$rotation:I

    iput-boolean p3, p0, Lmiui/util/ScreenshotUtils$1;->val$isPort:Z

    iput-boolean p4, p0, Lmiui/util/ScreenshotUtils$1;->val$finalHasNavigationBar:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 142
    iget-object v0, p0, Lmiui/util/ScreenshotUtils$1;->val$shortComponentName:Ljava/lang/String;

    iget v1, p0, Lmiui/util/ScreenshotUtils$1;->val$rotation:I

    iget-boolean v2, p0, Lmiui/util/ScreenshotUtils$1;->val$isPort:Z

    iget-boolean v3, p0, Lmiui/util/ScreenshotUtils$1;->val$finalHasNavigationBar:Z

    invoke-static {v0, v1, v2, v3}, Lmiui/util/ScreenshotUtils;->-wrap0(Ljava/lang/String;IZZ)V

    .line 141
    return-void
.end method
