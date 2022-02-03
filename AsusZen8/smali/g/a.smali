.class public abstract Lg/a;
.super Lg/c;
.source ""


# instance fields
.field private c:Z

.field private transient d:I

.field private transient e:I

.field private transient f:Landroid/graphics/Bitmap;

.field protected g:Z

.field protected h:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0, p1}, Lg/c;-><init>(Landroid/content/Context;)V

    const/4 p1, 0x0

    iput-boolean p1, p0, Lg/a;->c:Z

    return-void
.end method


# virtual methods
.method public a()V
    .locals 5

    invoke-virtual {p0}, Lg/c;->f()I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    new-array v2, v0, [I

    invoke-virtual {p0}, Lg/c;->f()I

    move-result v3

    const/4 v4, 0x0

    aput v3, v2, v4

    invoke-static {v0, v2, v4}, Landroid/opengl/GLES20;->glDeleteTextures(I[II)V

    invoke-virtual {p0, v1}, Lg/c;->k(I)V

    iput-boolean v4, p0, Lg/a;->c:Z

    :cond_0
    return-void
.end method

.method public c()I
    .locals 0

    iget p0, p0, Lg/a;->e:I

    return p0
.end method

.method public g()I
    .locals 0

    iget p0, p0, Lg/a;->d:I

    return p0
.end method

.method public h()V
    .locals 6

    iget-object v0, p0, Lg/a;->f:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lg/a;->a()V

    const/4 v0, 0x1

    new-array v1, v0, [I

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/opengl/GLES20;->glGenTextures(I[II)V

    aget v3, v1, v2

    const/16 v4, 0xde1

    invoke-static {v4, v3}, Landroid/opengl/GLES20;->glBindTexture(II)V

    const/16 v3, 0x2800

    const v5, 0x46180400    # 9729.0f

    invoke-static {v4, v3, v5}, Landroid/opengl/GLES20;->glTexParameterf(IIF)V

    const/16 v3, 0x2801

    invoke-static {v4, v3, v5}, Landroid/opengl/GLES20;->glTexParameterf(IIF)V

    const/16 v3, 0x2802

    const v5, 0x47012f00    # 33071.0f

    invoke-static {v4, v3, v5}, Landroid/opengl/GLES20;->glTexParameterf(IIF)V

    const/16 v3, 0x2803

    invoke-static {v4, v3, v5}, Landroid/opengl/GLES20;->glTexParameterf(IIF)V

    iget-object v3, p0, Lg/a;->f:Landroid/graphics/Bitmap;

    invoke-static {v4, v2, v3, v2}, Landroid/opengl/GLUtils;->texImage2D(IILandroid/graphics/Bitmap;I)V

    aget v1, v1, v2

    invoke-virtual {p0, v1}, Lg/c;->k(I)V

    iget-object v1, p0, Lg/a;->f:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->recycle()V

    const/4 v1, 0x0

    iput-object v1, p0, Lg/a;->f:Landroid/graphics/Bitmap;

    iput-boolean v0, p0, Lg/a;->c:Z

    :cond_0
    return-void
.end method

.method public l(II)V
    .locals 2

    invoke-super {p0, p1, p2}, Lg/c;->l(II)V

    iget-boolean v0, p0, Lg/a;->c:Z

    if-nez v0, :cond_4

    if-nez p1, :cond_0

    if-nez p2, :cond_0

    goto :goto_1

    :cond_0
    invoke-virtual {p0, p1, p2}, Lg/a;->m(II)Landroid/graphics/Bitmap;

    move-result-object p1

    iput-object p1, p0, Lg/a;->f:Landroid/graphics/Bitmap;

    iget-boolean p2, p0, Lg/a;->g:Z

    if-eqz p2, :cond_1

    iget-object p2, p0, Lg/c;->a:Landroid/content/Context;

    const/16 v0, 0x19

    const/4 v1, 0x1

    invoke-static {p2, p1, v0, v1}, Lj/b;->a(Landroid/content/Context;Landroid/graphics/Bitmap;IZ)Landroid/graphics/Bitmap;

    move-result-object p1

    iput-object p1, p0, Lg/a;->f:Landroid/graphics/Bitmap;

    :cond_1
    iget-object p1, p0, Lg/a;->f:Landroid/graphics/Bitmap;

    const/4 p2, 0x0

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result p1

    goto :goto_0

    :cond_2
    move p1, p2

    :goto_0
    iput p1, p0, Lg/a;->d:I

    iget-object p1, p0, Lg/a;->f:Landroid/graphics/Bitmap;

    if-eqz p1, :cond_3

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result p2

    :cond_3
    iput p2, p0, Lg/a;->e:I

    :cond_4
    :goto_1
    return-void
.end method

.method protected abstract m(II)Landroid/graphics/Bitmap;
.end method
