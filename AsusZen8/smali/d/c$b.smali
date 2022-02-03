.class public Ld/c$b;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ld/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "b"
.end annotation


# instance fields
.field private a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ld/c$c;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Ld/c$b;->a:Ljava/util/List;

    return-void
.end method

.method public constructor <init>(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ld/c$c;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ld/c$b;->a:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public a()Ld/c;
    .locals 9

    iget-object v0, p0, Ld/c$b;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Ld/c$b;->a:Ljava/util/List;

    new-instance v1, Ld/c$c;

    invoke-static {}, Ld/c;->a()Ld/c$c;

    move-result-object v2

    invoke-direct {v1, v2}, Ld/c$c;-><init>(Ld/c$c;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    iget-object v0, p0, Ld/c$b;->a:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    const/4 v0, 0x1

    iget-object v1, p0, Ld/c$b;->a:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    const-wide/16 v2, 0x0

    move-wide v4, v2

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ld/c$c;

    if-eqz v0, :cond_1

    iget-wide v7, v6, Ld/c$c;->a:J

    sub-long/2addr v7, v4

    add-long/2addr v2, v7

    :cond_1
    iput-wide v2, v6, Ld/c$c;->b:J

    iget-boolean v0, v6, Ld/c$c;->c:Z

    iget-wide v4, v6, Ld/c$c;->a:J

    goto :goto_0

    :cond_2
    new-instance v0, Ld/c;

    iget-object p0, p0, Ld/c$b;->a:Ljava/util/List;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Ld/c;-><init>(Ljava/util/List;Ld/c$a;)V

    return-object v0
.end method
