.class public final Landroid/support/v8/renderscript/ScriptGroup$Future;
.super Ljava/lang/Object;
.source "ScriptGroup.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v8/renderscript/ScriptGroup;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Future"
.end annotation


# instance fields
.field mClosure:Landroid/support/v8/renderscript/ScriptGroup$Closure;

.field mFieldID:Landroid/support/v8/renderscript/Script$FieldID;

.field mValue:Ljava/lang/Object;


# direct methods
.method constructor <init>(Landroid/support/v8/renderscript/ScriptGroup$Closure;Landroid/support/v8/renderscript/Script$FieldID;Ljava/lang/Object;)V
    .locals 0
    .param p1, "closure"    # Landroid/support/v8/renderscript/ScriptGroup$Closure;
    .param p2, "fieldID"    # Landroid/support/v8/renderscript/Script$FieldID;
    .param p3, "value"    # Ljava/lang/Object;

    .prologue
    .line 336
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 337
    iput-object p1, p0, Landroid/support/v8/renderscript/ScriptGroup$Future;->mClosure:Landroid/support/v8/renderscript/ScriptGroup$Closure;

    .line 338
    iput-object p2, p0, Landroid/support/v8/renderscript/ScriptGroup$Future;->mFieldID:Landroid/support/v8/renderscript/Script$FieldID;

    .line 339
    iput-object p3, p0, Landroid/support/v8/renderscript/ScriptGroup$Future;->mValue:Ljava/lang/Object;

    .line 336
    return-void
.end method


# virtual methods
.method getClosure()Landroid/support/v8/renderscript/ScriptGroup$Closure;
    .locals 1

    .prologue
    .line 342
    iget-object v0, p0, Landroid/support/v8/renderscript/ScriptGroup$Future;->mClosure:Landroid/support/v8/renderscript/ScriptGroup$Closure;

    return-object v0
.end method

.method getFieldID()Landroid/support/v8/renderscript/Script$FieldID;
    .locals 1

    .prologue
    .line 343
    iget-object v0, p0, Landroid/support/v8/renderscript/ScriptGroup$Future;->mFieldID:Landroid/support/v8/renderscript/Script$FieldID;

    return-object v0
.end method

.method getValue()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 344
    iget-object v0, p0, Landroid/support/v8/renderscript/ScriptGroup$Future;->mValue:Ljava/lang/Object;

    return-object v0
.end method
