.class Lcom/baidu/mobstat/co$b;
.super Lcom/baidu/mobstat/fm;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/baidu/mobstat/co;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "b"
.end annotation


# instance fields
.field final synthetic a:Lcom/baidu/mobstat/co;


# direct methods
.method public constructor <init>(Lcom/baidu/mobstat/co;Ljava/net/URI;ILjava/net/Socket;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .prologue
    .line 105
    iput-object p1, p0, Lcom/baidu/mobstat/co$b;->a:Lcom/baidu/mobstat/co;

    .line 106
    new-instance v0, Lcom/baidu/mobstat/fq;

    invoke-direct {v0}, Lcom/baidu/mobstat/fq;-><init>()V

    const/4 v1, 0x0

    invoke-direct {p0, p2, v0, v1, p3}, Lcom/baidu/mobstat/fm;-><init>(Ljava/net/URI;Lcom/baidu/mobstat/fo;Ljava/util/Map;I)V

    .line 107
    invoke-virtual {p0, p4}, Lcom/baidu/mobstat/co$b;->a(Ljava/net/Socket;)V

    .line 108
    return-void
.end method


# virtual methods
.method public a(ILjava/lang/String;Z)V
    .locals 4

    .prologue
    .line 201
    invoke-static {}, Lcom/baidu/mobstat/ei;->c()Lcom/baidu/mobstat/ei;

    move-result-object v0

    invoke-virtual {v0}, Lcom/baidu/mobstat/ei;->b()Z

    move-result v0

    if-nez v0, :cond_0

    .line 206
    :goto_0
    invoke-static {}, Lcom/baidu/mobstat/eh;->c()Lcom/baidu/mobstat/eh;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "autotrace: connect closed, server:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " reason:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/baidu/mobstat/eh;->a(Ljava/lang/String;)V

    .line 207
    invoke-static {}, Lcom/baidu/mobstat/ct;->a()Lcom/baidu/mobstat/ct;

    move-result-object v0

    const/4 v1, 0x5

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "remote:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "|reason:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/baidu/mobstat/ct;->a(ILjava/lang/String;)V

    .line 210
    iget-object v0, p0, Lcom/baidu/mobstat/co$b;->a:Lcom/baidu/mobstat/co;

    invoke-static {v0}, Lcom/baidu/mobstat/co;->a(Lcom/baidu/mobstat/co;)Lcom/baidu/mobstat/co$a;

    move-result-object v0

    if-nez v0, :cond_1

    .line 213
    :goto_1
    return-void

    .line 202
    :cond_0
    invoke-static {}, Lcom/baidu/mobstat/ei;->c()Lcom/baidu/mobstat/ei;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onClose,  reason:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ", remote:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/baidu/mobstat/ei;->a(Ljava/lang/String;)V

    goto :goto_0

    .line 211
    :cond_1
    iget-object v0, p0, Lcom/baidu/mobstat/co$b;->a:Lcom/baidu/mobstat/co;

    invoke-static {v0}, Lcom/baidu/mobstat/co;->a(Lcom/baidu/mobstat/co;)Lcom/baidu/mobstat/co$a;

    move-result-object v0

    invoke-interface {v0, p3}, Lcom/baidu/mobstat/co$a;->a(Z)V

    goto :goto_1
.end method

.method public a(Lcom/baidu/mobstat/gk;)V
    .locals 2

    .prologue
    .line 116
    invoke-static {}, Lcom/baidu/mobstat/ei;->c()Lcom/baidu/mobstat/ei;

    move-result-object v0

    invoke-virtual {v0}, Lcom/baidu/mobstat/ei;->b()Z

    move-result v0

    if-nez v0, :cond_0

    .line 120
    :goto_0
    iget-object v0, p0, Lcom/baidu/mobstat/co$b;->a:Lcom/baidu/mobstat/co;

    invoke-static {v0}, Lcom/baidu/mobstat/co;->a(Lcom/baidu/mobstat/co;)Lcom/baidu/mobstat/co$a;

    move-result-object v0

    if-nez v0, :cond_1

    .line 123
    :goto_1
    return-void

    .line 117
    :cond_0
    invoke-static {}, Lcom/baidu/mobstat/ei;->c()Lcom/baidu/mobstat/ei;

    move-result-object v0

    const-string/jumbo v1, "onOpen"

    invoke-virtual {v0, v1}, Lcom/baidu/mobstat/ei;->a(Ljava/lang/String;)V

    goto :goto_0

    .line 121
    :cond_1
    iget-object v0, p0, Lcom/baidu/mobstat/co$b;->a:Lcom/baidu/mobstat/co;

    invoke-static {v0}, Lcom/baidu/mobstat/co;->a(Lcom/baidu/mobstat/co;)Lcom/baidu/mobstat/co$a;

    move-result-object v0

    invoke-interface {v0}, Lcom/baidu/mobstat/co$a;->a()V

    goto :goto_1
.end method

.method public a(Ljava/lang/Exception;)V
    .locals 2

    .prologue
    .line 217
    invoke-static {}, Lcom/baidu/mobstat/ei;->c()Lcom/baidu/mobstat/ei;

    move-result-object v0

    invoke-virtual {v0}, Lcom/baidu/mobstat/ei;->b()Z

    move-result v0

    if-nez v0, :cond_0

    .line 220
    :goto_0
    return-void

    .line 218
    :cond_0
    invoke-static {}, Lcom/baidu/mobstat/ei;->c()Lcom/baidu/mobstat/ei;

    move-result-object v0

    const-string/jumbo v1, "onError"

    invoke-virtual {v0, v1}, Lcom/baidu/mobstat/ei;->a(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public a(Ljava/lang/String;)V
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 127
    invoke-static {}, Lcom/baidu/mobstat/ei;->c()Lcom/baidu/mobstat/ei;

    move-result-object v1

    invoke-virtual {v1}, Lcom/baidu/mobstat/ei;->b()Z

    move-result v1

    if-nez v1, :cond_1

    .line 131
    :goto_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 137
    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object v2, v1

    .line 141
    :goto_1
    if-eqz v2, :cond_3

    :try_start_1
    const-string/jumbo v1, "type"

    .line 147
    invoke-virtual {v2, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_3

    move-result-object v0

    .line 151
    :goto_2
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_4

    const-string/jumbo v1, "deploy"

    .line 155
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5

    const/4 v1, -0x1

    :try_start_2
    const-string/jumbo v0, "data"

    .line 167
    invoke-virtual {v2, v0}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/json/JSONObject;

    const-string/jumbo v2, "status"

    .line 168
    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    move-result v0

    .line 173
    :goto_3
    packed-switch v0, :pswitch_data_0

    .line 194
    :cond_0
    :goto_4
    :pswitch_0
    return-void

    .line 128
    :cond_1
    invoke-static {}, Lcom/baidu/mobstat/ei;->c()Lcom/baidu/mobstat/ei;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "onMessage: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/baidu/mobstat/ei;->a(Ljava/lang/String;)V

    goto :goto_0

    .line 132
    :cond_2
    return-void

    .line 140
    :catch_0
    move-exception v1

    move-object v2, v0

    goto :goto_1

    .line 142
    :cond_3
    return-void

    .line 152
    :cond_4
    return-void

    :cond_5
    :try_start_3
    const-string/jumbo v0, "data"

    .line 157
    invoke-virtual {v2, v0}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/json/JSONObject;

    .line 158
    iget-object v1, p0, Lcom/baidu/mobstat/co$b;->a:Lcom/baidu/mobstat/co;

    invoke-static {v1}, Lcom/baidu/mobstat/co;->a(Lcom/baidu/mobstat/co;)Lcom/baidu/mobstat/co$a;

    move-result-object v1

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v0}, Lcom/baidu/mobstat/co$a;->a(Ljava/lang/String;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    .line 162
    :goto_5
    return-void

    .line 171
    :catch_1
    move-exception v0

    move v0, v1

    goto :goto_3

    .line 175
    :pswitch_1
    invoke-static {}, Lcom/baidu/mobstat/eh;->c()Lcom/baidu/mobstat/eh;

    move-result-object v0

    const-string/jumbo v1, "autotrace: connect confirm"

    invoke-virtual {v0, v1}, Lcom/baidu/mobstat/eh;->a(Ljava/lang/String;)V

    .line 176
    invoke-static {}, Lcom/baidu/mobstat/ct;->a()Lcom/baidu/mobstat/ct;

    move-result-object v0

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Lcom/baidu/mobstat/ct;->a(I)V

    .line 178
    iget-object v0, p0, Lcom/baidu/mobstat/co$b;->a:Lcom/baidu/mobstat/co;

    invoke-static {v0}, Lcom/baidu/mobstat/co;->a(Lcom/baidu/mobstat/co;)Lcom/baidu/mobstat/co$a;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 179
    iget-object v0, p0, Lcom/baidu/mobstat/co$b;->a:Lcom/baidu/mobstat/co;

    invoke-static {v0}, Lcom/baidu/mobstat/co;->a(Lcom/baidu/mobstat/co;)Lcom/baidu/mobstat/co$a;

    move-result-object v0

    invoke-interface {v0}, Lcom/baidu/mobstat/co$a;->b()V

    goto :goto_4

    .line 184
    :pswitch_2
    invoke-static {}, Lcom/baidu/mobstat/eh;->c()Lcom/baidu/mobstat/eh;

    move-result-object v0

    const-string/jumbo v1, "autotrace: connect established"

    invoke-virtual {v0, v1}, Lcom/baidu/mobstat/eh;->a(Ljava/lang/String;)V

    .line 185
    invoke-static {}, Lcom/baidu/mobstat/ct;->a()Lcom/baidu/mobstat/ct;

    move-result-object v0

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/baidu/mobstat/ct;->a(I)V

    goto :goto_4

    .line 189
    :pswitch_3
    invoke-static {}, Lcom/baidu/mobstat/eh;->c()Lcom/baidu/mobstat/eh;

    move-result-object v0

    const-string/jumbo v1, "autotrace: connect failed, connect has been established"

    invoke-virtual {v0, v1}, Lcom/baidu/mobstat/eh;->a(Ljava/lang/String;)V

    .line 190
    invoke-static {}, Lcom/baidu/mobstat/ct;->a()Lcom/baidu/mobstat/ct;

    move-result-object v0

    const/4 v1, 0x5

    const-string/jumbo v2, "already connect"

    invoke-virtual {v0, v1, v2}, Lcom/baidu/mobstat/ct;->a(ILjava/lang/String;)V

    goto/16 :goto_4

    .line 161
    :catch_2
    move-exception v0

    goto :goto_5

    .line 150
    :catch_3
    move-exception v1

    goto/16 :goto_2

    .line 173
    nop

    :pswitch_data_0
    .packed-switch 0xc38fc
        :pswitch_2
        :pswitch_3
        :pswitch_0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
