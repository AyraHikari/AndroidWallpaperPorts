.class Lcom/sonymobile/wallpaper/liquid/LiveWallpaperService$WallpaperEngine$WallpaperGLSurfaceView;
.super Landroid/opengl/GLSurfaceView;
.source "LiveWallpaperService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonymobile/wallpaper/liquid/LiveWallpaperService$WallpaperEngine;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "WallpaperGLSurfaceView"
.end annotation


# instance fields
.field final synthetic this$1:Lcom/sonymobile/wallpaper/liquid/LiveWallpaperService$WallpaperEngine;


# direct methods
.method public constructor <init>(Lcom/sonymobile/wallpaper/liquid/LiveWallpaperService$WallpaperEngine;Landroid/content/Context;)V
    .locals 0

    .line 215
    iput-object p1, p0, Lcom/sonymobile/wallpaper/liquid/LiveWallpaperService$WallpaperEngine$WallpaperGLSurfaceView;->this$1:Lcom/sonymobile/wallpaper/liquid/LiveWallpaperService$WallpaperEngine;

    .line 216
    invoke-direct {p0, p2}, Landroid/opengl/GLSurfaceView;-><init>(Landroid/content/Context;)V

    const/4 p1, 0x3

    .line 218
    invoke-virtual {p0, p1}, Lcom/sonymobile/wallpaper/liquid/LiveWallpaperService$WallpaperEngine$WallpaperGLSurfaceView;->setEGLContextClientVersion(I)V

    const/4 p1, 0x1

    .line 219
    invoke-virtual {p0, p1}, Lcom/sonymobile/wallpaper/liquid/LiveWallpaperService$WallpaperEngine$WallpaperGLSurfaceView;->setPreserveEGLContextOnPause(Z)V

    return-void
.end method


# virtual methods
.method public getHolder()Landroid/view/SurfaceHolder;
    .locals 1

    .line 245
    iget-object v0, p0, Lcom/sonymobile/wallpaper/liquid/LiveWallpaperService$WallpaperEngine$WallpaperGLSurfaceView;->this$1:Lcom/sonymobile/wallpaper/liquid/LiveWallpaperService$WallpaperEngine;

    invoke-virtual {v0}, Lcom/sonymobile/wallpaper/liquid/LiveWallpaperService$WallpaperEngine;->getSurfaceHolder()Landroid/view/SurfaceHolder;

    move-result-object v0

    return-object v0
.end method

.method public onDestroy()V
    .locals 0

    .line 252
    invoke-super {p0}, Landroid/opengl/GLSurfaceView;->onDetachedFromWindow()V

    return-void
.end method

.method public onPause()V
    .locals 2

    .line 227
    iget-object v0, p0, Lcom/sonymobile/wallpaper/liquid/LiveWallpaperService$WallpaperEngine$WallpaperGLSurfaceView;->this$1:Lcom/sonymobile/wallpaper/liquid/LiveWallpaperService$WallpaperEngine;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/sonymobile/wallpaper/liquid/LiveWallpaperService$WallpaperEngine;->access$100(Lcom/sonymobile/wallpaper/liquid/LiveWallpaperService$WallpaperEngine;Z)V

    .line 228
    invoke-super {p0}, Landroid/opengl/GLSurfaceView;->onPause()V

    return-void
.end method

.method public onResume()V
    .locals 2

    .line 236
    iget-object v0, p0, Lcom/sonymobile/wallpaper/liquid/LiveWallpaperService$WallpaperEngine$WallpaperGLSurfaceView;->this$1:Lcom/sonymobile/wallpaper/liquid/LiveWallpaperService$WallpaperEngine;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/sonymobile/wallpaper/liquid/LiveWallpaperService$WallpaperEngine;->access$100(Lcom/sonymobile/wallpaper/liquid/LiveWallpaperService$WallpaperEngine;Z)V

    .line 237
    invoke-super {p0}, Landroid/opengl/GLSurfaceView;->onResume()V

    return-void
.end method
