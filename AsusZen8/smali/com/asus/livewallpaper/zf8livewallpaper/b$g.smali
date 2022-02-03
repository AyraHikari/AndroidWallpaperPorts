.class Lcom/asus/livewallpaper/zf8livewallpaper/b$g;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/asus/livewallpaper/zf8livewallpaper/b;->A()V
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

    iput-object p1, p0, Lcom/asus/livewallpaper/zf8livewallpaper/b$g;->b:Lcom/asus/livewallpaper/zf8livewallpaper/b;

    iput-object p2, p0, Lcom/asus/livewallpaper/zf8livewallpaper/b$g;->a:Lc/c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 0

    iget-object p0, p0, Lcom/asus/livewallpaper/zf8livewallpaper/b$g;->a:Lc/c;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lc/c;->b()V

    :cond_0
    return-void
.end method
