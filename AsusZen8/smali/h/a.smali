.class public Lh/a;
.super Ljava/lang/Object;
.source ""


# instance fields
.field private final a:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList<",
            "Ljava/lang/Runnable;",
            ">;"
        }
    .end annotation
.end field

.field private final b:Ljava/lang/String;

.field private final c:Ljava/lang/String;

.field protected d:I

.field protected e:I

.field protected f:I

.field protected g:I

.field protected h:I

.field protected i:I

.field protected j:I

.field protected k:I

.field private l:Z

.field protected m:[F

.field protected n:F


# direct methods
.method public constructor <init>()V
    .locals 2

    const-string v0, "attribute vec4 position;\nattribute vec4 inputTextureCoordinate;\nuniform mat4 uMatrix; \nvarying vec2 textureCoordinate;\n \nvoid main()\n{\n    gl_Position = uMatrix * position;\n    textureCoordinate = inputTextureCoordinate.xy;\n}"

    const-string v1, "varying highp vec2 textureCoordinate;\n \nuniform sampler2D inputImageTexture;\n \nuniform highp float uAlpha;\n \nvoid main()\n{\n     gl_FragColor = texture2D(inputImageTexture, textureCoordinate);\n     gl_FragColor *= uAlpha;}"

    invoke-direct {p0, v0, v1}, Lh/a;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lh/a;->n:F

    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lh/a;->a:Ljava/util/LinkedList;

    iput-object p1, p0, Lh/a;->b:Ljava/lang/String;

    iput-object p2, p0, Lh/a;->c:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lh/a;->l:Z

    iget v0, p0, Lh/a;->d:I

    invoke-static {v0}, Landroid/opengl/GLES20;->glDeleteProgram(I)V

    invoke-virtual {p0}, Lh/a;->d()V

    return-void
.end method

.method public final b()V
    .locals 1

    invoke-virtual {p0}, Lh/a;->h()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lh/a;->l:Z

    invoke-virtual {p0}, Lh/a;->i()V

    return-void
.end method

.method public c()Z
    .locals 0

    iget-boolean p0, p0, Lh/a;->l:Z

    return p0
.end method

.method public d()V
    .locals 0

    return-void
.end method

.method public e(ILjava/nio/FloatBuffer;Ljava/nio/FloatBuffer;)V
    .locals 10

    iget-boolean v0, p0, Lh/a;->l:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget v0, p0, Lh/a;->d:I

    invoke-static {v0}, Landroid/opengl/GLES20;->glUseProgram(I)V

    invoke-virtual {p0}, Lh/a;->k()V

    iget v0, p0, Lh/a;->g:I

    const/4 v1, 0x1

    iget-object v2, p0, Lh/a;->m:[F

    if-eqz v2, :cond_1

    goto :goto_0

    :cond_1
    sget-object v2, Lc/g;->b:[F

    :goto_0
    const/4 v3, 0x0

    invoke-static {v0, v1, v3, v2, v3}, Landroid/opengl/GLES20;->glUniformMatrix4fv(IIZ[FI)V

    iget v4, p0, Lh/a;->e:I

    const/4 v5, 0x2

    const/16 v6, 0x1406

    const/4 v7, 0x0

    const/16 v8, 0x8

    move-object v9, p2

    invoke-static/range {v4 .. v9}, Landroid/opengl/GLES20;->glVertexAttribPointer(IIIZILjava/nio/Buffer;)V

    iget v0, p0, Lh/a;->e:I

    invoke-static {v0}, Landroid/opengl/GLES20;->glEnableVertexAttribArray(I)V

    iget v4, p0, Lh/a;->i:I

    move-object v9, p3

    invoke-static/range {v4 .. v9}, Landroid/opengl/GLES20;->glVertexAttribPointer(IIIZILjava/nio/Buffer;)V

    iget v0, p0, Lh/a;->i:I

    invoke-static {v0}, Landroid/opengl/GLES20;->glEnableVertexAttribArray(I)V

    const/16 v0, 0xde1

    const/4 v1, -0x1

    if-eq p1, v1, :cond_2

    const v2, 0x84c0

    invoke-static {v2}, Landroid/opengl/GLES20;->glActiveTexture(I)V

    invoke-static {v0, p1}, Landroid/opengl/GLES20;->glBindTexture(II)V

    iget v2, p0, Lh/a;->f:I

    invoke-static {v2, v3}, Landroid/opengl/GLES20;->glUniform1i(II)V

    :cond_2
    iget v2, p0, Lh/a;->h:I

    if-eq v2, v1, :cond_3

    iget v1, p0, Lh/a;->n:F

    invoke-static {v2, v1}, Landroid/opengl/GLES20;->glUniform1f(IF)V

    :cond_3
    invoke-virtual {p0, p1, p2, p3}, Lh/a;->g(ILjava/nio/FloatBuffer;Ljava/nio/FloatBuffer;)V

    const/4 v1, 0x6

    invoke-virtual {p2}, Ljava/nio/FloatBuffer;->capacity()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    invoke-static {v1, v3, v2}, Landroid/opengl/GLES20;->glDrawArrays(III)V

    iget v1, p0, Lh/a;->e:I

    invoke-static {v1}, Landroid/opengl/GLES20;->glDisableVertexAttribArray(I)V

    iget v1, p0, Lh/a;->i:I

    invoke-static {v1}, Landroid/opengl/GLES20;->glDisableVertexAttribArray(I)V

    invoke-static {v0, v3}, Landroid/opengl/GLES20;->glBindTexture(II)V

    invoke-virtual {p0, p1, p2, p3}, Lh/a;->f(ILjava/nio/FloatBuffer;Ljava/nio/FloatBuffer;)V

    return-void
.end method

.method protected f(ILjava/nio/FloatBuffer;Ljava/nio/FloatBuffer;)V
    .locals 0

    return-void
.end method

.method protected g(ILjava/nio/FloatBuffer;Ljava/nio/FloatBuffer;)V
    .locals 0

    return-void
.end method

.method public h()V
    .locals 2

    iget-object v0, p0, Lh/a;->b:Ljava/lang/String;

    iget-object v1, p0, Lh/a;->c:Ljava/lang/String;

    invoke-static {v0, v1}, Lh/b;->a(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lh/a;->d:I

    const-string v1, "position"

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glGetAttribLocation(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Lh/a;->e:I

    iget v0, p0, Lh/a;->d:I

    const-string v1, "inputImageTexture"

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Lh/a;->f:I

    iget v0, p0, Lh/a;->d:I

    const-string v1, "uMatrix"

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Lh/a;->g:I

    iget v0, p0, Lh/a;->d:I

    const-string v1, "inputTextureCoordinate"

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glGetAttribLocation(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Lh/a;->i:I

    iget v0, p0, Lh/a;->d:I

    const-string v1, "uAlpha"

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Lh/a;->h:I

    return-void
.end method

.method public i()V
    .locals 0

    return-void
.end method

.method public j(II)V
    .locals 0

    iput p1, p0, Lh/a;->j:I

    iput p2, p0, Lh/a;->k:I

    return-void
.end method

.method protected k()V
    .locals 1

    :goto_0
    iget-object v0, p0, Lh/a;->a:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lh/a;->a:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->removeFirst()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public l(F)V
    .locals 0

    iput p1, p0, Lh/a;->n:F

    return-void
.end method

.method public m([F)V
    .locals 0

    iput-object p1, p0, Lh/a;->m:[F

    return-void
.end method
