.class Lcom/asus/livewallpaper/zf8livewallpaper/b$j;
.super Landroid/opengl/GLSurfaceView;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/asus/livewallpaper/zf8livewallpaper/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "j"
.end annotation


# instance fields
.field final synthetic a:Lcom/asus/livewallpaper/zf8livewallpaper/b;


# direct methods
.method constructor <init>(Lcom/asus/livewallpaper/zf8livewallpaper/b;Landroid/content/Context;)V
    .locals 0

    iput-object p1, p0, Lcom/asus/livewallpaper/zf8livewallpaper/b$j;->a:Lcom/asus/livewallpaper/zf8livewallpaper/b;

    const/4 p1, 0x0

    invoke-direct {p0, p2, p1}, Landroid/opengl/GLSurfaceView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method


# virtual methods
.method public getHolder()Landroid/view/SurfaceHolder;
    .locals 0

    iget-object p0, p0, Lcom/asus/livewallpaper/zf8livewallpaper/b$j;->a:Lcom/asus/livewallpaper/zf8livewallpaper/b;

    invoke-virtual {p0}, Landroid/service/wallpaper/WallpaperService$Engine;->getSurfaceHolder()Landroid/view/SurfaceHolder;

    move-result-object p0

    return-object p0
.end method
