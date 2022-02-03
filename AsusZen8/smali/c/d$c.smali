.class Lc/d$c;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lc/d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "c"
.end annotation


# instance fields
.field private a:J

.field final synthetic b:Lc/d;


# direct methods
.method private constructor <init>(Lc/d;)V
    .locals 0

    iput-object p1, p0, Lc/d$c;->b:Lc/d;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lc/d;Lc/d$a;)V
    .locals 0

    invoke-direct {p0, p1}, Lc/d$c;-><init>(Lc/d;)V

    return-void
.end method


# virtual methods
.method public a(J)V
    .locals 0

    iput-wide p1, p0, Lc/d$c;->a:J

    return-void
.end method

.method public run()V
    .locals 6

    iget-object v0, p0, Lc/d$c;->b:Lc/d;

    const-string v1, "seek to"

    invoke-static {v0, v1}, Lc/d;->f(Lc/d;Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "seekTo: timeMs = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lc/d$c;->a:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Player"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lc/d$c;->b:Lc/d;

    invoke-static {v0}, Lc/d;->a(Lc/d;)Lc/d$d;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lc/d$c;->b:Lc/d;

    invoke-static {v0}, Lc/d;->a(Lc/d;)Lc/d$d;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->isAlive()Z

    move-result v0

    if-eqz v0, :cond_0

    :try_start_0
    iget-object v0, p0, Lc/d$c;->b:Lc/d;

    invoke-static {v0}, Lc/d;->a(Lc/d;)Lc/d$d;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->join()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    iget-object v0, p0, Lc/d$c;->b:Lc/d;

    invoke-static {v0}, Lc/d;->a(Lc/d;)Lc/d$d;

    move-result-object v0

    invoke-virtual {v0}, Lc/d$d;->a()J

    move-result-wide v2

    iget-object v0, p0, Lc/d$c;->b:Lc/d;

    invoke-static {v0}, Lc/d;->g(Lc/d;)J

    move-result-wide v4

    cmp-long v0, v2, v4

    if-nez v0, :cond_0

    const-string v0, "seekTo: SeekTask done"

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    iget-object p0, p0, Lc/d$c;->b:Lc/d;

    invoke-static {p0}, Lc/d;->h(Lc/d;)V

    return-void

    :cond_0
    iget-object v0, p0, Lc/d$c;->b:Lc/d;

    new-instance v1, Lc/d$d;

    iget-object v2, p0, Lc/d$c;->b:Lc/d;

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3}, Lc/d$d;-><init>(Lc/d;Lc/d$a;)V

    invoke-static {v0, v1}, Lc/d;->b(Lc/d;Lc/d$d;)Lc/d$d;

    iget-object v0, p0, Lc/d$c;->b:Lc/d;

    invoke-static {v0}, Lc/d;->a(Lc/d;)Lc/d$d;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    goto :goto_0
.end method
