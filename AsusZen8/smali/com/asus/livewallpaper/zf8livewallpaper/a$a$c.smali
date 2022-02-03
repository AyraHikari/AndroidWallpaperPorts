.class Lcom/asus/livewallpaper/zf8livewallpaper/a$a$c;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/asus/livewallpaper/zf8livewallpaper/a$a;->c(Ljava/lang/String;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Z

.field final synthetic c:Lcom/asus/livewallpaper/zf8livewallpaper/a$a;


# direct methods
.method constructor <init>(Lcom/asus/livewallpaper/zf8livewallpaper/a$a;Ljava/lang/String;Z)V
    .locals 0

    iput-object p1, p0, Lcom/asus/livewallpaper/zf8livewallpaper/a$a$c;->c:Lcom/asus/livewallpaper/zf8livewallpaper/a$a;

    iput-object p2, p0, Lcom/asus/livewallpaper/zf8livewallpaper/a$a$c;->a:Ljava/lang/String;

    iput-boolean p3, p0, Lcom/asus/livewallpaper/zf8livewallpaper/a$a$c;->b:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/asus/livewallpaper/zf8livewallpaper/a$a$c;->c:Lcom/asus/livewallpaper/zf8livewallpaper/a$a;

    iget-object v0, v0, Lcom/asus/livewallpaper/zf8livewallpaper/a$a;->a:Lcom/asus/livewallpaper/zf8livewallpaper/a;

    invoke-static {v0}, Lcom/asus/livewallpaper/zf8livewallpaper/a;->a(Lcom/asus/livewallpaper/zf8livewallpaper/a;)Lcom/asus/livewallpaper/zf8livewallpaper/b;

    move-result-object v0

    iget-object v1, p0, Lcom/asus/livewallpaper/zf8livewallpaper/a$a$c;->a:Ljava/lang/String;

    iget-boolean p0, p0, Lcom/asus/livewallpaper/zf8livewallpaper/a$a$c;->b:Z

    invoke-virtual {v0, v1, p0}, Lcom/asus/livewallpaper/zf8livewallpaper/b;->w(Ljava/lang/String;Z)V

    return-void
.end method
