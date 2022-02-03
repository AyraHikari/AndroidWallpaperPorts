.class Lcom/asus/livewallpaper/zf8livewallpaper/b$d;
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

    iput-object p1, p0, Lcom/asus/livewallpaper/zf8livewallpaper/b$d;->a:Lcom/asus/livewallpaper/zf8livewallpaper/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/asus/livewallpaper/zf8livewallpaper/b$d;->a:Lcom/asus/livewallpaper/zf8livewallpaper/b;

    const-string v1, "SurfaceView pause"

    invoke-static {v0, v1}, Lcom/asus/livewallpaper/zf8livewallpaper/b;->i(Lcom/asus/livewallpaper/zf8livewallpaper/b;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/asus/livewallpaper/zf8livewallpaper/b$d;->a:Lcom/asus/livewallpaper/zf8livewallpaper/b;

    iget-object v0, v0, Lcom/asus/livewallpaper/zf8livewallpaper/b;->c:Lcom/asus/livewallpaper/zf8livewallpaper/c;

    invoke-virtual {v0}, Lcom/asus/livewallpaper/zf8livewallpaper/c;->onPause()V

    iget-object p0, p0, Lcom/asus/livewallpaper/zf8livewallpaper/b$d;->a:Lcom/asus/livewallpaper/zf8livewallpaper/b;

    invoke-static {p0}, Lcom/asus/livewallpaper/zf8livewallpaper/b;->j(Lcom/asus/livewallpaper/zf8livewallpaper/b;)V

    return-void
.end method
