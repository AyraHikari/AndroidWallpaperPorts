.class Lcom/asus/livewallpaper/zf8livewallpaper/b$b;
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

    iput-object p1, p0, Lcom/asus/livewallpaper/zf8livewallpaper/b$b;->a:Lcom/asus/livewallpaper/zf8livewallpaper/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/asus/livewallpaper/zf8livewallpaper/b$b;->a:Lcom/asus/livewallpaper/zf8livewallpaper/b;

    iget-object v0, v0, Lcom/asus/livewallpaper/zf8livewallpaper/b;->b:Lc/d;

    invoke-virtual {v0}, Lc/d;->s()V

    iget-object p0, p0, Lcom/asus/livewallpaper/zf8livewallpaper/b$b;->a:Lcom/asus/livewallpaper/zf8livewallpaper/b;

    iget-object p0, p0, Lcom/asus/livewallpaper/zf8livewallpaper/b;->b:Lc/d;

    const-wide/16 v0, 0x1172

    invoke-virtual {p0, v0, v1}, Lc/d;->y(J)V

    return-void
.end method
