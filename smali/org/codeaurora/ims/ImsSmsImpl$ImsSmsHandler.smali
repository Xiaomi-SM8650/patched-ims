.class Lorg/codeaurora/ims/ImsSmsImpl$ImsSmsHandler;
.super Landroid/os/Handler;
.source "ImsSmsImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/codeaurora/ims/ImsSmsImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ImsSmsHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lorg/codeaurora/ims/ImsSmsImpl;


# direct methods
.method public constructor <init>(Lorg/codeaurora/ims/ImsSmsImpl;Landroid/os/Looper;)V
    .locals 0
    .param p2, "looper"    # Landroid/os/Looper;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x0
        }
        names = {
            null,
            null
        }
    .end annotation

    .line 246
    iput-object p1, p0, Lorg/codeaurora/ims/ImsSmsImpl$ImsSmsHandler;->this$0:Lorg/codeaurora/ims/ImsSmsImpl;

    .line 247
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 248
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3
    .param p1, "msg"    # Landroid/os/Message;

    .line 252
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Message received: what = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p1, Landroid/os/Message;->what:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/qualcomm/ims/utils/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 253
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lorg/codeaurora/telephony/utils/AsyncResult;

    .line 254
    .local v0, "ar":Lorg/codeaurora/telephony/utils/AsyncResult;
    if-nez v0, :cond_0

    .line 255
    const-string v1, "msg.obg is null"

    invoke-static {p0, v1}, Lcom/qualcomm/ims/utils/Log;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 256
    return-void

    .line 258
    :cond_0
    iget v1, p1, Landroid/os/Message;->what:I

    packed-switch v1, :pswitch_data_0

    .line 269
    const-string v1, "ImsSmsImpl"

    const-string v2, "Invalid Response"

    invoke-static {v1, v2}, Lcom/qualcomm/ims/utils/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 266
    :pswitch_0
    iget-object v1, p0, Lorg/codeaurora/ims/ImsSmsImpl$ImsSmsHandler;->this$0:Lorg/codeaurora/ims/ImsSmsImpl;

    invoke-static {v1, v0}, Lorg/codeaurora/ims/ImsSmsImpl;->-$$Nest$msendStatusReportToFramework(Lorg/codeaurora/ims/ImsSmsImpl;Lorg/codeaurora/telephony/utils/AsyncResult;)V

    .line 267
    goto :goto_0

    .line 263
    :pswitch_1
    iget-object v1, p0, Lorg/codeaurora/ims/ImsSmsImpl$ImsSmsHandler;->this$0:Lorg/codeaurora/ims/ImsSmsImpl;

    invoke-static {v1, v0}, Lorg/codeaurora/ims/ImsSmsImpl;->-$$Nest$msendSmsToFramework(Lorg/codeaurora/ims/ImsSmsImpl;Lorg/codeaurora/telephony/utils/AsyncResult;)V

    .line 264
    goto :goto_0

    .line 260
    :pswitch_2
    iget-object v1, p0, Lorg/codeaurora/ims/ImsSmsImpl$ImsSmsHandler;->this$0:Lorg/codeaurora/ims/ImsSmsImpl;

    invoke-static {v1, v0}, Lorg/codeaurora/ims/ImsSmsImpl;->-$$Nest$msendResponseToFramework(Lorg/codeaurora/ims/ImsSmsImpl;Lorg/codeaurora/telephony/utils/AsyncResult;)V

    .line 261
    nop

    .line 271
    :goto_0
    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
