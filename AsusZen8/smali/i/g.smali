.class public Li/g;
.super Li/c;
.source ""


# instance fields
.field private A:Li/b;

.field private B:Li/b;

.field private C:Li/b;

.field private D:Li/b;

.field private E:Li/b;

.field private p:I

.field private q:I

.field private r:I

.field private s:I

.field private t:I

.field private u:I

.field private v:I

.field private w:I

.field private x:Li/b;

.field private y:Li/b;

.field private z:Li/b;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3

    const-wide/32 v0, 0x29b94e18

    const/4 v2, 0x1

    invoke-direct {p0, p1, v0, v1, v2}, Li/c;-><init>(Landroid/content/Context;JZ)V

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Li/c;->f:J

    const-wide/16 v0, 0xa5a

    iput-wide v0, p0, Li/c;->g:J

    return-void
.end method

.method private s(Li/b;FF)V
    .locals 3

    const/4 p0, 0x2

    new-array v0, p0, [F

    const/4 v1, 0x0

    aput p2, v0, v1

    const/4 p2, 0x1

    const/4 v2, 0x0

    aput v2, v0, p2

    iput-object v0, p1, Li/b;->j:[F

    new-array p0, p0, [F

    aput p3, p0, v1

    aput v2, p0, p2

    iput-object p0, p1, Li/b;->k:[F

    return-void
.end method

.method private t(Li/b;F)V
    .locals 1

    const/4 p0, 0x2

    new-array p0, p0, [F

    const/4 v0, 0x0

    aput p2, p0, v0

    const/4 p2, 0x1

    const/4 v0, 0x0

    aput v0, p0, p2

    iput-object p0, p1, Li/b;->h:[F

    return-void
.end method


# virtual methods
.method public j()V
    .locals 16

    move-object/from16 v14, p0

    sget-object v0, Lcom/asus/livewallpaper/zf8livewallpaper/contentprovider/c;->a:Ljava/util/HashMap;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-class v2, Lcom/asus/livewallpaper/zf8livewallpaper/e;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v14, Li/c;->a:Landroid/content/Context;

    invoke-static {v2}, Lc/g;->e(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    move-object v8, v0

    check-cast v8, Lcom/asus/livewallpaper/zf8livewallpaper/contentprovider/b;

    iget v4, v8, Lcom/asus/livewallpaper/zf8livewallpaper/contentprovider/b;->i:I

    const-wide/16 v1, 0x63

    const/4 v3, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x1

    const/4 v7, 0x0

    move-object/from16 v0, p0

    invoke-virtual/range {v0 .. v7}, Li/c;->c(JLjava/lang/String;IZZZ)I

    move-result v0

    iput v0, v14, Li/g;->p:I

    iget v0, v8, Lcom/asus/livewallpaper/zf8livewallpaper/contentprovider/b;->i:I

    const-wide/16 v1, 0x64

    const/4 v15, 0x0

    invoke-virtual {v14, v1, v2, v15, v0}, Li/c;->b(JLjava/lang/String;I)I

    move-result v0

    iput v0, v14, Li/g;->q:I

    const-wide/16 v0, 0x65

    const v2, 0x7f040006

    invoke-virtual {v14, v0, v1, v15, v2}, Li/c;->b(JLjava/lang/String;I)I

    move-result v0

    iput v0, v14, Li/g;->r:I

    const-wide/16 v0, 0x66

    const v2, 0x7f040007

    invoke-virtual {v14, v0, v1, v15, v2}, Li/c;->b(JLjava/lang/String;I)I

    move-result v0

    iput v0, v14, Li/g;->s:I

    const-wide/16 v1, 0x67

    const v4, 0x7f04001d

    const/4 v6, 0x0

    const/4 v7, 0x1

    move-object/from16 v0, p0

    invoke-virtual/range {v0 .. v7}, Li/c;->c(JLjava/lang/String;IZZZ)I

    move-result v0

    iput v0, v14, Li/g;->t:I

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "media/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, v8, Lcom/asus/livewallpaper/zf8livewallpaper/contentprovider/b;->f:[Ljava/lang/String;

    const/4 v2, 0x1

    aget-object v1, v1, v2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-wide/16 v1, 0x68

    const-wide/16 v4, 0x0

    const-wide/16 v6, 0x0

    const-wide/16 v8, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x1

    const-wide/16 v12, 0x0

    move-object/from16 v0, p0

    invoke-virtual/range {v0 .. v13}, Li/c;->g(JLjava/lang/String;JJJZZJ)I

    move-result v0

    iput v0, v14, Li/g;->u:I

    const-wide/16 v0, 0x69

    const v2, 0x7f040010

    invoke-virtual {v14, v0, v1, v15, v2}, Li/c;->b(JLjava/lang/String;I)I

    move-result v0

    iput v0, v14, Li/g;->v:I

    const-wide/16 v1, 0x6a

    const/4 v3, 0x0

    const v4, 0x7f04001d

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x1

    move-object/from16 v0, p0

    invoke-virtual/range {v0 .. v7}, Li/c;->c(JLjava/lang/String;IZZZ)I

    move-result v0

    iput v0, v14, Li/g;->w:I

    return-void
.end method

.method public k()V
    .locals 5

    iget v0, p0, Li/g;->p:I

    const/4 v1, 0x0

    invoke-virtual {p0, v1, v0}, Li/c;->f(II)Li/b;

    move-result-object v0

    iput-object v0, p0, Li/g;->x:Li/b;

    const/4 v2, 0x1

    iput v2, v0, Li/b;->b:I

    iget v0, p0, Li/g;->q:I

    invoke-virtual {p0, v1, v0}, Li/c;->f(II)Li/b;

    move-result-object v0

    iput-object v0, p0, Li/g;->y:Li/b;

    iput v2, v0, Li/b;->b:I

    iget v0, p0, Li/g;->r:I

    invoke-virtual {p0, v1, v0}, Li/c;->f(II)Li/b;

    move-result-object v0

    iput-object v0, p0, Li/g;->z:Li/b;

    iput v2, v0, Li/b;->b:I

    iget v0, p0, Li/g;->s:I

    invoke-virtual {p0, v1, v0}, Li/c;->f(II)Li/b;

    move-result-object v0

    iput-object v0, p0, Li/g;->A:Li/b;

    iput v2, v0, Li/b;->b:I

    iget v0, p0, Li/g;->t:I

    invoke-virtual {p0, v1, v0}, Li/c;->f(II)Li/b;

    move-result-object v0

    iput-object v0, p0, Li/g;->B:Li/b;

    iput v2, v0, Li/b;->b:I

    iget v0, p0, Li/g;->u:I

    invoke-virtual {p0, v1, v0}, Li/c;->f(II)Li/b;

    move-result-object v0

    iput-object v0, p0, Li/g;->C:Li/b;

    iput v2, v0, Li/b;->b:I

    const-wide/16 v3, 0x672

    iput-wide v3, v0, Li/b;->d:J

    iget v0, p0, Li/g;->v:I

    invoke-virtual {p0, v1, v0}, Li/c;->f(II)Li/b;

    move-result-object v0

    iput-object v0, p0, Li/g;->D:Li/b;

    iput v2, v0, Li/b;->b:I

    iget v0, p0, Li/g;->w:I

    invoke-virtual {p0, v1, v0}, Li/c;->f(II)Li/b;

    move-result-object v0

    iput-object v0, p0, Li/g;->E:Li/b;

    iput v2, v0, Li/b;->b:I

    sget-boolean v0, Lc/g;->d:Z

    if-nez v0, :cond_0

    iget-object v1, p0, Li/c;->a:Landroid/content/Context;

    invoke-static {v1}, Lc/g;->m(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_0

    const v1, 0x3e3851ec    # 0.18f

    goto :goto_0

    :cond_0
    const v1, 0x3ee66666    # 0.45f

    :goto_0
    iget-object v2, p0, Li/g;->y:Li/b;

    invoke-direct {p0, v2, v1, v1}, Li/g;->s(Li/b;FF)V

    iget-object v2, p0, Li/g;->z:Li/b;

    invoke-direct {p0, v2, v1, v1}, Li/g;->s(Li/b;FF)V

    iget-object v2, p0, Li/g;->A:Li/b;

    invoke-direct {p0, v2, v1, v1}, Li/g;->s(Li/b;FF)V

    iget-object v2, p0, Li/g;->B:Li/b;

    const v3, 0x3f810625    # 1.008f

    mul-float/2addr v3, v1

    invoke-direct {p0, v2, v3, v3}, Li/g;->s(Li/b;FF)V

    iget-object v2, p0, Li/g;->C:Li/b;

    invoke-direct {p0, v2, v1, v1}, Li/g;->s(Li/b;FF)V

    iget-object v2, p0, Li/g;->D:Li/b;

    invoke-direct {p0, v2, v1, v1}, Li/g;->s(Li/b;FF)V

    iget-object v1, p0, Li/g;->E:Li/b;

    invoke-direct {p0, v1, v3, v3}, Li/g;->s(Li/b;FF)V

    const/high16 v1, 0x3f000000    # 0.5f

    const/high16 v2, -0x41000000    # -0.5f

    if-nez v0, :cond_1

    iget-object v0, p0, Li/c;->a:Landroid/content/Context;

    invoke-static {v0}, Lc/g;->m(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/high16 v1, 0x3e800000    # 0.25f

    const/high16 v2, -0x41800000    # -0.25f

    :cond_1
    iget-object v0, p0, Li/g;->y:Li/b;

    invoke-direct {p0, v0, v1}, Li/g;->t(Li/b;F)V

    iget-object v0, p0, Li/g;->z:Li/b;

    invoke-direct {p0, v0, v1}, Li/g;->t(Li/b;F)V

    iget-object v0, p0, Li/g;->A:Li/b;

    invoke-direct {p0, v0, v1}, Li/g;->t(Li/b;F)V

    iget-object v0, p0, Li/g;->B:Li/b;

    invoke-direct {p0, v0, v1}, Li/g;->t(Li/b;F)V

    iget-object v0, p0, Li/g;->C:Li/b;

    invoke-direct {p0, v0, v2}, Li/g;->t(Li/b;F)V

    iget-object v0, p0, Li/g;->D:Li/b;

    invoke-direct {p0, v0, v2}, Li/g;->t(Li/b;F)V

    iget-object v0, p0, Li/g;->E:Li/b;

    invoke-direct {p0, v0, v2}, Li/g;->t(Li/b;F)V

    return-void
.end method

.method protected l()V
    .locals 0

    invoke-super {p0}, Li/c;->l()V

    return-void
.end method
