.class public Li/a;
.super Ljava/lang/Object;
.source ""


# instance fields
.field public a:I

.field public b:J

.field public c:Ljava/lang/String;

.field public d:I

.field public e:J

.field public f:Z

.field public g:Z

.field public h:J

.field public i:J

.field public j:J

.field public k:Z

.field public l:Z

.field public m:Z


# direct methods
.method public constructor <init>()V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, -0x1

    iput-wide v0, p0, Li/a;->b:J

    const/4 v2, -0x1

    iput v2, p0, Li/a;->d:I

    iput-wide v0, p0, Li/a;->i:J

    iput-wide v0, p0, Li/a;->j:J

    return-void
.end method
