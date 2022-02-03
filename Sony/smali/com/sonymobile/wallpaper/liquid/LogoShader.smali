.class public Lcom/sonymobile/wallpaper/liquid/LogoShader;
.super Lcom/sonymobile/wallpaper/liquid/Shader;
.source "LogoShader.java"


# instance fields
.field private mAlpha:F

.field private mAlphaLocation:I

.field private mPosition:[F

.field private mPositionLocation:I

.field private mTextureLocation:I

.field private mViewProjectionLocation:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const v0, 0x7f040001

    .line 55
    invoke-static {p1, v0}, Lcom/sonymobile/wallpaper/liquid/Utils;->loadStringFromAssetFile(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v0

    const/high16 v1, 0x7f040000

    .line 56
    invoke-static {p1, v1}, Lcom/sonymobile/wallpaper/liquid/Utils;->loadStringFromAssetFile(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object p1

    .line 55
    invoke-direct {p0, v0, p1}, Lcom/sonymobile/wallpaper/liquid/Shader;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p1, 0x2

    new-array p1, p1, [F

    .line 36
    iput-object p1, p0, Lcom/sonymobile/wallpaper/liquid/LogoShader;->mPosition:[F

    const/high16 p1, 0x3f800000    # 1.0f

    .line 46
    iput p1, p0, Lcom/sonymobile/wallpaper/liquid/LogoShader;->mAlpha:F

    return-void
.end method


# virtual methods
.method public bind([F)V
    .locals 5

    .line 102
    invoke-super {p0, p1}, Lcom/sonymobile/wallpaper/liquid/Shader;->bind([F)V

    .line 104
    iget v0, p0, Lcom/sonymobile/wallpaper/liquid/LogoShader;->mPositionLocation:I

    iget-object v1, p0, Lcom/sonymobile/wallpaper/liquid/LogoShader;->mPosition:[F

    const/4 v2, 0x0

    aget v3, v1, v2

    const/4 v4, 0x1

    aget v1, v1, v4

    invoke-static {v0, v3, v1}, Landroid/opengl/GLES30;->glUniform2f(IFF)V

    .line 105
    iget v0, p0, Lcom/sonymobile/wallpaper/liquid/LogoShader;->mAlphaLocation:I

    iget v1, p0, Lcom/sonymobile/wallpaper/liquid/LogoShader;->mAlpha:F

    invoke-static {v0, v1}, Landroid/opengl/GLES30;->glUniform1f(IF)V

    .line 106
    iget v0, p0, Lcom/sonymobile/wallpaper/liquid/LogoShader;->mTextureLocation:I

    const/4 v1, 0x2

    invoke-static {v0, v1}, Landroid/opengl/GLES30;->glUniform1i(II)V

    .line 107
    iget v0, p0, Lcom/sonymobile/wallpaper/liquid/LogoShader;->mViewProjectionLocation:I

    invoke-static {v0, v4, v2, p1, v2}, Landroid/opengl/GLES30;->glUniformMatrix4fv(IIZ[FI)V

    return-void
.end method

.method public init(Lcom/sonymobile/wallpaper/liquid/IndexedQuad;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sonymobile/wallpaper/liquid/Utils$InvalidHandleException;,
            Lcom/sonymobile/wallpaper/liquid/Shader$ShaderCompilationException;
        }
    .end annotation

    .line 65
    invoke-super {p0, p1}, Lcom/sonymobile/wallpaper/liquid/Shader;->init(Lcom/sonymobile/wallpaper/liquid/IndexedQuad;)V

    .line 67
    iget p1, p0, Lcom/sonymobile/wallpaper/liquid/LogoShader;->mProgram:I

    const-string v0, "uTexture"

    .line 68
    invoke-static {p1, v0}, Landroid/opengl/GLES30;->glGetUniformLocation(ILjava/lang/String;)I

    move-result p1

    .line 67
    invoke-static {p1, v0}, Lcom/sonymobile/wallpaper/liquid/Utils;->verifyHandle(ILjava/lang/String;)I

    move-result p1

    iput p1, p0, Lcom/sonymobile/wallpaper/liquid/LogoShader;->mTextureLocation:I

    .line 69
    iget p1, p0, Lcom/sonymobile/wallpaper/liquid/LogoShader;->mProgram:I

    const-string v0, "uViewProjection"

    .line 70
    invoke-static {p1, v0}, Landroid/opengl/GLES30;->glGetUniformLocation(ILjava/lang/String;)I

    move-result p1

    .line 69
    invoke-static {p1, v0}, Lcom/sonymobile/wallpaper/liquid/Utils;->verifyHandle(ILjava/lang/String;)I

    move-result p1

    iput p1, p0, Lcom/sonymobile/wallpaper/liquid/LogoShader;->mViewProjectionLocation:I

    .line 71
    iget p1, p0, Lcom/sonymobile/wallpaper/liquid/LogoShader;->mProgram:I

    const-string v0, "uPosition"

    .line 72
    invoke-static {p1, v0}, Landroid/opengl/GLES30;->glGetUniformLocation(ILjava/lang/String;)I

    move-result p1

    .line 71
    invoke-static {p1, v0}, Lcom/sonymobile/wallpaper/liquid/Utils;->verifyHandle(ILjava/lang/String;)I

    move-result p1

    iput p1, p0, Lcom/sonymobile/wallpaper/liquid/LogoShader;->mPositionLocation:I

    .line 73
    iget p1, p0, Lcom/sonymobile/wallpaper/liquid/LogoShader;->mProgram:I

    const-string v0, "uAlpha"

    .line 74
    invoke-static {p1, v0}, Landroid/opengl/GLES30;->glGetUniformLocation(ILjava/lang/String;)I

    move-result p1

    .line 73
    invoke-static {p1, v0}, Lcom/sonymobile/wallpaper/liquid/Utils;->verifyHandle(ILjava/lang/String;)I

    move-result p1

    iput p1, p0, Lcom/sonymobile/wallpaper/liquid/LogoShader;->mAlphaLocation:I

    return-void
.end method

.method public setAlpha(F)V
    .locals 0

    .line 94
    iput p1, p0, Lcom/sonymobile/wallpaper/liquid/LogoShader;->mAlpha:F

    return-void
.end method

.method public setPosition(FF)V
    .locals 2

    .line 84
    iget-object v0, p0, Lcom/sonymobile/wallpaper/liquid/LogoShader;->mPosition:[F

    const/4 v1, 0x0

    aput p1, v0, v1

    const/4 p1, 0x1

    .line 85
    aput p2, v0, p1

    return-void
.end method
