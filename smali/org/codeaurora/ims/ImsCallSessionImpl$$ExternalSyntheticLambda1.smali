.class public final synthetic Lorg/codeaurora/ims/ImsCallSessionImpl$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lorg/codeaurora/ims/ImsCallSessionImpl;

.field public final synthetic f$1:Lcom/android/ims/internal/IImsCallSession;


# direct methods
.method public synthetic constructor <init>(Lorg/codeaurora/ims/ImsCallSessionImpl;Lcom/android/ims/internal/IImsCallSession;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/codeaurora/ims/ImsCallSessionImpl$$ExternalSyntheticLambda1;->f$0:Lorg/codeaurora/ims/ImsCallSessionImpl;

    iput-object p2, p0, Lorg/codeaurora/ims/ImsCallSessionImpl$$ExternalSyntheticLambda1;->f$1:Lcom/android/ims/internal/IImsCallSession;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .line 0
    iget-object v0, p0, Lorg/codeaurora/ims/ImsCallSessionImpl$$ExternalSyntheticLambda1;->f$0:Lorg/codeaurora/ims/ImsCallSessionImpl;

    iget-object v1, p0, Lorg/codeaurora/ims/ImsCallSessionImpl$$ExternalSyntheticLambda1;->f$1:Lcom/android/ims/internal/IImsCallSession;

    invoke-static {v0, v1}, Lorg/codeaurora/ims/ImsCallSessionImpl;->$r8$lambda$BoOhg08IElN1AGLZICHeJSsnTOI(Lorg/codeaurora/ims/ImsCallSessionImpl;Lcom/android/ims/internal/IImsCallSession;)V

    return-void
.end method
