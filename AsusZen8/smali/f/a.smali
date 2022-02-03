.class public Lf/a;
.super Ljava/lang/Object;
.source ""


# static fields
.field public static final a:[Ljava/lang/String;

.field public static final b:[Ljava/lang/String;

.field public static final c:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 9

    const-string v0, "Solid Color"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lf/a;->a:[Ljava/lang/String;

    const-string v1, "None"

    const-string v2, "Multiply Blend"

    const-string v3, "Screen Blend"

    const-string v4, "Add Blend"

    const-string v5, "overlay blend"

    const-string v6, "Soft Light Blend"

    const-string v7, "Hard Light Blend"

    const-string v8, "Color Blend"

    filled-new-array/range {v1 .. v8}, [Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lf/a;->b:[Ljava/lang/String;

    array-length v2, v0

    array-length v3, v1

    add-int/2addr v2, v3

    new-array v2, v2, [Ljava/lang/String;

    sput-object v2, Lf/a;->c:[Ljava/lang/String;

    array-length v3, v1

    const/4 v4, 0x0

    invoke-static {v1, v4, v2, v4, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    array-length v1, v1

    array-length v3, v0

    invoke-static {v0, v4, v2, v1, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-void
.end method

.method public static varargs a(Ljava/lang/String;[D)Lh/a;
    .locals 0

    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    const-string p1, "None"

    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_0

    new-instance p0, Lh/a;

    invoke-direct {p0}, Lh/a;-><init>()V

    return-object p0

    :cond_0
    new-instance p0, Lh/a;

    invoke-direct {p0}, Lh/a;-><init>()V

    return-object p0
.end method

.method public static b(Ljava/lang/Class;)Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "+",
            "Lh/a;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    const-class v0, Lh/a;

    invoke-virtual {p0, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const-string p0, "None"

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method
