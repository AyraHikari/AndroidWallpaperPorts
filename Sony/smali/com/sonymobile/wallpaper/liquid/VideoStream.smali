.class public Lcom/sonymobile/wallpaper/liquid/VideoStream;
.super Ljava/lang/Object;
.source "VideoStream.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sonymobile/wallpaper/liquid/VideoStream$OnStreamResourcesLostListener;
    }
.end annotation


# static fields
.field private static final DEBUG:Z = false


# instance fields
.field private final mAssetFile:Ljava/lang/String;

.field private final mAssetManager:Landroid/content/res/AssetManager;

.field private mConfigured:Z

.field private mInEos:Z

.field private final mLogTag:Ljava/lang/String;

.field private mMediaCodec:Landroid/media/MediaCodec;

.field private mMediaExtractor:Landroid/media/MediaExtractor;

.field private mMediaFormat:Landroid/media/MediaFormat;

.field private mOnStreamResourcesLostListener:Lcom/sonymobile/wallpaper/liquid/VideoStream$OnStreamResourcesLostListener;

.field private mOutEos:Z

.field private mStartTimeNanos:J

.field private final mSurface:Landroid/view/Surface;


# direct methods
.method public constructor <init>(Ljava/lang/String;Landroid/content/res/AssetManager;Landroid/view/Surface;)V
    .locals 2

    .line 115
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 76
    iput-object v0, p0, Lcom/sonymobile/wallpaper/liquid/VideoStream;->mOnStreamResourcesLostListener:Lcom/sonymobile/wallpaper/liquid/VideoStream$OnStreamResourcesLostListener;

    const/4 v0, 0x0

    .line 81
    iput-boolean v0, p0, Lcom/sonymobile/wallpaper/liquid/VideoStream;->mConfigured:Z

    .line 86
    iput-boolean v0, p0, Lcom/sonymobile/wallpaper/liquid/VideoStream;->mInEos:Z

    .line 91
    iput-boolean v0, p0, Lcom/sonymobile/wallpaper/liquid/VideoStream;->mOutEos:Z

    const-wide/16 v0, -0x1

    .line 96
    iput-wide v0, p0, Lcom/sonymobile/wallpaper/liquid/VideoStream;->mStartTimeNanos:J

    .line 116
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "VideoStream("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sonymobile/wallpaper/liquid/VideoStream;->mLogTag:Ljava/lang/String;

    .line 117
    iput-object p2, p0, Lcom/sonymobile/wallpaper/liquid/VideoStream;->mAssetManager:Landroid/content/res/AssetManager;

    .line 118
    iput-object p1, p0, Lcom/sonymobile/wallpaper/liquid/VideoStream;->mAssetFile:Ljava/lang/String;

    .line 120
    iput-object p3, p0, Lcom/sonymobile/wallpaper/liquid/VideoStream;->mSurface:Landroid/view/Surface;

    return-void
.end method

