.class public Lcom/qualcomm/ims/vt/ImsVideoGlobals;
.super Ljava/lang/Object;
.source "ImsVideoGlobals.java"

# interfaces
.implements Lorg/codeaurora/ims/ImsSubController$OnMultiSimConfigChanged;


# static fields
.field private static TAG:Ljava/lang/String;

.field private static sInstance:Lcom/qualcomm/ims/vt/ImsVideoGlobals;


# instance fields
.field private mCameraController:Lcom/qualcomm/ims/vt/CameraController;

.field private mContext:Landroid/content/Context;

.field private mLowBatteryHandler:Lcom/qualcomm/ims/vt/LowBatteryHandler;

.field private mMediaController:Lcom/qualcomm/ims/vt/MediaController;

.field private mServiceSubs:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/codeaurora/ims/ImsServiceSub;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 19
    const-string v0, "VideoCall_ImsVideoGlobals"

    sput-object v0, Lcom/qualcomm/ims/vt/ImsVideoGlobals;->TAG:Ljava/lang/String;

    .line 21
    const/4 v0, 0x0

    sput-object v0, Lcom/qualcomm/ims/vt/ImsVideoGlobals;->sInstance:Lcom/qualcomm/ims/vt/ImsVideoGlobals;

    return-void
.end method

.method private constructor <init>(Ljava/util/List;Landroid/content/Context;)V
    .locals 3
    .param p2, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lorg/codeaurora/ims/ImsServiceSub;",
            ">;",
            "Landroid/content/Context;",
            ")V"
        }
    .end annotation

    .line 60
    .local p1, "serviceSubs":Ljava/util/List;, "Ljava/util/List<Lorg/codeaurora/ims/ImsServiceSub;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 61
    iput-object p1, p0, Lcom/qualcomm/ims/vt/ImsVideoGlobals;->mServiceSubs:Ljava/util/List;

    .line 63
    iput-object p2, p0, Lcom/qualcomm/ims/vt/ImsVideoGlobals;->mContext:Landroid/content/Context;

    .line 64
    invoke-static {}, Lcom/qualcomm/ims/vt/ImsMedia;->getInstance()Lcom/qualcomm/ims/vt/ImsMedia;

    move-result-object v0

    invoke-static {p2, v0}, Lcom/qualcomm/ims/vt/CameraController;->init(Landroid/content/Context;Lcom/qualcomm/ims/vt/ImsMedia;)Lcom/qualcomm/ims/vt/CameraController;

    .line 65
    invoke-static {}, Lcom/qualcomm/ims/vt/ImsMedia;->getInstance()Lcom/qualcomm/ims/vt/ImsMedia;

    move-result-object v0

    invoke-static {p2, v0}, Lcom/qualcomm/ims/vt/MediaController;->init(Landroid/content/Context;Lcom/qualcomm/ims/vt/ImsMedia;)V

    .line 66
    iget-object v0, p0, Lcom/qualcomm/ims/vt/ImsVideoGlobals;->mServiceSubs:Ljava/util/List;

    invoke-static {v0, p2}, Lcom/qualcomm/ims/vt/LowBatteryHandler;->init(Ljava/util/List;Landroid/content/Context;)Lcom/qualcomm/ims/vt/LowBatteryHandler;

    .line 68
    invoke-static {}, Lcom/qualcomm/ims/vt/CameraController;->getInstance()Lcom/qualcomm/ims/vt/CameraController;

    move-result-object v0

    iput-object v0, p0, Lcom/qualcomm/ims/vt/ImsVideoGlobals;->mCameraController:Lcom/qualcomm/ims/vt/CameraController;

    .line 69
    invoke-static {}, Lcom/qualcomm/ims/vt/MediaController;->getInstance()Lcom/qualcomm/ims/vt/MediaController;

    move-result-object v0

    iput-object v0, p0, Lcom/qualcomm/ims/vt/ImsVideoGlobals;->mMediaController:Lcom/qualcomm/ims/vt/MediaController;

    .line 70
    invoke-static {}, Lcom/qualcomm/ims/vt/LowBatteryHandler;->getInstance()Lcom/qualcomm/ims/vt/LowBatteryHandler;

    move-result-object v0

    iput-object v0, p0, Lcom/qualcomm/ims/vt/ImsVideoGlobals;->mLowBatteryHandler:Lcom/qualcomm/ims/vt/LowBatteryHandler;

    .line 71
    iget-object v0, p0, Lcom/qualcomm/ims/vt/ImsVideoGlobals;->mServiceSubs:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/codeaurora/ims/ImsServiceSub;

    .line 72
    .local v1, "sub":Lorg/codeaurora/ims/ImsServiceSub;
    iget-object v2, p0, Lcom/qualcomm/ims/vt/ImsVideoGlobals;->mMediaController:Lcom/qualcomm/ims/vt/MediaController;

    invoke-virtual {v1, v2}, Lorg/codeaurora/ims/ImsServiceSub;->addListener(Lorg/codeaurora/ims/ICallListListener;)V

    .line 73
    iget-object v2, p0, Lcom/qualcomm/ims/vt/ImsVideoGlobals;->mLowBatteryHandler:Lcom/qualcomm/ims/vt/LowBatteryHandler;

    invoke-virtual {v1, v2}, Lorg/codeaurora/ims/ImsServiceSub;->addListener(Lorg/codeaurora/ims/ICallListListener;)V

    .line 74
    .end local v1    # "sub":Lorg/codeaurora/ims/ImsServiceSub;
    goto :goto_0

    .line 75
    :cond_0
    return-void
