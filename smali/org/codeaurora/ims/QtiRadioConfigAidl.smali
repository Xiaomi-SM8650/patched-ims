.class public Lorg/codeaurora/ims/QtiRadioConfigAidl;
.super Ljava/lang/Object;
.source "QtiRadioConfigAidl.java"

# interfaces
.implements Lorg/codeaurora/ims/IQtiRadioConfig;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/codeaurora/ims/QtiRadioConfigAidl$QtiRadioConfigDeathRecipient;
    }
.end annotation


# static fields
.field public static final DSDS_TRANSITION:I = 0x2

.field public static final INTERNAL_AIDL_REORDERING:I = 0x1

.field public static final INVALID_FEATURE:I = -0x1

.field static final QTI_RADIO_CONFIG_SERVICE_NAME:Ljava/lang/String; = "vendor.qti.hardware.radio.qtiradioconfig.IQtiRadioConfig/default"


# instance fields
.field private final LOG_TAG:Ljava/lang/String;

.field private mContext:Landroid/content/Context;

.field private final mHalSync:Ljava/lang/Object;

.field private mIndication:Lorg/codeaurora/ims/IQtiRadioConfigIndication;

.field private mQtiRadioConfig:Lvendor/qti/hardware/radio/qtiradioconfig/IQtiRadioConfig;

.field private mQtiRadioConfigBinder:Landroid/os/IBinder;

.field private mQtiRadioConfigDeathRecipient:Lorg/codeaurora/ims/QtiRadioConfigAidl$QtiRadioConfigDeathRecipient;


# direct methods
.method static bridge synthetic -$$Nest$minitQtiRadioConfig(Lorg/codeaurora/ims/QtiRadioConfigAidl;)V
    .locals 0

    invoke-direct {p0}, Lorg/codeaurora/ims/QtiRadioConfigAidl;->initQtiRadioConfig()V

    return-void
.end method

.method static bridge synthetic -$$Nest$mresetQtiRadioConfigHalInterfaces(Lorg/codeaurora/ims/QtiRadioConfigAidl;)V
    .locals 0

    invoke-direct {p0}, Lorg/codeaurora/ims/QtiRadioConfigAidl;->resetQtiRadioConfigHalInterfaces()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lorg/codeaurora/ims/IQtiRadioConfigIndication;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "indication"    # Lorg/codeaurora/ims/IQtiRadioConfigIndication;

    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lorg/codeaurora/ims/QtiRadioConfigAidl;->mHalSync:Ljava/lang/Object;

    .line 24
    const-string v0, "QtiRadioConfigAidl"

    iput-object v0, p0, Lorg/codeaurora/ims/QtiRadioConfigAidl;->LOG_TAG:Ljava/lang/String;

    .line 37
    iput-object p1, p0, Lorg/codeaurora/ims/QtiRadioConfigAidl;->mContext:Landroid/content/Context;

    .line 38
    iput-object p2, p0, Lorg/codeaurora/ims/QtiRadioConfigAidl;->mIndication:Lorg/codeaurora/ims/IQtiRadioConfigIndication;

    .line 39
    new-instance v0, Lorg/codeaurora/ims/QtiRadioConfigAidl$QtiRadioConfigDeathRecipient;

    invoke-direct {v0, p0}, Lorg/codeaurora/ims/QtiRadioConfigAidl$QtiRadioConfigDeathRecipient;-><init>(Lorg/codeaurora/ims/QtiRadioConfigAidl;)V

    iput-object v0, p0, Lorg/codeaurora/ims/QtiRadioConfigAidl;->mQtiRadioConfigDeathRecipient:Lorg/codeaurora/ims/QtiRadioConfigAidl$QtiRadioConfigDeathRecipient;

    .line 40
    invoke-direct {p0}, Lorg/codeaurora/ims/QtiRadioConfigAidl;->initQtiRadioConfig()V

    .line 41
    return-void
.end method

