.class public Lc/e;
.super Ljava/lang/Object;
.source ""


# instance fields
.field private a:I

.field private b:I

.field private c:I

.field private d:I

.field private e:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lc/e;->a:I

    iput v0, p0, Lc/e;->b:I

    return-void
.end method


# virtual methods
.method public a()V
    .locals 2

    invoke-static {}, Lc/b;->b()V

    iget v0, p0, Lc/e;->a:I

    const v1, 0x8d40

    invoke-static {v1, v0}, Landroid/opengl/GLES20;->glBindFramebuffer(II)V

    iget v0, p0, Lc/e;->c:I

    iget p0, p0, Lc/e;->d:I

    const/4 v1, 0x0

    invoke-static {v1, v1, v0, p0}, Landroid/opengl/GLES20;->glViewport(IIII)V

    return-void
.end method

.method public b()V
    .locals 5

    iget v0, p0, Lc/e;->a:I

    const/4 v1, 0x1

    const/4 v2, -0x1

    const/4 v3, 0x0

    if-eq v0, v2, :cond_0

    new-array v4, v1, [I

    aput v0, v4, v3

    invoke-static {v1, v4, v3}, Landroid/opengl/GLES20;->glDeleteFramebuffers(I[II)V

    iput v2, p0, Lc/e;->a:I

    :cond_0
    iget v0, p0, Lc/e;->b:I

    if-eq v0, v2, :cond_1

    new-array v4, v1, [I

    aput v0, v4, v3

    invoke-static {v1, v4, v3}, Landroid/opengl/GLES20;->glDeleteTextures(I[II)V

    iput v2, p0, Lc/e;->b:I

    :cond_1
    iput-boolean v3, p0, Lc/e;->e:Z

    return-void
.end method

.method public c()I
    .locals 0

    iget p0, p0, Lc/e;->b:I

    return p0
.end method

.method public d(II)V
    .locals 14

    move-object v0, p0

    move v4, p1

    iput v4, v0, Lc/e;->c:I

    move/from16 v5, p2

    iput v5, v0, Lc/e;->d:I

    invoke-static {}, Lc/b;->b()V

    const/4 v10, 0x1

    new-array v1, v10, [I

    const/4 v11, 0x0

    invoke-static {v10, v1, v11}, Landroid/opengl/GLES20;->glGenFramebuffers(I[II)V

    aget v2, v1, v11

    iput v2, v0, Lc/e;->a:I

    const v12, 0x8d40

    invoke-static {v12, v2}, Landroid/opengl/GLES20;->glBindFramebuffer(II)V

    const/16 v2, 0xbe2

    invoke-static {v2}, Landroid/opengl/GLES20;->glEnable(I)V

    const/16 v2, 0x303

    invoke-static {v10, v2}, Landroid/opengl/GLES20;->glBlendFunc(II)V

    invoke-static {v10, v1, v11}, Landroid/opengl/GLES20;->glGenTextures(I[II)V

    aget v1, v1, v11

    iput v1, v0, Lc/e;->b:I

    const/16 v13, 0xde1

    invoke-static {v13, v1}, Landroid/opengl/GLES20;->glBindTexture(II)V

    const/16 v1, 0xde1

    const/4 v2, 0x0

    const/16 v3, 0x1908

    const/4 v6, 0x0

    const/16 v7, 0x1908

    const/16 v8, 0x1401

    const/4 v9, 0x0

    invoke-static/range {v1 .. v9}, Landroid/opengl/GLES20;->glTexImage2D(IIIIIIIILjava/nio/Buffer;)V

    const/16 v1, 0x2802

    const v2, 0x812f

    invoke-static {v13, v1, v2}, Landroid/opengl/GLES20;->glTexParameteri(III)V

    const/16 v1, 0x2803

    invoke-static {v13, v1, v2}, Landroid/opengl/GLES20;->glTexParameteri(III)V

    const/16 v1, 0x2800

    const/16 v2, 0x2601

    invoke-static {v13, v1, v2}, Landroid/opengl/GLES20;->glTexParameteri(III)V

    const/16 v1, 0x2801

    invoke-static {v13, v1, v2}, Landroid/opengl/GLES20;->glTexParameteri(III)V

    iget v1, v0, Lc/e;->b:I

    const v2, 0x8ce0

    invoke-static {v12, v2, v13, v1, v11}, Landroid/opengl/GLES20;->glFramebufferTexture2D(IIIII)V

    invoke-static {v13, v11}, Landroid/opengl/GLES20;->glBindTexture(II)V

    invoke-static {}, Lc/b;->a()V

    iput-boolean v10, v0, Lc/e;->e:Z

    return-void
.end method

.method public e()Z
    .locals 0

    iget-boolean p0, p0, Lc/e;->e:Z

    return p0
.end method

.method public f()V
    .locals 0

    invoke-static {}, Lc/b;->a()V

    return-void
.end method
