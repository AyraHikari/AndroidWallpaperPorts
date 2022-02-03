.class public abstract Lg/c;
.super Ljava/lang/Object;
.source ""


# instance fields
.field protected transient a:Landroid/content/Context;

.field private transient b:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lg/c;->b:I

    iput-object p1, p0, Lg/c;->a:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public abstract a()V
.end method

.method protected b()Landroid/content/Context;
    .locals 0

    iget-object p0, p0, Lg/c;->a:Landroid/content/Context;

    return-object p0
.end method

.method public abstract c()I
.end method

.method public abstract d()I
.end method

.method public abstract e()I
.end method

.method public f()I
    .locals 0

    iget p0, p0, Lg/c;->b:I

    return p0
.end method

.method public abstract g()I
.end method

.method public abstract h()V
.end method

.method public i()Z
    .locals 1

    iget p0, p0, Lg/c;->b:I

    const/4 v0, -0x1

    if-eq p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public j(Landroid/content/Context;)V
    .locals 0

    iput-object p1, p0, Lg/c;->a:Landroid/content/Context;

    return-void
.end method

.method protected k(I)V
    .locals 0

    iput p1, p0, Lg/c;->b:I

    return-void
.end method

.method public l(II)V
    .locals 0

    return-void
.end method