.method private getQtiRadioConfig()Lvendor/qti/hardware/radio/qtiradioconfig/IQtiRadioConfig;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 101
    iget-object v0, p0, Lorg/codeaurora/ims/QtiRadioConfigAidl;->mHalSync:Ljava/lang/Object;

    monitor-enter v0

    .line 102
    :try_start_0
    iget-object v1, p0, Lorg/codeaurora/ims/QtiRadioConfigAidl;->mQtiRadioConfig:Lvendor/qti/hardware/radio/qtiradioconfig/IQtiRadioConfig;

    if-eqz v1, :cond_0

    .line 103
    iget-object v1, p0, Lorg/codeaurora/ims/QtiRadioConfigAidl;->mQtiRadioConfig:Lvendor/qti/hardware/radio/qtiradioconfig/IQtiRadioConfig;

    monitor-exit v0

    return-object v1

    .line 105
    :cond_0
    new-instance v1, Landroid/os/RemoteException;

    const-string v2, "mQtiRadioConfig is null"

    invoke-direct {v1, v2}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    .end local p0    # "this":Lorg/codeaurora/ims/QtiRadioConfigAidl;
    throw v1

    .line 107
    .restart local p0    # "this":Lorg/codeaurora/ims/QtiRadioConfigAidl;
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private initQtiRadioConfig()V
    .locals 4

    .line 45
    :try_start_0
    const-string v0, "QtiRadioConfigAidl"

    const-string v1, "initQtiRadioConfig"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 46
    const-string v0, "vendor.qti.hardware.radio.qtiradioconfig.IQtiRadioConfig/default"

    .line 47
    invoke-static {v0}, Landroid/os/ServiceManager;->waitForDeclaredService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 46
    invoke-static {v0}, Landroid/os/Binder;->allowBlocking(Landroid/os/IBinder;)Landroid/os/IBinder;

    move-result-object v0

    .line 48
    .local v0, "binder":Landroid/os/IBinder;
    if-nez v0, :cond_0

    .line 49
    const-string v1, "QtiRadioConfigAidl"

    const-string v2, "initQtiRadioConfig failed"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 50
    return-void

    .line 53
    :cond_0
    nop

    .line 54
    invoke-static {v0}, Lvendor/qti/hardware/radio/qtiradioconfig/IQtiRadioConfig$Stub;->asInterface(Landroid/os/IBinder;)Lvendor/qti/hardware/radio/qtiradioconfig/IQtiRadioConfig;

    move-result-object v1

    .line 56
    .local v1, "qtiRadioConfig":Lvendor/qti/hardware/radio/qtiradioconfig/IQtiRadioConfig;
    if-nez v1, :cond_1

    .line 57
    const-string v2, "QtiRadioConfigAidl"

    const-string v3, "Get binder for IQtiRadioConfig stable AIDL failed"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 58
    return-void

    .line 61
    :cond_1
    iget-object v2, p0, Lorg/codeaurora/ims/QtiRadioConfigAidl;->mHalSync:Ljava/lang/Object;

    monitor-enter v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 62
    :try_start_1
    iput-object v0, p0, Lorg/codeaurora/ims/QtiRadioConfigAidl;->mQtiRadioConfigBinder:Landroid/os/IBinder;

    .line 63
    iput-object v1, p0, Lorg/codeaurora/ims/QtiRadioConfigAidl;->mQtiRadioConfig:Lvendor/qti/hardware/radio/qtiradioconfig/IQtiRadioConfig;

    .line 64
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 65
    :try_start_2
    iget-object v2, p0, Lorg/codeaurora/ims/QtiRadioConfigAidl;->mQtiRadioConfigDeathRecipient:Lorg/codeaurora/ims/QtiRadioConfigAidl$QtiRadioConfigDeathRecipient;

    const/4 v3, 0x0

    invoke-interface {v0, v2, v3}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V

    .line 66
    iget-object v2, p0, Lorg/codeaurora/ims/QtiRadioConfigAidl;->mIndication:Lorg/codeaurora/ims/IQtiRadioConfigIndication;

    invoke-interface {v2}, Lorg/codeaurora/ims/IQtiRadioConfigIndication;->onServiceUp()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 70
    .end local v0    # "binder":Landroid/os/IBinder;
    .end local v1    # "qtiRadioConfig":Lvendor/qti/hardware/radio/qtiradioconfig/IQtiRadioConfig;
    goto :goto_0

    .line 64
    .restart local v0    # "binder":Landroid/os/IBinder;
    .restart local v1    # "qtiRadioConfig":Lvendor/qti/hardware/radio/qtiradioconfig/IQtiRadioConfig;
    :catchall_0
    move-exception v3

    :try_start_3
    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .end local p0    # "this":Lorg/codeaurora/ims/QtiRadioConfigAidl;
    :try_start_4
    throw v3
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    .line 67
    .end local v0    # "binder":Landroid/os/IBinder;
    .end local v1    # "qtiRadioConfig":Lvendor/qti/hardware/radio/qtiradioconfig/IQtiRadioConfig;
    .restart local p0    # "this":Lorg/codeaurora/ims/QtiRadioConfigAidl;
    :catch_0
    move-exception v0

    .line 68
    .local v0, "ex":Ljava/lang/Exception;
    const-string v1, "QtiRadioConfigAidl"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "initQtiRadioConfig: Exception: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 69
    invoke-direct {p0}, Lorg/codeaurora/ims/QtiRadioConfigAidl;->resetQtiRadioConfigHalInterfaces()V

    .line 71
    .end local v0    # "ex":Ljava/lang/Exception;
    :goto_0
    return-void
