.class public Lcom/asus/livewallpaper/zf8livewallpaper/d$a;
.super Lcom/asus/livewallpaper/zf8livewallpaper/b;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/asus/livewallpaper/zf8livewallpaper/d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "a"
.end annotation


# instance fields
.field final synthetic D:Lcom/asus/livewallpaper/zf8livewallpaper/d;


# direct methods
.method constructor <init>(Lcom/asus/livewallpaper/zf8livewallpaper/d;Landroid/service/wallpaper/WallpaperService;)V
    .locals 0

    iput-object p1, p0, Lcom/asus/livewallpaper/zf8livewallpaper/d$a;->D:Lcom/asus/livewallpaper/zf8livewallpaper/d;

    invoke-direct {p0, p2}, Lcom/asus/livewallpaper/zf8livewallpaper/b;-><init>(Landroid/service/wallpaper/WallpaperService;)V

    return-void
.end method


# virtual methods
.method public b(JJ)V
    .locals 0

    cmp-long p3, p1, p3

    if-nez p3, :cond_0

    return-void

    :cond_0
    iget-boolean p3, p0, Lcom/asus/livewallpaper/zf8livewallpaper/b;->f:Z

    if-eqz p3, :cond_1

    const-wide/16 p3, 0x672

    cmp-long p1, p1, p3

    if-ltz p1, :cond_3

    goto :goto_0

    :cond_1
    iget-object p3, p0, Lcom/asus/livewallpaper/zf8livewallpaper/b;->d:Li/c;

    invoke-virtual {p3}, Li/c;->i()J

    move-result-wide p3

    cmp-long p1, p1, p3

    if-gez p1, :cond_2

    iget-object p1, p0, Lcom/asus/livewallpaper/zf8livewallpaper/b;->d:Li/c;

    instance-of p2, p1, Li/i;

    if-eqz p2, :cond_3

    check-cast p1, Li/i;

    invoke-virtual {p1}, Li/i;->s()Z

    move-result p1

    if-nez p1, :cond_3

    :cond_2
    :goto_0
    iget-object p0, p0, Lcom/asus/livewallpaper/zf8livewallpaper/b;->b:Lc/d;

    invoke-virtual {p0}, Lc/d;->C()V

    :cond_3
    return-void
.end method

.method public onCreate(Landroid/view/SurfaceHolder;)V
    .locals 3

    new-instance v0, Lcom/asus/livewallpaper/zf8livewallpaper/c;

    iget-object v1, p0, Lcom/asus/livewallpaper/zf8livewallpaper/b;->a:Landroid/service/wallpaper/WallpaperService;

    invoke-direct {v0, p0, v1}, Lcom/asus/livewallpaper/zf8livewallpaper/c;-><init>(Lcom/asus/livewallpaper/zf8livewallpaper/b;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/asus/livewallpaper/zf8livewallpaper/b;->c:Lcom/asus/livewallpaper/zf8livewallpaper/c;

    iget-object v0, p0, Lcom/asus/livewallpaper/zf8livewallpaper/b;->e:Ljava/util/ArrayList;

    invoke-virtual {p0}, Landroid/service/wallpaper/WallpaperService$Engine;->isPreview()Z

    move-result v1

    if-eqz v1, :cond_0

    new-instance v1, Li/e;

    iget-object v2, p0, Lcom/asus/livewallpaper/zf8livewallpaper/b;->a:Landroid/service/wallpaper/WallpaperService;

    invoke-direct {v1, v2}, Li/e;-><init>(Landroid/content/Context;)V

    goto :goto_0

    :cond_0
    new-instance v1, Li/i;

    iget-object v2, p0, Lcom/asus/livewallpaper/zf8livewallpaper/b;->a:Landroid/service/wallpaper/WallpaperService;

    invoke-direct {v1, v2}, Li/i;-><init>(Landroid/content/Context;)V

    :goto_0
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {p0}, Lcom/asus/livewallpaper/zf8livewallpaper/b;->A()V

    invoke-super {p0, p1}, Lcom/asus/livewallpaper/zf8livewallpaper/b;->onCreate(Landroid/view/SurfaceHolder;)V

    return-void
.end method

.method protected x(ZZZ)V
    .locals 2

    iput-boolean p1, p0, Lcom/asus/livewallpaper/zf8livewallpaper/b;->f:Z

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/asus/livewallpaper/zf8livewallpaper/b;->b:Lc/d;

    invoke-virtual {p1}, Lc/d;->s()V

    iget-object p1, p0, Lcom/asus/livewallpaper/zf8livewallpaper/b;->b:Lc/d;

    const-wide/16 v0, 0x0

    invoke-virtual {p1, v0, v1}, Lc/d;->y(J)V

    const-wide/16 v0, -0x1

    goto :goto_0

    :cond_0
    if-eqz p2, :cond_1

    iget-object p1, p0, Lcom/asus/livewallpaper/zf8livewallpaper/b;->b:Lc/d;

    invoke-virtual {p1}, Lc/d;->s()V

    :cond_1
    iget-object p1, p0, Lcom/asus/livewallpaper/zf8livewallpaper/b;->b:Lc/d;

    invoke-virtual {p1}, Lc/d;->n()J

    move-result-wide v0

    :goto_0
    iget-object p1, p0, Lcom/asus/livewallpaper/zf8livewallpaper/b;->d:Li/c;

    check-cast p1, Li/i;

    invoke-virtual {p1, v0, v1, p2}, Li/i;->t(JZ)V

    iget-object p1, p0, Lcom/asus/livewallpaper/zf8livewallpaper/b;->b:Lc/d;

    invoke-virtual {p1}, Lc/d;->o()Z

    move-result p1

    if-nez p1, :cond_2

    if-eqz p3, :cond_2

    if-nez p2, :cond_2

    iget-object p0, p0, Lcom/asus/livewallpaper/zf8livewallpaper/b;->b:Lc/d;

    invoke-virtual {p0}, Lc/d;->t()V

    goto :goto_1

    :cond_2
    if-nez p3, :cond_3

    if-eqz p2, :cond_4

    :cond_3
    iget-object p0, p0, Lcom/asus/livewallpaper/zf8livewallpaper/b;->c:Lcom/asus/livewallpaper/zf8livewallpaper/c;

    invoke-virtual {p0}, Landroid/opengl/GLSurfaceView;->requestRender()V

    :cond_4
    :goto_1
    return-void
.end method
