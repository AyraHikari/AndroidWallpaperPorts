.class public abstract Le/a;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Le/a$c;
    }
.end annotation


# static fields
.field private static final u:[F

.field private static final v:[F

.field private static final w:[F

.field private static x:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Landroid/opengl/EGLContext;",
            "Lh/a;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private transient a:[F

.field private transient b:[F

.field private transient c:[F

.field private transient d:I

.field private transient e:I

.field private transient f:Lh/a;

.field private final transient g:Ljava/util/Queue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Queue<",
            "Ljava/lang/Runnable;",
            ">;"
        }
    .end annotation
.end field

.field private transient h:Ljava/nio/FloatBuffer;

.field private transient i:Ljava/nio/FloatBuffer;

.field private transient j:[[F

.field private transient k:Lg/d;

.field private l:Le/a$c;

.field private m:Ld/b;

.field private n:Ld/d;

.field private o:Ljava/lang/String;

.field private p:[D

.field private q:[F

.field private r:F

.field private s:[Z

.field private t:I


# direct methods
.method static constructor <clinit>()V
    .locals 10

    const/16 v0, 0x10

    new-array v1, v0, [F

    sput-object v1, Le/a;->u:[F

    new-array v2, v0, [F

    sput-object v2, Le/a;->v:[F

    const/4 v3, 0x0

    const/high16 v4, -0x42000000    # -0.125f

    const/high16 v5, 0x3e000000    # 0.125f

    const/high16 v6, -0x42000000    # -0.125f

    const/high16 v7, 0x3e000000    # 0.125f

    const/high16 v8, 0x3f800000    # 1.0f

    const/high16 v9, 0x41700000    # 15.0f

    invoke-static/range {v2 .. v9}, Landroid/opengl/Matrix;->frustumM([FIFFFFFF)V

    new-array v0, v0, [F

    sput-object v0, Le/a;->w:[F

    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    sput-object v0, Le/a;->x:Landroid/util/ArrayMap;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Le/a;-><init>(Lh/a;)V

    return-void
.end method

.method public constructor <init>(Lh/a;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Le/a$c;->b:Le/a$c;

    iput-object v0, p0, Le/a;->l:Le/a$c;

    new-instance v0, Ld/b;

    invoke-direct {v0}, Ld/b;-><init>()V

    iput-object v0, p0, Le/a;->m:Ld/b;

    new-instance v0, Ld/d;

    invoke-direct {v0}, Ld/d;-><init>()V

    iput-object v0, p0, Le/a;->n:Ld/d;

    sget-object v0, Lc/g;->b:[F

    invoke-virtual {v0}, [F->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [F

    iput-object v0, p0, Le/a;->a:[F

    const/16 v0, 0x10

    new-array v1, v0, [F

    iput-object v1, p0, Le/a;->b:[F

    new-array v0, v0, [F

    iput-object v0, p0, Le/a;->c:[F

    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Le/a;->g:Ljava/util/Queue;

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Lh/a;

    invoke-direct {p1}, Lh/a;-><init>()V

    :goto_0
    const/4 v0, 0x0

    new-array v0, v0, [D

    invoke-virtual {p0, p1, v0}, Le/a;->y(Lh/a;[D)V

    iget p1, p0, Le/a;->r:F

    const/4 v0, 0x0

    invoke-virtual {p0, v0, p1, v0}, Le/a;->w([FF[Z)V

    return-void
.end method

.method private a()V
    .locals 26

    move-object/from16 v0, p0

    iget-object v1, v0, Le/a;->s:[Z

    const/4 v2, 0x0

    if-eqz v1, :cond_9

    iget v1, v0, Le/a;->r:F

    const/4 v3, 0x0

    cmpl-float v1, v1, v3

    if-nez v1, :cond_0

    goto/16 :goto_4

    :cond_0
    iget-object v1, v0, Le/a;->q:[F

    if-nez v1, :cond_1

    sget-object v1, Lc/a;->a:[F

    invoke-virtual {v1}, [F->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [F

    iput-object v1, v0, Le/a;->q:[F

    :cond_1
    iget-object v1, v0, Le/a;->s:[Z

    array-length v4, v1

    iget-object v5, v0, Le/a;->q:[F

    array-length v5, v5

    const/4 v6, 0x2

    div-int/2addr v5, v6

    if-ne v4, v5, :cond_8

    array-length v4, v1

    const/4 v5, 0x0

    move v7, v5

    move v8, v7

    :goto_0
    if-ge v7, v4, :cond_3

    aget-boolean v9, v1, v7

    if-eqz v9, :cond_2

    add-int/lit8 v8, v8, 0x1

    :cond_2
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    :cond_3
    if-nez v8, :cond_4

    iput-object v2, v0, Le/a;->j:[[F

    return-void

    :cond_4
    iget-object v1, v0, Le/a;->q:[F

    array-length v1, v1

    div-int/2addr v1, v6

    move v2, v3

    move v4, v5

    :goto_1
    const/4 v7, 0x1

    if-ge v4, v1, :cond_5

    iget-object v9, v0, Le/a;->q:[F

    mul-int/lit8 v10, v4, 0x2

    aget v11, v9, v10

    add-float/2addr v3, v11

    add-int/2addr v10, v7

    aget v7, v9, v10

    add-float/2addr v2, v7

    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_5
    int-to-float v4, v1

    div-float/2addr v3, v4

    div-float/2addr v2, v4

    const/16 v4, 0x10

    new-array v9, v6, [I

    aput v4, v9, v7

    aput v8, v9, v5

    const-class v4, F

    invoke-static {v4, v9}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [[F

    iput-object v4, v0, Le/a;->j:[[F

    const/16 v4, 0x8

    new-array v14, v4, [F

    fill-array-data v14, :array_0

    new-array v15, v4, [F

    const/16 v8, 0x9

    new-array v13, v8, [F

    new-instance v12, Landroid/graphics/Matrix;

    invoke-direct {v12}, Landroid/graphics/Matrix;-><init>()V

    const/high16 v8, 0x3f800000    # 1.0f

    iget v9, v0, Le/a;->r:F

    add-float v16, v9, v8

    move v11, v5

    move/from16 v17, v11

    :goto_2
    if-ge v11, v1, :cond_7

    iget-object v8, v0, Le/a;->s:[Z

    aget-boolean v8, v8, v11

    if-nez v8, :cond_6

    move v10, v4

    move/from16 v25, v11

    move-object v4, v12

    move v11, v6

    move-object v6, v13

    goto/16 :goto_3

    :cond_6
    add-int/lit8 v8, v11, 0x1

    rem-int/2addr v8, v1

    iget-object v9, v0, Le/a;->q:[F

    mul-int/lit8 v10, v11, 0x2

    aget v18, v9, v10

    add-int/2addr v10, v7

    aget v10, v9, v10

    mul-int/2addr v8, v6

    aget v19, v9, v8

    add-int/2addr v8, v7

    aget v8, v9, v8

    aput v18, v15, v5

    aput v10, v15, v7

    sub-float v18, v18, v3

    mul-float v18, v18, v16

    add-float v18, v3, v18

    aput v18, v15, v6

    sub-float/2addr v10, v2

    mul-float v10, v10, v16

    add-float/2addr v10, v2

    const/16 v18, 0x3

    aput v10, v15, v18

    sub-float v9, v19, v3

    mul-float v9, v9, v16

    add-float/2addr v9, v3

    const/16 v20, 0x4

    aput v9, v15, v20

    sub-float v9, v8, v2

    mul-float v9, v9, v16

    add-float/2addr v9, v2

    const/16 v21, 0x5

    aput v9, v15, v21

    const/16 v22, 0x6

    aput v19, v15, v22

    const/16 v19, 0x7

    aput v8, v15, v19

    const/4 v10, 0x0

    const/16 v23, 0x0

    const/16 v24, 0x4

    move-object v8, v12

    move-object v9, v14

    move/from16 v25, v11

    move-object v11, v15

    move-object v4, v12

    move/from16 v12, v23

    move-object v6, v13

    move/from16 v13, v24

    invoke-virtual/range {v8 .. v13}, Landroid/graphics/Matrix;->setPolyToPoly([FI[FII)Z

    invoke-virtual {v4, v6}, Landroid/graphics/Matrix;->getValues([F)V

    iget-object v8, v0, Le/a;->j:[[F

    aget-object v9, v8, v17

    aget v10, v6, v5

    aput v10, v9, v5

    aget-object v9, v8, v17

    aget v10, v6, v7

    aput v10, v9, v20

    aget-object v9, v8, v17

    const/16 v10, 0xc

    const/4 v11, 0x2

    aget v12, v6, v11

    aput v12, v9, v10

    aget-object v9, v8, v17

    aget v10, v6, v18

    aput v10, v9, v7

    aget-object v9, v8, v17

    aget v10, v6, v20

    aput v10, v9, v21

    aget-object v9, v8, v17

    const/16 v10, 0xd

    aget v12, v6, v21

    aput v12, v9, v10

    aget-object v9, v8, v17

    aget v10, v6, v22

    aput v10, v9, v18

    aget-object v9, v8, v17

    aget v10, v6, v19

    aput v10, v9, v19

    aget-object v8, v8, v17

    const/16 v9, 0xf

    const/16 v10, 0x8

    aget v12, v6, v10

    aput v12, v8, v9

    add-int/lit8 v17, v17, 0x1

    :goto_3
    add-int/lit8 v8, v25, 0x1

    move-object v12, v4

    move-object v13, v6

    move v4, v10

    move v6, v11

    move v11, v8

    goto/16 :goto_2

    :cond_7
    return-void

    :cond_8
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Edge array length does not match the shape array."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_9
    :goto_4
    iput-object v2, v0, Le/a;->j:[[F

    return-void

    nop

    :array_0
    .array-data 4
        0x0
        -0x40800000    # -1.0f
        0x3f800000    # 1.0f
        -0x40800000    # -1.0f
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method static declared-synchronized b()Z
    .locals 3

    const-class v0, Le/a;

    monitor-enter v0

    :try_start_0
    invoke-static {}, Landroid/opengl/EGL14;->eglGetCurrentContext()Landroid/opengl/EGLContext;

    move-result-object v1

    sget-object v2, Le/a;->x:Landroid/util/ArrayMap;

    invoke-virtual {v2, v1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lh/a;

    if-eqz v2, :cond_0

    invoke-virtual {v2}, Lh/a;->a()V

    sget-object v2, Le/a;->x:Landroid/util/ArrayMap;

    invoke-virtual {v2, v1}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v1, 0x1

    :goto_0
    monitor-exit v0

    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method static declared-synchronized f()Lh/a;
    .locals 4

    const-class v0, Le/a;

    monitor-enter v0

    :try_start_0
    invoke-static {}, Landroid/opengl/EGL14;->eglGetCurrentContext()Landroid/opengl/EGLContext;

    move-result-object v1

    sget-object v2, Le/a;->x:Landroid/util/ArrayMap;

    invoke-virtual {v2, v1}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    sget-object v2, Le/a;->x:Landroid/util/ArrayMap;

    new-instance v3, Lh/a;

    invoke-direct {v3}, Lh/a;-><init>()V

    invoke-virtual {v2, v1, v3}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    sget-object v2, Le/a;->x:Landroid/util/ArrayMap;

    invoke-virtual {v2, v1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lh/a;

    invoke-virtual {v1}, Lh/a;->c()Z

    move-result v2

    if-nez v2, :cond_1

    invoke-virtual {v1}, Lh/a;->b()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method private t()V
    .locals 3

    iget-object v0, p0, Le/a;->m:Ld/b;

    invoke-virtual {v0}, Ld/b;->a()F

    move-result v0

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    const/high16 v2, 0x3f800000    # 1.0f

    if-eqz v0, :cond_0

    iget-object v0, p0, Le/a;->m:Ld/b;

    invoke-virtual {v0}, Ld/b;->a()F

    move-result v0

    neg-float v0, v0

    invoke-direct {p0, v0, v2, v1, v1}, Le/a;->u(FFFF)V

    :cond_0
    iget-object v0, p0, Le/a;->m:Ld/b;

    invoke-virtual {v0}, Ld/b;->b()F

    move-result v0

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_1

    iget-object v0, p0, Le/a;->m:Ld/b;

    invoke-virtual {v0}, Ld/b;->b()F

    move-result v0

    neg-float v0, v0

    invoke-direct {p0, v0, v1, v2, v1}, Le/a;->u(FFFF)V

    :cond_1
    iget-object v0, p0, Le/a;->m:Ld/b;

    invoke-virtual {v0}, Ld/b;->c()F

    move-result v0

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_2

    iget-object v0, p0, Le/a;->m:Ld/b;

    invoke-virtual {v0}, Ld/b;->c()F

    move-result v0

    invoke-direct {p0, v0, v1, v1, v2}, Le/a;->u(FFFF)V

    :cond_2
    return-void
.end method

.method private u(FFFF)V
    .locals 8

    sget-object v6, Le/a;->w:[F

    const/4 v7, 0x0

    invoke-static {v6, v7}, Landroid/opengl/Matrix;->setIdentityM([FI)V

    const/4 v1, 0x0

    move-object v0, v6

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    invoke-static/range {v0 .. v5}, Landroid/opengl/Matrix;->rotateM([FIFFFF)V

    sget-object p1, Le/a;->u:[F

    iget-object v2, p0, Le/a;->a:[F

    const/4 v3, 0x0

    const/4 v5, 0x0

    move-object v0, p1

    move-object v4, v6

    invoke-static/range {v0 .. v5}, Landroid/opengl/Matrix;->multiplyMM([FI[FI[FI)V

    iget-object p0, p0, Le/a;->a:[F

    array-length p2, p1

    invoke-static {p1, v7, p0, v7, p2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-void
.end method


# virtual methods
.method public A(JF)V
    .locals 8

    invoke-virtual {p0}, Le/a;->o()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Le/a;->m:Ld/b;

    long-to-float p1, p1

    const/high16 p2, 0x447a0000    # 1000.0f

    div-float/2addr p1, p2

    invoke-virtual {v0, p1}, Ld/b;->o(F)V

    iget-object p1, p0, Le/a;->a:[F

    const/4 p2, 0x0

    invoke-static {p1, p2}, Landroid/opengl/Matrix;->setIdentityM([FI)V

    iget-object p1, p0, Le/a;->a:[F

    const/high16 v0, -0x3f000000    # -8.0f

    const/4 v1, 0x0

    invoke-static {p1, p2, v1, v1, v0}, Landroid/opengl/Matrix;->translateM([FIFFF)V

    iget-object p1, p0, Le/a;->a:[F

    iget-object v0, p0, Le/a;->m:Ld/b;

    invoke-virtual {v0}, Ld/b;->f()F

    move-result v0

    iget-object v2, p0, Le/a;->m:Ld/b;

    invoke-virtual {v2}, Ld/b;->g()F

    move-result v2

    neg-float v2, v2

    invoke-static {p1, p2, v0, v2, v1}, Landroid/opengl/Matrix;->translateM([FIFFF)V

    sget-object p1, Le/a$b;->a:[I

    iget-object v0, p0, Le/a;->l:Le/a$c;

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    aget p1, p1, v0

    const/4 v0, 0x1

    const/high16 v1, 0x3f800000    # 1.0f

    if-eq p1, v0, :cond_9

    const/4 v2, 0x2

    if-eq p1, v2, :cond_5

    const/4 v2, 0x3

    if-eq p1, v2, :cond_5

    const/4 v2, 0x4

    if-eq p1, v2, :cond_1

    goto/16 :goto_3

    :cond_1
    invoke-virtual {p0}, Le/a;->i()F

    move-result p1

    div-float p1, p3, p1

    cmpl-float p1, p1, v1

    if-ltz p1, :cond_2

    goto :goto_0

    :cond_2
    move v0, p2

    :goto_0
    const/high16 p1, 0x44340000    # 720.0f

    if-eqz v0, :cond_4

    iget-object v0, p0, Le/a;->a:[F

    div-float v2, v1, p3

    invoke-static {v0, p2, v1, v2, v1}, Landroid/opengl/Matrix;->scaleM([FIFFF)V

    invoke-direct {p0}, Le/a;->t()V

    invoke-virtual {p0}, Le/a;->k()I

    move-result v0

    int-to-float v0, v0

    const/high16 v2, 0x3f100000    # 0.5625f

    cmpl-float p3, p3, v2

    if-nez p3, :cond_3

    const/high16 p1, 0x44a00000    # 1280.0f

    :cond_3
    div-float/2addr v0, p1

    iget-object p1, p0, Le/a;->a:[F

    iget-object p3, p0, Le/a;->m:Ld/b;

    invoke-virtual {p3}, Ld/b;->d()F

    move-result p3

    mul-float/2addr p3, v0

    iget-object v2, p0, Le/a;->m:Ld/b;

    invoke-virtual {v2}, Ld/b;->e()F

    move-result v2

    mul-float/2addr v0, v2

    invoke-virtual {p0}, Le/a;->i()F

    move-result v2

    mul-float/2addr v0, v2

    invoke-static {p1, p2, p3, v0, v1}, Landroid/opengl/Matrix;->scaleM([FIFFF)V

    goto/16 :goto_3

    :cond_4
    iget-object v0, p0, Le/a;->a:[F

    invoke-static {v0, p2, p3, v1, v1}, Landroid/opengl/Matrix;->scaleM([FIFFF)V

    invoke-direct {p0}, Le/a;->t()V

    invoke-virtual {p0}, Le/a;->j()I

    move-result p3

    int-to-float p3, p3

    div-float/2addr p3, p1

    iget-object p1, p0, Le/a;->a:[F

    iget-object v0, p0, Le/a;->m:Ld/b;

    invoke-virtual {v0}, Ld/b;->d()F

    move-result v0

    mul-float/2addr v0, p3

    invoke-virtual {p0}, Le/a;->i()F

    move-result v2

    div-float/2addr v0, v2

    iget-object v2, p0, Le/a;->m:Ld/b;

    invoke-virtual {v2}, Ld/b;->e()F

    move-result v2

    mul-float/2addr p3, v2

    invoke-static {p1, p2, v0, p3, v1}, Landroid/opengl/Matrix;->scaleM([FIFFF)V

    goto/16 :goto_3

    :cond_5
    iget-object p1, p0, Le/a;->l:Le/a$c;

    sget-object v2, Le/a$c;->b:Le/a$c;

    if-ne p1, v2, :cond_6

    move p1, v0

    goto :goto_1

    :cond_6
    move p1, p2

    :goto_1
    invoke-virtual {p0}, Le/a;->i()F

    move-result v2

    div-float v2, p3, v2

    cmpg-float v2, v2, v1

    if-gez v2, :cond_7

    goto :goto_2

    :cond_7
    move v0, p2

    :goto_2
    xor-int/2addr p1, v0

    if-eqz p1, :cond_8

    iget-object p1, p0, Le/a;->a:[F

    div-float p3, v1, p3

    invoke-static {p1, p2, v1, p3, v1}, Landroid/opengl/Matrix;->scaleM([FIFFF)V

    invoke-direct {p0}, Le/a;->t()V

    iget-object p1, p0, Le/a;->a:[F

    iget-object p3, p0, Le/a;->m:Ld/b;

    invoke-virtual {p3}, Ld/b;->d()F

    move-result p3

    iget-object v0, p0, Le/a;->m:Ld/b;

    invoke-virtual {v0}, Ld/b;->e()F

    move-result v0

    invoke-virtual {p0}, Le/a;->i()F

    move-result v2

    mul-float/2addr v0, v2

    invoke-static {p1, p2, p3, v0, v1}, Landroid/opengl/Matrix;->scaleM([FIFFF)V

    goto :goto_3

    :cond_8
    iget-object p1, p0, Le/a;->a:[F

    invoke-static {p1, p2, p3, v1, v1}, Landroid/opengl/Matrix;->scaleM([FIFFF)V

    invoke-direct {p0}, Le/a;->t()V

    iget-object p1, p0, Le/a;->a:[F

    iget-object p3, p0, Le/a;->m:Ld/b;

    invoke-virtual {p3}, Ld/b;->d()F

    move-result p3

    invoke-virtual {p0}, Le/a;->i()F

    move-result v0

    div-float/2addr p3, v0

    iget-object v0, p0, Le/a;->m:Ld/b;

    invoke-virtual {v0}, Ld/b;->e()F

    move-result v0

    invoke-static {p1, p2, p3, v0, v1}, Landroid/opengl/Matrix;->scaleM([FIFFF)V

    goto :goto_3

    :cond_9
    invoke-direct {p0}, Le/a;->t()V

    iget-object p1, p0, Le/a;->a:[F

    iget-object p3, p0, Le/a;->m:Ld/b;

    invoke-virtual {p3}, Ld/b;->d()F

    move-result p3

    iget-object v0, p0, Le/a;->m:Ld/b;

    invoke-virtual {v0}, Ld/b;->e()F

    move-result v0

    invoke-static {p1, p2, p3, v0, v1}, Landroid/opengl/Matrix;->scaleM([FIFFF)V

    :goto_3
    sget-object p1, Le/a;->u:[F

    const/4 v3, 0x0

    sget-object v4, Le/a;->v:[F

    const/4 v5, 0x0

    iget-object v6, p0, Le/a;->a:[F

    const/4 v7, 0x0

    move-object v2, p1

    invoke-static/range {v2 .. v7}, Landroid/opengl/Matrix;->multiplyMM([FI[FI[FI)V

    iget-object p0, p0, Le/a;->a:[F

    array-length p3, p1

    invoke-static {p1, p2, p0, p2, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-void
.end method

.method public B(J)V
    .locals 0

    iget-object p0, p0, Le/a;->n:Ld/d;

    long-to-float p1, p1

    const/high16 p2, 0x447a0000    # 1000.0f

    div-float/2addr p1, p2

    invoke-virtual {p0, p1}, Ld/d;->c(F)V

    return-void
.end method

.method public abstract c(Z)Z
.end method

.method public abstract d()I
.end method

.method public e()Ld/b;
    .locals 0

    iget-object p0, p0, Le/a;->m:Ld/b;

    return-object p0
.end method

.method g()I
    .locals 0

    iget p0, p0, Le/a;->e:I

    return p0
.end method

.method h()I
    .locals 0

    iget p0, p0, Le/a;->d:I

    return p0
.end method

.method public i()F
    .locals 1

    invoke-virtual {p0}, Le/a;->d()I

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Le/a;->m()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Le/a;->d()I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {p0}, Le/a;->m()I

    move-result p0

    int-to-float p0, p0

    div-float/2addr v0, p0

    return v0

    :cond_1
    :goto_0
    const/high16 p0, 0x3f800000    # 1.0f

    return p0
.end method

.method public abstract j()I
.end method

.method public abstract k()I
.end method

.method public l()Ld/d;
    .locals 0

    iget-object p0, p0, Le/a;->n:Ld/d;

    return-object p0
.end method

.method public abstract m()I
.end method

.method public n()V
    .locals 1

    iget-object v0, p0, Le/a;->f:Lh/a;

    invoke-virtual {v0}, Lh/a;->c()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object p0, p0, Le/a;->f:Lh/a;

    invoke-virtual {p0}, Lh/a;->b()V

    :cond_0
    return-void
.end method

.method public o()Z
    .locals 1

    iget-object p0, p0, Le/a;->n:Ld/d;

    invoke-virtual {p0}, Ld/d;->a()F

    move-result p0

    const/4 v0, 0x0

    cmpl-float p0, p0, v0

    if-lez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method protected final p(IZ)Z
    .locals 8

    invoke-virtual {p0}, Le/a;->v()V

    invoke-virtual {p0}, Le/a;->o()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Le/a;->n()V

    if-eqz p2, :cond_0

    iget-object v2, p0, Le/a;->b:[F

    const/4 v3, 0x0

    iget-object v4, p0, Le/a;->a:[F

    const/4 v5, 0x0

    sget-object v6, Lc/g;->c:[F

    const/4 v7, 0x0

    invoke-static/range {v2 .. v7}, Landroid/opengl/Matrix;->multiplyMM([FI[FI[FI)V

    goto :goto_0

    :cond_0
    iget-object p2, p0, Le/a;->a:[F

    iget-object v0, p0, Le/a;->b:[F

    const/16 v2, 0x10

    invoke-static {p2, v1, v0, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :goto_0
    iget-object p2, p0, Le/a;->f:Lh/a;

    iget-object v0, p0, Le/a;->n:Ld/d;

    invoke-virtual {v0}, Ld/d;->a()F

    move-result v0

    invoke-virtual {p2, v0}, Lh/a;->l(F)V

    iget-object p2, p0, Le/a;->f:Lh/a;

    iget-object v0, p0, Le/a;->b:[F

    invoke-virtual {p2, v0}, Lh/a;->m([F)V

    iget-object p2, p0, Le/a;->f:Lh/a;

    iget-object v0, p0, Le/a;->h:Ljava/nio/FloatBuffer;

    iget-object v2, p0, Le/a;->i:Ljava/nio/FloatBuffer;

    invoke-virtual {p2, p1, v0, v2}, Lh/a;->e(ILjava/nio/FloatBuffer;Ljava/nio/FloatBuffer;)V

    iget-object p1, p0, Le/a;->j:[[F

    if-eqz p1, :cond_1

    iget-object p2, p0, Le/a;->k:Lg/d;

    if-eqz p2, :cond_1

    array-length p2, p1

    :goto_1
    if-ge v1, p2, :cond_1

    aget-object v6, p1, v1

    iget-object v2, p0, Le/a;->c:[F

    const/4 v3, 0x0

    iget-object v4, p0, Le/a;->b:[F

    const/4 v5, 0x0

    const/4 v7, 0x0

    invoke-static/range {v2 .. v7}, Landroid/opengl/Matrix;->multiplyMM([FI[FI[FI)V

    invoke-static {}, Le/a;->f()Lh/a;

    move-result-object v0

    iget-object v2, p0, Le/a;->n:Ld/d;

    invoke-virtual {v2}, Ld/d;->a()F

    move-result v2

    invoke-virtual {v0, v2}, Lh/a;->l(F)V

    iget-object v2, p0, Le/a;->c:[F

    invoke-virtual {v0, v2}, Lh/a;->m([F)V

    iget-object v2, p0, Le/a;->k:Lg/d;

    invoke-virtual {v2}, Lg/d;->g()I

    move-result v2

    sget-object v3, Lc/a;->c:Ljava/nio/FloatBuffer;

    sget-object v4, Lc/a;->e:Ljava/nio/FloatBuffer;

    invoke-virtual {v0, v2, v3, v4}, Lh/a;->e(ILjava/nio/FloatBuffer;Ljava/nio/FloatBuffer;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_1
    const/4 p0, 0x1

    return p0

    :cond_2
    invoke-virtual {p0}, Le/a;->s()V

    return v1
.end method

.method public q(II)V
    .locals 0

    iput p1, p0, Le/a;->d:I

    iput p2, p0, Le/a;->e:I

    iget-object p1, p0, Le/a;->f:Lh/a;

    invoke-virtual {p0}, Le/a;->h()I

    move-result p2

    invoke-virtual {p0}, Le/a;->g()I

    move-result p0

    invoke-virtual {p1, p2, p0}, Lh/a;->j(II)V

    return-void
.end method

.method r(Ljava/lang/Runnable;)V
    .locals 1

    iget-object v0, p0, Le/a;->g:Ljava/util/Queue;

    monitor-enter v0

    :try_start_0
    iget-object p0, p0, Le/a;->g:Ljava/util/Queue;

    invoke-interface {p0, p1}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public s()V
    .locals 1

    iget-object v0, p0, Le/a;->f:Lh/a;

    invoke-virtual {v0}, Lh/a;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Le/a;->f:Lh/a;

    invoke-virtual {p0}, Lh/a;->a()V

    :cond_0
    return-void
.end method

.method v()V
    .locals 2

    iget-object v0, p0, Le/a;->g:Ljava/util/Queue;

    monitor-enter v0

    :goto_0
    :try_start_0
    iget-object v1, p0, Le/a;->g:Ljava/util/Queue;

    invoke-interface {v1}, Ljava/util/Queue;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Le/a;->g:Ljava/util/Queue;

    invoke-interface {v1}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Runnable;

    invoke-interface {v1}, Ljava/lang/Runnable;->run()V

    goto :goto_0

    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public w([FF[Z)V
    .locals 1

    iput-object p1, p0, Le/a;->q:[F

    iput p2, p0, Le/a;->r:F

    iput-object p3, p0, Le/a;->s:[Z

    if-nez p1, :cond_0

    sget-object p1, Lc/a;->c:Ljava/nio/FloatBuffer;

    iput-object p1, p0, Le/a;->h:Ljava/nio/FloatBuffer;

    sget-object p1, Lc/a;->e:Ljava/nio/FloatBuffer;

    iput-object p1, p0, Le/a;->i:Ljava/nio/FloatBuffer;

    goto :goto_0

    :cond_0
    array-length p1, p1

    mul-int/lit8 p1, p1, 0x4

    invoke-static {p1}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object p1

    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->asFloatBuffer()Ljava/nio/FloatBuffer;

    move-result-object p1

    iput-object p1, p0, Le/a;->h:Ljava/nio/FloatBuffer;

    iget-object p2, p0, Le/a;->q:[F

    invoke-virtual {p1, p2}, Ljava/nio/FloatBuffer;->put([F)Ljava/nio/FloatBuffer;

    move-result-object p1

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    iget-object p1, p0, Le/a;->q:[F

    invoke-static {p1}, Lc/a;->b([F)[F

    move-result-object p1

    array-length p3, p1

    mul-int/lit8 p3, p3, 0x4

    invoke-static {p3}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object p3

    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v0

    invoke-virtual {p3, v0}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object p3

    invoke-virtual {p3}, Ljava/nio/ByteBuffer;->asFloatBuffer()Ljava/nio/FloatBuffer;

    move-result-object p3

    iput-object p3, p0, Le/a;->i:Ljava/nio/FloatBuffer;

    invoke-virtual {p3, p1}, Ljava/nio/FloatBuffer;->put([F)Ljava/nio/FloatBuffer;

    move-result-object p1

    invoke-virtual {p1, p2}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    :goto_0
    invoke-direct {p0}, Le/a;->a()V

    return-void
.end method

.method public x(Lg/d;)V
    .locals 0

    iput-object p1, p0, Le/a;->k:Lg/d;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lg/d;->c()I

    move-result p1

    goto :goto_0

    :cond_0
    const/4 p1, -0x1

    :goto_0
    iput p1, p0, Le/a;->t:I

    return-void
.end method

.method public varargs y(Lh/a;[D)V
    .locals 3

    iget-object v0, p0, Le/a;->f:Lh/a;

    iput-object p1, p0, Le/a;->f:Lh/a;

    invoke-virtual {p0}, Le/a;->h()I

    move-result v1

    invoke-virtual {p0}, Le/a;->g()I

    move-result v2

    invoke-virtual {p1, v1, v2}, Lh/a;->j(II)V

    if-eqz v0, :cond_0

    new-instance p1, Le/a$a;

    invoke-direct {p1, p0, v0}, Le/a$a;-><init>(Le/a;Lh/a;)V

    invoke-virtual {p0, p1}, Le/a;->r(Ljava/lang/Runnable;)V

    :cond_0
    iget-object p1, p0, Le/a;->f:Lh/a;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-static {p1}, Lf/a;->b(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Le/a;->o:Ljava/lang/String;

    iput-object p2, p0, Le/a;->p:[D

    return-void
.end method

.method public z(Le/a$c;)V
    .locals 0

    iput-object p1, p0, Le/a;->l:Le/a$c;

    return-void
.end method