.method private configure()Z
    .locals 6

    .line 195
    iget-boolean v0, p0, Lcom/sonymobile/wallpaper/liquid/VideoStream;->mConfigured:Z

    const/4 v1, 0x1

    if-nez v0, :cond_1

    const/4 v0, 0x0

    .line 197
    :try_start_0
    iget-object v2, p0, Lcom/sonymobile/wallpaper/liquid/VideoStream;->mAssetManager:Landroid/content/res/AssetManager;

    iget-object v3, p0, Lcom/sonymobile/wallpaper/liquid/VideoStream;->mAssetFile:Ljava/lang/String;

    invoke-static {v2, v3}, Lcom/sonymobile/wallpaper/liquid/Utils;->openFile(Landroid/content/res/AssetManager;Ljava/lang/String;)Landroid/content/res/AssetFileDescriptor;

    move-result-object v2

    .line 198
    new-instance v3, Landroid/media/MediaExtractor;

    invoke-direct {v3}, Landroid/media/MediaExtractor;-><init>()V

    iput-object v3, p0, Lcom/sonymobile/wallpaper/liquid/VideoStream;->mMediaExtractor:Landroid/media/MediaExtractor;

    .line 199
    invoke-virtual {v3, v2}, Landroid/media/MediaExtractor;->setDataSource(Landroid/content/res/AssetFileDescriptor;)V

    .line 200
    invoke-virtual {v2}, Landroid/content/res/AssetFileDescriptor;->close()V

    .line 202
    invoke-direct {p0}, Lcom/sonymobile/wallpaper/liquid/VideoStream;->createMediaCodec()Landroid/media/MediaCodec;

    move-result-object v2

    iput-object v2, p0, Lcom/sonymobile/wallpaper/liquid/VideoStream;->mMediaCodec:Landroid/media/MediaCodec;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    if-nez v2, :cond_0

    .line 209
    invoke-direct {p0}, Lcom/sonymobile/wallpaper/liquid/VideoStream;->onStreamResourcesLost()V

    return v0

    .line 214
    :cond_0
    :try_start_1
    iget-object v3, p0, Lcom/sonymobile/wallpaper/liquid/VideoStream;->mMediaFormat:Landroid/media/MediaFormat;

    iget-object v4, p0, Lcom/sonymobile/wallpaper/liquid/VideoStream;->mSurface:Landroid/view/Surface;

    const/4 v5, 0x0

    invoke-virtual {v2, v3, v4, v5, v0}, Landroid/media/MediaCodec;->configure(Landroid/media/MediaFormat;Landroid/view/Surface;Landroid/media/MediaCrypto;I)V

    .line 215
    iget-object v2, p0, Lcom/sonymobile/wallpaper/liquid/VideoStream;->mMediaCodec:Landroid/media/MediaCodec;

    invoke-virtual {v2}, Landroid/media/MediaCodec;->start()V
    :try_end_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/IllegalStateException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Landroid/media/MediaCodec$CryptoException; {:try_start_1 .. :try_end_1} :catch_0

    .line 221
    iput-boolean v1, p0, Lcom/sonymobile/wallpaper/liquid/VideoStream;->mConfigured:Z

    goto :goto_0

    .line 218
    :catch_0
    invoke-direct {p0}, Lcom/sonymobile/wallpaper/liquid/VideoStream;->onStreamResourcesLost()V

    return v0

    .line 204
    :catch_1
    invoke-direct {p0}, Lcom/sonymobile/wallpaper/liquid/VideoStream;->onStreamResourcesLost()V

    return v0

    :cond_1
    :goto_0
    return v1
.end method

