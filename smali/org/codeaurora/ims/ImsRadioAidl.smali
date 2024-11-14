.class public Lorg/codeaurora/ims/ImsRadioAidl;
.super Ljava/lang/Object;
.source "ImsRadioAidl.java"

# interfaces
.implements Lorg/codeaurora/ims/IImsRadio;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/codeaurora/ims/ImsRadioAidl$ImsRadioDeathRecipient;
    }
.end annotation


# static fields
.field private static final DSDS_TRANSITION_SUPPORTED_MODEM:Ljava/lang/String; = "MPSS.DE."

.field private static final DSDS_TRANSITION_SUPPORTED_MODEM_VERSION:I = 0x5

.field private static final IIMS_RADIO_SERVICE_NAME:Ljava/lang/String; = "vendor.qti.hardware.radio.ims.IImsRadio/imsradio"

.field static final LOG_TAG:Ljava/lang/String; = "ImsRadioAidl"

.field private static final STATUS_INTERROGATE:I = 0x2


# instance fields
.field private mBinder:Landroid/os/IBinder;

.field private final mContext:Landroid/content/Context;

.field private mDeathRecipient:Lorg/codeaurora/ims/ImsRadioAidl$ImsRadioDeathRecipient;

.field private volatile mImsRadio:Lvendor/qti/hardware/radio/ims/IImsRadio;

.field private mImsRadioIndication:Lvendor/qti/hardware/radio/ims/IImsRadioIndication;

.field private mImsRadioResponse:Lvendor/qti/hardware/radio/ims/IImsRadioResponse;

.field private mIndication:Lorg/codeaurora/ims/IImsRadioIndication;

.field private mIsDisposed:Z

.field private final mLock:Ljava/lang/Object;

.field private final mLogSuffix:Ljava/lang/String;

.field private mPhoneId:I

.field private mResponse:Lorg/codeaurora/ims/IImsRadioResponse;

.field private final mServiceInstance:Ljava/lang/String;

.field private final mTm:Landroid/telephony/TelephonyManager;


# direct methods
.method static bridge synthetic -$$Nest$minitImsRadio(Lorg/codeaurora/ims/ImsRadioAidl;)V
    .locals 0

    invoke-direct {p0}, Lorg/codeaurora/ims/ImsRadioAidl;->initImsRadio()V

    return-void
.end method

