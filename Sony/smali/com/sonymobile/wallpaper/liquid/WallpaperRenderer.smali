.class public Lcom/sonymobile/wallpaper/liquid/WallpaperRenderer;
.super Ljava/lang/Object;
.source "WallpaperRenderer.java"

# interfaces
.implements Landroid/opengl/GLSurfaceView$Renderer;


# instance fields
.field private final mContext:Landroid/content/Context;

.field private mHeight:I

.field private final mIsPreview:Z

.field private final mLogo:Lcom/sonymobile/wallpaper/liquid/Logo;

.field private mPortrait:Z

.field private mProjection:[F

.field private mRotationChanged:Z

.field private final mSurfaceView:Landroid/opengl/GLSurfaceView;

.field private final mTransform:[F

.field private final mUnlockVideo:Lcom/sonymobile/wallpaper/liquid/VideoPlayer;

.field private final mVideoQuad:Lcom/sonymobile/wallpaper/liquid/IndexedQuad;

.field private final mVideoShader:Lcom/sonymobile/wallpaper/liquid/VideoShader;

.field private mWidth:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/opengl/GLSurfaceView;ZIZ)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 104
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 48
    iput v0, p0, Lcom/sonymobile/wallpaper/liquid/WallpaperRenderer;->mWidth:I

    .line 53
    iput v0, p0, Lcom/sonymobile/wallpaper/liquid/WallpaperRenderer;->mHeight:I

    const/4 v0, 0x1

    .line 58
    iput-boolean v0, p0, Lcom/sonymobile/wallpaper/liquid/WallpaperRenderer;->mPortrait:Z

    .line 63
    iput-boolean v0, p0, Lcom/sonymobile/wallpaper/liquid/WallpaperRenderer;->mRotationChanged:Z

    const/16 v0, 0x10

    new-array v1, v0, [F

    .line 68
    iput-object v1, p0, Lcom/sonymobile/wallpaper/liquid/WallpaperRenderer;->mTransform:[F

    new-array v0, v0, [F

    .line 73
    iput-object v0, p0, Lcom/sonymobile/wallpaper/liquid/WallpaperRenderer;->mProjection:[F

    .line 105
    invoke-static {p1, p4, p5}, Lcom/sonymobile/wallpaper/liquid/Utils;->setAssetPath(Landroid/content/Context;IZ)V

    .line 106
    iput-object p1, p0, Lcom/sonymobile/wallpaper/liquid/WallpaperRenderer;->mContext:Landroid/content/Context;

    .line 107
    iput-object p2, p0, Lcom/sonymobile/wallpaper/liquid/WallpaperRenderer;->mSurfaceView:Landroid/opengl/GLSurfaceView;

    .line 108
    iput-boolean p3, p0, Lcom/sonymobile/wallpaper/liquid/WallpaperRenderer;->mIsPreview:Z

    .line 109
    new-instance p3, Lcom/sonymobile/wallpaper/liquid/IndexedQuad;

    invoke-direct {p3}, Lcom/sonymobile/wallpaper/liquid/IndexedQuad;-><init>()V

    iput-object p3, p0, Lcom/sonymobile/wallpaper/liquid/WallpaperRenderer;->mVideoQuad:Lcom/sonymobile/wallpaper/liquid/IndexedQuad;

    .line 110
    new-instance p3, Lcom/sonymobile/wallpaper/liquid/VideoShader;

    invoke-direct {p3, p1}, Lcom/sonymobile/wallpaper/liquid/VideoShader;-><init>(Landroid/content/Context;)V

    iput-object p3, p0, Lcom/sonymobile/wallpaper/liquid/WallpaperRenderer;->mVideoShader:Lcom/sonymobile/wallpaper/liquid/VideoShader;

    .line 111
    new-instance p3, Lcom/sonymobile/wallpaper/liquid/VideoPlayer;

    invoke-virtual {p1}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v1

    const p4, 0x7f050015

    .line 112
    invoke-virtual {p1, p4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/sonymobile/wallpaper/liquid/WallpaperRenderer;->mSurfaceView:Landroid/opengl/GLSurfaceView;

    iget-object v4, p0, Lcom/sonymobile/wallpaper/liquid/WallpaperRenderer;->mVideoShader:Lcom/sonymobile/wallpaper/liquid/VideoShader;

    iget-object v5, p0, Lcom/sonymobile/wallpaper/liquid/WallpaperRenderer;->mVideoQuad:Lcom/sonymobile/wallpaper/liquid/IndexedQuad;

    move-object v0, p3

    invoke-direct/range {v0 .. v5}, Lcom/sonymobile/wallpaper/liquid/VideoPlayer;-><init>(Landroid/content/res/AssetManager;Ljava/lang/String;Landroid/opengl/GLSurfaceView;Lcom/sonymobile/wallpaper/liquid/VideoShader;Lcom/sonymobile/wallpaper/liquid/IndexedQuad;)V

    iput-object p3, p0, Lcom/sonymobile/wallpaper/liquid/WallpaperRenderer;->mUnlockVideo:Lcom/sonymobile/wallpaper/liquid/VideoPlayer;

    .line 115
    new-instance p3, Lcom/sonymobile/wallpaper/liquid/Logo;

    invoke-direct {p3, p1, p2}, Lcom/sonymobile/wallpaper/liquid/Logo;-><init>(Landroid/content/Context;Landroid/view/SurfaceView;)V

    iput-object p3, p0, Lcom/sonymobile/wallpaper/liquid/WallpaperRenderer;->mLogo:Lcom/sonymobile/wallpaper/liquid/Logo;

    return-void
.end method

.method private setupResources()V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 269
    invoke-virtual {p0}, Lcom/sonymobile/wallpaper/liquid/WallpaperRenderer;->clean()V

    .line 271
    iget-object v0, p0, Lcom/sonymobile/wallpaper/liquid/WallpaperRenderer;->mVideoQuad:Lcom/sonymobile/wallpaper/liquid/IndexedQuad;

    const/high16 v1, -0x40800000    # -1.0f

    const/high16 v2, -0x40800000    # -1.0f

    const/high16 v3, 0x3f800000    # 1.0f

    const/high16 v4, 0x3f800000    # 1.0f

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Lcom/sonymobile/wallpaper/liquid/IndexedQuad;->init(FFFFF)V

    .line 272
    iget-object v0, p0, Lcom/sonymobile/wallpaper/liquid/WallpaperRenderer;->mVideoShader:Lcom/sonymobile/wallpaper/liquid/VideoShader;

    iget-object v1, p0, Lcom/sonymobile/wallpaper/liquid/WallpaperRenderer;->mVideoQuad:Lcom/sonymobile/wallpaper/liquid/IndexedQuad;

    invoke-virtual {v0, v1}, Lcom/sonymobile/wallpaper/liquid/VideoShader;->init(Lcom/sonymobile/wallpaper/liquid/IndexedQuad;)V

    .line 273
    iget-boolean v0, p0, Lcom/sonymobile/wallpaper/liquid/WallpaperRenderer;->mIsPreview:Z

    if-nez v0, :cond_0

    .line 274
    iget-object v0, p0, Lcom/sonymobile/wallpaper/liquid/WallpaperRenderer;->mLogo:Lcom/sonymobile/wallpaper/liquid/Logo;

    invoke-virtual {v0}, Lcom/sonymobile/wallpaper/liquid/Logo;->init()V

    :cond_0
    const/4 v0, 0x1

    new-array v1, v0, [I

    const/4 v2, -0x1

    const/4 v3, 0x0

    aput v2, v1, v3

    .line 278
    invoke-static {v0, v1, v3}, Landroid/opengl/GLES30;->glGenTextures(I[II)V

    const v0, 0x84c1

    .line 279
    invoke-static {v0}, Landroid/opengl/GLES30;->glActiveTexture(I)V

    .line 280
    iget-object v0, p0, Lcom/sonymobile/wallpaper/liquid/WallpaperRenderer;->mUnlockVideo:Lcom/sonymobile/wallpaper/liquid/VideoPlayer;

    aget v1, v1, v3

    invoke-virtual {v0, v1}, Lcom/sonymobile/wallpaper/liquid/VideoPlayer;->init(I)V

    .line 281
    iget-object v0, p0, Lcom/sonymobile/wallpaper/liquid/WallpaperRenderer;->mSurfaceView:Landroid/opengl/GLSurfaceView;

    invoke-virtual {v0, v3}, Landroid/opengl/GLSurfaceView;->setRenderMode(I)V

    return-void
.end method


# virtual methods
.method public clean()V
    .locals 4

    .line 249
    iget-object v0, p0, Lcom/sonymobile/wallpaper/liquid/WallpaperRenderer;->mVideoQuad:Lcom/sonymobile/wallpaper/liquid/IndexedQuad;

    invoke-virtual {v0}, Lcom/sonymobile/wallpaper/liquid/IndexedQuad;->clean()V

    .line 250
    iget-object v0, p0, Lcom/sonymobile/wallpaper/liquid/WallpaperRenderer;->mVideoShader:Lcom/sonymobile/wallpaper/liquid/VideoShader;

    invoke-virtual {v0}, Lcom/sonymobile/wallpaper/liquid/VideoShader;->clean()V

    .line 251
    iget-object v0, p0, Lcom/sonymobile/wallpaper/liquid/WallpaperRenderer;->mLogo:Lcom/sonymobile/wallpaper/liquid/Logo;

    invoke-virtual {v0}, Lcom/sonymobile/wallpaper/liquid/Logo;->clean()V

    .line 253
    iget-object v0, p0, Lcom/sonymobile/wallpaper/liquid/WallpaperRenderer;->mUnlockVideo:Lcom/sonymobile/wallpaper/liquid/VideoPlayer;

    if-eqz v0, :cond_0

    .line 254
    invoke-virtual {v0}, Lcom/sonymobile/wallpaper/liquid/VideoPlayer;->reset()V

    const/4 v0, 0x1

    new-array v1, v0, [I

    .line 255
    iget-object v2, p0, Lcom/sonymobile/wallpaper/liquid/WallpaperRenderer;->mUnlockVideo:Lcom/sonymobile/wallpaper/liquid/VideoPlayer;

    .line 256
    invoke-virtual {v2}, Lcom/sonymobile/wallpaper/liquid/VideoPlayer;->getTextureHandle()I

    move-result v2

    const/4 v3, 0x0

    aput v2, v1, v3

    .line 258
    invoke-static {v0, v1, v3}, Landroid/opengl/GLES30;->glDeleteTextures(I[II)V

    :cond_0
    return-void
.end method

.method public onDrawFrame(Ljavax/microedition/khronos/opengles/GL10;)V
    .locals 5

    .line 161
    iget-object p1, p0, Lcom/sonymobile/wallpaper/liquid/WallpaperRenderer;->mUnlockVideo:Lcom/sonymobile/wallpaper/liquid/VideoPlayer;

    invoke-virtual {p1}, Lcom/sonymobile/wallpaper/liquid/VideoPlayer;->update()V

    const/4 p1, 0x0

    .line 163
    invoke-static {p1, p1, p1, p1}, Landroid/opengl/GLES30;->glClearColor(FFFF)V

    const/16 p1, 0x4000

    .line 164
    invoke-static {p1}, Landroid/opengl/GLES30;->glClear(I)V

    const/16 p1, 0xb44

    .line 167
    invoke-static {p1}, Landroid/opengl/GLES30;->glDisable(I)V

    const/16 p1, 0xb71

    .line 168
    invoke-static {p1}, Landroid/opengl/GLES30;->glDisable(I)V

    const/16 p1, 0xbe2

    .line 169
    invoke-static {p1}, Landroid/opengl/GLES30;->glDisable(I)V

    .line 171
    iget v0, p0, Lcom/sonymobile/wallpaper/liquid/WallpaperRenderer;->mWidth:I

    iget v1, p0, Lcom/sonymobile/wallpaper/liquid/WallpaperRenderer;->mHeight:I

    const/4 v2, 0x0

    invoke-static {v2, v2, v0, v1}, Landroid/opengl/GLES30;->glViewport(IIII)V

    .line 173
    iget-boolean v0, p0, Lcom/sonymobile/wallpaper/liquid/WallpaperRenderer;->mRotationChanged:Z

    if-eqz v0, :cond_1

    .line 174
    iput-boolean v2, p0, Lcom/sonymobile/wallpaper/liquid/WallpaperRenderer;->mRotationChanged:Z

    .line 175
    iget-boolean v0, p0, Lcom/sonymobile/wallpaper/liquid/WallpaperRenderer;->mPortrait:Z

    const/high16 v1, 0x3f800000    # 1.0f

    if-eqz v0, :cond_0

    .line 176
    iget-object v0, p0, Lcom/sonymobile/wallpaper/liquid/WallpaperRenderer;->mTransform:[F

    invoke-static {v0, v2}, Landroid/opengl/Matrix;->setIdentityM([FI)V

    .line 178
    iget-object v0, p0, Lcom/sonymobile/wallpaper/liquid/WallpaperRenderer;->mTransform:[F

    iget v3, p0, Lcom/sonymobile/wallpaper/liquid/WallpaperRenderer;->mHeight:I

    int-to-float v3, v3

    iget v4, p0, Lcom/sonymobile/wallpaper/liquid/WallpaperRenderer;->mWidth:I

    int-to-float v4, v4

    div-float/2addr v3, v4

    invoke-static {v0, v2, v3, v1, v1}, Landroid/opengl/Matrix;->scaleM([FIFFF)V

    goto :goto_0

    .line 204
    :cond_0
    iget-object v0, p0, Lcom/sonymobile/wallpaper/liquid/WallpaperRenderer;->mTransform:[F

    invoke-static {v0, v2}, Landroid/opengl/Matrix;->setIdentityM([FI)V

    .line 207
    iget-object v0, p0, Lcom/sonymobile/wallpaper/liquid/WallpaperRenderer;->mTransform:[F

    iget v3, p0, Lcom/sonymobile/wallpaper/liquid/WallpaperRenderer;->mWidth:I

    int-to-float v3, v3

    iget v4, p0, Lcom/sonymobile/wallpaper/liquid/WallpaperRenderer;->mHeight:I

    int-to-float v4, v4

    div-float/2addr v3, v4

    invoke-static {v0, v2, v1, v3, v1}, Landroid/opengl/Matrix;->scaleM([FIFFF)V

    .line 219
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/sonymobile/wallpaper/liquid/WallpaperRenderer;->mUnlockVideo:Lcom/sonymobile/wallpaper/liquid/VideoPlayer;

    iget-object v1, p0, Lcom/sonymobile/wallpaper/liquid/WallpaperRenderer;->mTransform:[F

    invoke-virtual {v0, v1}, Lcom/sonymobile/wallpaper/liquid/VideoPlayer;->render([F)V

    .line 221
    invoke-static {p1}, Landroid/opengl/GLES30;->glEnable(I)V

    const p1, 0x8006

    .line 222
    invoke-static {p1}, Landroid/opengl/GLES30;->glBlendEquation(I)V

    const/16 p1, 0x302

    const/16 v0, 0x303

    .line 223
    invoke-static {p1, v0}, Landroid/opengl/GLES30;->glBlendFunc(II)V

    .line 225
    iget-object p1, p0, Lcom/sonymobile/wallpaper/liquid/WallpaperRenderer;->mLogo:Lcom/sonymobile/wallpaper/liquid/Logo;

    iget-object v0, p0, Lcom/sonymobile/wallpaper/liquid/WallpaperRenderer;->mProjection:[F

    invoke-virtual {p1, v0}, Lcom/sonymobile/wallpaper/liquid/Logo;->render([F)V

    return-void
.end method

.method public onLocked(Z)V
    .locals 0

    if-eqz p1, :cond_0

    .line 236
    iget-object p1, p0, Lcom/sonymobile/wallpaper/liquid/WallpaperRenderer;->mUnlockVideo:Lcom/sonymobile/wallpaper/liquid/VideoPlayer;

    invoke-virtual {p1}, Lcom/sonymobile/wallpaper/liquid/VideoPlayer;->stop()V

    .line 237
    iget-object p1, p0, Lcom/sonymobile/wallpaper/liquid/WallpaperRenderer;->mUnlockVideo:Lcom/sonymobile/wallpaper/liquid/VideoPlayer;

    invoke-virtual {p1}, Lcom/sonymobile/wallpaper/liquid/VideoPlayer;->prepare()V

    .line 238
    iget-object p1, p0, Lcom/sonymobile/wallpaper/liquid/WallpaperRenderer;->mLogo:Lcom/sonymobile/wallpaper/liquid/Logo;

    invoke-virtual {p1}, Lcom/sonymobile/wallpaper/liquid/Logo;->hide()V

    goto :goto_0

    .line 240
    :cond_0
    iget-object p1, p0, Lcom/sonymobile/wallpaper/liquid/WallpaperRenderer;->mUnlockVideo:Lcom/sonymobile/wallpaper/liquid/VideoPlayer;

    invoke-virtual {p1}, Lcom/sonymobile/wallpaper/liquid/VideoPlayer;->play()V

    .line 241
    iget-object p1, p0, Lcom/sonymobile/wallpaper/liquid/WallpaperRenderer;->mLogo:Lcom/sonymobile/wallpaper/liquid/Logo;

    invoke-virtual {p1}, Lcom/sonymobile/wallpaper/liquid/Logo;->show()V

    :goto_0
    return-void
.end method

.method public onSurfaceChanged(Ljavax/microedition/khronos/opengles/GL10;II)V
    .locals 11

    .line 135
    iput p2, p0, Lcom/sonymobile/wallpaper/liquid/WallpaperRenderer;->mWidth:I

    .line 136
    iput p3, p0, Lcom/sonymobile/wallpaper/liquid/WallpaperRenderer;->mHeight:I

    .line 138
    iget-object p1, p0, Lcom/sonymobile/wallpaper/liquid/WallpaperRenderer;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const/high16 v0, 0x7f030000

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getInteger(I)I

    move-result p1

    .line 139
    iget-object v0, p0, Lcom/sonymobile/wallpaper/liquid/WallpaperRenderer;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f030001

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    .line 141
    iget-object v1, p0, Lcom/sonymobile/wallpaper/liquid/WallpaperRenderer;->mLogo:Lcom/sonymobile/wallpaper/liquid/Logo;

    int-to-float p1, p1

    int-to-float v0, v0

    invoke-virtual {v1, p1, v0}, Lcom/sonymobile/wallpaper/liquid/Logo;->setPosition(FF)V

    const/16 p1, 0x20

    new-array p1, p1, [F

    const/16 v1, 0x10

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/high16 v4, 0x3f800000    # 1.0f

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/high16 v9, 0x3f800000    # 1.0f

    const/4 v10, 0x0

    move-object v0, p1

    .line 144
    invoke-static/range {v0 .. v10}, Landroid/opengl/Matrix;->setLookAtM([FIFFFFFFFFF)V

    int-to-float v3, p2

    int-to-float v4, p3

    const/4 v1, 0x0

    const v6, 0x3dcccccd    # 0.1f

    const/high16 v7, 0x41200000    # 10.0f

    .line 145
    invoke-static/range {v0 .. v7}, Landroid/opengl/Matrix;->orthoM([FIFFFFFF)V

    .line 146
    iget-object v0, p0, Lcom/sonymobile/wallpaper/liquid/WallpaperRenderer;->mProjection:[F

    const/4 v3, 0x0

    const/16 v5, 0x10

    move-object v2, p1

    move-object v4, p1

    invoke-static/range {v0 .. v5}, Landroid/opengl/Matrix;->multiplyMM([FI[FI[FI)V

    const/4 p1, 0x1

    if-ge p2, p3, :cond_0

    move p2, p1

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    .line 149
    :goto_0
    iget-boolean p3, p0, Lcom/sonymobile/wallpaper/liquid/WallpaperRenderer;->mPortrait:Z

    if-eq p3, p2, :cond_1

    .line 150
    iput-boolean p2, p0, Lcom/sonymobile/wallpaper/liquid/WallpaperRenderer;->mPortrait:Z

    .line 151
    iput-boolean p1, p0, Lcom/sonymobile/wallpaper/liquid/WallpaperRenderer;->mRotationChanged:Z

    .line 152
    iget-object p1, p0, Lcom/sonymobile/wallpaper/liquid/WallpaperRenderer;->mSurfaceView:Landroid/opengl/GLSurfaceView;

    invoke-virtual {p1}, Landroid/opengl/GLSurfaceView;->requestRender()V

    :cond_1
    return-void
.end method

.method public onSurfaceCreated(Ljavax/microedition/khronos/opengles/GL10;Ljavax/microedition/khronos/egl/EGLConfig;)V
    .locals 0

    .line 124
    :try_start_0
    invoke-direct {p0}, Lcom/sonymobile/wallpaper/liquid/WallpaperRenderer;->setupResources()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 126
    new-instance p2, Ljava/lang/RuntimeException;

    invoke-direct {p2, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw p2
.end method
