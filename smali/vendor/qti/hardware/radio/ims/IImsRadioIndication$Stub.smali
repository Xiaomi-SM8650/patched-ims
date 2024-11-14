.class public abstract Lvendor/qti/hardware/radio/ims/IImsRadioIndication$Stub;
.super Landroid/os/Binder;
.source "IImsRadioIndication.java"

# interfaces
.implements Lvendor/qti/hardware/radio/ims/IImsRadioIndication;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lvendor/qti/hardware/radio/ims/IImsRadioIndication;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lvendor/qti/hardware/radio/ims/IImsRadioIndication$Stub$Proxy;
    }
.end annotation


# static fields
.field static final TRANSACTION_getInterfaceHash:I = 0xfffffe

.field static final TRANSACTION_getInterfaceVersion:I = 0xffffff

.field static final TRANSACTION_onCallComposerInfoAvailable:I = 0x20

.field static final TRANSACTION_onCallStateChanged:I = 0x1

.field static final TRANSACTION_onCiWlanNotification:I = 0x2c

.field static final TRANSACTION_onConferenceCallStateCompleted:I = 0x26

.field static final TRANSACTION_onEmergencyCallBackModeChanged:I = 0x8

.field static final TRANSACTION_onGeolocationInfoRequested:I = 0xf

.field static final TRANSACTION_onHandover:I = 0x5

.field static final TRANSACTION_onImsSubConfigChanged:I = 0x10

.field static final TRANSACTION_onIncomingCallAutoRejected:I = 0x19

.field static final TRANSACTION_onIncomingCallAutoRejected2:I = 0x2b

.field static final TRANSACTION_onIncomingCallComposerCallAutoRejected:I = 0x21

.field static final TRANSACTION_onIncomingDtmfStart:I = 0x27

.field static final TRANSACTION_onIncomingDtmfStop:I = 0x28

.field static final TRANSACTION_onIncomingSms:I = 0x17

.field static final TRANSACTION_onMessageWaiting:I = 0xe

.field static final TRANSACTION_onModemSupportsWfcRoamingModeConfiguration:I = 0x1d

.field static final TRANSACTION_onModifyCall:I = 0xc

.field static final TRANSACTION_onMultiIdentityInfoPending:I = 0x1c

.field static final TRANSACTION_onMultiIdentityRegistrationStatusChange:I = 0x1b

.field static final TRANSACTION_onMultiSimVoiceCapabilityChanged:I = 0x29

.field static final TRANSACTION_onParticipantStatusInfo:I = 0x11

.field static final TRANSACTION_onPreAlertingCallInfoAvailable:I = 0x2a

.field static final TRANSACTION_onRadioStateChanged:I = 0x7

.field static final TRANSACTION_onRefreshConferenceInfo:I = 0xa

.field static final TRANSACTION_onRefreshViceInfo:I = 0xb

.field static final TRANSACTION_onRegistrationBlockStatus:I = 0x12

.field static final TRANSACTION_onRegistrationChanged:I = 0x4

.field static final TRANSACTION_onRetrievingGeoLocationDataStatus:I = 0x22

.field static final TRANSACTION_onRing:I = 0x2

.field static final TRANSACTION_onRingbackTone:I = 0x3

.field static final TRANSACTION_onRttMessageReceived:I = 0x13

.field static final TRANSACTION_onServiceDomainChanged:I = 0x24

.field static final TRANSACTION_onServiceStatusChanged:I = 0x6

.field static final TRANSACTION_onSipDtmfReceived:I = 0x23

.field static final TRANSACTION_onSmsCallBackModeChanged:I = 0x25

.field static final TRANSACTION_onSmsSendStatusReport:I = 0x16

.field static final TRANSACTION_onSrtpEncryptionStatusChanged:I = 0x2d

.field static final TRANSACTION_onSuppServiceNotification:I = 0xd

.field static final TRANSACTION_onSupplementaryServiceIndication:I = 0x15

.field static final TRANSACTION_onTtyNotification:I = 0x9

.field static final TRANSACTION_onUssdMessageFailed:I = 0x1e

.field static final TRANSACTION_onUssdReceived:I = 0x1f

.field static final TRANSACTION_onVoWiFiCallQuality:I = 0x14

.field static final TRANSACTION_onVoiceInfoChanged:I = 0x1a

.field static final TRANSACTION_onVopsChanged:I = 0x18


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 173
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 174
    invoke-virtual {p0}, Lvendor/qti/hardware/radio/ims/IImsRadioIndication$Stub;->markVintfStability()V

    .line 175
    sget-object v0, Lvendor/qti/hardware/radio/ims/IImsRadioIndication$Stub;->DESCRIPTOR:Ljava/lang/String;

    invoke-virtual {p0, p0, v0}, Lvendor/qti/hardware/radio/ims/IImsRadioIndication$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 176
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lvendor/qti/hardware/radio/ims/IImsRadioIndication;
    .locals 2
    .param p0, "obj"    # Landroid/os/IBinder;

    .line 183
    if-nez p0, :cond_0

    .line 184
    const/4 v0, 0x0

    return-object v0

    .line 186
    :cond_0
    sget-object v0, Lvendor/qti/hardware/radio/ims/IImsRadioIndication$Stub;->DESCRIPTOR:Ljava/lang/String;

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 187
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Lvendor/qti/hardware/radio/ims/IImsRadioIndication;

    if-eqz v1, :cond_1

    .line 188
    move-object v1, v0

    check-cast v1, Lvendor/qti/hardware/radio/ims/IImsRadioIndication;

    return-object v1

    .line 190
    :cond_1
    new-instance v1, Lvendor/qti/hardware/radio/ims/IImsRadioIndication$Stub$Proxy;

    invoke-direct {v1, p0}, Lvendor/qti/hardware/radio/ims/IImsRadioIndication$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method

