.class public Lmiui/push/XMPPError;
.super Ljava/lang/Object;
.source "XMPPError.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmiui/push/XMPPError$Condition;
    }
.end annotation


# instance fields
.field private applicationExtensions:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lmiui/push/CommonPacketExtension;",
            ">;"
        }
    .end annotation
.end field

.field private code:I

.field private condition:Ljava/lang/String;

.field private message:Ljava/lang/String;

.field private reason:Ljava/lang/String;

.field private type:Ljava/lang/String;


# direct methods
.method public constructor <init>(I)V
    .locals 1
    .param p1, "code"    # I

    .prologue
    const/4 v0, 0x0

    .line 211
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 172
    iput-object v0, p0, Lmiui/push/XMPPError;->applicationExtensions:Ljava/util/List;

    .line 212
    iput p1, p0, Lmiui/push/XMPPError;->code:I

    .line 213
    iput-object v0, p0, Lmiui/push/XMPPError;->message:Ljava/lang/String;

    .line 211
    return-void
.end method

.method public constructor <init>(ILjava/lang/String;)V
    .locals 1
    .param p1, "code"    # I
    .param p2, "message"    # Ljava/lang/String;

    .prologue
    .line 224
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 172
    const/4 v0, 0x0

    iput-object v0, p0, Lmiui/push/XMPPError;->applicationExtensions:Ljava/util/List;

    .line 225
    iput p1, p0, Lmiui/push/XMPPError;->code:I

    .line 226
    iput-object p2, p0, Lmiui/push/XMPPError;->message:Ljava/lang/String;

    .line 224
    return-void
.end method

.method public constructor <init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)V
    .locals 1
    .param p1, "code"    # I
    .param p2, "type"    # Ljava/lang/String;
    .param p3, "reason"    # Ljava/lang/String;
    .param p4, "condition"    # Ljava/lang/String;
    .param p5, "message"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Lmiui/push/CommonPacketExtension;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 241
    .local p6, "extension":Ljava/util/List;, "Ljava/util/List<Lmiui/push/CommonPacketExtension;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 172
    const/4 v0, 0x0

    iput-object v0, p0, Lmiui/push/XMPPError;->applicationExtensions:Ljava/util/List;

    .line 243
    iput p1, p0, Lmiui/push/XMPPError;->code:I

    .line 244
    iput-object p2, p0, Lmiui/push/XMPPError;->type:Ljava/lang/String;

    .line 245
    iput-object p3, p0, Lmiui/push/XMPPError;->reason:Ljava/lang/String;

    .line 246
    iput-object p4, p0, Lmiui/push/XMPPError;->condition:Ljava/lang/String;

    .line 247
    iput-object p5, p0, Lmiui/push/XMPPError;->message:Ljava/lang/String;

    .line 248
    iput-object p6, p0, Lmiui/push/XMPPError;->applicationExtensions:Ljava/util/List;

    .line 242
    return-void
.end method

