.class Lmiui/contentcatcher/InterceptorProxy$H;
.super Landroid/os/Handler;
.source "InterceptorProxy.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiui/contentcatcher/InterceptorProxy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "H"
.end annotation


# static fields
.field public static final ACTIVITY_CREATE:I = 0x1

.field public static final ACTIVITY_DESTROY:I = 0x6

.field public static final ACTIVITY_PAUSE:I = 0x4

.field public static final ACTIVITY_RESUME:I = 0x3

.field public static final ACTIVITY_START:I = 0x2

.field public static final ACTIVITY_STOP:I = 0x5

.field public static final CONTENT_CHANGED:I = 0x7

.field public static final CREATE_INJECTOR:I


# instance fields
.field private mActivity:Landroid/app/Activity;

.field final synthetic this$0:Lmiui/contentcatcher/InterceptorProxy;


# direct methods
.method public constructor <init>(Lmiui/contentcatcher/InterceptorProxy;Landroid/os/Looper;Landroid/app/Activity;)V
    .locals 0
    .param p1, "this$0"    # Lmiui/contentcatcher/InterceptorProxy;
    .param p2, "looper"    # Landroid/os/Looper;
    .param p3, "activity"    # Landroid/app/Activity;

    .prologue
    .line 273
    iput-object p1, p0, Lmiui/contentcatcher/InterceptorProxy$H;->this$0:Lmiui/contentcatcher/InterceptorProxy;

    .line 274
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 275
    iput-object p3, p0, Lmiui/contentcatcher/InterceptorProxy$H;->mActivity:Landroid/app/Activity;

    .line 273
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 279
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 278
    :cond_0
    :goto_0
    return-void

    .line 281
    :pswitch_0
    iget-object v0, p0, Lmiui/contentcatcher/InterceptorProxy$H;->this$0:Lmiui/contentcatcher/InterceptorProxy;

    iget-object v1, p0, Lmiui/contentcatcher/InterceptorProxy$H;->mActivity:Landroid/app/Activity;

    invoke-static {v1}, Lmiui/contentcatcher/InterceptorFactory;->createInterceptor(Landroid/app/Activity;)Lcom/miui/internal/contentcatcher/IInterceptor;

    move-result-object v1

    invoke-static {v0, v1}, Lmiui/contentcatcher/InterceptorProxy;->-set0(Lmiui/contentcatcher/InterceptorProxy;Lcom/miui/internal/contentcatcher/IInterceptor;)Lcom/miui/internal/contentcatcher/IInterceptor;

    goto :goto_0

    .line 284
    :pswitch_1
    iget-object v0, p0, Lmiui/contentcatcher/InterceptorProxy$H;->this$0:Lmiui/contentcatcher/InterceptorProxy;

    invoke-static {v0}, Lmiui/contentcatcher/InterceptorProxy;->-get0(Lmiui/contentcatcher/InterceptorProxy;)Lcom/miui/internal/contentcatcher/IInterceptor;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 285
    iget-object v0, p0, Lmiui/contentcatcher/InterceptorProxy$H;->this$0:Lmiui/contentcatcher/InterceptorProxy;

    invoke-static {v0}, Lmiui/contentcatcher/InterceptorProxy;->-get0(Lmiui/contentcatcher/InterceptorProxy;)Lcom/miui/internal/contentcatcher/IInterceptor;

    move-result-object v0

    invoke-interface {v0}, Lcom/miui/internal/contentcatcher/IInterceptor;->notifyActivityCreate()V

    goto :goto_0

    .line 289
    :pswitch_2
    iget-object v0, p0, Lmiui/contentcatcher/InterceptorProxy$H;->this$0:Lmiui/contentcatcher/InterceptorProxy;

    invoke-static {v0}, Lmiui/contentcatcher/InterceptorProxy;->-get0(Lmiui/contentcatcher/InterceptorProxy;)Lcom/miui/internal/contentcatcher/IInterceptor;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 290
    iget-object v0, p0, Lmiui/contentcatcher/InterceptorProxy$H;->this$0:Lmiui/contentcatcher/InterceptorProxy;

    invoke-static {v0}, Lmiui/contentcatcher/InterceptorProxy;->-get0(Lmiui/contentcatcher/InterceptorProxy;)Lcom/miui/internal/contentcatcher/IInterceptor;

    move-result-object v0

    invoke-interface {v0}, Lcom/miui/internal/contentcatcher/IInterceptor;->notifyActivityStart()V

    goto :goto_0

    .line 294
    :pswitch_3
    iget-object v0, p0, Lmiui/contentcatcher/InterceptorProxy$H;->this$0:Lmiui/contentcatcher/InterceptorProxy;

    invoke-static {v0}, Lmiui/contentcatcher/InterceptorProxy;->-get0(Lmiui/contentcatcher/InterceptorProxy;)Lcom/miui/internal/contentcatcher/IInterceptor;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 295
    iget-object v0, p0, Lmiui/contentcatcher/InterceptorProxy$H;->this$0:Lmiui/contentcatcher/InterceptorProxy;

    invoke-static {v0}, Lmiui/contentcatcher/InterceptorProxy;->-get0(Lmiui/contentcatcher/InterceptorProxy;)Lcom/miui/internal/contentcatcher/IInterceptor;

    move-result-object v0

    invoke-interface {v0}, Lcom/miui/internal/contentcatcher/IInterceptor;->notifyActivityResume()V

    goto :goto_0

    .line 299
    :pswitch_4
    iget-object v0, p0, Lmiui/contentcatcher/InterceptorProxy$H;->this$0:Lmiui/contentcatcher/InterceptorProxy;

    invoke-static {v0}, Lmiui/contentcatcher/InterceptorProxy;->-get0(Lmiui/contentcatcher/InterceptorProxy;)Lcom/miui/internal/contentcatcher/IInterceptor;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 300
    iget-object v0, p0, Lmiui/contentcatcher/InterceptorProxy$H;->this$0:Lmiui/contentcatcher/InterceptorProxy;

    invoke-static {v0}, Lmiui/contentcatcher/InterceptorProxy;->-get0(Lmiui/contentcatcher/InterceptorProxy;)Lcom/miui/internal/contentcatcher/IInterceptor;

    move-result-object v0

    invoke-interface {v0}, Lcom/miui/internal/contentcatcher/IInterceptor;->notifyActivityPause()V

    goto :goto_0

    .line 304
    :pswitch_5
    iget-object v0, p0, Lmiui/contentcatcher/InterceptorProxy$H;->this$0:Lmiui/contentcatcher/InterceptorProxy;

    invoke-static {v0}, Lmiui/contentcatcher/InterceptorProxy;->-get0(Lmiui/contentcatcher/InterceptorProxy;)Lcom/miui/internal/contentcatcher/IInterceptor;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 305
    iget-object v0, p0, Lmiui/contentcatcher/InterceptorProxy$H;->this$0:Lmiui/contentcatcher/InterceptorProxy;

    invoke-static {v0}, Lmiui/contentcatcher/InterceptorProxy;->-get0(Lmiui/contentcatcher/InterceptorProxy;)Lcom/miui/internal/contentcatcher/IInterceptor;

    move-result-object v0

    invoke-interface {v0}, Lcom/miui/internal/contentcatcher/IInterceptor;->notifyActivityStop()V

    goto :goto_0

    .line 309
    :pswitch_6
    iget-object v0, p0, Lmiui/contentcatcher/InterceptorProxy$H;->this$0:Lmiui/contentcatcher/InterceptorProxy;

    invoke-static {v0}, Lmiui/contentcatcher/InterceptorProxy;->-get0(Lmiui/contentcatcher/InterceptorProxy;)Lcom/miui/internal/contentcatcher/IInterceptor;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 310
    iget-object v0, p0, Lmiui/contentcatcher/InterceptorProxy$H;->this$0:Lmiui/contentcatcher/InterceptorProxy;

    invoke-static {v0}, Lmiui/contentcatcher/InterceptorProxy;->-get0(Lmiui/contentcatcher/InterceptorProxy;)Lcom/miui/internal/contentcatcher/IInterceptor;

    move-result-object v0

    invoke-interface {v0}, Lcom/miui/internal/contentcatcher/IInterceptor;->notifyActivityDestroy()V

    goto :goto_0

    .line 314
    :pswitch_7
    iget-object v0, p0, Lmiui/contentcatcher/InterceptorProxy$H;->this$0:Lmiui/contentcatcher/InterceptorProxy;

    invoke-static {v0}, Lmiui/contentcatcher/InterceptorProxy;->-get0(Lmiui/contentcatcher/InterceptorProxy;)Lcom/miui/internal/contentcatcher/IInterceptor;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 315
    iget-object v0, p0, Lmiui/contentcatcher/InterceptorProxy$H;->this$0:Lmiui/contentcatcher/InterceptorProxy;

    invoke-static {v0}, Lmiui/contentcatcher/InterceptorProxy;->-get0(Lmiui/contentcatcher/InterceptorProxy;)Lcom/miui/internal/contentcatcher/IInterceptor;

    move-result-object v0

    invoke-interface {v0}, Lcom/miui/internal/contentcatcher/IInterceptor;->notifyContentChange()V

    goto/16 :goto_0

    .line 279
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
    .end packed-switch
.end method
