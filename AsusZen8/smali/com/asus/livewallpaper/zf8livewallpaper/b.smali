.class public Lcom/asus/livewallpaper/zf8livewallpaper/b;
.super Landroid/service/wallpaper/WallpaperService$Engine;
.source ""

# interfaces
.implements Lc/d$b;
.implements Li/c$b;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/asus/livewallpaper/zf8livewallpaper/b$j;,
        Lcom/asus/livewallpaper/zf8livewallpaper/b$i;
    }
.end annotation


# static fields
.field private static B:J = 0xbb8L

.field public static C:I = 0xdac


# instance fields
.field private A:Ljava/lang/Runnable;

.field a:Landroid/service/wallpaper/WallpaperService;

.field b:Lc/d;

.field c:Lcom/asus/livewallpaper/zf8livewallpaper/c;

.field d:Li/c;

.field e:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Li/c;",
            ">;"
        }
    .end annotation
.end field

.field f:Z

.field private g:Lcom/asus/livewallpaper/zf8livewallpaper/a;

.field public h:Z

.field private i:Z

.field private j:Z

.field public k:Z

.field private l:Landroid/os/Handler;

.field private m:Landroid/os/Handler;

.field private n:Landroid/os/HandlerThread;

.field private o:Ljava/lang/Runnable;

.field private p:Ljava/lang/Runnable;

.field private q:Landroid/os/Handler;

.field private r:Landroid/os/HandlerThread;

.field private s:Ljava/lang/Runnable;

.field private t:Ljava/lang/Runnable;

.field private u:Landroid/os/Handler;

.field private v:Landroid/os/HandlerThread;

.field private w:Lcom/asus/livewallpaper/zf8livewallpaper/b$i;

.field private x:Landroid/os/Handler;

.field private y:Landroid/os/HandlerThread;

