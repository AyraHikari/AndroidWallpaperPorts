.class Lcom/asus/livewallpaper/zf8livewallpaper/b$e;
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

    iput-object p1, p0, Lcom/asus/livewallpaper/zf8livewallpaper/b$e;->a:Lcom/asus/livewallpaper/zf8livewallpaper/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    const-string v2, "GLEngine"

    const-string v3, "visibility runnable start"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v3, p0, Lcom/asus/livewallpaper/zf8livewallpaper/b$e;->a:Lcom/asus/livewallpaper/zf8livewallpaper/b;

    invoke-virtual {v3}, Landroid/service/wallpaper/WallpaperService$Engine;->isPreview()Z

    move-result v3

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/asus/livewallpaper/zf8livewallpaper/b$e;->a:Lcom/asus/livewallpaper/zf8livewallpaper/b;

    invoke-virtual {v3}, Landroid/service/wallpaper/WallpaperService$Engine;->isVisible()Z

    move-result v3

    iget-object p0, p0, Lcom/asus/livewallpaper/zf8livewallpaper/b$e;->a:Lcom/asus/livewallpaper/zf8livewallpaper/b;

    iget-object p0, p0, Lcom/asus/livewallpaper/zf8livewallpaper/b;->b:Lc/d;

    if-eqz v3, :cond_0

    invoke-virtual {p0}, Lc/d;->t()V

    goto/16 :goto_0

    :cond_0
    invoke-virtual {p0}, Lc/d;->s()V

    goto/16 :goto_0

    :cond_1
    iget-object v3, p0, Lcom/asus/livewallpaper/zf8livewallpaper/b$e;->a:Lcom/asus/livewallpaper/zf8livewallpaper/b;

    invoke-virtual {v3}, Landroid/service/wallpaper/WallpaperService$Engine;->isVisible()Z

    move-result v3

    if-eqz v3, :cond_4

    iget-object v3, p0, Lcom/asus/livewallpaper/zf8livewallpaper/b$e;->a:Lcom/asus/livewallpaper/zf8livewallpaper/b;

    invoke-static {v3}, Lcom/asus/livewallpaper/zf8livewallpaper/b;->l(Lcom/asus/livewallpaper/zf8livewallpaper/b;)Landroid/os/Handler;

    move-result-object v3

    iget-object v4, p0, Lcom/asus/livewallpaper/zf8livewallpaper/b$e;->a:Lcom/asus/livewallpaper/zf8livewallpaper/b;

    invoke-static {v4}, Lcom/asus/livewallpaper/zf8livewallpaper/b;->k(Lcom/asus/livewallpaper/zf8livewallpaper/b;)Ljava/lang/Runnable;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    iget-object v3, p0, Lcom/asus/livewallpaper/zf8livewallpaper/b$e;->a:Lcom/asus/livewallpaper/zf8livewallpaper/b;

    iget-object v3, v3, Lcom/asus/livewallpaper/zf8livewallpaper/b;->a:Landroid/service/wallpaper/WallpaperService;

    invoke-static {v3}, Lc/g;->l(Landroid/content/Context;)Z

    move-result v3

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/asus/livewallpaper/zf8livewallpaper/b$e;->a:Lcom/asus/livewallpaper/zf8livewallpaper/b;

    iget-boolean v6, v3, Lcom/asus/livewallpaper/zf8livewallpaper/b;->h:Z

    if-eqz v6, :cond_2

    invoke-static {v3}, Lcom/asus/livewallpaper/zf8livewallpaper/b;->m(Lcom/asus/livewallpaper/zf8livewallpaper/b;)Z

    move-result v3

    if-eqz v3, :cond_3

    :cond_2
    iget-object v3, p0, Lcom/asus/livewallpaper/zf8livewallpaper/b$e;->a:Lcom/asus/livewallpaper/zf8livewallpaper/b;

    invoke-static {v3}, Lcom/asus/livewallpaper/zf8livewallpaper/b;->n(Lcom/asus/livewallpaper/zf8livewallpaper/b;)Lcom/asus/livewallpaper/zf8livewallpaper/a;

    move-result-object v3

    invoke-virtual {v3}, Lcom/asus/livewallpaper/zf8livewallpaper/a;->h()V

    iget-object v3, p0, Lcom/asus/livewallpaper/zf8livewallpaper/b$e;->a:Lcom/asus/livewallpaper/zf8livewallpaper/b;

    invoke-virtual {v3, v5, v4, v5}, Lcom/asus/livewallpaper/zf8livewallpaper/b;->x(ZZZ)V

    iget-object v3, p0, Lcom/asus/livewallpaper/zf8livewallpaper/b$e;->a:Lcom/asus/livewallpaper/zf8livewallpaper/b;

    invoke-static {v3, v4}, Lcom/asus/livewallpaper/zf8livewallpaper/b;->g(Lcom/asus/livewallpaper/zf8livewallpaper/b;Z)Z

    iget-object v3, p0, Lcom/asus/livewallpaper/zf8livewallpaper/b$e;->a:Lcom/asus/livewallpaper/zf8livewallpaper/b;

    invoke-static {v3}, Lcom/asus/livewallpaper/zf8livewallpaper/b;->l(Lcom/asus/livewallpaper/zf8livewallpaper/b;)Landroid/os/Handler;

    move-result-object v3

    iget-object v4, p0, Lcom/asus/livewallpaper/zf8livewallpaper/b$e;->a:Lcom/asus/livewallpaper/zf8livewallpaper/b;

    invoke-static {v4}, Lcom/asus/livewallpaper/zf8livewallpaper/b;->o(Lcom/asus/livewallpaper/zf8livewallpaper/b;)Ljava/lang/Runnable;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    iget-object v3, p0, Lcom/asus/livewallpaper/zf8livewallpaper/b$e;->a:Lcom/asus/livewallpaper/zf8livewallpaper/b;

    invoke-static {v3}, Lcom/asus/livewallpaper/zf8livewallpaper/b;->l(Lcom/asus/livewallpaper/zf8livewallpaper/b;)Landroid/os/Handler;

    move-result-object v3

    iget-object p0, p0, Lcom/asus/livewallpaper/zf8livewallpaper/b$e;->a:Lcom/asus/livewallpaper/zf8livewallpaper/b;

    invoke-static {p0}, Lcom/asus/livewallpaper/zf8livewallpaper/b;->o(Lcom/asus/livewallpaper/zf8livewallpaper/b;)Ljava/lang/Runnable;

    move-result-object p0

    invoke-virtual {v3, p0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    :cond_3
    iget-object p0, p0, Lcom/asus/livewallpaper/zf8livewallpaper/b$e;->a:Lcom/asus/livewallpaper/zf8livewallpaper/b;

    invoke-virtual {p0, v4, v5, v5}, Lcom/asus/livewallpaper/zf8livewallpaper/b;->x(ZZZ)V

    goto :goto_0

    :cond_4
    iget-object v3, p0, Lcom/asus/livewallpaper/zf8livewallpaper/b$e;->a:Lcom/asus/livewallpaper/zf8livewallpaper/b;

    invoke-static {v3}, Lcom/asus/livewallpaper/zf8livewallpaper/b;->l(Lcom/asus/livewallpaper/zf8livewallpaper/b;)Landroid/os/Handler;

    move-result-object v3

    iget-object v4, p0, Lcom/asus/livewallpaper/zf8livewallpaper/b$e;->a:Lcom/asus/livewallpaper/zf8livewallpaper/b;

    invoke-static {v4}, Lcom/asus/livewallpaper/zf8livewallpaper/b;->k(Lcom/asus/livewallpaper/zf8livewallpaper/b;)Ljava/lang/Runnable;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    iget-object v3, p0, Lcom/asus/livewallpaper/zf8livewallpaper/b$e;->a:Lcom/asus/livewallpaper/zf8livewallpaper/b;

    iget-boolean v4, v3, Lcom/asus/livewallpaper/zf8livewallpaper/b;->k:Z

    if-eqz v4, :cond_5

    iget-object v3, v3, Lcom/asus/livewallpaper/zf8livewallpaper/b;->b:Lc/d;

    invoke-virtual {v3}, Lc/d;->s()V

    iget-object p0, p0, Lcom/asus/livewallpaper/zf8livewallpaper/b$e;->a:Lcom/asus/livewallpaper/zf8livewallpaper/b;

    iget-object p0, p0, Lcom/asus/livewallpaper/zf8livewallpaper/b;->b:Lc/d;

    const-wide/16 v3, 0x0

    invoke-virtual {p0, v3, v4}, Lc/d;->y(J)V

    goto :goto_0

    :cond_5
    invoke-static {v3}, Lcom/asus/livewallpaper/zf8livewallpaper/b;->l(Lcom/asus/livewallpaper/zf8livewallpaper/b;)Landroid/os/Handler;

    move-result-object v3

    iget-object p0, p0, Lcom/asus/livewallpaper/zf8livewallpaper/b$e;->a:Lcom/asus/livewallpaper/zf8livewallpaper/b;

    invoke-static {p0}, Lcom/asus/livewallpaper/zf8livewallpaper/b;->k(Lcom/asus/livewallpaper/zf8livewallpaper/b;)Ljava/lang/Runnable;

    move-result-object p0

    const-wide/16 v4, 0x2ee

    invoke-virtual {v3, p0, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :goto_0
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "visibility runnable end, cost time: "

    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v3

    sub-long/2addr v3, v0

    invoke-virtual {p0, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
