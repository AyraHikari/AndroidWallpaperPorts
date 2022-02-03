.class public Ld/b;
.super Ljava/lang/Object;
.source ""


# instance fields
.field private transient a:F

.field private transient b:F

.field private transient c:F

.field private transient d:F

.field private transient e:F

.field private transient f:F

.field private transient g:F

.field private transient h:Ld/a;

.field private transient i:Ld/a;

.field private transient j:Ld/a;

.field private transient k:Ld/a;

.field private transient l:Ld/a;

.field private transient m:Ld/a;

.field private transient n:Ld/a;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ld/a;

    invoke-direct {v0}, Ld/a;-><init>()V

    iput-object v0, p0, Ld/b;->h:Ld/a;

    new-instance v0, Ld/a;

    invoke-direct {v0}, Ld/a;-><init>()V

    iput-object v0, p0, Ld/b;->i:Ld/a;

    new-instance v0, Ld/a;

    invoke-direct {v0}, Ld/a;-><init>()V

    iput-object v0, p0, Ld/b;->j:Ld/a;

    new-instance v0, Ld/a;

    invoke-direct {v0}, Ld/a;-><init>()V

    iput-object v0, p0, Ld/b;->k:Ld/a;

    new-instance v0, Ld/a;

    invoke-direct {v0}, Ld/a;-><init>()V

    iput-object v0, p0, Ld/b;->l:Ld/a;

    new-instance v0, Ld/a;

    invoke-direct {v0}, Ld/a;-><init>()V

    iput-object v0, p0, Ld/b;->m:Ld/a;

    new-instance v0, Ld/a;

    invoke-direct {v0}, Ld/a;-><init>()V

    iput-object v0, p0, Ld/b;->n:Ld/a;

    return-void
.end method


# virtual methods
.method public a()F
    .locals 0

    iget p0, p0, Ld/b;->e:F

    return p0
.end method

.method public b()F
    .locals 0

    iget p0, p0, Ld/b;->f:F

    return p0
.end method

.method public c()F
    .locals 0

    iget p0, p0, Ld/b;->g:F

    return p0
.end method

.method public d()F
    .locals 0

    iget p0, p0, Ld/b;->c:F

    return p0
.end method

.method public e()F
    .locals 0

    iget p0, p0, Ld/b;->d:F

    return p0
.end method

.method public f()F
    .locals 0

    iget p0, p0, Ld/b;->a:F

    return p0
.end method

.method public g()F
    .locals 0

    iget p0, p0, Ld/b;->b:F

    return p0
.end method

.method public h()Ld/a;
    .locals 0

    iget-object p0, p0, Ld/b;->l:Ld/a;

    return-object p0
.end method

.method public i()Ld/a;
    .locals 0

    iget-object p0, p0, Ld/b;->m:Ld/a;

    return-object p0
.end method

.method public j()Ld/a;
    .locals 0

    iget-object p0, p0, Ld/b;->n:Ld/a;

    return-object p0
.end method

.method public k()Ld/a;
    .locals 0

    iget-object p0, p0, Ld/b;->j:Ld/a;

    return-object p0
.end method

.method public l()Ld/a;
    .locals 0

    iget-object p0, p0, Ld/b;->k:Ld/a;

    return-object p0
.end method

.method public m()Ld/a;
    .locals 0

    iget-object p0, p0, Ld/b;->h:Ld/a;

    return-object p0
.end method

.method public n()Ld/a;
    .locals 0

    iget-object p0, p0, Ld/b;->i:Ld/a;

    return-object p0
.end method

.method public o(F)V
    .locals 5

    iget-object v0, p0, Ld/b;->h:Ld/a;

    invoke-virtual {v0, p1}, Ld/a;->d(F)F

    move-result v0

    const/4 v1, 0x1

    cmpl-float v2, v0, v1

    const/4 v3, 0x0

    if-nez v2, :cond_0

    move v0, v3

    :cond_0
    iput v0, p0, Ld/b;->a:F

    iget-object v0, p0, Ld/b;->i:Ld/a;

    invoke-virtual {v0, p1}, Ld/a;->d(F)F

    move-result v0

    cmpl-float v2, v0, v1

    if-nez v2, :cond_1

    move v0, v3

    :cond_1
    iput v0, p0, Ld/b;->b:F

    iget-object v0, p0, Ld/b;->j:Ld/a;

    invoke-virtual {v0, p1}, Ld/a;->c(F)F

    move-result v0

    cmpl-float v2, v0, v1

    const/high16 v4, 0x3f800000    # 1.0f

    if-nez v2, :cond_2

    move v0, v4

    :cond_2
    iput v0, p0, Ld/b;->c:F

    iget-object v0, p0, Ld/b;->k:Ld/a;

    invoke-virtual {v0, p1}, Ld/a;->c(F)F

    move-result v0

    cmpl-float v2, v0, v1

    if-nez v2, :cond_3

    goto :goto_0

    :cond_3
    move v4, v0

    :goto_0
    iput v4, p0, Ld/b;->d:F

    iget-object v0, p0, Ld/b;->l:Ld/a;

    invoke-virtual {v0, p1}, Ld/a;->d(F)F

    move-result v0

    cmpl-float v2, v0, v1

    if-nez v2, :cond_4

    move v0, v3

    :cond_4
    iput v0, p0, Ld/b;->e:F

    iget-object v0, p0, Ld/b;->m:Ld/a;

    invoke-virtual {v0, p1}, Ld/a;->d(F)F

    move-result v0

    cmpl-float v2, v0, v1

    if-nez v2, :cond_5

    move v0, v3

    :cond_5
    iput v0, p0, Ld/b;->f:F

    iget-object v0, p0, Ld/b;->n:Ld/a;

    invoke-virtual {v0, p1}, Ld/a;->d(F)F

    move-result p1

    cmpl-float v0, p1, v1

    if-nez v0, :cond_6

    goto :goto_1

    :cond_6
    move v3, p1

    :goto_1
    iput v3, p0, Ld/b;->g:F

    return-void
.end method
