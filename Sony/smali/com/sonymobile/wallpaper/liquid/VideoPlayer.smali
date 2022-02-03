.class Lcom/sonymobile/wallpaper/liquid/VideoPlayer;
.super Lcom/sonymobile/wallpaper/liquid/Renderable;
.source "VideoPlayer.java"

# interfaces
.implements Landroid/graphics/SurfaceTexture$OnFrameAvailableListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sonymobile/wallpaper/liquid/VideoPlayer$VideoHandler;,
        Lcom/sonymobile/wallpaper/liquid/VideoPlayer$StreamCondition;,
        Lcom/sonymobile/wallpaper/liquid/VideoPlayer$StreamState;
    }
.end annotation


# static fields
.field private static final DEBUG:Z = false


# instance fields
.field private final mAssetFile:Ljava/lang/String;

.field private final mAssetManager:Landroid/content/res/AssetManager;

.field private volatile mIsPlaying:Z

.field private final mLogTag:Ljava/lang/String;

.field private volatile mNewFrameAvailable:Z

.field private volatile mStreamCondition:Lcom/sonymobile/wallpaper/liquid/VideoPlayer$StreamCondition;

.field private mSurface:Landroid/view/Surface;

.field private mSurfaceTexture:Landroid/graphics/SurfaceTexture;

.field private mTextureHandle:I