.method private createMediaCodec()Landroid/media/MediaCodec;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 130
    iget-object v0, p0, Lcom/sonymobile/wallpaper/liquid/VideoStream;->mMediaExtractor:Landroid/media/MediaExtractor;

    invoke-virtual {v0}, Landroid/media/MediaExtractor;->getTrackCount()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    const/4 v2, 0x0

    if-ge v1, v0, :cond_2

    .line 132
    iget-object v3, p0, Lcom/sonymobile/wallpaper/liquid/VideoStream;->mMediaExtractor:Landroid/media/MediaExtractor;

    invoke-virtual {v3, v1}, Landroid/media/MediaExtractor;->getTrackFormat(I)Landroid/media/MediaFormat;

    move-result-object v3

    iput-object v3, p0, Lcom/sonymobile/wallpaper/liquid/VideoStream;->mMediaFormat:Landroid/media/MediaFormat;

    const-string v4, "mime"

    .line 133
    invoke-virtual {v3, v4}, Landroid/media/MediaFormat;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_0

    .line 135
    iget-object v0, p0, Lcom/sonymobile/wallpaper/liquid/VideoStream;->mMediaExtractor:Landroid/media/MediaExtractor;

    invoke-virtual {v0}, Landroid/media/MediaExtractor;->release()V

    return-object v2

    :cond_0
    const-string v2, "video/"

    .line 137
    invoke-virtual {v3, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 138
    iget-object v0, p0, Lcom/sonymobile/wallpaper/liquid/VideoStream;->mMediaExtractor:Landroid/media/MediaExtractor;

    invoke-virtual {v0, v1}, Landroid/media/MediaExtractor;->selectTrack(I)V

    .line 139
    invoke-static {v3}, Landroid/media/MediaCodec;->createDecoderByType(Ljava/lang/String;)Landroid/media/MediaCodec;

    move-result-object v0

    return-object v0

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    return-object v2
.end method

.method private onStreamResourcesLost()V
    .locals 1

    const/4 v0, 0x0

    .line 231
    iput-boolean v0, p0, Lcom/sonymobile/wallpaper/liquid/VideoStream;->mConfigured:Z

    .line 232
    invoke-virtual {p0}, Lcom/sonymobile/wallpaper/liquid/VideoStream;->release()V

    .line 233
    iget-object v0, p0, Lcom/sonymobile/wallpaper/liquid/VideoStream;->mOnStreamResourcesLostListener:Lcom/sonymobile/wallpaper/liquid/VideoStream$OnStreamResourcesLostListener;

    if-eqz v0, :cond_0

    .line 234
    invoke-interface {v0}, Lcom/sonymobile/wallpaper/liquid/VideoStream$OnStreamResourcesLostListener;->onStreamResourcesLost()V

    :cond_0
    return-void
.end method


# virtual methods
.method public advance()Z
    .locals 13

    .line 289
    iget-boolean v0, p0, Lcom/sonymobile/wallpaper/liquid/VideoStream;->mConfigured:Z

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    const/4 v0, 0x1

    .line 293
    :try_start_0
    iget-boolean v2, p0, Lcom/sonymobile/wallpaper/liquid/VideoStream;->mInEos:Z

    const/4 v3, 0x4

    if-nez v2, :cond_3

    .line 294
    iget-object v2, p0, Lcom/sonymobile/wallpaper/liquid/VideoStream;->mMediaCodec:Landroid/media/MediaCodec;

    const-wide/16 v4, 0x7d0

    invoke-virtual {v2, v4, v5}, Landroid/media/MediaCodec;->dequeueInputBuffer(J)I

    move-result v7

    if-ltz v7, :cond_3

    .line 296
    iget-object v2, p0, Lcom/sonymobile/wallpaper/liquid/VideoStream;->mMediaCodec:Landroid/media/MediaCodec;

    invoke-virtual {v2, v7}, Landroid/media/MediaCodec;->getInputBuffer(I)Ljava/nio/ByteBuffer;

    move-result-object v2

    if-eqz v2, :cond_3

    .line 298
    iget-object v4, p0, Lcom/sonymobile/wallpaper/liquid/VideoStream;->mMediaExtractor:Landroid/media/MediaExtractor;

    invoke-virtual {v4, v2, v1}, Landroid/media/MediaExtractor;->readSampleData(Ljava/nio/ByteBuffer;I)I

    move-result v2

    if-gez v2, :cond_1

    .line 301
    iput-boolean v0, p0, Lcom/sonymobile/wallpaper/liquid/VideoStream;->mInEos:Z

    move v9, v1

    goto :goto_0

    :cond_1
    move v9, v2

    .line 303
    :goto_0
    iget-object v2, p0, Lcom/sonymobile/wallpaper/liquid/VideoStream;->mMediaExtractor:Landroid/media/MediaExtractor;

    invoke-virtual {v2}, Landroid/media/MediaExtractor;->getSampleTime()J

    move-result-wide v10

    .line 304
    iget-object v6, p0, Lcom/sonymobile/wallpaper/liquid/VideoStream;->mMediaCodec:Landroid/media/MediaCodec;

    const/4 v8, 0x0

    iget-boolean v2, p0, Lcom/sonymobile/wallpaper/liquid/VideoStream;->mInEos:Z

    if-eqz v2, :cond_2

    move v12, v3

    goto :goto_1

    :cond_2
    move v12, v1

    :goto_1
    invoke-virtual/range {v6 .. v12}, Landroid/media/MediaCodec;->queueInputBuffer(IIIJI)V

    .line 306
    iget-object v2, p0, Lcom/sonymobile/wallpaper/liquid/VideoStream;->mMediaExtractor:Landroid/media/MediaExtractor;

    invoke-virtual {v2}, Landroid/media/MediaExtractor;->advance()Z

    .line 311
    :cond_3
    iget-boolean v2, p0, Lcom/sonymobile/wallpaper/liquid/VideoStream;->mOutEos:Z

    if-nez v2, :cond_8

    .line 312
    new-instance v2, Landroid/media/MediaCodec$BufferInfo;

    invoke-direct {v2}, Landroid/media/MediaCodec$BufferInfo;-><init>()V

    .line 313
    iget-object v4, p0, Lcom/sonymobile/wallpaper/liquid/VideoStream;->mMediaCodec:Landroid/media/MediaCodec;

    const-wide/16 v5, 0x0

    invoke-virtual {v4, v2, v5, v6}, Landroid/media/MediaCodec;->dequeueOutputBuffer(Landroid/media/MediaCodec$BufferInfo;J)I

    move-result v4

    if-ltz v4, :cond_7

    .line 315
    iget v7, v2, Landroid/media/MediaCodec$BufferInfo;->flags:I

    and-int/2addr v7, v3

    if-ne v7, v3, :cond_4

    .line 317
    iput-boolean v0, p0, Lcom/sonymobile/wallpaper/liquid/VideoStream;->mOutEos:Z

    .line 321
    :cond_4
    iget-wide v2, v2, Landroid/media/MediaCodec$BufferInfo;->presentationTimeUs:J

    const-wide/16 v7, 0x3e8

    mul-long/2addr v2, v7

    .line 322
    iget-wide v7, p0, Lcom/sonymobile/wallpaper/liquid/VideoStream;->mStartTimeNanos:J

    cmp-long v7, v7, v5

    if-gez v7, :cond_5

    .line 323
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v7

    sub-long/2addr v7, v2

    iput-wide v7, p0, Lcom/sonymobile/wallpaper/liquid/VideoStream;->mStartTimeNanos:J

    .line 327
    :cond_5
    iget-wide v7, p0, Lcom/sonymobile/wallpaper/liquid/VideoStream;->mStartTimeNanos:J

    add-long/2addr v7, v2

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v2
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_1

    sub-long/2addr v7, v2

    cmp-long v2, v7, v5

    if-lez v2, :cond_6

    const-wide/32 v2, 0xf4240

    .line 331
    :try_start_1
    div-long v2, v7, v2

    long-to-int v7, v7

    const v8, 0xf4240

    rem-int/2addr v7, v8

    invoke-static {v2, v3, v7}, Ljava/lang/Thread;->sleep(JI)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/IllegalStateException; {:try_start_1 .. :try_end_1} :catch_1

    .line 339
    :catch_0
    :cond_6
    :try_start_2
    iget-object v2, p0, Lcom/sonymobile/wallpaper/liquid/VideoStream;->mMediaCodec:Landroid/media/MediaCodec;

    invoke-virtual {v2, v4, v5, v6}, Landroid/media/MediaCodec;->releaseOutputBuffer(IJ)V
    :try_end_2
    .catch Ljava/lang/IllegalStateException; {:try_start_2 .. :try_end_2} :catch_1

    return v0

    :cond_7
    const/4 v0, -0x2

    goto :goto_2

    .line 359
    :catch_1
    iput-boolean v0, p0, Lcom/sonymobile/wallpaper/liquid/VideoStream;->mInEos:Z

    .line 360
    iput-boolean v0, p0, Lcom/sonymobile/wallpaper/liquid/VideoStream;->mOutEos:Z

    const-wide/16 v2, -0x1

    .line 361
    iput-wide v2, p0, Lcom/sonymobile/wallpaper/liquid/VideoStream;->mStartTimeNanos:J

    .line 362
    invoke-direct {p0}, Lcom/sonymobile/wallpaper/liquid/VideoStream;->onStreamResourcesLost()V

    :cond_8
    :goto_2
    return v1
.end method

.method public hasRenderedOneFrame()Z
    .locals 4

    .line 186
    iget-wide v0, p0, Lcom/sonymobile/wallpaper/liquid/VideoStream;->mStartTimeNanos:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public reachedEndOfStream()Z
    .locals 1

    .line 177
    iget-boolean v0, p0, Lcom/sonymobile/wallpaper/liquid/VideoStream;->mInEos:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/sonymobile/wallpaper/liquid/VideoStream;->mOutEos:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public release()V
    .locals 2

    .line 160
    iget-object v0, p0, Lcom/sonymobile/wallpaper/liquid/VideoStream;->mMediaCodec:Landroid/media/MediaCodec;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 161
    invoke-virtual {v0}, Landroid/media/MediaCodec;->release()V

    .line 162
    iput-object v1, p0, Lcom/sonymobile/wallpaper/liquid/VideoStream;->mMediaCodec:Landroid/media/MediaCodec;

    .line 165
    :cond_0
    iget-object v0, p0, Lcom/sonymobile/wallpaper/liquid/VideoStream;->mMediaExtractor:Landroid/media/MediaExtractor;

    if-eqz v0, :cond_1

    .line 166
    invoke-virtual {v0}, Landroid/media/MediaExtractor;->release()V

    .line 167
    iput-object v1, p0, Lcom/sonymobile/wallpaper/liquid/VideoStream;->mMediaExtractor:Landroid/media/MediaExtractor;

    :cond_1
    return-void
.end method

.method public rewind()V
    .locals 4

    .line 271
    :try_start_0
    invoke-direct {p0}, Lcom/sonymobile/wallpaper/liquid/VideoStream;->configure()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 272
    iget-object v0, p0, Lcom/sonymobile/wallpaper/liquid/VideoStream;->mMediaExtractor:Landroid/media/MediaExtractor;

    const-wide/16 v1, 0x0

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v2, v3}, Landroid/media/MediaExtractor;->seekTo(JI)V

    .line 273
    iget-object v0, p0, Lcom/sonymobile/wallpaper/liquid/VideoStream;->mMediaCodec:Landroid/media/MediaCodec;

    invoke-virtual {v0}, Landroid/media/MediaCodec;->flush()V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 279
    :catch_0
    invoke-direct {p0}, Lcom/sonymobile/wallpaper/liquid/VideoStream;->onStreamResourcesLost()V

    :cond_0
    :goto_0
    return-void
