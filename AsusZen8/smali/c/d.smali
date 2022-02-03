.class public Lc/d;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lc/d$d;,
        Lc/d$c;,
        Lc/d$b;
    }
.end annotation


# instance fields
.field private a:Lc/c;

.field private b:Lc/f;

.field private c:Lc/d$d;

.field private d:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lc/d$b;",
            ">;"
        }
    .end annotation
.end field

.field private e:J

.field private volatile f:J

.field private g:Z

.field private h:Landroid/os/Handler;

.field private i:Landroid/os/Handler;

.field private j:Ljava/lang/Runnable;

.field private k:Lc/d$c;


# direct methods
.method public constructor <init>(Lc/c;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lc/d;->f:J

    const/4 v0, 0x1

    iput-boolean v0, p0, Lc/d;->g:Z

    new-instance v0, Lc/d$c;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lc/d$c;-><init>(Lc/d;Lc/d$a;)V

    iput-object v0, p0, Lc/d;->k:Lc/d$c;

    iput-object p1, p0, Lc/d;->a:Lc/c;

    new-instance p1, Lc/f;

    invoke-direct {p1}, Lc/f;-><init>()V

    iput-object p1, p0, Lc/d;->b:Lc/f;

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lc/d;->d:Ljava/util/List;

    return-void
.end method

.method private B(Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lc/d;->i:Landroid/os/Handler;

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "start time out check from "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "Player"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p1, p0, Lc/d;->i:Landroid/os/Handler;

    iget-object p0, p0, Lc/d;->j:Ljava/lang/Runnable;

    sget v0, Lcom/asus/livewallpaper/zf8livewallpaper/b;->C:I

    int-to-long v0, v0

    invoke-virtual {p1, p0, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_0
    return-void
.end method

.method static synthetic a(Lc/d;)Lc/d$d;
    .locals 0

    iget-object p0, p0, Lc/d;->c:Lc/d$d;

    return-object p0
.end method

.method static synthetic b(Lc/d;Lc/d$d;)Lc/d$d;
    .locals 0

    iput-object p1, p0, Lc/d;->c:Lc/d$d;

    return-object p1
.end method

.method static synthetic c(Lc/d;)Lc/f;
    .locals 0

    iget-object p0, p0, Lc/d;->b:Lc/f;

    return-object p0
.end method

.method static synthetic d(Lc/d;)Lc/c;
    .locals 0

    iget-object p0, p0, Lc/d;->a:Lc/c;

    return-object p0
.end method

.method static synthetic e(Lc/d;)V
    .locals 0

    invoke-direct {p0}, Lc/d;->p()V

    return-void
.end method

.method static synthetic f(Lc/d;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lc/d;->B(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic g(Lc/d;)J
    .locals 2

    iget-wide v0, p0, Lc/d;->f:J

    return-wide v0
.end method

.method static synthetic h(Lc/d;)V
    .locals 0

    invoke-direct {p0}, Lc/d;->x()V

    return-void
.end method

.method static synthetic i(Lc/d;)Ljava/util/List;
    .locals 0

    iget-object p0, p0, Lc/d;->d:Ljava/util/List;

    return-object p0
.end method

.method private p()V
    .locals 2

    iget-object v0, p0, Lc/d;->d:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lc/d$b;

    invoke-interface {v1, p0}, Lc/d$b;->a(Lc/d;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method private q()V
    .locals 6

    invoke-virtual {p0}, Lc/d;->n()J

    move-result-wide v0

    iget-object v2, p0, Lc/d;->d:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lc/d$b;

    iget-wide v4, p0, Lc/d;->e:J

    invoke-interface {v3, v0, v1, v4, v5}, Lc/d$b;->b(JJ)V

    goto :goto_0

    :cond_0
    iput-wide v0, p0, Lc/d;->e:J

    return-void
.end method

.method private x()V
    .locals 1

    iget-object v0, p0, Lc/d;->i:Landroid/os/Handler;

    if-eqz v0, :cond_0

    iget-object p0, p0, Lc/d;->j:Ljava/lang/Runnable;

    invoke-virtual {v0, p0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method


# virtual methods
.method public A(Ljava/lang/Runnable;)V
    .locals 0

    iput-object p1, p0, Lc/d;->j:Ljava/lang/Runnable;

    return-void
.end method

.method public C()V
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "stop: at: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lc/d;->n()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Player"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lc/d;->b:Lc/f;

    invoke-virtual {v0}, Lc/f;->c()V

    iget-object v0, p0, Lc/d;->a:Lc/c;

    invoke-virtual {v0}, Lc/c;->n()V

    invoke-direct {p0}, Lc/d;->p()V

    return-void
.end method

.method public D(Lc/d$b;)V
    .locals 0

    iget-object p0, p0, Lc/d;->d:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method public j()V
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "destroy: at: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lc/d;->n()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Player"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p0, p0, Lc/d;->a:Lc/c;

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lc/c;->k(Z)V

    return-void
.end method

.method public k()V
    .locals 3

    iget-boolean v0, p0, Lc/d;->g:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lc/d;->b:Lc/f;

    invoke-virtual {v0}, Lc/f;->f()V

    iget-object v0, p0, Lc/d;->a:Lc/c;

    invoke-virtual {p0}, Lc/d;->n()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lc/c;->c(J)V

    invoke-direct {p0}, Lc/d;->q()V

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "drawGL: mIsSuspendDraw"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lc/d;->n()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "Player"

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method public l()Lc/c;
    .locals 0

    iget-object p0, p0, Lc/d;->a:Lc/c;

    return-object p0
.end method

.method public m()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lg/d;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lc/d;->a:Lc/c;

    invoke-virtual {p0}, Lc/c;->f()Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public n()J
    .locals 2

    iget-object p0, p0, Lc/d;->b:Lc/f;

    invoke-virtual {p0}, Lc/f;->a()J

    move-result-wide v0

    return-wide v0
.end method

.method public o()Z
    .locals 0

    iget-object p0, p0, Lc/d;->b:Lc/f;

    invoke-virtual {p0}, Lc/f;->b()Z

    move-result p0

    return p0
.end method

.method public r(II)V
    .locals 0

    iget-object p0, p0, Lc/d;->a:Lc/c;

    invoke-virtual {p0, p1, p2}, Lc/c;->g(II)V

    return-void
.end method

.method public s()V
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "pause: at: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lc/d;->n()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Player"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lc/d;->b:Lc/f;

    invoke-virtual {v0}, Lc/f;->c()V

    iget-object v0, p0, Lc/d;->a:Lc/c;

    invoke-virtual {v0}, Lc/c;->h()V

    invoke-direct {p0}, Lc/d;->p()V

    return-void
.end method

.method public t()V
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "play at: player time = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lc/d;->n()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Player"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lc/d;->a:Lc/c;

    invoke-virtual {v0}, Lc/c;->l()V

    new-instance v0, Lc/d$a;

    invoke-direct {v0, p0}, Lc/d$a;-><init>(Lc/d;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method public u()V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lc/d;->g:Z

    return-void
.end method

.method public v(Lc/d$b;)V
    .locals 0

    iget-object p0, p0, Lc/d;->d:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public w()V
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "release: at: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lc/d;->n()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Player"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lc/d;->b:Lc/f;

    invoke-virtual {v0}, Lc/f;->c()V

    iget-object v0, p0, Lc/d;->a:Lc/c;

    invoke-virtual {v0}, Lc/c;->i()V

    invoke-direct {p0}, Lc/d;->p()V

    return-void
.end method

.method public declared-synchronized y(J)V
    .locals 1

    monitor-enter p0

    :try_start_0
    iput-wide p1, p0, Lc/d;->f:J

    iget-object v0, p0, Lc/d;->k:Lc/d$c;

    invoke-virtual {v0, p1, p2}, Lc/d$c;->a(J)V

    iget-object p1, p0, Lc/d;->h:Landroid/os/Handler;

    if-eqz p1, :cond_0

    iget-object p2, p0, Lc/d;->k:Lc/d$c;

    invoke-virtual {p1, p2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    iget-object p1, p0, Lc/d;->h:Landroid/os/Handler;

    iget-object p2, p0, Lc/d;->k:Lc/d$c;

    invoke-virtual {p1, p2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lc/d;->k:Lc/d$c;

    invoke-virtual {p1}, Lc/d$c;->run()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public z(Landroid/os/Handler;)V
    .locals 0

    iput-object p1, p0, Lc/d;->i:Landroid/os/Handler;

    return-void
.end method
