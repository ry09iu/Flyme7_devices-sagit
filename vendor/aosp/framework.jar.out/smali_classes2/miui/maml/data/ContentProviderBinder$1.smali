.class Lmiui/maml/data/ContentProviderBinder$1;
.super Ljava/lang/Object;
.source "ContentProviderBinder.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lmiui/maml/data/ContentProviderBinder;->load(Lorg/w3c/dom/Element;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lmiui/maml/data/ContentProviderBinder;


# direct methods
.method constructor <init>(Lmiui/maml/data/ContentProviderBinder;)V
    .locals 0
    .param p1, "this$0"    # Lmiui/maml/data/ContentProviderBinder;

    .prologue
    .line 362
    iput-object p1, p0, Lmiui/maml/data/ContentProviderBinder$1;->this$0:Lmiui/maml/data/ContentProviderBinder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 365
    iget-object v0, p0, Lmiui/maml/data/ContentProviderBinder$1;->this$0:Lmiui/maml/data/ContentProviderBinder;

    invoke-static {v0}, Lmiui/maml/data/ContentProviderBinder;->-wrap0(Lmiui/maml/data/ContentProviderBinder;)V

    .line 364
    return-void
.end method
