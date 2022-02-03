.class Lc/d$a;
.super Ljava/lang/Thread;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lc/d;->t()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lc/d;


# direct methods
.method constructor <init>(Lc/d;)V
    .locals 0

    iput-object p1, p0, Lc/d$a;->a:Lc/d;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v0, p0, Lc/d$a;->a:Lc/d;

    invoke-static {v0}, Lc/d;->a(Lc/d;)Lc/d$d;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lc/d$a;->a:Lc/d;

    invoke-static {v0}, Lc/d;->a(Lc/d;)Lc/d$d;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->isAlive()Z

    move-result v0

    if-eqz v0, :cond_0

    :try_start_0
    iget-object v0, p0, Lc/d$a;->a:Lc/d;

    invoke-static {v0}, Lc/d;->a(Lc/d;)Lc/d$d;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->join()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    :cond_0
    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "play run: player time = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lc/d$a;->a:Lc/d;

    invoke-virtual {v1}, Lc/d;->n()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Player"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lc/d$a;->a:Lc/d;

    invoke-static {v0}, Lc/d;->c(Lc/d;)Lc/f;

    move-result-object v0

    invoke-virtual {v0}, Lc/f;->e()V

    iget-object v0, p0, Lc/d$a;->a:Lc/d;

    invoke-static {v0}, Lc/d;->d(Lc/d;)Lc/c;

    move-result-object v0

    invoke-virtual {v0}, Lc/c;->m()V

    iget-object p0, p0, Lc/d$a;->a:Lc/d;

    invoke-static {p0}, Lc/d;->e(Lc/d;)V

    return-void
.end method
