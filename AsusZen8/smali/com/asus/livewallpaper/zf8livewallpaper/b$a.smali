.class Lcom/asus/livewallpaper/zf8livewallpaper/b$a;
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

    iput-object p1, p0, Lcom/asus/livewallpaper/zf8livewallpaper/b$a;->a:Lcom/asus/livewallpaper/zf8livewallpaper/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 9

    iget-object v0, p0, Lcom/asus/livewallpaper/zf8livewallpaper/b$a;->a:Lcom/asus/livewallpaper/zf8livewallpaper/b;

    iget-object v0, v0, Lcom/asus/livewallpaper/zf8livewallpaper/b;->a:Landroid/service/wallpaper/WallpaperService;

    const-string v1, "GLEngine"

    if-nez v0, :cond_0

    const-string p0, "WallpaperService is null in CheckKeyguardGoingAwayRunnable."

    invoke-static {v1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    iget-object v0, p0, Lcom/asus/livewallpaper/zf8livewallpaper/b$a;->a:Lcom/asus/livewallpaper/zf8livewallpaper/b;

    iget-object v0, v0, Lcom/asus/livewallpaper/zf8livewallpaper/b;->a:Landroid/service/wallpaper/WallpaperService;

    invoke-static {v0}, Lc/g;->l(Landroid/content/Context;)Z

    move-result v0

    const/4 v4, 0x1

    xor-int/2addr v0, v4

    :cond_1
    if-nez v0, :cond_2

    iget-object v5, p0, Lcom/asus/livewallpaper/zf8livewallpaper/b$a;->a:Lcom/asus/livewallpaper/zf8livewallpaper/b;

    invoke-static {v5}, Lcom/asus/livewallpaper/zf8livewallpaper/b;->f(Lcom/asus/livewallpaper/zf8livewallpaper/b;)Z

    move-result v5

    if-nez v5, :cond_2

    const-wide/16 v5, 0x1

    :try_start_0
    invoke-static {v5, v6}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    :goto_0
    iget-object v0, p0, Lcom/asus/livewallpaper/zf8livewallpaper/b$a;->a:Lcom/asus/livewallpaper/zf8livewallpaper/b;

    iget-object v0, v0, Lcom/asus/livewallpaper/zf8livewallpaper/b;->a:Landroid/service/wallpaper/WallpaperService;

    invoke-static {v0}, Lc/g;->l(Landroid/content/Context;)Z

    move-result v0

    xor-int/2addr v0, v4

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v5

    sub-long/2addr v5, v2

    invoke-static {}, Lcom/asus/livewallpaper/zf8livewallpaper/b;->h()J

    move-result-wide v7

    cmp-long v5, v5, v7

    if-ltz v5, :cond_1

    const-string p0, "Real in KeyguardLock"

    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_2
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "wallpaperBackgroundRunnable: visible = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/asus/livewallpaper/zf8livewallpaper/b$a;->a:Lcom/asus/livewallpaper/zf8livewallpaper/b;

    invoke-virtual {v3}, Landroid/service/wallpaper/WallpaperService$Engine;->isVisible()Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, ", preview = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/asus/livewallpaper/zf8livewallpaper/b$a;->a:Lcom/asus/livewallpaper/zf8livewallpaper/b;

    invoke-virtual {v3}, Landroid/service/wallpaper/WallpaperService$Engine;->isPreview()Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, ", isReceiveKeyguardGoingAway = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/asus/livewallpaper/zf8livewallpaper/b$a;->a:Lcom/asus/livewallpaper/zf8livewallpaper/b;

    invoke-static {v3}, Lcom/asus/livewallpaper/zf8livewallpaper/b;->f(Lcom/asus/livewallpaper/zf8livewallpaper/b;)Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, ", isKeyguardGoingAway = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lj/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/asus/livewallpaper/zf8livewallpaper/b$a;->a:Lcom/asus/livewallpaper/zf8livewallpaper/b;

    invoke-static {v0}, Lcom/asus/livewallpaper/zf8livewallpaper/b;->f(Lcom/asus/livewallpaper/zf8livewallpaper/b;)Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/asus/livewallpaper/zf8livewallpaper/b$a;->a:Lcom/asus/livewallpaper/zf8livewallpaper/b;

    iget-object v0, v0, Lcom/asus/livewallpaper/zf8livewallpaper/b;->a:Landroid/service/wallpaper/WallpaperService;

    invoke-static {v0}, Lc/g;->p(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_3

    const-string v0, "Receive KeyguardGoingAway earlier than onVisibilityChanged, should direct fade out."

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p0, p0, Lcom/asus/livewallpaper/zf8livewallpaper/b$a;->a:Lcom/asus/livewallpaper/zf8livewallpaper/b;

    const/4 v0, 0x0

    invoke-virtual {p0}, Landroid/service/wallpaper/WallpaperService$Engine;->isVisible()Z

    move-result v1

    invoke-virtual {p0, v0, v4, v1}, Lcom/asus/livewallpaper/zf8livewallpaper/b;->x(ZZZ)V

    :cond_3
    return-void
.end method
