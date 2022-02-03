.class Lc/b$b;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lc/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "b"
.end annotation


# instance fields
.field a:[I

.field b:I


# direct methods
.method private constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x4

    new-array v0, v0, [I

    iput-object v0, p0, Lc/b$b;->a:[I

    return-void
.end method

.method synthetic constructor <init>(Lc/b$a;)V
    .locals 0

    invoke-direct {p0}, Lc/b$b;-><init>()V

    return-void
.end method

.method static synthetic a(Lc/b$b;[II)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lc/b$b;->b([II)V

    return-void
.end method

.method private b([II)V
    .locals 3

    iget-object v0, p0, Lc/b$b;->a:[I

    const/4 v1, 0x0

    const/4 v2, 0x4

    invoke-static {p1, v1, v0, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iput p2, p0, Lc/b$b;->b:I

    return-void
.end method
