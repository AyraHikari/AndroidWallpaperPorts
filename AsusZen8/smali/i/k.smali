.class public Li/k;
.super Li/c;
.source ""


# instance fields
.field private p:I

.field private q:I

.field private r:Li/b;

.field private s:Li/b;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3

    const-wide/32 v0, 0x29b94e17

    const/4 v2, 0x1

    invoke-direct {p0, p1, v0, v1, v2}, Li/c;-><init>(Landroid/content/Context;JZ)V

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Li/c;->f:J

    const-wide/16 v0, 0xa8c

    iput-wide v0, p0, Li/c;->g:J

    return-void
.end method


# virtual methods
.method public j()V
    .locals 14

    sget-object v0, Lcom/asus/livewallpaper/zf8livewallpaper/contentprovider/c;->a:Ljava/util/HashMap;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-class v2, Lcom/asus/livewallpaper/zf8livewallpaper/e;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Li/c;->a:Landroid/content/Context;

    invoke-static {v2}, Lc/g;->e(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    move-object v8, v0

    check-cast v8, Lcom/asus/livewallpaper/zf8livewallpaper/contentprovider/b;

    iget v4, v8, Lcom/asus/livewallpaper/zf8livewallpaper/contentprovider/b;->c:I

    const-wide/16 v1, 0x64

    const/4 v3, 0x0

    const/4 v5, 0x1

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v0, p0

    invoke-virtual/range {v0 .. v7}, Li/c;->c(JLjava/lang/String;IZZZ)I

    move-result v0

    iput v0, p0, Li/k;->p:I

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "media/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, v8, Lcom/asus/livewallpaper/zf8livewallpaper/contentprovider/b;->f:[Ljava/lang/String;

    const/4 v2, 0x0

    aget-object v1, v1, v2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-wide/16 v1, 0x66

    const-wide/16 v4, 0x0

    const-wide/16 v6, 0x0

    const-wide/16 v8, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x1

    const-wide/16 v12, 0x0

    move-object v0, p0

    invoke-virtual/range {v0 .. v13}, Li/c;->g(JLjava/lang/String;JJJZZJ)I

    move-result v0

    iput v0, p0, Li/k;->q:I

    return-void
.end method

.method public k()V
    .locals 3

    iget v0, p0, Li/k;->p:I

    const/4 v1, 0x0

    invoke-virtual {p0, v1, v0}, Li/c;->f(II)Li/b;

    move-result-object v0

    iput-object v0, p0, Li/k;->s:Li/b;

    const/4 v2, 0x1

    iput v2, v0, Li/b;->b:I

    iget v0, p0, Li/k;->q:I

    invoke-virtual {p0, v1, v0}, Li/c;->f(II)Li/b;

    move-result-object v0

    iput-object v0, p0, Li/k;->r:Li/b;

    iput v2, v0, Li/b;->b:I

    const-wide/16 v1, 0x6a4

    iput-wide v1, v0, Li/b;->d:J

    const/4 p0, 0x2

    new-array v1, p0, [F

    fill-array-data v1, :array_0

    iput-object v1, v0, Li/b;->j:[F

    new-array p0, p0, [F

    fill-array-data p0, :array_1

    iput-object p0, v0, Li/b;->k:[F

    return-void

    :array_0
    .array-data 4
        0x3fb9999a    # 1.45f
        0x0
    .end array-data

    :array_1
    .array-data 4
        0x3fb9999a    # 1.45f
        0x0
    .end array-data
.end method

.method protected l()V
    .locals 0

    invoke-super {p0}, Li/c;->l()V

    return-void
.end method

.method public s()Z
    .locals 2

    :try_start_0
    iget-object v0, p0, Li/c;->b:Lc/d;

    invoke-virtual {v0}, Lc/d;->l()Lc/c;

    move-result-object v0

    invoke-virtual {v0}, Lc/c;->e()Le/b;

    move-result-object v0

    invoke-virtual {v0}, Le/b;->I()Ljava/util/List;

    move-result-object v0

    iget-object v1, p0, Li/k;->r:Li/b;

    invoke-virtual {v1}, Li/b;->a()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Le/a;

    invoke-virtual {v0}, Le/a;->o()Z

    move-result p0
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Drawable list get wrong index : list size = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Li/c;->b:Lc/d;

    invoke-virtual {v1}, Lc/d;->l()Lc/c;

    move-result-object v1

    invoke-virtual {v1}, Lc/c;->e()Le/b;

    move-result-object v1

    invoke-virtual {v1}, Le/b;->I()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " index = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Li/k;->r:Li/b;

    invoke-virtual {p0}, Li/b;->a()I

    move-result p0

    add-int/lit8 p0, p0, -0x1

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "livewallpaper_log"

    invoke-static {v0, p0}, Lj/a;->b(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p0, 0x0

    return p0
.end method

.method public t(JZ)V
    .locals 7

    const-wide/16 v0, -0x1

    cmp-long v0, p1, v0

    const/4 v1, 0x1

    const/4 v2, 0x2

    if-nez v0, :cond_0

    iget-object p1, p0, Li/k;->r:Li/b;

    new-array p2, v2, [F

    fill-array-data p2, :array_0

    iput-object p2, p1, Li/b;->g:[F

    goto :goto_0

    :cond_0
    if-eqz p3, :cond_1

    iget-object p1, p0, Li/k;->r:Li/b;

    new-array p2, v2, [F

    fill-array-data p2, :array_1

    iput-object p2, p1, Li/b;->g:[F

    goto :goto_0

    :cond_1
    iget-object p3, p0, Li/k;->r:Li/b;

    iget-wide v3, p3, Li/b;->d:J

    const-wide/16 v5, 0x32

    sub-long/2addr v3, v5

    cmp-long v0, v3, p1

    if-gez v0, :cond_2

    move-wide p1, v3

    :cond_2
    const/4 v0, 0x4

    new-array v0, v0, [F

    const/4 v3, 0x0

    const/high16 v4, 0x3f800000    # 1.0f

    aput v4, v0, v3

    long-to-float v3, p1

    aput v3, v0, v1

    const/4 v3, 0x0

    aput v3, v0, v2

    const/4 v2, 0x3

    add-long/2addr p1, v5

    long-to-float p1, p1

    aput p1, v0, v2

    iput-object v0, p3, Li/b;->g:[F

    :goto_0
    :try_start_0
    iget-object p1, p0, Li/c;->b:Lc/d;

    invoke-virtual {p1}, Lc/d;->l()Lc/c;

    move-result-object p1

    invoke-virtual {p1}, Lc/c;->e()Le/b;

    move-result-object p1

    invoke-virtual {p1}, Le/b;->I()Ljava/util/List;

    move-result-object p1

    iget-object p2, p0, Li/k;->r:Li/b;

    invoke-virtual {p2}, Li/b;->a()I

    move-result p2

    sub-int/2addr p2, v1

    invoke-interface {p1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Le/a;

    iget-object p2, p0, Li/k;->r:Li/b;

    invoke-virtual {p1}, Le/a;->l()Ld/d;

    move-result-object p1

    invoke-virtual {p1}, Ld/d;->b()Ld/a;

    move-result-object p1

    iget-object p3, p0, Li/k;->r:Li/b;

    iget-object p3, p3, Li/b;->g:[F

    invoke-virtual {p0, p2, p1, p3}, Li/c;->r(Li/b;Ld/a;[F)V
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, " Drawable list get wrong index : list size = "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p2, p0, Li/c;->b:Lc/d;

    invoke-virtual {p2}, Lc/d;->l()Lc/c;

    move-result-object p2

    invoke-virtual {p2}, Lc/c;->e()Le/b;

    move-result-object p2

    invoke-virtual {p2}, Le/b;->I()Ljava/util/List;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, " index = "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Li/k;->r:Li/b;

    invoke-virtual {p0}, Li/b;->a()I

    move-result p0

    sub-int/2addr p0, v1

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "livewallpaper_log"

    invoke-static {p1, p0}, Lj/a;->b(Ljava/lang/String;Ljava/lang/String;)V

    :goto_1
    return-void

    :array_0
    .array-data 4
        0x3f800000    # 1.0f
        0x0
    .end array-data

    :array_1
    .array-data 4
        0x0
        0x0
    .end array-data
.end method