.method public static getDefaultTransactionName(I)Ljava/lang/String;
    .locals 1
    .param p0, "transactionCode"    # I

    .line 199
    sparse-switch p0, :sswitch_data_0

    .line 391
    const/4 v0, 0x0

    return-object v0

    .line 383
    :sswitch_0
    const-string v0, "getInterfaceVersion"

    return-object v0

    .line 387
    :sswitch_1
    const-string v0, "getInterfaceHash"

    return-object v0

    .line 379
    :sswitch_2
    const-string v0, "onSrtpEncryptionStatusChanged"

    return-object v0

    .line 375
    :sswitch_3
    const-string v0, "onCiWlanNotification"

    return-object v0

    .line 371
    :sswitch_4
    const-string v0, "onIncomingCallAutoRejected2"

    return-object v0

    .line 367
    :sswitch_5
    const-string v0, "onPreAlertingCallInfoAvailable"

    return-object v0

    .line 363
    :sswitch_6
    const-string v0, "onMultiSimVoiceCapabilityChanged"

    return-object v0

    .line 359
    :sswitch_7
    const-string v0, "onIncomingDtmfStop"

    return-object v0

    .line 355
    :sswitch_8
    const-string v0, "onIncomingDtmfStart"

    return-object v0

    .line 351
    :sswitch_9
    const-string v0, "onConferenceCallStateCompleted"

    return-object v0

    .line 347
    :sswitch_a
    const-string v0, "onSmsCallBackModeChanged"

    return-object v0

    .line 343
    :sswitch_b
    const-string v0, "onServiceDomainChanged"

    return-object v0

    .line 339
    :sswitch_c
    const-string v0, "onSipDtmfReceived"

    return-object v0

    .line 335
    :sswitch_d
    const-string v0, "onRetrievingGeoLocationDataStatus"

    return-object v0

    .line 331
    :sswitch_e
    const-string v0, "onIncomingCallComposerCallAutoRejected"

    return-object v0

    .line 327
    :sswitch_f
    const-string v0, "onCallComposerInfoAvailable"

    return-object v0

    .line 323
    :sswitch_10
    const-string v0, "onUssdReceived"

    return-object v0

    .line 319
    :sswitch_11
    const-string v0, "onUssdMessageFailed"

    return-object v0

    .line 315
    :sswitch_12
    const-string v0, "onModemSupportsWfcRoamingModeConfiguration"

    return-object v0

    .line 311
    :sswitch_13
    const-string v0, "onMultiIdentityInfoPending"

    return-object v0

    .line 307
    :sswitch_14
    const-string v0, "onMultiIdentityRegistrationStatusChange"

    return-object v0

    .line 303
    :sswitch_15
    const-string v0, "onVoiceInfoChanged"

    return-object v0

    .line 299
    :sswitch_16
    const-string v0, "onIncomingCallAutoRejected"

    return-object v0

    .line 295
    :sswitch_17
    const-string v0, "onVopsChanged"

    return-object v0

    .line 291
    :sswitch_18
    const-string v0, "onIncomingSms"

    return-object v0

    .line 287
    :sswitch_19
    const-string v0, "onSmsSendStatusReport"

    return-object v0

    .line 283
    :sswitch_1a
    const-string v0, "onSupplementaryServiceIndication"

    return-object v0

    .line 279
    :sswitch_1b
    const-string v0, "onVoWiFiCallQuality"

    return-object v0

    .line 275
    :sswitch_1c
    const-string v0, "onRttMessageReceived"

    return-object v0

    .line 271
    :sswitch_1d
    const-string v0, "onRegistrationBlockStatus"

    return-object v0

    .line 267
    :sswitch_1e
    const-string v0, "onParticipantStatusInfo"

    return-object v0

    .line 263
    :sswitch_1f
    const-string v0, "onImsSubConfigChanged"

    return-object v0

    .line 259
    :sswitch_20
    const-string v0, "onGeolocationInfoRequested"

    return-object v0

    .line 255
    :sswitch_21
    const-string v0, "onMessageWaiting"

    return-object v0

    .line 251
    :sswitch_22
    const-string v0, "onSuppServiceNotification"

    return-object v0

    .line 247
    :sswitch_23
    const-string v0, "onModifyCall"

    return-object v0

    .line 243
    :sswitch_24
    const-string v0, "onRefreshViceInfo"

    return-object v0

    .line 239
    :sswitch_25
    const-string v0, "onRefreshConferenceInfo"

    return-object v0

    .line 235
    :sswitch_26
    const-string v0, "onTtyNotification"

    return-object v0

    .line 231
    :sswitch_27
    const-string v0, "onEmergencyCallBackModeChanged"

    return-object v0

    .line 227
    :sswitch_28
    const-string v0, "onRadioStateChanged"

    return-object v0

    .line 223
    :sswitch_29
    const-string v0, "onServiceStatusChanged"

    return-object v0

    .line 219
    :sswitch_2a
    const-string v0, "onHandover"

    return-object v0

    .line 215
    :sswitch_2b
    const-string v0, "onRegistrationChanged"

    return-object v0

    .line 211
    :sswitch_2c
    const-string v0, "onRingbackTone"

    return-object v0

    .line 207
    :sswitch_2d
    const-string v0, "onRing"

    return-object v0

    .line 203
    :sswitch_2e
    const-string v0, "onCallStateChanged"

    return-object v0

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_2e
        0x2 -> :sswitch_2d
        0x3 -> :sswitch_2c
        0x4 -> :sswitch_2b
        0x5 -> :sswitch_2a
        0x6 -> :sswitch_29
        0x7 -> :sswitch_28
        0x8 -> :sswitch_27
        0x9 -> :sswitch_26
        0xa -> :sswitch_25
        0xb -> :sswitch_24
        0xc -> :sswitch_23
        0xd -> :sswitch_22
        0xe -> :sswitch_21
        0xf -> :sswitch_20
        0x10 -> :sswitch_1f
        0x11 -> :sswitch_1e
        0x12 -> :sswitch_1d
        0x13 -> :sswitch_1c
        0x14 -> :sswitch_1b
        0x15 -> :sswitch_1a
        0x16 -> :sswitch_19
        0x17 -> :sswitch_18
        0x18 -> :sswitch_17
        0x19 -> :sswitch_16
        0x1a -> :sswitch_15
        0x1b -> :sswitch_14
        0x1c -> :sswitch_13
        0x1d -> :sswitch_12
        0x1e -> :sswitch_11
        0x1f -> :sswitch_10
        0x20 -> :sswitch_f
        0x21 -> :sswitch_e
        0x22 -> :sswitch_d
        0x23 -> :sswitch_c
        0x24 -> :sswitch_b
        0x25 -> :sswitch_a
        0x26 -> :sswitch_9
        0x27 -> :sswitch_8
        0x28 -> :sswitch_7
        0x29 -> :sswitch_6
        0x2a -> :sswitch_5
        0x2b -> :sswitch_4
        0x2c -> :sswitch_3
        0x2d -> :sswitch_2
        0xfffffe -> :sswitch_1
        0xffffff -> :sswitch_0
    .end sparse-switch
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    .line 194
    return-object p0
