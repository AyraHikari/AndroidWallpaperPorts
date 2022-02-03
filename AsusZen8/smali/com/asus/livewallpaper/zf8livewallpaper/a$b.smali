.class Lcom/asus/livewallpaper/zf8livewallpaper/a$b;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/asus/livewallpaper/zf8livewallpaper/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/asus/livewallpaper/zf8livewallpaper/a;


# direct methods
.method constructor <init>(Lcom/asus/livewallpaper/zf8livewallpaper/a;)V
    .locals 0

    iput-object p1, p0, Lcom/asus/livewallpaper/zf8livewallpaper/a$b;->a:Lcom/asus/livewallpaper/zf8livewallpaper/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Service connected = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "AsusKeyguardStatusWatcher"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p1, p0, Lcom/asus/livewallpaper/zf8livewallpaper/a$b;->a:Lcom/asus/livewallpaper/zf8livewallpaper/a;

    invoke-static {p2}, Lb/b$a;->f(Landroid/os/IBinder;)Lb/b;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/asus/livewallpaper/zf8livewallpaper/a;->d(Lcom/asus/livewallpaper/zf8livewallpaper/a;Lb/b;)Lb/b;

    :try_start_0
    iget-object p1, p0, Lcom/asus/livewallpaper/zf8livewallpaper/a$b;->a:Lcom/asus/livewallpaper/zf8livewallpaper/a;

    invoke-static {p1}, Lcom/asus/livewallpaper/zf8livewallpaper/a;->c(Lcom/asus/livewallpaper/zf8livewallpaper/a;)Lb/b;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/asus/livewallpaper/zf8livewallpaper/a$b;->a:Lcom/asus/livewallpaper/zf8livewallpaper/a;

    invoke-static {p1}, Lcom/asus/livewallpaper/zf8livewallpaper/a;->c(Lcom/asus/livewallpaper/zf8livewallpaper/a;)Lb/b;

    move-result-object p1

    iget-object p2, p0, Lcom/asus/livewallpaper/zf8livewallpaper/a$b;->a:Lcom/asus/livewallpaper/zf8livewallpaper/a;

    invoke-static {p2}, Lcom/asus/livewallpaper/zf8livewallpaper/a;->e(Lcom/asus/livewallpaper/zf8livewallpaper/a;)Lb/a;

    move-result-object p2

    invoke-interface {p1, p2}, Lb/b;->b(Lb/a;)V

    iget-object p0, p0, Lcom/asus/livewallpaper/zf8livewallpaper/a$b;->a:Lcom/asus/livewallpaper/zf8livewallpaper/a;

    const/4 p1, 0x1

    invoke-static {p0, p1}, Lcom/asus/livewallpaper/zf8livewallpaper/a;->f(Lcom/asus/livewallpaper/zf8livewallpaper/a;Z)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    const-string p1, "onServiceConnected: "

    invoke-static {v0, p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    :goto_0
    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Service disconnected = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "AsusKeyguardStatusWatcher"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p1, p0, Lcom/asus/livewallpaper/zf8livewallpaper/a$b;->a:Lcom/asus/livewallpaper/zf8livewallpaper/a;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/asus/livewallpaper/zf8livewallpaper/a;->f(Lcom/asus/livewallpaper/zf8livewallpaper/a;Z)Z

    iget-object p0, p0, Lcom/asus/livewallpaper/zf8livewallpaper/a$b;->a:Lcom/asus/livewallpaper/zf8livewallpaper/a;

    invoke-static {p0}, Lcom/asus/livewallpaper/zf8livewallpaper/a;->g(Lcom/asus/livewallpaper/zf8livewallpaper/a;)V

    return-void
.end method
