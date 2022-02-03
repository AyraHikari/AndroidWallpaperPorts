.class public Le/d;
.super Le/a;
.source ""


# instance fields
.field private transient y:Lg/d;

.field private z:I


# direct methods
.method public constructor <init>(Lg/d;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Le/d;-><init>(Lg/d;Lh/a;)V

    return-void
.end method

.method public constructor <init>(Lg/d;Lh/a;)V
    .locals 0

    invoke-direct {p0, p2}, Le/a;-><init>(Lh/a;)V

    invoke-virtual {p0, p1}, Le/d;->C(Lg/d;)V

    return-void
.end method


# virtual methods
.method public C(Lg/d;)V
    .locals 0

    iput-object p1, p0, Le/d;->y:Lg/d;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lg/d;->c()I

    move-result p1

    goto :goto_0

    :cond_0
    const/4 p1, -0x1

    :goto_0
    iput p1, p0, Le/d;->z:I

    return-void
.end method

.method public c(Z)Z
    .locals 1

    iget-object v0, p0, Le/d;->y:Lg/d;

    invoke-virtual {v0}, Lg/d;->j()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Le/d;->y:Lg/d;

    invoke-virtual {v0}, Lg/d;->g()I

    move-result v0

    invoke-super {p0, v0, p1}, Le/a;->p(IZ)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public d()I
    .locals 0

    iget-object p0, p0, Le/d;->y:Lg/d;

    invoke-virtual {p0}, Lg/d;->b()I

    move-result p0

    return p0
.end method

.method public j()I
    .locals 0

    iget-object p0, p0, Le/d;->y:Lg/d;

    invoke-virtual {p0}, Lg/d;->d()I

    move-result p0

    return p0
.end method

.method public k()I
    .locals 0

    iget-object p0, p0, Le/d;->y:Lg/d;

    invoke-virtual {p0}, Lg/d;->e()I

    move-result p0

    return p0
.end method

.method public m()I
    .locals 0

    iget-object p0, p0, Le/d;->y:Lg/d;

    invoke-virtual {p0}, Lg/d;->i()I

    move-result p0

    return p0
.end method

.method public q(II)V
    .locals 0

    invoke-super {p0, p1, p2}, Le/a;->q(II)V

    return-void
.end method
