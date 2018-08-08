.class public Lcom/android/server/am/PKTopWindowViewFactory$FirstWindow;
.super Landroid/widget/FrameLayout;
.source "PKTopWindowViewFactory.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/am/PKTopWindowViewFactory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "FirstWindow"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/am/PKTopWindowViewFactory;


# direct methods
.method public constructor <init>(Lcom/android/server/am/PKTopWindowViewFactory;Landroid/content/Context;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/am/PKTopWindowViewFactory;
    .param p2, "context"    # Landroid/content/Context;

    .prologue
    .line 467
    iput-object p1, p0, Lcom/android/server/am/PKTopWindowViewFactory$FirstWindow;->this$0:Lcom/android/server/am/PKTopWindowViewFactory;

    .line 468
    invoke-direct {p0, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 467
    return-void
.end method

.method public constructor <init>(Lcom/android/server/am/PKTopWindowViewFactory;Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/am/PKTopWindowViewFactory;
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 471
    iput-object p1, p0, Lcom/android/server/am/PKTopWindowViewFactory$FirstWindow;->this$0:Lcom/android/server/am/PKTopWindowViewFactory;

    .line 472
    invoke-direct {p0, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 471
    return-void
.end method

.method public constructor <init>(Lcom/android/server/am/PKTopWindowViewFactory;Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/am/PKTopWindowViewFactory;
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "attrs"    # Landroid/util/AttributeSet;
    .param p4, "defStyleAttr"    # I

    .prologue
    .line 475
    iput-object p1, p0, Lcom/android/server/am/PKTopWindowViewFactory$FirstWindow;->this$0:Lcom/android/server/am/PKTopWindowViewFactory;

    .line 476
    invoke-direct {p0, p2, p3, p4}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 475
    return-void
.end method
