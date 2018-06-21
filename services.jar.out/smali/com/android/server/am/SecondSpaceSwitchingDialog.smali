.class Lcom/android/server/am/SecondSpaceSwitchingDialog;
.super Lcom/android/server/am/BaseUserSwitchingDialog;
.source "SecondSpaceSwitchingDialog.java"


# direct methods
.method public constructor <init>(Lcom/android/server/am/ActivityManagerService;Landroid/content/Context;I)V
    .locals 1
    .param p1, "service"    # Lcom/android/server/am/ActivityManagerService;
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "userId"    # I

    .prologue
    .line 23
    const v0, 0x110c0009

    invoke-direct {p0, p1, p2, v0, p3}, Lcom/android/server/am/BaseUserSwitchingDialog;-><init>(Lcom/android/server/am/ActivityManagerService;Landroid/content/Context;II)V

    .line 22
    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 6
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v5, -0x1

    const/4 v4, 0x0

    .line 27
    invoke-super {p0, p1}, Lcom/android/server/am/BaseUserSwitchingDialog;->onCreate(Landroid/os/Bundle;)V

    .line 28
    invoke-virtual {p0}, Lcom/android/server/am/SecondSpaceSwitchingDialog;->getWindow()Landroid/view/Window;

    move-result-object v2

    .line 29
    .local v2, "win":Landroid/view/Window;
    invoke-virtual {v2}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3, v4, v4, v4, v4}, Landroid/view/View;->setPadding(IIII)V

    .line 30
    invoke-virtual {v2}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    .line 31
    .local v0, "lp":Landroid/view/WindowManager$LayoutParams;
    iput v5, v0, Landroid/view/WindowManager$LayoutParams;->width:I

    .line 32
    iput v5, v0, Landroid/view/WindowManager$LayoutParams;->height:I

    .line 33
    invoke-virtual {v2, v0}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 35
    invoke-virtual {v2}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v3

    const/16 v4, 0xf06

    invoke-virtual {v3, v4}, Landroid/view/View;->setSystemUiVisibility(I)V

    .line 41
    invoke-virtual {p0}, Lcom/android/server/am/SecondSpaceSwitchingDialog;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v3

    const v4, 0x1103001e

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 42
    .local v1, "view":Landroid/view/View;
    invoke-virtual {p0, v1}, Lcom/android/server/am/SecondSpaceSwitchingDialog;->setContentView(Landroid/view/View;)V

    .line 26
    return-void
.end method
