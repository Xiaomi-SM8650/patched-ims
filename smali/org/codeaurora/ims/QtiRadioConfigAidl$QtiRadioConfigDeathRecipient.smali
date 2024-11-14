.class final Lorg/codeaurora/ims/QtiRadioConfigAidl$QtiRadioConfigDeathRecipient;
.super Ljava/lang/Object;
.source "QtiRadioConfigAidl.java"

# interfaces
.implements Landroid/os/IBinder$DeathRecipient;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/codeaurora/ims/QtiRadioConfigAidl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "QtiRadioConfigDeathRecipient"
.end annotation


# instance fields
.field final synthetic this$0:Lorg/codeaurora/ims/QtiRadioConfigAidl;


# direct methods
.method constructor <init>(Lorg/codeaurora/ims/QtiRadioConfigAidl;)V
    .locals 0
    .param p1, "this$0"    # Lorg/codeaurora/ims/QtiRadioConfigAidl;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 88
    iput-object p1, p0, Lorg/codeaurora/ims/QtiRadioConfigAidl$QtiRadioConfigDeathRecipient;->this$0:Lorg/codeaurora/ims/QtiRadioConfigAidl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public binderDied()V
    .locals 2

    .line 94
    const-string v0, "QtiRadioConfigAidl"

    const-string v1, "IQtiRadioConfig died"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 95
    iget-object v0, p0, Lorg/codeaurora/ims/QtiRadioConfigAidl$QtiRadioConfigDeathRecipient;->this$0:Lorg/codeaurora/ims/QtiRadioConfigAidl;

    invoke-static {v0}, Lorg/codeaurora/ims/QtiRadioConfigAidl;->-$$Nest$mresetQtiRadioConfigHalInterfaces(Lorg/codeaurora/ims/QtiRadioConfigAidl;)V

    .line 96
    iget-object v0, p0, Lorg/codeaurora/ims/QtiRadioConfigAidl$QtiRadioConfigDeathRecipient;->this$0:Lorg/codeaurora/ims/QtiRadioConfigAidl;

    invoke-static {v0}, Lorg/codeaurora/ims/QtiRadioConfigAidl;->-$$Nest$minitQtiRadioConfig(Lorg/codeaurora/ims/QtiRadioConfigAidl;)V

    .line 97
    return-void
.end method
