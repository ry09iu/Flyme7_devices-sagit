.class Lcom/android/server/pm/PackageManagerService$13$1;
.super Ljava/lang/Object;
.source "PackageManagerService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/pm/PackageManagerService$13;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/server/pm/PackageManagerService$13;

.field final synthetic val$packageName:Ljava/lang/String;

.field final synthetic val$retCode:I


# direct methods
.method constructor <init>(Lcom/android/server/pm/PackageManagerService$13;Ljava/lang/String;I)V
    .locals 0
    .param p1, "this$1"    # Lcom/android/server/pm/PackageManagerService$13;
    .param p2, "val$packageName"    # Ljava/lang/String;
    .param p3, "val$retCode"    # I

    .prologue
    .line 16151
    iput-object p1, p0, Lcom/android/server/pm/PackageManagerService$13$1;->this$1:Lcom/android/server/pm/PackageManagerService$13;

    iput-object p2, p0, Lcom/android/server/pm/PackageManagerService$13$1;->val$packageName:Ljava/lang/String;

    iput p3, p0, Lcom/android/server/pm/PackageManagerService$13$1;->val$retCode:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 16153
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService$13$1;->val$packageName:Ljava/lang/String;

    iget v1, p0, Lcom/android/server/pm/PackageManagerService$13$1;->val$retCode:I

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/android/server/pm/PackageManagerServiceInjector;->onPackageDeleted(Ljava/lang/String;ILjava/lang/String;)V

    .line 16152
    return-void
.end method
