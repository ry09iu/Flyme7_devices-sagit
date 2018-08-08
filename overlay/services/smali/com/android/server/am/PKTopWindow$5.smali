.class Lcom/android/server/am/PKTopWindow$5;
.super Ljava/lang/Object;
.source "PKTopWindow.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/am/PKTopWindow;-><init>(Landroid/content/Context;Lcom/android/server/am/ActivityManagerService;JLandroid/content/ComponentName;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/am/PKTopWindow;


# direct methods
.method constructor <init>(Lcom/android/server/am/PKTopWindow;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/am/PKTopWindow;

    .prologue
    .line 487
    iput-object p1, p0, Lcom/android/server/am/PKTopWindow$5;->this$0:Lcom/android/server/am/PKTopWindow;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 13

    .prologue
    const/4 v10, 0x0

    const/4 v12, 0x1

    .line 490
    iget-object v7, p0, Lcom/android/server/am/PKTopWindow$5;->this$0:Lcom/android/server/am/PKTopWindow;

    invoke-static {v7}, Lcom/android/server/am/PKTopWindow;->-wrap6(Lcom/android/server/am/PKTopWindow;)V

    .line 493
    iget-object v7, p0, Lcom/android/server/am/PKTopWindow$5;->this$0:Lcom/android/server/am/PKTopWindow;

    invoke-static {v7}, Lcom/android/server/am/PKTopWindow;->-get22(Lcom/android/server/am/PKTopWindow;)Lcom/android/server/am/PKTopWindowViewFactory;

    move-result-object v7

    invoke-virtual {v7}, Lcom/android/server/am/PKTopWindowViewFactory;->createADView()Ljava/util/List;

    move-result-object v0

    .line 494
    .local v0, "adViewList":Ljava/util/List;
    iget-object v8, p0, Lcom/android/server/am/PKTopWindow$5;->this$0:Lcom/android/server/am/PKTopWindow;

    invoke-interface {v0, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/widget/ImageView;

    invoke-static {v8, v7}, Lcom/android/server/am/PKTopWindow;->-set0(Lcom/android/server/am/PKTopWindow;Landroid/widget/ImageView;)Landroid/widget/ImageView;

    .line 498
    iget-object v7, p0, Lcom/android/server/am/PKTopWindow$5;->this$0:Lcom/android/server/am/PKTopWindow;

    invoke-static {v7}, Lcom/android/server/am/PKTopWindow;->-get1(Lcom/android/server/am/PKTopWindow;)Landroid/widget/ImageView;

    move-result-object v7

    iget-object v8, p0, Lcom/android/server/am/PKTopWindow$5;->this$0:Lcom/android/server/am/PKTopWindow;

    invoke-static {v8}, Lcom/android/server/am/PKTopWindow;->-get2(Lcom/android/server/am/PKTopWindow;)Landroid/graphics/Bitmap;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 499
    const-string/jumbo v8, "PKTopWindow"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "mADImageViewWidth: "

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-interface {v0, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/widget/FrameLayout$LayoutParams;

    iget v7, v7, Landroid/widget/FrameLayout$LayoutParams;->width:I

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v9, ", mADImageViewHeight: "

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-interface {v0, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/widget/FrameLayout$LayoutParams;

    iget v7, v7, Landroid/widget/FrameLayout$LayoutParams;->height:I

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 500
    const-string/jumbo v9, ", mADUrlBitmapWidth: "

    .line 499
    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 500
    iget-object v9, p0, Lcom/android/server/am/PKTopWindow$5;->this$0:Lcom/android/server/am/PKTopWindow;

    invoke-static {v9}, Lcom/android/server/am/PKTopWindow;->-get2(Lcom/android/server/am/PKTopWindow;)Landroid/graphics/Bitmap;

    move-result-object v9

    invoke-virtual {v9}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v9

    .line 499
    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 500
    const-string/jumbo v9, ", mADUrlBitmapHeight: "

    .line 499
    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 500
    iget-object v9, p0, Lcom/android/server/am/PKTopWindow$5;->this$0:Lcom/android/server/am/PKTopWindow;

    invoke-static {v9}, Lcom/android/server/am/PKTopWindow;->-get2(Lcom/android/server/am/PKTopWindow;)Landroid/graphics/Bitmap;

    move-result-object v9

    invoke-virtual {v9}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v9

    .line 499
    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v8, v7}, Lcom/android/server/am/PKTopWindowConfig$Log;->wtf(Ljava/lang/String;Ljava/lang/String;)V

    .line 502
    iget-object v7, p0, Lcom/android/server/am/PKTopWindow$5;->this$0:Lcom/android/server/am/PKTopWindow;

    invoke-static {v7}, Lcom/android/server/am/PKTopWindow;->-get7(Lcom/android/server/am/PKTopWindow;)Lcom/android/server/am/PKTopWindowViewFactory$FirstWindow;

    move-result-object v8

    iget-object v7, p0, Lcom/android/server/am/PKTopWindow$5;->this$0:Lcom/android/server/am/PKTopWindow;

    invoke-static {v7}, Lcom/android/server/am/PKTopWindow;->-get1(Lcom/android/server/am/PKTopWindow;)Landroid/widget/ImageView;

    move-result-object v9

    invoke-interface {v0, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/widget/FrameLayout$LayoutParams;

    invoke-virtual {v8, v9, v7}, Lcom/android/server/am/PKTopWindowViewFactory$FirstWindow;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 504
    iget-object v7, p0, Lcom/android/server/am/PKTopWindow$5;->this$0:Lcom/android/server/am/PKTopWindow;

    invoke-static {v7}, Lcom/android/server/am/PKTopWindow;->-get10(Lcom/android/server/am/PKTopWindow;)Landroid/graphics/Bitmap;

    move-result-object v7

    if-eqz v7, :cond_2

    .line 506
    iget-object v7, p0, Lcom/android/server/am/PKTopWindow$5;->this$0:Lcom/android/server/am/PKTopWindow;

    invoke-static {v7}, Lcom/android/server/am/PKTopWindow;->-get22(Lcom/android/server/am/PKTopWindow;)Lcom/android/server/am/PKTopWindowViewFactory;

    move-result-object v7

    invoke-virtual {v7}, Lcom/android/server/am/PKTopWindowViewFactory;->createLogoView()Ljava/util/List;

    move-result-object v5

    .line 507
    .local v5, "logoViewList":Ljava/util/List;
    invoke-interface {v5, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/widget/ImageView;

    .line 508
    .local v4, "logoImage":Landroid/widget/ImageView;
    iget-object v7, p0, Lcom/android/server/am/PKTopWindow$5;->this$0:Lcom/android/server/am/PKTopWindow;

    invoke-static {v7}, Lcom/android/server/am/PKTopWindow;->-get10(Lcom/android/server/am/PKTopWindow;)Landroid/graphics/Bitmap;

    move-result-object v7

    invoke-virtual {v4, v7}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 509
    iget-object v7, p0, Lcom/android/server/am/PKTopWindow$5;->this$0:Lcom/android/server/am/PKTopWindow;

    invoke-static {v7}, Lcom/android/server/am/PKTopWindow;->-get7(Lcom/android/server/am/PKTopWindow;)Lcom/android/server/am/PKTopWindowViewFactory$FirstWindow;

    move-result-object v8

    invoke-interface {v5, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/widget/FrameLayout$LayoutParams;

    invoke-virtual {v8, v4, v7}, Lcom/android/server/am/PKTopWindowViewFactory$FirstWindow;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 520
    .end local v4    # "logoImage":Landroid/widget/ImageView;
    .end local v5    # "logoViewList":Ljava/util/List;
    :cond_0
    :goto_0
    iget-object v7, p0, Lcom/android/server/am/PKTopWindow$5;->this$0:Lcom/android/server/am/PKTopWindow;

    invoke-static {v7}, Lcom/android/server/am/PKTopWindow;->-get7(Lcom/android/server/am/PKTopWindow;)Lcom/android/server/am/PKTopWindowViewFactory$FirstWindow;

    move-result-object v7

    iget-object v8, p0, Lcom/android/server/am/PKTopWindow$5;->this$0:Lcom/android/server/am/PKTopWindow;

    invoke-static {v8}, Lcom/android/server/am/PKTopWindow;->-get26(Lcom/android/server/am/PKTopWindow;)Landroid/widget/TextView;

    move-result-object v8

    iget-object v9, p0, Lcom/android/server/am/PKTopWindow$5;->this$0:Lcom/android/server/am/PKTopWindow;

    invoke-static {v9}, Lcom/android/server/am/PKTopWindow;->-get27(Lcom/android/server/am/PKTopWindow;)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v9

    invoke-virtual {v7, v8, v9}, Lcom/android/server/am/PKTopWindowViewFactory$FirstWindow;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 522
    iget-object v7, p0, Lcom/android/server/am/PKTopWindow$5;->this$0:Lcom/android/server/am/PKTopWindow;

    invoke-static {v7}, Lcom/android/server/am/PKTopWindow;->-get22(Lcom/android/server/am/PKTopWindow;)Lcom/android/server/am/PKTopWindowViewFactory;

    move-result-object v7

    invoke-virtual {v7}, Lcom/android/server/am/PKTopWindowViewFactory;->createStaticADText()Ljava/util/List;

    move-result-object v6

    .line 523
    .local v6, "staticADTextList":Ljava/util/List;
    iget-object v7, p0, Lcom/android/server/am/PKTopWindow$5;->this$0:Lcom/android/server/am/PKTopWindow;

    invoke-static {v7}, Lcom/android/server/am/PKTopWindow;->-get7(Lcom/android/server/am/PKTopWindow;)Lcom/android/server/am/PKTopWindowViewFactory$FirstWindow;

    move-result-object v9

    invoke-interface {v6, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/widget/TextView;

    invoke-interface {v6, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/widget/FrameLayout$LayoutParams;

    invoke-virtual {v9, v7, v8}, Lcom/android/server/am/PKTopWindowViewFactory$FirstWindow;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 525
    iget-object v7, p0, Lcom/android/server/am/PKTopWindow$5;->this$0:Lcom/android/server/am/PKTopWindow;

    invoke-static {v7}, Lcom/android/server/am/PKTopWindow;->-wrap4(Lcom/android/server/am/PKTopWindow;)V

    .line 527
    iget-object v7, p0, Lcom/android/server/am/PKTopWindow$5;->this$0:Lcom/android/server/am/PKTopWindow;

    invoke-static {v7}, Lcom/android/server/am/PKTopWindow;->-get1(Lcom/android/server/am/PKTopWindow;)Landroid/widget/ImageView;

    move-result-object v7

    if-eqz v7, :cond_3

    iget-object v7, p0, Lcom/android/server/am/PKTopWindow$5;->this$0:Lcom/android/server/am/PKTopWindow;

    invoke-static {v7}, Lcom/android/server/am/PKTopWindow;->-get1(Lcom/android/server/am/PKTopWindow;)Landroid/widget/ImageView;

    move-result-object v7

    invoke-virtual {v7}, Landroid/widget/ImageView;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v7

    if-nez v7, :cond_1

    iget-object v7, p0, Lcom/android/server/am/PKTopWindow$5;->this$0:Lcom/android/server/am/PKTopWindow;

    invoke-static {v7}, Lcom/android/server/am/PKTopWindow;->-get1(Lcom/android/server/am/PKTopWindow;)Landroid/widget/ImageView;

    move-result-object v7

    invoke-virtual {v7}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v7

    if-eqz v7, :cond_3

    .line 531
    :cond_1
    iget-object v7, p0, Lcom/android/server/am/PKTopWindow$5;->this$0:Lcom/android/server/am/PKTopWindow;

    iget-object v7, v7, Lcom/android/server/am/PKTopWindow;->mUpdateUIHandler:Landroid/os/Handler;

    new-instance v8, Lcom/android/server/am/PKTopWindow$5$1;

    invoke-direct {v8, p0}, Lcom/android/server/am/PKTopWindow$5$1;-><init>(Lcom/android/server/am/PKTopWindow$5;)V

    .line 537
    iget-object v9, p0, Lcom/android/server/am/PKTopWindow$5;->this$0:Lcom/android/server/am/PKTopWindow;

    invoke-static {v9}, Lcom/android/server/am/PKTopWindow;->-get17(Lcom/android/server/am/PKTopWindow;)J

    move-result-wide v10

    .line 531
    invoke-virtual {v7, v8, v10, v11}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 539
    iget-object v7, p0, Lcom/android/server/am/PKTopWindow$5;->this$0:Lcom/android/server/am/PKTopWindow;

    invoke-static {v7}, Lcom/android/server/am/PKTopWindow;->-get13(Lcom/android/server/am/PKTopWindow;)Landroid/os/Handler;

    move-result-object v7

    iget-object v8, p0, Lcom/android/server/am/PKTopWindow$5;->this$0:Lcom/android/server/am/PKTopWindow;

    invoke-static {v8}, Lcom/android/server/am/PKTopWindow;->-get13(Lcom/android/server/am/PKTopWindow;)Landroid/os/Handler;

    move-result-object v8

    invoke-virtual {v8, v12}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 489
    :goto_1
    return-void

    .line 511
    .end local v6    # "staticADTextList":Ljava/util/List;
    :cond_2
    iget-object v7, p0, Lcom/android/server/am/PKTopWindow$5;->this$0:Lcom/android/server/am/PKTopWindow;

    invoke-static {v7}, Lcom/android/server/am/PKTopWindow;->-get22(Lcom/android/server/am/PKTopWindow;)Lcom/android/server/am/PKTopWindowViewFactory;

    move-result-object v7

    invoke-virtual {v7}, Lcom/android/server/am/PKTopWindowViewFactory;->createAppIconView()Ljava/util/List;

    move-result-object v2

    .line 512
    .local v2, "appIconList":Ljava/util/List;
    invoke-interface {v2, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    .line 513
    .local v3, "appIconView":Landroid/widget/ImageView;
    iget-object v7, p0, Lcom/android/server/am/PKTopWindow$5;->this$0:Lcom/android/server/am/PKTopWindow;

    invoke-static {v7}, Lcom/android/server/am/PKTopWindow;->-get4(Lcom/android/server/am/PKTopWindow;)Landroid/content/Context;

    move-result-object v7

    iget-object v8, p0, Lcom/android/server/am/PKTopWindow$5;->this$0:Lcom/android/server/am/PKTopWindow;

    invoke-static {v8}, Lcom/android/server/am/PKTopWindow;->-get14(Lcom/android/server/am/PKTopWindow;)Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/android/server/am/PKTopWindowUtils;->getAppIcon(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 514
    .local v1, "appIconDrawable":Landroid/graphics/drawable/Drawable;
    if-eqz v1, :cond_0

    .line 515
    invoke-virtual {v3, v1}, Landroid/widget/ImageView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 516
    iget-object v7, p0, Lcom/android/server/am/PKTopWindow$5;->this$0:Lcom/android/server/am/PKTopWindow;

    invoke-static {v7}, Lcom/android/server/am/PKTopWindow;->-get7(Lcom/android/server/am/PKTopWindow;)Lcom/android/server/am/PKTopWindowViewFactory$FirstWindow;

    move-result-object v8

    invoke-interface {v2, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/widget/FrameLayout$LayoutParams;

    invoke-virtual {v8, v3, v7}, Lcom/android/server/am/PKTopWindowViewFactory$FirstWindow;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto/16 :goto_0

    .line 544
    .end local v1    # "appIconDrawable":Landroid/graphics/drawable/Drawable;
    .end local v2    # "appIconList":Ljava/util/List;
    .end local v3    # "appIconView":Landroid/widget/ImageView;
    .restart local v6    # "staticADTextList":Ljava/util/List;
    :cond_3
    iget-object v7, p0, Lcom/android/server/am/PKTopWindow$5;->this$0:Lcom/android/server/am/PKTopWindow;

    const/4 v8, -0x1

    invoke-virtual {v7, v8}, Lcom/android/server/am/PKTopWindow;->dismissWindowsAt(I)V

    goto :goto_1
.end method
