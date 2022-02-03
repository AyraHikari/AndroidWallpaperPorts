.class public Lg/f;
.super Lg/c;
.source ""

# interfaces
.implements Landroid/graphics/SurfaceTexture$OnFrameAvailableListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lg/f$b;,
        Lg/f$e;,
        Lg/f$d;,
        Lg/f$c;
    }
.end annotation


# static fields
.field public static S:J


# instance fields
.field private transient A:J

.field private transient B:J

.field private transient C:Ljava/lang/String;

.field private transient D:J

.field private transient E:Lg/f$c;

.field private transient F:Lg/f$d;

.field private G:J

.field private H:Ljava/lang/String;

.field private I:Z

.field private J:J

.field private K:J

.field private L:Ld/c;

.field private M:Z

.field private N:Z

.field private O:Z

.field private P:Z

.field private Q:Landroid/os/Handler;

.field private R:Landroid/os/HandlerThread;

.field private c:Ljava/lang/String;

.field private final transient d:Ljava/lang/Object;

.field private transient e:I

.field private transient f:I

.field private g:I

.field private transient h:Landroid/media/MediaExtractor;

.field private transient i:Landroid/media/MediaCodec;

.field private transient j:Landroid/media/MediaFormat;

.field private transient k:Landroid/graphics/SurfaceTexture;

.field private l:Landroid/view/Surface;

.field private m:Z

.field private transient n:Lc/e;

.field private transient o:I

.field private transient p:I

.field private transient q:I

.field private transient r:I

.field private transient s:Ljava/nio/FloatBuffer;

.field private transient t:Lg/f$b;

.field private transient u:Ljava/lang/Thread;

.field private transient v:Z

.field private transient w:Z

.field private transient x:Z

.field private transient y:Z

.field private transient z:J


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Lg/f$d;)V
    .locals 2

    invoke-direct {p0, p1}, Lg/c;-><init>(Landroid/content/Context;)V

    const-string p1, "VideoTexture"

    iput-object p1, p0, Lg/f;->c:Ljava/lang/String;

    new-instance p1, Ljava/lang/Object;

    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lg/f;->d:Ljava/lang/Object;

    const/4 p1, 0x1

    iput-boolean p1, p0, Lg/f;->I:Z

    iput-boolean p1, p0, Lg/f;->O:Z

    iput-boolean p1, p0, Lg/f;->P:Z

    const/4 v0, 0x0

    iput-object v0, p0, Lg/f;->Q:Landroid/os/Handler;

    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "VideoTextureTimeOutHandler"

    invoke-direct {v0, v1, p1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;I)V

    iput-object v0, p0, Lg/f;->R:Landroid/os/HandlerThread;

    new-instance p1, Lc/e;

    invoke-direct {p1}, Lc/e;-><init>()V

    iput-object p1, p0, Lg/f;->n:Lc/e;

    new-instance p1, Ld/c$b;

    invoke-direct {p1}, Ld/c$b;-><init>()V

    invoke-virtual {p1}, Ld/c$b;->a()Ld/c;

    move-result-object p1

    iput-object p1, p0, Lg/f;->L:Ld/c;

    iput-object p2, p0, Lg/f;->H:Ljava/lang/String;

    iput-object p3, p0, Lg/f;->F:Lg/f$d;

    return-void
.end method

.method static synthetic A(Lg/f;)Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lg/f;->d:Ljava/lang/Object;

    return-object p0
.end method

.method static synthetic B(Lg/f;)J
    .locals 2

    iget-wide v0, p0, Lg/f;->G:J

    return-wide v0
.end method

.method static synthetic C(Lg/f;J)J
    .locals 0

    iput-wide p1, p0, Lg/f;->G:J

    return-wide p1
.end method

.method static synthetic D(Lg/f;)J
    .locals 2

    iget-wide v0, p0, Lg/f;->B:J

    return-wide v0
.end method

.method static synthetic E(Lg/f;J)J
    .locals 0

    iput-wide p1, p0, Lg/f;->B:J

    return-wide p1
.end method

.method static synthetic F(Lg/f;J[Z)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lg/f;->M(J[Z)V

    return-void
.end method

.method private G(J)V
    .locals 4

    iget-wide v0, p0, Lg/f;->K:J

    iget-wide v2, p0, Lg/f;->J:J

    sub-long/2addr v0, v2

    cmp-long p1, p1, v0

    if-gez p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    iput-boolean p1, p0, Lg/f;->y:Z

    return-void
.end method

.method private H()V
    .locals 12

    iget-boolean v0, p0, Lg/f;->m:Z

    if-nez v0, :cond_4

    iget-object v0, p0, Lg/f;->j:Landroid/media/MediaFormat;

    const-string v1, "width"

    invoke-virtual {v0, v1}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;)I

    move-result v0

    iget-object v2, p0, Lg/f;->j:Landroid/media/MediaFormat;

    const-string v3, "height"

    invoke-virtual {v2, v3}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;)I

    move-result v2

    iget-object v4, p0, Lg/f;->i:Landroid/media/MediaCodec;

    invoke-virtual {v4}, Landroid/media/MediaCodec;->getOutputFormat()Landroid/media/MediaFormat;

    move-result-object v4

    invoke-virtual {v4, v1}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;)I

    move-result v1

    iget-object v4, p0, Lg/f;->i:Landroid/media/MediaCodec;

    invoke-virtual {v4}, Landroid/media/MediaCodec;->getOutputFormat()Landroid/media/MediaFormat;

    move-result-object v4

    invoke-virtual {v4, v3}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;)I

    move-result v3

    sub-int v4, v1, v0

    sub-int v5, v3, v2

    int-to-float v6, v0

    int-to-float v7, v1

    div-float v8, v6, v7

    int-to-float v9, v2

    int-to-float v10, v3

    div-float v11, v9, v10

    cmpl-float v8, v8, v11

    const/4 v11, 0x1

    if-ltz v8, :cond_0

    move v8, v11

    goto :goto_0

    :cond_0
    const/4 v8, 0x0

    :goto_0
    if-eqz v8, :cond_2

    if-gez v4, :cond_1

    move v4, v1

    goto :goto_1

    :cond_1
    move v4, v0

    :goto_1
    mul-int v5, v4, v2

    int-to-float v5, v5

    div-float/2addr v5, v6

    float-to-int v5, v5

    goto :goto_3

    :cond_2
    if-gez v5, :cond_3

    move v5, v3

    goto :goto_2

    :cond_3
    move v5, v2

    :goto_2
    mul-int v4, v5, v0

    int-to-float v4, v4

    div-float/2addr v4, v9

    float-to-int v4, v4

    :goto_3
    sub-int v6, v1, v4

    sub-int v8, v3, v5

    int-to-float v4, v4

    int-to-float v6, v6

    const/high16 v9, 0x3fc00000    # 1.5f

    mul-float/2addr v6, v9

    add-float/2addr v7, v6

    div-float/2addr v4, v7

    int-to-float v5, v5

    int-to-float v6, v8

    mul-float/2addr v6, v9

    add-float/2addr v10, v6

    div-float/2addr v5, v10

    iget-object v6, p0, Lg/f;->c:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "real: size = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " x "

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v6, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, p0, Lg/f;->c:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "dequeueOutputBuffer FORMAT fix: size = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", fixScale = "

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget v0, p0, Lg/f;->g:I

    invoke-static {v0, v4, v5}, Lc/a;->a(IFF)Ljava/nio/FloatBuffer;

    move-result-object v0

    iput-object v0, p0, Lg/f;->s:Ljava/nio/FloatBuffer;

    iput-boolean v11, p0, Lg/f;->m:Z

    :cond_4
    return-void
