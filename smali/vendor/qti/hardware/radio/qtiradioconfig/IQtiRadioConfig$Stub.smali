.class public abstract Lvendor/qti/hardware/radio/qtiradioconfig/IQtiRadioConfig$Stub;
.super Landroid/os/Binder;
.source "IQtiRadioConfig.java"

# interfaces
.implements Lvendor/qti/hardware/radio/qtiradioconfig/IQtiRadioConfig;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lvendor/qti/hardware/radio/qtiradioconfig/IQtiRadioConfig;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lvendor/qti/hardware/radio/qtiradioconfig/IQtiRadioConfig$Stub$Proxy;
    }
.end annotation


# static fields
.field static final TRANSACTION_getCiwlanCapability:I = 0x8

.field static final TRANSACTION_getDdsSwitchCapability:I = 0x9

.field static final TRANSACTION_getDualDataCapability:I = 0x6

.field static final TRANSACTION_getInterfaceHash:I = 0xfffffe

.field static final TRANSACTION_getInterfaceVersion:I = 0xffffff

.field static final TRANSACTION_getSecureModeStatus:I = 0x2

.field static final TRANSACTION_getSimTypeInfo:I = 0x4

.field static final TRANSACTION_isFeatureSupported:I = 0xb

.field static final TRANSACTION_sendUserPreferenceForDataDuringVoiceCall:I = 0xa

.field static final TRANSACTION_setCallbacks:I = 0x1

.field static final TRANSACTION_setDualDataUserPreference:I = 0x7

.field static final TRANSACTION_setMsimPreference:I = 0x3