.end method

.method public getMaxTransactionId()I
    .locals 1

    .line 1566
    const v0, 0xfffffe

    return v0
.end method

.method public getTransactionName(I)Ljava/lang/String;
    .locals 1
    .param p1, "transactionCode"    # I

    .line 398
    invoke-static {p1}, Lvendor/qti/hardware/radio/ims/IImsRadioIndication$Stub;->getDefaultTransactionName(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 7
    .param p1, "code"    # I
    .param p2, "data"    # Landroid/os/Parcel;
    .param p3, "reply"    # Landroid/os/Parcel;
    .param p4, "flags"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 402
    sget-object v0, Lvendor/qti/hardware/radio/ims/IImsRadioIndication$Stub;->DESCRIPTOR:Ljava/lang/String;

    .line 403
    .local v0, "descriptor":Ljava/lang/String;
    const v1, 0xffffff

    const/4 v2, 0x1

    if-lt p1, v2, :cond_0

    if-gt p1, v1, :cond_0

    .line 404
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 406
    :cond_0
    const v3, 0x5f4e5446

    if-ne p1, v3, :cond_1

    .line 407
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 408
    return v2

    .line 410
    :cond_1
    if-ne p1, v1, :cond_2

    .line 411
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 412
    invoke-virtual {p0}, Lvendor/qti/hardware/radio/ims/IImsRadioIndication$Stub;->getInterfaceVersion()I

    move-result v1

    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 413
    return v2

    .line 415
    :cond_2
    const v1, 0xfffffe

    if-ne p1, v1, :cond_3

    .line 416
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 417
    invoke-virtual {p0}, Lvendor/qti/hardware/radio/ims/IImsRadioIndication$Stub;->getInterfaceHash()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 418
    return v2

    .line 420
    :cond_3
    packed-switch p1, :pswitch_data_0

    .line 783
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    return v1

    .line 776
    :pswitch_0
    sget-object v1, Lvendor/qti/hardware/radio/ims/SrtpEncryptionInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lvendor/qti/hardware/radio/ims/SrtpEncryptionInfo;

    .line 777
    .local v1, "_arg0":Lvendor/qti/hardware/radio/ims/SrtpEncryptionInfo;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 778
    invoke-virtual {p0, v1}, Lvendor/qti/hardware/radio/ims/IImsRadioIndication$Stub;->onSrtpEncryptionStatusChanged(Lvendor/qti/hardware/radio/ims/SrtpEncryptionInfo;)V

    .line 779
    goto/16 :goto_0

    .line 768
    .end local v1    # "_arg0":Lvendor/qti/hardware/radio/ims/SrtpEncryptionInfo;
    :pswitch_1
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 769
    .local v1, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 770
    invoke-virtual {p0, v1}, Lvendor/qti/hardware/radio/ims/IImsRadioIndication$Stub;->onCiWlanNotification(I)V

    .line 771
    goto/16 :goto_0

    .line 760
    .end local v1    # "_arg0":I
    :pswitch_2
    sget-object v1, Lvendor/qti/hardware/radio/ims/AutoCallRejectionInfo2;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lvendor/qti/hardware/radio/ims/AutoCallRejectionInfo2;

    .line 761
    .local v1, "_arg0":Lvendor/qti/hardware/radio/ims/AutoCallRejectionInfo2;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 762
    invoke-virtual {p0, v1}, Lvendor/qti/hardware/radio/ims/IImsRadioIndication$Stub;->onIncomingCallAutoRejected2(Lvendor/qti/hardware/radio/ims/AutoCallRejectionInfo2;)V

    .line 763
    goto/16 :goto_0

    .line 752
    .end local v1    # "_arg0":Lvendor/qti/hardware/radio/ims/AutoCallRejectionInfo2;
    :pswitch_3
    sget-object v1, Lvendor/qti/hardware/radio/ims/PreAlertingCallInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lvendor/qti/hardware/radio/ims/PreAlertingCallInfo;

    .line 753
    .local v1, "_arg0":Lvendor/qti/hardware/radio/ims/PreAlertingCallInfo;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 754
    invoke-virtual {p0, v1}, Lvendor/qti/hardware/radio/ims/IImsRadioIndication$Stub;->onPreAlertingCallInfoAvailable(Lvendor/qti/hardware/radio/ims/PreAlertingCallInfo;)V

    .line 755
    goto/16 :goto_0

    .line 744
    .end local v1    # "_arg0":Lvendor/qti/hardware/radio/ims/PreAlertingCallInfo;
    :pswitch_4
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 745
    .local v1, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 746
    invoke-virtual {p0, v1}, Lvendor/qti/hardware/radio/ims/IImsRadioIndication$Stub;->onMultiSimVoiceCapabilityChanged(I)V

    .line 747
    goto/16 :goto_0

    .line 736
    .end local v1    # "_arg0":I
    :pswitch_5
    sget-object v1, Lvendor/qti/hardware/radio/ims/DtmfInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lvendor/qti/hardware/radio/ims/DtmfInfo;

    .line 737
    .local v1, "_arg0":Lvendor/qti/hardware/radio/ims/DtmfInfo;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 738
    invoke-virtual {p0, v1}, Lvendor/qti/hardware/radio/ims/IImsRadioIndication$Stub;->onIncomingDtmfStop(Lvendor/qti/hardware/radio/ims/DtmfInfo;)V

    .line 739
    goto/16 :goto_0

    .line 728
    .end local v1    # "_arg0":Lvendor/qti/hardware/radio/ims/DtmfInfo;
    :pswitch_6
    sget-object v1, Lvendor/qti/hardware/radio/ims/DtmfInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lvendor/qti/hardware/radio/ims/DtmfInfo;

    .line 729
    .restart local v1    # "_arg0":Lvendor/qti/hardware/radio/ims/DtmfInfo;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 730
    invoke-virtual {p0, v1}, Lvendor/qti/hardware/radio/ims/IImsRadioIndication$Stub;->onIncomingDtmfStart(Lvendor/qti/hardware/radio/ims/DtmfInfo;)V

    .line 731
    goto/16 :goto_0

    .line 722
    .end local v1    # "_arg0":Lvendor/qti/hardware/radio/ims/DtmfInfo;
    :pswitch_7
    invoke-virtual {p0}, Lvendor/qti/hardware/radio/ims/IImsRadioIndication$Stub;->onConferenceCallStateCompleted()V

    .line 723
    goto/16 :goto_0

    .line 715
    :pswitch_8
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 716
    .local v1, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 717
    invoke-virtual {p0, v1}, Lvendor/qti/hardware/radio/ims/IImsRadioIndication$Stub;->onSmsCallBackModeChanged(I)V

    .line 718
    goto/16 :goto_0

    .line 707
    .end local v1    # "_arg0":I
    :pswitch_9
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 708
    .restart local v1    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 709
    invoke-virtual {p0, v1}, Lvendor/qti/hardware/radio/ims/IImsRadioIndication$Stub;->onServiceDomainChanged(I)V

    .line 710
    goto/16 :goto_0

    .line 699
    .end local v1    # "_arg0":I
    :pswitch_a
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 700
    .local v1, "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 701
    invoke-virtual {p0, v1}, Lvendor/qti/hardware/radio/ims/IImsRadioIndication$Stub;->onSipDtmfReceived(Ljava/lang/String;)V

    .line 702
    goto/16 :goto_0

    .line 691
    .end local v1    # "_arg0":Ljava/lang/String;
    :pswitch_b
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 692
    .local v1, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 693
    invoke-virtual {p0, v1}, Lvendor/qti/hardware/radio/ims/IImsRadioIndication$Stub;->onRetrievingGeoLocationDataStatus(I)V

    .line 694
    goto/16 :goto_0

    .line 683
    .end local v1    # "_arg0":I
    :pswitch_c
    sget-object v1, Lvendor/qti/hardware/radio/ims/CallComposerAutoRejectionInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lvendor/qti/hardware/radio/ims/CallComposerAutoRejectionInfo;

    .line 684
    .local v1, "_arg0":Lvendor/qti/hardware/radio/ims/CallComposerAutoRejectionInfo;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 685
    invoke-virtual {p0, v1}, Lvendor/qti/hardware/radio/ims/IImsRadioIndication$Stub;->onIncomingCallComposerCallAutoRejected(Lvendor/qti/hardware/radio/ims/CallComposerAutoRejectionInfo;)V

    .line 686
    goto/16 :goto_0

    .line 675
    .end local v1    # "_arg0":Lvendor/qti/hardware/radio/ims/CallComposerAutoRejectionInfo;
    :pswitch_d
    sget-object v1, Lvendor/qti/hardware/radio/ims/CallComposerInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lvendor/qti/hardware/radio/ims/CallComposerInfo;

    .line 676
    .local v1, "_arg0":Lvendor/qti/hardware/radio/ims/CallComposerInfo;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 677
    invoke-virtual {p0, v1}, Lvendor/qti/hardware/radio/ims/IImsRadioIndication$Stub;->onCallComposerInfoAvailable(Lvendor/qti/hardware/radio/ims/CallComposerInfo;)V

    .line 678
    goto/16 :goto_0

    .line 663
    .end local v1    # "_arg0":Lvendor/qti/hardware/radio/ims/CallComposerInfo;
    :pswitch_e
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 665
    .local v1, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 667
    .local v3, "_arg1":Ljava/lang/String;
    sget-object v4, Lvendor/qti/hardware/radio/ims/SipErrorInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lvendor/qti/hardware/radio/ims/SipErrorInfo;

    .line 668
    .local v4, "_arg2":Lvendor/qti/hardware/radio/ims/SipErrorInfo;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 669
    invoke-virtual {p0, v1, v3, v4}, Lvendor/qti/hardware/radio/ims/IImsRadioIndication$Stub;->onUssdReceived(ILjava/lang/String;Lvendor/qti/hardware/radio/ims/SipErrorInfo;)V

    .line 670
    goto/16 :goto_0

    .line 653
    .end local v1    # "_arg0":I
    .end local v3    # "_arg1":Ljava/lang/String;
    .end local v4    # "_arg2":Lvendor/qti/hardware/radio/ims/SipErrorInfo;
    :pswitch_f
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 655
    .restart local v1    # "_arg0":I
    sget-object v3, Lvendor/qti/hardware/radio/ims/SipErrorInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lvendor/qti/hardware/radio/ims/SipErrorInfo;

    .line 656
    .local v3, "_arg1":Lvendor/qti/hardware/radio/ims/SipErrorInfo;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 657
    invoke-virtual {p0, v1, v3}, Lvendor/qti/hardware/radio/ims/IImsRadioIndication$Stub;->onUssdMessageFailed(ILvendor/qti/hardware/radio/ims/SipErrorInfo;)V

    .line 658
    goto/16 :goto_0

    .line 645
    .end local v1    # "_arg0":I
    .end local v3    # "_arg1":Lvendor/qti/hardware/radio/ims/SipErrorInfo;
    :pswitch_10
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v1

    .line 646
    .local v1, "_arg0":Z
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 647
    invoke-virtual {p0, v1}, Lvendor/qti/hardware/radio/ims/IImsRadioIndication$Stub;->onModemSupportsWfcRoamingModeConfiguration(Z)V

    .line 648
    goto/16 :goto_0

    .line 639
    .end local v1    # "_arg0":Z
    :pswitch_11
    invoke-virtual {p0}, Lvendor/qti/hardware/radio/ims/IImsRadioIndication$Stub;->onMultiIdentityInfoPending()V

    .line 640
    goto/16 :goto_0

    .line 632
    :pswitch_12
    sget-object v1, Lvendor/qti/hardware/radio/ims/MultiIdentityLineInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v1}, Landroid/os/Parcel;->createTypedArray(Landroid/os/Parcelable$Creator;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Lvendor/qti/hardware/radio/ims/MultiIdentityLineInfo;

    .line 633
    .local v1, "_arg0":[Lvendor/qti/hardware/radio/ims/MultiIdentityLineInfo;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 634
    invoke-virtual {p0, v1}, Lvendor/qti/hardware/radio/ims/IImsRadioIndication$Stub;->onMultiIdentityRegistrationStatusChange([Lvendor/qti/hardware/radio/ims/MultiIdentityLineInfo;)V

    .line 635
    goto/16 :goto_0

    .line 624
    .end local v1    # "_arg0":[Lvendor/qti/hardware/radio/ims/MultiIdentityLineInfo;
    :pswitch_13
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 625
    .local v1, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 626
    invoke-virtual {p0, v1}, Lvendor/qti/hardware/radio/ims/IImsRadioIndication$Stub;->onVoiceInfoChanged(I)V

    .line 627
    goto/16 :goto_0

    .line 616
    .end local v1    # "_arg0":I
    :pswitch_14
    sget-object v1, Lvendor/qti/hardware/radio/ims/AutoCallRejectionInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lvendor/qti/hardware/radio/ims/AutoCallRejectionInfo;

    .line 617
    .local v1, "_arg0":Lvendor/qti/hardware/radio/ims/AutoCallRejectionInfo;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 618
    invoke-virtual {p0, v1}, Lvendor/qti/hardware/radio/ims/IImsRadioIndication$Stub;->onIncomingCallAutoRejected(Lvendor/qti/hardware/radio/ims/AutoCallRejectionInfo;)V

    .line 619
    goto/16 :goto_0

    .line 608
    .end local v1    # "_arg0":Lvendor/qti/hardware/radio/ims/AutoCallRejectionInfo;
    :pswitch_15
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v1

    .line 609
    .local v1, "_arg0":Z
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 610
    invoke-virtual {p0, v1}, Lvendor/qti/hardware/radio/ims/IImsRadioIndication$Stub;->onVopsChanged(Z)V

    .line 611
    goto/16 :goto_0

    .line 600
    .end local v1    # "_arg0":Z
    :pswitch_16
    sget-object v1, Lvendor/qti/hardware/radio/ims/IncomingSms;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lvendor/qti/hardware/radio/ims/IncomingSms;

    .line 601
    .local v1, "_arg0":Lvendor/qti/hardware/radio/ims/IncomingSms;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 602
    invoke-virtual {p0, v1}, Lvendor/qti/hardware/radio/ims/IImsRadioIndication$Stub;->onIncomingSms(Lvendor/qti/hardware/radio/ims/IncomingSms;)V

    .line 603
    goto/16 :goto_0

    .line 592
    .end local v1    # "_arg0":Lvendor/qti/hardware/radio/ims/IncomingSms;
    :pswitch_17
    sget-object v1, Lvendor/qti/hardware/radio/ims/SmsSendStatusReport;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lvendor/qti/hardware/radio/ims/SmsSendStatusReport;

    .line 593
    .local v1, "_arg0":Lvendor/qti/hardware/radio/ims/SmsSendStatusReport;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 594
    invoke-virtual {p0, v1}, Lvendor/qti/hardware/radio/ims/IImsRadioIndication$Stub;->onSmsSendStatusReport(Lvendor/qti/hardware/radio/ims/SmsSendStatusReport;)V

    .line 595
    goto/16 :goto_0

    .line 584
    .end local v1    # "_arg0":Lvendor/qti/hardware/radio/ims/SmsSendStatusReport;
    :pswitch_18
    sget-object v1, Lvendor/qti/hardware/radio/ims/StkCcUnsolSsResult;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lvendor/qti/hardware/radio/ims/StkCcUnsolSsResult;

    .line 585
    .local v1, "_arg0":Lvendor/qti/hardware/radio/ims/StkCcUnsolSsResult;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 586
    invoke-virtual {p0, v1}, Lvendor/qti/hardware/radio/ims/IImsRadioIndication$Stub;->onSupplementaryServiceIndication(Lvendor/qti/hardware/radio/ims/StkCcUnsolSsResult;)V

    .line 587
    goto/16 :goto_0

    .line 576
    .end local v1    # "_arg0":Lvendor/qti/hardware/radio/ims/StkCcUnsolSsResult;
    :pswitch_19
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 577
    .local v1, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 578
    invoke-virtual {p0, v1}, Lvendor/qti/hardware/radio/ims/IImsRadioIndication$Stub;->onVoWiFiCallQuality(I)V

    .line 579
    goto/16 :goto_0

    .line 568
    .end local v1    # "_arg0":I
    :pswitch_1a
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 569
    .local v1, "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 570
    invoke-virtual {p0, v1}, Lvendor/qti/hardware/radio/ims/IImsRadioIndication$Stub;->onRttMessageReceived(Ljava/lang/String;)V

    .line 571
    goto/16 :goto_0

    .line 560
    .end local v1    # "_arg0":Ljava/lang/String;
    :pswitch_1b
    sget-object v1, Lvendor/qti/hardware/radio/ims/RegistrationBlockStatusInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lvendor/qti/hardware/radio/ims/RegistrationBlockStatusInfo;

    .line 561
    .local v1, "_arg0":Lvendor/qti/hardware/radio/ims/RegistrationBlockStatusInfo;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 562
    invoke-virtual {p0, v1}, Lvendor/qti/hardware/radio/ims/IImsRadioIndication$Stub;->onRegistrationBlockStatus(Lvendor/qti/hardware/radio/ims/RegistrationBlockStatusInfo;)V

    .line 563
    goto/16 :goto_0

    .line 552
    .end local v1    # "_arg0":Lvendor/qti/hardware/radio/ims/RegistrationBlockStatusInfo;
    :pswitch_1c
    sget-object v1, Lvendor/qti/hardware/radio/ims/ParticipantStatusInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lvendor/qti/hardware/radio/ims/ParticipantStatusInfo;

    .line 553
    .local v1, "_arg0":Lvendor/qti/hardware/radio/ims/ParticipantStatusInfo;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 554
    invoke-virtual {p0, v1}, Lvendor/qti/hardware/radio/ims/IImsRadioIndication$Stub;->onParticipantStatusInfo(Lvendor/qti/hardware/radio/ims/ParticipantStatusInfo;)V

    .line 555
    goto/16 :goto_0

    .line 544
    .end local v1    # "_arg0":Lvendor/qti/hardware/radio/ims/ParticipantStatusInfo;
    :pswitch_1d
    sget-object v1, Lvendor/qti/hardware/radio/ims/ImsSubConfigInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lvendor/qti/hardware/radio/ims/ImsSubConfigInfo;

    .line 545
    .local v1, "_arg0":Lvendor/qti/hardware/radio/ims/ImsSubConfigInfo;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 546
    invoke-virtual {p0, v1}, Lvendor/qti/hardware/radio/ims/IImsRadioIndication$Stub;->onImsSubConfigChanged(Lvendor/qti/hardware/radio/ims/ImsSubConfigInfo;)V

    .line 547
    goto/16 :goto_0

    .line 534
    .end local v1    # "_arg0":Lvendor/qti/hardware/radio/ims/ImsSubConfigInfo;
    :pswitch_1e
    invoke-virtual {p2}, Landroid/os/Parcel;->readDouble()D

    move-result-wide v3

    .line 536
    .local v3, "_arg0":D
    invoke-virtual {p2}, Landroid/os/Parcel;->readDouble()D

    move-result-wide v5

    .line 537
    .local v5, "_arg1":D
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 538
    invoke-virtual {p0, v3, v4, v5, v6}, Lvendor/qti/hardware/radio/ims/IImsRadioIndication$Stub;->onGeolocationInfoRequested(DD)V

    .line 539
    goto/16 :goto_0

    .line 526
    .end local v3    # "_arg0":D
    .end local v5    # "_arg1":D
    :pswitch_1f
    sget-object v1, Lvendor/qti/hardware/radio/ims/MessageWaitingIndication;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lvendor/qti/hardware/radio/ims/MessageWaitingIndication;

    .line 527
    .local v1, "_arg0":Lvendor/qti/hardware/radio/ims/MessageWaitingIndication;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 528
    invoke-virtual {p0, v1}, Lvendor/qti/hardware/radio/ims/IImsRadioIndication$Stub;->onMessageWaiting(Lvendor/qti/hardware/radio/ims/MessageWaitingIndication;)V

    .line 529
    goto/16 :goto_0

    .line 518
    .end local v1    # "_arg0":Lvendor/qti/hardware/radio/ims/MessageWaitingIndication;
    :pswitch_20
    sget-object v1, Lvendor/qti/hardware/radio/ims/SuppServiceNotification;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lvendor/qti/hardware/radio/ims/SuppServiceNotification;

    .line 519
    .local v1, "_arg0":Lvendor/qti/hardware/radio/ims/SuppServiceNotification;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 520
    invoke-virtual {p0, v1}, Lvendor/qti/hardware/radio/ims/IImsRadioIndication$Stub;->onSuppServiceNotification(Lvendor/qti/hardware/radio/ims/SuppServiceNotification;)V

    .line 521
    goto/16 :goto_0

    .line 510
    .end local v1    # "_arg0":Lvendor/qti/hardware/radio/ims/SuppServiceNotification;
    :pswitch_21
    sget-object v1, Lvendor/qti/hardware/radio/ims/CallModifyInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lvendor/qti/hardware/radio/ims/CallModifyInfo;

    .line 511
    .local v1, "_arg0":Lvendor/qti/hardware/radio/ims/CallModifyInfo;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 512
    invoke-virtual {p0, v1}, Lvendor/qti/hardware/radio/ims/IImsRadioIndication$Stub;->onModifyCall(Lvendor/qti/hardware/radio/ims/CallModifyInfo;)V

    .line 513
    goto/16 :goto_0

    .line 502
    .end local v1    # "_arg0":Lvendor/qti/hardware/radio/ims/CallModifyInfo;
    :pswitch_22
    sget-object v1, Lvendor/qti/hardware/radio/ims/ViceInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lvendor/qti/hardware/radio/ims/ViceInfo;

    .line 503
    .local v1, "_arg0":Lvendor/qti/hardware/radio/ims/ViceInfo;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 504
    invoke-virtual {p0, v1}, Lvendor/qti/hardware/radio/ims/IImsRadioIndication$Stub;->onRefreshViceInfo(Lvendor/qti/hardware/radio/ims/ViceInfo;)V

    .line 505
    goto/16 :goto_0

    .line 494
    .end local v1    # "_arg0":Lvendor/qti/hardware/radio/ims/ViceInfo;
    :pswitch_23
    sget-object v1, Lvendor/qti/hardware/radio/ims/ConferenceInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lvendor/qti/hardware/radio/ims/ConferenceInfo;

    .line 495
    .local v1, "_arg0":Lvendor/qti/hardware/radio/ims/ConferenceInfo;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 496
    invoke-virtual {p0, v1}, Lvendor/qti/hardware/radio/ims/IImsRadioIndication$Stub;->onRefreshConferenceInfo(Lvendor/qti/hardware/radio/ims/ConferenceInfo;)V

    .line 497
    goto/16 :goto_0

    .line 486
    .end local v1    # "_arg0":Lvendor/qti/hardware/radio/ims/ConferenceInfo;
    :pswitch_24
    sget-object v1, Lvendor/qti/hardware/radio/ims/TtyInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lvendor/qti/hardware/radio/ims/TtyInfo;

    .line 487
    .local v1, "_arg0":Lvendor/qti/hardware/radio/ims/TtyInfo;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 488
    invoke-virtual {p0, v1}, Lvendor/qti/hardware/radio/ims/IImsRadioIndication$Stub;->onTtyNotification(Lvendor/qti/hardware/radio/ims/TtyInfo;)V

    .line 489
    goto :goto_0

    .line 478
    .end local v1    # "_arg0":Lvendor/qti/hardware/radio/ims/TtyInfo;
    :pswitch_25
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 479
    .local v1, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 480
    invoke-virtual {p0, v1}, Lvendor/qti/hardware/radio/ims/IImsRadioIndication$Stub;->onEmergencyCallBackModeChanged(I)V

    .line 481
    goto :goto_0

    .line 470
    .end local v1    # "_arg0":I
    :pswitch_26
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 471
    .restart local v1    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 472
    invoke-virtual {p0, v1}, Lvendor/qti/hardware/radio/ims/IImsRadioIndication$Stub;->onRadioStateChanged(I)V

    .line 473
    goto :goto_0

    .line 462
    .end local v1    # "_arg0":I
    :pswitch_27
    sget-object v1, Lvendor/qti/hardware/radio/ims/ServiceStatusInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v1}, Landroid/os/Parcel;->createTypedArray(Landroid/os/Parcelable$Creator;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Lvendor/qti/hardware/radio/ims/ServiceStatusInfo;

    .line 463
    .local v1, "_arg0":[Lvendor/qti/hardware/radio/ims/ServiceStatusInfo;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 464
    invoke-virtual {p0, v1}, Lvendor/qti/hardware/radio/ims/IImsRadioIndication$Stub;->onServiceStatusChanged([Lvendor/qti/hardware/radio/ims/ServiceStatusInfo;)V

    .line 465
    goto :goto_0

    .line 454
    .end local v1    # "_arg0":[Lvendor/qti/hardware/radio/ims/ServiceStatusInfo;
    :pswitch_28
    sget-object v1, Lvendor/qti/hardware/radio/ims/HandoverInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lvendor/qti/hardware/radio/ims/HandoverInfo;

    .line 455
    .local v1, "_arg0":Lvendor/qti/hardware/radio/ims/HandoverInfo;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 456
    invoke-virtual {p0, v1}, Lvendor/qti/hardware/radio/ims/IImsRadioIndication$Stub;->onHandover(Lvendor/qti/hardware/radio/ims/HandoverInfo;)V

    .line 457
    goto :goto_0

    .line 446
    .end local v1    # "_arg0":Lvendor/qti/hardware/radio/ims/HandoverInfo;
    :pswitch_29
    sget-object v1, Lvendor/qti/hardware/radio/ims/RegistrationInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lvendor/qti/hardware/radio/ims/RegistrationInfo;

    .line 447
    .local v1, "_arg0":Lvendor/qti/hardware/radio/ims/RegistrationInfo;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 448
    invoke-virtual {p0, v1}, Lvendor/qti/hardware/radio/ims/IImsRadioIndication$Stub;->onRegistrationChanged(Lvendor/qti/hardware/radio/ims/RegistrationInfo;)V

    .line 449
    goto :goto_0

    .line 438
    .end local v1    # "_arg0":Lvendor/qti/hardware/radio/ims/RegistrationInfo;
    :pswitch_2a
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 439
    .local v1, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 440
    invoke-virtual {p0, v1}, Lvendor/qti/hardware/radio/ims/IImsRadioIndication$Stub;->onRingbackTone(I)V

    .line 441
    goto :goto_0

    .line 432
    .end local v1    # "_arg0":I
    :pswitch_2b
    invoke-virtual {p0}, Lvendor/qti/hardware/radio/ims/IImsRadioIndication$Stub;->onRing()V

    .line 433
    goto :goto_0

    .line 425
    :pswitch_2c
    sget-object v1, Lvendor/qti/hardware/radio/ims/CallInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v1}, Landroid/os/Parcel;->createTypedArray(Landroid/os/Parcelable$Creator;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Lvendor/qti/hardware/radio/ims/CallInfo;

    .line 426
    .local v1, "_arg0":[Lvendor/qti/hardware/radio/ims/CallInfo;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 427
    invoke-virtual {p0, v1}, Lvendor/qti/hardware/radio/ims/IImsRadioIndication$Stub;->onCallStateChanged([Lvendor/qti/hardware/radio/ims/CallInfo;)V

    .line 428
    nop

    .line 786
    .end local v1    # "_arg0":[Lvendor/qti/hardware/radio/ims/CallInfo;
    :goto_0
    return v2

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2c
        :pswitch_2b
        :pswitch_2a
        :pswitch_29
        :pswitch_28
        :pswitch_27
        :pswitch_26
        :pswitch_25
        :pswitch_24
        :pswitch_23
        :pswitch_22
        :pswitch_21
        :pswitch_20
        :pswitch_1f
        :pswitch_1e
        :pswitch_1d
        :pswitch_1c
        :pswitch_1b
        :pswitch_1a
        :pswitch_19
        :pswitch_18
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
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