.end method

.method private M(J[Z)V
    .locals 20

    move-object/from16 v1, p0

    move-wide/from16 v2, p1

    move-object/from16 v4, p3

    const/4 v5, 0x0

    :try_start_0
    iget-object v0, v1, Lg/f;->i:Landroid/media/MediaCodec;

    invoke-virtual {v0}, Landroid/media/MediaCodec;->flush()V

    new-instance v0, Landroid/media/MediaCodec$BufferInfo;

    invoke-direct {v0}, Landroid/media/MediaCodec$BufferInfo;-><init>()V

    iget-object v6, v1, Lg/f;->h:Landroid/media/MediaExtractor;

    invoke-virtual {v6, v2, v3, v5}, Landroid/media/MediaExtractor;->seekTo(JI)V

    move v6, v5

    move v7, v6

    move v8, v7

    :goto_0
    aget-boolean v9, v4, v5

    const/4 v10, 0x1

    if-eqz v9, :cond_c

    const-wide/16 v11, 0x2710

    if-nez v6, :cond_1

    iget-object v9, v1, Lg/f;->i:Landroid/media/MediaCodec;

    invoke-virtual {v9, v11, v12}, Landroid/media/MediaCodec;->dequeueInputBuffer(J)I

    move-result v14

    if-ltz v14, :cond_1

    iget-object v9, v1, Lg/f;->h:Landroid/media/MediaExtractor;

    iget-object v13, v1, Lg/f;->i:Landroid/media/MediaCodec;

    invoke-virtual {v13, v14}, Landroid/media/MediaCodec;->getInputBuffer(I)Ljava/nio/ByteBuffer;

    move-result-object v13

    invoke-virtual {v9, v13, v5}, Landroid/media/MediaExtractor;->readSampleData(Ljava/nio/ByteBuffer;I)I

    move-result v16

    if-lez v16, :cond_0

    iget-object v9, v1, Lg/f;->h:Landroid/media/MediaExtractor;

    invoke-virtual {v9}, Landroid/media/MediaExtractor;->getSampleTime()J

    move-result-wide v17

    iget-object v13, v1, Lg/f;->i:Landroid/media/MediaCodec;

    const/4 v15, 0x0

    const/16 v19, 0x0

    invoke-virtual/range {v13 .. v19}, Landroid/media/MediaCodec;->queueInputBuffer(IIIJI)V

    iget-object v9, v1, Lg/f;->h:Landroid/media/MediaExtractor;

    invoke-virtual {v9}, Landroid/media/MediaExtractor;->advance()Z

    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    :cond_0
    iget-object v13, v1, Lg/f;->i:Landroid/media/MediaCodec;

    const/4 v15, 0x0

    const/16 v16, 0x0

    const-wide/16 v17, 0x0

    const/16 v19, 0x4

    invoke-virtual/range {v13 .. v19}, Landroid/media/MediaCodec;->queueInputBuffer(IIIJI)V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_2

    move v6, v10

    :cond_1
    :goto_1
    :try_start_1
    iget-object v9, v1, Lg/f;->i:Landroid/media/MediaCodec;

    invoke-virtual {v9, v0, v11, v12}, Landroid/media/MediaCodec;->dequeueOutputBuffer(Landroid/media/MediaCodec$BufferInfo;J)I

    move-result v9

    if-ltz v9, :cond_b

    add-int/lit8 v8, v8, 0x1

    invoke-direct/range {p0 .. p0}, Lg/f;->H()V

    iget-wide v11, v0, Landroid/media/MediaCodec$BufferInfo;->presentationTimeUs:J

    cmp-long v13, v11, v2

    if-ltz v13, :cond_2

    move v13, v10

    goto :goto_2

    :cond_2
    move v13, v5

    :goto_2
    iget v14, v0, Landroid/media/MediaCodec$BufferInfo;->flags:I
    :try_end_1
    .catch Ljava/lang/IllegalStateException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_1} :catch_1

    and-int/lit8 v14, v14, 0x4

    if-eqz v14, :cond_3

    move v14, v10

    goto :goto_3

    :cond_3
    move v14, v5

    :goto_3
    const-string v15, ", targetFrameUs = "

    if-eqz v13, :cond_6

    sub-long/2addr v11, v2

    const-wide/32 v16, 0x493e0

    cmp-long v11, v11, v16

    if-lez v11, :cond_6

    :try_start_2
    iget-object v6, v1, Lg/f;->i:Landroid/media/MediaCodec;

    invoke-virtual {v6}, Landroid/media/MediaCodec;->flush()V
    :try_end_2
    .catch Ljava/lang/IllegalStateException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/NullPointerException; {:try_start_2 .. :try_end_2} :catch_1

    const v6, 0x2dc6c0

    mul-int/2addr v6, v8

    int-to-long v11, v6

    sub-long v11, v2, v11

    const-wide/16 v16, 0x0

    cmp-long v6, v11, v16

    if-gez v6, :cond_4

    move-wide/from16 v11, v16

    :cond_4
    const-string v6, ", fixTargetFrameUs = "

    if-ne v8, v10, :cond_5

    :try_start_3
    iget-object v13, v1, Lg/f;->c:Ljava/lang/String;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "flushAndSeekTo: May Some unusual device ignore SEEK_TO_PREVIOUS_SYNC, presentationTimeUs = "

    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v4, v0, Landroid/media/MediaCodec$BufferInfo;->presentationTimeUs:J

    invoke-virtual {v10, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v11, v12}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v13, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    move v10, v7

    move/from16 v18, v8

    goto :goto_4

    :cond_5
    iget-object v4, v1, Lg/f;->c:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "flushAndSeekTo: No I-frame, presentationTimeUs = "

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move v10, v7

    move/from16 v18, v8

    iget-wide v7, v0, Landroid/media/MediaCodec$BufferInfo;->presentationTimeUs:J

    invoke-virtual {v5, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v11, v12}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_4
    iget-object v4, v1, Lg/f;->h:Landroid/media/MediaExtractor;

    const/4 v5, 0x0

    invoke-virtual {v4, v11, v12, v5}, Landroid/media/MediaExtractor;->seekTo(JI)V

    const/4 v4, 0x1

    const/4 v6, 0x0

    const/4 v13, 0x0

    goto :goto_5

    :cond_6
    move v10, v7

    move/from16 v18, v8

    const/4 v4, 0x0

    :goto_5
    if-nez v4, :cond_7

    iget-object v4, v1, Lg/f;->i:Landroid/media/MediaCodec;

    const/4 v5, 0x1

    invoke-virtual {v4, v9, v5}, Landroid/media/MediaCodec;->releaseOutputBuffer(IZ)V

    :cond_7
    if-nez v14, :cond_8

    iget-wide v4, v0, Landroid/media/MediaCodec$BufferInfo;->presentationTimeUs:J

    iput-wide v4, v1, Lg/f;->B:J

    :cond_8
    if-nez v13, :cond_a

    if-eqz v14, :cond_9

    goto :goto_6

    :cond_9
    move/from16 v8, v18

    goto :goto_7

    :cond_a
    :goto_6
    iget-object v0, v1, Lg/f;->c:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "flushAndSeekTo: showAndBreak = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v13}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v5, ", isEndOfStream = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v14}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v5, ", bufferChunk = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, ", outBuffCount = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v8, v18

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, ", mDecoderCurrentTimeUs = "

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, v1, Lg/f;->B:J

    invoke-virtual {v4, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    move v7, v10

    const/4 v0, 0x1

    goto :goto_8

    :cond_b
    move v10, v7

    :goto_7
    move-object/from16 v4, p3

    move v7, v10

    const/4 v5, 0x0

    goto/16 :goto_0

    :cond_c
    move v0, v10

    :goto_8
    if-gt v7, v0, :cond_d

    iget-boolean v0, v1, Lg/f;->I:Z
    :try_end_3
    .catch Ljava/lang/IllegalStateException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljava/lang/NullPointerException; {:try_start_3 .. :try_end_3} :catch_1

    if-eqz v0, :cond_d

    move-object/from16 v2, p3

    const/4 v3, 0x0

    :try_start_4
    aget-boolean v0, v2, v3

    if-eqz v0, :cond_d

    iget-object v0, v1, Lg/f;->c:Ljava/lang/String;

    const-string v3, "flushAndSeekTo: loop!!!!"

    invoke-static {v0, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    iget-wide v3, v1, Lg/f;->J:J

    invoke-direct {v1, v3, v4, v2}, Lg/f;->M(J[Z)V
    :try_end_4
    .catch Ljava/lang/IllegalStateException; {:try_start_4 .. :try_end_4} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_4 .. :try_end_4} :catch_0

    goto :goto_a

    :catch_0
    move-exception v0

    goto :goto_9

    :catch_1
    move-exception v0

    move-object/from16 v2, p3

    goto :goto_9

    :catch_2
    move-exception v0

    move-object v2, v4

    :goto_9
    iget-object v3, v1, Lg/f;->c:Ljava/lang/String;

    const-string v4, "flushAndSeekTo: "

    invoke-static {v3, v4, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 v3, 0x0

    aput-boolean v3, v2, v3

    invoke-virtual/range {p0 .. p0}, Lg/f;->J()V

    :cond_d
    :goto_a
    return-void
.end method

.method private O()Landroid/os/Handler;
    .locals 2

    iget-object v0, p0, Lg/f;->Q:Landroid/os/Handler;

    if-nez v0, :cond_0

    iget-object v0, p0, Lg/f;->R:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    new-instance v0, Landroid/os/Handler;

    iget-object v1, p0, Lg/f;->R:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lg/f;->Q:Landroid/os/Handler;

    :cond_0
    iget-object p0, p0, Lg/f;->Q:Landroid/os/Handler;

    return-object p0
.end method

.method private R(J)V
    .locals 2

    iget-boolean v0, p0, Lg/f;->v:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lg/f;->E:Lg/f$c;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    iput-boolean v1, p0, Lg/f;->v:Z

    invoke-interface {v0, p1, p2, p0}, Lg/f$c;->a(JLg/f;)V

    :cond_0
    return-void
.end method

.method private T()V
    .locals 15

    iget-object v0, p0, Lg/f;->c:Ljava/lang/String;

    const-string v1, "rebuild: "

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Ljava/io/File;

    iget-object v2, p0, Lg/f;->H:Ljava/lang/String;

    invoke-direct {v0, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lg/f;->C:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "VideoTexture ("

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lg/f;->C:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ")"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lg/f;->c:Ljava/lang/String;

    new-instance v0, Landroid/media/MediaMetadataRetriever;

    invoke-direct {v0}, Landroid/media/MediaMetadataRetriever;-><init>()V

    new-instance v2, Landroid/media/MediaExtractor;

    invoke-direct {v2}, Landroid/media/MediaExtractor;-><init>()V

    iput-object v2, p0, Lg/f;->h:Landroid/media/MediaExtractor;

    :try_start_0
    iget-object v2, p0, Lg/f;->H:Ljava/lang/String;

    const-string v3, "media/"

    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {p0}, Lg/c;->b()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v2

    iget-object v3, p0, Lg/f;->H:Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroid/content/res/AssetManager;->openFd(Ljava/lang/String;)Landroid/content/res/AssetFileDescriptor;

    move-result-object v8

    invoke-virtual {v8}, Landroid/content/res/AssetFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v3

    invoke-virtual {v8}, Landroid/content/res/AssetFileDescriptor;->getStartOffset()J

    move-result-wide v4

    invoke-virtual {v8}, Landroid/content/res/AssetFileDescriptor;->getLength()J

    move-result-wide v6

    move-object v2, v0

    invoke-virtual/range {v2 .. v7}, Landroid/media/MediaMetadataRetriever;->setDataSource(Ljava/io/FileDescriptor;JJ)V

    iget-object v9, p0, Lg/f;->h:Landroid/media/MediaExtractor;

    invoke-virtual {v8}, Landroid/content/res/AssetFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v10

    invoke-virtual {v8}, Landroid/content/res/AssetFileDescriptor;->getStartOffset()J

    move-result-wide v11

    invoke-virtual {v8}, Landroid/content/res/AssetFileDescriptor;->getLength()J

    move-result-wide v13

    invoke-virtual/range {v9 .. v14}, Landroid/media/MediaExtractor;->setDataSource(Ljava/io/FileDescriptor;JJ)V

    invoke-virtual {v8}, Landroid/content/res/AssetFileDescriptor;->close()V

    goto :goto_0

    :cond_0
    iget-object v2, p0, Lg/f;->H:Ljava/lang/String;

    invoke-virtual {v0, v2}, Landroid/media/MediaMetadataRetriever;->setDataSource(Ljava/lang/String;)V

    iget-object v2, p0, Lg/f;->h:Landroid/media/MediaExtractor;

    iget-object v3, p0, Lg/f;->H:Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroid/media/MediaExtractor;->setDataSource(Ljava/lang/String;)V

    :goto_0
    iget-object v2, p0, Lg/f;->h:Landroid/media/MediaExtractor;

    invoke-virtual {v2}, Landroid/media/MediaExtractor;->getTrackCount()I

    move-result v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    move v5, v3

    :goto_1
    if-ge v5, v2, :cond_2

    iget-object v4, p0, Lg/f;->h:Landroid/media/MediaExtractor;

    invoke-virtual {v4, v5}, Landroid/media/MediaExtractor;->getTrackFormat(I)Landroid/media/MediaFormat;

    move-result-object v4

    const-string v6, "mime"

    invoke-virtual {v4, v6}, Landroid/media/MediaFormat;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const-string v7, "video/"

    invoke-virtual {v6, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_1

    iget-object v7, p0, Lg/f;->h:Landroid/media/MediaExtractor;

    invoke-virtual {v7, v5}, Landroid/media/MediaExtractor;->selectTrack(I)V

    const-string v7, "push-blank-buffers-on-shutdown"

    invoke-virtual {v4, v7, v3}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    iput-object v4, p0, Lg/f;->j:Landroid/media/MediaFormat;

    invoke-static {v6}, Landroid/media/MediaCodec;->createDecoderByType(Ljava/lang/String;)Landroid/media/MediaCodec;

    move-result-object v4

    iput-object v4, p0, Lg/f;->i:Landroid/media/MediaCodec;

    iput-boolean v3, p0, Lg/f;->P:Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1

    move-object v4, v6

    goto :goto_2

    :cond_1
    add-int/lit8 v5, v5, 0x1

    move-object v4, v6

    goto :goto_1

    :cond_2
    :goto_2
    if-eqz v2, :cond_6

    if-eq v5, v2, :cond_6

    if-eqz v4, :cond_6

    const/16 v2, 0x18

    :try_start_1
    invoke-virtual {v0, v2}, Landroid/media/MediaMetadataRetriever;->extractMetadata(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_3

    :catch_0
    move-exception v2

    iget-object v4, p0, Lg/f;->c:Ljava/lang/String;

    invoke-static {v4, v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move v1, v3

    :goto_3
    iget-object v2, p0, Lg/f;->j:Landroid/media/MediaFormat;

    const-string v4, "durationUs"

    invoke-virtual {v2, v4}, Landroid/media/MediaFormat;->getLong(Ljava/lang/String;)J

    move-result-wide v4

    iput-wide v4, p0, Lg/f;->D:J

    iget-wide v6, p0, Lg/f;->K:J

    const-wide/16 v8, 0x0

    cmp-long v2, v6, v8

    if-nez v2, :cond_3

    iput-wide v4, p0, Lg/f;->K:J

    :cond_3
    const-string v2, "height"

    const-string v4, "width"

    if-eqz v1, :cond_5

    const/16 v5, 0xb4

    if-ne v1, v5, :cond_4

    goto :goto_4

    :cond_4
    iget-object v5, p0, Lg/f;->j:Landroid/media/MediaFormat;

    invoke-virtual {v5, v2}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;)I

    move-result v2

    iput v2, p0, Lg/f;->e:I

    iget-object v2, p0, Lg/f;->j:Landroid/media/MediaFormat;

    invoke-virtual {v2, v4}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;)I

    move-result v2

    goto :goto_5

    :cond_5
    :goto_4
    iget-object v5, p0, Lg/f;->j:Landroid/media/MediaFormat;

    invoke-virtual {v5, v4}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;)I

    move-result v4

    iput v4, p0, Lg/f;->e:I

    iget-object v4, p0, Lg/f;->j:Landroid/media/MediaFormat;

    invoke-virtual {v4, v2}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;)I

    move-result v2

    :goto_5
    iput v2, p0, Lg/f;->f:I

    iput-boolean v3, p0, Lg/f;->m:Z

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-static {v1, v2, v2}, Lc/a;->a(IFF)Ljava/nio/FloatBuffer;

    move-result-object v2

    iput-object v2, p0, Lg/f;->s:Ljava/nio/FloatBuffer;

    iput v1, p0, Lg/f;->g:I

    :goto_6
    invoke-virtual {v0}, Landroid/media/MediaMetadataRetriever;->release()V

    return-void

    :cond_6
    :try_start_2
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "No video track found!"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/IllegalStateException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_2 .. :try_end_2} :catch_1

    :catch_1
    move-exception v2

    iget-object p0, p0, Lg/f;->c:Ljava/lang/String;

    invoke-static {p0, v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_6
.end method

.method static synthetic m(Lg/f;)Z
    .locals 0

    iget-boolean p0, p0, Lg/f;->N:Z

    return p0
.end method

.method static synthetic n(Lg/f;)Z
    .locals 0

    iget-boolean p0, p0, Lg/f;->M:Z

    return p0
.end method

.method static synthetic o(Lg/f;)Landroid/media/MediaCodec;
    .locals 0

    iget-object p0, p0, Lg/f;->i:Landroid/media/MediaCodec;

    return-object p0
.end method

.method static synthetic p(Lg/f;)Landroid/media/MediaExtractor;
    .locals 0

    iget-object p0, p0, Lg/f;->h:Landroid/media/MediaExtractor;

    return-object p0
.end method

.method static synthetic q(Lg/f;)V
    .locals 0

    invoke-direct {p0}, Lg/f;->H()V

    return-void
.end method

.method static synthetic r(Lg/f;)J
    .locals 2

    iget-wide v0, p0, Lg/f;->K:J

    return-wide v0
.end method

.method static synthetic s(Lg/f;)J
    .locals 2

    iget-wide v0, p0, Lg/f;->z:J

    return-wide v0
.end method

.method static synthetic t(Lg/f;Z)Z
    .locals 0

    iput-boolean p1, p0, Lg/f;->v:Z

    return p1
.end method

.method static synthetic u(Lg/f;)J
    .locals 2

    iget-wide v0, p0, Lg/f;->A:J

    return-wide v0
.end method

.method static synthetic v(Lg/f;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lg/f;->c:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic w(Lg/f;J)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lg/f;->R(J)V

    return-void
.end method

.method static synthetic x(Lg/f;)Z
    .locals 0

    iget-boolean p0, p0, Lg/f;->I:Z

    return p0
.end method

.method static synthetic y(Lg/f;)J
    .locals 2

    iget-wide v0, p0, Lg/f;->J:J

    return-wide v0
.end method

.method static synthetic z(Lg/f;)Landroid/os/Handler;
    .locals 0

    invoke-direct {p0}, Lg/f;->O()Landroid/os/Handler;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public I()V
    .locals 4

    iget-object v0, p0, Lg/f;->d:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lg/f;->c:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "decoderReleaseStatus: stop state = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v3, p0, Lg/f;->O:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, ", release state = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v3, p0, Lg/f;->P:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-boolean v1, p0, Lg/f;->P:Z

    if-eqz v1, :cond_0

    monitor-exit v0

    return-void

    :cond_0
    const/4 v1, 0x1

    iput-boolean v1, p0, Lg/f;->P:Z

    iget-object v1, p0, Lg/f;->h:Landroid/media/MediaExtractor;

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Landroid/media/MediaExtractor;->release()V

    :cond_1
    iget-object v1, p0, Lg/f;->i:Landroid/media/MediaCodec;

    if-eqz v1, :cond_2

    invoke-virtual {v1}, Landroid/media/MediaCodec;->release()V

    :cond_2
    iget-object p0, p0, Lg/f;->c:Ljava/lang/String;

    const-string v1, "decoder state: release"

    invoke-static {p0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public J()V
    .locals 3

    :try_start_0
    iget-object v0, p0, Lg/f;->i:Landroid/media/MediaCodec;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/media/MediaCodec;->reset()V

    iget-object v0, p0, Lg/f;->c:Ljava/lang/String;

    const-string v1, "decoder state: reset"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lg/f;->O:Z
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    iget-object v1, p0, Lg/f;->c:Ljava/lang/String;

    const-string v2, "decoder reset failed, rebuild it"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    invoke-direct {p0}, Lg/f;->T()V

    :goto_0
    return-void
.end method

.method public K([Z)V
    .locals 6

    iget-object v0, p0, Lg/f;->d:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lg/f;->c:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "decoderStartState: stop state = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v3, p0, Lg/f;->O:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, ", release state = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v3, p0, Lg/f;->P:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-boolean v1, p0, Lg/f;->P:Z

    if-eqz v1, :cond_0

    invoke-direct {p0}, Lg/f;->T()V

    const/4 v1, 0x1

    iput-boolean v1, p0, Lg/f;->O:Z

    :cond_0
    iget-boolean v1, p0, Lg/f;->O:Z

    if-nez v1, :cond_1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :cond_1
    const/4 v1, 0x0

    :try_start_1
    iget-object v2, p0, Lg/f;->i:Landroid/media/MediaCodec;

    iget-object v3, p0, Lg/f;->j:Landroid/media/MediaFormat;

    iget-object v4, p0, Lg/f;->l:Landroid/view/Surface;

    const/4 v5, 0x0

    invoke-virtual {v2, v3, v4, v5, v1}, Landroid/media/MediaCodec;->configure(Landroid/media/MediaFormat;Landroid/view/Surface;Landroid/media/MediaCrypto;I)V

    iget-object v2, p0, Lg/f;->i:Landroid/media/MediaCodec;

    invoke-virtual {v2}, Landroid/media/MediaCodec;->start()V

    iput-boolean v1, p0, Lg/f;->O:Z

    iget-object v2, p0, Lg/f;->c:Ljava/lang/String;

    const-string v3, "decoder state: start"

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/IllegalStateException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Landroid/media/MediaCodec$CryptoException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catch_0
    move-exception v2

    :try_start_2
    iget-object v3, p0, Lg/f;->c:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "decoder configure failed, break. isDestroy: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p0, p0, Lg/f;->M:Z

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v3, p0, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    aput-boolean v1, p1, v1

    goto :goto_0

    :catch_1
    move-exception v2

    iget-object v3, p0, Lg/f;->c:Ljava/lang/String;

    const-string v4, "failed"

    invoke-static {v3, v4, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    aput-boolean v1, p1, v1

    invoke-virtual {p0}, Lg/f;->J()V

    :goto_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p0
.end method

.method public L()V
    .locals 5

    iget-object v0, p0, Lg/f;->d:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lg/f;->c:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "decoderStopStatus: stop state = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v3, p0, Lg/f;->O:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, ", release state = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v3, p0, Lg/f;->P:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-boolean v1, p0, Lg/f;->O:Z

    if-eqz v1, :cond_0

    monitor-exit v0

    return-void

    :cond_0
    const/4 v1, 0x1

    iput-boolean v1, p0, Lg/f;->O:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    invoke-virtual {p0}, Lg/c;->b()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lc/g;->q(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lg/f;->h:Landroid/media/MediaExtractor;

    iget-wide v2, p0, Lg/f;->z:J

    const/4 v4, 0x2

    invoke-virtual {v1, v2, v3, v4}, Landroid/media/MediaExtractor;->seekTo(JI)V

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lg/f;->h:Landroid/media/MediaExtractor;

    iget-wide v2, p0, Lg/f;->z:J

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v3, v4}, Landroid/media/MediaExtractor;->seekTo(JI)V

    :goto_0
    iget-object v1, p0, Lg/f;->i:Landroid/media/MediaCodec;

    invoke-virtual {v1}, Landroid/media/MediaCodec;->stop()V

    iget-object v1, p0, Lg/f;->c:Ljava/lang/String;

    const-string v2, "decoder state: stop"

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/IllegalStateException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    :catch_0
    move-exception v1

    :try_start_2
    iget-object v2, p0, Lg/f;->c:Ljava/lang/String;

    const-string v3, "failed"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    invoke-virtual {p0}, Lg/f;->J()V

    :goto_1
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p0
.end method

.method public N()J
    .locals 2

    iget-wide v0, p0, Lg/f;->D:J

    return-wide v0
.end method

.method public P()Z
    .locals 0

    iget-object p0, p0, Lg/f;->t:Lg/f$b;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/Thread;->isAlive()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public Q()Z
    .locals 0

    iget-boolean p0, p0, Lg/f;->w:Z

    return p0
.end method

.method public S()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lg/f;->N:Z

    iget-boolean v0, p0, Lg/f;->w:Z

    if-nez v0, :cond_0

    iget-object p0, p0, Lg/f;->c:Ljava/lang/String;

    const-string v0, "pauseDecode/stopDecode before initialized"

    invoke-static {p0, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    invoke-virtual {p0}, Lg/f;->P()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object p0, p0, Lg/f;->t:Lg/f$b;

    invoke-virtual {p0}, Lg/f$b;->interrupt()V

    :cond_1
    return-void
.end method

.method public U()V
    .locals 0

    invoke-virtual {p0}, Lg/f;->S()V

    invoke-virtual {p0}, Lg/f;->I()V

    return-void
.end method

.method public declared-synchronized V(J)V
    .locals 4

    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lg/f;->w:Z

    if-nez v0, :cond_0

    iget-object p1, p0, Lg/f;->c:Ljava/lang/String;

    const-string p2, "requestUpdate before initialized"

    invoke-static {p1, p2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :cond_0
    const/4 v0, 0x1

    :try_start_1
    iput-boolean v0, p0, Lg/f;->v:Z

    invoke-virtual {p0}, Lg/f;->P()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-direct {p0, p1, p2}, Lg/f;->R(J)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-void

    :cond_1
    const-wide/16 v0, 0x3e8

    mul-long/2addr p1, v0

    :try_start_2
    iput-wide p1, p0, Lg/f;->A:J

    iget-object v0, p0, Lg/f;->L:Ld/c;

    invoke-virtual {v0, p1, p2}, Ld/c;->b(J)J

    move-result-wide p1

    iget-boolean v0, p0, Lg/f;->I:Z

    if-nez v0, :cond_2

    iget-wide v0, p0, Lg/f;->J:J

    add-long/2addr v0, p1

    goto :goto_0

    :cond_2
    iget-wide v0, p0, Lg/f;->K:J

    iget-wide v2, p0, Lg/f;->J:J

    sub-long/2addr v0, v2

    rem-long v0, p1, v0

    add-long/2addr v0, v2

    :goto_0
    iput-wide v0, p0, Lg/f;->z:J

    invoke-direct {p0, p1, p2}, Lg/f;->G(J)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized W(J)Ljava/lang/Thread;
    .locals 6

    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lg/f;->w:Z

    const/4 v1, 0x0

    if-nez v0, :cond_0

    iget-object p1, p0, Lg/f;->c:Ljava/lang/String;

    const-string p2, "seekTo before initialized"

    invoke-static {p1, p2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v1

    :cond_0
    const-wide/16 v2, 0x3e8

    mul-long/2addr p1, v2

    :try_start_1
    iput-wide p1, p0, Lg/f;->A:J

    iget-object v0, p0, Lg/f;->L:Ld/c;

    invoke-virtual {v0, p1, p2}, Ld/c;->b(J)J

    move-result-wide p1

    iget-boolean v0, p0, Lg/f;->I:Z

    if-nez v0, :cond_1

    iget-wide v2, p0, Lg/f;->J:J

    add-long/2addr v2, p1

    goto :goto_0

    :cond_1
    iget-wide v2, p0, Lg/f;->K:J

    iget-wide v4, p0, Lg/f;->J:J

    sub-long/2addr v2, v4

    rem-long v2, p1, v2

    add-long/2addr v2, v4

    :goto_0
    iput-wide v2, p0, Lg/f;->z:J

    invoke-direct {p0, p1, p2}, Lg/f;->G(J)V

    iget-boolean p1, p0, Lg/f;->y:Z

    if-nez p1, :cond_3

    iget-boolean p1, p0, Lg/f;->I:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz p1, :cond_2

    goto :goto_1

    :cond_2
    monitor-exit p0

    return-object v1

    :cond_3
    :goto_1
    :try_start_2
    iget-object p1, p0, Lg/f;->u:Ljava/lang/Thread;

    if-eqz p1, :cond_4

    invoke-virtual {p1}, Ljava/lang/Thread;->isAlive()Z

    move-result p1

    if-eqz p1, :cond_4

    iget-object p1, p0, Lg/f;->u:Ljava/lang/Thread;

    invoke-virtual {p1}, Ljava/lang/Thread;->interrupt()V

    :cond_4
    new-instance p1, Lg/f$e;

    iget-wide v2, p0, Lg/f;->z:J

    invoke-direct {p1, p0, v2, v3, v1}, Lg/f$e;-><init>(Lg/f;JLg/f$a;)V

    iput-object p1, p0, Lg/f;->u:Ljava/lang/Thread;

    invoke-virtual {p1}, Ljava/lang/Thread;->start()V

    iget-object p1, p0, Lg/f;->u:Ljava/lang/Thread;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit p0

    return-object p1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public X(Z)V
    .locals 0

    iput-boolean p1, p0, Lg/f;->M:Z

    return-void
.end method

.method Y(Lg/f$c;)V
    .locals 0

    iput-object p1, p0, Lg/f;->E:Lg/f$c;

    return-void
.end method

.method public Z(Z)V
    .locals 1

    iget-boolean v0, p0, Lg/f;->I:Z

    if-ne p1, v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Lg/f;->P()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object p0, p0, Lg/f;->c:Ljava/lang/String;

    const-string p1, "set repeat while decoding"

    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_1
    iput-boolean p1, p0, Lg/f;->I:Z

    return-void
.end method

.method public a()V
    .locals 5

    iget-object v0, p0, Lg/f;->c:Ljava/lang/String;

    const-string v1, "destroyGL"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lg/f;->n:Lc/e;

    invoke-virtual {v0}, Lc/e;->e()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lg/f;->n:Lc/e;

    invoke-virtual {v0}, Lc/e;->b()V

    :cond_0
    const/4 v0, 0x1

    new-array v1, v0, [I

    iget v2, p0, Lg/f;->o:I

    const/4 v3, 0x0

    aput v2, v1, v3

    invoke-static {v0, v1, v3}, Landroid/opengl/GLES20;->glDeleteTextures(I[II)V

    iget v0, p0, Lg/f;->p:I

    invoke-static {v0}, Landroid/opengl/GLES20;->glDeleteProgram(I)V

    const/4 v0, -0x1

    invoke-virtual {p0, v0}, Lg/c;->k(I)V

    iget-object v0, p0, Lg/f;->c:Ljava/lang/String;

    const-string v1, "destroyGL: pauseDecode"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lg/f;->S()V

    iget-object v0, p0, Lg/f;->h:Landroid/media/MediaExtractor;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/media/MediaExtractor;->release()V

    iput-object v1, p0, Lg/f;->h:Landroid/media/MediaExtractor;

    :cond_1
    iget-object v0, p0, Lg/f;->i:Landroid/media/MediaCodec;

    if-eqz v0, :cond_2

    :try_start_0
    invoke-virtual {v0}, Landroid/media/MediaCodec;->stop()V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    iget-object v2, p0, Lg/f;->c:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "destroyGL: mDecoder exception:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    iget-object v0, p0, Lg/f;->i:Landroid/media/MediaCodec;

    invoke-virtual {v0}, Landroid/media/MediaCodec;->release()V

    iput-object v1, p0, Lg/f;->i:Landroid/media/MediaCodec;

    :cond_2
    iget-object v0, p0, Lg/f;->l:Landroid/view/Surface;

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Landroid/view/Surface;->release()V

    :cond_3
    iget-object v0, p0, Lg/f;->k:Landroid/graphics/SurfaceTexture;

    if-eqz v0, :cond_4

    invoke-virtual {v0}, Landroid/graphics/SurfaceTexture;->release()V

    :cond_4
    iget-object p0, p0, Lg/f;->R:Landroid/os/HandlerThread;

    if-eqz p0, :cond_5

    invoke-virtual {p0}, Landroid/os/HandlerThread;->quitSafely()Z

    :cond_5
    return-void
.end method

.method public a0()V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lg/f;->N:Z

    return-void
.end method

.method public b0(Ld/c;)V
    .locals 0

    iput-object p1, p0, Lg/f;->L:Ld/c;

    return-void
.end method

.method public c()I
    .locals 0

    iget p0, p0, Lg/f;->f:I

    return p0
.end method

.method public declared-synchronized c0()V
    .locals 3

    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lg/f;->w:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lg/f;->c:Ljava/lang/String;

    const-string v1, "startDecode before initialized"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :cond_0
    :try_start_1
    iget-boolean v0, p0, Lg/f;->N:Z

    if-nez v0, :cond_3

    iget-boolean v0, p0, Lg/f;->M:Z

    if-eqz v0, :cond_1

    goto :goto_1

    :cond_1
    iget-object v0, p0, Lg/f;->t:Lg/f$b;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lg/f$b;->interrupt()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    iget-object v0, p0, Lg/f;->t:Lg/f$b;

    invoke-virtual {v0}, Ljava/lang/Thread;->join()V
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    :catch_0
    move-exception v0

    :try_start_3
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    :cond_2
    :goto_0
    iget-object v0, p0, Lg/f;->c:Ljava/lang/String;

    const-string v1, "startDecode: join mDecodeThread done (real start)"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Lg/f$b;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lg/f$b;-><init>(Lg/f;Lg/f$a;)V

    iput-object v0, p0, Lg/f;->t:Lg/f$b;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    monitor-exit p0

    return-void

    :cond_3
    :goto_1
    :try_start_4
    iget-object v0, p0, Lg/f;->c:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "startDecode: return for isDecoding = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lg/f;->P()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, " or mIsStop = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lg/f;->N:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public d()I
    .locals 0

    iget p0, p0, Lg/f;->f:I

    return p0
.end method

.method public d0()V
    .locals 0

    invoke-virtual {p0}, Lg/f;->S()V

    invoke-virtual {p0}, Lg/f;->L()V

    return-void
.end method

.method public e()I
    .locals 0

    iget p0, p0, Lg/f;->e:I

    return p0
.end method

.method public e0(JJ)V
    .locals 4

    const-wide/16 v0, 0x0

    cmp-long v2, p1, v0

    if-ltz v2, :cond_1

    cmp-long v0, p3, v0

    if-ltz v0, :cond_1

    invoke-virtual {p0}, Lg/f;->P()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lg/f;->c:Ljava/lang/String;

    const-string p1, "trim video while decoding"

    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    const-wide/16 v0, 0x3e8

    mul-long/2addr p1, v0

    iget-wide v2, p0, Lg/f;->D:J

    invoke-static {p1, p2, v2, v3}, Ljava/lang/Math;->min(JJ)J

    move-result-wide p1

    iput-wide p1, p0, Lg/f;->J:J

    mul-long/2addr p3, v0

    iget-wide p1, p0, Lg/f;->D:J

    invoke-static {p3, p4, p1, p2}, Ljava/lang/Math;->min(JJ)J

    move-result-wide p1

    iput-wide p1, p0, Lg/f;->K:J

    return-void

    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Trim fail ("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p1, "~"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3, p4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p1, ")"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public f0()V
    .locals 7

    iget-boolean v0, p0, Lg/f;->w:Z

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lg/f;->m:Z

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lg/f;->k:Landroid/graphics/SurfaceTexture;

    invoke-virtual {v0}, Landroid/graphics/SurfaceTexture;->updateTexImage()V

    iget-object v0, p0, Lg/f;->n:Lc/e;

    invoke-virtual {v0}, Lc/e;->a()V

    iget v0, p0, Lg/f;->p:I

    invoke-static {v0}, Landroid/opengl/GLES20;->glUseProgram(I)V

    iget v0, p0, Lg/f;->q:I

    invoke-static {v0}, Landroid/opengl/GLES20;->glEnableVertexAttribArray(I)V

    iget v1, p0, Lg/f;->q:I

    const/4 v2, 0x2

    const/16 v3, 0x1406

    const/4 v4, 0x0

    const/16 v5, 0x8

    sget-object v6, Lc/a;->d:Ljava/nio/FloatBuffer;

    invoke-static/range {v1 .. v6}, Landroid/opengl/GLES20;->glVertexAttribPointer(IIIZILjava/nio/Buffer;)V

    iget v0, p0, Lg/f;->r:I

    invoke-static {v0}, Landroid/opengl/GLES20;->glEnableVertexAttribArray(I)V

    iget v1, p0, Lg/f;->r:I

    iget-object v6, p0, Lg/f;->s:Ljava/nio/FloatBuffer;

    invoke-static/range {v1 .. v6}, Landroid/opengl/GLES20;->glVertexAttribPointer(IIIZILjava/nio/Buffer;)V

    iget v0, p0, Lg/f;->o:I

    const v1, 0x8d65

    invoke-static {v1, v0}, Landroid/opengl/GLES20;->glBindTexture(II)V

    const/4 v0, 0x6

    const/4 v2, 0x4

    const/4 v3, 0x0

    invoke-static {v0, v3, v2}, Landroid/opengl/GLES20;->glDrawArrays(III)V

    iget v0, p0, Lg/f;->q:I

    invoke-static {v0}, Landroid/opengl/GLES20;->glDisableVertexAttribArray(I)V

    iget v0, p0, Lg/f;->r:I

    invoke-static {v0}, Landroid/opengl/GLES20;->glDisableVertexAttribArray(I)V

    invoke-static {v1, v3}, Landroid/opengl/GLES20;->glBindTexture(II)V

    iget-object p0, p0, Lg/f;->n:Lc/e;

    invoke-virtual {p0}, Lc/e;->f()V

    :cond_1
    :goto_0
    return-void
.end method

.method public g()I
    .locals 0

    iget p0, p0, Lg/f;->e:I

    return p0
.end method

.method public declared-synchronized h()V
    .locals 5

    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lg/f;->w:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    monitor-exit p0

    return-void

    :cond_0
    :try_start_1
    iget-object v0, p0, Lg/f;->c:Ljava/lang/String;

    const-string v1, "initGL: "

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lg/f;->T()V

    const/4 v0, 0x1

    new-array v1, v0, [I

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/opengl/GLES20;->glGenTextures(I[II)V

    aget v0, v1, v2

    iput v0, p0, Lg/f;->o:I

    const v3, 0x8d65

    invoke-static {v3, v0}, Landroid/opengl/GLES20;->glBindTexture(II)V

    const/16 v0, 0x2801

    const v4, 0x46180400    # 9729.0f

    invoke-static {v3, v0, v4}, Landroid/opengl/GLES20;->glTexParameterf(IIF)V

    const/16 v0, 0x2800

    invoke-static {v3, v0, v4}, Landroid/opengl/GLES20;->glTexParameterf(IIF)V

    new-instance v0, Landroid/graphics/SurfaceTexture;

    aget v1, v1, v2

    invoke-direct {v0, v1}, Landroid/graphics/SurfaceTexture;-><init>(I)V

    iput-object v0, p0, Lg/f;->k:Landroid/graphics/SurfaceTexture;

    invoke-virtual {v0, p0}, Landroid/graphics/SurfaceTexture;->setOnFrameAvailableListener(Landroid/graphics/SurfaceTexture$OnFrameAvailableListener;)V

    new-instance v0, Landroid/view/Surface;

    iget-object v1, p0, Lg/f;->k:Landroid/graphics/SurfaceTexture;

    invoke-direct {v0, v1}, Landroid/view/Surface;-><init>(Landroid/graphics/SurfaceTexture;)V

    iput-object v0, p0, Lg/f;->l:Landroid/view/Surface;

    iget-object v0, p0, Lg/f;->n:Lc/e;

    invoke-virtual {v0}, Lc/e;->e()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lg/f;->n:Lc/e;

    invoke-virtual {p0}, Lg/f;->g()I

    move-result v1

    invoke-virtual {p0}, Lg/f;->c()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lc/e;->d(II)V

    :cond_1
    iget-object v0, p0, Lg/f;->n:Lc/e;

    invoke-virtual {v0}, Lc/e;->c()I

    move-result v0

    invoke-virtual {p0, v0}, Lg/c;->k(I)V

    const-string v0, "attribute vec4 aPosition;attribute vec2 aTexCoord;varying vec2 texCoordVar;void main() {    gl_Position = aPosition;    texCoordVar = aTexCoord;}"

    const-string v1, "#extension GL_OES_EGL_image_external : require\nprecision mediump float;uniform samplerExternalOES texture;varying vec2 texCoordVar;void main() {    gl_FragColor = texture2D(texture, texCoordVar);}"

    invoke-static {v0, v1}, Lc/g;->a(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lg/f;->p:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_5

    const-string v2, "aPosition"

    invoke-static {v0, v2}, Landroid/opengl/GLES20;->glGetAttribLocation(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Lg/f;->q:I

    if-eq v0, v1, :cond_4

    iget v0, p0, Lg/f;->p:I

    const-string v2, "aTexCoord"

    invoke-static {v0, v2}, Landroid/opengl/GLES20;->glGetAttribLocation(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Lg/f;->r:I

    if-eq v0, v1, :cond_3

    iget-object v0, p0, Lg/f;->F:Lg/f$d;

    if-eqz v0, :cond_2

    invoke-interface {v0, p0}, Lg/f$d;->a(Lg/f;)Z

    move-result v0

    iput-boolean v0, p0, Lg/f;->w:Z

    :cond_2
    iget-object v0, p0, Lg/f;->c:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "initGL: done, result = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lg/f;->w:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-void

    :cond_3
    :try_start_2
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Could not get aTextureCoord"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_4
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Could not get aPosition"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_5
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Could not create program"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public i()Z
    .locals 1

    invoke-super {p0}, Lg/c;->i()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lg/f;->x:Z

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lg/f;->I:Z

    if-nez v0, :cond_0

    iget-boolean p0, p0, Lg/f;->y:Z

    if-eqz p0, :cond_1

    :cond_0
    const/4 p0, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public onFrameAvailable(Landroid/graphics/SurfaceTexture;)V
    .locals 0

    const/4 p1, 0x1

    iput-boolean p1, p0, Lg/f;->x:Z

    return-void
.end method
