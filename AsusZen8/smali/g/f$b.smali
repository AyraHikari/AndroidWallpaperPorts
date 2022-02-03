.class Lg/f$b;
.super Ljava/lang/Thread;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lg/f;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "b"
.end annotation


# instance fields
.field private final a:Ljava/lang/String;

.field private b:[Z

.field private c:J

.field private d:J

.field e:Ljava/lang/Runnable;

.field final synthetic f:Lg/f;


# direct methods
.method private constructor <init>(Lg/f;)V
    .locals 2

    iput-object p1, p0, Lg/f$b;->f:Lg/f;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p1}, Lg/f;->v(Lg/f;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " DecodeThread"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lg/f$b;->a:Ljava/lang/String;

    const/4 p1, 0x1

    new-array v0, p1, [Z

    const/4 v1, 0x0

    aput-boolean p1, v0, v1

    iput-object v0, p0, Lg/f$b;->b:[Z

    new-instance p1, Lg/f$b$a;

    invoke-direct {p1, p0}, Lg/f$b$a;-><init>(Lg/f$b;)V

    iput-object p1, p0, Lg/f$b;->e:Ljava/lang/Runnable;

    return-void
.end method

.method synthetic constructor <init>(Lg/f;Lg/f$a;)V
    .locals 0

    invoke-direct {p0, p1}, Lg/f$b;-><init>(Lg/f;)V

    return-void
.end method

.method static synthetic a(Lg/f$b;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lg/f$b;->a:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic b(Lg/f$b;)[Z
    .locals 0

    iget-object p0, p0, Lg/f$b;->b:[Z

    return-object p0
.end method


# virtual methods
.method public interrupt()V
    .locals 2

    iget-object v0, p0, Lg/f$b;->b:[Z

    const/4 v1, 0x0

    aput-boolean v1, v0, v1

    iget-object p0, p0, Lg/f$b;->a:Ljava/lang/String;

    const-string v0, "interrupt"

    invoke-static {p0, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public run()V
    .locals 23

    move-object/from16 v1, p0

    iget-object v2, v1, Lg/f$b;->a:Ljava/lang/String;

    const-string v3, "begin"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, v1, Lg/f$b;->f:Lg/f;

    invoke-static {v2}, Lg/f;->A(Lg/f;)Ljava/lang/Object;

    move-result-object v2

    monitor-enter v2

    :try_start_0
    iget-object v3, v1, Lg/f$b;->a:Ljava/lang/String;

    const-string v4, "start"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v3

    iget-object v5, v1, Lg/f$b;->f:Lg/f;

    invoke-static {v5}, Lg/f;->z(Lg/f;)Landroid/os/Handler;

    move-result-object v5

    iget-object v6, v1, Lg/f$b;->e:Ljava/lang/Runnable;

    const-wide/16 v7, 0x1172

    invoke-virtual {v5, v6, v7, v8}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v5, 0x0

    :try_start_1
    iget-object v6, v1, Lg/f$b;->f:Lg/f;

    iget-object v9, v1, Lg/f$b;->b:[Z

    invoke-virtual {v6, v9}, Lg/f;->K([Z)V

    new-instance v6, Landroid/media/MediaCodec$BufferInfo;

    invoke-direct {v6}, Landroid/media/MediaCodec$BufferInfo;-><init>()V

    const-wide/16 v9, -0x1

    move v11, v5

    :goto_0
    iget-object v12, v1, Lg/f$b;->b:[Z

    aget-boolean v12, v12, v5

    if-eqz v12, :cond_12

    iget-object v12, v1, Lg/f$b;->f:Lg/f;

    invoke-static {v12}, Lg/f;->m(Lg/f;)Z

    move-result v12

    if-nez v12, :cond_12

    iget-object v12, v1, Lg/f$b;->f:Lg/f;

    invoke-static {v12}, Lg/f;->n(Lg/f;)Z

    move-result v12

    if-nez v12, :cond_12

    const-wide/16 v12, 0x2710

    if-nez v11, :cond_1

    iget-object v15, v1, Lg/f$b;->f:Lg/f;

    invoke-static {v15}, Lg/f;->o(Lg/f;)Landroid/media/MediaCodec;

    move-result-object v15

    invoke-virtual {v15, v12, v13}, Landroid/media/MediaCodec;->dequeueInputBuffer(J)I

    move-result v15

    if-ltz v15, :cond_1

    iget-object v7, v1, Lg/f$b;->f:Lg/f;

    invoke-static {v7}, Lg/f;->o(Lg/f;)Landroid/media/MediaCodec;

    move-result-object v7

    invoke-virtual {v7, v15}, Landroid/media/MediaCodec;->getInputBuffer(I)Ljava/nio/ByteBuffer;

    move-result-object v7

    iget-object v8, v1, Lg/f$b;->f:Lg/f;

    invoke-static {v8}, Lg/f;->p(Lg/f;)Landroid/media/MediaExtractor;

    move-result-object v8

    invoke-virtual {v8}, Landroid/media/MediaExtractor;->getSampleTime()J

    move-result-wide v20

    iget-object v8, v1, Lg/f$b;->f:Lg/f;

    invoke-static {v8}, Lg/f;->p(Lg/f;)Landroid/media/MediaExtractor;

    move-result-object v8

    invoke-virtual {v8, v7, v5}, Landroid/media/MediaExtractor;->readSampleData(Ljava/nio/ByteBuffer;I)I

    move-result v19

    if-gtz v19, :cond_0

    iget-object v8, v1, Lg/f$b;->f:Lg/f;

    invoke-static {v8}, Lg/f;->o(Lg/f;)Landroid/media/MediaCodec;

    move-result-object v16

    const/16 v18, 0x0

    const/16 v19, 0x0

    const-wide/16 v20, 0x0

    const/16 v22, 0x4

    move/from16 v17, v15

    invoke-virtual/range {v16 .. v22}, Landroid/media/MediaCodec;->queueInputBuffer(IIIJI)V

    const/4 v11, 0x1

    goto :goto_1

    :cond_0
    iget-object v8, v1, Lg/f$b;->f:Lg/f;

    invoke-static {v8}, Lg/f;->o(Lg/f;)Landroid/media/MediaCodec;

    move-result-object v16

    const/16 v18, 0x0

    const/16 v22, 0x0

    move/from16 v17, v15

    invoke-virtual/range {v16 .. v22}, Landroid/media/MediaCodec;->queueInputBuffer(IIIJI)V

    iget-object v8, v1, Lg/f$b;->f:Lg/f;

    invoke-static {v8}, Lg/f;->p(Lg/f;)Landroid/media/MediaExtractor;

    move-result-object v8

    invoke-virtual {v8}, Landroid/media/MediaExtractor;->advance()Z

    :goto_1
    invoke-virtual {v7}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    :cond_1
    iget-object v7, v1, Lg/f$b;->f:Lg/f;

    invoke-static {v7}, Lg/f;->o(Lg/f;)Landroid/media/MediaCodec;

    move-result-object v7

    invoke-virtual {v7, v6, v12, v13}, Landroid/media/MediaCodec;->dequeueOutputBuffer(Landroid/media/MediaCodec$BufferInfo;J)I

    move-result v7

    if-ltz v7, :cond_11

    iget-object v8, v1, Lg/f$b;->f:Lg/f;

    invoke-static {v8}, Lg/f;->q(Lg/f;)V

    iget-object v8, v1, Lg/f$b;->f:Lg/f;

    invoke-static {v8}, Lg/f;->o(Lg/f;)Landroid/media/MediaCodec;

    move-result-object v8

    invoke-virtual {v8, v7}, Landroid/media/MediaCodec;->getOutputBuffer(I)Ljava/nio/ByteBuffer;

    move-result-object v8

    iget v12, v6, Landroid/media/MediaCodec$BufferInfo;->size:I

    if-eqz v12, :cond_2

    if-eqz v8, :cond_2

    iget v12, v6, Landroid/media/MediaCodec$BufferInfo;->offset:I

    invoke-virtual {v8, v12}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    iget v12, v6, Landroid/media/MediaCodec$BufferInfo;->offset:I

    iget v13, v6, Landroid/media/MediaCodec$BufferInfo;->size:I

    add-int/2addr v12, v13

    invoke-virtual {v8, v12}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    :cond_2
    iget-object v8, v1, Lg/f$b;->f:Lg/f;

    invoke-static {v8}, Lg/f;->B(Lg/f;)J

    move-result-wide v12

    const-wide/32 v15, 0x88b8

    cmp-long v8, v12, v15

    if-nez v8, :cond_4

    const-wide/16 v12, 0x0

    cmp-long v8, v9, v12

    if-gez v8, :cond_3

    :goto_2
    iget-wide v9, v6, Landroid/media/MediaCodec$BufferInfo;->presentationTimeUs:J

    goto :goto_3

    :cond_3
    iget-object v8, v1, Lg/f$b;->f:Lg/f;

    iget-wide v12, v6, Landroid/media/MediaCodec$BufferInfo;->presentationTimeUs:J

    sub-long/2addr v12, v9

    invoke-static {v8, v12, v13}, Lg/f;->C(Lg/f;J)J

    goto :goto_2

    :cond_4
    :goto_3
    iget v8, v6, Landroid/media/MediaCodec$BufferInfo;->flags:I

    and-int/lit8 v8, v8, 0x4

    if-nez v8, :cond_6

    iget-wide v12, v6, Landroid/media/MediaCodec$BufferInfo;->presentationTimeUs:J

    iget-object v8, v1, Lg/f$b;->f:Lg/f;

    invoke-static {v8}, Lg/f;->r(Lg/f;)J

    move-result-wide v15

    cmp-long v8, v12, v15

    if-lez v8, :cond_5

    goto :goto_4

    :cond_5
    move v8, v5

    goto :goto_5

    :cond_6
    :goto_4
    const/4 v8, 0x1

    :goto_5
    iget-wide v12, v1, Lg/f$b;->c:J

    iget-object v15, v1, Lg/f$b;->f:Lg/f;

    invoke-static {v15}, Lg/f;->s(Lg/f;)J

    move-result-wide v15

    cmp-long v12, v12, v15

    if-lez v12, :cond_7

    const/4 v12, 0x1

    goto :goto_6

    :cond_7
    move v12, v5

    :goto_6
    if-nez v8, :cond_a

    if-eqz v12, :cond_8

    iget-wide v12, v1, Lg/f$b;->d:J

    iget-wide v14, v6, Landroid/media/MediaCodec$BufferInfo;->presentationTimeUs:J

    cmp-long v12, v12, v14

    if-lez v12, :cond_9

    iget-object v12, v1, Lg/f$b;->f:Lg/f;

    invoke-static {v12}, Lg/f;->s(Lg/f;)J

    move-result-wide v12

    :goto_7
    iput-wide v12, v1, Lg/f$b;->c:J

    goto :goto_8

    :cond_8
    iget-object v12, v1, Lg/f$b;->f:Lg/f;

    invoke-static {v12}, Lg/f;->s(Lg/f;)J

    move-result-wide v12

    goto :goto_7

    :cond_9
    :goto_8
    iget-wide v12, v6, Landroid/media/MediaCodec$BufferInfo;->presentationTimeUs:J

    iput-wide v12, v1, Lg/f$b;->d:J

    :cond_a
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v12

    :goto_9
    iget-object v14, v1, Lg/f$b;->b:[Z

    aget-boolean v14, v14, v5

    const-wide/16 v17, 0x3e8

    if-eqz v14, :cond_d

    iget-object v14, v1, Lg/f$b;->f:Lg/f;

    invoke-static {v14}, Lg/f;->m(Lg/f;)Z

    move-result v14

    if-nez v14, :cond_d

    iget-object v14, v1, Lg/f$b;->f:Lg/f;

    invoke-static {v14}, Lg/f;->n(Lg/f;)Z

    move-result v14

    if-nez v14, :cond_d

    iget-wide v14, v6, Landroid/media/MediaCodec$BufferInfo;->presentationTimeUs:J

    iget-object v5, v1, Lg/f$b;->f:Lg/f;

    invoke-static {v5}, Lg/f;->s(Lg/f;)J

    move-result-wide v20

    cmp-long v5, v14, v20

    if-lez v5, :cond_d

    iget-wide v14, v1, Lg/f$b;->c:J

    iget-object v5, v1, Lg/f$b;->f:Lg/f;

    invoke-static {v5}, Lg/f;->s(Lg/f;)J

    move-result-wide v20

    cmp-long v5, v14, v20

    if-lez v5, :cond_b

    goto/16 :goto_a

    :cond_b
    iget-object v5, v1, Lg/f$b;->f:Lg/f;

    const/4 v14, 0x1

    invoke-static {v5, v14}, Lg/f;->t(Lg/f;Z)Z

    iget-object v5, v1, Lg/f$b;->f:Lg/f;

    invoke-static {v5}, Lg/f;->u(Lg/f;)J

    move-result-wide v14

    div-long v14, v14, v17

    invoke-static {v5, v14, v15}, Lg/f;->w(Lg/f;J)V
    :try_end_1
    .catch Ljava/lang/IllegalStateException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const-wide/16 v14, 0x1

    :try_start_2
    invoke-static {v14, v15}, Ljava/lang/Thread;->sleep(J)V
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/IllegalStateException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/NullPointerException; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v14

    sub-long/2addr v14, v12

    const-wide/16 v17, 0x5dc

    cmp-long v5, v14, v17

    if-lez v5, :cond_c

    iget-object v5, v1, Lg/f$b;->a:Ljava/lang/String;

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "decode over 1.5s looping[0] = "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v15, v1, Lg/f$b;->b:[Z

    const/16 v17, 0x0

    aget-boolean v15, v15, v17

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v15, " mIsStop = "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v15, v1, Lg/f$b;->f:Lg/f;

    invoke-static {v15}, Lg/f;->m(Lg/f;)Z

    move-result v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v15, ", mIsDestroy = "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v15, v1, Lg/f$b;->f:Lg/f;

    invoke-static {v15}, Lg/f;->n(Lg/f;)Z

    move-result v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v15, ", info.presentationTimeUs = "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-wide/from16 v20, v9

    iget-wide v9, v6, Landroid/media/MediaCodec$BufferInfo;->presentationTimeUs:J

    invoke-virtual {v14, v9, v10}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v9, " frameUs = "

    invoke-virtual {v14, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v9, v1, Lg/f$b;->f:Lg/f;

    invoke-static {v9}, Lg/f;->s(Lg/f;)J

    move-result-wide v9

    invoke-virtual {v14, v9, v10}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v9, ", playerCurrentTimeUs = "

    invoke-virtual {v14, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v9, v1, Lg/f$b;->f:Lg/f;

    invoke-static {v9}, Lg/f;->u(Lg/f;)J

    move-result-wide v9

    invoke-virtual {v14, v9, v10}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v9, ", decoderCurrentTimeUs = "

    invoke-virtual {v14, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v9, v1, Lg/f$b;->f:Lg/f;

    invoke-static {v9}, Lg/f;->D(Lg/f;)J

    move-result-wide v9

    invoke-virtual {v14, v9, v10}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v5, v9}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v5, v1, Lg/f$b;->b:[Z

    const/4 v9, 0x0

    aput-boolean v9, v5, v9

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v9

    sub-long/2addr v9, v12

    sput-wide v9, Lg/f;->S:J

    move-wide/from16 v9, v20

    :cond_c
    const/4 v5, 0x0

    goto/16 :goto_9

    :catch_0
    move-exception v0

    move-wide/from16 v20, v9

    move-object v5, v0

    invoke-virtual {v5}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_b

    :cond_d
    :goto_a
    move-wide/from16 v20, v9

    :goto_b
    iget-object v5, v1, Lg/f$b;->b:[Z

    const/4 v9, 0x0

    aget-boolean v5, v5, v9

    if-eqz v5, :cond_10

    iget-object v5, v1, Lg/f$b;->f:Lg/f;

    invoke-static {v5}, Lg/f;->o(Lg/f;)Landroid/media/MediaCodec;

    move-result-object v5

    const/4 v9, 0x1

    invoke-virtual {v5, v7, v9}, Landroid/media/MediaCodec;->releaseOutputBuffer(IZ)V

    iget-object v5, v1, Lg/f$b;->f:Lg/f;

    invoke-static {v5}, Lg/f;->u(Lg/f;)J

    move-result-wide v9

    div-long v9, v9, v17

    invoke-static {v5, v9, v10}, Lg/f;->w(Lg/f;J)V

    if-eqz v8, :cond_f

    iget-object v5, v1, Lg/f$b;->f:Lg/f;

    invoke-static {v5}, Lg/f;->x(Lg/f;)Z

    move-result v5

    if-eqz v5, :cond_e

    iget-object v5, v1, Lg/f$b;->f:Lg/f;

    invoke-static {v5}, Lg/f;->y(Lg/f;)J

    move-result-wide v7

    iget-object v9, v1, Lg/f$b;->b:[Z

    invoke-static {v5, v7, v8, v9}, Lg/f;->F(Lg/f;J[Z)V

    move-wide/from16 v9, v20

    const/4 v11, 0x0

    goto :goto_d

    :cond_e
    iget-object v5, v1, Lg/f$b;->b:[Z

    const/4 v7, 0x0

    aput-boolean v7, v5, v7

    iget-object v5, v1, Lg/f$b;->a:Ljava/lang/String;

    const-string v7, "videoTexture is not repeat"

    invoke-static {v5, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_c

    :cond_f
    iget-object v5, v1, Lg/f$b;->f:Lg/f;

    iget-wide v7, v6, Landroid/media/MediaCodec$BufferInfo;->presentationTimeUs:J

    invoke-static {v5, v7, v8}, Lg/f;->E(Lg/f;J)J

    goto :goto_c

    :cond_10
    iget-object v5, v1, Lg/f$b;->f:Lg/f;

    invoke-static {v5}, Lg/f;->o(Lg/f;)Landroid/media/MediaCodec;

    move-result-object v5

    const/4 v8, 0x0

    invoke-virtual {v5, v7, v8}, Landroid/media/MediaCodec;->releaseOutputBuffer(IZ)V
    :try_end_3
    .catch Ljava/lang/IllegalStateException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljava/lang/NullPointerException; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :goto_c
    move-wide/from16 v9, v20

    :cond_11
    :goto_d
    const/4 v5, 0x0

    const-wide/16 v7, 0x1172

    goto/16 :goto_0

    :catch_1
    move-exception v0

    move-object v5, v0

    :try_start_4
    iget-object v6, v1, Lg/f$b;->a:Ljava/lang/String;

    const-string v7, "failed"

    invoke-static {v6, v7, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    iget-object v5, v1, Lg/f$b;->b:[Z

    const/4 v6, 0x0

    aput-boolean v6, v5, v6

    iget-object v5, v1, Lg/f$b;->f:Lg/f;

    invoke-virtual {v5}, Lg/f;->J()V

    :cond_12
    iget-object v5, v1, Lg/f$b;->a:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "end, cost time(ms): "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v7

    sub-long/2addr v7, v3

    invoke-virtual {v6, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v5

    sub-long/2addr v5, v3

    const-wide/16 v3, 0x1172

    cmp-long v3, v5, v3

    if-ltz v3, :cond_13

    iget-object v1, v1, Lg/f$b;->a:Ljava/lang/String;

    const-string v3, "Restart livewallpaper when cost time bigger than video duration."

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_e

    :cond_13
    iget-object v3, v1, Lg/f$b;->f:Lg/f;

    invoke-static {v3}, Lg/f;->z(Lg/f;)Landroid/os/Handler;

    move-result-object v3

    iget-object v1, v1, Lg/f$b;->e:Ljava/lang/Runnable;

    invoke-virtual {v3, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    :goto_e
    monitor-exit v2

    return-void

    :catchall_0
    move-exception v0

    move-object v1, v0

    monitor-exit v2
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    throw v1
.end method
