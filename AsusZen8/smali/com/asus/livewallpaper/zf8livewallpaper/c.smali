.class public Lcom/asus/livewallpaper/zf8livewallpaper/c;
.super Lcom/asus/livewallpaper/zf8livewallpaper/b$j;
.source ""

# interfaces
.implements Landroid/opengl/GLSurfaceView$Renderer;


# static fields
.field private static g:Ljava/lang/String; = "VideoSurfaceView"


# instance fields
.field private b:I

.field private c:I

.field private d:Lc/d;

.field private e:J

.field private f:Z


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Lcom/asus/livewallpaper/zf8livewallpaper/b;Landroid/content/Context;)V
    .locals 0

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-direct {p0, p1, p2}, Lcom/asus/livewallpaper/zf8livewallpaper/b$j;-><init>(Lcom/asus/livewallpaper/zf8livewallpaper/b;Landroid/content/Context;)V

    const/4 p2, 0x2

    invoke-virtual {p0, p2}, Landroid/opengl/GLSurfaceView;->setEGLContextClientVersion(I)V

    const/4 p2, 0x1

    invoke-virtual {p0, p2}, Landroid/opengl/GLSurfaceView;->setPreserveEGLContextOnPause(Z)V

    invoke-virtual {p0, p0}, Landroid/opengl/GLSurfaceView;->setRenderer(Landroid/opengl/GLSurfaceView$Renderer;)V

    invoke-virtual {p1}, Landroid/service/wallpaper/WallpaperService$Engine;->isPreview()Z

    move-result p1

    invoke-virtual {p0, p1}, Landroid/opengl/GLSurfaceView;->setRenderMode(I)V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 2

    sget-object v0, Lcom/asus/livewallpaper/zf8livewallpaper/c;->g:Ljava/lang/String;

    const-string v1, "forceDraw requestRender"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/asus/livewallpaper/zf8livewallpaper/c;->e:J

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/asus/livewallpaper/zf8livewallpaper/c;->f:Z

    invoke-virtual {p0}, Landroid/opengl/GLSurfaceView;->requestRender()V

    return-void
.end method

.method public b()V
    .locals 2

    sget-object v0, Lcom/asus/livewallpaper/zf8livewallpaper/c;->g:Ljava/lang/String;

    const-string v1, "onDestroy: "

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-super {p0}, Landroid/opengl/GLSurfaceView;->onDetachedFromWindow()V

    invoke-static {}, Landroid/opengl/GLES20;->glFinish()V

    return-void
.end method

.method public bridge synthetic getHolder()Landroid/view/SurfaceHolder;
    .locals 0

    invoke-super {p0}, Lcom/asus/livewallpaper/zf8livewallpaper/b$j;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object p0

    return-object p0
.end method

