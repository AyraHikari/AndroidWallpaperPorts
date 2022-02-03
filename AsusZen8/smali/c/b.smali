.class public Lc/b;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lc/b$b;
    }
.end annotation


# static fields
.field private static a:[Lc/b$b;

.field private static b:I

.field private static c:[I

.field private static d:[I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/16 v0, 0xa

    new-array v0, v0, [Lc/b$b;

    sput-object v0, Lc/b;->a:[Lc/b$b;

    const/4 v0, 0x4

    new-array v0, v0, [I

    sput-object v0, Lc/b;->c:[I

    const/4 v0, 0x1

    new-array v0, v0, [I

    sput-object v0, Lc/b;->d:[I

    return-void
.end method

.method public static a()V
    .locals 8

    const-class v0, Lc/b$b;

    monitor-enter v0

    :try_start_0
    sget v1, Lc/b;->b:I

    if-nez v1, :cond_0

    monitor-exit v0

    return-void

    :cond_0
    sget-object v2, Lc/b;->a:[Lc/b$b;

    const/4 v3, 0x1

    sub-int/2addr v1, v3

    sput v1, Lc/b;->b:I

    aget-object v1, v2, v1

    const/16 v2, 0xba2

    sget-object v4, Lc/b;->c:[I

    const/4 v5, 0x0

    invoke-static {v2, v4, v5}, Landroid/opengl/GLES20;->glGetIntegerv(I[II)V

    sget-object v2, Lc/b;->c:[I

    iget-object v4, v1, Lc/b$b;->a:[I

    invoke-static {v2, v4}, Ljava/util/Arrays;->equals([I[I)Z

    move-result v2

    if-nez v2, :cond_1

    iget-object v2, v1, Lc/b$b;->a:[I

    aget v4, v2, v5

    aget v3, v2, v3

    const/4 v6, 0x2

    aget v6, v2, v6

    const/4 v7, 0x3

    aget v2, v2, v7

    invoke-static {v4, v3, v6, v2}, Landroid/opengl/GLES20;->glViewport(IIII)V

    :cond_1
    const v2, 0x8ca6

    sget-object v3, Lc/b;->d:[I

    invoke-static {v2, v3, v5}, Landroid/opengl/GLES20;->glGetIntegerv(I[II)V

    sget-object v2, Lc/b;->d:[I

    aget v2, v2, v5

    iget v1, v1, Lc/b$b;->b:I

    if-eq v2, v1, :cond_2

    const v2, 0x8d40

    invoke-static {v2, v1}, Landroid/opengl/GLES20;->glBindFramebuffer(II)V

    :cond_2
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public static b()V
    .locals 6

    const-class v0, Lc/b$b;

    monitor-enter v0

    const/16 v1, 0xba2

    :try_start_0
    sget-object v2, Lc/b;->c:[I

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Landroid/opengl/GLES20;->glGetIntegerv(I[II)V

    const v1, 0x8ca6

    sget-object v2, Lc/b;->d:[I

    invoke-static {v1, v2, v3}, Landroid/opengl/GLES20;->glGetIntegerv(I[II)V

    sget-object v1, Lc/b;->a:[Lc/b$b;

    sget v2, Lc/b;->b:I

    aget-object v4, v1, v2

    if-nez v4, :cond_0

    new-instance v4, Lc/b$b;

    const/4 v5, 0x0

    invoke-direct {v4, v5}, Lc/b$b;-><init>(Lc/b$a;)V

    aput-object v4, v1, v2

    :cond_0
    sget-object v1, Lc/b;->a:[Lc/b$b;

    sget v2, Lc/b;->b:I

    add-int/lit8 v4, v2, 0x1

    sput v4, Lc/b;->b:I

    aget-object v1, v1, v2

    sget-object v2, Lc/b;->c:[I

    sget-object v4, Lc/b;->d:[I

    aget v4, v4, v3

    invoke-static {v1, v2, v4}, Lc/b$b;->a(Lc/b$b;[II)V

    sget v1, Lc/b;->b:I

    sget-object v2, Lc/b;->a:[Lc/b$b;

    array-length v4, v2

    if-ne v1, v4, :cond_1

    array-length v1, v2

    add-int/lit8 v1, v1, 0xa

    new-array v1, v1, [Lc/b$b;

    array-length v4, v2

    invoke-static {v2, v3, v1, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    sput-object v1, Lc/b;->a:[Lc/b$b;

    :cond_1
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
