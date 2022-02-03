.class public Li/b;
.super Ljava/lang/Object;
.source ""


# instance fields
.field public a:Ljava/lang/String;

.field public b:I

.field public c:J

.field public d:J

.field public e:Z

.field public f:J

.field public g:[F

.field public h:[F

.field public i:[F

.field public j:[F

.field public k:[F

.field public l:[F

.field public m:[F

.field public n:[F

.field public o:[D

.field public p:I

.field private q:I

.field private r:I

.field private s:I


# direct methods
.method public constructor <init>(III)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "None"

    iput-object v0, p0, Li/b;->a:Ljava/lang/String;

    iput p1, p0, Li/b;->q:I

    iput p2, p0, Li/b;->r:I

    iput p3, p0, Li/b;->s:I

    return-void
.end method


# virtual methods
.method public a()I
    .locals 0

    iget p0, p0, Li/b;->q:I

    return p0
.end method

.method public b()I
    .locals 0

    iget p0, p0, Li/b;->r:I

    return p0
.end method

.method public c()I
    .locals 0

    iget p0, p0, Li/b;->s:I

    return p0
.end method
