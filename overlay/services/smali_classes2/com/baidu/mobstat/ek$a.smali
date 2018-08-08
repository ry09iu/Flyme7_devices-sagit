.class Lcom/baidu/mobstat/ek$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/baidu/mobstat/ek;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "a"
.end annotation


# instance fields
.field private volatile a:Z

.field private b:Z

.field private final c:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private final d:Lcom/baidu/mobstat/es;

.field private final e:Landroid/os/Handler;

.field private final f:Landroid/os/Handler;

.field private g:Lorg/json/JSONObject;

.field private h:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/app/Activity;",
            ">;"
        }
    .end annotation
.end field

.field private i:Z

.field private j:Z

.field private k:Z

.field private l:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>(Landroid/app/Activity;Landroid/view/View;Lcom/baidu/mobstat/es;Landroid/os/Handler;Landroid/os/Handler;Lorg/json/JSONObject;ZZZ)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 126
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 220
    iput-object v0, p0, Lcom/baidu/mobstat/ek$a;->l:Ljava/lang/Runnable;

    .line 127
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/baidu/mobstat/ek$a;->h:Ljava/lang/ref/WeakReference;

    .line 128
    iput-object p6, p0, Lcom/baidu/mobstat/ek$a;->g:Lorg/json/JSONObject;

    .line 129
    iput-object p3, p0, Lcom/baidu/mobstat/ek$a;->d:Lcom/baidu/mobstat/es;

    .line 130
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/baidu/mobstat/ek$a;->c:Ljava/lang/ref/WeakReference;

    .line 131
    iput-object p4, p0, Lcom/baidu/mobstat/ek$a;->e:Landroid/os/Handler;

    .line 132
    iput-object p5, p0, Lcom/baidu/mobstat/ek$a;->f:Landroid/os/Handler;

    .line 133
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/baidu/mobstat/ek$a;->b:Z

    .line 134
    iput-boolean v1, p0, Lcom/baidu/mobstat/ek$a;->a:Z

    .line 135
    iput-boolean p7, p0, Lcom/baidu/mobstat/ek$a;->i:Z

    .line 137
    iput-boolean p8, p0, Lcom/baidu/mobstat/ek$a;->j:Z

    .line 139
    iput-boolean p9, p0, Lcom/baidu/mobstat/ek$a;->k:Z

    .line 141
    invoke-virtual {p2}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    .line 142
    invoke-virtual {v0}, Landroid/view/ViewTreeObserver;->isAlive()Z

    move-result v1

    if-nez v1, :cond_0

    .line 145
    :goto_0
    invoke-virtual {p0}, Lcom/baidu/mobstat/ek$a;->run()V

    .line 146
    return-void

    .line 143
    :cond_0
    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    goto :goto_0
.end method

