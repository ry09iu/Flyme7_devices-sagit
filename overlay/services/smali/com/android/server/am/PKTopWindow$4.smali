.class Lcom/android/server/am/PKTopWindow$4;
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
    .line 318
    iput-object p1, p0, Lcom/android/server/am/PKTopWindow$4;->this$0:Lcom/android/server/am/PKTopWindow;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 9

    .prologue
    .line 321
    iget-object v6, p0, Lcom/android/server/am/PKTopWindow$4;->this$0:Lcom/android/server/am/PKTopWindow;

    invoke-static {v6}, Lcom/android/server/am/PKTopWindow;->-get22(Lcom/android/server/am/PKTopWindow;)Lcom/android/server/am/PKTopWindowViewFactory;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/server/am/PKTopWindowViewFactory;->createPreview()Ljava/util/List;

    move-result-object v3

    .line 322
    .local v3, "previewList":Ljava/util/List;
    iget-object v7, p0, Lcom/android/server/am/PKTopWindow$4;->this$0:Lcom/android/server/am/PKTopWindow;

    const/4 v6, 0x0

    invoke-interface {v3, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/am/PKTopWindowViewFactory$Preview;

    invoke-static {v7, v6}, Lcom/android/server/am/PKTopWindow;->-set3(Lcom/android/server/am/PKTopWindow;Lcom/android/server/am/PKTopWindowViewFactory$Preview;)Lcom/android/server/am/PKTopWindowViewFactory$Preview;

    .line 323
    iget-object v6, p0, Lcom/android/server/am/PKTopWindow$4;->this$0:Lcom/android/server/am/PKTopWindow;

    invoke-static {v6}, Lcom/android/server/am/PKTopWindow;->-get23(Lcom/android/server/am/PKTopWindow;)Landroid/view/WindowManager;

    move-result-object v7

    iget-object v6, p0, Lcom/android/server/am/PKTopWindow$4;->this$0:Lcom/android/server/am/PKTopWindow;

    invoke-static {v6}, Lcom/android/server/am/PKTopWindow;->-get15(Lcom/android/server/am/PKTopWindow;)Lcom/android/server/am/PKTopWindowViewFactory$Preview;

    move-result-object v8

    const/4 v6, 0x1

    invoke-interface {v3, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/view/WindowManager$LayoutParams;

    invoke-interface {v7, v8, v6}, Landroid/view/WindowManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 324
    iget-object v6, p0, Lcom/android/server/am/PKTopWindow$4;->this$0:Lcom/android/server/am/PKTopWindow;

    invoke-static {v6}, Lcom/android/server/am/PKTopWindow;->-get15(Lcom/android/server/am/PKTopWindow;)Lcom/android/server/am/PKTopWindowViewFactory$Preview;

    move-result-object v6

    if-eqz v6, :cond_3

    .line 325
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v6, p0, Lcom/android/server/am/PKTopWindow$4;->this$0:Lcom/android/server/am/PKTopWindow;

    invoke-static {v6}, Lcom/android/server/am/PKTopWindow;->-get15(Lcom/android/server/am/PKTopWindow;)Lcom/android/server/am/PKTopWindowViewFactory$Preview;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/server/am/PKTopWindowViewFactory$Preview;->getChildCount()I

    move-result v6

    if-ge v1, v6, :cond_3

    .line 326
    iget-object v6, p0, Lcom/android/server/am/PKTopWindow$4;->this$0:Lcom/android/server/am/PKTopWindow;

    invoke-static {v6}, Lcom/android/server/am/PKTopWindow;->-get15(Lcom/android/server/am/PKTopWindow;)Lcom/android/server/am/PKTopWindowViewFactory$Preview;

    move-result-object v6

    invoke-virtual {v6, v1}, Lcom/android/server/am/PKTopWindowViewFactory$Preview;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    .line 327
    .local v5, "view":Landroid/view/View;
    instance-of v6, v5, Landroid/widget/ImageView;

    if-eqz v6, :cond_0

    move-object v2, v5

    .line 328
    check-cast v2, Landroid/widget/ImageView;

    .line 329
    .local v2, "iv":Landroid/widget/ImageView;
    invoke-virtual {v2}, Landroid/widget/ImageView;->getTag()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 330
    .local v4, "tag":Ljava/lang/String;
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_1

    const-string/jumbo v6, "preview:imageview"

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 331
    iget-object v6, p0, Lcom/android/server/am/PKTopWindow$4;->this$0:Lcom/android/server/am/PKTopWindow;

    invoke-static {v6}, Lcom/android/server/am/PKTopWindow;->-get16(Lcom/android/server/am/PKTopWindow;)Landroid/graphics/Bitmap;

    move-result-object v6

    if-eqz v6, :cond_0

    .line 332
    iget-object v6, p0, Lcom/android/server/am/PKTopWindow$4;->this$0:Lcom/android/server/am/PKTopWindow;

    invoke-static {v6}, Lcom/android/server/am/PKTopWindow;->-get16(Lcom/android/server/am/PKTopWindow;)Landroid/graphics/Bitmap;

    move-result-object v6

    invoke-virtual {v2, v6}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 350
    .end local v2    # "iv":Landroid/widget/ImageView;
    .end local v4    # "tag":Ljava/lang/String;
    :cond_0
    :goto_1
    const-string/jumbo v6, "PKTopWindow"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "mPreview["

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, "]="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/android/server/am/PKTopWindowConfig$Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 325
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 334
    .restart local v2    # "iv":Landroid/widget/ImageView;
    .restart local v4    # "tag":Ljava/lang/String;
    :cond_1
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_2

    const-string/jumbo v6, "preview:logoicon"

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 335
    iget-object v6, p0, Lcom/android/server/am/PKTopWindow$4;->this$0:Lcom/android/server/am/PKTopWindow;

    invoke-static {v6}, Lcom/android/server/am/PKTopWindow;->-get10(Lcom/android/server/am/PKTopWindow;)Landroid/graphics/Bitmap;

    move-result-object v6

    if-eqz v6, :cond_0

    .line 336
    iget-object v6, p0, Lcom/android/server/am/PKTopWindow$4;->this$0:Lcom/android/server/am/PKTopWindow;

    invoke-static {v6}, Lcom/android/server/am/PKTopWindow;->-get10(Lcom/android/server/am/PKTopWindow;)Landroid/graphics/Bitmap;

    move-result-object v6

    invoke-virtual {v2, v6}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    goto :goto_1

    .line 338
    :cond_2
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_0

    const-string/jumbo v6, "preview:logoapp"

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 339
    iget-object v6, p0, Lcom/android/server/am/PKTopWindow$4;->this$0:Lcom/android/server/am/PKTopWindow;

    invoke-static {v6}, Lcom/android/server/am/PKTopWindow;->-get10(Lcom/android/server/am/PKTopWindow;)Landroid/graphics/Bitmap;

    move-result-object v6

    if-nez v6, :cond_0

    .line 343
    iget-object v6, p0, Lcom/android/server/am/PKTopWindow$4;->this$0:Lcom/android/server/am/PKTopWindow;

    invoke-static {v6}, Lcom/android/server/am/PKTopWindow;->-get4(Lcom/android/server/am/PKTopWindow;)Landroid/content/Context;

    move-result-object v6

    iget-object v7, p0, Lcom/android/server/am/PKTopWindow$4;->this$0:Lcom/android/server/am/PKTopWindow;

    invoke-static {v7}, Lcom/android/server/am/PKTopWindow;->-get14(Lcom/android/server/am/PKTopWindow;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/android/server/am/PKTopWindowUtils;->getAppIcon(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 344
    .local v0, "appIconDrawable":Landroid/graphics/drawable/Drawable;
    if-eqz v0, :cond_0

    .line 345
    invoke-virtual {v2, v0}, Landroid/widget/ImageView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    goto :goto_1

    .line 320
    .end local v0    # "appIconDrawable":Landroid/graphics/drawable/Drawable;
    .end local v1    # "i":I
    .end local v2    # "iv":Landroid/widget/ImageView;
    .end local v4    # "tag":Ljava/lang/String;
    .end local v5    # "view":Landroid/view/View;
    :cond_3
    return-void
.end method
