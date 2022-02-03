.class Li/c$a;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lg/f$d;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Li/c;->n(Lc/d;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Li/a;

.field final synthetic b:Li/c;


# direct methods
.method constructor <init>(Li/c;Li/a;)V
    .locals 0

    iput-object p1, p0, Li/c$a;->b:Li/c;

    iput-object p2, p0, Li/c$a;->a:Li/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lg/f;)Z
    .locals 20

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    iget-object v2, v0, Li/c$a;->a:Li/a;

    iget-wide v3, v2, Li/a;->i:J

    iget-wide v5, v2, Li/a;->j:J

    iget-boolean v2, v2, Li/a;->f:Z

    const-wide/16 v7, 0x0

    cmp-long v7, v5, v7

    const-wide/16 v8, 0x3e8

    if-eqz v7, :cond_0

    sub-long v10, v5, v3

    mul-long/2addr v10, v8

    goto :goto_0

    :cond_0
    invoke-virtual/range {p1 .. p1}, Lg/f;->N()J

    move-result-wide v5

    div-long/2addr v5, v8

    invoke-virtual/range {p1 .. p1}, Lg/f;->N()J

    move-result-wide v10

    :goto_0
    iget-object v7, v0, Li/c$a;->a:Li/a;

    iget-wide v12, v7, Li/a;->e:J

    mul-long/2addr v12, v8

    add-long v14, v12, v10

    move-wide/from16 v18, v3

    iget-wide v3, v7, Li/a;->h:J

    mul-long/2addr v3, v8

    iget-boolean v7, v7, Li/a;->g:Z

    if-eqz v7, :cond_1

    sub-long/2addr v14, v8

    :cond_1
    iget-object v0, v0, Li/c$a;->b:Li/c;

    move/from16 v17, v7

    move-object v7, v0

    move-wide v8, v10

    move-wide v10, v12

    move-wide v12, v14

    move-wide v14, v3

    move/from16 v16, v2

    invoke-static/range {v7 .. v17}, Li/c;->a(Li/c;JJJJZZ)Ljava/util/List;

    move-result-object v0

    invoke-virtual {v1, v2}, Lg/f;->Z(Z)V

    move-wide/from16 v2, v18

    invoke-virtual {v1, v2, v3, v5, v6}, Lg/f;->e0(JJ)V

    new-instance v2, Ld/c$b;

    invoke-direct {v2, v0}, Ld/c$b;-><init>(Ljava/util/List;)V

    invoke-virtual {v2}, Ld/c$b;->a()Ld/c;

    move-result-object v0

    invoke-virtual {v1, v0}, Lg/f;->b0(Ld/c;)V

    const/4 v0, 0x1

    return v0
.end method
