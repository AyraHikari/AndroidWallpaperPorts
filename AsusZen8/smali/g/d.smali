.class public Lg/d;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lg/f$c;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lg/d$a;
    }
.end annotation


# instance fields
.field private transient a:Lg/d$a;

.field private b:Lg/c;

.field private c:I


# direct methods
.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lg/d;-><init>(Lg/c;)V

    return-void
.end method

.method public constructor <init>(Lg/c;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p0, p1}, Lg/d;->n(Lg/c;)V

    return-void
.end method


# virtual methods
.method public a(JLg/f;)V
    .locals 0

    iget-object p3, p0, Lg/d;->a:Lg/d$a;

    if-eqz p3, :cond_0

    invoke-interface {p3, p0, p1, p2}, Lg/d$a;->a(Lg/d;J)V

    :cond_0
    return-void
.end method

.method public b()I
    .locals 0

    iget-object p0, p0, Lg/d;->b:Lg/c;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lg/c;->c()I

    move-result p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public c()I
    .locals 0

    iget p0, p0, Lg/d;->c:I

    return p0
.end method

.method public d()I
    .locals 0

    iget-object p0, p0, Lg/d;->b:Lg/c;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lg/c;->d()I

    move-result p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public e()I
    .locals 0

    iget-object p0, p0, Lg/d;->b:Lg/c;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lg/c;->e()I

    move-result p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public f()Lg/c;
    .locals 0

    iget-object p0, p0, Lg/d;->b:Lg/c;

    return-object p0
.end method

.method public g()I
    .locals 0

    iget-object p0, p0, Lg/d;->b:Lg/c;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lg/c;->f()I

    move-result p0

    goto :goto_0

    :cond_0
    const/4 p0, -0x1

    :goto_0
    return p0
.end method

.method public h()Lg/f;
    .locals 0

    iget-object p0, p0, Lg/d;->b:Lg/c;

    check-cast p0, Lg/f;

    return-object p0
.end method

.method public i()I
    .locals 0

    iget-object p0, p0, Lg/d;->b:Lg/c;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lg/c;->g()I

    move-result p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public j()Z
    .locals 0

    iget-object p0, p0, Lg/d;->b:Lg/c;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lg/c;->i()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public k()Z
    .locals 0

    iget-object p0, p0, Lg/d;->b:Lg/c;

    instance-of p0, p0, Lg/f;

    return p0
.end method

.method l(Lg/d$a;)V
    .locals 0

    iput-object p1, p0, Lg/d;->a:Lg/d$a;

    return-void
.end method

.method public m(I)V
    .locals 0

    iput p1, p0, Lg/d;->c:I

    return-void
.end method

.method protected n(Lg/c;)V
    .locals 2

    invoke-virtual {p0}, Lg/d;->k()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lg/d;->h()Lg/f;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lg/f;->Y(Lg/f$c;)V

    :cond_0
    iput-object p1, p0, Lg/d;->b:Lg/c;

    invoke-virtual {p0}, Lg/d;->k()Z

    move-result p1

    if-eqz p1, :cond_1

    invoke-virtual {p0}, Lg/d;->h()Lg/f;

    move-result-object p1

    invoke-virtual {p1, p0}, Lg/f;->Y(Lg/f$c;)V

    :cond_1
    return-void
.end method
