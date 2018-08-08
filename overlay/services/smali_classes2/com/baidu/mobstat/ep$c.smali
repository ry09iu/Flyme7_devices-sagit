.class Lcom/baidu/mobstat/ep$c;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/baidu/mobstat/ep;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "c"
.end annotation


# instance fields
.field public a:Ljava/lang/String;

.field public b:Ljava/lang/String;

.field public c:Ljava/lang/String;

.field public d:Lcom/baidu/mobstat/ep$c;


# direct methods
.method public constructor <init>(Landroid/view/View;Lcom/baidu/mobstat/ep$c;)V
    .locals 2

    .prologue
    .line 174
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 175
    iput-object p2, p0, Lcom/baidu/mobstat/ep$c;->d:Lcom/baidu/mobstat/ep$c;

    .line 177
    invoke-static {p1}, Lcom/baidu/mobstat/eq;->m(Landroid/view/View;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/baidu/mobstat/ep$c;->a:Ljava/lang/String;

    .line 179
    invoke-static {p1}, Lcom/baidu/mobstat/eq;->b(Landroid/view/View;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/baidu/mobstat/ep$c;->b:Ljava/lang/String;

    .line 181
    invoke-static {p1}, Lcom/baidu/mobstat/eq;->d(Landroid/view/View;)Ljava/lang/String;

    move-result-object v0

    .line 182
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 189
    :cond_0
    :goto_0
    iput-object v0, p0, Lcom/baidu/mobstat/ep$c;->c:Ljava/lang/String;

    .line 190
    return-void

    .line 183
    :cond_1
    invoke-virtual {p0}, Lcom/baidu/mobstat/ep$c;->c()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/baidu/mobstat/eq;->a(Landroid/view/View;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 184
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 185
    invoke-static {p1}, Lcom/baidu/mobstat/eq;->c(Landroid/view/View;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 195
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 196
    :goto_0
    if-nez p0, :cond_0

    .line 202
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 197
    :cond_0
    invoke-virtual {p0, v2}, Lcom/baidu/mobstat/ep$c;->a(Z)Ljava/lang/String;

    move-result-object v1

    .line 198
    invoke-virtual {v0, v2, v1}, Ljava/lang/StringBuilder;->insert(ILjava/lang/String;)Ljava/lang/StringBuilder;

    .line 199
    iget-object p0, p0, Lcom/baidu/mobstat/ep$c;->d:Lcom/baidu/mobstat/ep$c;

    goto :goto_0
.end method

.method public a(Z)Ljava/lang/String;
    .locals 2

    .prologue
    .line 232
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "/"

    .line 233
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 234
    iget-object v1, p0, Lcom/baidu/mobstat/ep$c;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 236
    if-eqz p1, :cond_0

    .line 242
    :goto_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    const-string/jumbo v1, "["

    .line 237
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 238
    iget-object v1, p0, Lcom/baidu/mobstat/ep$c;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v1, "]"

    .line 239
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0
.end method

.method public b()Ljava/lang/String;
    .locals 6

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 210
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    move v0, v1

    .line 211
    :goto_0
    if-nez p0, :cond_0

    .line 228
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 214
    :cond_0
    if-eqz v0, :cond_1

    move v3, v0

    move v0, v1

    .line 223
    :goto_1
    invoke-virtual {p0, v0}, Lcom/baidu/mobstat/ep$c;->a(Z)Ljava/lang/String;

    move-result-object v0

    .line 224
    invoke-virtual {v4, v1, v0}, Ljava/lang/StringBuilder;->insert(ILjava/lang/String;)Ljava/lang/StringBuilder;

    .line 225
    iget-object p0, p0, Lcom/baidu/mobstat/ep$c;->d:Lcom/baidu/mobstat/ep$c;

    move v0, v3

    .line 226
    goto :goto_0

    .line 215
    :cond_1
    invoke-virtual {p0}, Lcom/baidu/mobstat/ep$c;->c()Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v5, "ListView"

    .line 216
    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    :cond_2
    move v0, v2

    move v3, v2

    .line 219
    goto :goto_1

    :cond_3
    const-string/jumbo v5, "RecyclerView"

    .line 216
    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_2

    const-string/jumbo v5, "GridView"

    .line 217
    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    move v3, v0

    move v0, v1

    goto :goto_1
.end method

.method public c()Ljava/lang/String;
    .locals 1

    .prologue
    .line 246
    iget-object v0, p0, Lcom/baidu/mobstat/ep$c;->d:Lcom/baidu/mobstat/ep$c;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/baidu/mobstat/ep$c;->d:Lcom/baidu/mobstat/ep$c;

    iget-object v0, v0, Lcom/baidu/mobstat/ep$c;->b:Ljava/lang/String;

    :goto_0
    return-object v0

    :cond_0
    const-string/jumbo v0, ""

    goto :goto_0
.end method
