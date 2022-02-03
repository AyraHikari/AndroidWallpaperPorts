.class Lc/d$d;
.super Ljava/lang/Thread;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lc/d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "d"
.end annotation


# instance fields
.field private a:J

.field private b:J

.field final synthetic c:Lc/d;


# direct methods
.method private constructor <init>(Lc/d;)V
    .locals 0

    iput-object p1, p0, Lc/d$d;->c:Lc/d;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lc/d;Lc/d$a;)V
    .locals 0

    invoke-direct {p0, p1}, Lc/d$d;-><init>(Lc/d;)V

    return-void
.end method


# virtual methods
.method public a()J
    .locals 2

    iget-wide v0, p0, Lc/d$d;->b:J

    return-wide v0
.end method

.method public run()V
    .locals 5

    const-string v0, "Player"

    const-string v1, "seekTo: SeekToThread start"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v1, p0, Lc/d$d;->c:Lc/d;

    invoke-static {v1}, Lc/d;->g(Lc/d;)J

    move-result-wide v1

    iput-wide v1, p0, Lc/d$d;->a:J

    iget-object v1, p0, Lc/d$d;->c:Lc/d;

    invoke-static {v1}, Lc/d;->i(Lc/d;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lc/d$b;

    invoke-interface {v2}, Lc/d$b;->d()V

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lc/d$d;->c:Lc/d;

    invoke-static {v1}, Lc/d;->c(Lc/d;)Lc/f;

    move-result-object v1

    iget-wide v2, p0, Lc/d$d;->a:J

    invoke-virtual {v1, v2, v3}, Lc/f;->d(J)V

    iget-object v1, p0, Lc/d$d;->c:Lc/d;

    invoke-static {v1}, Lc/d;->d(Lc/d;)Lc/c;

    move-result-object v1

    iget-wide v2, p0, Lc/d$d;->a:J

    invoke-virtual {v1, v2, v3}, Lc/c;->j(J)V

    iget-wide v1, p0, Lc/d$d;->a:J

    iput-wide v1, p0, Lc/d$d;->b:J

    iget-object v3, p0, Lc/d$d;->c:Lc/d;

    invoke-static {v3}, Lc/d;->g(Lc/d;)J

    move-result-wide v3

    cmp-long v1, v1, v3

    if-nez v1, :cond_0

    const-string v1, "seekTo: SeekToThread done"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lc/d$d;->c:Lc/d;

    invoke-static {v0}, Lc/d;->i(Lc/d;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lc/d$b;

    invoke-interface {v1}, Lc/d$b;->e()V

    goto :goto_1

    :cond_2
    iget-wide v0, p0, Lc/d$d;->b:J

    const-wide/16 v2, 0x1172

    cmp-long v0, v0, v2

    if-ltz v0, :cond_3

    iget-object p0, p0, Lc/d$d;->c:Lc/d;

    invoke-virtual {p0}, Lc/d;->w()V

    :cond_3
    return-void
.end method
