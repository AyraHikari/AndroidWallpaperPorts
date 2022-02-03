.class public Lc/f;
.super Ljava/lang/Object;
.source ""


# instance fields
.field private a:J

.field private b:J

.field private c:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()J
    .locals 4

    iget-wide v0, p0, Lc/f;->a:J

    const-wide/16 v2, 0x3e8

    div-long/2addr v0, v2

    return-wide v0
.end method

.method public b()Z
    .locals 0

    iget-boolean p0, p0, Lc/f;->c:Z

    return p0
.end method

.method public c()V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lc/f;->c:Z

    return-void
.end method

.method public d(J)V
    .locals 2

    const-wide/16 v0, 0x3e8

    mul-long/2addr p1, v0

    iput-wide p1, p0, Lc/f;->a:J

    return-void
.end method

.method public e()V
    .locals 4

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    const-wide/16 v2, 0x3e8

    div-long/2addr v0, v2

    iput-wide v0, p0, Lc/f;->b:J

    const/4 v0, 0x1

    iput-boolean v0, p0, Lc/f;->c:Z

    return-void
.end method

.method public f()V
    .locals 6

    iget-boolean v0, p0, Lc/f;->c:Z

    if-eqz v0, :cond_0

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    const-wide/16 v2, 0x3e8

    div-long/2addr v0, v2

    iget-wide v2, p0, Lc/f;->a:J

    iget-wide v4, p0, Lc/f;->b:J

    sub-long v4, v0, v4

    add-long/2addr v2, v4

    iput-wide v2, p0, Lc/f;->a:J

    iput-wide v0, p0, Lc/f;->b:J

    :cond_0
    return-void
.end method
