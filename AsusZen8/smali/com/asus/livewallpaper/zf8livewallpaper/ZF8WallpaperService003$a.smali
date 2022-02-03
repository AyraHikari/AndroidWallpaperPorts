.class public Lcom/asus/livewallpaper/zf8livewallpaper/ZF8WallpaperService003$a;
.super Lcom/asus/livewallpaper/zf8livewallpaper/b;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/asus/livewallpaper/zf8livewallpaper/ZF8WallpaperService003;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "a"
.end annotation


# instance fields
.field final synthetic D:Lcom/asus/livewallpaper/zf8livewallpaper/ZF8WallpaperService003;


# direct methods
.method constructor <init>(Lcom/asus/livewallpaper/zf8livewallpaper/ZF8WallpaperService003;Landroid/service/wallpaper/WallpaperService;)V
    .locals 0

    iput-object p1, p0, Lcom/asus/livewallpaper/zf8livewallpaper/ZF8WallpaperService003$a;->D:Lcom/asus/livewallpaper/zf8livewallpaper/ZF8WallpaperService003;

    invoke-direct {p0, p2}, Lcom/asus/livewallpaper/zf8livewallpaper/b;-><init>(Landroid/service/wallpaper/WallpaperService;)V

    return-void
.end method


# virtual methods
.method public b(JJ)V
    .locals 4

    cmp-long p3, p1, p3

    if-nez p3, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Landroid/service/wallpaper/WallpaperService$Engine;->isPreview()Z

    move-result p3

    const-wide/16 v0, 0x9c4

    if-eqz p3, :cond_2

    cmp-long p1, p1, v0

    if-ltz p1, :cond_6

    :cond_1
    iget-object p0, p0, Lcom/asus/livewallpaper/zf8livewallpaper/b;->b:Lc/d;

    invoke-virtual {p0}, Lc/d;->s()V

    goto/16 :goto_1

    :cond_2
    iget-boolean p3, p0, Lcom/asus/livewallpaper/zf8livewallpaper/b;->f:Z

    if-eqz p3, :cond_3

    cmp-long p1, p1, v0

    if-ltz p1, :cond_6

    iget-object p1, p0, Lcom/asus/livewallpaper/zf8livewallpaper/b;->a:Landroid/service/wallpaper/WallpaperService;

    invoke-static {p1}, Lc/g;->q(Landroid/content/Context;)Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p0, p0, Lcom/asus/livewallpaper/zf8livewallpaper/b;->b:Lc/d;

    invoke-virtual {p0}, Lc/d;->C()V

    goto :goto_1

    :cond_3
    sget-wide p3, Lg/f;->S:J

    const-wide/16 v0, 0x1172

    add-long/2addr p3, v0

    cmp-long p3, p1, p3

    if-gez p3, :cond_4

    iget-object p3, p0, Lcom/asus/livewallpaper/zf8livewallpaper/b;->d:Li/c;

    instance-of p4, p3, Li/j;

    if-eqz p4, :cond_6

    check-cast p3, Li/j;

    invoke-virtual {p3}, Li/j;->s()Z

    move-result p3

    if-nez p3, :cond_6

    :cond_4
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "onTimeChanged: time = "

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p4, ", sBootedTimeOutMs = "

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-wide v2, Lg/f;->S:J

    invoke-virtual {p3, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p4, ", checkLockVideoLayerIsVisible = "

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p4, p0, Lcom/asus/livewallpaper/zf8livewallpaper/b;->d:Li/c;

    instance-of v2, p4, Li/j;

    const/4 v3, 0x1

    if-eqz v2, :cond_5

    check-cast p4, Li/j;

    invoke-virtual {p4}, Li/j;->s()Z

    move-result p4

    if-nez p4, :cond_5

    move p4, v3

    goto :goto_0

    :cond_5
    const/4 p4, 0x0

    :goto_0
    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    const-string p4, "ZF8Engine003"

    invoke-static {p4, p3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-wide/16 p3, 0x0

    sput-wide p3, Lg/f;->S:J

    iget-object p3, p0, Lcom/asus/livewallpaper/zf8livewallpaper/b;->d:Li/c;

    check-cast p3, Li/j;

    invoke-virtual {p3, p1, p2, v3}, Li/j;->t(JZ)V

    iget-object p1, p0, Lcom/asus/livewallpaper/zf8livewallpaper/b;->b:Lc/d;

    invoke-virtual {p1}, Lc/d;->s()V

    iget-object p0, p0, Lcom/asus/livewallpaper/zf8livewallpaper/b;->b:Lc/d;

    invoke-virtual {p0, v0, v1}, Lc/d;->y(J)V

    :cond_6
    :goto_1
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

    new-instance v1, Li/f;

    iget-object v2, p0, Lcom/asus/livewallpaper/zf8livewallpaper/b;->a:Landroid/service/wallpaper/WallpaperService;

    invoke-direct {v1, v2}, Li/f;-><init>(Landroid/content/Context;)V

    goto :goto_0

    :cond_0
    new-instance v1, Li/j;

    iget-object v2, p0, Lcom/asus/livewallpaper/zf8livewallpaper/b;->a:Landroid/service/wallpaper/WallpaperService;

    invoke-direct {v1, v2}, Li/j;-><init>(Landroid/content/Context;)V

    :goto_0
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {p0}, Lcom/asus/livewallpaper/zf8livewallpaper/b;->A()V

    iget-object v0, p0, Lcom/asus/livewallpaper/zf8livewallpaper/ZF8WallpaperService003$a;->D:Lcom/asus/livewallpaper/zf8livewallpaper/ZF8WallpaperService003;

    const-string v1, "notification"

    invoke-virtual {v0, v1}, Landroid/service/wallpaper/WallpaperService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    if-eqz v0, :cond_1

    const-string v1, "channel_1"

    invoke-virtual {v0, v1}, Landroid/app/NotificationManager;->getNotificationChannel(Ljava/lang/String;)Landroid/app/NotificationChannel;

    move-result-object v1

    if-eqz v1, :cond_1

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/NotificationManager;->cancel(I)V

    :cond_1
    invoke-super {p0, p1}, Lcom/asus/livewallpaper/zf8livewallpaper/b;->onCreate(Landroid/view/SurfaceHolder;)V

    return-void
.end method

.method protected x(ZZZ)V
    .locals 6

    iput-boolean p1, p0, Lcom/asus/livewallpaper/zf8livewallpaper/b;->f:Z

    iget-object v0, p0, Lcom/asus/livewallpaper/zf8livewallpaper/b;->b:Lc/d;

    if-eqz p1, :cond_0

    invoke-virtual {v0}, Lc/d;->s()V

    iget-object v0, p0, Lcom/asus/livewallpaper/zf8livewallpaper/b;->b:Lc/d;

    const-wide/16 v1, 0x0

    invoke-virtual {v0, v1, v2}, Lc/d;->y(J)V

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Lc/d;->n()J

    move-result-wide v0

    const-wide/16 v2, 0x1172

    sget-wide v4, Lg/f;->S:J

    add-long/2addr v4, v2

    cmp-long v0, v0, v4

    if-gez v0, :cond_1

    iget-object v0, p0, Lcom/asus/livewallpaper/zf8livewallpaper/b;->b:Lc/d;

    invoke-virtual {v0}, Lc/d;->t()V

    goto :goto_0

    :cond_1
    const/4 p2, 0x1

    :goto_0
    iget-object v0, p0, Lcom/asus/livewallpaper/zf8livewallpaper/b;->d:Li/c;

    check-cast v0, Li/j;

    const-wide/16 v1, -0x1

    invoke-virtual {v0, v1, v2, p2}, Li/j;->t(JZ)V

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
