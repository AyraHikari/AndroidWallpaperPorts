.class public abstract Li/c;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Li/c$c;,
        Li/c$b;
    }
.end annotation


# instance fields
.field a:Landroid/content/Context;

.field protected b:Lc/d;

.field private c:Li/c$b;

.field private d:J

.field protected e:Z

.field protected f:J

.field protected g:J

.field protected h:J

.field protected i:J

.field private j:Li/c$c;

.field private k:Li/c$c;

.field private l:J

.field protected m:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Li/a;",
            ">;"
        }
    .end annotation
.end field

.field protected n:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Li/b;",
            ">;"
        }
    .end annotation
.end field

.field private final o:J


# direct methods
.method public constructor <init>(Landroid/content/Context;JZ)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Li/c;->e:Z

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Li/c;->m:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Li/c;->n:Ljava/util/ArrayList;

    const-wide/16 v0, 0x3e8

    iput-wide v0, p0, Li/c;->o:J

    iput-object p1, p0, Li/c;->a:Landroid/content/Context;

    iput-wide p2, p0, Li/c;->d:J

    iput-boolean p4, p0, Li/c;->e:Z

    invoke-virtual {p0}, Li/c;->l()V

    invoke-virtual {p0}, Li/c;->j()V

    invoke-virtual {p0}, Li/c;->k()V

    return-void
.end method

.method static synthetic a(Li/c;JJJJZZ)Ljava/util/List;
    .locals 0

    invoke-direct/range {p0 .. p10}, Li/c;->h(JJJJZZ)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method private d(Le/a;ILjava/util/ArrayList;Lc/d;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Le/a;",
            "I",
            "Ljava/util/ArrayList<",
            "Le/a;",
            ">;",
            "Lc/d;",
            ")V"
        }
    .end annotation

    invoke-virtual {p4}, Lc/d;->l()Lc/c;

    move-result-object p0

    invoke-virtual {p0}, Lc/c;->d()Lg/d;

    move-result-object p0

    invoke-virtual {p1, p0}, Le/a;->x(Lg/d;)V

    invoke-virtual {p3, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Le/b;

    invoke-virtual {p0, p1}, Le/b;->G(Le/a;)V

    return-void
.end method

.method private e(Lg/c;Lc/d;)I
    .locals 1

    invoke-virtual {p2}, Lc/d;->l()Lc/c;

    move-result-object p0

    new-instance v0, Lg/d;

    invoke-direct {v0, p1}, Lg/d;-><init>(Lg/c;)V

    invoke-virtual {p0, v0}, Lc/c;->a(Lg/d;)V

    invoke-virtual {p2}, Lc/d;->m()Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p0

    add-int/lit8 p0, p0, -0x1

    return p0
.end method

.method private h(JJJJZZ)Ljava/util/List;
    .locals 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(JJJJZZ)",
            "Ljava/util/List<",
            "Ld/c$c;",
            ">;"
        }
    .end annotation

    move-wide/from16 v0, p5

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    new-instance v3, Ld/c$c;

    const-wide/16 v4, 0x0

    const/4 v6, 0x0

    invoke-direct {v3, v4, v5, v6}, Ld/c$c;-><init>(JZ)V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v3, Ld/c$c;

    const/4 v7, 0x1

    move-wide/from16 v8, p3

    invoke-direct {v3, v8, v9, v7}, Ld/c$c;-><init>(JZ)V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v3, Ld/c$c;

    invoke-direct {v3, v0, v1, v6}, Ld/c$c;-><init>(JZ)V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-wide/16 v8, 0x3e8

    if-eqz p10, :cond_0

    add-long/2addr v0, v8

    :cond_0
    move-object v3, p0

    iget-wide v10, v3, Li/c;->l:J

    mul-long/2addr v10, v8

    :goto_0
    if-eqz p9, :cond_3

    cmp-long v3, v0, v10

    if-gez v3, :cond_3

    cmp-long v3, p1, v4

    if-lez v3, :cond_3

    add-long v0, v0, p7

    add-long v12, v0, p1

    if-eqz p10, :cond_1

    sub-long/2addr v12, v8

    :cond_1
    new-instance v3, Ld/c$c;

    invoke-direct {v3, v0, v1, v7}, Ld/c$c;-><init>(JZ)V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v0, Ld/c$c;

    invoke-direct {v0, v12, v13, v6}, Ld/c$c;-><init>(JZ)V

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    if-eqz p10, :cond_2

    add-long v0, v12, v8

    goto :goto_0

    :cond_2
    move-wide v0, v12

    goto :goto_0

    :cond_3
    return-object v2
