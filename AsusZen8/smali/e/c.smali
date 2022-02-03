.class public Le/c;
.super Ljava/lang/Object;
.source ""


# instance fields
.field private transient a:Le/b;

.field private b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Le/a;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Le/b;

    invoke-direct {v0}, Le/b;-><init>()V

    iput-object v0, p0, Le/c;->a:Le/b;

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1}, Le/b;->K(F)V

    iget-object v0, p0, Le/c;->a:Le/b;

    invoke-virtual {v0}, Le/b;->I()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Le/c;->b:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public a()V
    .locals 0

    iget-object p0, p0, Le/c;->a:Le/b;

    invoke-virtual {p0}, Le/b;->s()V

    invoke-static {}, Le/a;->b()Z

    return-void
.end method

.method public b(J)V
    .locals 2

    iget-object v0, p0, Le/c;->a:Le/b;

    invoke-virtual {v0, p1, p2}, Le/b;->B(J)V

    iget-object v0, p0, Le/c;->a:Le/b;

    invoke-virtual {v0}, Le/a;->i()F

    move-result v1

    invoke-virtual {v0, p1, p2, v1}, Le/b;->A(JF)V

    iget-object p0, p0, Le/c;->a:Le/b;

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Le/b;->c(Z)Z

    return-void
.end method

.method public c()Le/b;
    .locals 0

    iget-object p0, p0, Le/c;->a:Le/b;

    return-object p0
.end method

.method public d(II)V
    .locals 1

    const/4 v0, 0x0

    invoke-static {v0, v0, p1, p2}, Landroid/opengl/GLES20;->glViewport(IIII)V

    iget-object p0, p0, Le/c;->a:Le/b;

    invoke-virtual {p0, p1, p2}, Le/b;->q(II)V

    return-void
.end method
