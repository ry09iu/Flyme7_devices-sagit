.class public Lcom/android/stk/StkDigitsKeyListener;
.super Landroid/text/method/NumberKeyListener;
.source "StkDigitsKeyListener.java"


# static fields
.field public static final CHARACTERS:[C

.field private static sInstance:Lcom/android/stk/StkDigitsKeyListener;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 50
    const/16 v0, 0xd

    new-array v0, v0, [C

    fill-array-data v0, :array_0

    sput-object v0, Lcom/android/stk/StkDigitsKeyListener;->CHARACTERS:[C

    .line 26
    return-void

    .line 50
    :array_0
    .array-data 2
        0x30s
        0x31s
        0x32s
        0x33s
        0x34s
        0x35s
        0x36s
        0x37s
        0x38s
        0x39s
        0x2as
        0x23s
        0x2bs
    .end array-data
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 26
    invoke-direct {p0}, Landroid/text/method/NumberKeyListener;-><init>()V

    return-void
.end method

.method public static getInstance()Lcom/android/stk/StkDigitsKeyListener;
    .locals 1

    .prologue
    .line 37
    sget-object v0, Lcom/android/stk/StkDigitsKeyListener;->sInstance:Lcom/android/stk/StkDigitsKeyListener;

    if-eqz v0, :cond_0

    .line 38
    sget-object v0, Lcom/android/stk/StkDigitsKeyListener;->sInstance:Lcom/android/stk/StkDigitsKeyListener;

    return-object v0

    .line 40
    :cond_0
    new-instance v0, Lcom/android/stk/StkDigitsKeyListener;

    invoke-direct {v0}, Lcom/android/stk/StkDigitsKeyListener;-><init>()V

    sput-object v0, Lcom/android/stk/StkDigitsKeyListener;->sInstance:Lcom/android/stk/StkDigitsKeyListener;

    .line 41
    sget-object v0, Lcom/android/stk/StkDigitsKeyListener;->sInstance:Lcom/android/stk/StkDigitsKeyListener;

    return-object v0
.end method


# virtual methods
.method protected getAcceptedChars()[C
    .locals 1

    .prologue
    .line 29
    sget-object v0, Lcom/android/stk/StkDigitsKeyListener;->CHARACTERS:[C

    return-object v0
.end method

.method public getInputType()I
    .locals 1

    .prologue
    .line 33
    const/4 v0, 0x3

    return v0
.end method