.method static bridge synthetic -$$Nest$mloge(Lorg/codeaurora/ims/ImsRadioAidl;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/codeaurora/ims/ImsRadioAidl;->loge(Ljava/lang/String;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mresetService(Lorg/codeaurora/ims/ImsRadioAidl;)V
    .locals 0

    invoke-direct {p0}, Lorg/codeaurora/ims/ImsRadioAidl;->resetService()V

    return-void
.end method

.method public constructor <init>(Lorg/codeaurora/ims/IImsRadioResponse;Lorg/codeaurora/ims/IImsRadioIndication;ILandroid/content/Context;)V
    .locals 2
    .param p1, "response"    # Lorg/codeaurora/ims/IImsRadioResponse;
    .param p2, "indication"    # Lorg/codeaurora/ims/IImsRadioIndication;
    .param p3, "phoneId"    # I
    .param p4, "context"    # Landroid/content/Context;

    .line 91
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 63
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lorg/codeaurora/ims/ImsRadioAidl;->mLock:Ljava/lang/Object;

    .line 81
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/codeaurora/ims/ImsRadioAidl;->mIsDisposed:Z

    .line 92
    iput p3, p0, Lorg/codeaurora/ims/ImsRadioAidl;->mPhoneId:I

    .line 93
    iput-object p1, p0, Lorg/codeaurora/ims/ImsRadioAidl;->mResponse:Lorg/codeaurora/ims/IImsRadioResponse;

    .line 94
    iput-object p2, p0, Lorg/codeaurora/ims/ImsRadioAidl;->mIndication:Lorg/codeaurora/ims/IImsRadioIndication;

    .line 95
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "vendor.qti.hardware.radio.ims.IImsRadio/imsradio"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lorg/codeaurora/ims/ImsRadioAidl;->mPhoneId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/codeaurora/ims/ImsRadioAidl;->mServiceInstance:Ljava/lang/String;

    .line 96
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[SUB"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lorg/codeaurora/ims/ImsRadioAidl;->mPhoneId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/codeaurora/ims/ImsRadioAidl;->mLogSuffix:Ljava/lang/String;

    .line 97
    new-instance v0, Lorg/codeaurora/ims/ImsRadioAidl$ImsRadioDeathRecipient;

    invoke-direct {v0, p0}, Lorg/codeaurora/ims/ImsRadioAidl$ImsRadioDeathRecipient;-><init>(Lorg/codeaurora/ims/ImsRadioAidl;)V

    iput-object v0, p0, Lorg/codeaurora/ims/ImsRadioAidl;->mDeathRecipient:Lorg/codeaurora/ims/ImsRadioAidl$ImsRadioDeathRecipient;

    .line 98
    iput-object p4, p0, Lorg/codeaurora/ims/ImsRadioAidl;->mContext:Landroid/content/Context;

    .line 99
    iget-object v0, p0, Lorg/codeaurora/ims/ImsRadioAidl;->mContext:Landroid/content/Context;

    const-string v1, "phone"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    iput-object v0, p0, Lorg/codeaurora/ims/ImsRadioAidl;->mTm:Landroid/telephony/TelephonyManager;

    .line 100
    invoke-direct {p0}, Lorg/codeaurora/ims/ImsRadioAidl;->initImsRadio()V

    .line 101
    return-void
.end method

.method private containsModemVersion(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1
    .param p1, "modemBaseband"    # Ljava/lang/String;
    .param p2, "modemType"    # Ljava/lang/String;

    .line 277
    invoke-virtual {p1, p2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    return v0
.end method

.method private imsRadio()Lvendor/qti/hardware/radio/ims/IImsRadio;
    .locals 3

    .line 152
    const/4 v0, 0x0

    .line 153
    .local v0, "imsRadio":Lvendor/qti/hardware/radio/ims/IImsRadio;
    iget-object v1, p0, Lorg/codeaurora/ims/ImsRadioAidl;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 154
    :try_start_0
    iget-object v2, p0, Lorg/codeaurora/ims/ImsRadioAidl;->mImsRadio:Lvendor/qti/hardware/radio/ims/IImsRadio;

    move-object v0, v2

    .line 155
    monitor-exit v1

    .line 156
    return-object v0

    .line 155
    :catchall_0
    move-exception v2

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method private initImsRadio()V
    .locals 8

    .line 166
    :try_start_0
    const-string v0, "initImsRadio: connect to IImsRadio Stable AIDL"

    invoke-direct {p0, v0}, Lorg/codeaurora/ims/ImsRadioAidl;->log(Ljava/lang/String;)V

    .line 167
    iget-object v0, p0, Lorg/codeaurora/ims/ImsRadioAidl;->mServiceInstance:Ljava/lang/String;

    .line 168
    invoke-static {v0}, Landroid/os/ServiceManager;->waitForDeclaredService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 167
    invoke-static {v0}, Landroid/os/Binder;->allowBlocking(Landroid/os/IBinder;)Landroid/os/IBinder;

    move-result-object v0

    .line 169
    .local v0, "binder":Landroid/os/IBinder;
    if-nez v0, :cond_0

    .line 170
    const-string v1, "initImsRadio: Stable AIDL is NOT used."

    invoke-direct {p0, v1}, Lorg/codeaurora/ims/ImsRadioAidl;->loge(Ljava/lang/String;)V

    .line 171
    return-void

    .line 173
    :cond_0
    nop

    .line 174
    invoke-static {v0}, Lvendor/qti/hardware/radio/ims/IImsRadio$Stub;->asInterface(Landroid/os/IBinder;)Lvendor/qti/hardware/radio/ims/IImsRadio;

    move-result-object v1

    .line 175
    .local v1, "imsRadio":Lvendor/qti/hardware/radio/ims/IImsRadio;
    if-nez v1, :cond_1

    .line 176
    const-string v2, "initImsRadio: mAidlInstance is null"

    invoke-direct {p0, v2}, Lorg/codeaurora/ims/ImsRadioAidl;->loge(Ljava/lang/String;)V

    .line 177
    return-void

    .line 179
    :cond_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "initImsRadio: imsRadio availability: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const/4 v3, 0x0

    if-eqz v1, :cond_2

    const/4 v4, 0x1

    goto :goto_0

    :cond_2
    move v4, v3

    .line 180
    :goto_0
    invoke-virtual {p0, v4}, Lorg/codeaurora/ims/ImsRadioAidl;->toAvailability(Z)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 179
    invoke-direct {p0, v2}, Lorg/codeaurora/ims/ImsRadioAidl;->log(Ljava/lang/String;)V

    .line 182
    new-instance v2, Lorg/codeaurora/ims/ImsRadioResponseAidl;

    iget-object v4, p0, Lorg/codeaurora/ims/ImsRadioAidl;->mResponse:Lorg/codeaurora/ims/IImsRadioResponse;

    iget v5, p0, Lorg/codeaurora/ims/ImsRadioAidl;->mPhoneId:I

    invoke-direct {v2, v4, v5}, Lorg/codeaurora/ims/ImsRadioResponseAidl;-><init>(Lorg/codeaurora/ims/IImsRadioResponse;I)V

    .line 183
    .local v2, "imsRadioResponse":Lorg/codeaurora/ims/ImsRadioResponseAidl;
    new-instance v4, Lorg/codeaurora/ims/ImsRadioIndicationAidl;

    iget-object v5, p0, Lorg/codeaurora/ims/ImsRadioAidl;->mIndication:Lorg/codeaurora/ims/IImsRadioIndication;

    iget v6, p0, Lorg/codeaurora/ims/ImsRadioAidl;->mPhoneId:I

    invoke-direct {v4, v5, v6}, Lorg/codeaurora/ims/ImsRadioIndicationAidl;-><init>(Lorg/codeaurora/ims/IImsRadioIndication;I)V

    .line 186
    .local v4, "imsRadioIndication":Lorg/codeaurora/ims/ImsRadioIndicationAidl;
    iget-object v5, p0, Lorg/codeaurora/ims/ImsRadioAidl;->mLock:Ljava/lang/Object;

    monitor-enter v5
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 187
    :try_start_1
    iget-boolean v6, p0, Lorg/codeaurora/ims/ImsRadioAidl;->mIsDisposed:Z

    if-eqz v6, :cond_3

    .line 188
    const-string v3, "initImsRadio: already disposed. exiting."

    invoke-direct {p0, v3}, Lorg/codeaurora/ims/ImsRadioAidl;->log(Ljava/lang/String;)V

    .line 189
    monitor-exit v5

    return-void

    .line 191
    :cond_3
    iput-object v0, p0, Lorg/codeaurora/ims/ImsRadioAidl;->mBinder:Landroid/os/IBinder;

    .line 192
    iput-object v2, p0, Lorg/codeaurora/ims/ImsRadioAidl;->mImsRadioResponse:Lvendor/qti/hardware/radio/ims/IImsRadioResponse;

    .line 193
    iput-object v4, p0, Lorg/codeaurora/ims/ImsRadioAidl;->mImsRadioIndication:Lvendor/qti/hardware/radio/ims/IImsRadioIndication;

    .line 194
    iget-object v6, p0, Lorg/codeaurora/ims/ImsRadioAidl;->mImsRadioResponse:Lvendor/qti/hardware/radio/ims/IImsRadioResponse;

    iget-object v7, p0, Lorg/codeaurora/ims/ImsRadioAidl;->mImsRadioIndication:Lvendor/qti/hardware/radio/ims/IImsRadioIndication;

    invoke-interface {v1, v6, v7}, Lvendor/qti/hardware/radio/ims/IImsRadio;->setCallback(Lvendor/qti/hardware/radio/ims/IImsRadioResponse;Lvendor/qti/hardware/radio/ims/IImsRadioIndication;)V

    .line 195
    iput-object v1, p0, Lorg/codeaurora/ims/ImsRadioAidl;->mImsRadio:Lvendor/qti/hardware/radio/ims/IImsRadio;

    .line 196
    monitor-exit v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 197
    :try_start_2
    iget-object v5, p0, Lorg/codeaurora/ims/ImsRadioAidl;->mDeathRecipient:Lorg/codeaurora/ims/ImsRadioAidl$ImsRadioDeathRecipient;

    invoke-interface {v0, v5, v3}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V

    .line 198
    iget-object v3, p0, Lorg/codeaurora/ims/ImsRadioAidl;->mIndication:Lorg/codeaurora/ims/IImsRadioIndication;

    invoke-interface {v3}, Lorg/codeaurora/ims/IImsRadioIndication;->onServiceUp()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 203
    .end local v0    # "binder":Landroid/os/IBinder;
    .end local v1    # "imsRadio":Lvendor/qti/hardware/radio/ims/IImsRadio;
    .end local v2    # "imsRadioResponse":Lorg/codeaurora/ims/ImsRadioResponseAidl;
    .end local v4    # "imsRadioIndication":Lorg/codeaurora/ims/ImsRadioIndicationAidl;
    goto :goto_1

    .line 196
    .restart local v0    # "binder":Landroid/os/IBinder;
    .restart local v1    # "imsRadio":Lvendor/qti/hardware/radio/ims/IImsRadio;
    .restart local v2    # "imsRadioResponse":Lorg/codeaurora/ims/ImsRadioResponseAidl;
    .restart local v4    # "imsRadioIndication":Lorg/codeaurora/ims/ImsRadioIndicationAidl;
    :catchall_0
    move-exception v3

    :try_start_3
    monitor-exit v5
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .end local p0    # "this":Lorg/codeaurora/ims/ImsRadioAidl;
    :try_start_4
    throw v3
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    .line 200
    .end local v0    # "binder":Landroid/os/IBinder;
    .end local v1    # "imsRadio":Lvendor/qti/hardware/radio/ims/IImsRadio;
    .end local v2    # "imsRadioResponse":Lorg/codeaurora/ims/ImsRadioResponseAidl;
    .end local v4    # "imsRadioIndication":Lorg/codeaurora/ims/ImsRadioIndicationAidl;
    .restart local p0    # "this":Lorg/codeaurora/ims/ImsRadioAidl;
    :catch_0
    move-exception v0

    .line 201
    .local v0, "ex":Ljava/lang/Exception;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "initImsRadio: Exception: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lorg/codeaurora/ims/ImsRadioAidl;->loge(Ljava/lang/String;)V

    .line 202
    invoke-direct {p0}, Lorg/codeaurora/ims/ImsRadioAidl;->resetService()V

    .line 204
    .end local v0    # "ex":Ljava/lang/Exception;
    :goto_1
    return-void
.end method

.method public static isAidlAvailable(I)Z
    .locals 3
    .param p0, "phoneId"    # I

    .line 208
    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "vendor.qti.hardware.radio.ims.IImsRadio/imsradio"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/os/ServiceManager;->isDeclared(Ljava/lang/String;)Z

    move-result v0
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 209
    :catch_0
    move-exception v0

    .line 211
    .local v0, "e":Ljava/lang/SecurityException;
    const-string v1, "ImsRadioAidl"

    const-string v2, "Security exception while call into AIDL"

    invoke-static {v1, v2}, Lcom/qualcomm/ims/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 213
    .end local v0    # "e":Ljava/lang/SecurityException;
    const/4 v0, 0x0

    return v0
.end method

.method private isDsdsTransitionSupported()Z
    .locals 7

    .line 256
    invoke-direct {p0}, Lorg/codeaurora/ims/ImsRadioAidl;->imsRadio()Lvendor/qti/hardware/radio/ims/IImsRadio;

    move-result-object v0

    const/16 v1, 0xc

    invoke-static {v0, v1}, Lorg/codeaurora/ims/StableAidl;->isVersionSupported(Lvendor/qti/hardware/radio/ims/IImsRadio;I)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 257
    return v1

    .line 259
    :cond_0
    iget-object v0, p0, Lorg/codeaurora/ims/ImsRadioAidl;->mTm:Landroid/telephony/TelephonyManager;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getBasebandVersion()Ljava/lang/String;

    move-result-object v0

    .line 260
    .local v0, "basebandVersion":Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "BasebandVersion string: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {p0, v2}, Lcom/qualcomm/ims/utils/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 261
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 262
    return v1

    .line 266
    :cond_1
    const-string v2, "(?<=\\d)"

    invoke-virtual {v0, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 267
    .local v2, "output":[Ljava/lang/String;
    array-length v3, v2

    if-gtz v3, :cond_2

    .line 268
    return v1

    .line 270
    :cond_2
    aget-object v3, v2, v1

    aget-object v4, v2, v1

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    const/4 v5, 0x1

    sub-int/2addr v4, v5

    invoke-virtual {v3, v4}, Ljava/lang/String;->charAt(I)C

    move-result v3

    invoke-static {v3}, Ljava/lang/Character;->getNumericValue(C)I

    move-result v3

    .line 271
    .local v3, "value":I
    aget-object v4, v2, v1

    const-string v6, "MPSS.DE."

    invoke-direct {p0, v4, v6}, Lorg/codeaurora/ims/ImsRadioAidl;->containsModemVersion(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 272
    const/4 v4, 0x5

    invoke-direct {p0, v3, v4}, Lorg/codeaurora/ims/ImsRadioAidl;->isSupportedModemVersion(II)Z

    move-result v4

    if-eqz v4, :cond_3

    move v1, v5

    goto :goto_0

    :cond_3
    nop

    .line 271
    :goto_0
    return v1
.end method

.method private isSupportedModemVersion(II)Z
    .locals 1
    .param p1, "modemVersion"    # I
    .param p2, "supportedModemVersion"    # I

    .line 282
    if-lt p1, p2, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private log(Ljava/lang/String;)V
    .locals 2
    .param p1, "msg"    # Ljava/lang/String;

    .line 104
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lorg/codeaurora/ims/ImsRadioAidl;->mLogSuffix:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/qualcomm/ims/utils/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 105
    return-void
.end method

.method private loge(Ljava/lang/String;)V
    .locals 2
    .param p1, "msg"    # Ljava/lang/String;

    .line 112
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lorg/codeaurora/ims/ImsRadioAidl;->mLogSuffix:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/qualcomm/ims/utils/Log;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 113
    return-void
.end method

.method private logv(Ljava/lang/String;)V
    .locals 2
    .param p1, "msg"    # Ljava/lang/String;

    .line 108
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lorg/codeaurora/ims/ImsRadioAidl;->mLogSuffix:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/qualcomm/ims/utils/Log;->v(Ljava/lang/Object;Ljava/lang/String;)V

    .line 109
    return-void
.end method

.method private resetService()V
    .locals 4

    .line 132
    const-string v0, "IImsRadio service down: Resetting HAL interfaces."

    invoke-direct {p0, v0}, Lorg/codeaurora/ims/ImsRadioAidl;->log(Ljava/lang/String;)V

    .line 133
    iget-object v0, p0, Lorg/codeaurora/ims/ImsRadioAidl;->mIndication:Lorg/codeaurora/ims/IImsRadioIndication;

    invoke-interface {v0}, Lorg/codeaurora/ims/IImsRadioIndication;->onServiceDown()V

    .line 134
    const/4 v0, 0x0

    .line 135
    .local v0, "binder":Landroid/os/IBinder;
    iget-object v1, p0, Lorg/codeaurora/ims/ImsRadioAidl;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 136
    const/4 v2, 0x0

    :try_start_0
    iput-object v2, p0, Lorg/codeaurora/ims/ImsRadioAidl;->mImsRadio:Lvendor/qti/hardware/radio/ims/IImsRadio;

    .line 137
    iput-object v2, p0, Lorg/codeaurora/ims/ImsRadioAidl;->mImsRadioResponse:Lvendor/qti/hardware/radio/ims/IImsRadioResponse;

    .line 138
    iput-object v2, p0, Lorg/codeaurora/ims/ImsRadioAidl;->mImsRadioIndication:Lvendor/qti/hardware/radio/ims/IImsRadioIndication;

    .line 139
    iget-object v3, p0, Lorg/codeaurora/ims/ImsRadioAidl;->mBinder:Landroid/os/IBinder;

    move-object v0, v3

    .line 140
    iput-object v2, p0, Lorg/codeaurora/ims/ImsRadioAidl;->mBinder:Landroid/os/IBinder;

    .line 141
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 142
    if-eqz v0, :cond_0

    .line 144
    :try_start_1
    iget-object v1, p0, Lorg/codeaurora/ims/ImsRadioAidl;->mDeathRecipient:Lorg/codeaurora/ims/ImsRadioAidl$ImsRadioDeathRecipient;

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 147
    goto :goto_0

    .line 145
    :catch_0
    move-exception v1

    .line 146
    .local v1, "ex":Ljava/lang/Exception;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "IImsRadio binder is null"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lorg/codeaurora/ims/ImsRadioAidl;->loge(Ljava/lang/String;)V

    .line 149
    .end local v1    # "ex":Ljava/lang/Exception;
    :cond_0
    :goto_0
    return-void

    .line 141
    :catchall_0
    move-exception v2

    :try_start_2
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v2
.end method


# virtual methods
.method public acknowledgeSms(III)V
    .locals 2
    .param p1, "token"    # I
    .param p2, "messageRef"    # I
    .param p3, "deliverStatus"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 374
    invoke-static {p2, p3}, Lorg/codeaurora/ims/StableAidl;->fromAcknowledgeSms(II)Lvendor/qti/hardware/radio/ims/AcknowledgeSmsInfo;

    move-result-object v0

    .line 375
    .local v0, "smsInfo":Lvendor/qti/hardware/radio/ims/AcknowledgeSmsInfo;
    invoke-direct {p0}, Lorg/codeaurora/ims/ImsRadioAidl;->imsRadio()Lvendor/qti/hardware/radio/ims/IImsRadio;

    move-result-object v1

    invoke-interface {v1, p1, v0}, Lvendor/qti/hardware/radio/ims/IImsRadio;->acknowledgeSms(ILvendor/qti/hardware/radio/ims/AcknowledgeSmsInfo;)V

    .line 376
    return-void
.end method

.method public acknowledgeSmsReport(III)V
    .locals 2
    .param p1, "token"    # I
    .param p2, "messageRef"    # I
    .param p3, "statusReportStatus"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 381
    invoke-static {p2, p3}, Lorg/codeaurora/ims/StableAidl;->fromAcknowledgeSmsReport(II)Lvendor/qti/hardware/radio/ims/AcknowledgeSmsReportInfo;

    move-result-object v0

    .line 383
    .local v0, "smsReportInfo":Lvendor/qti/hardware/radio/ims/AcknowledgeSmsReportInfo;
    invoke-direct {p0}, Lorg/codeaurora/ims/ImsRadioAidl;->imsRadio()Lvendor/qti/hardware/radio/ims/IImsRadio;

    move-result-object v1

    invoke-interface {v1, p1, v0}, Lvendor/qti/hardware/radio/ims/IImsRadio;->acknowledgeSmsReport(ILvendor/qti/hardware/radio/ims/AcknowledgeSmsReportInfo;)V

    .line 384
    return-void
.end method

.method public addParticipant(ILjava/lang/String;ILorg/codeaurora/ims/CallDetails;)V
    .locals 3
    .param p1, "token"    # I
    .param p2, "address"    # Ljava/lang/String;
    .param p3, "clirMode"    # I
    .param p4, "callDetails"    # Lorg/codeaurora/ims/CallDetails;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 300
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-static {p2, p3, p4, v0, v1}, Lorg/codeaurora/ims/StableAidl;->fromDialRequest(Ljava/lang/String;ILorg/codeaurora/ims/CallDetails;ZLorg/codeaurora/ims/RedialInfo;)Lvendor/qti/hardware/radio/ims/DialRequest;

    move-result-object v0

    .line 302
    .local v0, "dialRequest":Lvendor/qti/hardware/radio/ims/DialRequest;
    invoke-direct {p0}, Lorg/codeaurora/ims/ImsRadioAidl;->imsRadio()Lvendor/qti/hardware/radio/ims/IImsRadio;

    move-result-object v1

    invoke-interface {v1, p1, v0}, Lvendor/qti/hardware/radio/ims/IImsRadio;->addParticipant(ILvendor/qti/hardware/radio/ims/DialRequest;)V

    .line 303
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "addParticipant: token = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " address = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, v0, Lvendor/qti/hardware/radio/ims/DialRequest;->address:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " callType = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, v0, Lvendor/qti/hardware/radio/ims/DialRequest;->callDetails:Lvendor/qti/hardware/radio/ims/CallDetails;

    iget v2, v2, Lvendor/qti/hardware/radio/ims/CallDetails;->callType:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " callDomain = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, v0, Lvendor/qti/hardware/radio/ims/DialRequest;->callDetails:Lvendor/qti/hardware/radio/ims/CallDetails;

    iget v2, v2, Lvendor/qti/hardware/radio/ims/CallDetails;->callDomain:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " isConferenceUri = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, v0, Lvendor/qti/hardware/radio/ims/DialRequest;->isConferenceUri:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "isCallPull ="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, v0, Lvendor/qti/hardware/radio/ims/DialRequest;->isCallPull:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " isEncrypted = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, v0, Lvendor/qti/hardware/radio/ims/DialRequest;->isEncrypted:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lorg/codeaurora/ims/ImsRadioAidl;->logv(Ljava/lang/String;)V

    .line 308
    return-void
.end method

.method public answer(IIII)V
    .locals 2
    .param p1, "token"    # I
    .param p2, "callType"    # I
    .param p3, "ipPresentation"    # I
    .param p4, "rttMode"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 351
    invoke-static {p2, p3, p4}, Lorg/codeaurora/ims/StableAidl;->fromAnswerRequest(III)Lvendor/qti/hardware/radio/ims/AnswerRequest;

    move-result-object v0

    .line 353
    .local v0, "answerRequest":Lvendor/qti/hardware/radio/ims/AnswerRequest;
    invoke-direct {p0}, Lorg/codeaurora/ims/ImsRadioAidl;->imsRadio()Lvendor/qti/hardware/radio/ims/IImsRadio;

    move-result-object v1

    invoke-interface {v1, p1, v0}, Lvendor/qti/hardware/radio/ims/IImsRadio;->answer(ILvendor/qti/hardware/radio/ims/AnswerRequest;)V

    .line 354
    return-void
.end method

.method public cancelModifyCall(II)V
    .locals 1
    .param p1, "token"    # I
    .param p2, "callId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 438
    invoke-direct {p0}, Lorg/codeaurora/ims/ImsRadioAidl;->imsRadio()Lvendor/qti/hardware/radio/ims/IImsRadio;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lvendor/qti/hardware/radio/ims/IImsRadio;->cancelModifyCall(II)V

    .line 439
    return-void
.end method

.method public cancelPendingUssd(I)V
    .locals 1
    .param p1, "token"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 345
    invoke-direct {p0}, Lorg/codeaurora/ims/ImsRadioAidl;->imsRadio()Lvendor/qti/hardware/radio/ims/IImsRadio;

    move-result-object v0

    invoke-interface {v0, p1}, Lvendor/qti/hardware/radio/ims/IImsRadio;->cancelPendingUssd(I)V

    .line 346
    return-void
.end method

.method public conference(I)V
    .locals 1
    .param p1, "token"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 459
    invoke-direct {p0}, Lorg/codeaurora/ims/ImsRadioAidl;->imsRadio()Lvendor/qti/hardware/radio/ims/IImsRadio;

    move-result-object v0

    invoke-interface {v0, p1}, Lvendor/qti/hardware/radio/ims/IImsRadio;->conference(I)V

    .line 460
    return-void
.end method

.method public deflectCall(IILjava/lang/String;)V
    .locals 2
    .param p1, "token"    # I
    .param p2, "index"    # I
    .param p3, "number"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 359
    invoke-static {p2, p3}, Lorg/codeaurora/ims/StableAidl;->fromDeflectCall(ILjava/lang/String;)Lvendor/qti/hardware/radio/ims/DeflectRequestInfo;

    move-result-object v0

    .line 360
    .local v0, "deflectRequestInfo":Lvendor/qti/hardware/radio/ims/DeflectRequestInfo;
    invoke-direct {p0}, Lorg/codeaurora/ims/ImsRadioAidl;->imsRadio()Lvendor/qti/hardware/radio/ims/IImsRadio;

    move-result-object v1

    invoke-interface {v1, p1, v0}, Lvendor/qti/hardware/radio/ims/IImsRadio;->deflectCall(ILvendor/qti/hardware/radio/ims/DeflectRequestInfo;)V

    .line 361
    return-void
.end method

.method public dial(ILjava/lang/String;Lorg/codeaurora/ims/EmergencyCallInfo;ILorg/codeaurora/ims/CallDetails;ZLorg/codeaurora/ims/CallComposerInfo;Lorg/codeaurora/ims/RedialInfo;)V
    .locals 7
    .param p1, "token"    # I
    .param p2, "address"    # Ljava/lang/String;
    .param p3, "eInfo"    # Lorg/codeaurora/ims/EmergencyCallInfo;
    .param p4, "clirMode"    # I
    .param p5, "callDetails"    # Lorg/codeaurora/ims/CallDetails;
    .param p6, "isEncrypted"    # Z
    .param p7, "ccInfo"    # Lorg/codeaurora/ims/CallComposerInfo;
    .param p8, "redialInfo"    # Lorg/codeaurora/ims/RedialInfo;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 316
    invoke-static {p2, p4, p5, p6, p8}, Lorg/codeaurora/ims/StableAidl;->fromDialRequest(Ljava/lang/String;ILorg/codeaurora/ims/CallDetails;ZLorg/codeaurora/ims/RedialInfo;)Lvendor/qti/hardware/radio/ims/DialRequest;

    move-result-object v0

    .line 318
    .local v0, "dialRequest":Lvendor/qti/hardware/radio/ims/DialRequest;
    if-eqz p3, :cond_0

    .line 319
    move-object v1, p3

    move-object v2, p2

    move v3, p4

    move-object v4, p5

    move v5, p6

    move-object v6, p8

    invoke-static/range {v1 .. v6}, Lorg/codeaurora/ims/StableAidl;->fromEmergencyDialRequest(Lorg/codeaurora/ims/EmergencyCallInfo;Ljava/lang/String;ILorg/codeaurora/ims/CallDetails;ZLorg/codeaurora/ims/RedialInfo;)Lvendor/qti/hardware/radio/ims/EmergencyDialRequest;

    move-result-object v1

    .line 321
    .local v1, "emergencyDialRequest":Lvendor/qti/hardware/radio/ims/EmergencyDialRequest;
    invoke-direct {p0}, Lorg/codeaurora/ims/ImsRadioAidl;->imsRadio()Lvendor/qti/hardware/radio/ims/IImsRadio;

    move-result-object v2

    invoke-interface {v2, p1, v1}, Lvendor/qti/hardware/radio/ims/IImsRadio;->emergencyDial(ILvendor/qti/hardware/radio/ims/EmergencyDialRequest;)V

    .line 322
    .end local v1    # "emergencyDialRequest":Lvendor/qti/hardware/radio/ims/EmergencyDialRequest;
    goto :goto_0

    :cond_0
    if-eqz p7, :cond_1

    .line 323
    nop

    .line 324
    move-object v1, p7

    move-object v2, p2

    move v3, p4

    move-object v4, p5

    move v5, p6

    move-object v6, p8

    invoke-static/range {v1 .. v6}, Lorg/codeaurora/ims/StableAidl;->fromCallComposerDialRequest(Lorg/codeaurora/ims/CallComposerInfo;Ljava/lang/String;ILorg/codeaurora/ims/CallDetails;ZLorg/codeaurora/ims/RedialInfo;)Lvendor/qti/hardware/radio/ims/CallComposerDialRequest;

    move-result-object v1

    .line 326
    .local v1, "composerDialRequest":Lvendor/qti/hardware/radio/ims/CallComposerDialRequest;
    invoke-direct {p0}, Lorg/codeaurora/ims/ImsRadioAidl;->imsRadio()Lvendor/qti/hardware/radio/ims/IImsRadio;

    move-result-object v2

    invoke-interface {v2, p1, v1}, Lvendor/qti/hardware/radio/ims/IImsRadio;->callComposerDial(ILvendor/qti/hardware/radio/ims/CallComposerDialRequest;)V

    .line 327
    .end local v1    # "composerDialRequest":Lvendor/qti/hardware/radio/ims/CallComposerDialRequest;
    goto :goto_0

    .line 328
    :cond_1
    invoke-direct {p0}, Lorg/codeaurora/ims/ImsRadioAidl;->imsRadio()Lvendor/qti/hardware/radio/ims/IImsRadio;

    move-result-object v1

    invoke-interface {v1, p1, v0}, Lvendor/qti/hardware/radio/ims/IImsRadio;->dial(ILvendor/qti/hardware/radio/ims/DialRequest;)V

    .line 330
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "dial: address = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, v0, Lvendor/qti/hardware/radio/ims/DialRequest;->address:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "callType ="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, v0, Lvendor/qti/hardware/radio/ims/DialRequest;->callDetails:Lvendor/qti/hardware/radio/ims/CallDetails;

    iget v2, v2, Lvendor/qti/hardware/radio/ims/CallDetails;->callType:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "callDomain ="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, v0, Lvendor/qti/hardware/radio/ims/DialRequest;->callDetails:Lvendor/qti/hardware/radio/ims/CallDetails;

    iget v2, v2, Lvendor/qti/hardware/radio/ims/CallDetails;->callDomain:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "isConferenceUri ="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, v0, Lvendor/qti/hardware/radio/ims/DialRequest;->isConferenceUri:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "isCallPull ="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, v0, Lvendor/qti/hardware/radio/ims/DialRequest;->isCallPull:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "isEncrypted ="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, v0, Lvendor/qti/hardware/radio/ims/DialRequest;->isEncrypted:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "rttMode ="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, v0, Lvendor/qti/hardware/radio/ims/DialRequest;->callDetails:Lvendor/qti/hardware/radio/ims/CallDetails;

    iget v2, v2, Lvendor/qti/hardware/radio/ims/CallDetails;->rttMode:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lorg/codeaurora/ims/ImsRadioAidl;->logv(Ljava/lang/String;)V

    .line 336
    return-void
.end method

.method public dispose()V
    .locals 2

    .line 291
    iget-object v0, p0, Lorg/codeaurora/ims/ImsRadioAidl;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 292
    const/4 v1, 0x1

    :try_start_0
    iput-boolean v1, p0, Lorg/codeaurora/ims/ImsRadioAidl;->mIsDisposed:Z

    .line 293
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 294
    invoke-direct {p0}, Lorg/codeaurora/ims/ImsRadioAidl;->resetService()V

    .line 295
    return-void

    .line 293
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public exitEmergencyCallbackMode(I)V
    .locals 1
    .param p1, "token"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 565
    invoke-direct {p0}, Lorg/codeaurora/ims/ImsRadioAidl;->imsRadio()Lvendor/qti/hardware/radio/ims/IImsRadio;

    move-result-object v0

    invoke-interface {v0, p1}, Lvendor/qti/hardware/radio/ims/IImsRadio;->exitEmergencyCallbackMode(I)V

    .line 566
    return-void
.end method

.method public exitSmsCallBackMode(I)V
    .locals 1
    .param p1, "token"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 640
    invoke-direct {p0}, Lorg/codeaurora/ims/ImsRadioAidl;->imsRadio()Lvendor/qti/hardware/radio/ims/IImsRadio;

    move-result-object v0

    invoke-interface {v0, p1}, Lvendor/qti/hardware/radio/ims/IImsRadio;->exitSmsCallBackMode(I)V

    .line 641
    return-void
.end method

.method public explicitCallTransfer(IIILjava/lang/String;I)V
    .locals 2
    .param p1, "token"    # I
    .param p2, "srcCallId"    # I
    .param p3, "type"    # I
    .param p4, "number"    # Ljava/lang/String;
    .param p5, "destCallId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 465
    invoke-static {p2, p3, p4, p5}, Lorg/codeaurora/ims/StableAidl;->fromEctInfo(IILjava/lang/String;I)Lvendor/qti/hardware/radio/ims/ExplicitCallTransferInfo;

    move-result-object v0

    .line 467
    .local v0, "ectInfo":Lvendor/qti/hardware/radio/ims/ExplicitCallTransferInfo;
    invoke-direct {p0}, Lorg/codeaurora/ims/ImsRadioAidl;->imsRadio()Lvendor/qti/hardware/radio/ims/IImsRadio;

    move-result-object v1

    invoke-interface {v1, p1, v0}, Lvendor/qti/hardware/radio/ims/IImsRadio;->explicitCallTransfer(ILvendor/qti/hardware/radio/ims/ExplicitCallTransferInfo;)V

    .line 468
    return-void
.end method

.method public getCallWaiting(II)V
    .locals 1
    .param p1, "token"    # I
    .param p2, "serviceClass"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 524
    invoke-direct {p0}, Lorg/codeaurora/ims/ImsRadioAidl;->imsRadio()Lvendor/qti/hardware/radio/ims/IImsRadio;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lvendor/qti/hardware/radio/ims/IImsRadio;->getCallWaiting(II)V

    .line 525
    return-void
.end method

.method public getClip(I)V
    .locals 1
    .param p1, "token"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 554
    invoke-direct {p0}, Lorg/codeaurora/ims/ImsRadioAidl;->imsRadio()Lvendor/qti/hardware/radio/ims/IImsRadio;

    move-result-object v0

    invoke-interface {v0, p1}, Lvendor/qti/hardware/radio/ims/IImsRadio;->getClip(I)V

    .line 555
    return-void
.end method

.method public getClir(I)V
    .locals 1
    .param p1, "token"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 513
    invoke-direct {p0}, Lorg/codeaurora/ims/ImsRadioAidl;->imsRadio()Lvendor/qti/hardware/radio/ims/IImsRadio;

    move-result-object v0

    invoke-interface {v0, p1}, Lvendor/qti/hardware/radio/ims/IImsRadio;->getClir(I)V

    .line 514
    return-void
.end method

.method public getColr(I)V
    .locals 1
    .param p1, "token"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 579
    invoke-direct {p0}, Lorg/codeaurora/ims/ImsRadioAidl;->imsRadio()Lvendor/qti/hardware/radio/ims/IImsRadio;

    move-result-object v0

    invoke-interface {v0, p1}, Lvendor/qti/hardware/radio/ims/IImsRadio;->getColr(I)V

    .line 580
    return-void
.end method

.method public getConfig(IIZILjava/lang/String;I)V
    .locals 2
    .param p1, "token"    # I
    .param p2, "item"    # I
    .param p3, "boolValue"    # Z
    .param p4, "intValue"    # I
    .param p5, "strValue"    # Ljava/lang/String;
    .param p6, "errorCause"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 482
    invoke-static {p2, p3, p4, p5, p6}, Lorg/codeaurora/ims/StableAidl;->fromImsConfig(IZILjava/lang/String;I)Lvendor/qti/hardware/radio/ims/ConfigInfo;

    move-result-object v0

    .line 484
    .local v0, "config":Lvendor/qti/hardware/radio/ims/ConfigInfo;
    invoke-direct {p0}, Lorg/codeaurora/ims/ImsRadioAidl;->imsRadio()Lvendor/qti/hardware/radio/ims/IImsRadio;

    move-result-object v1

    invoke-interface {v1, p1, v0}, Lvendor/qti/hardware/radio/ims/IImsRadio;->getConfig(ILvendor/qti/hardware/radio/ims/ConfigInfo;)V

    .line 485
    return-void
.end method

.method public getImsRegistrationState(I)V
    .locals 1
    .param p1, "token"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 421
    invoke-direct {p0}, Lorg/codeaurora/ims/ImsRadioAidl;->imsRadio()Lvendor/qti/hardware/radio/ims/IImsRadio;

    move-result-object v0

    invoke-interface {v0, p1}, Lvendor/qti/hardware/radio/ims/IImsRadio;->getImsRegistrationState(I)V

    .line 422
    return-void
.end method

.method public getImsSubConfig(I)V
    .locals 1
    .param p1, "token"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 600
    invoke-direct {p0}, Lorg/codeaurora/ims/ImsRadioAidl;->imsRadio()Lvendor/qti/hardware/radio/ims/IImsRadio;

    move-result-object v0

    invoke-interface {v0, p1}, Lvendor/qti/hardware/radio/ims/IImsRadio;->getImsSubConfig(I)V

    .line 601
    return-void
.end method

.method public getRtpErrorStatistics(I)V
    .locals 1
    .param p1, "token"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 595
    invoke-direct {p0}, Lorg/codeaurora/ims/ImsRadioAidl;->imsRadio()Lvendor/qti/hardware/radio/ims/IImsRadio;

    move-result-object v0

    invoke-interface {v0, p1}, Lvendor/qti/hardware/radio/ims/IImsRadio;->getRtpErrorStatistics(I)V

    .line 596
    return-void
.end method

.method public getRtpStatistics(I)V
    .locals 1
    .param p1, "token"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 590
    invoke-direct {p0}, Lorg/codeaurora/ims/ImsRadioAidl;->imsRadio()Lvendor/qti/hardware/radio/ims/IImsRadio;

    move-result-object v0

    invoke-interface {v0, p1}, Lvendor/qti/hardware/radio/ims/IImsRadio;->getRtpStatistics(I)V

    .line 591
    return-void
.end method

.method public getSmsFormat()Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 388
    invoke-direct {p0}, Lorg/codeaurora/ims/ImsRadioAidl;->imsRadio()Lvendor/qti/hardware/radio/ims/IImsRadio;

    move-result-object v0

    invoke-interface {v0}, Lvendor/qti/hardware/radio/ims/IImsRadio;->getSmsFormat()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public hangup(IILjava/lang/String;Ljava/lang/String;ZILjava/lang/String;)V
    .locals 2
    .param p1, "token"    # I
    .param p2, "connectionId"    # I
    .param p3, "userUri"    # Ljava/lang/String;
    .param p4, "confUri"    # Ljava/lang/String;
    .param p5, "mpty"    # Z
    .param p6, "failCause"    # I
    .param p7, "errorInfo"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 401
    invoke-static/range {p2 .. p7}, Lorg/codeaurora/ims/StableAidl;->fromHangup(ILjava/lang/String;Ljava/lang/String;ZILjava/lang/String;)Lvendor/qti/hardware/radio/ims/HangupRequestInfo;

    move-result-object v0

    .line 403
    .local v0, "hangup":Lvendor/qti/hardware/radio/ims/HangupRequestInfo;
    invoke-direct {p0}, Lorg/codeaurora/ims/ImsRadioAidl;->imsRadio()Lvendor/qti/hardware/radio/ims/IImsRadio;

    move-result-object v1

    invoke-interface {v1, p1, v0}, Lvendor/qti/hardware/radio/ims/IImsRadio;->hangup(ILvendor/qti/hardware/radio/ims/HangupRequestInfo;)V

    .line 404
    return-void
.end method

.method public hold(II)V
    .locals 1
    .param p1, "token"    # I
    .param p2, "callId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 449
    invoke-direct {p0}, Lorg/codeaurora/ims/ImsRadioAidl;->imsRadio()Lvendor/qti/hardware/radio/ims/IImsRadio;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lvendor/qti/hardware/radio/ims/IImsRadio;->hold(II)V

    .line 450
    return-void
.end method

.method public isAlive()Z
    .locals 1

    .line 286
    invoke-direct {p0}, Lorg/codeaurora/ims/ImsRadioAidl;->imsRadio()Lvendor/qti/hardware/radio/ims/IImsRadio;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isFeatureSupported(I)Z
    .locals 2
    .param p1, "feature"    # I

    .line 219
    const/4 v0, 0x0

    packed-switch p1, :pswitch_data_0

    .line 251
    return v0

    .line 249
    :pswitch_0
    invoke-direct {p0}, Lorg/codeaurora/ims/ImsRadioAidl;->isDsdsTransitionSupported()Z

    move-result v0

    return v0

    .line 246
    :pswitch_1
    invoke-direct {p0}, Lorg/codeaurora/ims/ImsRadioAidl;->imsRadio()Lvendor/qti/hardware/radio/ims/IImsRadio;

    move-result-object v0

    const/16 v1, 0xb

    invoke-static {v0, v1}, Lorg/codeaurora/ims/StableAidl;->isVersionSupported(Lvendor/qti/hardware/radio/ims/IImsRadio;I)Z

    move-result v0

    return v0

    .line 243
    :pswitch_2
    invoke-direct {p0}, Lorg/codeaurora/ims/ImsRadioAidl;->imsRadio()Lvendor/qti/hardware/radio/ims/IImsRadio;

    move-result-object v0

    const/16 v1, 0x8

    invoke-static {v0, v1}, Lorg/codeaurora/ims/StableAidl;->isVersionSupported(Lvendor/qti/hardware/radio/ims/IImsRadio;I)Z

    move-result v0

    return v0

    .line 240
    :pswitch_3
    invoke-direct {p0}, Lorg/codeaurora/ims/ImsRadioAidl;->imsRadio()Lvendor/qti/hardware/radio/ims/IImsRadio;

    move-result-object v0

    const/4 v1, 0x7

    invoke-static {v0, v1}, Lorg/codeaurora/ims/StableAidl;->isVersionSupported(Lvendor/qti/hardware/radio/ims/IImsRadio;I)Z

    move-result v0

    return v0

    .line 237
    :pswitch_4
    invoke-direct {p0}, Lorg/codeaurora/ims/ImsRadioAidl;->imsRadio()Lvendor/qti/hardware/radio/ims/IImsRadio;

    move-result-object v0

    const/4 v1, 0x4

    invoke-static {v0, v1}, Lorg/codeaurora/ims/StableAidl;->isVersionSupported(Lvendor/qti/hardware/radio/ims/IImsRadio;I)Z

    move-result v0

    return v0

    .line 234
    :pswitch_5
    invoke-direct {p0}, Lorg/codeaurora/ims/ImsRadioAidl;->imsRadio()Lvendor/qti/hardware/radio/ims/IImsRadio;

    move-result-object v0

    const/4 v1, 0x3

    invoke-static {v0, v1}, Lorg/codeaurora/ims/StableAidl;->isVersionSupported(Lvendor/qti/hardware/radio/ims/IImsRadio;I)Z

    move-result v0

    return v0

    .line 231
    :pswitch_6
    invoke-direct {p0}, Lorg/codeaurora/ims/ImsRadioAidl;->imsRadio()Lvendor/qti/hardware/radio/ims/IImsRadio;

    move-result-object v0

    const/4 v1, 0x2

    invoke-static {v0, v1}, Lorg/codeaurora/ims/StableAidl;->isVersionSupported(Lvendor/qti/hardware/radio/ims/IImsRadio;I)Z

    move-result v0

    return v0

    .line 228
    :pswitch_7
    invoke-direct {p0}, Lorg/codeaurora/ims/ImsRadioAidl;->imsRadio()Lvendor/qti/hardware/radio/ims/IImsRadio;

    move-result-object v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_7
        :pswitch_7
        :pswitch_7
        :pswitch_7
        :pswitch_7
        :pswitch_7
        :pswitch_7
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public modifyCallConfirm(ILorg/codeaurora/ims/CallModify;)V
    .locals 2
    .param p1, "token"    # I
    .param p2, "callModify"    # Lorg/codeaurora/ims/CallModify;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 444
    invoke-direct {p0}, Lorg/codeaurora/ims/ImsRadioAidl;->imsRadio()Lvendor/qti/hardware/radio/ims/IImsRadio;

    move-result-object v0

    invoke-static {p2}, Lorg/codeaurora/ims/StableAidl;->fromCallModify(Lorg/codeaurora/ims/CallModify;)Lvendor/qti/hardware/radio/ims/CallModifyInfo;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Lvendor/qti/hardware/radio/ims/IImsRadio;->modifyCallConfirm(ILvendor/qti/hardware/radio/ims/CallModifyInfo;)V

    .line 445
    return-void
.end method

.method public modifyCallInitiate(ILorg/codeaurora/ims/CallModify;)V
    .locals 2
    .param p1, "token"    # I
    .param p2, "callModify"    # Lorg/codeaurora/ims/CallModify;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 433
    invoke-direct {p0}, Lorg/codeaurora/ims/ImsRadioAidl;->imsRadio()Lvendor/qti/hardware/radio/ims/IImsRadio;

    move-result-object v0

    invoke-static {p2}, Lorg/codeaurora/ims/StableAidl;->fromCallModify(Lorg/codeaurora/ims/CallModify;)Lvendor/qti/hardware/radio/ims/CallModifyInfo;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Lvendor/qti/hardware/radio/ims/IImsRadio;->modifyCallInitiate(ILvendor/qti/hardware/radio/ims/CallModifyInfo;)V

    .line 434
    return-void
.end method

.method public queryCallForwardStatus(IIILjava/lang/String;Z)V
    .locals 6
    .param p1, "token"    # I
    .param p2, "cfReason"    # I
    .param p3, "serviceClass"    # I
    .param p4, "number"    # Ljava/lang/String;
    .param p5, "expectMore"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 547
    const/4 v3, 0x2

    const/4 v4, 0x0

    move v0, p2

    move v1, p3

    move-object v2, p4

    move v5, p5

    invoke-static/range {v0 .. v5}, Lorg/codeaurora/ims/StableAidl;->fromImsCallForwardTimerInfo(IILjava/lang/String;IIZ)Lvendor/qti/hardware/radio/ims/CallForwardInfo;

    move-result-object v0

    .line 549
    .local v0, "cfInfo":Lvendor/qti/hardware/radio/ims/CallForwardInfo;
    invoke-direct {p0}, Lorg/codeaurora/ims/ImsRadioAidl;->imsRadio()Lvendor/qti/hardware/radio/ims/IImsRadio;

    move-result-object v1

    invoke-interface {v1, p1, v0}, Lvendor/qti/hardware/radio/ims/IImsRadio;->queryCallForwardStatus(ILvendor/qti/hardware/radio/ims/CallForwardInfo;)V

    .line 550
    return-void
.end method

.method public queryMultiSimVoiceCapability(I)V
    .locals 1
    .param p1, "token"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 635
    invoke-direct {p0}, Lorg/codeaurora/ims/ImsRadioAidl;->imsRadio()Lvendor/qti/hardware/radio/ims/IImsRadio;

    move-result-object v0

    invoke-interface {v0, p1}, Lvendor/qti/hardware/radio/ims/IImsRadio;->queryMultiSimVoiceCapability(I)V

    .line 636
    return-void
.end method

.method public queryServiceStatus(I)V
    .locals 1
    .param p1, "token"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 408
    invoke-direct {p0}, Lorg/codeaurora/ims/ImsRadioAidl;->imsRadio()Lvendor/qti/hardware/radio/ims/IImsRadio;

    move-result-object v0

    invoke-interface {v0, p1}, Lvendor/qti/hardware/radio/ims/IImsRadio;->queryServiceStatus(I)V

    .line 409
    return-void
.end method

.method public queryVirtualLineInfo(ILjava/lang/String;)V
    .locals 1
    .param p1, "token"    # I
    .param p2, "msisdn"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 610
    invoke-direct {p0}, Lorg/codeaurora/ims/ImsRadioAidl;->imsRadio()Lvendor/qti/hardware/radio/ims/IImsRadio;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lvendor/qti/hardware/radio/ims/IImsRadio;->queryVirtualLineInfo(ILjava/lang/String;)V

    .line 611
    return-void
.end method

.method public registerMultiIdentityLines(ILjava/util/Collection;)V
    .locals 2
    .param p1, "token"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/Collection<",
            "Lorg/codeaurora/ims/MultiIdentityLineInfo;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 616
    .local p2, "linesInfo":Ljava/util/Collection;, "Ljava/util/Collection<Lorg/codeaurora/ims/MultiIdentityLineInfo;>;"
    nop

    .line 617
    invoke-static {p2}, Lorg/codeaurora/ims/StableAidl;->fromMultiIdentityLineInfoList(Ljava/util/Collection;)[Lvendor/qti/hardware/radio/ims/MultiIdentityLineInfo;

    move-result-object v0

    .line 618
    .local v0, "halLinesInfo":[Lvendor/qti/hardware/radio/ims/MultiIdentityLineInfo;
    invoke-direct {p0}, Lorg/codeaurora/ims/ImsRadioAidl;->imsRadio()Lvendor/qti/hardware/radio/ims/IImsRadio;

    move-result-object v1

    invoke-interface {v1, p1, v0}, Lvendor/qti/hardware/radio/ims/IImsRadio;->registerMultiIdentityLines(I[Lvendor/qti/hardware/radio/ims/MultiIdentityLineInfo;)V

    .line 619
    return-void
.end method

.method public requestRegistrationChange(II)V
    .locals 2
    .param p1, "token"    # I
    .param p2, "imsRegState"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 427
    invoke-direct {p0}, Lorg/codeaurora/ims/ImsRadioAidl;->imsRadio()Lvendor/qti/hardware/radio/ims/IImsRadio;

    move-result-object v0

    invoke-static {p2}, Lorg/codeaurora/ims/StableAidl;->fromRegState(I)I

    move-result v1

    invoke-interface {v0, p1, v1}, Lvendor/qti/hardware/radio/ims/IImsRadio;->requestRegistrationChange(II)V

    .line 428
    return-void
.end method

.method public resume(II)V
    .locals 1
    .param p1, "token"    # I
    .param p2, "callId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 454
    invoke-direct {p0}, Lorg/codeaurora/ims/ImsRadioAidl;->imsRadio()Lvendor/qti/hardware/radio/ims/IImsRadio;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lvendor/qti/hardware/radio/ims/IImsRadio;->resume(II)V

    .line 455
    return-void
.end method

.method public sendDtmf(IIC)V
    .locals 2
    .param p1, "token"    # I
    .param p2, "callId"    # I
    .param p3, "c"    # C
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 489
    invoke-static {p2, p3}, Lorg/codeaurora/ims/StableAidl;->fromDtmf(IC)Lvendor/qti/hardware/radio/ims/DtmfInfo;

    move-result-object v0

    .line 490
    .local v0, "dtmfValue":Lvendor/qti/hardware/radio/ims/DtmfInfo;
    invoke-direct {p0}, Lorg/codeaurora/ims/ImsRadioAidl;->imsRadio()Lvendor/qti/hardware/radio/ims/IImsRadio;

    move-result-object v1

    invoke-interface {v1, p1, v0}, Lvendor/qti/hardware/radio/ims/IImsRadio;->sendDtmf(ILvendor/qti/hardware/radio/ims/DtmfInfo;)V

    .line 491
    return-void
.end method

.method public sendGeolocationInfo(IDDLandroid/location/Address;)V
    .locals 2
    .param p1, "token"    # I
    .param p2, "lat"    # D
    .param p4, "lon"    # D
    .param p6, "address"    # Landroid/location/Address;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 394
    invoke-static {p2, p3, p4, p5, p6}, Lorg/codeaurora/ims/StableAidl;->fromGeoLocation(DDLandroid/location/Address;)Lvendor/qti/hardware/radio/ims/GeoLocationInfo;

    move-result-object v0

    .line 395
    .local v0, "geoLocationInfo":Lvendor/qti/hardware/radio/ims/GeoLocationInfo;
    invoke-direct {p0}, Lorg/codeaurora/ims/ImsRadioAidl;->imsRadio()Lvendor/qti/hardware/radio/ims/IImsRadio;

    move-result-object v1

    invoke-interface {v1, p1, v0}, Lvendor/qti/hardware/radio/ims/IImsRadio;->sendGeolocationInfo(ILvendor/qti/hardware/radio/ims/GeoLocationInfo;)V

    .line 396
    return-void
.end method

.method public sendRttMessage(ILjava/lang/String;)V
    .locals 1
    .param p1, "token"    # I
    .param p2, "message"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 605
    invoke-direct {p0}, Lorg/codeaurora/ims/ImsRadioAidl;->imsRadio()Lvendor/qti/hardware/radio/ims/IImsRadio;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lvendor/qti/hardware/radio/ims/IImsRadio;->sendRttMessage(ILjava/lang/String;)V

    .line 606
    return-void
.end method

.method public sendSipDtmf(ILjava/lang/String;)V
    .locals 1
    .param p1, "token"    # I
    .param p2, "requestCode"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 623
    invoke-direct {p0}, Lorg/codeaurora/ims/ImsRadioAidl;->imsRadio()Lvendor/qti/hardware/radio/ims/IImsRadio;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lvendor/qti/hardware/radio/ims/IImsRadio;->sendSipDtmf(ILjava/lang/String;)V

    .line 624
    return-void
.end method

.method public sendSms(IILjava/lang/String;Ljava/lang/String;Z[B)V
    .locals 2
    .param p1, "token"    # I
    .param p2, "messageRef"    # I
    .param p3, "format"    # Ljava/lang/String;
    .param p4, "smsc"    # Ljava/lang/String;
    .param p5, "isRetry"    # Z
    .param p6, "pdu"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 366
    invoke-static {p2, p3, p4, p5, p6}, Lorg/codeaurora/ims/StableAidl;->fromSmsRequest(ILjava/lang/String;Ljava/lang/String;Z[B)Lvendor/qti/hardware/radio/ims/SmsSendRequest;

    move-result-object v0

    .line 368
    .local v0, "smsRequest":Lvendor/qti/hardware/radio/ims/SmsSendRequest;
    invoke-direct {p0}, Lorg/codeaurora/ims/ImsRadioAidl;->imsRadio()Lvendor/qti/hardware/radio/ims/IImsRadio;

    move-result-object v1

    invoke-interface {v1, p1, v0}, Lvendor/qti/hardware/radio/ims/IImsRadio;->sendSms(ILvendor/qti/hardware/radio/ims/SmsSendRequest;)V

    .line 369
    return-void
.end method

.method public sendUssd(ILjava/lang/String;)V
    .locals 1
    .param p1, "token"    # I
    .param p2, "address"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 340
    invoke-direct {p0}, Lorg/codeaurora/ims/ImsRadioAidl;->imsRadio()Lvendor/qti/hardware/radio/ims/IImsRadio;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lvendor/qti/hardware/radio/ims/IImsRadio;->sendUssd(ILjava/lang/String;)V

    .line 341
    return-void
.end method

.method public sendVosActionInfo(ILorg/codeaurora/ims/VosActionInfo;)V
    .locals 2
    .param p1, "token"    # I
    .param p2, "vosActionInfo"    # Lorg/codeaurora/ims/VosActionInfo;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 650
    invoke-direct {p0}, Lorg/codeaurora/ims/ImsRadioAidl;->imsRadio()Lvendor/qti/hardware/radio/ims/IImsRadio;

    move-result-object v0

    invoke-static {p2}, Lorg/codeaurora/ims/StableAidl;->fromVosActionInfo(Lorg/codeaurora/ims/VosActionInfo;)Lvendor/qti/hardware/radio/ims/VosActionInfo;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Lvendor/qti/hardware/radio/ims/IImsRadio;->sendVosActionInfo(ILvendor/qti/hardware/radio/ims/VosActionInfo;)V

    .line 651
    return-void
.end method

.method public sendVosSupportStatus(IZ)V
    .locals 1
    .param p1, "token"    # I
    .param p2, "isVosSupported"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 645
    invoke-direct {p0}, Lorg/codeaurora/ims/ImsRadioAidl;->imsRadio()Lvendor/qti/hardware/radio/ims/IImsRadio;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lvendor/qti/hardware/radio/ims/IImsRadio;->sendVosSupportStatus(IZ)V

    .line 646
    return-void
.end method

.method public setCallForwardStatus(IIIIIIIILjava/lang/String;I)V
    .locals 9
    .param p1, "token"    # I
    .param p2, "startHour"    # I
    .param p3, "startMinute"    # I
    .param p4, "endHour"    # I
    .param p5, "endMinute"    # I
    .param p6, "action"    # I
    .param p7, "cfReason"    # I
    .param p8, "serviceClass"    # I
    .param p9, "number"    # Ljava/lang/String;
    .param p10, "timeSeconds"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 539
    move/from16 v0, p7

    move/from16 v1, p8

    move-object/from16 v2, p9

    move v3, p6

    move/from16 v4, p10

    move v5, p2

    move v6, p3

    move v7, p4

    move v8, p5

    invoke-static/range {v0 .. v8}, Lorg/codeaurora/ims/StableAidl;->fromImsCallForwardTimerInfo(IILjava/lang/String;IIIIII)Lvendor/qti/hardware/radio/ims/CallForwardInfo;

    move-result-object v0

    .line 541
    .local v0, "cfInfo":Lvendor/qti/hardware/radio/ims/CallForwardInfo;
    invoke-direct {p0}, Lorg/codeaurora/ims/ImsRadioAidl;->imsRadio()Lvendor/qti/hardware/radio/ims/IImsRadio;

    move-result-object v1

    move v2, p1

    invoke-interface {v1, p1, v0}, Lvendor/qti/hardware/radio/ims/IImsRadio;->setCallForwardStatus(ILvendor/qti/hardware/radio/ims/CallForwardInfo;)V

    .line 542
    return-void
.end method

.method public setCallWaiting(IZI)V
    .locals 2
    .param p1, "token"    # I
    .param p2, "enable"    # Z
    .param p3, "serviceClass"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 530
    invoke-static {p2, p3}, Lorg/codeaurora/ims/StableAidl;->fromCallWaiting(ZI)Lvendor/qti/hardware/radio/ims/CallWaitingInfo;

    move-result-object v0

    .line 531
    .local v0, "callWaitingInfo":Lvendor/qti/hardware/radio/ims/CallWaitingInfo;
    invoke-direct {p0}, Lorg/codeaurora/ims/ImsRadioAidl;->imsRadio()Lvendor/qti/hardware/radio/ims/IImsRadio;

    move-result-object v1

    invoke-interface {v1, p1, v0}, Lvendor/qti/hardware/radio/ims/IImsRadio;->setCallWaiting(ILvendor/qti/hardware/radio/ims/CallWaitingInfo;)V

    .line 532
    return-void
.end method

.method public setClir(II)V
    .locals 2
    .param p1, "token"    # I
    .param p2, "clirMode"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 518
    invoke-static {p2}, Lorg/codeaurora/ims/StableAidl;->fromClir(I)Lvendor/qti/hardware/radio/ims/ClirInfo;

    move-result-object v0

    .line 519
    .local v0, "clirValue":Lvendor/qti/hardware/radio/ims/ClirInfo;
    invoke-direct {p0}, Lorg/codeaurora/ims/ImsRadioAidl;->imsRadio()Lvendor/qti/hardware/radio/ims/IImsRadio;

    move-result-object v1

    invoke-interface {v1, p1, v0}, Lvendor/qti/hardware/radio/ims/IImsRadio;->setClir(ILvendor/qti/hardware/radio/ims/ClirInfo;)V

    .line 520
    return-void
.end method

.method public setColr(II)V
    .locals 2
    .param p1, "token"    # I
    .param p2, "presentationValue"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 584
    invoke-static {p2}, Lorg/codeaurora/ims/StableAidl;->fromColrValue(I)Lvendor/qti/hardware/radio/ims/ColrInfo;

    move-result-object v0

    .line 585
    .local v0, "colrValue":Lvendor/qti/hardware/radio/ims/ColrInfo;
    invoke-direct {p0}, Lorg/codeaurora/ims/ImsRadioAidl;->imsRadio()Lvendor/qti/hardware/radio/ims/IImsRadio;

    move-result-object v1

    invoke-interface {v1, p1, v0}, Lvendor/qti/hardware/radio/ims/IImsRadio;->setColr(ILvendor/qti/hardware/radio/ims/ColrInfo;)V

    .line 586
    return-void
.end method

.method public setConfig(IIZILjava/lang/String;I)V
    .locals 2
    .param p1, "token"    # I
    .param p2, "item"    # I
    .param p3, "boolValue"    # Z
    .param p4, "intValue"    # I
    .param p5, "strValue"    # Ljava/lang/String;
    .param p6, "errorCause"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;,
            Landroid/telephony/ims/ImsException;
        }
    .end annotation

    .line 474
    invoke-static {p2, p3, p4, p5, p6}, Lorg/codeaurora/ims/StableAidl;->fromImsConfig(IZILjava/lang/String;I)Lvendor/qti/hardware/radio/ims/ConfigInfo;

    move-result-object v0

    .line 476
    .local v0, "config":Lvendor/qti/hardware/radio/ims/ConfigInfo;
    invoke-direct {p0}, Lorg/codeaurora/ims/ImsRadioAidl;->imsRadio()Lvendor/qti/hardware/radio/ims/IImsRadio;

    move-result-object v1

    invoke-interface {v1, p1, v0}, Lvendor/qti/hardware/radio/ims/IImsRadio;->setConfig(ILvendor/qti/hardware/radio/ims/ConfigInfo;)V

    .line 477
    return-void
.end method

.method public setMediaConfiguration(ILandroid/graphics/Point;Landroid/graphics/Point;Landroid/graphics/Point;)V
    .locals 2
    .param p1, "token"    # I
    .param p2, "screenSize"    # Landroid/graphics/Point;
    .param p3, "avcSize"    # Landroid/graphics/Point;
    .param p4, "hevcSize"    # Landroid/graphics/Point;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 629
    invoke-static {p2, p3, p4}, Lorg/codeaurora/ims/StableAidl;->fromImsMediaConfig(Landroid/graphics/Point;Landroid/graphics/Point;Landroid/graphics/Point;)Lvendor/qti/hardware/radio/ims/MediaConfig;

    move-result-object v0

    .line 630
    .local v0, "mediaConfig":Lvendor/qti/hardware/radio/ims/MediaConfig;
    invoke-direct {p0}, Lorg/codeaurora/ims/ImsRadioAidl;->imsRadio()Lvendor/qti/hardware/radio/ims/IImsRadio;

    move-result-object v1

    invoke-interface {v1, p1, v0}, Lvendor/qti/hardware/radio/ims/IImsRadio;->setMediaConfiguration(ILvendor/qti/hardware/radio/ims/MediaConfig;)V

    .line 631
    return-void
.end method

.method public setServiceStatus(ILjava/util/List;I)V
    .locals 2
    .param p1, "token"    # I
    .param p3, "restrictCause"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Lorg/codeaurora/ims/CapabilityStatus;",
            ">;I)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 414
    .local p2, "capabilityStatusList":Ljava/util/List;, "Ljava/util/List<Lorg/codeaurora/ims/CapabilityStatus;>;"
    invoke-static {p2, p3}, Lorg/codeaurora/ims/StableAidl;->fromServiceStatusInfoList(Ljava/util/List;I)[Lvendor/qti/hardware/radio/ims/ServiceStatusInfo;

    move-result-object v0

    .line 416
    .local v0, "svcstatusInfo":[Lvendor/qti/hardware/radio/ims/ServiceStatusInfo;
    invoke-direct {p0}, Lorg/codeaurora/ims/ImsRadioAidl;->imsRadio()Lvendor/qti/hardware/radio/ims/IImsRadio;

    move-result-object v1

    invoke-interface {v1, p1, v0}, Lvendor/qti/hardware/radio/ims/IImsRadio;->setServiceStatus(I[Lvendor/qti/hardware/radio/ims/ServiceStatusInfo;)V

    .line 417
    return-void
.end method

.method public setSuppServiceNotification(IZ)V
    .locals 2
    .param p1, "token"    # I
    .param p2, "enable"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 507
    invoke-direct {p0}, Lorg/codeaurora/ims/ImsRadioAidl;->imsRadio()Lvendor/qti/hardware/radio/ims/IImsRadio;

    move-result-object v0

    .line 508
    if-eqz p2, :cond_0

    const/4 v1, 0x2

    goto :goto_0

    :cond_0
    const/4 v1, 0x1

    .line 507
    :goto_0
    invoke-interface {v0, p1, v1}, Lvendor/qti/hardware/radio/ims/IImsRadio;->setSuppServiceNotification(II)V

    .line 509
    return-void
.end method

.method public setUiTtyMode(II)V
    .locals 2
    .param p1, "token"    # I
    .param p2, "uiTtyMode"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 559
    invoke-static {p2}, Lorg/codeaurora/ims/StableAidl;->fromTty(I)Lvendor/qti/hardware/radio/ims/TtyInfo;

    move-result-object v0

    .line 560
    .local v0, "info":Lvendor/qti/hardware/radio/ims/TtyInfo;
    invoke-direct {p0}, Lorg/codeaurora/ims/ImsRadioAidl;->imsRadio()Lvendor/qti/hardware/radio/ims/IImsRadio;

    move-result-object v1

    invoke-interface {v1, p1, v0}, Lvendor/qti/hardware/radio/ims/IImsRadio;->setUiTtyMode(ILvendor/qti/hardware/radio/ims/TtyInfo;)V

    .line 561
    return-void
.end method

.method public startDtmf(IIC)V
    .locals 2
    .param p1, "token"    # I
    .param p2, "callId"    # I
    .param p3, "c"    # C
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 495
    invoke-static {p2, p3}, Lorg/codeaurora/ims/StableAidl;->fromDtmf(IC)Lvendor/qti/hardware/radio/ims/DtmfInfo;

    move-result-object v0

    .line 496
    .local v0, "dtmfValue":Lvendor/qti/hardware/radio/ims/DtmfInfo;
    invoke-direct {p0}, Lorg/codeaurora/ims/ImsRadioAidl;->imsRadio()Lvendor/qti/hardware/radio/ims/IImsRadio;

    move-result-object v1

    invoke-interface {v1, p1, v0}, Lvendor/qti/hardware/radio/ims/IImsRadio;->startDtmf(ILvendor/qti/hardware/radio/ims/DtmfInfo;)V

    .line 497
    return-void
.end method

.method public stopDtmf(II)V
    .locals 1
    .param p1, "token"    # I
    .param p2, "callId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 501
    invoke-direct {p0}, Lorg/codeaurora/ims/ImsRadioAidl;->imsRadio()Lvendor/qti/hardware/radio/ims/IImsRadio;

    move-result-object v0

    invoke-interface {v0, p1}, Lvendor/qti/hardware/radio/ims/IImsRadio;->stopDtmf(I)V

    .line 502
    return-void
.end method

.method public suppServiceStatus(III[Ljava/lang/String;Ljava/lang/String;IZ)V
    .locals 2
    .param p1, "token"    # I
    .param p2, "operationType"    # I
    .param p3, "facility"    # I
    .param p4, "inCbNumList"    # [Ljava/lang/String;
    .param p5, "password"    # Ljava/lang/String;
    .param p6, "serviceClass"    # I
    .param p7, "expectMore"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 572
    invoke-static/range {p2 .. p7}, Lorg/codeaurora/ims/StableAidl;->fromSuppServiceStatus(II[Ljava/lang/String;Ljava/lang/String;IZ)Lvendor/qti/hardware/radio/ims/SuppServiceStatusRequest;

    move-result-object v0

    .line 574
    .local v0, "suppServiceStatusRequest":Lvendor/qti/hardware/radio/ims/SuppServiceStatusRequest;
    invoke-direct {p0}, Lorg/codeaurora/ims/ImsRadioAidl;->imsRadio()Lvendor/qti/hardware/radio/ims/IImsRadio;

    move-result-object v1

    invoke-interface {v1, p1, v0}, Lvendor/qti/hardware/radio/ims/IImsRadio;->suppServiceStatus(ILvendor/qti/hardware/radio/ims/SuppServiceStatusRequest;)V

    .line 575
    return-void
.end method
