.class final Lcom/android/internal/widget/LockPatternChecker$1;
.super Landroid/os/AsyncTask;
.source "LockPatternChecker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/internal/widget/LockPatternChecker;->verifyPattern(Lcom/android/internal/widget/LockPatternUtils;Ljava/util/List;JILcom/android/internal/widget/LockPatternChecker$OnVerifyCallback;)Landroid/os/AsyncTask;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "[B>;"
    }
.end annotation


# instance fields
.field private mThrottleTimeout:I

.field final synthetic val$callback:Lcom/android/internal/widget/LockPatternChecker$OnVerifyCallback;

.field final synthetic val$challenge:J

.field final synthetic val$pattern:Ljava/util/List;

.field final synthetic val$userId:I

.field final synthetic val$utils:Lcom/android/internal/widget/LockPatternUtils;


# direct methods
.method constructor <init>(Lcom/android/internal/widget/LockPatternUtils;Ljava/util/List;JILcom/android/internal/widget/LockPatternChecker$OnVerifyCallback;)V
    .locals 1
    .param p1, "val$utils"    # Lcom/android/internal/widget/LockPatternUtils;
    .param p3, "val$challenge"    # J
    .param p5, "val$userId"    # I
    .param p6, "val$callback"    # Lcom/android/internal/widget/LockPatternChecker$OnVerifyCallback;

    .prologue
    .line 62
    .local p2, "val$pattern":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/widget/LockPatternView$Cell;>;"
    iput-object p1, p0, Lcom/android/internal/widget/LockPatternChecker$1;->val$utils:Lcom/android/internal/widget/LockPatternUtils;

    iput-object p2, p0, Lcom/android/internal/widget/LockPatternChecker$1;->val$pattern:Ljava/util/List;

    iput-wide p3, p0, Lcom/android/internal/widget/LockPatternChecker$1;->val$challenge:J

    iput p5, p0, Lcom/android/internal/widget/LockPatternChecker$1;->val$userId:I

    iput-object p6, p0, Lcom/android/internal/widget/LockPatternChecker$1;->val$callback:Lcom/android/internal/widget/LockPatternChecker$OnVerifyCallback;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "args"    # [Ljava/lang/Object;

    .prologue
    .line 66
    check-cast p1, [Ljava/lang/Void;

    .end local p1    # "args":[Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/android/internal/widget/LockPatternChecker$1;->doInBackground([Ljava/lang/Void;)[B

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)[B
    .locals 6
    .param p1, "args"    # [Ljava/lang/Void;

    .prologue
    .line 68
    :try_start_0
    iget-object v1, p0, Lcom/android/internal/widget/LockPatternChecker$1;->val$utils:Lcom/android/internal/widget/LockPatternUtils;

    iget-object v2, p0, Lcom/android/internal/widget/LockPatternChecker$1;->val$pattern:Ljava/util/List;

    iget-wide v4, p0, Lcom/android/internal/widget/LockPatternChecker$1;->val$challenge:J

    iget v3, p0, Lcom/android/internal/widget/LockPatternChecker$1;->val$userId:I

    invoke-virtual {v1, v2, v4, v5, v3}, Lcom/android/internal/widget/LockPatternUtils;->verifyPattern(Ljava/util/List;JI)[B
    :try_end_0
    .catch Lcom/android/internal/widget/LockPatternUtils$RequestThrottledException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    return-object v1

    .line 69
    :catch_0
    move-exception v0

    .line 70
    .local v0, "ex":Lcom/android/internal/widget/LockPatternUtils$RequestThrottledException;
    invoke-virtual {v0}, Lcom/android/internal/widget/LockPatternUtils$RequestThrottledException;->getTimeoutMs()I

    move-result v1

    iput v1, p0, Lcom/android/internal/widget/LockPatternChecker$1;->mThrottleTimeout:I

    .line 71
    const/4 v1, 0x0

    return-object v1
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .param p1, "result"    # Ljava/lang/Object;

    .prologue
    .line 76
    check-cast p1, [B

    .end local p1    # "result":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/android/internal/widget/LockPatternChecker$1;->onPostExecute([B)V

    return-void
.end method

.method protected onPostExecute([B)V
    .locals 2
    .param p1, "result"    # [B

    .prologue
    .line 77
    iget-object v0, p0, Lcom/android/internal/widget/LockPatternChecker$1;->val$callback:Lcom/android/internal/widget/LockPatternChecker$OnVerifyCallback;

    iget v1, p0, Lcom/android/internal/widget/LockPatternChecker$1;->mThrottleTimeout:I

    invoke-interface {v0, p1, v1}, Lcom/android/internal/widget/LockPatternChecker$OnVerifyCallback;->onVerified([BI)V

    .line 76
    return-void
.end method