.end method

.method private q(Le/a;Li/b;)V
    .locals 3

    invoke-virtual {p2}, Li/b;->c()I

    move-result v0

    const/4 v1, -0x2

    if-ne v0, v1, :cond_0

    :goto_0
    sget-object v0, Le/a$c;->a:Le/a$c;

    :goto_1
    invoke-virtual {p1, v0}, Le/a;->z(Le/a$c;)V

    goto :goto_2

    :cond_0
    iget v0, p2, Li/b;->b:I

    if-nez v0, :cond_1

    sget-object v0, Le/a$c;->b:Le/a$c;

    goto :goto_1

    :cond_1
    const/4 v1, 0x1

    if-ne v0, v1, :cond_2

    sget-object v0, Le/a$c;->c:Le/a$c;

    goto :goto_1

    :cond_2
    const/4 v1, 0x2

    if-ne v0, v1, :cond_3

    goto :goto_0

    :cond_3
    const/4 v1, 0x4

    if-ne v0, v1, :cond_4

    sget-object v0, Le/a$c;->d:Le/a$c;

    goto :goto_1

    :cond_4
    :goto_2
    invoke-virtual {p1}, Le/a;->e()Ld/b;

    move-result-object v0

    invoke-virtual {v0}, Ld/b;->m()Ld/a;

    move-result-object v1

    iget-object v2, p2, Li/b;->h:[F

    invoke-virtual {p0, p2, v1, v2}, Li/c;->r(Li/b;Ld/a;[F)V

    invoke-virtual {v0}, Ld/b;->n()Ld/a;

    move-result-object v1

    iget-object v2, p2, Li/b;->i:[F

    invoke-virtual {p0, p2, v1, v2}, Li/c;->r(Li/b;Ld/a;[F)V

    invoke-virtual {v0}, Ld/b;->k()Ld/a;

    move-result-object v1

    iget-object v2, p2, Li/b;->j:[F

    invoke-virtual {p0, p2, v1, v2}, Li/c;->r(Li/b;Ld/a;[F)V

    invoke-virtual {v0}, Ld/b;->l()Ld/a;

    move-result-object v1

    iget-object v2, p2, Li/b;->k:[F

    invoke-virtual {p0, p2, v1, v2}, Li/c;->r(Li/b;Ld/a;[F)V

    invoke-virtual {v0}, Ld/b;->h()Ld/a;

    move-result-object v1

    iget-object v2, p2, Li/b;->l:[F

    invoke-virtual {p0, p2, v1, v2}, Li/c;->r(Li/b;Ld/a;[F)V

    invoke-virtual {v0}, Ld/b;->i()Ld/a;

    move-result-object v1

    iget-object v2, p2, Li/b;->m:[F

    invoke-virtual {p0, p2, v1, v2}, Li/c;->r(Li/b;Ld/a;[F)V

    invoke-virtual {v0}, Ld/b;->j()Ld/a;

    move-result-object v0

    iget-object v1, p2, Li/b;->n:[F

    invoke-virtual {p0, p2, v0, v1}, Li/c;->r(Li/b;Ld/a;[F)V

    invoke-virtual {p1}, Le/a;->l()Ld/d;

    move-result-object p1

    invoke-virtual {p1}, Ld/d;->b()Ld/a;

    move-result-object p1

    iget-object v0, p2, Li/b;->g:[F

    invoke-virtual {p0, p2, p1, v0}, Li/c;->r(Li/b;Ld/a;[F)V

    return-void
.end method


# virtual methods
.method protected b(JLjava/lang/String;I)I
    .locals 2

    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-ltz v0, :cond_0

    new-instance v0, Li/a;

    invoke-direct {v0}, Li/a;-><init>()V

    const/4 v1, 0x1

    iput v1, v0, Li/a;->a:I

    iput-wide p1, v0, Li/a;->b:J

    iput-object p3, v0, Li/a;->c:Ljava/lang/String;

    iput p4, v0, Li/a;->d:I

    iget-object p1, p0, Li/c;->m:Ljava/util/ArrayList;

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object p0, p0, Li/c;->m:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result p0

    sub-int/2addr p0, v1

    return p0

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "id < 0"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method protected c(JLjava/lang/String;IZZZ)I
    .locals 2

    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-ltz v0, :cond_0

    new-instance v0, Li/a;

    invoke-direct {v0}, Li/a;-><init>()V

    const/4 v1, 0x1

    iput v1, v0, Li/a;->a:I

    iput-wide p1, v0, Li/a;->b:J

    iput-object p3, v0, Li/a;->c:Ljava/lang/String;

    iput p4, v0, Li/a;->d:I

    iput-boolean p5, v0, Li/a;->k:Z

    iput-boolean p6, v0, Li/a;->l:Z

    iput-boolean p7, v0, Li/a;->m:Z

    iget-object p1, p0, Li/c;->m:Ljava/util/ArrayList;

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object p0, p0, Li/c;->m:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result p0

    sub-int/2addr p0, v1

    return p0

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "id < 0"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method protected f(II)Li/b;
    .locals 2

    new-instance v0, Li/b;

    iget-object v1, p0, Li/c;->n:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    invoke-direct {v0, v1, p1, p2}, Li/b;-><init>(III)V

    iget-object p0, p0, Li/c;->n:Ljava/util/ArrayList;

    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-object v0
.end method

.method protected g(JLjava/lang/String;JJJZZJ)I
    .locals 14

    move-object v0, p0

    move-wide v1, p1

    move-wide/from16 v3, p4

    move-wide/from16 v5, p6

    move/from16 v7, p10

    move/from16 v8, p11

    move-wide/from16 v9, p12

    if-eqz v7, :cond_1

    if-nez v8, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "\"isRepeat\" and \"isKeepTheEnd\" are both true."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    :goto_0
    const-wide/16 v11, 0x0

    cmp-long v13, v9, v11

    if-ltz v13, :cond_4

    cmp-long v13, v3, v11

    if-ltz v13, :cond_3

    cmp-long v13, v5, v11

    if-ltz v13, :cond_3

    cmp-long v11, v1, v11

    if-ltz v11, :cond_2

    new-instance v11, Li/a;

    invoke-direct {v11}, Li/a;-><init>()V

    move-wide/from16 v12, p8

    iput-wide v12, v11, Li/a;->e:J

    const/4 v12, 0x2

    iput v12, v11, Li/a;->a:I

    move-object/from16 v12, p3

    iput-object v12, v11, Li/a;->c:Ljava/lang/String;

    iput-wide v1, v11, Li/a;->b:J

    iput-boolean v7, v11, Li/a;->f:Z

    iput-boolean v8, v11, Li/a;->g:Z

    iput-wide v9, v11, Li/a;->h:J

    iput-wide v3, v11, Li/a;->i:J

    iput-wide v5, v11, Li/a;->j:J

    iget-object v1, v0, Li/c;->m:Ljava/util/ArrayList;

    invoke-virtual {v1, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, v0, Li/c;->m:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    return v0

    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "id < 0"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_3
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "trim time < 0"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_4
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "repeat delay time < 0"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public i()J
    .locals 2

    iget-wide v0, p0, Li/c;->l:J

    return-wide v0
.end method

.method public abstract j()V
.end method

.method public abstract k()V
.end method

.method protected l()V
    .locals 3

    const-wide/16 v0, 0x3e8

    iput-wide v0, p0, Li/c;->h:J

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Li/c;->i:J

    new-instance v0, Li/c$c;

    invoke-direct {v0, p0}, Li/c$c;-><init>(Li/c;)V

    iput-object v0, p0, Li/c;->j:Li/c$c;

    const/4 v1, 0x4

    new-array v2, v1, [F

    fill-array-data v2, :array_0

    iput-object v2, v0, Li/c$c;->a:[F

    new-instance v0, Li/c$c;

    invoke-direct {v0, p0}, Li/c$c;-><init>(Li/c;)V

    iput-object v0, p0, Li/c;->k:Li/c$c;

    new-array p0, v1, [F

    fill-array-data p0, :array_1

    iput-object p0, v0, Li/c$c;->a:[F

    return-void

    :array_0
    .array-data 4
        0x3f800000    # 1.0f
        0x0
        0x0
        0x447a0000    # 1000.0f
    .end array-data

    :array_1
    .array-data 4
        0x0
        0x0
        0x3f800000    # 1.0f
        0x447a0000    # 1000.0f
    .end array-data
.end method

.method public m(Lc/d;)Z
    .locals 0

    iget-object p0, p0, Li/c;->b:Lc/d;

    if-eq p0, p1, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public n(Lc/d;)V
    .locals 13

    :try_start_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iget-object v1, p0, Li/c;->m:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    const/4 v3, 0x1

    if-eqz v2, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Li/a;

    const/4 v4, 0x0

    iget v5, v2, Li/a;->a:I

    if-ne v5, v3, :cond_1

    new-instance v4, Lg/b;

    iget-object v7, p0, Li/c;->a:Landroid/content/Context;

    iget-object v8, v2, Li/a;->c:Ljava/lang/String;

    iget v9, v2, Li/a;->d:I

    iget-boolean v10, v2, Li/a;->k:Z

    iget-boolean v11, v2, Li/a;->l:Z

    iget-boolean v12, v2, Li/a;->m:Z

    move-object v6, v4

    invoke-direct/range {v6 .. v12}, Lg/b;-><init>(Landroid/content/Context;Ljava/lang/String;IZZZ)V

    goto :goto_0

    :cond_1
    const/4 v3, 0x2

    if-ne v5, v3, :cond_2

    new-instance v4, Lg/f;

    iget-object v3, p0, Li/c;->a:Landroid/content/Context;

    iget-object v5, v2, Li/a;->c:Ljava/lang/String;

    new-instance v6, Li/c$a;

    invoke-direct {v6, p0, v2}, Li/c$a;-><init>(Li/c;Li/a;)V

    invoke-direct {v4, v3, v5, v6}, Lg/f;-><init>(Landroid/content/Context;Ljava/lang/String;Lg/f$d;)V

    :cond_2
    :goto_0
    invoke-virtual {p0, p1}, Li/c;->m(Lc/d;)Z

    move-result v2

    if-eqz v2, :cond_3

    return-void

    :cond_3
    invoke-direct {p0, v4, p1}, Li/c;->e(Lg/c;Lc/d;)I

    invoke-virtual {p0, p1}, Li/c;->m(Lc/d;)Z

    move-result v2

    if-eqz v2, :cond_0

    return-void

    :cond_4
    invoke-virtual {p0, p1}, Li/c;->m(Lc/d;)Z

    move-result v1

    if-eqz v1, :cond_5

    return-void

    :cond_5
    invoke-virtual {p1}, Lc/d;->l()Lc/c;

    move-result-object v1

    invoke-virtual {v1}, Lc/c;->e()Le/b;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {p1}, Lc/d;->m()Ljava/util/List;

    move-result-object v1

    iget-object v2, p0, Li/c;->n:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_6
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_a

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Li/b;

    invoke-virtual {v4}, Li/b;->c()I

    move-result v5

    const/4 v6, -0x1

    if-ne v5, v6, :cond_7

    new-instance v6, Le/b;

    invoke-direct {v6}, Le/b;-><init>()V

    goto :goto_1

    :cond_7
    new-instance v6, Le/d;

    invoke-interface {v1, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lg/d;

    invoke-direct {v6, v7}, Le/d;-><init>(Lg/d;)V

    :goto_1
    invoke-virtual {p0, p1}, Li/c;->m(Lc/d;)Z

    move-result v7

    if-eqz v7, :cond_8

    return-void

    :cond_8
    invoke-virtual {v4}, Li/b;->b()I

    move-result v7

    invoke-direct {p0, v6, v7, v0, p1}, Li/c;->d(Le/a;ILjava/util/ArrayList;Lc/d;)V

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 v7, -0x2

    const/4 v8, 0x0

    if-ne v5, v7, :cond_9

    const-string v5, "Solid Color"

    new-array v7, v3, [D

    iget v9, v4, Li/b;->p:I

    int-to-double v9, v9

    aput-wide v9, v7, v8

    invoke-static {v5, v7}, Lf/a;->a(Ljava/lang/String;[D)Lh/a;

    move-result-object v5

    goto :goto_2

    :cond_9
    iget-object v5, v4, Li/b;->a:Ljava/lang/String;

    iget-object v7, v4, Li/b;->o:[D

    invoke-static {v5, v7}, Lf/a;->a(Ljava/lang/String;[D)Lh/a;

    move-result-object v5

    :goto_2
    new-array v7, v8, [D

    invoke-virtual {v6, v5, v7}, Le/a;->y(Lh/a;[D)V

    invoke-direct {p0, v6, v4}, Li/c;->q(Le/a;Li/b;)V

    invoke-virtual {p0, p1}, Li/c;->m(Lc/d;)Z

    move-result v4

    if-eqz v4, :cond_6

    return-void

    :cond_a
    invoke-virtual {p0, p1}, Li/c;->m(Lc/d;)Z

    move-result p1

    if-nez p1, :cond_b

    iget-object p1, p0, Li/c;->b:Lc/d;

    invoke-virtual {p1}, Lc/d;->u()V

    iget-object p0, p0, Li/c;->c:Li/c$b;

    if-eqz p0, :cond_b

    invoke-interface {p0}, Li/c$b;->c()V
    :try_end_0
    .catch Ljava/util/ConcurrentModificationException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_b
    return-void
.end method

.method public o(Li/c$b;)V
    .locals 0

    iput-object p1, p0, Li/c;->c:Li/c$b;

    return-void
.end method

.method public p(Lc/d;)V
    .locals 4

    iput-object p1, p0, Li/c;->b:Lc/d;

    iget-wide v0, p0, Li/c;->f:J

    iget-wide v2, p0, Li/c;->g:J

    add-long/2addr v0, v2

    iput-wide v0, p0, Li/c;->l:J

    return-void
.end method

.method protected r(Li/b;Ld/a;[F)V
    .locals 19

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    move-object/from16 v2, p3

    if-eqz v2, :cond_6

    array-length v3, v2

    if-nez v3, :cond_0

    goto/16 :goto_3

    :cond_0
    array-length v3, v2

    add-int/lit8 v3, v3, -0x1

    aget v3, v2, v3

    iget-wide v4, v0, Li/b;->d:J

    long-to-float v6, v4

    cmpl-float v3, v3, v6

    if-gtz v3, :cond_5

    array-length v3, v2

    rem-int/lit8 v3, v3, 0x2

    if-nez v3, :cond_4

    iget-wide v6, v0, Li/b;->f:J

    iget-wide v8, v0, Li/b;->c:J

    add-long v10, v8, v4

    monitor-enter p2

    :try_start_0
    iget-object v3, v1, Ld/a;->a:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->clear()V

    const/4 v12, 0x0

    :goto_0
    array-length v13, v2

    const/high16 v14, 0x447a0000    # 1000.0f

    if-ge v12, v13, :cond_1

    long-to-float v13, v8

    add-int/lit8 v15, v12, 0x1

    aget v15, v2, v15

    add-float/2addr v13, v15

    div-float/2addr v13, v14

    aget v14, v2, v12

    invoke-virtual {v1, v13, v14}, Ld/a;->a(FF)Ld/a;

    add-int/lit8 v12, v12, 0x2

    goto :goto_0

    :cond_1
    long-to-float v8, v10

    div-float/2addr v8, v14

    array-length v9, v2

    add-int/lit8 v9, v9, -0x2

    aget v9, v2, v9

    invoke-virtual {v1, v8, v9}, Ld/a;->a(FF)Ld/a;

    :goto_1
    iget-boolean v8, v0, Li/b;->e:Z

    if-eqz v8, :cond_3

    move-object/from16 v8, p0

    iget-wide v12, v8, Li/c;->l:J

    cmp-long v9, v10, v12

    if-gez v9, :cond_3

    add-long/2addr v10, v6

    add-long v12, v10, v4

    const-wide/16 v15, 0x1

    move-wide/from16 v17, v4

    sub-long v3, v10, v15

    long-to-float v3, v3

    div-float/2addr v3, v14

    array-length v4, v2

    add-int/lit8 v4, v4, -0x2

    aget v4, v2, v4

    invoke-virtual {v1, v3, v4}, Ld/a;->a(FF)Ld/a;

    long-to-float v3, v10

    div-float v4, v3, v14

    const/4 v5, 0x0

    aget v9, v2, v5

    invoke-virtual {v1, v4, v9}, Ld/a;->a(FF)Ld/a;

    move v4, v5

    :goto_2
    array-length v9, v2

    if-ge v4, v9, :cond_2

    add-int/lit8 v9, v4, 0x1

    aget v9, v2, v9

    add-float/2addr v9, v3

    div-float/2addr v9, v14

    aget v10, v2, v4

    invoke-virtual {v1, v9, v10}, Ld/a;->a(FF)Ld/a;

    add-int/lit8 v4, v4, 0x2

    goto :goto_2

    :cond_2
    long-to-float v3, v12

    div-float/2addr v3, v14

    array-length v4, v2

    add-int/lit8 v4, v4, -0x2

    aget v4, v2, v4

    invoke-virtual {v1, v3, v4}, Ld/a;->a(FF)Ld/a;

    move-wide v10, v12

    move-wide/from16 v4, v17

    goto :goto_1

    :cond_3
    monitor-exit p2

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_4
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "The length of valueAtTimeMs is odd."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_5
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "set time > duration"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_6
    :goto_3
    return-void
.end method
