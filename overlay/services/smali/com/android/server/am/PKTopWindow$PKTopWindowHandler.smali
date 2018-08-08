.class final Lcom/android/server/am/PKTopWindow$PKTopWindowHandler;
.super Landroid/os/Handler;
.source "PKTopWindow.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/am/PKTopWindow;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "PKTopWindowHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/am/PKTopWindow;


# direct methods
.method public constructor <init>(Lcom/android/server/am/PKTopWindow;Landroid/os/Looper;)V
    .locals 2
    .param p1, "this$0"    # Lcom/android/server/am/PKTopWindow;
    .param p2, "looper"    # Landroid/os/Looper;

    .prologue
    .line 1211
    iput-object p1, p0, Lcom/android/server/am/PKTopWindow$PKTopWindowHandler;->this$0:Lcom/android/server/am/PKTopWindow;

    .line 1212
    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-direct {p0, p2, v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;Z)V

    .line 1211
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 12
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const-wide/16 v10, 0x3e8

    const/4 v6, -0x1

    const/4 v8, 0x0

    .line 1217
    iget v4, p1, Landroid/os/Message;->what:I

    packed-switch v4, :pswitch_data_0

    .line 1216
    :cond_0
    :goto_0
    :pswitch_0
    return-void

    .line 1220
    :pswitch_1
    iget-object v4, p0, Lcom/android/server/am/PKTopWindow$PKTopWindowHandler;->this$0:Lcom/android/server/am/PKTopWindow;

    iget-object v5, p0, Lcom/android/server/am/PKTopWindow$PKTopWindowHandler;->this$0:Lcom/android/server/am/PKTopWindow;

    invoke-static {v5}, Lcom/android/server/am/PKTopWindow;->-get15(Lcom/android/server/am/PKTopWindow;)Lcom/android/server/am/PKTopWindowViewFactory$Preview;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/android/server/am/PKTopWindow;->-wrap3(Lcom/android/server/am/PKTopWindow;Landroid/view/View;)V

    .line 1221
    iget-object v4, p0, Lcom/android/server/am/PKTopWindow$PKTopWindowHandler;->this$0:Lcom/android/server/am/PKTopWindow;

    invoke-virtual {v4, v6}, Lcom/android/server/am/PKTopWindow;->dismissWindowsAt(I)V

    .line 1222
    const-string/jumbo v4, "PKTopWindow"

    const-string/jumbo v5, "MSG_REMOVE_TOPWINDOW"

    invoke-static {v4, v5}, Lcom/android/server/am/PKTopWindowConfig$Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 1242
    :pswitch_2
    iget-object v4, p0, Lcom/android/server/am/PKTopWindow$PKTopWindowHandler;->this$0:Lcom/android/server/am/PKTopWindow;

    invoke-static {v4}, Lcom/android/server/am/PKTopWindow;->-get11(Lcom/android/server/am/PKTopWindow;)Lcom/android/server/am/PKTopWindowData;

    move-result-object v4

    new-instance v5, Lcom/android/server/am/PKTopWindow$PKTopWindowHandler$1;

    invoke-direct {v5, p0}, Lcom/android/server/am/PKTopWindow$PKTopWindowHandler$1;-><init>(Lcom/android/server/am/PKTopWindow$PKTopWindowHandler;)V

    .line 1259
    invoke-static {}, Lcom/android/server/am/PKTopWindow;->-get25()Ljava/lang/String;

    move-result-object v6

    iget-object v7, p0, Lcom/android/server/am/PKTopWindow$PKTopWindowHandler;->this$0:Lcom/android/server/am/PKTopWindow;

    iget-object v7, v7, Lcom/android/server/am/PKTopWindow;->fullJson:Ljava/lang/String;

    .line 1242
    invoke-virtual {v4, v5, v6, v7}, Lcom/android/server/am/PKTopWindowData;->postDataASync(Lcom/android/server/am/PKTopWindowData$PostDataASyncListener;Ljava/lang/String;Ljava/lang/String;)V

    .line 1262
    iget-object v4, p0, Lcom/android/server/am/PKTopWindow$PKTopWindowHandler;->this$0:Lcom/android/server/am/PKTopWindow;

    invoke-static {v4}, Lcom/android/server/am/PKTopWindow;->-get9(Lcom/android/server/am/PKTopWindow;)I

    move-result v4

    if-eqz v4, :cond_1

    iget-object v4, p0, Lcom/android/server/am/PKTopWindow$PKTopWindowHandler;->this$0:Lcom/android/server/am/PKTopWindow;

    invoke-static {v4}, Lcom/android/server/am/PKTopWindow;->-get8(Lcom/android/server/am/PKTopWindow;)I

    move-result v4

    if-eqz v4, :cond_1

    .line 1263
    iget-object v4, p0, Lcom/android/server/am/PKTopWindow$PKTopWindowHandler;->this$0:Lcom/android/server/am/PKTopWindow;

    invoke-static {v4}, Lcom/android/server/am/PKTopWindow;->-get20(Lcom/android/server/am/PKTopWindow;)Landroid/content/SharedPreferences;

    move-result-object v4

    const-string/jumbo v5, "key_successtimes"

    invoke-interface {v4, v5, v8}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    .line 1264
    .local v1, "currentSuccessTimes":I
    add-int/lit8 v2, v1, 0x1

    .line 1265
    .local v2, "newSuccessTimes":I
    iget-object v4, p0, Lcom/android/server/am/PKTopWindow$PKTopWindowHandler;->this$0:Lcom/android/server/am/PKTopWindow;

    invoke-static {v4}, Lcom/android/server/am/PKTopWindow;->-get6(Lcom/android/server/am/PKTopWindow;)Landroid/content/SharedPreferences$Editor;

    move-result-object v4

    const-string/jumbo v5, "key_successtimes"

    invoke-interface {v4, v5, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v4

    invoke-interface {v4}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 1266
    iget-object v4, p0, Lcom/android/server/am/PKTopWindow$PKTopWindowHandler;->this$0:Lcom/android/server/am/PKTopWindow;

    invoke-static {v4}, Lcom/android/server/am/PKTopWindow;->-get9(Lcom/android/server/am/PKTopWindow;)I

    move-result v4

    if-lt v2, v4, :cond_2

    .line 1268
    iget-object v4, p0, Lcom/android/server/am/PKTopWindow$PKTopWindowHandler;->this$0:Lcom/android/server/am/PKTopWindow;

    invoke-static {v4}, Lcom/android/server/am/PKTopWindow;->-get6(Lcom/android/server/am/PKTopWindow;)Landroid/content/SharedPreferences$Editor;

    move-result-object v4

    const-string/jumbo v5, "key_successtimes"

    invoke-interface {v4, v5}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v4

    invoke-interface {v4}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 1270
    iget-object v4, p0, Lcom/android/server/am/PKTopWindow$PKTopWindowHandler;->this$0:Lcom/android/server/am/PKTopWindow;

    invoke-static {v4}, Lcom/android/server/am/PKTopWindow;->-get6(Lcom/android/server/am/PKTopWindow;)Landroid/content/SharedPreferences$Editor;

    move-result-object v4

    const-string/jumbo v5, "key_lastsuccess_time"

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v6

    invoke-interface {v4, v5, v6, v7}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object v4

    invoke-interface {v4}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 1271
    const-string/jumbo v4, "PKTopWindow"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "\u6210\u529f\u5c55\u793a\u6b21\u6570\u5df2\u7ecf\u8fbe\u5230"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, "\u6b21\uff0c\u603b\u5171"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/android/server/am/PKTopWindow$PKTopWindowHandler;->this$0:Lcom/android/server/am/PKTopWindow;

    invoke-static {v6}, Lcom/android/server/am/PKTopWindow;->-get9(Lcom/android/server/am/PKTopWindow;)I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, "\u6b21\uff0c\u5f53\u524d\u7cfb\u7edf\u5df2\u5f00\u673a"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v6

    div-long/2addr v6, v10

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 1272
    const-string/jumbo v6, "\u79d2\uff0c\u7b49\u5f85\u5230"

    .line 1271
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 1272
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v6

    div-long/2addr v6, v10

    iget-object v8, p0, Lcom/android/server/am/PKTopWindow$PKTopWindowHandler;->this$0:Lcom/android/server/am/PKTopWindow;

    invoke-static {v8}, Lcom/android/server/am/PKTopWindow;->-get8(Lcom/android/server/am/PKTopWindow;)I

    move-result v8

    mul-int/lit8 v8, v8, 0x3c

    int-to-long v8, v8

    add-long/2addr v6, v8

    .line 1271
    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 1272
    const-string/jumbo v6, "\u79d2\u540e\u518d\u663e\u793a\u5e7f\u544a"

    .line 1271
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/android/server/am/PKTopWindowConfig$Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1294
    .end local v1    # "currentSuccessTimes":I
    .end local v2    # "newSuccessTimes":I
    :cond_1
    :goto_1
    iget-object v4, p0, Lcom/android/server/am/PKTopWindow$PKTopWindowHandler;->this$0:Lcom/android/server/am/PKTopWindow;

    invoke-static {v4}, Lcom/android/server/am/PKTopWindow;->-get11(Lcom/android/server/am/PKTopWindow;)Lcom/android/server/am/PKTopWindowData;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "online_"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/android/server/am/PKTopWindow$PKTopWindowHandler;->this$0:Lcom/android/server/am/PKTopWindow;

    invoke-static {v6}, Lcom/android/server/am/PKTopWindow;->-get14(Lcom/android/server/am/PKTopWindow;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/android/server/am/PKTopWindowData;->getUserStat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 1295
    .local v3, "userStat":Ljava/lang/String;
    iget-object v4, p0, Lcom/android/server/am/PKTopWindow$PKTopWindowHandler;->this$0:Lcom/android/server/am/PKTopWindow;

    invoke-static {v4}, Lcom/android/server/am/PKTopWindow;->-get11(Lcom/android/server/am/PKTopWindow;)Lcom/android/server/am/PKTopWindowData;

    move-result-object v4

    new-instance v5, Lcom/android/server/am/PKTopWindow$PKTopWindowHandler$2;

    invoke-direct {v5, p0}, Lcom/android/server/am/PKTopWindow$PKTopWindowHandler$2;-><init>(Lcom/android/server/am/PKTopWindow$PKTopWindowHandler;)V

    .line 1308
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v7, p0, Lcom/android/server/am/PKTopWindow$PKTopWindowHandler;->this$0:Lcom/android/server/am/PKTopWindow;

    invoke-static {v7}, Lcom/android/server/am/PKTopWindow;->-wrap0(Lcom/android/server/am/PKTopWindow;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, "v1/user?"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 1295
    invoke-virtual {v4, v5, v6}, Lcom/android/server/am/PKTopWindowData;->getDataASync(Lcom/android/server/am/PKTopWindowData$GetDataASyncListener;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1274
    .end local v3    # "userStat":Ljava/lang/String;
    .restart local v1    # "currentSuccessTimes":I
    .restart local v2    # "newSuccessTimes":I
    :cond_2
    const-string/jumbo v4, "PKTopWindow"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "\u6210\u529f\u5c55\u793a\u6b21\u6570\u5df2\u7ecf\u8fbe\u5230"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, "\u6b21\uff0c\u603b\u5171"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/android/server/am/PKTopWindow$PKTopWindowHandler;->this$0:Lcom/android/server/am/PKTopWindow;

    invoke-static {v6}, Lcom/android/server/am/PKTopWindow;->-get9(Lcom/android/server/am/PKTopWindow;)I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, "\u6b21\uff0c\u7ee7\u7eed\u663e\u793a\u5e7f\u544a"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/android/server/am/PKTopWindowConfig$Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 1323
    .end local v1    # "currentSuccessTimes":I
    .end local v2    # "newSuccessTimes":I
    :pswitch_3
    iget-object v4, p0, Lcom/android/server/am/PKTopWindow$PKTopWindowHandler;->this$0:Lcom/android/server/am/PKTopWindow;

    invoke-static {v4}, Lcom/android/server/am/PKTopWindow;->-get11(Lcom/android/server/am/PKTopWindow;)Lcom/android/server/am/PKTopWindowData;

    move-result-object v4

    invoke-static {}, Lcom/android/server/am/PKTopWindow;->-get24()Ljava/lang/String;

    move-result-object v5

    iget-object v6, p0, Lcom/android/server/am/PKTopWindow$PKTopWindowHandler;->this$0:Lcom/android/server/am/PKTopWindow;

    iget-object v6, v6, Lcom/android/server/am/PKTopWindow;->fullJson:Ljava/lang/String;

    invoke-virtual {v4, v5, v6}, Lcom/android/server/am/PKTopWindowData;->postDataSync(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1324
    .local v0, "clickResult":Ljava/lang/String;
    const-string/jumbo v4, "PKTopWindow"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "clickResult: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/android/server/am/PKTopWindowConfig$Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1325
    sget-boolean v4, Lcom/android/server/am/PKTopWindowConfig;->DEBUG:Z

    if-eqz v4, :cond_3

    .line 1326
    iget-object v4, p0, Lcom/android/server/am/PKTopWindow$PKTopWindowHandler;->this$0:Lcom/android/server/am/PKTopWindow;

    invoke-static {v4}, Lcom/android/server/am/PKTopWindow;->-get4(Lcom/android/server/am/PKTopWindow;)Landroid/content/Context;

    move-result-object v5

    const-string/jumbo v4, "true"

    invoke-virtual {v0, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_4

    const-string/jumbo v4, "\u70b9\u51fb\u6210\u529f\uff01"

    :goto_2
    const/4 v6, 0x1

    invoke-static {v5, v4, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/Toast;->show()V

    .line 1328
    :cond_3
    const-string/jumbo v4, "true"

    invoke-virtual {v0, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 1330
    iget-object v4, p0, Lcom/android/server/am/PKTopWindow$PKTopWindowHandler;->this$0:Lcom/android/server/am/PKTopWindow;

    invoke-static {v4}, Lcom/android/server/am/PKTopWindow;->-get11(Lcom/android/server/am/PKTopWindow;)Lcom/android/server/am/PKTopWindowData;

    move-result-object v4

    const-string/jumbo v5, "ADVIEW_CLICKED"

    invoke-virtual {v4, v5}, Lcom/android/server/am/PKTopWindowData;->mtjPageEnd(Ljava/lang/String;)V

    .line 1332
    iget-object v4, p0, Lcom/android/server/am/PKTopWindow$PKTopWindowHandler;->this$0:Lcom/android/server/am/PKTopWindow;

    invoke-static {v4}, Lcom/android/server/am/PKTopWindow;->-get11(Lcom/android/server/am/PKTopWindow;)Lcom/android/server/am/PKTopWindowData;

    move-result-object v4

    const-string/jumbo v5, "ADVIEW_CLICKED_ACTUAL"

    invoke-virtual {v4, v5}, Lcom/android/server/am/PKTopWindowData;->mtjPageStart(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1326
    :cond_4
    const-string/jumbo v4, "\u70b9\u51fb\u5931\u8d25\uff01"

    goto :goto_2

    .line 1339
    .end local v0    # "clickResult":Ljava/lang/String;
    :pswitch_4
    iget-object v4, p0, Lcom/android/server/am/PKTopWindow$PKTopWindowHandler;->this$0:Lcom/android/server/am/PKTopWindow;

    invoke-static {v4}, Lcom/android/server/am/PKTopWindow;->-get7(Lcom/android/server/am/PKTopWindow;)Lcom/android/server/am/PKTopWindowViewFactory$FirstWindow;

    move-result-object v4

    if-nez v4, :cond_5

    iget-object v4, p0, Lcom/android/server/am/PKTopWindow$PKTopWindowHandler;->this$0:Lcom/android/server/am/PKTopWindow;

    invoke-static {v4}, Lcom/android/server/am/PKTopWindow;->-get15(Lcom/android/server/am/PKTopWindow;)Lcom/android/server/am/PKTopWindowViewFactory$Preview;

    move-result-object v4

    if-eqz v4, :cond_0

    :cond_5
    iget-object v4, p0, Lcom/android/server/am/PKTopWindow$PKTopWindowHandler;->this$0:Lcom/android/server/am/PKTopWindow;

    invoke-static {v4}, Lcom/android/server/am/PKTopWindow;->-get18(Lcom/android/server/am/PKTopWindow;)Lcom/android/server/am/PKTopWindowViewFactory$SecondWindow;

    move-result-object v4

    if-nez v4, :cond_0

    .line 1340
    iget-object v4, p0, Lcom/android/server/am/PKTopWindow$PKTopWindowHandler;->this$0:Lcom/android/server/am/PKTopWindow;

    iget-object v5, p0, Lcom/android/server/am/PKTopWindow$PKTopWindowHandler;->this$0:Lcom/android/server/am/PKTopWindow;

    invoke-static {v5}, Lcom/android/server/am/PKTopWindow;->-get15(Lcom/android/server/am/PKTopWindow;)Lcom/android/server/am/PKTopWindowViewFactory$Preview;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/android/server/am/PKTopWindow;->-wrap3(Lcom/android/server/am/PKTopWindow;Landroid/view/View;)V

    .line 1341
    iget-object v4, p0, Lcom/android/server/am/PKTopWindow$PKTopWindowHandler;->this$0:Lcom/android/server/am/PKTopWindow;

    invoke-virtual {v4, v6}, Lcom/android/server/am/PKTopWindow;->dismissWindowsAt(I)V

    .line 1342
    const-string/jumbo v4, "PKTopWindow"

    const-string/jumbo v5, "MSG_KEYCODE_BACK"

    invoke-static {v4, v5}, Lcom/android/server/am/PKTopWindowConfig$Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1347
    :pswitch_5
    const-string/jumbo v4, "PKTopWindow"

    const-string/jumbo v5, "MSG_LONGPRESS_KEYCODE_BACK"

    invoke-static {v4, v5}, Lcom/android/server/am/PKTopWindowConfig$Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1217
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_4
        :pswitch_5
        :pswitch_0
        :pswitch_3
    .end packed-switch
.end method