.end method

.method private resetQtiRadioConfigHalInterfaces()V
    .locals 4

    .line 111
    const-string v0, "QtiRadioConfigAidl"

    const-string v1, "resetQtiRadioConfigHalInterfaces: Resetting HAL interfaces."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 112
    iget-object v0, p0, Lorg/codeaurora/ims/QtiRadioConfigAidl;->mIndication:Lorg/codeaurora/ims/IQtiRadioConfigIndication;

    invoke-interface {v0}, Lorg/codeaurora/ims/IQtiRadioConfigIndication;->onServiceDown()V

    .line 113
    const/4 v0, 0x0

    .line 114
    .local v0, "binder":Landroid/os/IBinder;
    iget-object v1, p0, Lorg/codeaurora/ims/QtiRadioConfigAidl;->mHalSync:Ljava/lang/Object;

    monitor-enter v1

    .line 115
    const/4 v2, 0x0

    :try_start_0
    iput-object v2, p0, Lorg/codeaurora/ims/QtiRadioConfigAidl;->mQtiRadioConfig:Lvendor/qti/hardware/radio/qtiradioconfig/IQtiRadioConfig;

    .line 116
    iget-object v3, p0, Lorg/codeaurora/ims/QtiRadioConfigAidl;->mQtiRadioConfigBinder:Landroid/os/IBinder;

    move-object v0, v3

    .line 117
    iput-object v2, p0, Lorg/codeaurora/ims/QtiRadioConfigAidl;->mQtiRadioConfigBinder:Landroid/os/IBinder;

    .line 118
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 119
    if-eqz v0, :cond_0

    .line 121
    :try_start_1
    iget-object v1, p0, Lorg/codeaurora/ims/QtiRadioConfigAidl;->mQtiRadioConfigDeathRecipient:Lorg/codeaurora/ims/QtiRadioConfigAidl$QtiRadioConfigDeathRecipient;

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 125
    goto :goto_0

    .line 123
    :catch_0
    move-exception v1

    .line 124
    .local v1, "ex":Ljava/lang/Exception;
    const-string v2, "QtiRadioConfigAidl"

    const-string v3, "Failed to unlink IQtiRadioConfig death recipient"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 127
    .end local v1    # "ex":Ljava/lang/Exception;
    :cond_0
    :goto_0
    return-void

    .line 118
    :catchall_0
    move-exception v2

    :try_start_2
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v2
.end method


# virtual methods
.method public isFeatureSupported(I)Z
    .locals 6
    .param p1, "feature"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 75
    const-string v0, "QtiRadioConfigAidl"

    const/4 v1, 0x0

    .line 76
    .local v1, "featureSupported":Z
    invoke-static {p1}, Lorg/codeaurora/ims/StableAidl;->fromFeature(I)I

    move-result v2

    .line 77
    .local v2, "aidlFeature":I
    const/4 v3, -0x1

    const/4 v4, 0x0

    if-ne v2, v3, :cond_0

    return v4

    .line 79
    :cond_0
    :try_start_0
    invoke-direct {p0}, Lorg/codeaurora/ims/QtiRadioConfigAidl;->getQtiRadioConfig()Lvendor/qti/hardware/radio/qtiradioconfig/IQtiRadioConfig;

    move-result-object v3

    invoke-interface {v3, v2}, Lvendor/qti/hardware/radio/qtiradioconfig/IQtiRadioConfig;->isFeatureSupported(I)Z

    move-result v3

    move v1, v3

    .line 80
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "isFeatureSupported "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, " = "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 81
    return v1

    .line 82
    :catch_0
    move-exception v3

    .line 83
    .local v3, "ex":Landroid/os/RemoteException;
    const-string v5, "isFeatureSupported Failed"

    invoke-static {v0, v5, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 84
    return v4
.end method