.field private z:Ljava/lang/Runnable;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method constructor <init>(Landroid/service/wallpaper/WallpaperService;)V
    .locals 4

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-direct {p0, p1}, Landroid/service/wallpaper/WallpaperService$Engine;-><init>(Landroid/service/wallpaper/WallpaperService;)V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/asus/livewallpaper/zf8livewallpaper/b;->e:Ljava/util/ArrayList;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/asus/livewallpaper/zf8livewallpaper/b;->f:Z

    iput-boolean v0, p0, Lcom/asus/livewallpaper/zf8livewallpaper/b;->h:Z

    iput-boolean v0, p0, Lcom/asus/livewallpaper/zf8livewallpaper/b;->i:Z

    iput-boolean v0, p0, Lcom/asus/livewallpaper/zf8livewallpaper/b;->j:Z

    iput-boolean v0, p0, Lcom/asus/livewallpaper/zf8livewallpaper/b;->k:Z

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/asus/livewallpaper/zf8livewallpaper/b;->m:Landroid/os/Handler;

    new-instance v1, Landroid/os/HandlerThread;

    const-string v2, "WallpaperBackgroundThread"

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;I)V

    iput-object v1, p0, Lcom/asus/livewallpaper/zf8livewallpaper/b;->n:Landroid/os/HandlerThread;

    new-instance v1, Lcom/asus/livewallpaper/zf8livewallpaper/b$a;

    invoke-direct {v1, p0}, Lcom/asus/livewallpaper/zf8livewallpaper/b$a;-><init>(Lcom/asus/livewallpaper/zf8livewallpaper/b;)V

    iput-object v1, p0, Lcom/asus/livewallpaper/zf8livewallpaper/b;->o:Ljava/lang/Runnable;

    new-instance v1, Lcom/asus/livewallpaper/zf8livewallpaper/b$b;

    invoke-direct {v1, p0}, Lcom/asus/livewallpaper/zf8livewallpaper/b$b;-><init>(Lcom/asus/livewallpaper/zf8livewallpaper/b;)V

    iput-object v1, p0, Lcom/asus/livewallpaper/zf8livewallpaper/b;->p:Ljava/lang/Runnable;

    iput-object v0, p0, Lcom/asus/livewallpaper/zf8livewallpaper/b;->q:Landroid/os/Handler;

    new-instance v1, Landroid/os/HandlerThread;

    const-string v2, "VisibilityChangedBackgroundThread"

    invoke-direct {v1, v2, v3}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;I)V

    iput-object v1, p0, Lcom/asus/livewallpaper/zf8livewallpaper/b;->r:Landroid/os/HandlerThread;

    new-instance v1, Lcom/asus/livewallpaper/zf8livewallpaper/b$c;

    invoke-direct {v1, p0}, Lcom/asus/livewallpaper/zf8livewallpaper/b$c;-><init>(Lcom/asus/livewallpaper/zf8livewallpaper/b;)V

    iput-object v1, p0, Lcom/asus/livewallpaper/zf8livewallpaper/b;->s:Ljava/lang/Runnable;

    new-instance v1, Lcom/asus/livewallpaper/zf8livewallpaper/b$d;

    invoke-direct {v1, p0}, Lcom/asus/livewallpaper/zf8livewallpaper/b$d;-><init>(Lcom/asus/livewallpaper/zf8livewallpaper/b;)V

    iput-object v1, p0, Lcom/asus/livewallpaper/zf8livewallpaper/b;->t:Ljava/lang/Runnable;

    iput-object v0, p0, Lcom/asus/livewallpaper/zf8livewallpaper/b;->u:Landroid/os/Handler;

    new-instance v1, Landroid/os/HandlerThread;

    const-string v2, "TimeOutCheckHandler"

    invoke-direct {v1, v2, v3}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;I)V

    iput-object v1, p0, Lcom/asus/livewallpaper/zf8livewallpaper/b;->v:Landroid/os/HandlerThread;

    new-instance v1, Lcom/asus/livewallpaper/zf8livewallpaper/b$i;

    invoke-direct {v1, p0}, Lcom/asus/livewallpaper/zf8livewallpaper/b$i;-><init>(Lcom/asus/livewallpaper/zf8livewallpaper/b;)V

    iput-object v1, p0, Lcom/asus/livewallpaper/zf8livewallpaper/b;->w:Lcom/asus/livewallpaper/zf8livewallpaper/b$i;

    iput-object v0, p0, Lcom/asus/livewallpaper/zf8livewallpaper/b;->x:Landroid/os/Handler;

    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "SeekToTimeOutCheckHandler"

    invoke-direct {v0, v1, v3}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;I)V

    iput-object v0, p0, Lcom/asus/livewallpaper/zf8livewallpaper/b;->y:Landroid/os/HandlerThread;

    new-instance v0, Lcom/asus/livewallpaper/zf8livewallpaper/b$e;

    invoke-direct {v0, p0}, Lcom/asus/livewallpaper/zf8livewallpaper/b$e;-><init>(Lcom/asus/livewallpaper/zf8livewallpaper/b;)V

    iput-object v0, p0, Lcom/asus/livewallpaper/zf8livewallpaper/b;->z:Ljava/lang/Runnable;

    new-instance v0, Lcom/asus/livewallpaper/zf8livewallpaper/b$h;

    invoke-direct {v0, p0}, Lcom/asus/livewallpaper/zf8livewallpaper/b$h;-><init>(Lcom/asus/livewallpaper/zf8livewallpaper/b;)V

    iput-object v0, p0, Lcom/asus/livewallpaper/zf8livewallpaper/b;->A:Ljava/lang/Runnable;

    iput-object p1, p0, Lcom/asus/livewallpaper/zf8livewallpaper/b;->a:Landroid/service/wallpaper/WallpaperService;

    return-void
.end method

