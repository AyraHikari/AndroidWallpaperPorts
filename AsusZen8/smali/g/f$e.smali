.class public Lg/f$e;
.super Ljava/lang/Thread;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lg/f;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "e"
.end annotation


# instance fields
.field public final a:Ljava/lang/String;

.field private b:J

.field private c:[Z

.field d:Ljava/lang/Runnable;

.field final synthetic e:Lg/f;


# direct methods
.method private constructor <init>(Lg/f;J)V
    .locals 2

    iput-object p1, p0, Lg/f$e;->e:Lg/f;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p1}, Lg/f;->v(Lg/f;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " SeekToThread"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lg/f$e;->a:Ljava/lang/String;

    const/4 p1, 0x1

    new-array v0, p1, [Z

    const/4 v1, 0x0

    aput-boolean p1, v0, v1

    iput-object v0, p0, Lg/f$e;->c:[Z

    new-instance p1, Lg/f$e$a;

    invoke-direct {p1, p0}, Lg/f$e$a;-><init>(Lg/f$e;)V

    iput-object p1, p0, Lg/f$e;->d:Ljava/lang/Runnable;

    iput-wide p2, p0, Lg/f$e;->b:J

    return-void
.end method

.method synthetic constructor <init>(Lg/f;JLg/f$a;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lg/f$e;-><init>(Lg/f;J)V

    return-void
.end method

.method static synthetic a(Lg/f$e;)[Z
    .locals 0

    iget-object p0, p0, Lg/f$e;->c:[Z

    return-object p0
.end method


# virtual methods
.method public interrupt()V
    .locals 4

    iget-object v0, p0, Lg/f$e;->c:[Z

    const/4 v1, 0x0

    aput-boolean v1, v0, v1

    iget-object v0, p0, Lg/f$e;->a:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "interrupt: ID = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Thread;->getId()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public run()V
    .locals 11

    iget-object v0, p0, Lg/f$e;->a:Ljava/lang/String;

    const-string v1, "begin"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lg/f$e;->e:Lg/f;

    invoke-static {v0}, Lg/f;->A(Lg/f;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lg/f$e;->a:Ljava/lang/String;

    const-string v2, "start"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v1

    iget-object v3, p0, Lg/f$e;->e:Lg/f;

    invoke-static {v3}, Lg/f;->z(Lg/f;)Landroid/os/Handler;

    move-result-object v3

    iget-object v4, p0, Lg/f$e;->d:Ljava/lang/Runnable;

    const-wide/16 v5, 0x3e8

    invoke-virtual {v3, v4, v5, v6}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    iget-object v3, p0, Lg/f$e;->e:Lg/f;

    iget-object v4, p0, Lg/f$e;->c:[Z

    invoke-virtual {v3, v4}, Lg/f;->K([Z)V

    iget-object v3, p0, Lg/f$e;->e:Lg/f;

    invoke-static {v3}, Lg/f;->B(Lg/f;)J

    move-result-wide v3

    const-wide/16 v7, 0x0

    cmp-long v3, v3, v7

    if-gtz v3, :cond_0

    iget-object v3, p0, Lg/f$e;->e:Lg/f;

    const-wide/32 v7, 0x88b8

    invoke-static {v3, v7, v8}, Lg/f;->C(Lg/f;J)J

    :cond_0
    iget-wide v3, p0, Lg/f$e;->b:J

    iget-object v7, p0, Lg/f$e;->e:Lg/f;

    invoke-static {v7}, Lg/f;->D(Lg/f;)J

    move-result-wide v7

    sub-long/2addr v3, v7

    invoke-static {v3, v4}, Ljava/lang/Math;->abs(J)J

    move-result-wide v3

    const-wide/16 v7, 0x2

    iget-object v9, p0, Lg/f$e;->e:Lg/f;

    invoke-static {v9}, Lg/f;->B(Lg/f;)J

    move-result-wide v9

    mul-long/2addr v9, v7

    cmp-long v3, v3, v9

    const/4 v4, 0x0

    if-ltz v3, :cond_1

    const/4 v3, 0x1

    goto :goto_0

    :cond_1
    move v3, v4

    :goto_0
    iget-object v7, p0, Lg/f$e;->c:[Z

    aget-boolean v8, v7, v4

    if-eqz v8, :cond_2

    if-eqz v3, :cond_2

    iget-object v8, p0, Lg/f$e;->e:Lg/f;

    iget-wide v9, p0, Lg/f$e;->b:J

    invoke-static {v8, v9, v10, v7}, Lg/f;->F(Lg/f;J[Z)V

    :cond_2
    iget-object v7, p0, Lg/f$e;->a:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "end, cost time(ms): "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v9

    sub-long/2addr v9, v1

    invoke-virtual {v8, v9, v10}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", targetUs(ms): "

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lg/f$e;->b:J

    div-long/2addr v1, v5

    invoke-virtual {v8, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", decoderCurrentTimeUs(ms) = "

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lg/f$e;->e:Lg/f;

    invoke-static {v1}, Lg/f;->D(Lg/f;)J

    move-result-wide v1

    div-long/2addr v1, v5

    invoke-virtual {v8, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", looping[0]: "

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lg/f$e;->c:[Z

    aget-boolean v1, v1, v4

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", isSeek: "

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v7, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lg/f$e;->e:Lg/f;

    invoke-static {v1}, Lg/f;->z(Lg/f;)Landroid/os/Handler;

    move-result-object v1

    iget-object p0, p0, Lg/f$e;->d:Ljava/lang/Runnable;

    invoke-virtual {v1, p0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method
