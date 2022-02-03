.class public Lcom/sonymobile/wallpaper/liquid/IndexedQuad;
.super Ljava/lang/Object;
.source "IndexedQuad.java"


# instance fields
.field private mIndexBufferHandle:I

.field private mVertexBufferHandle:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    .line 24
    iput v0, p0, Lcom/sonymobile/wallpaper/liquid/IndexedQuad;->mVertexBufferHandle:I

    .line 29
    iput v0, p0, Lcom/sonymobile/wallpaper/liquid/IndexedQuad;->mIndexBufferHandle:I

    return-void
.end method


# virtual methods
.method public clean()V
    .locals 5

    .line 81
    iget v0, p0, Lcom/sonymobile/wallpaper/liquid/IndexedQuad;->mVertexBufferHandle:I

    if-lez v0, :cond_0

    const/4 v1, 0x2

    new-array v2, v1, [I

    const/4 v3, 0x0

    aput v0, v2, v3

    const/4 v0, 0x1

    .line 82
    iget v4, p0, Lcom/sonymobile/wallpaper/liquid/IndexedQuad;->mIndexBufferHandle:I

    aput v4, v2, v0

    .line 83
    invoke-static {v1, v2, v3}, Landroid/opengl/GLES30;->glDeleteBuffers(I[II)V

    :cond_0
    return-void
.end method

.method public getIndexBufferHandle()I
    .locals 1

    .line 110
    iget v0, p0, Lcom/sonymobile/wallpaper/liquid/IndexedQuad;->mIndexBufferHandle:I

    return v0
.end method

.method public getVertexBufferHandle()I
    .locals 1

    .line 101
    iget v0, p0, Lcom/sonymobile/wallpaper/liquid/IndexedQuad;->mVertexBufferHandle:I

    return v0
.end method

.method public init(FFFFF)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sonymobile/wallpaper/liquid/Utils$InvalidHandleException;
        }
    .end annotation

    const/4 v0, 0x2

    new-array v1, v0, [I

    .line 43
    fill-array-data v1, :array_0

    const/4 v2, 0x0

    .line 44
    invoke-static {v0, v1, v2}, Landroid/opengl/GLES30;->glGenBuffers(I[II)V

    .line 45
    aget v3, v1, v2

    const-string v4, "VertexBuffer"

    invoke-static {v3, v4}, Lcom/sonymobile/wallpaper/liquid/Utils;->verifyHandle(ILjava/lang/String;)I

    move-result v3

    iput v3, p0, Lcom/sonymobile/wallpaper/liquid/IndexedQuad;->mVertexBufferHandle:I

    const/4 v3, 0x1

    .line 46
    aget v1, v1, v3

    const-string v4, "IndexBuffer"

    invoke-static {v1, v4}, Lcom/sonymobile/wallpaper/liquid/Utils;->verifyHandle(ILjava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/sonymobile/wallpaper/liquid/IndexedQuad;->mIndexBufferHandle:I

    const/16 v1, 0x14

    new-array v1, v1, [F

    aput p1, v1, v2

    aput p2, v1, v3

    aput p5, v1, v0

    const/4 v0, 0x3

    const/4 v3, 0x0

    aput v3, v1, v0

    const/4 v0, 0x4

    aput v3, v1, v0

    const/4 v0, 0x5

    aput p3, v1, v0

    const/4 v0, 0x6

    aput p2, v1, v0

    const/4 p2, 0x7

    aput p5, v1, p2

    const/16 p2, 0x8

    const/high16 v4, 0x3f800000    # 1.0f

    aput v4, v1, p2

    const/16 p2, 0x9

    aput v3, v1, p2

    const/16 p2, 0xa

    aput p3, v1, p2

    const/16 p2, 0xb

    aput p4, v1, p2

    const/16 p2, 0xc

    aput p5, v1, p2

    const/16 p3, 0xd

    aput v4, v1, p3

    const/16 p3, 0xe

    aput v4, v1, p3

    const/16 p3, 0xf

    aput p1, v1, p3

    const/16 p1, 0x10

    aput p4, v1, p1

    const/16 p1, 0x11

    aput p5, v1, p1

    const/16 p1, 0x12

    aput v3, v1, p1

    const/16 p1, 0x13

    aput v4, v1, p1

    .line 55
    iget p1, p0, Lcom/sonymobile/wallpaper/liquid/IndexedQuad;->mVertexBufferHandle:I

    const p3, 0x8892

    invoke-static {p3, p1}, Landroid/opengl/GLES30;->glBindBuffer(II)V

    const/16 p1, 0x50

    .line 57
    invoke-static {p1}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object p4

    .line 58
    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object p5

    invoke-virtual {p4, p5}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object p4

    invoke-virtual {p4}, Ljava/nio/ByteBuffer;->asFloatBuffer()Ljava/nio/FloatBuffer;

    move-result-object p4

    .line 59
    invoke-virtual {p4, v1}, Ljava/nio/FloatBuffer;->put([F)Ljava/nio/FloatBuffer;

    .line 60
    invoke-virtual {p4, v2}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    const p5, 0x88e4

    .line 61
    invoke-static {p3, p1, p4, p5}, Landroid/opengl/GLES30;->glBufferData(IILjava/nio/Buffer;I)V

    .line 62
    invoke-static {p3, v2}, Landroid/opengl/GLES30;->glBindBuffer(II)V

    new-array p1, v0, [S

    .line 65
    fill-array-data p1, :array_1

    .line 66
    iget p3, p0, Lcom/sonymobile/wallpaper/liquid/IndexedQuad;->mIndexBufferHandle:I

    const p4, 0x8893

    invoke-static {p4, p3}, Landroid/opengl/GLES30;->glBindBuffer(II)V

    .line 68
    invoke-static {p2}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object p3

    .line 69
    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v0

    invoke-virtual {p3, v0}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object p3

    invoke-virtual {p3}, Ljava/nio/ByteBuffer;->asShortBuffer()Ljava/nio/ShortBuffer;

    move-result-object p3

    .line 70
    invoke-virtual {p3, p1}, Ljava/nio/ShortBuffer;->put([S)Ljava/nio/ShortBuffer;

    .line 71
    invoke-virtual {p3, v2}, Ljava/nio/ShortBuffer;->position(I)Ljava/nio/Buffer;

    .line 72
    invoke-static {p4, p2, p3, p5}, Landroid/opengl/GLES30;->glBufferData(IILjava/nio/Buffer;I)V

    .line 74
    invoke-static {p4, v2}, Landroid/opengl/GLES30;->glBindBuffer(II)V

    return-void

    :array_0
    .array-data 4
        -0x1
        -0x1
    .end array-data

    :array_1
    .array-data 2
        0x0s
        0x1s
        0x2s
        0x0s
        0x2s
        0x3s
    .end array-data
.end method

.method public render()V
    .locals 4

    const/4 v0, 0x4

    const/4 v1, 0x6

    const/16 v2, 0x1403

    const/4 v3, 0x0

    .line 92
    invoke-static {v0, v1, v2, v3}, Landroid/opengl/GLES30;->glDrawElements(IIII)V

    return-void
.end method