.field private final mUvTransform:[F

.field private mVideoHandler:Lcom/sonymobile/wallpaper/liquid/VideoPlayer$VideoHandler;

.field private mVideoStream:Lcom/sonymobile/wallpaper/liquid/VideoStream;

.field private final mView:Landroid/opengl/GLSurfaceView;


# direct methods
.method public constructor <init>(Landroid/content/res/AssetManager;Ljava/lang/String;Landroid/opengl/GLSurfaceView;Lcom/sonymobile/wallpaper/liquid/VideoShader;Lcom/sonymobile/wallpaper/liquid/IndexedQuad;)V
    .locals 0

    .line 160
    invoke-direct {p0, p4, p5}, Lcom/sonymobile/wallpaper/liquid/Renderable;-><init>(Lcom/sonymobile/wallpaper/liquid/Shader;Lcom/sonymobile/wallpaper/liquid/IndexedQuad;)V

    .line 81
    sget-object p4, Lcom/sonymobile/wallpaper/liquid/VideoPlayer$StreamCondition;->FINE:Lcom/sonymobile/wallpaper/liquid/VideoPlayer$StreamCondition;

    iput-object p4, p0, Lcom/sonymobile/wallpaper/liquid/VideoPlayer;->mStreamCondition:Lcom/sonymobile/wallpaper/liquid/VideoPlayer$StreamCondition;

    const/4 p4, 0x0

    .line 106
    iput-object p4, p0, Lcom/sonymobile/wallpaper/liquid/VideoPlayer;->mVideoHandler:Lcom/sonymobile/wallpaper/liquid/VideoPlayer$VideoHandler;

    const/4 p5, 0x0

    .line 126
    iput-boolean p5, p0, Lcom/sonymobile/wallpaper/liquid/VideoPlayer;->mIsPlaying:Z

    .line 131
    iput-boolean p5, p0, Lcom/sonymobile/wallpaper/liquid/VideoPlayer;->mNewFrameAvailable:Z

    const/16 p5, 0x10

    new-array p5, p5, [F

    .line 141
    iput-object p5, p0, Lcom/sonymobile/wallpaper/liquid/VideoPlayer;->mUvTransform:[F

    .line 146
    iput-object p4, p0, Lcom/sonymobile/wallpaper/liquid/VideoPlayer;->mVideoStream:Lcom/sonymobile/wallpaper/liquid/VideoStream;

    .line 161
    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    const-string p5, "VideoPlayer("

    invoke-virtual {p4, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p5, ")"

    invoke-virtual {p4, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p4

    iput-object p4, p0, Lcom/sonymobile/wallpaper/liquid/VideoPlayer;->mLogTag:Ljava/lang/String;

    .line 162
    iput-object p1, p0, Lcom/sonymobile/wallpaper/liquid/VideoPlayer;->mAssetManager:Landroid/content/res/AssetManager;

    .line 163
    iput-object p2, p0, Lcom/sonymobile/wallpaper/liquid/VideoPlayer;->mAssetFile:Ljava/lang/String;

    .line 164
    iput-object p3, p0, Lcom/sonymobile/wallpaper/liquid/VideoPlayer;->mView:Landroid/opengl/GLSurfaceView;

    return-void
.end method

.method static synthetic access$000(Lcom/sonymobile/wallpaper/liquid/VideoPlayer;)Lcom/sonymobile/wallpaper/liquid/VideoStream;
    .locals 0

    .line 32
    iget-object p0, p0, Lcom/sonymobile/wallpaper/liquid/VideoPlayer;->mVideoStream:Lcom/sonymobile/wallpaper/liquid/VideoStream;

    return-object p0
.end method

.method static synthetic access$100(Lcom/sonymobile/wallpaper/liquid/VideoPlayer;)V
    .locals 0

    .line 32
    invoke-direct {p0}, Lcom/sonymobile/wallpaper/liquid/VideoPlayer;->onPlayingComplete()V

    return-void
.end method

.method static synthetic access$200(Lcom/sonymobile/wallpaper/liquid/VideoPlayer;Z)V
    .locals 0

    .line 32
    invoke-direct {p0, p1}, Lcom/sonymobile/wallpaper/liquid/VideoPlayer;->onResourcesLost(Z)V

    return-void
.end method

.method private declared-synchronized onPlayingComplete()V
    .locals 1

    monitor-enter p0

    const/4 v0, 0x0

    .line 352
    :try_start_0
    iput-boolean v0, p0, Lcom/sonymobile/wallpaper/liquid/VideoPlayer;->mIsPlaying:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 353
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private declared-synchronized onResourcesLost(Z)V
    .locals 0

    monitor-enter p0

    if-eqz p1, :cond_0

    .line 331
    :try_start_0
    sget-object p1, Lcom/sonymobile/wallpaper/liquid/VideoPlayer$StreamCondition;->NEEDS_LAZY_RESTART:Lcom/sonymobile/wallpaper/liquid/VideoPlayer$StreamCondition;

    iput-object p1, p0, Lcom/sonymobile/wallpaper/liquid/VideoPlayer;->mStreamCondition:Lcom/sonymobile/wallpaper/liquid/VideoPlayer$StreamCondition;

    const/4 p1, 0x0

    .line 332
    iput-boolean p1, p0, Lcom/sonymobile/wallpaper/liquid/VideoPlayer;->mIsPlaying:Z

    goto :goto_0

    .line 338
    :cond_0
    sget-object p1, Lcom/sonymobile/wallpaper/liquid/VideoPlayer$StreamCondition;->NEEDS_RESTART:Lcom/sonymobile/wallpaper/liquid/VideoPlayer$StreamCondition;

    iput-object p1, p0, Lcom/sonymobile/wallpaper/liquid/VideoPlayer;->mStreamCondition:Lcom/sonymobile/wallpaper/liquid/VideoPlayer$StreamCondition;

    .line 345
    :goto_0
    iget-object p1, p0, Lcom/sonymobile/wallpaper/liquid/VideoPlayer;->mView:Landroid/opengl/GLSurfaceView;

    invoke-virtual {p1}, Landroid/opengl/GLSurfaceView;->requestRender()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 346
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method private resetStream()Z
    .locals 1

    .line 274
    iget v0, p0, Lcom/sonymobile/wallpaper/liquid/VideoPlayer;->mTextureHandle:I

    invoke-virtual {p0, v0}, Lcom/sonymobile/wallpaper/liquid/VideoPlayer;->init(I)V

    .line 275
    sget-object v0, Lcom/sonymobile/wallpaper/liquid/VideoPlayer$StreamCondition;->FINE:Lcom/sonymobile/wallpaper/liquid/VideoPlayer$StreamCondition;

    iput-object v0, p0, Lcom/sonymobile/wallpaper/liquid/VideoPlayer;->mStreamCondition:Lcom/sonymobile/wallpaper/liquid/VideoPlayer$StreamCondition;

    .line 276
    iget-object v0, p0, Lcom/sonymobile/wallpaper/liquid/VideoPlayer;->mView:Landroid/opengl/GLSurfaceView;

    invoke-virtual {v0}, Landroid/opengl/GLSurfaceView;->requestRender()V

    const/4 v0, 0x1

    return v0
.end method


# virtual methods
.method public declared-synchronized bind([F)V
    .locals 3

    monitor-enter p0

    .line 258
    :try_start_0
    iget-object v0, p0, Lcom/sonymobile/wallpaper/liquid/VideoPlayer;->mShader:Lcom/sonymobile/wallpaper/liquid/Shader;

    check-cast v0, Lcom/sonymobile/wallpaper/liquid/VideoShader;

    iget-object v1, p0, Lcom/sonymobile/wallpaper/liquid/VideoPlayer;->mUvTransform:[F

    invoke-virtual {v0, v1}, Lcom/sonymobile/wallpaper/liquid/VideoShader;->setUvTransform([F)V

    .line 259
    iget-object v0, p0, Lcom/sonymobile/wallpaper/liquid/VideoPlayer;->mShader:Lcom/sonymobile/wallpaper/liquid/Shader;

    check-cast v0, Lcom/sonymobile/wallpaper/liquid/VideoShader;

    iget-object v1, p0, Lcom/sonymobile/wallpaper/liquid/VideoPlayer;->mStreamCondition:Lcom/sonymobile/wallpaper/liquid/VideoPlayer$StreamCondition;

    sget-object v2, Lcom/sonymobile/wallpaper/liquid/VideoPlayer$StreamCondition;->FINE:Lcom/sonymobile/wallpaper/liquid/VideoPlayer$StreamCondition;

    if-eq v1, v2, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    invoke-virtual {v0, v1}, Lcom/sonymobile/wallpaper/liquid/VideoShader;->useBackup(Z)V

    .line 260
    invoke-super {p0, p1}, Lcom/sonymobile/wallpaper/liquid/Renderable;->bind([F)V

    const p1, 0x84c1

    .line 264
    invoke-static {p1}, Landroid/opengl/GLES30;->glActiveTexture(I)V

    const p1, 0x8d65

    .line 265
    iget v0, p0, Lcom/sonymobile/wallpaper/liquid/VideoPlayer;->mTextureHandle:I

    invoke-static {p1, v0}, Landroid/opengl/GLES30;->glBindTexture(II)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 266
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public getTextureHandle()I
    .locals 1

    .line 231
    iget v0, p0, Lcom/sonymobile/wallpaper/liquid/VideoPlayer;->mTextureHandle:I

    return v0
.end method

.method protected getVideoHandler()Lcom/sonymobile/wallpaper/liquid/VideoPlayer$VideoHandler;
    .locals 1

    .line 373
    iget-object v0, p0, Lcom/sonymobile/wallpaper/liquid/VideoPlayer;->mVideoHandler:Lcom/sonymobile/wallpaper/liquid/VideoPlayer$VideoHandler;

    return-object v0
.end method

.method public declared-synchronized init(I)V
    .locals 3

    monitor-enter p0

    .line 173
    :try_start_0
    invoke-virtual {p0}, Lcom/sonymobile/wallpaper/liquid/VideoPlayer;->reset()V

    .line 179
    iput p1, p0, Lcom/sonymobile/wallpaper/liquid/VideoPlayer;->mTextureHandle:I

    .line 180
    new-instance v0, Landroid/graphics/SurfaceTexture;

    invoke-direct {v0, p1}, Landroid/graphics/SurfaceTexture;-><init>(I)V

    iput-object v0, p0, Lcom/sonymobile/wallpaper/liquid/VideoPlayer;->mSurfaceTexture:Landroid/graphics/SurfaceTexture;

    .line 181
    invoke-virtual {v0, p0}, Landroid/graphics/SurfaceTexture;->setOnFrameAvailableListener(Landroid/graphics/SurfaceTexture$OnFrameAvailableListener;)V

    .line 182
    new-instance p1, Landroid/view/Surface;

    iget-object v0, p0, Lcom/sonymobile/wallpaper/liquid/VideoPlayer;->mSurfaceTexture:Landroid/graphics/SurfaceTexture;

    invoke-direct {p1, v0}, Landroid/view/Surface;-><init>(Landroid/graphics/SurfaceTexture;)V

    iput-object p1, p0, Lcom/sonymobile/wallpaper/liquid/VideoPlayer;->mSurface:Landroid/view/Surface;

    .line 184
    new-instance p1, Lcom/sonymobile/wallpaper/liquid/VideoStream;

    iget-object v0, p0, Lcom/sonymobile/wallpaper/liquid/VideoPlayer;->mAssetFile:Ljava/lang/String;

    iget-object v1, p0, Lcom/sonymobile/wallpaper/liquid/VideoPlayer;->mAssetManager:Landroid/content/res/AssetManager;

    iget-object v2, p0, Lcom/sonymobile/wallpaper/liquid/VideoPlayer;->mSurface:Landroid/view/Surface;

    invoke-direct {p1, v0, v1, v2}, Lcom/sonymobile/wallpaper/liquid/VideoStream;-><init>(Ljava/lang/String;Landroid/content/res/AssetManager;Landroid/view/Surface;)V

    iput-object p1, p0, Lcom/sonymobile/wallpaper/liquid/VideoPlayer;->mVideoStream:Lcom/sonymobile/wallpaper/liquid/VideoStream;

    .line 186
    sget-object p1, Lcom/sonymobile/wallpaper/liquid/VideoPlayer$StreamCondition;->FINE:Lcom/sonymobile/wallpaper/liquid/VideoPlayer$StreamCondition;

    iput-object p1, p0, Lcom/sonymobile/wallpaper/liquid/VideoPlayer;->mStreamCondition:Lcom/sonymobile/wallpaper/liquid/VideoPlayer$StreamCondition;

    .line 187
    new-instance p1, Lcom/sonymobile/wallpaper/liquid/VideoPlayer$VideoHandler;

    invoke-direct {p1, p0}, Lcom/sonymobile/wallpaper/liquid/VideoPlayer$VideoHandler;-><init>(Lcom/sonymobile/wallpaper/liquid/VideoPlayer;)V

    iput-object p1, p0, Lcom/sonymobile/wallpaper/liquid/VideoPlayer;->mVideoHandler:Lcom/sonymobile/wallpaper/liquid/VideoPlayer$VideoHandler;

    .line 193
    invoke-virtual {p1}, Lcom/sonymobile/wallpaper/liquid/VideoPlayer$VideoHandler;->rewind()V

    .line 194
    iget-boolean p1, p0, Lcom/sonymobile/wallpaper/liquid/VideoPlayer;->mIsPlaying:Z

    if-eqz p1, :cond_0

    .line 195
    iget-object p1, p0, Lcom/sonymobile/wallpaper/liquid/VideoPlayer;->mVideoHandler:Lcom/sonymobile/wallpaper/liquid/VideoPlayer$VideoHandler;

    invoke-virtual {p1}, Lcom/sonymobile/wallpaper/liquid/VideoPlayer$VideoHandler;->play()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 197
    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized onFrameAvailable(Landroid/graphics/SurfaceTexture;)V
    .locals 0

    monitor-enter p0

    const/4 p1, 0x1

    .line 360
    :try_start_0
    iput-boolean p1, p0, Lcom/sonymobile/wallpaper/liquid/VideoPlayer;->mNewFrameAvailable:Z

    .line 361
    iget-object p1, p0, Lcom/sonymobile/wallpaper/liquid/VideoPlayer;->mView:Landroid/opengl/GLSurfaceView;

    if-eqz p1, :cond_0

    .line 362
    iget-object p1, p0, Lcom/sonymobile/wallpaper/liquid/VideoPlayer;->mView:Landroid/opengl/GLSurfaceView;

    invoke-virtual {p1}, Landroid/opengl/GLSurfaceView;->requestRender()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 364
    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized play()V
    .locals 2

    monitor-enter p0

    const/4 v0, 0x1

    .line 299
    :try_start_0
    iput-boolean v0, p0, Lcom/sonymobile/wallpaper/liquid/VideoPlayer;->mIsPlaying:Z

    .line 300
    iget-object v0, p0, Lcom/sonymobile/wallpaper/liquid/VideoPlayer;->mStreamCondition:Lcom/sonymobile/wallpaper/liquid/VideoPlayer$StreamCondition;

    sget-object v1, Lcom/sonymobile/wallpaper/liquid/VideoPlayer$StreamCondition;->FINE:Lcom/sonymobile/wallpaper/liquid/VideoPlayer$StreamCondition;

    if-eq v0, v1, :cond_0

    invoke-direct {p0}, Lcom/sonymobile/wallpaper/liquid/VideoPlayer;->resetStream()Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    .line 304
    monitor-exit p0

    return-void

    .line 307
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/sonymobile/wallpaper/liquid/VideoPlayer;->mVideoHandler:Lcom/sonymobile/wallpaper/liquid/VideoPlayer$VideoHandler;

    if-eqz v0, :cond_1

    .line 308
    iget-object v0, p0, Lcom/sonymobile/wallpaper/liquid/VideoPlayer;->mVideoHandler:Lcom/sonymobile/wallpaper/liquid/VideoPlayer$VideoHandler;

    invoke-virtual {v0}, Lcom/sonymobile/wallpaper/liquid/VideoPlayer$VideoHandler;->play()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 310
    :cond_1
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized prepare()V
    .locals 1

    monitor-enter p0

    .line 286
    :try_start_0
    iget-object v0, p0, Lcom/sonymobile/wallpaper/liquid/VideoPlayer;->mVideoHandler:Lcom/sonymobile/wallpaper/liquid/VideoPlayer$VideoHandler;

    if-eqz v0, :cond_0

    .line 287
    iget-object v0, p0, Lcom/sonymobile/wallpaper/liquid/VideoPlayer;->mVideoHandler:Lcom/sonymobile/wallpaper/liquid/VideoPlayer$VideoHandler;

    invoke-virtual {v0}, Lcom/sonymobile/wallpaper/liquid/VideoPlayer$VideoHandler;->rewind()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 292
    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized reset()V
    .locals 2

    monitor-enter p0

    .line 204
    :try_start_0
    iget-object v0, p0, Lcom/sonymobile/wallpaper/liquid/VideoPlayer;->mVideoHandler:Lcom/sonymobile/wallpaper/liquid/VideoPlayer$VideoHandler;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 205
    iget-object v0, p0, Lcom/sonymobile/wallpaper/liquid/VideoPlayer;->mVideoHandler:Lcom/sonymobile/wallpaper/liquid/VideoPlayer$VideoHandler;

    invoke-virtual {v0}, Lcom/sonymobile/wallpaper/liquid/VideoPlayer$VideoHandler;->dispose()V

    .line 206
    iput-object v1, p0, Lcom/sonymobile/wallpaper/liquid/VideoPlayer;->mVideoHandler:Lcom/sonymobile/wallpaper/liquid/VideoPlayer$VideoHandler;

    .line 209
    :cond_0
    iget-object v0, p0, Lcom/sonymobile/wallpaper/liquid/VideoPlayer;->mSurfaceTexture:Landroid/graphics/SurfaceTexture;

    if-eqz v0, :cond_1

    .line 210
    iget-object v0, p0, Lcom/sonymobile/wallpaper/liquid/VideoPlayer;->mSurfaceTexture:Landroid/graphics/SurfaceTexture;

    invoke-virtual {v0}, Landroid/graphics/SurfaceTexture;->release()V

    .line 211
    iput-object v1, p0, Lcom/sonymobile/wallpaper/liquid/VideoPlayer;->mSurfaceTexture:Landroid/graphics/SurfaceTexture;

    .line 214
    :cond_1
    iget-object v0, p0, Lcom/sonymobile/wallpaper/liquid/VideoPlayer;->mSurface:Landroid/view/Surface;

    if-eqz v0, :cond_2

    .line 215
    iget-object v0, p0, Lcom/sonymobile/wallpaper/liquid/VideoPlayer;->mSurface:Landroid/view/Surface;

    invoke-virtual {v0}, Landroid/view/Surface;->release()V

    .line 216
    iput-object v1, p0, Lcom/sonymobile/wallpaper/liquid/VideoPlayer;->mSurfaceTexture:Landroid/graphics/SurfaceTexture;

    .line 219
    :cond_2
    iget-object v0, p0, Lcom/sonymobile/wallpaper/liquid/VideoPlayer;->mVideoStream:Lcom/sonymobile/wallpaper/liquid/VideoStream;

    if-eqz v0, :cond_3

    .line 220
    iget-object v0, p0, Lcom/sonymobile/wallpaper/liquid/VideoPlayer;->mVideoStream:Lcom/sonymobile/wallpaper/liquid/VideoStream;

    invoke-virtual {v0}, Lcom/sonymobile/wallpaper/liquid/VideoStream;->release()V

    .line 221
    iput-object v1, p0, Lcom/sonymobile/wallpaper/liquid/VideoPlayer;->mVideoStream:Lcom/sonymobile/wallpaper/liquid/VideoStream;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 223
    :cond_3
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized stop()V
    .locals 2

    monitor-enter p0

    .line 317
    :try_start_0
    iget-object v0, p0, Lcom/sonymobile/wallpaper/liquid/VideoPlayer;->mVideoHandler:Lcom/sonymobile/wallpaper/liquid/VideoPlayer$VideoHandler;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sonymobile/wallpaper/liquid/VideoPlayer;->mStreamCondition:Lcom/sonymobile/wallpaper/liquid/VideoPlayer$StreamCondition;

    sget-object v1, Lcom/sonymobile/wallpaper/liquid/VideoPlayer$StreamCondition;->FINE:Lcom/sonymobile/wallpaper/liquid/VideoPlayer$StreamCondition;

    if-ne v0, v1, :cond_0

    .line 318
    iget-object v0, p0, Lcom/sonymobile/wallpaper/liquid/VideoPlayer;->mVideoHandler:Lcom/sonymobile/wallpaper/liquid/VideoPlayer$VideoHandler;

    invoke-virtual {v0}, Lcom/sonymobile/wallpaper/liquid/VideoPlayer$VideoHandler;->stop()V

    :cond_0
    const/4 v0, 0x0

    .line 320
    iput-boolean v0, p0, Lcom/sonymobile/wallpaper/liquid/VideoPlayer;->mIsPlaying:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 321
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized update()V
    .locals 2

    monitor-enter p0

    .line 239
    :try_start_0
    iget-object v0, p0, Lcom/sonymobile/wallpaper/liquid/VideoPlayer;->mSurfaceTexture:Landroid/graphics/SurfaceTexture;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/sonymobile/wallpaper/liquid/VideoPlayer;->mNewFrameAvailable:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 240
    iput-boolean v0, p0, Lcom/sonymobile/wallpaper/liquid/VideoPlayer;->mNewFrameAvailable:Z

    .line 241
    iget-object v0, p0, Lcom/sonymobile/wallpaper/liquid/VideoPlayer;->mSurfaceTexture:Landroid/graphics/SurfaceTexture;

    invoke-virtual {v0}, Landroid/graphics/SurfaceTexture;->updateTexImage()V

    .line 242
    iget-object v0, p0, Lcom/sonymobile/wallpaper/liquid/VideoPlayer;->mSurfaceTexture:Landroid/graphics/SurfaceTexture;

    iget-object v1, p0, Lcom/sonymobile/wallpaper/liquid/VideoPlayer;->mUvTransform:[F

    invoke-virtual {v0, v1}, Landroid/graphics/SurfaceTexture;->getTransformMatrix([F)V

    .line 245
    :cond_0
    iget-object v0, p0, Lcom/sonymobile/wallpaper/liquid/VideoPlayer;->mStreamCondition:Lcom/sonymobile/wallpaper/liquid/VideoPlayer$StreamCondition;

    sget-object v1, Lcom/sonymobile/wallpaper/liquid/VideoPlayer$StreamCondition;->NEEDS_RESTART:Lcom/sonymobile/wallpaper/liquid/VideoPlayer$StreamCondition;

    if-ne v0, v1, :cond_1

    .line 249
    invoke-direct {p0}, Lcom/sonymobile/wallpaper/liquid/VideoPlayer;->resetStream()Z

    move-result v0

    iput-boolean v0, p0, Lcom/sonymobile/wallpaper/liquid/VideoPlayer;->mIsPlaying:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 251
    :cond_1
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
