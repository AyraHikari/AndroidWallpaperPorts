.class Lcom/asus/livewallpaper/zf8livewallpaper/a$a$b;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/asus/livewallpaper/zf8livewallpaper/a$a;->e(ZLjava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Z

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Lcom/asus/livewallpaper/zf8livewallpaper/a$a;


# direct methods
.method constructor <init>(Lcom/asus/livewallpaper/zf8livewallpaper/a$a;ZLjava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/asus/livewallpaper/zf8livewallpaper/a$a$b;->c:Lcom/asus/livewallpaper/zf8livewallpaper/a$a;

    iput-boolean p2, p0, Lcom/asus/livewallpaper/zf8livewallpaper/a$a$b;->a:Z

    iput-object p3, p0, Lcom/asus/livewallpaper/zf8livewallpaper/a$a$b;->b:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/asus/livewallpaper/zf8livewallpaper/a$a$b;->c:Lcom/asus/livewallpaper/zf8livewallpaper/a$a;

    iget-object v0, v0, Lcom/asus/livewallpaper/zf8livewallpaper/a$a;->a:Lcom/asus/livewallpaper/zf8livewallpaper/a;

    invoke-static {v0}, Lcom/asus/livewallpaper/zf8livewallpaper/a;->a(Lcom/asus/livewallpaper/zf8livewallpaper/a;)Lcom/asus/livewallpaper/zf8livewallpaper/b;

    move-result-object v0

    iget-boolean v1, p0, Lcom/asus/livewallpaper/zf8livewallpaper/a$a$b;->a:Z

    iget-object p0, p0, Lcom/asus/livewallpaper/zf8livewallpaper/a$a$b;->b:Ljava/lang/String;

    invoke-virtual {v0, v1, p0}, Lcom/asus/livewallpaper/zf8livewallpaper/b;->u(ZLjava/lang/String;)V

    return-void
.end method
