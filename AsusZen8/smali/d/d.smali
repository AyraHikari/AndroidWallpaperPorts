.class public Ld/d;
.super Ljava/lang/Object;
.source ""


# instance fields
.field private transient a:F

.field private transient b:Ld/a;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ld/a;

    invoke-direct {v0}, Ld/a;-><init>()V

    iput-object v0, p0, Ld/d;->b:Ld/a;

    return-void
.end method


# virtual methods
.method public a()F
    .locals 0

    iget p0, p0, Ld/d;->a:F

    return p0
.end method

.method public b()Ld/a;
    .locals 0

    iget-object p0, p0, Ld/d;->b:Ld/a;

    return-object p0
.end method

.method public c(F)V
    .locals 1

    iget-object v0, p0, Ld/d;->b:Ld/a;

    invoke-virtual {v0, p1}, Ld/a;->d(F)F

    move-result p1

    iput p1, p0, Ld/d;->a:F

    const/4 v0, 0x1

    cmpl-float v0, p1, v0

    if-nez v0, :cond_0

    const/high16 p1, 0x3f800000    # 1.0f

    :cond_0
    iput p1, p0, Ld/d;->a:F

    return-void
.end method