.end method

.method private getImsVideoCallProviderImpl(Lorg/codeaurora/ims/ImsCallSessionImpl;)Lcom/qualcomm/ims/vt/ImsVideoCallProviderImpl;
    .locals 1
    .param p1, "session"    # Lorg/codeaurora/ims/ImsCallSessionImpl;

    .line 78
    if-nez p1, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Lorg/codeaurora/ims/ImsCallSessionImpl;->getImsVideoCallProviderImpl()Lcom/qualcomm/ims/vt/ImsVideoCallProviderImpl;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method public static getInstance()Lcom/qualcomm/ims/vt/ImsVideoGlobals;
    .locals 2

    .line 42
    sget-object v0, Lcom/qualcomm/ims/vt/ImsVideoGlobals;->sInstance:Lcom/qualcomm/ims/vt/ImsVideoGlobals;

    if-eqz v0, :cond_0

    .line 45
    sget-object v0, Lcom/qualcomm/ims/vt/ImsVideoGlobals;->sInstance:Lcom/qualcomm/ims/vt/ImsVideoGlobals;

    return-object v0

    .line 43
    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "ImsVideoGlobals: getInstance called before init."

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static init(Ljava/util/List;Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lorg/codeaurora/ims/ImsServiceSub;",
            ">;",
            "Landroid/content/Context;",
            ")V"
        }
    .end annotation

    .line 30
    .local p0, "serviceSubArr":Ljava/util/List;, "Ljava/util/List<Lorg/codeaurora/ims/ImsServiceSub;>;"
    if-eqz p0, :cond_1

    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x0

    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 34
    sget-object v0, Lcom/qualcomm/ims/vt/ImsVideoGlobals;->sInstance:Lcom/qualcomm/ims/vt/ImsVideoGlobals;

    if-nez v0, :cond_0

    .line 35
    new-instance v0, Lcom/qualcomm/ims/vt/ImsVideoGlobals;

    invoke-direct {v0, p0, p1}, Lcom/qualcomm/ims/vt/ImsVideoGlobals;-><init>(Ljava/util/List;Landroid/content/Context;)V

    sput-object v0, Lcom/qualcomm/ims/vt/ImsVideoGlobals;->sInstance:Lcom/qualcomm/ims/vt/ImsVideoGlobals;

    .line 39
    return-void

    .line 37
    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "ImsVideoGlobals: Multiple initializaiton."

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 31
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Default subscription is null."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static log(Ljava/lang/String;)V
    .locals 1
    .param p0, "msg"    # Ljava/lang/String;

    .line 116
    sget-object v0, Lcom/qualcomm/ims/vt/ImsVideoGlobals;->TAG:Ljava/lang/String;

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 117
    return-void
.end method

.method private static loge(Ljava/lang/String;)V
    .locals 1
    .param p0, "msg"    # Ljava/lang/String;

    .line 119
    sget-object v0, Lcom/qualcomm/ims/vt/ImsVideoGlobals;->TAG:Ljava/lang/String;

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 120
    return-void
.end method


# virtual methods
.method public dispose()V
    .locals 3

    .line 49
    const-string v0, "dispose()"

    invoke-static {v0}, Lcom/qualcomm/ims/vt/ImsVideoGlobals;->log(Ljava/lang/String;)V

    .line 50
    iget-object v0, p0, Lcom/qualcomm/ims/vt/ImsVideoGlobals;->mServiceSubs:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/codeaurora/ims/ImsServiceSub;

    .line 51
    .local v1, "sub":Lorg/codeaurora/ims/ImsServiceSub;
    iget-object v2, p0, Lcom/qualcomm/ims/vt/ImsVideoGlobals;->mMediaController:Lcom/qualcomm/ims/vt/MediaController;

    invoke-virtual {v1, v2}, Lorg/codeaurora/ims/ImsServiceSub;->removeListener(Lorg/codeaurora/ims/ICallListListener;)V

    .line 52
    iget-object v2, p0, Lcom/qualcomm/ims/vt/ImsVideoGlobals;->mLowBatteryHandler:Lcom/qualcomm/ims/vt/LowBatteryHandler;

    invoke-virtual {v1, v2}, Lorg/codeaurora/ims/ImsServiceSub;->removeListener(Lorg/codeaurora/ims/ICallListListener;)V

    .line 53
    .end local v1    # "sub":Lorg/codeaurora/ims/ImsServiceSub;
    goto :goto_0

    .line 54
    :cond_0
    iget-object v0, p0, Lcom/qualcomm/ims/vt/ImsVideoGlobals;->mCameraController:Lcom/qualcomm/ims/vt/CameraController;

    invoke-virtual {v0}, Lcom/qualcomm/ims/vt/CameraController;->dispose()V

    .line 55
    iget-object v0, p0, Lcom/qualcomm/ims/vt/ImsVideoGlobals;->mMediaController:Lcom/qualcomm/ims/vt/MediaController;

    invoke-virtual {v0}, Lcom/qualcomm/ims/vt/MediaController;->dispose()V

    .line 56
    iget-object v0, p0, Lcom/qualcomm/ims/vt/ImsVideoGlobals;->mLowBatteryHandler:Lcom/qualcomm/ims/vt/LowBatteryHandler;

    invoke-virtual {v0}, Lcom/qualcomm/ims/vt/LowBatteryHandler;->dispose()V

    .line 57
    const/4 v0, 0x0

    sput-object v0, Lcom/qualcomm/ims/vt/ImsVideoGlobals;->sInstance:Lcom/qualcomm/ims/vt/ImsVideoGlobals;

    .line 58
    return-void
