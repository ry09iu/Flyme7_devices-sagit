.class Lcom/android/server/am/ServiceRecord$3;
.super Ljava/lang/Object;
.source "ServiceRecord.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/am/ServiceRecord;->stripForegroundServiceFlagFromNotification()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/am/ServiceRecord;

.field final synthetic val$localForegroundId:I

.field final synthetic val$localPackageName:Ljava/lang/String;

.field final synthetic val$localUserId:I


# direct methods
.method constructor <init>(Lcom/android/server/am/ServiceRecord;Ljava/lang/String;II)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/am/ServiceRecord;
    .param p2, "val$localPackageName"    # Ljava/lang/String;
    .param p3, "val$localForegroundId"    # I
    .param p4, "val$localUserId"    # I

    .prologue
    .line 605
    iput-object p1, p0, Lcom/android/server/am/ServiceRecord$3;->this$0:Lcom/android/server/am/ServiceRecord;

    iput-object p2, p0, Lcom/android/server/am/ServiceRecord$3;->val$localPackageName:Ljava/lang/String;

    iput p3, p0, Lcom/android/server/am/ServiceRecord$3;->val$localForegroundId:I

    iput p4, p0, Lcom/android/server/am/ServiceRecord$3;->val$localUserId:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 609
    const-class v1, Lcom/android/server/notification/NotificationManagerInternal;

    .line 608
    invoke-static {v1}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/notification/NotificationManagerInternal;

    .line 610
    .local v0, "nmi":Lcom/android/server/notification/NotificationManagerInternal;
    if-nez v0, :cond_0

    .line 611
    return-void

    .line 613
    :cond_0
    iget-object v1, p0, Lcom/android/server/am/ServiceRecord$3;->val$localPackageName:Ljava/lang/String;

    iget v2, p0, Lcom/android/server/am/ServiceRecord$3;->val$localForegroundId:I

    .line 614
    iget v3, p0, Lcom/android/server/am/ServiceRecord$3;->val$localUserId:I

    .line 613
    invoke-interface {v0, v1, v2, v3}, Lcom/android/server/notification/NotificationManagerInternal;->removeForegroundServiceFlagFromNotification(Ljava/lang/String;II)V

    .line 607
    return-void
.end method