.method public constructor <init>(Landroid/os/Bundle;)V
    .locals 7
    .param p1, "bundle"    # Landroid/os/Bundle;

    .prologue
    const/4 v4, 0x0

    .line 251
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 172
    iput-object v4, p0, Lmiui/push/XMPPError;->applicationExtensions:Ljava/util/List;

    .line 252
    const-string/jumbo v4, "ext_err_code"

    invoke-virtual {p1, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v4

    iput v4, p0, Lmiui/push/XMPPError;->code:I

    .line 253
    const-string/jumbo v4, "ext_err_type"

    invoke-virtual {p1, v4}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 254
    const-string/jumbo v4, "ext_err_type"

    invoke-virtual {p1, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lmiui/push/XMPPError;->type:Ljava/lang/String;

    .line 256
    :cond_0
    const-string/jumbo v4, "ext_err_cond"

    invoke-virtual {p1, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lmiui/push/XMPPError;->condition:Ljava/lang/String;

    .line 257
    const-string/jumbo v4, "ext_err_reason"

    invoke-virtual {p1, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lmiui/push/XMPPError;->reason:Ljava/lang/String;

    .line 258
    const-string/jumbo v4, "ext_err_msg"

    invoke-virtual {p1, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lmiui/push/XMPPError;->message:Ljava/lang/String;

    .line 259
    const-string/jumbo v4, "ext_exts"

    invoke-virtual {p1, v4}, Landroid/os/Bundle;->getParcelableArray(Ljava/lang/String;)[Landroid/os/Parcelable;

    move-result-object v2

    .line 260
    .local v2, "extBundles":[Landroid/os/Parcelable;
    if-eqz v2, :cond_2

    .line 261
    new-instance v4, Ljava/util/ArrayList;

    array-length v5, v2

    invoke-direct {v4, v5}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v4, p0, Lmiui/push/XMPPError;->applicationExtensions:Ljava/util/List;

    .line 262
    const/4 v4, 0x0

    array-length v5, v2

    :goto_0
    if-ge v4, v5, :cond_2

    aget-object v3, v2, v4

    .local v3, "p":Landroid/os/Parcelable;
    move-object v0, v3

    .line 263
    check-cast v0, Landroid/os/Bundle;

    .line 264
    .local v0, "b":Landroid/os/Bundle;
    invoke-static {v0}, Lmiui/push/CommonPacketExtension;->parseFromBundle(Landroid/os/Bundle;)Lmiui/push/CommonPacketExtension;

    move-result-object v1

    .line 265
    .local v1, "ext":Lmiui/push/CommonPacketExtension;
    if-eqz v1, :cond_1

    .line 266
    iget-object v6, p0, Lmiui/push/XMPPError;->applicationExtensions:Ljava/util/List;

    invoke-interface {v6, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 262
    :cond_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 251
    .end local v0    # "b":Landroid/os/Bundle;
    .end local v1    # "ext":Lmiui/push/CommonPacketExtension;
    .end local v3    # "p":Landroid/os/Parcelable;
    :cond_2
    return-void
.end method

.method public constructor <init>(Lmiui/push/XMPPError$Condition;)V
    .locals 1
    .param p1, "condition"    # Lmiui/push/XMPPError$Condition;

    .prologue
    const/4 v0, 0x0

    .line 183
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 172
    iput-object v0, p0, Lmiui/push/XMPPError;->applicationExtensions:Ljava/util/List;

    .line 184
    invoke-direct {p0, p1}, Lmiui/push/XMPPError;->init(Lmiui/push/XMPPError$Condition;)V

    .line 185
    iput-object v0, p0, Lmiui/push/XMPPError;->message:Ljava/lang/String;

    .line 183
    return-void
.end method

.method public constructor <init>(Lmiui/push/XMPPError$Condition;Ljava/lang/String;)V
    .locals 1
    .param p1, "condition"    # Lmiui/push/XMPPError$Condition;
    .param p2, "messageText"    # Ljava/lang/String;

    .prologue
    .line 199
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 172
    const/4 v0, 0x0

    iput-object v0, p0, Lmiui/push/XMPPError;->applicationExtensions:Ljava/util/List;

    .line 200
    invoke-direct {p0, p1}, Lmiui/push/XMPPError;->init(Lmiui/push/XMPPError$Condition;)V

    .line 201
    iput-object p2, p0, Lmiui/push/XMPPError;->message:Ljava/lang/String;

    .line 199
    return-void
.end method

.method private init(Lmiui/push/XMPPError$Condition;)V
    .locals 1
    .param p1, "condition"    # Lmiui/push/XMPPError$Condition;

    .prologue
    .line 280
    invoke-static {p1}, Lmiui/push/XMPPError$Condition;->-get0(Lmiui/push/XMPPError$Condition;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lmiui/push/XMPPError;->condition:Ljava/lang/String;

    .line 278
    return-void
.end method


# virtual methods
.method public declared-synchronized addExtension(Lmiui/push/CommonPacketExtension;)V
    .locals 1
    .param p1, "extension"    # Lmiui/push/CommonPacketExtension;

    .prologue
    monitor-enter p0

    .line 439
    :try_start_0
    iget-object v0, p0, Lmiui/push/XMPPError;->applicationExtensions:Ljava/util/List;

    if-nez v0, :cond_0

    .line 440
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lmiui/push/XMPPError;->applicationExtensions:Ljava/util/List;

    .line 442
    :cond_0
    iget-object v0, p0, Lmiui/push/XMPPError;->applicationExtensions:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    .line 438
    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getCode()I
    .locals 1

    .prologue
    .line 311
    iget v0, p0, Lmiui/push/XMPPError;->code:I

    return v0
.end method

.method public getCondition()Ljava/lang/String;
    .locals 1

    .prologue
    .line 289
    iget-object v0, p0, Lmiui/push/XMPPError;->condition:Ljava/lang/String;

    return-object v0
.end method

.method public declared-synchronized getExtension(Ljava/lang/String;Ljava/lang/String;)Lmiui/push/PacketExtension;
    .locals 4
    .param p1, "elementName"    # Ljava/lang/String;
    .param p2, "namespace"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x0

    monitor-enter p0

    .line 422
    :try_start_0
    iget-object v2, p0, Lmiui/push/XMPPError;->applicationExtensions:Ljava/util/List;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v2, :cond_0

    if-nez p1, :cond_1

    :cond_0
    monitor-exit p0

    .line 423
    return-object v3

    .line 422
    :cond_1
    if-eqz p2, :cond_0

    .line 425
    :try_start_1
    iget-object v2, p0, Lmiui/push/XMPPError;->applicationExtensions:Ljava/util/List;

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "ext$iterator":Ljava/util/Iterator;
    :cond_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmiui/push/CommonPacketExtension;

    .line 426
    .local v0, "ext":Lmiui/push/PacketExtension;
    invoke-interface {v0}, Lmiui/push/PacketExtension;->getElementName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v0}, Lmiui/push/PacketExtension;->getNamespace()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v2

    if-eqz v2, :cond_2

    monitor-exit p0

    .line 427
    return-object v0

    .end local v0    # "ext":Lmiui/push/PacketExtension;
    :cond_3
    monitor-exit p0

    .line 430
    return-object v3

    .end local v1    # "ext$iterator":Ljava/util/Iterator;
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2
.end method

.method public declared-synchronized getExtensions()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lmiui/push/CommonPacketExtension;",
            ">;"
        }
    .end annotation

    .prologue
    monitor-enter p0

    .line 407
    :try_start_0
    iget-object v0, p0, Lmiui/push/XMPPError;->applicationExtensions:Ljava/util/List;

    if-nez v0, :cond_0

    .line 408
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    monitor-exit p0

    return-object v0

    .line 410
    :cond_0
    :try_start_1
    iget-object v0, p0, Lmiui/push/XMPPError;->applicationExtensions:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getMessage()Ljava/lang/String;
    .locals 1

    .prologue
    .line 320
    iget-object v0, p0, Lmiui/push/XMPPError;->message:Ljava/lang/String;

    return-object v0
.end method

.method public getReason()Ljava/lang/String;
    .locals 1

    .prologue
    .line 293
    iget-object v0, p0, Lmiui/push/XMPPError;->reason:Ljava/lang/String;

    return-object v0
.end method

.method public getType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 302
    iget-object v0, p0, Lmiui/push/XMPPError;->type:Ljava/lang/String;

    return-object v0
.end method

.method public declared-synchronized setExtension(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lmiui/push/CommonPacketExtension;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p1, "extension":Ljava/util/List;, "Ljava/util/List<Lmiui/push/CommonPacketExtension;>;"
    monitor-enter p0

    .line 451
    :try_start_0
    iput-object p1, p0, Lmiui/push/XMPPError;->applicationExtensions:Ljava/util/List;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    .line 450
    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public toBundle()Landroid/os/Bundle;
    .locals 9

    .prologue
    .line 324
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 325
    .local v0, "bundle":Landroid/os/Bundle;
    iget-object v7, p0, Lmiui/push/XMPPError;->type:Ljava/lang/String;

    if-eqz v7, :cond_0

    .line 326
    const-string/jumbo v7, "ext_err_type"

    iget-object v8, p0, Lmiui/push/XMPPError;->type:Ljava/lang/String;

    invoke-virtual {v0, v7, v8}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 328
    :cond_0
    const-string/jumbo v7, "ext_err_code"

    iget v8, p0, Lmiui/push/XMPPError;->code:I

    invoke-virtual {v0, v7, v8}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 329
    iget-object v7, p0, Lmiui/push/XMPPError;->reason:Ljava/lang/String;

    if-eqz v7, :cond_1

    .line 330
    const-string/jumbo v7, "ext_err_reason"

    iget-object v8, p0, Lmiui/push/XMPPError;->reason:Ljava/lang/String;

    invoke-virtual {v0, v7, v8}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 332
    :cond_1
    iget-object v7, p0, Lmiui/push/XMPPError;->condition:Ljava/lang/String;

    if-eqz v7, :cond_2

    .line 333
    const-string/jumbo v7, "ext_err_cond"

    iget-object v8, p0, Lmiui/push/XMPPError;->condition:Ljava/lang/String;

    invoke-virtual {v0, v7, v8}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 335
    :cond_2
    iget-object v7, p0, Lmiui/push/XMPPError;->message:Ljava/lang/String;

    if-eqz v7, :cond_3

    .line 336
    const-string/jumbo v7, "ext_err_msg"

    iget-object v8, p0, Lmiui/push/XMPPError;->message:Ljava/lang/String;

    invoke-virtual {v0, v7, v8}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 338
    :cond_3
    iget-object v7, p0, Lmiui/push/XMPPError;->applicationExtensions:Ljava/util/List;

    if-eqz v7, :cond_6

    .line 339
    iget-object v7, p0, Lmiui/push/XMPPError;->applicationExtensions:Ljava/util/List;

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v7

    new-array v3, v7, [Landroid/os/Bundle;

    .line 340
    .local v3, "extBundle":[Landroid/os/Bundle;
    const/4 v4, 0x0

    .line 341
    .local v4, "i":I
    iget-object v7, p0, Lmiui/push/XMPPError;->applicationExtensions:Ljava/util/List;

    invoke-interface {v7}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "ext$iterator":Ljava/util/Iterator;
    :cond_4
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_5

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lmiui/push/CommonPacketExtension;

    .line 342
    .local v1, "ext":Lmiui/push/CommonPacketExtension;
    invoke-virtual {v1}, Lmiui/push/CommonPacketExtension;->toBundle()Landroid/os/Bundle;

    move-result-object v6

    .line 343
    .local v6, "subBundle":Landroid/os/Bundle;
    if-eqz v6, :cond_4

    .line 344
    add-int/lit8 v5, v4, 0x1

    .end local v4    # "i":I
    .local v5, "i":I
    aput-object v6, v3, v4

    move v4, v5

    .end local v5    # "i":I
    .restart local v4    # "i":I
    goto :goto_0

    .line 347
    .end local v1    # "ext":Lmiui/push/CommonPacketExtension;
    .end local v6    # "subBundle":Landroid/os/Bundle;
    :cond_5
    const-string/jumbo v7, "ext_exts"

    invoke-virtual {v0, v7, v3}, Landroid/os/Bundle;->putParcelableArray(Ljava/lang/String;[Landroid/os/Parcelable;)V

    .line 349
    .end local v2    # "ext$iterator":Ljava/util/Iterator;
    .end local v3    # "extBundle":[Landroid/os/Bundle;
    .end local v4    # "i":I
    :cond_6
    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 388
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 389
    .local v0, "txt":Ljava/lang/StringBuilder;
    iget-object v1, p0, Lmiui/push/XMPPError;->condition:Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 390
    iget-object v1, p0, Lmiui/push/XMPPError;->condition:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 392
    :cond_0
    const-string/jumbo v1, "("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lmiui/push/XMPPError;->code:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 393
    iget-object v1, p0, Lmiui/push/XMPPError;->message:Ljava/lang/String;

    if-eqz v1, :cond_1

    .line 394
    const-string/jumbo v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lmiui/push/XMPPError;->message:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 396
    :cond_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public toXML()Ljava/lang/String;
    .locals 5

    .prologue
    .line 358
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 359
    .local v0, "buf":Ljava/lang/StringBuilder;
    const-string/jumbo v3, "<error code=\""

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lmiui/push/XMPPError;->code:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "\""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 360
    iget-object v3, p0, Lmiui/push/XMPPError;->type:Ljava/lang/String;

    if-eqz v3, :cond_0

    .line 361
    const-string/jumbo v3, " type=\""

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 362
    iget-object v3, p0, Lmiui/push/XMPPError;->type:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 363
    const-string/jumbo v3, "\""

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 365
    :cond_0
    iget-object v3, p0, Lmiui/push/XMPPError;->reason:Ljava/lang/String;

    if-eqz v3, :cond_1

    .line 366
    const-string/jumbo v3, " reason=\""

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 367
    iget-object v3, p0, Lmiui/push/XMPPError;->reason:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 368
    const-string/jumbo v3, "\""

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 370
    :cond_1
    const-string/jumbo v3, ">"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 371
    iget-object v3, p0, Lmiui/push/XMPPError;->condition:Ljava/lang/String;

    if-eqz v3, :cond_2

    .line 372
    const-string/jumbo v3, "<"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lmiui/push/XMPPError;->condition:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 373
    const-string/jumbo v3, " xmlns=\"urn:ietf:params:xml:ns:xmpp-stanzas\"/>"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 375
    :cond_2
    iget-object v3, p0, Lmiui/push/XMPPError;->message:Ljava/lang/String;

    if-eqz v3, :cond_3

    .line 376
    const-string/jumbo v3, "<text xml:lang=\"en\" xmlns=\"urn:ietf:params:xml:ns:xmpp-stanzas\">"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 377
    iget-object v3, p0, Lmiui/push/XMPPError;->message:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 378
    const-string/jumbo v3, "</text>"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 380
    :cond_3
    invoke-virtual {p0}, Lmiui/push/XMPPError;->getExtensions()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "element$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lmiui/push/CommonPacketExtension;

    .line 381
    .local v1, "element":Lmiui/push/PacketExtension;
    invoke-interface {v1}, Lmiui/push/PacketExtension;->toXML()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 383
    .end local v1    # "element":Lmiui/push/PacketExtension;
    :cond_4
    const-string/jumbo v3, "</error>"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 384
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3
.end method
