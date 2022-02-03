.class public Lcom/sonymobile/wallpaper/liquid/Logo;
.super Lcom/sonymobile/wallpaper/liquid/Renderable;
.source "Logo.java"


# static fields
.field private static DEBUG:Z = false


# instance fields
.field private mAlpha:F

.field private final mContext:Landroid/content/Context;

.field private mFadeInSeconds:F

.field private mHeight:I

.field private mHidden:Z

.field private mInitialized:Z

.field private mOffsetFactor1:F

.field private mOffsetFactor2:F

.field private final mOffsetPath:[F

.field private mPosition:[F

.field private mTextureHandle:I

.field private mTime:J

.field private final mView:Landroid/view/SurfaceView;

.field private mWidth:I


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/view/SurfaceView;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 106
    new-instance v0, Lcom/sonymobile/wallpaper/liquid/LogoShader;

    invoke-direct {v0, p1}, Lcom/sonymobile/wallpaper/liquid/LogoShader;-><init>(Landroid/content/Context;)V

    new-instance v1, Lcom/sonymobile/wallpaper/liquid/IndexedQuad;

    invoke-direct {v1}, Lcom/sonymobile/wallpaper/liquid/IndexedQuad;-><init>()V

    invoke-direct {p0, v0, v1}, Lcom/sonymobile/wallpaper/liquid/Renderable;-><init>(Lcom/sonymobile/wallpaper/liquid/Shader;Lcom/sonymobile/wallpaper/liquid/IndexedQuad;)V

    const/4 v0, 0x0

    .line 35
    iput-boolean v0, p0, Lcom/sonymobile/wallpaper/liquid/Logo;->mInitialized:Z

    const/4 v1, -0x1

    .line 40
    iput v1, p0, Lcom/sonymobile/wallpaper/liquid/Logo;->mTextureHandle:I

    const/4 v1, 0x2

    new-array v1, v1, [F

    .line 45
    iput-object v1, p0, Lcom/sonymobile/wallpaper/liquid/Logo;->mPosition:[F

    const/high16 v1, -0x40000000    # -2.0f

    .line 50
    iput v1, p0, Lcom/sonymobile/wallpaper/liquid/Logo;->mAlpha:F

    .line 55
    iput-boolean v0, p0, Lcom/sonymobile/wallpaper/liquid/Logo;->mHidden:Z

    const/high16 v1, 0x40200000    # 2.5f

    .line 65
    iput v1, p0, Lcom/sonymobile/wallpaper/liquid/Logo;->mFadeInSeconds:F

    .line 75
    iput v0, p0, Lcom/sonymobile/wallpaper/liquid/Logo;->mWidth:I

    .line 80
    iput v0, p0, Lcom/sonymobile/wallpaper/liquid/Logo;->mHeight:I

    const/4 v0, 0x0

    .line 85
    iput v0, p0, Lcom/sonymobile/wallpaper/liquid/Logo;->mOffsetFactor1:F

    .line 91
    iput v0, p0, Lcom/sonymobile/wallpaper/liquid/Logo;->mOffsetFactor2:F

    const/4 v0, 0x3

    new-array v0, v0, [F

    .line 96
    iput-object v0, p0, Lcom/sonymobile/wallpaper/liquid/Logo;->mOffsetPath:[F

    .line 107
    iput-object p1, p0, Lcom/sonymobile/wallpaper/liquid/Logo;->mContext:Landroid/content/Context;

    .line 108
    iput-object p2, p0, Lcom/sonymobile/wallpaper/liquid/Logo;->mView:Landroid/view/SurfaceView;

    return-void
.end method


# virtual methods
.method protected bind([F)V
    .locals 2

    const v0, 0x84c2

    .line 235
    invoke-static {v0}, Landroid/opengl/GLES30;->glActiveTexture(I)V

    .line 236
    iget v0, p0, Lcom/sonymobile/wallpaper/liquid/Logo;->mTextureHandle:I

    const/16 v1, 0xde1

    invoke-static {v1, v0}, Landroid/opengl/GLES30;->glBindTexture(II)V

    .line 237
    invoke-super {p0, p1}, Lcom/sonymobile/wallpaper/liquid/Renderable;->bind([F)V

    return-void
.end method

.method public clean()V
    .locals 1

    .line 162
    iget-object v0, p0, Lcom/sonymobile/wallpaper/liquid/Logo;->mShader:Lcom/sonymobile/wallpaper/liquid/Shader;

    invoke-virtual {v0}, Lcom/sonymobile/wallpaper/liquid/Shader;->clean()V

    .line 163
    iget-object v0, p0, Lcom/sonymobile/wallpaper/liquid/Logo;->mQuad:Lcom/sonymobile/wallpaper/liquid/IndexedQuad;

    invoke-virtual {v0}, Lcom/sonymobile/wallpaper/liquid/IndexedQuad;->clean()V

    const/4 v0, 0x0

    .line 164
    iput-boolean v0, p0, Lcom/sonymobile/wallpaper/liquid/Logo;->mInitialized:Z

    return-void
.end method

.method public hide()V
    .locals 2

    .line 195
    iget v0, p0, Lcom/sonymobile/wallpaper/liquid/Logo;->mFadeInSeconds:F

    const/high16 v1, 0x3f800000    # 1.0f

    sub-float/2addr v0, v1

    neg-float v0, v0

    iput v0, p0, Lcom/sonymobile/wallpaper/liquid/Logo;->mAlpha:F

    const/4 v0, 0x1

    .line 196
    iput-boolean v0, p0, Lcom/sonymobile/wallpaper/liquid/Logo;->mHidden:Z

    return-void
.end method

.method public init()V
    .locals 10

    .line 115
    invoke-static {}, Lcom/sonymobile/wallpaper/liquid/Utils;->hasLogo()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    .line 121
    :try_start_0
    iget-object v1, p0, Lcom/sonymobile/wallpaper/liquid/Logo;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v1

    iget-object v2, p0, Lcom/sonymobile/wallpaper/liquid/Logo;->mContext:Landroid/content/Context;

    const v3, 0x7f050001

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Lcom/sonymobile/wallpaper/liquid/Utils;->loadTexture(Landroid/content/res/AssetManager;Ljava/lang/String;Z)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 124
    iget-object v2, p0, Lcom/sonymobile/wallpaper/liquid/Logo;->mContext:Landroid/content/Context;

    const/high16 v4, 0x7f050000

    invoke-virtual {v2, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v2

    iput v2, p0, Lcom/sonymobile/wallpaper/liquid/Logo;->mFadeInSeconds:F

    .line 125
    iget-object v2, p0, Lcom/sonymobile/wallpaper/liquid/Logo;->mContext:Landroid/content/Context;

    const v4, 0x7f050002

    invoke-virtual {v2, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v2

    iput v2, p0, Lcom/sonymobile/wallpaper/liquid/Logo;->mOffsetFactor1:F

    .line 126
    iget-object v2, p0, Lcom/sonymobile/wallpaper/liquid/Logo;->mContext:Landroid/content/Context;

    const v4, 0x7f050003

    invoke-virtual {v2, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v2

    iput v2, p0, Lcom/sonymobile/wallpaper/liquid/Logo;->mOffsetFactor2:F

    .line 128
    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    iput v2, p0, Lcom/sonymobile/wallpaper/liquid/Logo;->mWidth:I

    .line 129
    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    iput v2, p0, Lcom/sonymobile/wallpaper/liquid/Logo;->mHeight:I

    .line 131
    iget-object v4, p0, Lcom/sonymobile/wallpaper/liquid/Logo;->mQuad:Lcom/sonymobile/wallpaper/liquid/IndexedQuad;

    iget v2, p0, Lcom/sonymobile/wallpaper/liquid/Logo;->mWidth:I

    neg-int v2, v2

    int-to-float v5, v2

    iget v2, p0, Lcom/sonymobile/wallpaper/liquid/Logo;->mHeight:I

    neg-int v2, v2

    int-to-float v6, v2

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-virtual/range {v4 .. v9}, Lcom/sonymobile/wallpaper/liquid/IndexedQuad;->init(FFFFF)V

    .line 132
    iget-object v2, p0, Lcom/sonymobile/wallpaper/liquid/Logo;->mShader:Lcom/sonymobile/wallpaper/liquid/Shader;

    iget-object v4, p0, Lcom/sonymobile/wallpaper/liquid/Logo;->mQuad:Lcom/sonymobile/wallpaper/liquid/IndexedQuad;

    invoke-virtual {v2, v4}, Lcom/sonymobile/wallpaper/liquid/Shader;->init(Lcom/sonymobile/wallpaper/liquid/IndexedQuad;)V

    new-array v2, v0, [I

    const/4 v4, -0x1

    aput v4, v2, v3

    .line 135
    invoke-static {v0, v2, v3}, Landroid/opengl/GLES30;->glGenTextures(I[II)V

    .line 136
    aget v2, v2, v3

    iput v2, p0, Lcom/sonymobile/wallpaper/liquid/Logo;->mTextureHandle:I

    const v2, 0x84c0

    .line 138
    invoke-static {v2}, Landroid/opengl/GLES30;->glActiveTexture(I)V

    .line 139
    iget v2, p0, Lcom/sonymobile/wallpaper/liquid/Logo;->mTextureHandle:I

    const/16 v4, 0xde1

    invoke-static {v4, v2}, Landroid/opengl/GLES30;->glBindTexture(II)V

    const/16 v2, 0x2801

    const/16 v5, 0x2600

    .line 140
    invoke-static {v4, v2, v5}, Landroid/opengl/GLES30;->glTexParameteri(III)V

    const/16 v2, 0x2800

    .line 142
    invoke-static {v4, v2, v5}, Landroid/opengl/GLES30;->glTexParameteri(III)V

    .line 144
    invoke-static {v4, v3, v1, v3}, Landroid/opengl/GLUtils;->texImage2D(IILandroid/graphics/Bitmap;I)V

    .line 145
    invoke-virtual {v1}, Landroid/graphics/Bitmap;->recycle()V
    :try_end_0
    .catch Lcom/sonymobile/wallpaper/liquid/Utils$BitmapNotLoadedException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lcom/sonymobile/wallpaper/liquid/Utils$InvalidHandleException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lcom/sonymobile/wallpaper/liquid/Shader$ShaderCompilationException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 149
    :catch_0
    sget-boolean v1, Lcom/sonymobile/wallpaper/liquid/Logo;->DEBUG:Z

    if-eqz v1, :cond_1

    const-string v1, "Logo"

    const-string v2, "Could not setup logo"

    .line 150
    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 154
    :cond_1
    :goto_0
    iput-boolean v0, p0, Lcom/sonymobile/wallpaper/liquid/Logo;->mInitialized:Z

    .line 155
    invoke-virtual {p0}, Lcom/sonymobile/wallpaper/liquid/Logo;->show()V

    return-void
.end method

.method public render([F)V
    .locals 8

    .line 204
    iget-boolean v0, p0, Lcom/sonymobile/wallpaper/liquid/Logo;->mInitialized:Z

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Lcom/sonymobile/wallpaper/liquid/Logo;->mHidden:Z

    if-eqz v0, :cond_0

    goto :goto_0

    .line 208
    :cond_0
    iget v0, p0, Lcom/sonymobile/wallpaper/liquid/Logo;->mAlpha:F

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-lez v0, :cond_1

    .line 209
    iget-object v0, p0, Lcom/sonymobile/wallpaper/liquid/Logo;->mShader:Lcom/sonymobile/wallpaper/liquid/Shader;

    check-cast v0, Lcom/sonymobile/wallpaper/liquid/LogoShader;

    iget v4, p0, Lcom/sonymobile/wallpaper/liquid/Logo;->mAlpha:F

    invoke-virtual {v0, v4}, Lcom/sonymobile/wallpaper/liquid/LogoShader;->setAlpha(F)V

    .line 210
    iget-object v0, p0, Lcom/sonymobile/wallpaper/liquid/Logo;->mShader:Lcom/sonymobile/wallpaper/liquid/Shader;

    check-cast v0, Lcom/sonymobile/wallpaper/liquid/LogoShader;

    iget-object v4, p0, Lcom/sonymobile/wallpaper/liquid/Logo;->mPosition:[F

    aget v5, v4, v3

    aget v4, v4, v2

    invoke-virtual {v0, v5, v4}, Lcom/sonymobile/wallpaper/liquid/LogoShader;->setPosition(FF)V

    .line 211
    invoke-super {p0, p1}, Lcom/sonymobile/wallpaper/liquid/Renderable;->render([F)V

    .line 214
    :cond_1
    iget p1, p0, Lcom/sonymobile/wallpaper/liquid/Logo;->mAlpha:F

    const/high16 v0, 0x3f800000    # 1.0f

    cmpg-float p1, p1, v0

    if-gez p1, :cond_2

    .line 215
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    .line 216
    iget-wide v6, p0, Lcom/sonymobile/wallpaper/liquid/Logo;->mTime:J

    sub-long v6, v4, v6

    long-to-float p1, v6

    const/high16 v6, 0x447a0000    # 1000.0f

    div-float/2addr p1, v6

    .line 218
    iput-wide v4, p0, Lcom/sonymobile/wallpaper/liquid/Logo;->mTime:J

    .line 219
    iget v4, p0, Lcom/sonymobile/wallpaper/liquid/Logo;->mAlpha:F

    add-float/2addr v4, p1

    invoke-static {v0, v4}, Ljava/lang/Math;->min(FF)F

    move-result p1

    iput p1, p0, Lcom/sonymobile/wallpaper/liquid/Logo;->mAlpha:F

    .line 220
    iget-object p1, p0, Lcom/sonymobile/wallpaper/liquid/Logo;->mView:Landroid/view/SurfaceView;

    invoke-virtual {p1}, Landroid/view/SurfaceView;->invalidate()V

    .line 222
    iget p1, p0, Lcom/sonymobile/wallpaper/liquid/Logo;->mAlpha:F

    cmpl-float v1, p1, v1

    if-lez v1, :cond_2

    sub-float/2addr v0, p1

    .line 224
    iget-object v1, p0, Lcom/sonymobile/wallpaper/liquid/Logo;->mPosition:[F

    iget-object v4, p0, Lcom/sonymobile/wallpaper/liquid/Logo;->mOffsetPath:[F

    aget v5, v4, v3

    mul-float/2addr v5, v0

    aget v6, v4, v2

    mul-float/2addr v6, p1

    add-float/2addr v5, v6

    mul-float/2addr v5, v0

    aget v2, v4, v2

    mul-float/2addr v2, v0

    const/4 v0, 0x2

    aget v0, v4, v0

    mul-float/2addr v0, p1

    add-float/2addr v2, v0

    mul-float/2addr v2, p1

    add-float/2addr v5, v2

    aput v5, v1, v3

    :cond_2
    :goto_0
    return-void
.end method

.method public setPosition(FF)V
    .locals 6

    .line 174
    iget-object v0, p0, Lcom/sonymobile/wallpaper/liquid/Logo;->mPosition:[F

    const/4 v1, 0x0

    aput p1, v0, v1

    const/4 p1, 0x1

    .line 175
    aput p2, v0, p1

    .line 177
    iget-object p2, p0, Lcom/sonymobile/wallpaper/liquid/Logo;->mOffsetPath:[F

    aget v2, v0, v1

    iget v3, p0, Lcom/sonymobile/wallpaper/liquid/Logo;->mWidth:I

    int-to-float v4, v3

    iget v5, p0, Lcom/sonymobile/wallpaper/liquid/Logo;->mOffsetFactor1:F

    mul-float/2addr v4, v5

    add-float/2addr v2, v4

    aput v2, p2, v1

    .line 178
    aget v2, v0, v1

    int-to-float v3, v3

    iget v4, p0, Lcom/sonymobile/wallpaper/liquid/Logo;->mOffsetFactor2:F

    mul-float/2addr v3, v4

    add-float/2addr v2, v3

    aput v2, p2, p1

    .line 179
    aget p1, v0, v1

    const/4 v0, 0x2

    aput p1, p2, v0

    return-void
.end method

.method public show()V
    .locals 2

    const/4 v0, 0x0

    .line 186
    iput-boolean v0, p0, Lcom/sonymobile/wallpaper/liquid/Logo;->mHidden:Z

    .line 187
    iget-object v0, p0, Lcom/sonymobile/wallpaper/liquid/Logo;->mView:Landroid/view/SurfaceView;

    invoke-virtual {v0}, Landroid/view/SurfaceView;->invalidate()V

    .line 188
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/sonymobile/wallpaper/liquid/Logo;->mTime:J

    return-void
.end method
