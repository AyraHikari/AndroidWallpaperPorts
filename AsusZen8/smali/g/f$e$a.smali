.class Lg/f$e$a;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lg/f$e;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lg/f$e;


# direct methods
.method constructor <init>(Lg/f$e;)V
    .locals 0

    iput-object p1, p0, Lg/f$e$a;->a:Lg/f$e;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v0, p0, Lg/f$e$a;->a:Lg/f$e;

    invoke-static {v0}, Lg/f$e;->a(Lg/f$e;)[Z

    move-result-object v0

    const/4 v1, 0x0

    aget-boolean v0, v0, v1

    if-eqz v0, :cond_0

    iget-object v0, p0, Lg/f$e$a;->a:Lg/f$e;

    iget-object v0, v0, Lg/f$e;->a:Ljava/lang/String;

    const-string v2, "Time out, break out this thread."

    invoke-static {v0, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lg/f$e$a;->a:Lg/f$e;

    invoke-static {v0}, Lg/f$e;->a(Lg/f$e;)[Z

    move-result-object v0

    aput-boolean v1, v0, v1

    iget-object v0, p0, Lg/f$e$a;->a:Lg/f$e;

    iget-object v0, v0, Lg/f$e;->e:Lg/f;

    invoke-static {v0}, Lg/f;->z(Lg/f;)Landroid/os/Handler;

    move-result-object v0

    iget-object p0, p0, Lg/f$e$a;->a:Lg/f$e;

    iget-object p0, p0, Lg/f$e;->d:Ljava/lang/Runnable;

    const-wide/16 v1, 0x3e8

    invoke-virtual {v0, p0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lg/f$e$a;->a:Lg/f$e;

    iget-object v0, v0, Lg/f$e;->a:Ljava/lang/String;

    const-string v1, "Time out, restart live wallpaper."

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p0, p0, Lg/f$e$a;->a:Lg/f$e;

    iget-object p0, p0, Lg/f$e;->e:Lg/f;

    iget-object p0, p0, Lg/c;->a:Landroid/content/Context;

    invoke-static {p0}, Lcom/asus/livewallpaper/zf8livewallpaper/b;->z(Landroid/content/Context;)V

    :goto_0
    return-void
.end method
