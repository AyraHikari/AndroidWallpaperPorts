.class public Ld/c$c;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ld/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "c"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Comparable<",
        "Ld/c$c;",
        ">;"
    }
.end annotation


# instance fields
.field a:J

.field b:J

.field c:Z


# direct methods
.method public constructor <init>(JZ)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide p1, p0, Ld/c$c;->a:J

    iput-boolean p3, p0, Ld/c$c;->c:Z

    return-void
.end method

.method public constructor <init>(Ld/c$c;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iget-wide v0, p1, Ld/c$c;->a:J

    iput-wide v0, p0, Ld/c$c;->a:J

    iget-boolean v0, p1, Ld/c$c;->c:Z

    iput-boolean v0, p0, Ld/c$c;->c:Z

    iget-wide v0, p1, Ld/c$c;->b:J

    iput-wide v0, p0, Ld/c$c;->b:J

    return-void
.end method


# virtual methods
.method public a(Ld/c$c;)I
    .locals 2

    iget-wide v0, p0, Ld/c$c;->a:J

    iget-wide p0, p1, Ld/c$c;->a:J

    sub-long/2addr v0, p0

    long-to-int p0, v0

    return p0
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 0

    check-cast p1, Ld/c$c;

    invoke-virtual {p0, p1}, Ld/c$c;->a(Ld/c$c;)I

    move-result p0

    return p0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 5

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-class v1, Ld/c$c;

    const/4 v2, 0x0

    if-eq v0, v1, :cond_0

    return v2

    :cond_0
    check-cast p1, Ld/c$c;

    iget-wide v0, p0, Ld/c$c;->a:J

    iget-wide v3, p1, Ld/c$c;->a:J

    cmp-long v0, v0, v3

    if-nez v0, :cond_1

    iget-wide v0, p0, Ld/c$c;->b:J

    iget-wide v3, p1, Ld/c$c;->b:J

    cmp-long v0, v0, v3

    if-nez v0, :cond_1

    iget-boolean p0, p0, Ld/c$c;->c:Z

    iget-boolean p1, p1, Ld/c$c;->c:Z

    if-ne p0, p1, :cond_1

    const/4 v2, 0x1

    :cond_1
    return v2
.end method
