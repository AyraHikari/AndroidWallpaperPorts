.class Lcom/asus/livewallpaper/zf8livewallpaper/a$a;
.super Lb/a$a;
.source ""


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

    iput-object p1, p0, Lcom/asus/livewallpaper/zf8livewallpaper/a$a;->a:Lcom/asus/livewallpaper/zf8livewallpaper/a;

    invoke-direct {p0}, Lb/a$a;-><init>()V

    return-void
.end method


# virtual methods
.method public a(ZLjava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lcom/asus/livewallpaper/zf8livewallpaper/a$a;->a:Lcom/asus/livewallpaper/zf8livewallpaper/a;

    invoke-static {v0}, Lcom/asus/livewallpaper/zf8livewallpaper/a;->b(Lcom/asus/livewallpaper/zf8livewallpaper/a;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/asus/livewallpaper/zf8livewallpaper/a$a$a;

    invoke-direct {v1, p0, p1, p2}, Lcom/asus/livewallpaper/zf8livewallpaper/a$a$a;-><init>(Lcom/asus/livewallpaper/zf8livewallpaper/a$a;ZLjava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public c(Ljava/lang/String;Z)V
    .locals 2

    iget-object v0, p0, Lcom/asus/livewallpaper/zf8livewallpaper/a$a;->a:Lcom/asus/livewallpaper/zf8livewallpaper/a;

    invoke-static {v0}, Lcom/asus/livewallpaper/zf8livewallpaper/a;->b(Lcom/asus/livewallpaper/zf8livewallpaper/a;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/asus/livewallpaper/zf8livewallpaper/a$a$c;

    invoke-direct {v1, p0, p1, p2}, Lcom/asus/livewallpaper/zf8livewallpaper/a$a$c;-><init>(Lcom/asus/livewallpaper/zf8livewallpaper/a$a;Ljava/lang/String;Z)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public e(ZLjava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lcom/asus/livewallpaper/zf8livewallpaper/a$a;->a:Lcom/asus/livewallpaper/zf8livewallpaper/a;

    invoke-static {v0}, Lcom/asus/livewallpaper/zf8livewallpaper/a;->b(Lcom/asus/livewallpaper/zf8livewallpaper/a;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/asus/livewallpaper/zf8livewallpaper/a$a$b;

    invoke-direct {v1, p0, p1, p2}, Lcom/asus/livewallpaper/zf8livewallpaper/a$a$b;-><init>(Lcom/asus/livewallpaper/zf8livewallpaper/a$a;ZLjava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