.method private B(Ljava/lang/String;)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "start time out check from "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "GLEngine"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/asus/livewallpaper/zf8livewallpaper/b;->w:Lcom/asus/livewallpaper/zf8livewallpaper/b$i;

    invoke-virtual {v0, p1}, Lcom/asus/livewallpaper/zf8livewallpaper/b$i;->a(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/asus/livewallpaper/zf8livewallpaper/b;->s()Landroid/os/Handler;

    move-result-object p1

    iget-object p0, p0, Lcom/asus/livewallpaper/zf8livewallpaper/b;->w:Lcom/asus/livewallpaper/zf8livewallpaper/b$i;

    sget v0, Lcom/asus/livewallpaper/zf8livewallpaper/b;->C:I

    int-to-long v0, v0

    invoke-virtual {p1, p0, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method static synthetic f(Lcom/asus/livewallpaper/zf8livewallpaper/b;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/asus/livewallpaper/zf8livewallpaper/b;->j:Z

    return p0
.end method

.method static synthetic g(Lcom/asus/livewallpaper/zf8livewallpaper/b;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/asus/livewallpaper/zf8livewallpaper/b;->j:Z

    return p1
.end method

.method static synthetic h()J
    .locals 2

    sget-wide v0, Lcom/asus/livewallpaper/zf8livewallpaper/b;->B:J

    return-wide v0
.end method

.method static synthetic i(Lcom/asus/livewallpaper/zf8livewallpaper/b;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/asus/livewallpaper/zf8livewallpaper/b;->B(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic j(Lcom/asus/livewallpaper/zf8livewallpaper/b;)V
    .locals 0

    invoke-direct {p0}, Lcom/asus/livewallpaper/zf8livewallpaper/b;->y()V

    return-void
.end method

.method static synthetic k(Lcom/asus/livewallpaper/zf8livewallpaper/b;)Ljava/lang/Runnable;
    .locals 0

    iget-object p0, p0, Lcom/asus/livewallpaper/zf8livewallpaper/b;->p:Ljava/lang/Runnable;

    return-object p0
.end method

.method static synthetic l(Lcom/asus/livewallpaper/zf8livewallpaper/b;)Landroid/os/Handler;
    .locals 0

    invoke-direct {p0}, Lcom/asus/livewallpaper/zf8livewallpaper/b;->q()Landroid/os/Handler;

    move-result-object p0

    return-object p0
.end method

.method static synthetic m(Lcom/asus/livewallpaper/zf8livewallpaper/b;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/asus/livewallpaper/zf8livewallpaper/b;->i:Z

    return p0
.end method

.method static synthetic n(Lcom/asus/livewallpaper/zf8livewallpaper/b;)Lcom/asus/livewallpaper/zf8livewallpaper/a;
    .locals 0

    iget-object p0, p0, Lcom/asus/livewallpaper/zf8livewallpaper/b;->g:Lcom/asus/livewallpaper/zf8livewallpaper/a;

    return-object p0
.end method

.method static synthetic o(Lcom/asus/livewallpaper/zf8livewallpaper/b;)Ljava/lang/Runnable;
    .locals 0

    iget-object p0, p0, Lcom/asus/livewallpaper/zf8livewallpaper/b;->o:Ljava/lang/Runnable;

    return-object p0
.end method

.method static synthetic p(Lcom/asus/livewallpaper/zf8livewallpaper/b;)Landroid/os/Handler;
    .locals 0

    iget-object p0, p0, Lcom/asus/livewallpaper/zf8livewallpaper/b;->l:Landroid/os/Handler;

    return-object p0
.end method

.method private q()Landroid/os/Handler;
    .locals 2

    iget-object v0, p0, Lcom/asus/livewallpaper/zf8livewallpaper/b;->m:Landroid/os/Handler;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/asus/livewallpaper/zf8livewallpaper/b;->n:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    new-instance v0, Landroid/os/Handler;

    iget-object v1, p0, Lcom/asus/livewallpaper/zf8livewallpaper/b;->n:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/asus/livewallpaper/zf8livewallpaper/b;->m:Landroid/os/Handler;

    :cond_0
    iget-object p0, p0, Lcom/asus/livewallpaper/zf8livewallpaper/b;->m:Landroid/os/Handler;

    return-object p0
.end method

.method private y()V
    .locals 1

    invoke-virtual {p0}, Lcom/asus/livewallpaper/zf8livewallpaper/b;->s()Landroid/os/Handler;

    move-result-object v0

    iget-object p0, p0, Lcom/asus/livewallpaper/zf8livewallpaper/b;->w:Lcom/asus/livewallpaper/zf8livewallpaper/b$i;

    invoke-virtual {v0, p0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    return-void
.end method

.method public static z(Landroid/content/Context;)V
    .locals 3

    invoke-static {p0}, Landroid/app/WallpaperManager;->getInstance(Landroid/content/Context;)Landroid/app/WallpaperManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/WallpaperManager;->getWallpaperInfo()Landroid/app/WallpaperInfo;

    move-result-object v0

    new-instance v1, Landroid/content/ComponentName;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0}, Landroid/app/WallpaperInfo;->getServiceName()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v2, v0}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    const-class v2, Lcom/asus/livewallpaper/zf8livewallpaper/ZF8WallpaperService001;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v0, v2}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    new-instance v0, Landroid/content/Intent;

    const-class v2, Lcom/asus/livewallpaper/zf8livewallpaper/RestartLiveWallpaperService;

    invoke-direct {v0, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v1}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "extra.key.livewallpaper.component.name"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {p0, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    return-void
.end method


# virtual methods
.method A()V
    .locals 5

    iget-object v0, p0, Lcom/asus/livewallpaper/zf8livewallpaper/b;->b:Lc/d;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lc/d;->s()V

    iget-object v0, p0, Lcom/asus/livewallpaper/zf8livewallpaper/b;->b:Lc/d;

    invoke-virtual {v0}, Lc/d;->l()Lc/c;

    move-result-object v0

    iget-object v2, p0, Lcom/asus/livewallpaper/zf8livewallpaper/b;->b:Lc/d;

    invoke-virtual {v2, p0}, Lc/d;->D(Lc/d$b;)V

    goto :goto_0

    :cond_0
    move-object v0, v1

    :goto_0
    new-instance v2, Lc/d;

    new-instance v3, Lc/c;

    invoke-direct {v3}, Lc/c;-><init>()V

    invoke-direct {v2, v3}, Lc/d;-><init>(Lc/c;)V

    invoke-virtual {v2, p0}, Lc/d;->v(Lc/d$b;)V

    invoke-virtual {p0}, Lcom/asus/livewallpaper/zf8livewallpaper/b;->r()Landroid/os/Handler;

    move-result-object v3

    invoke-virtual {v2, v3}, Lc/d;->z(Landroid/os/Handler;)V

    iget-object v3, p0, Lcom/asus/livewallpaper/zf8livewallpaper/b;->w:Lcom/asus/livewallpaper/zf8livewallpaper/b$i;

    invoke-virtual {v2, v3}, Lc/d;->A(Ljava/lang/Runnable;)V

    iput-object v2, p0, Lcom/asus/livewallpaper/zf8livewallpaper/b;->b:Lc/d;

    iget-object v3, p0, Lcom/asus/livewallpaper/zf8livewallpaper/b;->c:Lcom/asus/livewallpaper/zf8livewallpaper/c;

    invoke-virtual {v3, v2}, Lcom/asus/livewallpaper/zf8livewallpaper/c;->setPlayer(Lc/d;)V

    iget-object v3, p0, Lcom/asus/livewallpaper/zf8livewallpaper/b;->c:Lcom/asus/livewallpaper/zf8livewallpaper/c;

    new-instance v4, Lcom/asus/livewallpaper/zf8livewallpaper/b$g;

    invoke-direct {v4, p0, v0}, Lcom/asus/livewallpaper/zf8livewallpaper/b$g;-><init>(Lcom/asus/livewallpaper/zf8livewallpaper/b;Lc/c;)V

    invoke-virtual {v3, v4}, Landroid/opengl/GLSurfaceView;->queueEvent(Ljava/lang/Runnable;)V

    iget-object v0, p0, Lcom/asus/livewallpaper/zf8livewallpaper/b;->d:Li/c;

    if-eqz v0, :cond_1

    invoke-virtual {v0, v1}, Li/c;->o(Li/c$b;)V

    :cond_1
    iget-object v0, p0, Lcom/asus/livewallpaper/zf8livewallpaper/b;->e:Ljava/util/ArrayList;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Li/c;

    iput-object v0, p0, Lcom/asus/livewallpaper/zf8livewallpaper/b;->d:Li/c;

    invoke-virtual {v0, p0}, Li/c;->o(Li/c$b;)V

    iget-object v0, p0, Lcom/asus/livewallpaper/zf8livewallpaper/b;->d:Li/c;

    invoke-virtual {v0, v2}, Li/c;->p(Lc/d;)V

    invoke-virtual {p0}, Lcom/asus/livewallpaper/zf8livewallpaper/b;->t()Landroid/os/Handler;

    move-result-object v0

    iget-object p0, p0, Lcom/asus/livewallpaper/zf8livewallpaper/b;->A:Ljava/lang/Runnable;

    invoke-virtual {v0, p0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public a(Lc/d;)V
    .locals 0

    iget-object p0, p0, Lcom/asus/livewallpaper/zf8livewallpaper/b;->c:Lcom/asus/livewallpaper/zf8livewallpaper/c;

    invoke-virtual {p0}, Lcom/asus/livewallpaper/zf8livewallpaper/c;->a()V

    return-void
.end method

.method public c()V
    .locals 0

    return-void
.end method

.method public d()V
    .locals 0

    return-void
.end method

.method public e()V
    .locals 1

    invoke-virtual {p0}, Landroid/service/wallpaper/WallpaperService$Engine;->isVisible()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object p0, p0, Lcom/asus/livewallpaper/zf8livewallpaper/b;->b:Lc/d;

    invoke-virtual {p0}, Lc/d;->C()V

    :cond_0
    return-void
.end method

.method public onCreate(Landroid/view/SurfaceHolder;)V
    .locals 1

    invoke-super {p0, p1}, Landroid/service/wallpaper/WallpaperService$Engine;->onCreate(Landroid/view/SurfaceHolder;)V

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "onCreate: preview = "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroid/service/wallpaper/WallpaperService$Engine;->isPreview()Z

    move-result v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v0, ", version = "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/asus/livewallpaper/zf8livewallpaper/b;->a:Landroid/service/wallpaper/WallpaperService;

    invoke-static {v0}, Lc/g;->h(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "GLEngine"

    invoke-static {v0, p1}, Lj/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    new-instance p1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {p1, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object p1, p0, Lcom/asus/livewallpaper/zf8livewallpaper/b;->l:Landroid/os/Handler;

    new-instance p1, Lcom/asus/livewallpaper/zf8livewallpaper/a;

    iget-object v0, p0, Lcom/asus/livewallpaper/zf8livewallpaper/b;->a:Landroid/service/wallpaper/WallpaperService;

    invoke-direct {p1, v0, p0}, Lcom/asus/livewallpaper/zf8livewallpaper/a;-><init>(Landroid/service/wallpaper/WallpaperService;Lcom/asus/livewallpaper/zf8livewallpaper/b;)V

    iput-object p1, p0, Lcom/asus/livewallpaper/zf8livewallpaper/b;->g:Lcom/asus/livewallpaper/zf8livewallpaper/a;

    invoke-virtual {p0}, Landroid/service/wallpaper/WallpaperService$Engine;->isPreview()Z

    move-result p1

    if-nez p1, :cond_0

    iget-object p0, p0, Lcom/asus/livewallpaper/zf8livewallpaper/b;->g:Lcom/asus/livewallpaper/zf8livewallpaper/a;

    invoke-virtual {p0}, Lcom/asus/livewallpaper/zf8livewallpaper/a;->h()V

    :cond_0
    return-void
.end method

.method public onDestroy()V
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onDestroy: preview = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroid/service/wallpaper/WallpaperService$Engine;->isPreview()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "GLEngine"

    invoke-static {v1, v0}, Lj/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/asus/livewallpaper/zf8livewallpaper/b;->g:Lcom/asus/livewallpaper/zf8livewallpaper/a;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/asus/livewallpaper/zf8livewallpaper/a;->i()V

    :cond_0
    iget-object v0, p0, Lcom/asus/livewallpaper/zf8livewallpaper/b;->r:Landroid/os/HandlerThread;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/os/HandlerThread;->quitSafely()Z

    :cond_1
    iget-object v0, p0, Lcom/asus/livewallpaper/zf8livewallpaper/b;->v:Landroid/os/HandlerThread;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Landroid/os/HandlerThread;->quitSafely()Z

    :cond_2
    iget-object v0, p0, Lcom/asus/livewallpaper/zf8livewallpaper/b;->y:Landroid/os/HandlerThread;

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Landroid/os/HandlerThread;->quitSafely()Z

    :cond_3
    iget-object v0, p0, Lcom/asus/livewallpaper/zf8livewallpaper/b;->b:Lc/d;

    if-eqz v0, :cond_4

    invoke-virtual {v0, p0}, Lc/d;->D(Lc/d$b;)V

    iget-object v0, p0, Lcom/asus/livewallpaper/zf8livewallpaper/b;->b:Lc/d;

    invoke-virtual {v0}, Lc/d;->l()Lc/c;

    move-result-object v0

    iget-object v1, p0, Lcom/asus/livewallpaper/zf8livewallpaper/b;->c:Lcom/asus/livewallpaper/zf8livewallpaper/c;

    new-instance v2, Lcom/asus/livewallpaper/zf8livewallpaper/b$f;

    invoke-direct {v2, p0, v0}, Lcom/asus/livewallpaper/zf8livewallpaper/b$f;-><init>(Lcom/asus/livewallpaper/zf8livewallpaper/b;Lc/c;)V

    invoke-virtual {v1, v2}, Landroid/opengl/GLSurfaceView;->queueEvent(Ljava/lang/Runnable;)V

    :cond_4
    iget-object v0, p0, Lcom/asus/livewallpaper/zf8livewallpaper/b;->n:Landroid/os/HandlerThread;

    if-eqz v0, :cond_5

    invoke-virtual {v0}, Landroid/os/HandlerThread;->quitSafely()Z

    :cond_5
    invoke-super {p0}, Landroid/service/wallpaper/WallpaperService$Engine;->onDestroy()V

    return-void
.end method

.method public onVisibilityChanged(Z)V
    .locals 4

    invoke-super {p0, p1}, Landroid/service/wallpaper/WallpaperService$Engine;->onVisibilityChanged(Z)V

    iget-object v0, p0, Lcom/asus/livewallpaper/zf8livewallpaper/b;->a:Landroid/service/wallpaper/WallpaperService;

    const-string v1, "GLEngine"

    if-nez v0, :cond_0

    const-string p0, "WallpaperService is null in onVisibilityChanged."

    invoke-static {v1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    invoke-static {v0}, Lc/g;->p(Landroid/content/Context;)Z

    move-result v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onVisibilityChanged: visible = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, ", preview = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroid/service/wallpaper/WallpaperService$Engine;->isPreview()Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, ", isKeyGuardLock = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/asus/livewallpaper/zf8livewallpaper/b;->a:Landroid/service/wallpaper/WallpaperService;

    invoke-static {v3}, Lc/g;->l(Landroid/content/Context;)Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, ", isTopActivityAlive = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v0, ", mShouldPlayAnimation = "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v0, p0, Lcom/asus/livewallpaper/zf8livewallpaper/b;->i:Z

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lj/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/asus/livewallpaper/zf8livewallpaper/b;->q()Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/asus/livewallpaper/zf8livewallpaper/b;->s:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    invoke-direct {p0}, Lcom/asus/livewallpaper/zf8livewallpaper/b;->q()Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/asus/livewallpaper/zf8livewallpaper/b;->t:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    if-eqz p1, :cond_1

    invoke-direct {p0}, Lcom/asus/livewallpaper/zf8livewallpaper/b;->q()Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/asus/livewallpaper/zf8livewallpaper/b;->s:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_1
    iget-object v0, p0, Lcom/asus/livewallpaper/zf8livewallpaper/b;->z:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    if-nez p1, :cond_2

    invoke-direct {p0}, Lcom/asus/livewallpaper/zf8livewallpaper/b;->q()Landroid/os/Handler;

    move-result-object p1

    iget-object p0, p0, Lcom/asus/livewallpaper/zf8livewallpaper/b;->t:Ljava/lang/Runnable;

    invoke-virtual {p1, p0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_2
    return-void
.end method

.method protected r()Landroid/os/Handler;
    .locals 2

    iget-object v0, p0, Lcom/asus/livewallpaper/zf8livewallpaper/b;->x:Landroid/os/Handler;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/asus/livewallpaper/zf8livewallpaper/b;->y:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    new-instance v0, Landroid/os/Handler;

    iget-object v1, p0, Lcom/asus/livewallpaper/zf8livewallpaper/b;->y:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/asus/livewallpaper/zf8livewallpaper/b;->x:Landroid/os/Handler;

    :cond_0
    iget-object p0, p0, Lcom/asus/livewallpaper/zf8livewallpaper/b;->x:Landroid/os/Handler;

    return-object p0
.end method

.method protected s()Landroid/os/Handler;
    .locals 2

    iget-object v0, p0, Lcom/asus/livewallpaper/zf8livewallpaper/b;->u:Landroid/os/Handler;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/asus/livewallpaper/zf8livewallpaper/b;->v:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    new-instance v0, Landroid/os/Handler;

    iget-object v1, p0, Lcom/asus/livewallpaper/zf8livewallpaper/b;->v:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/asus/livewallpaper/zf8livewallpaper/b;->u:Landroid/os/Handler;

    :cond_0
    iget-object p0, p0, Lcom/asus/livewallpaper/zf8livewallpaper/b;->u:Landroid/os/Handler;

    return-object p0
.end method

.method public t()Landroid/os/Handler;
    .locals 2

    iget-object v0, p0, Lcom/asus/livewallpaper/zf8livewallpaper/b;->q:Landroid/os/Handler;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/asus/livewallpaper/zf8livewallpaper/b;->r:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    new-instance v0, Landroid/os/Handler;

    iget-object v1, p0, Lcom/asus/livewallpaper/zf8livewallpaper/b;->r:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/asus/livewallpaper/zf8livewallpaper/b;->q:Landroid/os/Handler;

    :cond_0
    iget-object p0, p0, Lcom/asus/livewallpaper/zf8livewallpaper/b;->q:Landroid/os/Handler;

    return-object p0
.end method

.method public u(ZLjava/lang/String;)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Receive onKeyguardOccludedChanged: somethingOnKeyguard = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", currentLiveWallpaper = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "empty"

    goto :goto_0

    :cond_0
    move-object v1, p2

    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "GLEngine"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Landroid/service/wallpaper/WallpaperService$Engine;->isPreview()Z

    move-result v0

    if-nez v0, :cond_1

    if-eqz p1, :cond_1

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_1

    const/4 p1, 0x1

    goto :goto_1

    :cond_1
    const/4 p1, 0x0

    :goto_1
    iput-boolean p1, p0, Lcom/asus/livewallpaper/zf8livewallpaper/b;->i:Z

    return-void
.end method

.method public v(ZLjava/lang/String;)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Receive onKeyguardShowingChanged: isShowing = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", currentLiveWallpaper = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "empty"

    goto :goto_0

    :cond_0
    move-object v1, p2

    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " isVisible = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroid/service/wallpaper/WallpaperService$Engine;->isVisible()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "GLEngine"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iput-boolean p1, p0, Lcom/asus/livewallpaper/zf8livewallpaper/b;->k:Z

    invoke-direct {p0}, Lcom/asus/livewallpaper/zf8livewallpaper/b;->q()Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/asus/livewallpaper/zf8livewallpaper/b;->p:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    invoke-virtual {p0}, Landroid/service/wallpaper/WallpaperService$Engine;->isPreview()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_1

    if-eqz p1, :cond_1

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_1

    const/4 p1, 0x1

    invoke-virtual {p0}, Landroid/service/wallpaper/WallpaperService$Engine;->isVisible()Z

    move-result p2

    invoke-virtual {p0, p1, v1, p2}, Lcom/asus/livewallpaper/zf8livewallpaper/b;->x(ZZZ)V

    goto :goto_1

    :cond_1
    invoke-virtual {p0}, Landroid/service/wallpaper/WallpaperService$Engine;->isVisible()Z

    move-result p1

    invoke-virtual {p0, v1, v1, p1}, Lcom/asus/livewallpaper/zf8livewallpaper/b;->x(ZZZ)V

    :goto_1
    return-void
.end method

.method public w(Ljava/lang/String;Z)V
    .locals 3

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/asus/livewallpaper/zf8livewallpaper/b;->j:Z

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Receive startKeyguardGoingAway: currentLiveWallpaper = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    const-string v2, "empty"

    goto :goto_0

    :cond_0
    move-object v2, p1

    :goto_0
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "\nisVisible = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroid/service/wallpaper/WallpaperService$Engine;->isVisible()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, " applyFadeoutAnimation = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "GLEngine"

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/asus/livewallpaper/zf8livewallpaper/b;->q()Landroid/os/Handler;

    move-result-object v1

    iget-object v2, p0, Lcom/asus/livewallpaper/zf8livewallpaper/b;->p:Ljava/lang/Runnable;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    invoke-virtual {p0}, Landroid/service/wallpaper/WallpaperService$Engine;->isPreview()Z

    move-result v1

    if-nez v1, :cond_3

    iget-boolean v1, p0, Lcom/asus/livewallpaper/zf8livewallpaper/b;->f:Z

    if-eqz v1, :cond_3

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    const/4 v1, 0x0

    if-nez p1, :cond_2

    if-nez p2, :cond_1

    goto :goto_1

    :cond_1
    move v0, v1

    :cond_2
    :goto_1
    invoke-virtual {p0}, Landroid/service/wallpaper/WallpaperService$Engine;->isVisible()Z

    move-result p1

    invoke-virtual {p0, v1, v0, p1}, Lcom/asus/livewallpaper/zf8livewallpaper/b;->x(ZZZ)V

    :cond_3
    return-void
.end method

.method protected x(ZZZ)V
    .locals 0

    const/4 p0, 0x0

    throw p0
.end method
