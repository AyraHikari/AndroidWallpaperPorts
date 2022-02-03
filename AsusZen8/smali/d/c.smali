.class public Ld/c;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ld/c$c;,
        Ld/c$b;
    }
.end annotation


# static fields
.field private static final b:Ld/c$c;


# instance fields
.field private transient a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ld/c$c;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 4

    new-instance v0, Ld/c$c;

    const-wide/16 v1, 0x0

    const/4 v3, 0x1

    invoke-direct {v0, v1, v2, v3}, Ld/c$c;-><init>(JZ)V

    sput-object v0, Ld/c;->b:Ld/c$c;

    return-void
.end method

.method private constructor <init>(Ljava/util/List;)V
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

    iput-object p1, p0, Ld/c;->a:Ljava/util/List;

    return-void
.end method

.method synthetic constructor <init>(Ljava/util/List;Ld/c$a;)V
    .locals 0

    invoke-direct {p0, p1}, Ld/c;-><init>(Ljava/util/List;)V

    return-void
.end method

.method static synthetic a()Ld/c$c;
    .locals 1

    sget-object v0, Ld/c;->b:Ld/c$c;

    return-object v0
.end method


# virtual methods
.method public b(J)J
    .locals 4

    iget-object p0, p0, Ld/c;->a:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    const/4 v0, 0x0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ld/c$c;

    iget-wide v2, v1, Ld/c$c;->a:J

    cmp-long v2, v2, p1

    if-lez v2, :cond_0

    goto :goto_1

    :cond_0
    move-object v0, v1

    goto :goto_0

    :cond_1
    :goto_1
    if-nez v0, :cond_2

    const-wide/16 p0, 0x0

    return-wide p0

    :cond_2
    iget-boolean p0, v0, Ld/c$c;->c:Z

    if-eqz p0, :cond_3

    iget-wide v1, v0, Ld/c$c;->b:J

    add-long/2addr v1, p1

    iget-wide p0, v0, Ld/c$c;->a:J

    sub-long/2addr v1, p0

    return-wide v1

    :cond_3
    iget-wide p0, v0, Ld/c$c;->b:J

    return-wide p0
.end method