.field static final TRANSACTION_setSimType:I = 0x5


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 72
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 73
    invoke-virtual {p0}, Lvendor/qti/hardware/radio/qtiradioconfig/IQtiRadioConfig$Stub;->markVintfStability()V

    .line 74
    sget-object v0, Lvendor/qti/hardware/radio/qtiradioconfig/IQtiRadioConfig$Stub;->DESCRIPTOR:Ljava/lang/String;

    invoke-virtual {p0, p0, v0}, Lvendor/qti/hardware/radio/qtiradioconfig/IQtiRadioConfig$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 75
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lvendor/qti/hardware/radio/qtiradioconfig/IQtiRadioConfig;
    .locals 2
    .param p0, "obj"    # Landroid/os/IBinder;

    .line 82
    if-nez p0, :cond_0

    .line 83
    const/4 v0, 0x0

    return-object v0

    .line 85
    :cond_0
    sget-object v0, Lvendor/qti/hardware/radio/qtiradioconfig/IQtiRadioConfig$Stub;->DESCRIPTOR:Ljava/lang/String;

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 86
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Lvendor/qti/hardware/radio/qtiradioconfig/IQtiRadioConfig;

    if-eqz v1, :cond_1

    .line 87
    move-object v1, v0

    check-cast v1, Lvendor/qti/hardware/radio/qtiradioconfig/IQtiRadioConfig;

    return-object v1

    .line 89
    :cond_1
    new-instance v1, Lvendor/qti/hardware/radio/qtiradioconfig/IQtiRadioConfig$Stub$Proxy;

    invoke-direct {v1, p0}, Lvendor/qti/hardware/radio/qtiradioconfig/IQtiRadioConfig$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    .line 93
    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 4
    .param p1, "code"    # I
    .param p2, "data"    # Landroid/os/Parcel;
    .param p3, "reply"    # Landroid/os/Parcel;
    .param p4, "flags"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 97
    sget-object v0, Lvendor/qti/hardware/radio/qtiradioconfig/IQtiRadioConfig$Stub;->DESCRIPTOR:Ljava/lang/String;

    .line 98
    .local v0, "descriptor":Ljava/lang/String;
    const v1, 0xffffff

    const/4 v2, 0x1

    if-lt p1, v2, :cond_0

    if-gt p1, v1, :cond_0

    .line 99
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 101
    :cond_0
    const v3, 0x5f4e5446

    if-ne p1, v3, :cond_1

    .line 102
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 103
    return v2

    .line 105
    :cond_1
    if-ne p1, v1, :cond_2

    .line 106
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 107
    invoke-virtual {p0}, Lvendor/qti/hardware/radio/qtiradioconfig/IQtiRadioConfig$Stub;->getInterfaceVersion()I

    move-result v1

    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 108
    return v2

    .line 110
    :cond_2
    const v1, 0xfffffe

    if-ne p1, v1, :cond_3

    .line 111
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 112
    invoke-virtual {p0}, Lvendor/qti/hardware/radio/qtiradioconfig/IQtiRadioConfig$Stub;->getInterfaceHash()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 113
    return v2

    .line 115
    :cond_3
    packed-switch p1, :pswitch_data_0

    .line 219
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    return v1

    .line 210
    :pswitch_0
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 211
    .local v1, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 212
    invoke-virtual {p0, v1}, Lvendor/qti/hardware/radio/qtiradioconfig/IQtiRadioConfig$Stub;->isFeatureSupported(I)Z

    move-result v3

    .line 213
    .local v3, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 214
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 215
    goto/16 :goto_0

    .line 200
    .end local v1    # "_arg0":I
    .end local v3    # "_result":Z
    :pswitch_1
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 202
    .restart local v1    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->createBooleanArray()[Z

    move-result-object v3

    .line 203
    .local v3, "_arg1":[Z
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 204
    invoke-virtual {p0, v1, v3}, Lvendor/qti/hardware/radio/qtiradioconfig/IQtiRadioConfig$Stub;->sendUserPreferenceForDataDuringVoiceCall(I[Z)V

    .line 205
    goto/16 :goto_0

    .line 192
    .end local v1    # "_arg0":I
    .end local v3    # "_arg1":[Z
    :pswitch_2
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 193
    .restart local v1    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 194
    invoke-virtual {p0, v1}, Lvendor/qti/hardware/radio/qtiradioconfig/IQtiRadioConfig$Stub;->getDdsSwitchCapability(I)V

    .line 195
    goto/16 :goto_0

    .line 184
    .end local v1    # "_arg0":I
    :pswitch_3
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 185
    .restart local v1    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 186
    invoke-virtual {p0, v1}, Lvendor/qti/hardware/radio/qtiradioconfig/IQtiRadioConfig$Stub;->getCiwlanCapability(I)V

    .line 187
    goto :goto_0

    .line 174
    .end local v1    # "_arg0":I
    :pswitch_4
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 176
    .restart local v1    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v3

    .line 177
    .local v3, "_arg1":Z
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 178
    invoke-virtual {p0, v1, v3}, Lvendor/qti/hardware/radio/qtiradioconfig/IQtiRadioConfig$Stub;->setDualDataUserPreference(IZ)V

    .line 179
    goto :goto_0

    .line 166
    .end local v1    # "_arg0":I
    .end local v3    # "_arg1":Z
    :pswitch_5
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 167
    .restart local v1    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 168
    invoke-virtual {p0, v1}, Lvendor/qti/hardware/radio/qtiradioconfig/IQtiRadioConfig$Stub;->getDualDataCapability(I)V

    .line 169
    goto :goto_0

    .line 156
    .end local v1    # "_arg0":I
    :pswitch_6
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 158
    .restart local v1    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->createIntArray()[I

    move-result-object v3

    .line 159
    .local v3, "_arg1":[I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 160
    invoke-virtual {p0, v1, v3}, Lvendor/qti/hardware/radio/qtiradioconfig/IQtiRadioConfig$Stub;->setSimType(I[I)V

    .line 161
    goto :goto_0

    .line 148
    .end local v1    # "_arg0":I
    .end local v3    # "_arg1":[I
    :pswitch_7
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 149
    .restart local v1    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 150
    invoke-virtual {p0, v1}, Lvendor/qti/hardware/radio/qtiradioconfig/IQtiRadioConfig$Stub;->getSimTypeInfo(I)V

    .line 151
    goto :goto_0

    .line 138
    .end local v1    # "_arg0":I
    :pswitch_8
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 140
    .restart local v1    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 141
    .local v3, "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 142
    invoke-virtual {p0, v1, v3}, Lvendor/qti/hardware/radio/qtiradioconfig/IQtiRadioConfig$Stub;->setMsimPreference(II)V

    .line 143
    goto :goto_0

    .line 130
    .end local v1    # "_arg0":I
    .end local v3    # "_arg1":I
    :pswitch_9
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 131
    .restart local v1    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 132
    invoke-virtual {p0, v1}, Lvendor/qti/hardware/radio/qtiradioconfig/IQtiRadioConfig$Stub;->getSecureModeStatus(I)V

    .line 133
    goto :goto_0

    .line 120
    .end local v1    # "_arg0":I
    :pswitch_a
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Lvendor/qti/hardware/radio/qtiradioconfig/IQtiRadioConfigResponse$Stub;->asInterface(Landroid/os/IBinder;)Lvendor/qti/hardware/radio/qtiradioconfig/IQtiRadioConfigResponse;

    move-result-object v1

    .line 122
    .local v1, "_arg0":Lvendor/qti/hardware/radio/qtiradioconfig/IQtiRadioConfigResponse;
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Lvendor/qti/hardware/radio/qtiradioconfig/IQtiRadioConfigIndication$Stub;->asInterface(Landroid/os/IBinder;)Lvendor/qti/hardware/radio/qtiradioconfig/IQtiRadioConfigIndication;

    move-result-object v3

    .line 123
    .local v3, "_arg1":Lvendor/qti/hardware/radio/qtiradioconfig/IQtiRadioConfigIndication;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 124
    invoke-virtual {p0, v1, v3}, Lvendor/qti/hardware/radio/qtiradioconfig/IQtiRadioConfig$Stub;->setCallbacks(Lvendor/qti/hardware/radio/qtiradioconfig/IQtiRadioConfigResponse;Lvendor/qti/hardware/radio/qtiradioconfig/IQtiRadioConfigIndication;)V

    .line 125
    nop

    .line 222
    .end local v1    # "_arg0":Lvendor/qti/hardware/radio/qtiradioconfig/IQtiRadioConfigResponse;
    .end local v3    # "_arg1":Lvendor/qti/hardware/radio/qtiradioconfig/IQtiRadioConfigIndication;
    :goto_0
    return v2

    nop

    :pswitch_data_0
    .packed-switch 0x1
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