.end method

.method public setOnStreamResourcesLostListener(Lcom/sonymobile/wallpaper/liquid/VideoStream$OnStreamResourcesLostListener;)V
    .locals 0

    .line 153
    iput-object p1, p0, Lcom/sonymobile/wallpaper/liquid/VideoStream;->mOnStreamResourcesLostListener:Lcom/sonymobile/wallpaper/liquid/VideoStream$OnStreamResourcesLostListener;

    return-void
.end method

.method public start()V
    .locals 2

    .line 242
    invoke-direct {p0}, Lcom/sonymobile/wallpaper/liquid/VideoStream;->configure()Z

    const-wide/16 v0, -0x1

    .line 243
    iput-wide v0, p0, Lcom/sonymobile/wallpaper/liquid/VideoStream;->mStartTimeNanos:J

    const/4 v0, 0x0

    .line 244
    iput-boolean v0, p0, Lcom/sonymobile/wallpaper/liquid/VideoStream;->mInEos:Z

    .line 245
    iput-boolean v0, p0, Lcom/sonymobile/wallpaper/liquid/VideoStream;->mOutEos:Z

    return-void
.end method

.method public stop()V
    .locals 1

    .line 252
    iget-boolean v0, p0, Lcom/sonymobile/wallpaper/liquid/VideoStream;->mConfigured:Z

    if-eqz v0, :cond_0

    .line 254
    :try_start_0
    iget-object v0, p0, Lcom/sonymobile/wallpaper/liquid/VideoStream;->mMediaCodec:Landroid/media/MediaCodec;

    invoke-virtual {v0}, Landroid/media/MediaCodec;->stop()V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 256
    :catch_0
    invoke-direct {p0}, Lcom/sonymobile/wallpaper/liquid/VideoStream;->onStreamResourcesLost()V

    .line 258
    :goto_0
    invoke-virtual {p0}, Lcom/sonymobile/wallpaper/liquid/VideoStream;->release()V

    const/4 v0, 0x0

    .line 259
    iput-boolean v0, p0, Lcom/sonymobile/wallpaper/liquid/VideoStream;->mConfigured:Z

    .line 260
    iput-boolean v0, p0, Lcom/sonymobile/wallpaper/liquid/VideoStream;->mInEos:Z

    .line 261
    iput-boolean v0, p0, Lcom/sonymobile/wallpaper/liquid/VideoStream;->mOutEos:Z

    :cond_0
    return-void
.end method
