.class public Lcom/sonymobile/wallpaper/liquid/VideoShader;
.super Lcom/sonymobile/wallpaper/liquid/Shader;
.source "VideoShader.java"


# static fields
.field private static final BACKUP_BITMAP_NAME:Ljava/lang/String; = "backup.jpg"

.field private static final sBackupTransform:[F


# instance fields
.field private mBackupTextureHandle:I

.field private mBackupTextureLocation:I

.field private final mContext:Landroid/content/Context;

.field private mCrossFadeLocation:I

.field private mTextureLocation:I

.field private mTransformLocation:I

.field private mUseBackup:Z

.field private mUvTransformLocation:I


# direct methods
.method static constructor <clinit>()V
    .locals 5

    const/16 v0, 0x10

    new-array v0, v0, [F

    .line 41
    sput-object v0, Lcom/sonymobile/wallpaper/liquid/VideoShader;->sBackupTransform:[F

    const/4 v1, 0x0

    .line 42
    invoke-static {v0, v1}, Landroid/opengl/Matrix;->setIdentityM([FI)V

    .line 43
    sget-object v0, Lcom/sonymobile/wallpaper/liquid/VideoShader;->sBackupTransform:[F

    const/4 v2, 0x0

    const/high16 v3, -0x41000000    # -0.5f

    invoke-static {v0, v1, v2, v3, v2}, Landroid/opengl/Matrix;->translateM([FIFFF)V

    .line 44
    sget-object v0, Lcom/sonymobile/wallpaper/liquid/VideoShader;->sBackupTransform:[F

    const/high16 v3, 0x3f800000    # 1.0f

    const/high16 v4, -0x40800000    # -1.0f

    invoke-static {v0, v1, v3, v4, v3}, Landroid/opengl/Matrix;->scaleM([FIFFF)V

    .line 45
    sget-object v0, Lcom/sonymobile/wallpaper/liquid/VideoShader;->sBackupTransform:[F

    const/high16 v3, 0x3f000000    # 0.5f

    invoke-static {v0, v1, v2, v3, v2}, Landroid/opengl/Matrix;->translateM([FIFFF)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const v0, 0x7f040003

    .line 96
    invoke-static {p1, v0}, Lcom/sonymobile/wallpaper/liquid/Utils;->loadStringFromAssetFile(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v0

    const v1, 0x7f040002

    .line 97
    invoke-static {p1, v1}, Lcom/sonymobile/wallpaper/liquid/Utils;->loadStringFromAssetFile(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v1

    .line 96
    invoke-direct {p0, v0, v1}, Lcom/sonymobile/wallpaper/liquid/Shader;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, -0x1

    .line 76
    iput v0, p0, Lcom/sonymobile/wallpaper/liquid/VideoShader;->mTransformLocation:I

    .line 86
    iput v0, p0, Lcom/sonymobile/wallpaper/liquid/VideoShader;->mBackupTextureHandle:I

    .line 98
    iput-object p1, p0, Lcom/sonymobile/wallpaper/liquid/VideoShader;->mContext:Landroid/content/Context;

    return-void
.end method

.method private activateBackup()V
    .locals 2

    .line 191
    invoke-direct {p0}, Lcom/sonymobile/wallpaper/liquid/VideoShader;->initBackup()V

    const/16 v0, 0x10

    new-array v0, v0, [F

    const/4 v1, 0x0

    .line 193
    invoke-static {v0, v1}, Landroid/opengl/Matrix;->setIdentityM([FI)V

    .line 194
    invoke-virtual {p0, v0}, Lcom/sonymobile/wallpaper/liquid/VideoShader;->setUvTransform([F)V

    return-void
.end method

.method private cleanBackup()V
    .locals 5

    .line 135
    iget v0, p0, Lcom/sonymobile/wallpaper/liquid/VideoShader;->mBackupTextureHandle:I

    const/4 v1, -0x1

    if-le v0, v1, :cond_0

    const/4 v2, 0x1

    new-array v3, v2, [I

    const/4 v4, 0x0

    aput v0, v3, v4

    .line 136
    invoke-static {v2, v3, v4}, Landroid/opengl/GLES30;->glDeleteTextures(I[II)V

    .line 137
    iput v1, p0, Lcom/sonymobile/wallpaper/liquid/VideoShader;->mBackupTextureHandle:I

    :cond_0
    return-void
.end method

.method private deactivateBackup()V
    .locals 0

    .line 201
    invoke-direct {p0}, Lcom/sonymobile/wallpaper/liquid/VideoShader;->cleanBackup()V

    return-void
.end method

.method private initBackup()V
    .locals 5

    .line 208
    iget v0, p0, Lcom/sonymobile/wallpaper/liquid/VideoShader;->mBackupTextureHandle:I

    const/4 v1, -0x1

    if-le v0, v1, :cond_0

    return-void

    .line 214
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/sonymobile/wallpaper/liquid/VideoShader;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v0

    const-string v2, "backup.jpg"

    const/4 v3, 0x1

    invoke-static {v0, v2, v3}, Lcom/sonymobile/wallpaper/liquid/Utils;->loadTexture(Landroid/content/res/AssetManager;Ljava/lang/String;Z)Landroid/graphics/Bitmap;

    move-result-object v0
    :try_end_0
    .catch Lcom/sonymobile/wallpaper/liquid/Utils$BitmapNotLoadedException; {:try_start_0 .. :try_end_0} :catch_0

    new-array v2, v3, [I

    const/4 v4, 0x0

    aput v1, v2, v4

    .line 220
    invoke-static {v3, v2, v4}, Landroid/opengl/GLES30;->glGenTextures(I[II)V

    .line 221
    aget v1, v2, v4

    iput v1, p0, Lcom/sonymobile/wallpaper/liquid/VideoShader;->mBackupTextureHandle:I

    const v1, 0x84c0

    .line 223
    invoke-static {v1}, Landroid/opengl/GLES30;->glActiveTexture(I)V

    .line 224
    iget v1, p0, Lcom/sonymobile/wallpaper/liquid/VideoShader;->mBackupTextureHandle:I

    const/16 v2, 0xde1

    invoke-static {v2, v1}, Landroid/opengl/GLES30;->glBindTexture(II)V

    const/16 v1, 0x2801

    const/16 v3, 0x2600

    .line 225
    invoke-static {v2, v1, v3}, Landroid/opengl/GLES30;->glTexParameteri(III)V

    const/16 v1, 0x2800

    .line 227
    invoke-static {v2, v1, v3}, Landroid/opengl/GLES30;->glTexParameteri(III)V

    .line 229
    invoke-static {v2, v4, v0, v4}, Landroid/opengl/GLUtils;->texImage2D(IILandroid/graphics/Bitmap;I)V

    .line 230
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    :catch_0
    return-void
.end method


# virtual methods
.method public declared-synchronized bind([F)V
    .locals 3

    monitor-enter p0

    .line 146
    :try_start_0
    invoke-super {p0, p1}, Lcom/sonymobile/wallpaper/liquid/Shader;->bind([F)V

    .line 148
    iget v0, p0, Lcom/sonymobile/wallpaper/liquid/VideoShader;->mTextureLocation:I

    const/4 v1, 0x1

    invoke-static {v0, v1}, Landroid/opengl/GLES30;->glUniform1i(II)V

    .line 149
    iget v0, p0, Lcom/sonymobile/wallpaper/liquid/VideoShader;->mCrossFadeLocation:I

    iget-boolean v2, p0, Lcom/sonymobile/wallpaper/liquid/VideoShader;->mUseBackup:Z

    if-eqz v2, :cond_0

    const/high16 v2, 0x3f800000    # 1.0f

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    invoke-static {v0, v2}, Landroid/opengl/GLES30;->glUniform1f(IF)V

    .line 150
    iget v0, p0, Lcom/sonymobile/wallpaper/liquid/VideoShader;->mTransformLocation:I

    const/4 v2, 0x0

    invoke-static {v0, v1, v2, p1, v2}, Landroid/opengl/GLES30;->glUniformMatrix4fv(IIZ[FI)V

    .line 152
    iget-boolean p1, p0, Lcom/sonymobile/wallpaper/liquid/VideoShader;->mUseBackup:Z

    if-eqz p1, :cond_1

    const p1, 0x84c0

    .line 153
    invoke-static {p1}, Landroid/opengl/GLES30;->glActiveTexture(I)V

    const/16 p1, 0xde1

    .line 154
    iget v0, p0, Lcom/sonymobile/wallpaper/liquid/VideoShader;->mBackupTextureHandle:I

    invoke-static {p1, v0}, Landroid/opengl/GLES30;->glBindTexture(II)V

    .line 155
    iget p1, p0, Lcom/sonymobile/wallpaper/liquid/VideoShader;->mBackupTextureLocation:I

    invoke-static {p1, v2}, Landroid/opengl/GLES30;->glUniform1i(II)V

    .line 156
    iget p1, p0, Lcom/sonymobile/wallpaper/liquid/VideoShader;->mUvTransformLocation:I

    sget-object v0, Lcom/sonymobile/wallpaper/liquid/VideoShader;->sBackupTransform:[F

    invoke-static {p1, v1, v2, v0, v2}, Landroid/opengl/GLES30;->glUniformMatrix4fv(IIZ[FI)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 158
    :cond_1
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized clean()V
    .locals 1

    monitor-enter p0

    .line 126
    :try_start_0
    invoke-super {p0}, Lcom/sonymobile/wallpaper/liquid/Shader;->clean()V

    .line 127
    invoke-direct {p0}, Lcom/sonymobile/wallpaper/liquid/VideoShader;->cleanBackup()V

    const/4 v0, -0x1

    .line 128
    iput v0, p0, Lcom/sonymobile/wallpaper/liquid/VideoShader;->mTransformLocation:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 129
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public init(Lcom/sonymobile/wallpaper/liquid/IndexedQuad;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sonymobile/wallpaper/liquid/Utils$InvalidHandleException;,
            Lcom/sonymobile/wallpaper/liquid/Shader$ShaderCompilationException;
        }
    .end annotation

    .line 107
    invoke-super {p0, p1}, Lcom/sonymobile/wallpaper/liquid/Shader;->init(Lcom/sonymobile/wallpaper/liquid/IndexedQuad;)V

    .line 109
    iget p1, p0, Lcom/sonymobile/wallpaper/liquid/VideoShader;->mProgram:I

    const-string v0, "uTransform"

    .line 110
    invoke-static {p1, v0}, Landroid/opengl/GLES30;->glGetUniformLocation(ILjava/lang/String;)I

    move-result p1

    .line 109
    invoke-static {p1, v0}, Lcom/sonymobile/wallpaper/liquid/Utils;->verifyHandle(ILjava/lang/String;)I

    move-result p1

    iput p1, p0, Lcom/sonymobile/wallpaper/liquid/VideoShader;->mTransformLocation:I

    .line 111
    iget p1, p0, Lcom/sonymobile/wallpaper/liquid/VideoShader;->mProgram:I

    const-string v0, "uTexture"

    .line 112
    invoke-static {p1, v0}, Landroid/opengl/GLES30;->glGetUniformLocation(ILjava/lang/String;)I

    move-result p1

    const-string v0, "inTexture"

    .line 111
    invoke-static {p1, v0}, Lcom/sonymobile/wallpaper/liquid/Utils;->verifyHandle(ILjava/lang/String;)I

    move-result p1

    iput p1, p0, Lcom/sonymobile/wallpaper/liquid/VideoShader;->mTextureLocation:I

    .line 113
    iget p1, p0, Lcom/sonymobile/wallpaper/liquid/VideoShader;->mProgram:I

    const-string v0, "uUvTransform"

    .line 114
    invoke-static {p1, v0}, Landroid/opengl/GLES30;->glGetUniformLocation(ILjava/lang/String;)I

    move-result p1

    .line 113
    invoke-static {p1, v0}, Lcom/sonymobile/wallpaper/liquid/Utils;->verifyHandle(ILjava/lang/String;)I

    move-result p1

    iput p1, p0, Lcom/sonymobile/wallpaper/liquid/VideoShader;->mUvTransformLocation:I

    .line 115
    iget p1, p0, Lcom/sonymobile/wallpaper/liquid/VideoShader;->mProgram:I

    const-string v0, "uCrossFade"

    .line 116
    invoke-static {p1, v0}, Landroid/opengl/GLES30;->glGetUniformLocation(ILjava/lang/String;)I

    move-result p1

    .line 115
    invoke-static {p1, v0}, Lcom/sonymobile/wallpaper/liquid/Utils;->verifyHandle(ILjava/lang/String;)I

    move-result p1

    iput p1, p0, Lcom/sonymobile/wallpaper/liquid/VideoShader;->mCrossFadeLocation:I

    .line 117
    iget p1, p0, Lcom/sonymobile/wallpaper/liquid/VideoShader;->mProgram:I

    const-string v0, "uBackupTexture"

    .line 118
    invoke-static {p1, v0}, Landroid/opengl/GLES30;->glGetUniformLocation(ILjava/lang/String;)I

    move-result p1

    .line 117
    invoke-static {p1, v0}, Lcom/sonymobile/wallpaper/liquid/Utils;->verifyHandle(ILjava/lang/String;)I

    move-result p1

    iput p1, p0, Lcom/sonymobile/wallpaper/liquid/VideoShader;->mBackupTextureLocation:I

    return-void
.end method

.method public setUvTransform([F)V
    .locals 3

    .line 167
    iget v0, p0, Lcom/sonymobile/wallpaper/liquid/VideoShader;->mUvTransformLocation:I

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-static {v0, v1, v2, p1, v2}, Landroid/opengl/GLES30;->glUniformMatrix4fv(IIZ[FI)V

    return-void
.end method

.method public useBackup(Z)V
    .locals 1

    .line 177
    iget-boolean v0, p0, Lcom/sonymobile/wallpaper/liquid/VideoShader;->mUseBackup:Z

    if-eq p1, v0, :cond_1

    if-eqz p1, :cond_0

    .line 179
    invoke-direct {p0}, Lcom/sonymobile/wallpaper/liquid/VideoShader;->activateBackup()V

    goto :goto_0

    .line 181
    :cond_0
    invoke-direct {p0}, Lcom/sonymobile/wallpaper/liquid/VideoShader;->deactivateBackup()V

    .line 183
    :goto_0
    iput-boolean p1, p0, Lcom/sonymobile/wallpaper/liquid/VideoShader;->mUseBackup:Z

    :cond_1
    return-void
.end method
