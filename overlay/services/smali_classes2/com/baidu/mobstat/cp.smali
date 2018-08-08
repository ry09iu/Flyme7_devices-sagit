.class public Lcom/baidu/mobstat/cp;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/baidu/mobstat/cp$a;
    }
.end annotation


# static fields
.field private static volatile a:Z


# instance fields
.field private b:Lcom/baidu/mobstat/cp$a;

.field private c:Landroid/app/Activity;

.field private d:Landroid/os/Handler;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 20
    const/4 v0, 0x1

    sput-boolean v0, Lcom/baidu/mobstat/cp;->a:Z

    return-void
.end method

.method public constructor <init>(Lcom/baidu/mobstat/cp$a;)V
    .locals 2

    .prologue
    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    new-instance v0, Lcom/baidu/mobstat/cq;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/baidu/mobstat/cq;-><init>(Lcom/baidu/mobstat/cp;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/baidu/mobstat/cp;->d:Landroid/os/Handler;

    .line 31
    iput-object p1, p0, Lcom/baidu/mobstat/cp;->b:Lcom/baidu/mobstat/cp$a;

    .line 32
    return-void
.end method

.method private a(Landroid/view/Window$Callback;)Landroid/view/Window$Callback;
    .locals 2

    .prologue
    move-object v0, p1

    .line 106
    :goto_0
    if-nez v0, :cond_1

    .line 111
    :cond_0
    return-object v0

    .line 106
    :cond_1
    instance-of v1, v0, Lcom/baidu/mobstat/cs;

    if-eqz v1, :cond_0

    .line 107
    check-cast v0, Lcom/baidu/mobstat/cs;

    .line 108
    invoke-virtual {v0}, Lcom/baidu/mobstat/cs;->a()Landroid/view/Window$Callback;

    move-result-object v0

    goto :goto_0
.end method

.method static synthetic a(Lcom/baidu/mobstat/cp;)Lcom/baidu/mobstat/cp$a;
    .locals 1

    .prologue
    .line 13
    iget-object v0, p0, Lcom/baidu/mobstat/cp;->b:Lcom/baidu/mobstat/cp$a;

    return-object v0
.end method

.method public static a(Z)V
    .locals 0

    .prologue
    .line 35
    if-nez p0, :cond_0

    .line 39
    :goto_0
    sput-boolean p0, Lcom/baidu/mobstat/cp;->a:Z

    .line 40
    return-void

    .line 36
    :cond_0
    invoke-static {}, Lcom/baidu/mobstat/cw;->a()V

    goto :goto_0
.end method

.method public static a()Z
    .locals 1

    .prologue
    .line 43
    sget-boolean v0, Lcom/baidu/mobstat/cp;->a:Z

    return v0
.end method

.method static synthetic b(Lcom/baidu/mobstat/cp;)Landroid/os/Handler;
    .locals 1

    .prologue
    .line 13
    iget-object v0, p0, Lcom/baidu/mobstat/cp;->d:Landroid/os/Handler;

    return-object v0
.end method

.method private b(Landroid/app/Activity;)V
    .locals 0

    .prologue
    .line 76
    invoke-direct {p0, p1}, Lcom/baidu/mobstat/cp;->d(Landroid/app/Activity;)V

    .line 77
    return-void
.end method

.method private c(Landroid/app/Activity;)V
    .locals 2

    .prologue
    .line 85
    if-eqz p1, :cond_0

    .line 89
    invoke-virtual {p1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    .line 90
    if-eqz v0, :cond_1

    .line 94
    invoke-virtual {v0}, Landroid/view/Window;->getCallback()Landroid/view/Window$Callback;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/baidu/mobstat/cp;->a(Landroid/view/Window$Callback;)Landroid/view/Window$Callback;

    move-result-object v1

    .line 95
    invoke-virtual {v0, v1}, Landroid/view/Window;->setCallback(Landroid/view/Window$Callback;)V

    .line 96
    return-void

    .line 86
    :cond_0
    return-void

    .line 91
    :cond_1
    return-void
.end method

.method private d(Landroid/app/Activity;)V
    .locals 4

    .prologue
    .line 116
    invoke-virtual {p1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    .line 117
    if-eqz v0, :cond_0

    .line 121
    invoke-virtual {v0}, Landroid/view/Window;->getCallback()Landroid/view/Window$Callback;

    move-result-object v1

    .line 124
    if-eqz v1, :cond_1

    .line 128
    new-instance v2, Lcom/baidu/mobstat/cs;

    new-instance v3, Lcom/baidu/mobstat/cr;

    invoke-direct {v3, p0}, Lcom/baidu/mobstat/cr;-><init>(Lcom/baidu/mobstat/cp;)V

    invoke-direct {v2, v1, v3}, Lcom/baidu/mobstat/cs;-><init>(Landroid/view/Window$Callback;Lcom/baidu/mobstat/cs$a;)V

    invoke-virtual {v0, v2}, Landroid/view/Window;->setCallback(Landroid/view/Window$Callback;)V

    .line 166
    return-void

    .line 118
    :cond_0
    return-void

    .line 125
    :cond_1
    return-void
.end method


# virtual methods
.method public a(Landroid/app/Activity;)V
    .locals 0

    .prologue
    .line 64
    if-nez p1, :cond_0

    .line 68
    :goto_0
    return-void

    .line 65
    :cond_0
    iput-object p1, p0, Lcom/baidu/mobstat/cp;->c:Landroid/app/Activity;

    .line 66
    invoke-direct {p0, p1}, Lcom/baidu/mobstat/cp;->b(Landroid/app/Activity;)V

    goto :goto_0
.end method

.method public b()V
    .locals 1

    .prologue
    .line 71
    iget-object v0, p0, Lcom/baidu/mobstat/cp;->c:Landroid/app/Activity;

    invoke-direct {p0, v0}, Lcom/baidu/mobstat/cp;->c(Landroid/app/Activity;)V

    const/4 v0, 0x0

    .line 72
    iput-object v0, p0, Lcom/baidu/mobstat/cp;->c:Landroid/app/Activity;

    .line 73
    return-void
.end method
