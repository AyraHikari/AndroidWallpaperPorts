.class Lcom/asus/livewallpaper/zf8livewallpaper/b$h;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/asus/livewallpaper/zf8livewallpaper/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/asus/livewallpaper/zf8livewallpaper/b;


# direct methods
.method constructor <init>(Lcom/asus/livewallpaper/zf8livewallpaper/b;)V
    .locals 0

    iput-object p1, p0, Lcom/asus/livewallpaper/zf8livewallpaper/b$h;->a:Lcom/asus/livewallpaper/zf8livewallpaper/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    const-string v0, "GLEngine"

    const-string v1, "setup script"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/asus/livewallpaper/zf8livewallpaper/b$h;->a:Lcom/asus/livewallpaper/zf8livewallpaper/b;

    iget-object v1, v0, Lcom/asus/livewallpaper/zf8livewallpaper/b;->d:Li/c;

    iget-object v0, v0, Lcom/asus/livewallpaper/zf8livewallpaper/b;->b:Lc/d;

    invoke-virtual {v1, v0}, Li/c;->n(Lc/d;)V

    iget-object v0, p0, Lcom/asus/livewallpaper/zf8livewallpaper/b$h;->a:Lcom/asus/livewallpaper/zf8livewallpaper/b;

    iget-object v0, v0, Lcom/asus/livewallpaper/zf8livewallpaper/b;->c:Lcom/asus/livewallpaper/zf8livewallpaper/c;

    invoke-virtual {v0}, Landroid/opengl/GLSurfaceView;->requestRender()V

    iget-object v0, p0, Lcom/asus/livewallpaper/zf8livewallpaper/b$h;->a:Lcom/asus/livewallpaper/zf8livewallpaper/b;

    iget-object v0, v0, Lcom/asus/livewallpaper/zf8livewallpaper/b;->b:Lc/d;

    invoke-virtual {v0}, Lc/d;->m()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lg/d;

    invoke-virtual {v1}, Lg/d;->k()Z

    move-result v2

    if-eqz v2, :cond_0

    :catch_0
    :goto_0
    invoke-virtual {v1}, Lg/d;->h()Lg/f;

    move-result-object v2

    invoke-virtual {v2}, Lg/f;->Q()Z

    move-result v2

    if-nez v2, :cond_0

    :try_start_0
    iget-object v2, p0, Lcom/asus/livewallpaper/zf8livewallpaper/b$h;->a:Lcom/asus/livewallpaper/zf8livewallpaper/b;

    iget-object v3, v2, Lcom/asus/livewallpaper/zf8livewallpaper/b;->d:Li/c;

    iget-object v2, v2, Lcom/asus/livewallpaper/zf8livewallpaper/b;->b:Lc/d;

    invoke-virtual {v3, v2}, Li/c;->m(Lc/d;)Z

    move-result v2

    if-eqz v2, :cond_1

    return-void

    :cond_1
    const-wide/16 v2, 0x1

    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/asus/livewallpaper/zf8livewallpaper/b$h;->a:Lcom/asus/livewallpaper/zf8livewallpaper/b;

    iget-object v0, v0, Lcom/asus/livewallpaper/zf8livewallpaper/b;->b:Lc/d;

    invoke-virtual {v0}, Lc/d;->t()V

    iget-object p0, p0, Lcom/asus/livewallpaper/zf8livewallpaper/b$h;->a:Lcom/asus/livewallpaper/zf8livewallpaper/b;

    iget-object v0, p0, Lcom/asus/livewallpaper/zf8livewallpaper/b;->d:Li/c;

    iget-object p0, p0, Lcom/asus/livewallpaper/zf8livewallpaper/b;->b:Lc/d;

    invoke-virtual {v0, p0}, Li/c;->m(Lc/d;)Z

    return-void
.end method
