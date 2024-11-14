.class public Lcom/qualcomm/ims/vt/CameraUtil;
.super Ljava/lang/Object;
.source "CameraUtil.java"


# static fields
.field private static final DBG:Z = true

.field private static final TAG:Ljava/lang/String; = "VideoCall_CameraUtil"


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    return-void
.end method

.method public static calculateArPreviewSize(Landroid/content/Context;Ljava/lang/String;II)Landroid/util/Size;
    .locals 5
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "cameraId"    # Ljava/lang/String;
    .param p2, "width"    # I
    .param p3, "height"    # I

    .line 65
    if-lez p2, :cond_6

    if-lez p3, :cond_6

    if-nez p1, :cond_0

    goto :goto_2

    .line 68
    :cond_0
    invoke-static {p0, p1}, Lcom/qualcomm/ims/vt/CameraUtil;->getCameraMountAngle(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    .line 69
    .local v0, "mountAngle":I
    new-instance v1, Landroid/util/Size;

    invoke-direct {v1, p2, p3}, Landroid/util/Size;-><init>(II)V

    .line 70
    .local v1, "previewSize":Landroid/util/Size;
    if-ge p2, p3, :cond_1

    const/4 v2, 0x1

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    .line 71
    .local v2, "isPortrait":Z
    :goto_0
    if-nez v2, :cond_2

    rem-int/lit16 v3, v0, 0xb4

    if-eqz v3, :cond_2

    .line 74
    new-instance v3, Landroid/util/Size;

    invoke-direct {v3, p3, p2}, Landroid/util/Size;-><init>(II)V

    move-object v1, v3

    goto :goto_1

    .line 75
    :cond_2
    if-eqz v2, :cond_3

    rem-int/lit16 v3, v0, 0xb4

    if-nez v3, :cond_3

    .line 78
    new-instance v3, Landroid/util/Size;

    invoke-direct {v3, p2, p3}, Landroid/util/Size;-><init>(II)V

    move-object v1, v3

    goto :goto_1

    .line 79
    :cond_3
    if-eqz v2, :cond_4

    .line 81
    new-instance v3, Landroid/util/Size;

    invoke-direct {v3, p3, p2}, Landroid/util/Size;-><init>(II)V

    move-object v1, v3

    goto :goto_1

    .line 82
    :cond_4
    if-nez v2, :cond_5

    .line 84
    new-instance v3, Landroid/util/Size;

    invoke-direct {v3, p2, p3}, Landroid/util/Size;-><init>(II)V

    move-object v1, v3

    .line 86
    :cond_5
    :goto_1
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "calculateArPreviewSize mountAngle = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " previewSize = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "VideoCall_CameraUtil"

    invoke-static {v4, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 88
    return-object v1

    .line 66
    .end local v0    # "mountAngle":I
    .end local v1    # "previewSize":Landroid/util/Size;
    .end local v2    # "isPortrait":Z
    :cond_6
    :goto_2
    new-instance v0, Landroid/util/Size;

    const/4 v1, -0x1

    invoke-direct {v0, v1, v1}, Landroid/util/Size;-><init>(II)V

    return-object v0
.end method

.method private static getCameraCharacteristics(Landroid/content/Context;Ljava/lang/String;Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "cameraId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Landroid/hardware/camera2/CameraCharacteristics$Key<",
            "TT;>;)TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/hardware/camera2/CameraAccessException;
        }
    .end annotation

    .line 54
    .local p2, "key":Landroid/hardware/camera2/CameraCharacteristics$Key;, "Landroid/hardware/camera2/CameraCharacteristics$Key<TT;>;"
    if-nez p1, :cond_0

    .line 55
    const-string v0, "VideoCall_CameraUtil"

    const-string v1, "getCameraCharacteristics: camera id is null"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 56
    const/4 v0, 0x0

    return-object v0

    .line 58
    :cond_0
    const-string v0, "camera"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/camera2/CameraManager;

    .line 59
    .local v0, "cm":Landroid/hardware/camera2/CameraManager;
    invoke-virtual {v0, p1}, Landroid/hardware/camera2/CameraManager;->getCameraCharacteristics(Ljava/lang/String;)Landroid/hardware/camera2/CameraCharacteristics;

    move-result-object v1

    .line 60
    .local v1, "characteristics":Landroid/hardware/camera2/CameraCharacteristics;
    invoke-virtual {v1, p2}, Landroid/hardware/camera2/CameraCharacteristics;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v2

    return-object v2
.end method

.method public static getCameraFacing(Landroid/content/Context;Ljava/lang/String;)I
    .locals 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "cameraId"    # Ljava/lang/String;

    .line 29
    const/4 v0, 0x1

    .line 31
    .local v0, "cameraFacing":I
    :try_start_0
    sget-object v1, Landroid/hardware/camera2/CameraCharacteristics;->LENS_FACING:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-static {p0, p1, v1}, Lcom/qualcomm/ims/vt/CameraUtil;->getCameraCharacteristics(Landroid/content/Context;Ljava/lang/String;Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1
    :try_end_0
    .catch Landroid/hardware/camera2/CameraAccessException; {:try_start_0 .. :try_end_0} :catch_0

    if-nez v1, :cond_0

    .line 34
    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    move v0, v1

    .line 37
    goto :goto_1

    .line 35
    :catch_0
    move-exception v1

    .line 36
    .local v1, "e":Landroid/hardware/camera2/CameraAccessException;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getCameraFacing: Failed to retrieve getFacing, "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "VideoCall_CameraUtil"

    invoke-static {v3, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 38
    .end local v1    # "e":Landroid/hardware/camera2/CameraAccessException;
    :goto_1
    return v0
.end method

.method public static getCameraMountAngle(Landroid/content/Context;Ljava/lang/String;)I
    .locals 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "cameraId"    # Ljava/lang/String;

    .line 42
    const/4 v0, 0x0

    .line 44
    .local v0, "mountAngle":I
    :try_start_0
    sget-object v1, Landroid/hardware/camera2/CameraCharacteristics;->SENSOR_ORIENTATION:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-static {p0, p1, v1}, Lcom/qualcomm/ims/vt/CameraUtil;->getCameraCharacteristics(Landroid/content/Context;Ljava/lang/String;Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1
    :try_end_0
    .catch Landroid/hardware/camera2/CameraAccessException; {:try_start_0 .. :try_end_0} :catch_0

    move v0, v1

    .line 48
    goto :goto_0

    .line 46
    :catch_0
    move-exception v1

    .line 47
    .local v1, "e":Landroid/hardware/camera2/CameraAccessException;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getCameraFacing: Failed to retrieve getFacing, "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "VideoCall_CameraUtil"

    invoke-static {v3, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 49
    .end local v1    # "e":Landroid/hardware/camera2/CameraAccessException;
    :goto_0
    return v0
.end method
