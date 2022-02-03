.class Lcom/asus/livewallpaper/zf8livewallpaper/b$f;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/asus/livewallpaper/zf8livewallpaper/b;->onDestroy()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lc/c;

.field final synthetic b:Lcom/asus/livewallpaper/zf8livewallpaper/b;


# direct methods
.method constructor <init>(Lcom/asus/livewallpaper/zf8livewallpaper/b;Lc/c;)V
    .locals 0

    iput-object p1, p0, Lcom/asus/livewallpaper/zf8livewallpaper/b$f;->b:Lcom/asus/livewallpaper/zf8livewallpaper/b;

    iput-object p2, p0, Lcom/asus/livewallpaper/zf8livewallpaper/b$f;->a:Lc/c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/asus/livewallpaper/zf8livewallpaper/b$f;->a:Lc/c;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lc/c;->b()V

    :cond_0
    iget-object v0, p0, Lcom/asus/livewallpaper/zf8livewallpaper/b$f;->b:Lcom/asus/livewallpaper/zf8livewallpaper/b;

    invoke-static {v0}, Lcom/asus/livewallpaper/zf8livewallpaper/b;->p(Lcom/asus/livewallpaper/zf8livewallpaper/b;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/asus/livewallpaper/zf8livewallpaper/b$f$a;

    invoke-direct {v1, p0}, Lcom/asus/livewallpaper/zf8livewallpaper/b$f$a;-><init>(Lcom/asus/livewallpaper/zf8livewallpaper/b$f;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