.end method

.method findSessionByMediaId(I)Lorg/codeaurora/ims/ImsCallSessionImpl;
    .locals 3
    .param p1, "mediaId"    # I

    .line 83
    const/4 v0, 0x0

    .line 84
    .local v0, "session":Lorg/codeaurora/ims/ImsCallSessionImpl;
    iget-object v1, p0, Lcom/qualcomm/ims/vt/ImsVideoGlobals;->mServiceSubs:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/codeaurora/ims/ImsServiceSub;

    .line 85
    .local v2, "serviceSub":Lorg/codeaurora/ims/ImsServiceSub;
    invoke-virtual {v2, p1}, Lorg/codeaurora/ims/ImsServiceSub;->findSessionByMediaId(I)Lorg/codeaurora/ims/ImsCallSessionImpl;

    move-result-object v0

    .line 86
    if-eqz v0, :cond_0

    return-object v0

    .line 87
    .end local v2    # "serviceSub":Lorg/codeaurora/ims/ImsServiceSub;
    :cond_0
    goto :goto_0

    .line 88
    :cond_1
    return-object v0
.end method

.method findVideoCallProviderbyMediaId(I)Lcom/qualcomm/ims/vt/ImsVideoCallProviderImpl;
    .locals 1
    .param p1, "mediaId"    # I

    .line 93
    invoke-virtual {p0, p1}, Lcom/qualcomm/ims/vt/ImsVideoGlobals;->findSessionByMediaId(I)Lorg/codeaurora/ims/ImsCallSessionImpl;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/qualcomm/ims/vt/ImsVideoGlobals;->getImsVideoCallProviderImpl(Lorg/codeaurora/ims/ImsCallSessionImpl;)Lcom/qualcomm/ims/vt/ImsVideoCallProviderImpl;

    move-result-object v0

    return-object v0
.end method

.method getCameraController()Lcom/qualcomm/ims/vt/CameraController;
    .locals 1

    .line 97
    iget-object v0, p0, Lcom/qualcomm/ims/vt/ImsVideoGlobals;->mCameraController:Lcom/qualcomm/ims/vt/CameraController;

    return-object v0
.end method

.method getMediaController()Lcom/qualcomm/ims/vt/MediaController;
    .locals 1

    .line 100
    iget-object v0, p0, Lcom/qualcomm/ims/vt/ImsVideoGlobals;->mMediaController:Lcom/qualcomm/ims/vt/MediaController;

    return-object v0
.end method

.method public onMultiSimConfigChanged(II)V
    .locals 3
    .param p1, "prevSimCount"    # I
    .param p2, "activeModemCount"    # I

    .line 104
    if-ne p1, p2, :cond_0

    .line 105
    return-void

    .line 109
    :cond_0
    move v0, p1

    .local v0, "i":I
    :goto_0
    if-ge v0, p2, :cond_1

    .line 110
    iget-object v1, p0, Lcom/qualcomm/ims/vt/ImsVideoGlobals;->mServiceSubs:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/codeaurora/ims/ImsServiceSub;

    iget-object v2, p0, Lcom/qualcomm/ims/vt/ImsVideoGlobals;->mMediaController:Lcom/qualcomm/ims/vt/MediaController;

    invoke-virtual {v1, v2}, Lorg/codeaurora/ims/ImsServiceSub;->addListener(Lorg/codeaurora/ims/ICallListListener;)V

    .line 111
    iget-object v1, p0, Lcom/qualcomm/ims/vt/ImsVideoGlobals;->mServiceSubs:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/codeaurora/ims/ImsServiceSub;

    iget-object v2, p0, Lcom/qualcomm/ims/vt/ImsVideoGlobals;->mLowBatteryHandler:Lcom/qualcomm/ims/vt/LowBatteryHandler;

    invoke-virtual {v1, v2}, Lorg/codeaurora/ims/ImsServiceSub;->addListener(Lorg/codeaurora/ims/ICallListListener;)V

    .line 109
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 113
    .end local v0    # "i":I
    :cond_1
    return-void
.end method
