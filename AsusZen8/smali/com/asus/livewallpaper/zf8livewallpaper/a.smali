.class Lcom/asus/livewallpaper/zf8livewallpaper/a;
.super Ljava/lang/Object;
.source ""


# static fields
.field public static h:Ljava/lang/String; = "com.android.systemui"

.field public static i:Ljava/lang/String; = "com.asus.keyguard.module.statusnotifier.AsusKeyguardStatusNotifierService"


# instance fields
.field private a:Landroid/service/wallpaper/WallpaperService;

.field private b:Lcom/asus/livewallpaper/zf8livewallpaper/b;

.field private c:Z

.field private d:Landroid/os/Handler;

.field private e:Lb/b;

.field private f:Lb/a;

.field private g:Landroid/content/ServiceConnection;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method constructor <init>(Landroid/service/wallpaper/WallpaperService;Lcom/asus/livewallpaper/zf8livewallpaper/b;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/asus/livewallpaper/zf8livewallpaper/a;->c:Z

    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/asus/livewallpaper/zf8livewallpaper/a;->d:Landroid/os/Handler;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/asus/livewallpaper/zf8livewallpaper/a;->e:Lb/b;

    new-instance v0, Lcom/asus/livewallpaper/zf8livewallpaper/a$a;

    invoke-direct {v0, p0}, Lcom/asus/livewallpaper/zf8livewallpaper/a$a;-><init>(Lcom/asus/livewallpaper/zf8livewallpaper/a;)V

    iput-object v0, p0, Lcom/asus/livewallpaper/zf8livewallpaper/a;->f:Lb/a;

    new-instance v0, Lcom/asus/livewallpaper/zf8livewallpaper/a$b;

    invoke-direct {v0, p0}, Lcom/asus/livewallpaper/zf8livewallpaper/a$b;-><init>(Lcom/asus/livewallpaper/zf8livewallpaper/a;)V

    iput-object v0, p0, Lcom/asus/livewallpaper/zf8livewallpaper/a;->g:Landroid/content/ServiceConnection;

    iput-object p1, p0, Lcom/asus/livewallpaper/zf8livewallpaper/a;->a:Landroid/service/wallpaper/WallpaperService;

    iput-object p2, p0, Lcom/asus/livewallpaper/zf8livewallpaper/a;->b:Lcom/asus/livewallpaper/zf8livewallpaper/b;

    return-void
.end method

.method static synthetic a(Lcom/asus/livewallpaper/zf8livewallpaper/a;)Lcom/asus/livewallpaper/zf8livewallpaper/b;
    .locals 0

    iget-object p0, p0, Lcom/asus/livewallpaper/zf8livewallpaper/a;->b:Lcom/asus/livewallpaper/zf8livewallpaper/b;

    return-object p0
.end method

.method static synthetic b(Lcom/asus/livewallpaper/zf8livewallpaper/a;)Landroid/os/Handler;
    .locals 0

    iget-object p0, p0, Lcom/asus/livewallpaper/zf8livewallpaper/a;->d:Landroid/os/Handler;

    return-object p0
.end method

.method static synthetic c(Lcom/asus/livewallpaper/zf8livewallpaper/a;)Lb/b;
    .locals 0

    iget-object p0, p0, Lcom/asus/livewallpaper/zf8livewallpaper/a;->e:Lb/b;

    return-object p0
.end method

.method static synthetic d(Lcom/asus/livewallpaper/zf8livewallpaper/a;Lb/b;)Lb/b;
    .locals 0

    iput-object p1, p0, Lcom/asus/livewallpaper/zf8livewallpaper/a;->e:Lb/b;

    return-object p1
.end method

.method static synthetic e(Lcom/asus/livewallpaper/zf8livewallpaper/a;)Lb/a;
    .locals 0

    iget-object p0, p0, Lcom/asus/livewallpaper/zf8livewallpaper/a;->f:Lb/a;

    return-object p0
.end method

.method static synthetic f(Lcom/asus/livewallpaper/zf8livewallpaper/a;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/asus/livewallpaper/zf8livewallpaper/a;->c:Z

    return p1
.end method

.method static synthetic g(Lcom/asus/livewallpaper/zf8livewallpaper/a;)V
    .locals 0

    invoke-direct {p0}, Lcom/asus/livewallpaper/zf8livewallpaper/a;->j()V

    return-void
.end method

.method private j()V
    .locals 2

    :try_start_0
    iget-object v0, p0, Lcom/asus/livewallpaper/zf8livewallpaper/a;->e:Lb/b;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/asus/livewallpaper/zf8livewallpaper/a;->f:Lb/a;

    invoke-interface {v0, v1}, Lb/b;->d(Lb/a;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/asus/livewallpaper/zf8livewallpaper/a;->e:Lb/b;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Landroid/os/RemoteException;->printStackTrace()V

    :cond_0
    :goto_0
    return-void
.end method


# virtual methods
.method h()V
    .locals 6

    const-string v0, "bindService: "

    const-string v1, "AsusKeyguardStatusWatcher"

    iget-boolean v2, p0, Lcom/asus/livewallpaper/zf8livewallpaper/a;->c:Z

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/asus/livewallpaper/zf8livewallpaper/a;->a:Landroid/service/wallpaper/WallpaperService;

    invoke-virtual {v2}, Landroid/service/wallpaper/WallpaperService;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    :try_start_0
    new-instance v3, Landroid/content/ComponentName;

    sget-object v4, Lcom/asus/livewallpaper/zf8livewallpaper/a;->h:Ljava/lang/String;

    sget-object v5, Lcom/asus/livewallpaper/zf8livewallpaper/a;->i:Ljava/lang/String;

    invoke-direct {v3, v4, v5}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/content/pm/PackageManager;->getServiceInfo(Landroid/content/ComponentName;I)Landroid/content/pm/ServiceInfo;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v2

    invoke-static {v1, v0, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    :try_start_1
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    new-instance v3, Landroid/content/ComponentName;

    sget-object v4, Lcom/asus/livewallpaper/zf8livewallpaper/a;->h:Ljava/lang/String;

    sget-object v5, Lcom/asus/livewallpaper/zf8livewallpaper/a;->i:Ljava/lang/String;

    invoke-direct {v3, v4, v5}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    iget-object v3, p0, Lcom/asus/livewallpaper/zf8livewallpaper/a;->a:Landroid/service/wallpaper/WallpaperService;

    iget-object p0, p0, Lcom/asus/livewallpaper/zf8livewallpaper/a;->g:Landroid/content/ServiceConnection;

    const/4 v4, 0x1

    invoke-virtual {v3, v2, p0, v4}, Landroid/service/wallpaper/WallpaperService;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_1
    move-exception p0

    invoke-static {v1, v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    :goto_1
    return-void
.end method

.method i()V
    .locals 2

    iget-boolean v0, p0, Lcom/asus/livewallpaper/zf8livewallpaper/a;->c:Z

    if-eqz v0, :cond_0

    const-string v0, "AsusKeyguardStatusWatcher"

    const-string v1, "unbindService"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/asus/livewallpaper/zf8livewallpaper/a;->c:Z

    invoke-direct {p0}, Lcom/asus/livewallpaper/zf8livewallpaper/a;->j()V

    iget-object v0, p0, Lcom/asus/livewallpaper/zf8livewallpaper/a;->a:Landroid/service/wallpaper/WallpaperService;

    iget-object p0, p0, Lcom/asus/livewallpaper/zf8livewallpaper/a;->g:Landroid/content/ServiceConnection;

    invoke-virtual {v0, p0}, Landroid/service/wallpaper/WallpaperService;->unbindService(Landroid/content/ServiceConnection;)V

    :cond_0
    return-void
.end method
