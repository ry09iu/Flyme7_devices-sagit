.class Lcom/android/server/am/PKTopWindowCommonData$DownloadImageTask$1;
.super Ljava/lang/Object;
.source "PKTopWindowCommonData.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/am/PKTopWindowCommonData$DownloadImageTask;->onPostExecute(Landroid/graphics/Bitmap;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/server/am/PKTopWindowCommonData$DownloadImageTask;

.field final synthetic val$result:Landroid/graphics/Bitmap;


# direct methods
.method constructor <init>(Lcom/android/server/am/PKTopWindowCommonData$DownloadImageTask;Landroid/graphics/Bitmap;)V
    .locals 0
    .param p1, "this$1"    # Lcom/android/server/am/PKTopWindowCommonData$DownloadImageTask;
    .param p2, "val$result"    # Landroid/graphics/Bitmap;

    .prologue
    .line 349
    iput-object p1, p0, Lcom/android/server/am/PKTopWindowCommonData$DownloadImageTask$1;->this$1:Lcom/android/server/am/PKTopWindowCommonData$DownloadImageTask;

    iput-object p2, p0, Lcom/android/server/am/PKTopWindowCommonData$DownloadImageTask$1;->val$result:Landroid/graphics/Bitmap;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 352
    invoke-static {}, Lcom/android/server/am/PKTopWindowCommonData$DownloadImageTask;->-get0()Landroid/widget/ImageView;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/am/PKTopWindowCommonData$DownloadImageTask$1;->val$result:Landroid/graphics/Bitmap;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 351
    return-void
.end method
