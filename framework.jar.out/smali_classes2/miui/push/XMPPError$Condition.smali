.class public Lmiui/push/XMPPError$Condition;
.super Ljava/lang/Object;
.source "XMPPError.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiui/push/XMPPError;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Condition"
.end annotation


# static fields
.field public static final bad_request:Lmiui/push/XMPPError$Condition;

.field public static final conflict:Lmiui/push/XMPPError$Condition;

.field public static final feature_not_implemented:Lmiui/push/XMPPError$Condition;

.field public static final forbidden:Lmiui/push/XMPPError$Condition;

.field public static final gone:Lmiui/push/XMPPError$Condition;

.field public static final interna_server_error:Lmiui/push/XMPPError$Condition;

.field public static final item_not_found:Lmiui/push/XMPPError$Condition;

.field public static final jid_malformed:Lmiui/push/XMPPError$Condition;

.field public static final no_acceptable:Lmiui/push/XMPPError$Condition;

.field public static final not_allowed:Lmiui/push/XMPPError$Condition;

.field public static final not_authorized:Lmiui/push/XMPPError$Condition;

.field public static final payment_required:Lmiui/push/XMPPError$Condition;

.field public static final recipient_unavailable:Lmiui/push/XMPPError$Condition;

.field public static final redirect:Lmiui/push/XMPPError$Condition;

.field public static final registration_required:Lmiui/push/XMPPError$Condition;

.field public static final remote_server_error:Lmiui/push/XMPPError$Condition;

.field public static final remote_server_not_found:Lmiui/push/XMPPError$Condition;

.field public static final remote_server_timeout:Lmiui/push/XMPPError$Condition;

.field public static final request_timeout:Lmiui/push/XMPPError$Condition;

.field public static final resource_constraint:Lmiui/push/XMPPError$Condition;

.field public static final service_unavailable:Lmiui/push/XMPPError$Condition;

.field public static final subscription_required:Lmiui/push/XMPPError$Condition;

.field public static final undefined_condition:Lmiui/push/XMPPError$Condition;

.field public static final unexpected_request:Lmiui/push/XMPPError$Condition;


# instance fields
.field private value:Ljava/lang/String;


