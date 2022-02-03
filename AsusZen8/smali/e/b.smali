.class public Le/b;
.super Le/a;
.source ""


# static fields
.field private static final E:Landroid/graphics/Matrix;

.field private static final F:[[F

.field private static final G:[F

.field private static final H:[F

.field private static final I:[F

.field private static final J:[F


# instance fields
.field private transient A:Lc/e;

.field private transient B:[F

.field private transient C:F

.field private final D:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Le/a;",
            ">;"
        }
    .end annotation
.end field

.field private transient y:I

.field private transient z:Lc/e;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    sput-object v0, Le/b;->E:Landroid/graphics/Matrix;

    const/4 v0, 0x4

    new-array v1, v0, [[F

    new-array v2, v0, [F

    fill-array-data v2, :array_0

    const/4 v3, 0x0

    aput-object v2, v1, v3

    new-array v2, v0, [F

    fill-array-data v2, :array_1

    const/4 v3, 0x1

    aput-object v2, v1, v3

    new-array v2, v0, [F

    fill-array-data v2, :array_2

    const/4 v3, 0x2

    aput-object v2, v1, v3

    new-array v2, v0, [F

    fill-array-data v2, :array_3

    const/4 v3, 0x3

    aput-object v2, v1, v3

    sput-object v1, Le/b;->F:[[F

    const/16 v1, 0x8

    new-array v2, v1, [F

    sput-object v2, Le/b;->G:[F

    new-array v1, v1, [F

    fill-array-data v1, :array_4

    sput-object v1, Le/b;->H:[F

    new-array v0, v0, [F

    sput-object v0, Le/b;->I:[F

    const/16 v0, 0x9

    new-array v0, v0, [F

    sput-object v0, Le/b;->J:[F

    return-void

    :array_0
    .array-data 4
        -0x40800000    # -1.0f
        0x3f800000    # 1.0f
        0x0
        0x3f800000    # 1.0f
    .end array-data

    :array_1
    .array-data 4
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x0
        0x3f800000    # 1.0f
    .end array-data

    :array_2
    .array-data 4
        0x3f800000    # 1.0f
        -0x40800000    # -1.0f
        0x0
        0x3f800000    # 1.0f
    .end array-data

    :array_3
    .array-data 4
        -0x40800000    # -1.0f
        -0x40800000    # -1.0f
        0x0
        0x3f800000    # 1.0f
    .end array-data

    :array_4
    .array-data 4
        -0x40800000    # -1.0f
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        -0x40800000    # -1.0f
        -0x40800000    # -1.0f
        -0x40800000    # -1.0f
    .end array-data
.end method

.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Le/b;-><init>(Lh/a;)V

    return-void
.end method

.method public constructor <init>(Lh/a;)V
    .locals 0

    invoke-direct {p0, p1}, Le/a;-><init>(Lh/a;)V

    new-instance p1, Lc/e;

    invoke-direct {p1}, Lc/e;-><init>()V

    iput-object p1, p0, Le/b;->z:Lc/e;

    new-instance p1, Lc/e;

    invoke-direct {p1}, Lc/e;-><init>()V

    iput-object p1, p0, Le/b;->A:Lc/e;

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Le/b;->D:Ljava/util/List;

    const/16 p1, 0x10

    new-array p1, p1, [F

    iput-object p1, p0, Le/b;->B:[F

    invoke-static {}, Lc/g;->d()I

    move-result p1

    iput p1, p0, Le/b;->y:I

    return-void
.end method

.method static synthetic C(Le/b;)Lc/e;
    .locals 0

    iget-object p0, p0, Le/b;->z:Lc/e;

    return-object p0
.end method

.method static synthetic D(Le/b;Lc/e;)V
    .locals 0

    invoke-direct {p0, p1}, Le/b;->H(Lc/e;)V

    return-void
.end method

.method static synthetic E(Le/b;)Lc/e;
    .locals 0

    iget-object p0, p0, Le/b;->A:Lc/e;

    return-object p0
.end method

.method private H(Lc/e;)V
    .locals 0

    invoke-virtual {p1}, Lc/e;->e()Z

    move-result p0

    if-eqz p0, :cond_0

    invoke-virtual {p1}, Lc/e;->b()V

    :cond_0
    return-void
.end method

.method private J(Lc/e;)V
    .locals 1

    invoke-virtual {p1}, Lc/e;->e()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Le/b;->m()I

    move-result v0

    invoke-virtual {p0}, Le/b;->d()I

    move-result p0

    invoke-virtual {p1, v0, p0}, Lc/e;->d(II)V

    :cond_0
    return-void
.end method


# virtual methods
.method public A(JF)V
    .locals 3

    invoke-super {p0, p1, p2, p3}, Le/a;->A(JF)V

    invoke-virtual {p0}, Le/a;->o()Z

    move-result p3

    if-nez p3, :cond_0

    return-void

    :cond_0
    iget-object p3, p0, Le/b;->D:Ljava/util/List;

    monitor-enter p3

    :try_start_0
    iget-object v0, p0, Le/b;->D:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Le/a;

    invoke-virtual {p0}, Le/a;->i()F

    move-result v2

    invoke-virtual {v1, p1, p2, v2}, Le/a;->A(JF)V

    goto :goto_0

    :cond_1
    monitor-exit p3

    return-void

    :catchall_0
    move-exception p0

    monitor-exit p3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public B(J)V
    .locals 2

    invoke-super {p0, p1, p2}, Le/a;->B(J)V

    invoke-virtual {p0}, Le/a;->o()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Le/b;->D:Ljava/util/List;

    monitor-enter v0

    :try_start_0
    iget-object p0, p0, Le/b;->D:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Le/a;

    invoke-virtual {v1, p1, p2}, Le/a;->B(J)V

    goto :goto_0

    :cond_1
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public F(ILe/a;)V
    .locals 3

    iget-object v0, p0, Le/b;->D:Ljava/util/List;

    monitor-enter v0

    :try_start_0
    invoke-virtual {p0}, Le/a;->h()I

    move-result v1

    invoke-virtual {p0}, Le/a;->g()I

    move-result v2

    invoke-virtual {p2, v1, v2}, Le/a;->q(II)V

    iget-object p0, p0, Le/b;->D:Ljava/util/List;

    invoke-interface {p0, p1, p2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public G(Le/a;)V
    .locals 1

    iget-object v0, p0, Le/b;->D:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    invoke-virtual {p0, v0, p1}, Le/b;->F(ILe/a;)V

    return-void
.end method

.method public I()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Le/a;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Le/b;->D:Ljava/util/List;

    return-object p0
.end method

.method K(F)V
    .locals 0

    iput p1, p0, Le/b;->C:F

    return-void
.end method

.method public c(Z)Z
    .locals 4

    invoke-virtual {p0}, Le/a;->v()V

    invoke-virtual {p0}, Le/a;->o()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Le/b;->n()V

    iget-object v0, p0, Le/b;->z:Lc/e;

    invoke-virtual {v0}, Lc/e;->a()V

    iget v0, p0, Le/b;->C:F

    const/4 v1, 0x0

    invoke-static {v1, v1, v1, v0}, Landroid/opengl/GLES20;->glClearColor(FFFF)V

    const/16 v0, 0x4000

    invoke-static {v0}, Landroid/opengl/GLES20;->glClear(I)V

    iget-object v0, p0, Le/b;->D:Ljava/util/List;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Le/b;->D:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Le/a;

    invoke-virtual {v2}, Le/a;->o()Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Le/a;->c(Z)Z

    goto :goto_0

    :cond_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v0, p0, Le/b;->z:Lc/e;

    invoke-virtual {v0}, Lc/e;->f()V

    iget-object v0, p0, Le/b;->z:Lc/e;

    invoke-virtual {v0}, Lc/e;->c()I

    move-result v0

    invoke-super {p0, v0, p1}, Le/a;->p(IZ)Z

    move-result p0

    return p0

    :catchall_0
    move-exception p0

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0

    :cond_2
    invoke-virtual {p0}, Le/b;->s()V

    const/4 p0, 0x0

    return p0
.end method

.method public d()I
    .locals 0

    invoke-virtual {p0}, Le/a;->g()I

    move-result p0

    return p0
.end method

.method public j()I
    .locals 0

    invoke-virtual {p0}, Le/a;->g()I

    move-result p0

    return p0
.end method

.method public k()I
    .locals 0

    invoke-virtual {p0}, Le/a;->h()I

    move-result p0

    return p0
.end method

.method public m()I
    .locals 0

    invoke-virtual {p0}, Le/a;->h()I

    move-result p0

    return p0
.end method

.method public n()V
    .locals 2

    invoke-super {p0}, Le/a;->n()V

    iget-object v0, p0, Le/b;->D:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Le/a;

    invoke-virtual {v1}, Le/a;->n()V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Le/b;->z:Lc/e;

    invoke-direct {p0, v0}, Le/b;->J(Lc/e;)V

    return-void
.end method

.method public q(II)V
    .locals 2

    invoke-super {p0, p1, p2}, Le/a;->q(II)V

    iget-object v0, p0, Le/b;->D:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Le/a;

    invoke-virtual {v1, p1, p2}, Le/a;->q(II)V

    goto :goto_0

    :cond_0
    new-instance p1, Le/b$a;

    invoke-direct {p1, p0}, Le/b$a;-><init>(Le/b;)V

    invoke-virtual {p0, p1}, Le/a;->r(Ljava/lang/Runnable;)V

    return-void
.end method

.method public s()V
    .locals 2

    invoke-super {p0}, Le/a;->s()V

    iget-object v0, p0, Le/b;->D:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Le/a;

    invoke-virtual {v1}, Le/a;->s()V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Le/b;->z:Lc/e;

    invoke-direct {p0, v0}, Le/b;->H(Lc/e;)V

    iget-object v0, p0, Le/b;->A:Lc/e;

    invoke-direct {p0, v0}, Le/b;->H(Lc/e;)V

    return-void
.end method