.method public onDrawFrame(Ljavax/microedition/khronos/opengles/GL10;)V
    .locals 4

    iget-boolean p1, p0, Lcom/asus/livewallpaper/zf8livewallpaper/c;->f:Z

    if-eqz p1, :cond_0

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/asus/livewallpaper/zf8livewallpaper/c;->e:J

    sub-long/2addr v0, v2

    const-wide/16 v2, 0x3e8

    cmp-long p1, v0, v2

    if-lez p1, :cond_0

    sget-object p1, Lcom/asus/livewallpaper/zf8livewallpaper/c;->g:Ljava/lang/String;

    const-string v0, "Force drawing timeout"

    invoke-static {p1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/asus/livewallpaper/zf8livewallpaper/c;->f:Z

    :cond_0
    iget-object p1, p0, Lcom/asus/livewallpaper/zf8livewallpaper/c;->d:Lc/d;

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Lc/d;->k()V

    iget-object p1, p0, Lcom/asus/livewallpaper/zf8livewallpaper/c;->d:Lc/d;

    invoke-virtual {p1}, Lc/d;->o()Z

    move-result p1

    if-nez p1, :cond_1

    iget-boolean p1, p0, Lcom/asus/livewallpaper/zf8livewallpaper/c;->f:Z

    if-eqz p1, :cond_3

    :cond_1
    invoke-virtual {p0}, Landroid/opengl/GLSurfaceView;->requestRender()V

    goto :goto_0

    :cond_2
    sget-object p0, Lcom/asus/livewallpaper/zf8livewallpaper/c;->g:Ljava/lang/String;

    const-string p1, "onDrawFrame: mPlayer = null."

    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    :goto_0
    return-void
.end method

.method public onPause()V
    .locals 5

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    sget-object v2, Lcom/asus/livewallpaper/zf8livewallpaper/c;->g:Ljava/lang/String;

    const-string v3, "onPause start"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-super {p0}, Landroid/opengl/GLSurfaceView;->onPause()V

    sget-object p0, Lcom/asus/livewallpaper/zf8livewallpaper/c;->g:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onPause end, cost time: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v3

    sub-long/2addr v3, v0

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onResume()V
    .locals 5

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    sget-object v2, Lcom/asus/livewallpaper/zf8livewallpaper/c;->g:Ljava/lang/String;

    const-string v3, "onResume start"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-super {p0}, Landroid/opengl/GLSurfaceView;->onResume()V

    sget-object p0, Lcom/asus/livewallpaper/zf8livewallpaper/c;->g:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onResume end, cost time: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v3

    sub-long/2addr v3, v0

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onSurfaceChanged(Ljavax/microedition/khronos/opengles/GL10;II)V
    .locals 3

    sget-object p1, Lcom/asus/livewallpaper/zf8livewallpaper/c;->g:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onSurfaceChanged: w, h = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    iget p1, p0, Lcom/asus/livewallpaper/zf8livewallpaper/c;->b:I

    if-ne p1, p2, :cond_0

    iget p1, p0, Lcom/asus/livewallpaper/zf8livewallpaper/c;->c:I

    if-eq p1, p3, :cond_2

    :cond_0
    iput p2, p0, Lcom/asus/livewallpaper/zf8livewallpaper/c;->b:I

    iput p3, p0, Lcom/asus/livewallpaper/zf8livewallpaper/c;->c:I

    iget-object p1, p0, Lcom/asus/livewallpaper/zf8livewallpaper/c;->d:Lc/d;

    if-eqz p1, :cond_1

    sget-object p1, Lcom/asus/livewallpaper/zf8livewallpaper/c;->g:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onSurfaceChanged, mPlayer != null: w, h = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p1, p0, Lcom/asus/livewallpaper/zf8livewallpaper/c;->d:Lc/d;

    iget p2, p0, Lcom/asus/livewallpaper/zf8livewallpaper/c;->b:I

    iget p3, p0, Lcom/asus/livewallpaper/zf8livewallpaper/c;->c:I

    invoke-virtual {p1, p2, p3}, Lc/d;->r(II)V

    goto :goto_0

    :cond_1
    sget-object p1, Lcom/asus/livewallpaper/zf8livewallpaper/c;->g:Ljava/lang/String;

    const-string p2, "onSurfaceChanged, mPlayer == null"

    invoke-static {p1, p2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    invoke-virtual {p0}, Lcom/asus/livewallpaper/zf8livewallpaper/c;->a()V

    :cond_2
    return-void
.end method

.method public onSurfaceCreated(Ljavax/microedition/khronos/opengles/GL10;Ljavax/microedition/khronos/egl/EGLConfig;)V
    .locals 0

    sget-object p0, Lcom/asus/livewallpaper/zf8livewallpaper/c;->g:Ljava/lang/String;

    const-string p1, "onSurface Created: "

    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public setPlayer(Lc/d;)V
    .locals 1

    iput-object p1, p0, Lcom/asus/livewallpaper/zf8livewallpaper/c;->d:Lc/d;

    if-eqz p1, :cond_0

    iget v0, p0, Lcom/asus/livewallpaper/zf8livewallpaper/c;->b:I

    iget p0, p0, Lcom/asus/livewallpaper/zf8livewallpaper/c;->c:I

    invoke-virtual {p1, v0, p0}, Lc/d;->r(II)V

    :cond_0
    return-void
.end method

.method public surfaceDestroyed(Landroid/view/SurfaceHolder;)V
    .locals 1

    iget-object v0, p0, Lcom/asus/livewallpaper/zf8livewallpaper/c;->d:Lc/d;

    invoke-virtual {v0}, Lc/d;->j()V

    invoke-super {p0, p1}, Landroid/opengl/GLSurfaceView;->surfaceDestroyed(Landroid/view/SurfaceHolder;)V

    return-void
.end method