# direct methods
.method static synthetic -get0(Lmiui/push/XMPPError$Condition;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lmiui/push/XMPPError$Condition;->value:Ljava/lang/String;

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 459
    new-instance v0, Lmiui/push/XMPPError$Condition;

    const-string/jumbo v1, "internal-server-error"

    invoke-direct {v0, v1}, Lmiui/push/XMPPError$Condition;-><init>(Ljava/lang/String;)V

    sput-object v0, Lmiui/push/XMPPError$Condition;->interna_server_error:Lmiui/push/XMPPError$Condition;

    .line 460
    new-instance v0, Lmiui/push/XMPPError$Condition;

    const-string/jumbo v1, "forbidden"

    invoke-direct {v0, v1}, Lmiui/push/XMPPError$Condition;-><init>(Ljava/lang/String;)V

    sput-object v0, Lmiui/push/XMPPError$Condition;->forbidden:Lmiui/push/XMPPError$Condition;

    .line 461
    new-instance v0, Lmiui/push/XMPPError$Condition;

    const-string/jumbo v1, "bad-request"

    invoke-direct {v0, v1}, Lmiui/push/XMPPError$Condition;-><init>(Ljava/lang/String;)V

    sput-object v0, Lmiui/push/XMPPError$Condition;->bad_request:Lmiui/push/XMPPError$Condition;

    .line 462
    new-instance v0, Lmiui/push/XMPPError$Condition;

    const-string/jumbo v1, "conflict"

    invoke-direct {v0, v1}, Lmiui/push/XMPPError$Condition;-><init>(Ljava/lang/String;)V

    sput-object v0, Lmiui/push/XMPPError$Condition;->conflict:Lmiui/push/XMPPError$Condition;

    .line 463
    new-instance v0, Lmiui/push/XMPPError$Condition;

    .line 464
    const-string/jumbo v1, "feature-not-implemented"

    .line 463
    invoke-direct {v0, v1}, Lmiui/push/XMPPError$Condition;-><init>(Ljava/lang/String;)V

    sput-object v0, Lmiui/push/XMPPError$Condition;->feature_not_implemented:Lmiui/push/XMPPError$Condition;

    .line 465
    new-instance v0, Lmiui/push/XMPPError$Condition;

    const-string/jumbo v1, "gone"

    invoke-direct {v0, v1}, Lmiui/push/XMPPError$Condition;-><init>(Ljava/lang/String;)V

    sput-object v0, Lmiui/push/XMPPError$Condition;->gone:Lmiui/push/XMPPError$Condition;

    .line 466
    new-instance v0, Lmiui/push/XMPPError$Condition;

    const-string/jumbo v1, "item-not-found"

    invoke-direct {v0, v1}, Lmiui/push/XMPPError$Condition;-><init>(Ljava/lang/String;)V

    sput-object v0, Lmiui/push/XMPPError$Condition;->item_not_found:Lmiui/push/XMPPError$Condition;

    .line 467
    new-instance v0, Lmiui/push/XMPPError$Condition;

    const-string/jumbo v1, "jid-malformed"

    invoke-direct {v0, v1}, Lmiui/push/XMPPError$Condition;-><init>(Ljava/lang/String;)V

    sput-object v0, Lmiui/push/XMPPError$Condition;->jid_malformed:Lmiui/push/XMPPError$Condition;

    .line 468
    new-instance v0, Lmiui/push/XMPPError$Condition;

    const-string/jumbo v1, "not-acceptable"

    invoke-direct {v0, v1}, Lmiui/push/XMPPError$Condition;-><init>(Ljava/lang/String;)V

    sput-object v0, Lmiui/push/XMPPError$Condition;->no_acceptable:Lmiui/push/XMPPError$Condition;

    .line 469
    new-instance v0, Lmiui/push/XMPPError$Condition;

    const-string/jumbo v1, "not-allowed"

    invoke-direct {v0, v1}, Lmiui/push/XMPPError$Condition;-><init>(Ljava/lang/String;)V

    sput-object v0, Lmiui/push/XMPPError$Condition;->not_allowed:Lmiui/push/XMPPError$Condition;

    .line 470
    new-instance v0, Lmiui/push/XMPPError$Condition;

    const-string/jumbo v1, "not-authorized"

    invoke-direct {v0, v1}, Lmiui/push/XMPPError$Condition;-><init>(Ljava/lang/String;)V

    sput-object v0, Lmiui/push/XMPPError$Condition;->not_authorized:Lmiui/push/XMPPError$Condition;

    .line 471
    new-instance v0, Lmiui/push/XMPPError$Condition;

    const-string/jumbo v1, "payment-required"

    invoke-direct {v0, v1}, Lmiui/push/XMPPError$Condition;-><init>(Ljava/lang/String;)V

    sput-object v0, Lmiui/push/XMPPError$Condition;->payment_required:Lmiui/push/XMPPError$Condition;

    .line 472
    new-instance v0, Lmiui/push/XMPPError$Condition;

    const-string/jumbo v1, "recipient-unavailable"

    invoke-direct {v0, v1}, Lmiui/push/XMPPError$Condition;-><init>(Ljava/lang/String;)V

    sput-object v0, Lmiui/push/XMPPError$Condition;->recipient_unavailable:Lmiui/push/XMPPError$Condition;

    .line 473
    new-instance v0, Lmiui/push/XMPPError$Condition;

    const-string/jumbo v1, "redirect"

    invoke-direct {v0, v1}, Lmiui/push/XMPPError$Condition;-><init>(Ljava/lang/String;)V

    sput-object v0, Lmiui/push/XMPPError$Condition;->redirect:Lmiui/push/XMPPError$Condition;

    .line 474
    new-instance v0, Lmiui/push/XMPPError$Condition;

    const-string/jumbo v1, "registration-required"

    invoke-direct {v0, v1}, Lmiui/push/XMPPError$Condition;-><init>(Ljava/lang/String;)V

    sput-object v0, Lmiui/push/XMPPError$Condition;->registration_required:Lmiui/push/XMPPError$Condition;

    .line 475
    new-instance v0, Lmiui/push/XMPPError$Condition;

    const-string/jumbo v1, "remote-server-error"

    invoke-direct {v0, v1}, Lmiui/push/XMPPError$Condition;-><init>(Ljava/lang/String;)V

    sput-object v0, Lmiui/push/XMPPError$Condition;->remote_server_error:Lmiui/push/XMPPError$Condition;

    .line 476
    new-instance v0, Lmiui/push/XMPPError$Condition;

    .line 477
    const-string/jumbo v1, "remote-server-not-found"

    .line 476
    invoke-direct {v0, v1}, Lmiui/push/XMPPError$Condition;-><init>(Ljava/lang/String;)V

    sput-object v0, Lmiui/push/XMPPError$Condition;->remote_server_not_found:Lmiui/push/XMPPError$Condition;

    .line 478
    new-instance v0, Lmiui/push/XMPPError$Condition;

    const-string/jumbo v1, "remote-server-timeout"

    invoke-direct {v0, v1}, Lmiui/push/XMPPError$Condition;-><init>(Ljava/lang/String;)V

    sput-object v0, Lmiui/push/XMPPError$Condition;->remote_server_timeout:Lmiui/push/XMPPError$Condition;

    .line 479
    new-instance v0, Lmiui/push/XMPPError$Condition;

    const-string/jumbo v1, "resource-constraint"

    invoke-direct {v0, v1}, Lmiui/push/XMPPError$Condition;-><init>(Ljava/lang/String;)V

    sput-object v0, Lmiui/push/XMPPError$Condition;->resource_constraint:Lmiui/push/XMPPError$Condition;

    .line 480
    new-instance v0, Lmiui/push/XMPPError$Condition;

    const-string/jumbo v1, "service-unavailable"

    invoke-direct {v0, v1}, Lmiui/push/XMPPError$Condition;-><init>(Ljava/lang/String;)V

    sput-object v0, Lmiui/push/XMPPError$Condition;->service_unavailable:Lmiui/push/XMPPError$Condition;

    .line 481
    new-instance v0, Lmiui/push/XMPPError$Condition;

    const-string/jumbo v1, "subscription-required"

    invoke-direct {v0, v1}, Lmiui/push/XMPPError$Condition;-><init>(Ljava/lang/String;)V

    sput-object v0, Lmiui/push/XMPPError$Condition;->subscription_required:Lmiui/push/XMPPError$Condition;

    .line 482
    new-instance v0, Lmiui/push/XMPPError$Condition;

    const-string/jumbo v1, "undefined-condition"

    invoke-direct {v0, v1}, Lmiui/push/XMPPError$Condition;-><init>(Ljava/lang/String;)V

    sput-object v0, Lmiui/push/XMPPError$Condition;->undefined_condition:Lmiui/push/XMPPError$Condition;

    .line 483
    new-instance v0, Lmiui/push/XMPPError$Condition;

    const-string/jumbo v1, "unexpected-request"

    invoke-direct {v0, v1}, Lmiui/push/XMPPError$Condition;-><init>(Ljava/lang/String;)V

    sput-object v0, Lmiui/push/XMPPError$Condition;->unexpected_request:Lmiui/push/XMPPError$Condition;

    .line 484
    new-instance v0, Lmiui/push/XMPPError$Condition;

    const-string/jumbo v1, "request-timeout"

    invoke-direct {v0, v1}, Lmiui/push/XMPPError$Condition;-><init>(Ljava/lang/String;)V

    sput-object v0, Lmiui/push/XMPPError$Condition;->request_timeout:Lmiui/push/XMPPError$Condition;

    .line 457
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 0
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 488
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 489
    iput-object p1, p0, Lmiui/push/XMPPError$Condition;->value:Ljava/lang/String;

    .line 488
    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 493
    iget-object v0, p0, Lmiui/push/XMPPError$Condition;->value:Ljava/lang/String;

    return-object v0
.end method