.method private a(Lcom/baidu/mobstat/es;Landroid/os/Handler;)V
    .locals 4

    .prologue
    .line 256
    if-eqz p1, :cond_0

    .line 260
    if-eqz p2, :cond_1

    .line 264
    new-instance v0, Lcom/baidu/mobstat/em;

    invoke-direct {v0, p0, p1}, Lcom/baidu/mobstat/em;-><init>(Lcom/baidu/mobstat/ek$a;Lcom/baidu/mobstat/es;)V

    const-wide/16 v2, 0xfa

    .line 274
    invoke-virtual {p2, v0, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 275
    return-void

    .line 257
    :cond_0
    return-void

    .line 261
    :cond_1
    return-void
.end method

.method private a(Ljava/lang/ref/WeakReference;Lorg/json/JSONObject;Lcom/baidu/mobstat/es;Landroid/os/Handler;Z)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/app/Activity;",
            ">;",
            "Lorg/json/JSONObject;",
            "Lcom/baidu/mobstat/es;",
            "Landroid/os/Handler;",
            "Z)V"
        }
    .end annotation

    .prologue
    .line 226
    if-eqz p3, :cond_0

    .line 230
    if-eqz p4, :cond_1

    .line 234
    new-instance v0, Lcom/baidu/mobstat/el;

    move-object v1, p0

    move-object v2, p1

    move v3, p5

    move-object v4, p3

    move-object v5, p2

    invoke-direct/range {v0 .. v5}, Lcom/baidu/mobstat/el;-><init>(Lcom/baidu/mobstat/ek$a;Ljava/lang/ref/WeakReference;ZLcom/baidu/mobstat/es;Lorg/json/JSONObject;)V

    .line 247
    iget-object v1, p0, Lcom/baidu/mobstat/ek$a;->l:Ljava/lang/Runnable;

    if-nez v1, :cond_2

    .line 250
    :goto_0
    iput-object v0, p0, Lcom/baidu/mobstat/ek$a;->l:Ljava/lang/Runnable;

    const-wide/16 v2, 0xfa

    .line 252
    invoke-virtual {p4, v0, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 253
    return-void

    .line 227
    :cond_0
    return-void

    .line 231
    :cond_1
    return-void

    .line 248
    :cond_2
    iget-object v1, p0, Lcom/baidu/mobstat/ek$a;->l:Ljava/lang/Runnable;

    invoke-virtual {p4, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method private b()V
    .locals 4
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 190
    iget-boolean v0, p0, Lcom/baidu/mobstat/ek$a;->b:Z

    if-nez v0, :cond_0

    .line 205
    :goto_0
    iput-boolean v3, p0, Lcom/baidu/mobstat/ek$a;->b:Z

    .line 206
    return-void

    .line 191
    :cond_0
    iget-object v0, p0, Lcom/baidu/mobstat/ek$a;->c:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 192
    if-nez v0, :cond_2

    .line 203
    :cond_1
    :goto_1
    iget-object v0, p0, Lcom/baidu/mobstat/ek$a;->d:Lcom/baidu/mobstat/es;

    iget-object v1, p0, Lcom/baidu/mobstat/ek$a;->f:Landroid/os/Handler;

    invoke-direct {p0, v0, v1}, Lcom/baidu/mobstat/ek$a;->a(Lcom/baidu/mobstat/es;Landroid/os/Handler;)V

    goto :goto_0

    .line 193
    :cond_2
    invoke-virtual {v0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    .line 194
    invoke-virtual {v0}, Landroid/view/ViewTreeObserver;->isAlive()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 195
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x10

    if-lt v1, v2, :cond_3

    .line 198
    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->removeOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    goto :goto_1

    .line 196
    :cond_3
    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->removeGlobalOnLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    goto :goto_1
.end method


# virtual methods
.method public a()V
    .locals 1

    .prologue
    .line 184
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/baidu/mobstat/ek$a;->a:Z

    .line 185
    iget-object v0, p0, Lcom/baidu/mobstat/ek$a;->e:Landroid/os/Handler;

    invoke-virtual {v0, p0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 186
    return-void
.end method

.method public onGlobalLayout()V
    .locals 0

    .prologue
    .line 150
    invoke-virtual {p0}, Lcom/baidu/mobstat/ek$a;->run()V

    .line 151
    return-void
.end method

.method public run()V
    .locals 6

    .prologue
    .line 155
    iget-boolean v0, p0, Lcom/baidu/mobstat/ek$a;->b:Z

    if-eqz v0, :cond_1

    .line 159
    iget-object v0, p0, Lcom/baidu/mobstat/ek$a;->c:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 160
    if-nez v0, :cond_2

    .line 161
    :cond_0
    invoke-direct {p0}, Lcom/baidu/mobstat/ek$a;->b()V

    .line 162
    return-void

    .line 156
    :cond_1
    return-void

    .line 160
    :cond_2
    iget-boolean v0, p0, Lcom/baidu/mobstat/ek$a;->a:Z

    if-nez v0, :cond_0

    .line 165
    invoke-static {}, Lcom/baidu/mobstat/ei;->c()Lcom/baidu/mobstat/ei;

    move-result-object v0

    invoke-virtual {v0}, Lcom/baidu/mobstat/ei;->b()Z

    move-result v0

    if-nez v0, :cond_4

    .line 168
    :cond_3
    :goto_0
    invoke-static {}, Lcom/baidu/mobstat/eo;->c()Lcom/baidu/mobstat/eo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/baidu/mobstat/eo;->b()Z

    move-result v0

    if-nez v0, :cond_5

    .line 172
    :goto_1
    iget-object v0, p0, Lcom/baidu/mobstat/ek$a;->h:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    .line 173
    if-nez v0, :cond_6

    .line 180
    :goto_2
    iget-object v0, p0, Lcom/baidu/mobstat/ek$a;->e:Landroid/os/Handler;

    invoke-virtual {v0, p0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 181
    return-void

    .line 165
    :cond_4
    iget-boolean v0, p0, Lcom/baidu/mobstat/ek$a;->k:Z

    if-eqz v0, :cond_3

    .line 166
    invoke-static {}, Lcom/baidu/mobstat/ei;->c()Lcom/baidu/mobstat/ei;

    move-result-object v0

    const-string/jumbo v1, "onGlobalLayout"

    invoke-virtual {v0, v1}, Lcom/baidu/mobstat/ei;->a(Ljava/lang/String;)V

    goto :goto_0

    .line 169
    :cond_5
    invoke-static {}, Lcom/baidu/mobstat/eo;->c()Lcom/baidu/mobstat/eo;

    move-result-object v0

    const-string/jumbo v1, "onGlobalLayout"

    invoke-virtual {v0, v1}, Lcom/baidu/mobstat/eo;->a(Ljava/lang/String;)V

    goto :goto_1

    .line 174
    :cond_6
    iget-boolean v1, p0, Lcom/baidu/mobstat/ek$a;->i:Z

    iget-boolean v2, p0, Lcom/baidu/mobstat/ek$a;->k:Z

    invoke-static {v0, v1, v2}, Lcom/baidu/mobstat/ek;->a(Landroid/app/Activity;ZZ)V

    .line 177
    iget-object v1, p0, Lcom/baidu/mobstat/ek$a;->h:Ljava/lang/ref/WeakReference;

    iget-object v2, p0, Lcom/baidu/mobstat/ek$a;->g:Lorg/json/JSONObject;

    iget-object v3, p0, Lcom/baidu/mobstat/ek$a;->d:Lcom/baidu/mobstat/es;

    iget-object v4, p0, Lcom/baidu/mobstat/ek$a;->f:Landroid/os/Handler;

    iget-boolean v5, p0, Lcom/baidu/mobstat/ek$a;->j:Z

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/baidu/mobstat/ek$a;->a(Ljava/lang/ref/WeakReference;Lorg/json/JSONObject;Lcom/baidu/mobstat/es;Landroid/os/Handler;Z)V

    goto :goto_2
.end method
