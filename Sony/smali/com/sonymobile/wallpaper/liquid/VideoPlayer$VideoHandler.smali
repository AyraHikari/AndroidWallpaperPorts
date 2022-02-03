.class public Lcom/sonymobile/wallpaper/liquid/VideoPlayer$VideoHandler;
.super Ljava/lang/Object;
.source "VideoPlayer.java"

# interfaces
.implements Landroid/os/Handler$Callback;
.implements Lcom/sonymobile/wallpaper/liquid/VideoStream$OnStreamResourcesLostListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonymobile/wallpaper/liquid/VideoPlayer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4
    name = "VideoHandler"
.end annotation


# instance fields
.field private mHandler:Landroid/os/Handler;

.field private mResourcesLost:Z

.field private mStreamState:Lcom/sonymobile/wallpaper/liquid/VideoPlayer$StreamState;

.field final synthetic this$0:Lcom/sonymobile/wallpaper/liquid/VideoPlayer;


# direct methods
.method public constructor <init>(Lcom/sonymobile/wallpaper/liquid/VideoPlayer;)V
    .locals 1

    .line 402
    iput-object p1, p0, Lcom/sonymobile/wallpaper/liquid/VideoPlayer$VideoHandler;->this$0:Lcom/sonymobile/wallpaper/liquid/VideoPlayer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 391
    sget-object v0, Lcom/sonymobile/wallpaper/liquid/VideoPlayer$StreamState;->STOPPED:Lcom/sonymobile/wallpaper/liquid/VideoPlayer$StreamState;

    iput-object v0, p0, Lcom/sonymobile/wallpaper/liquid/VideoPlayer$VideoHandler;->mStreamState:Lcom/sonymobile/wallpaper/liquid/VideoPlayer$StreamState;

    const/4 v0, 0x0

    .line 397
    iput-boolean v0, p0, Lcom/sonymobile/wallpaper/liquid/VideoPlayer$VideoHandler;->mResourcesLost:Z

    .line 403
    invoke-direct {p0}, Lcom/sonymobile/wallpaper/liquid/VideoPlayer$VideoHandler;->createHandler()Landroid/os/Handler;

    move-result-object v0

    iput-object v0, p0, Lcom/sonymobile/wallpaper/liquid/VideoPlayer$VideoHandler;->mHandler:Landroid/os/Handler;

    .line 404
    invoke-static {p1}, Lcom/sonymobile/wallpaper/liquid/VideoPlayer;->access$000(Lcom/sonymobile/wallpaper/liquid/VideoPlayer;)Lcom/sonymobile/wallpaper/liquid/VideoStream;

    move-result-object p1

    invoke-virtual {p1, p0}, Lcom/sonymobile/wallpaper/liquid/VideoStream;->setOnStreamResourcesLostListener(Lcom/sonymobile/wallpaper/liquid/VideoStream$OnStreamResourcesLostListener;)V

    .line 405
    invoke-direct {p0}, Lcom/sonymobile/wallpaper/liquid/VideoPlayer$VideoHandler;->rewindStream()V

    return-void
.end method

.method private changeState(Lcom/sonymobile/wallpaper/liquid/VideoPlayer$StreamState;)V
    .locals 0

    .line 521
    iput-object p1, p0, Lcom/sonymobile/wallpaper/liquid/VideoPlayer$VideoHandler;->mStreamState:Lcom/sonymobile/wallpaper/liquid/VideoPlayer$StreamState;

    return-void
.end method

.method private createHandler()Landroid/os/Handler;
    .locals 2

    .line 573
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "VideoHandlerThread"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    .line 574
    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 576
    new-instance v1, Landroid/os/Handler;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {v1, v0, p0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;)V

    return-object v1
.end method

.method private getValidHandler()Landroid/os/Handler;
    .locals 1

    .line 560
    iget-object v0, p0, Lcom/sonymobile/wallpaper/liquid/VideoPlayer$VideoHandler;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Looper;->getThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->isAlive()Z

    move-result v0

    if-nez v0, :cond_0

    .line 561
    invoke-direct {p0}, Lcom/sonymobile/wallpaper/liquid/VideoPlayer$VideoHandler;->createHandler()Landroid/os/Handler;

    move-result-object v0

    iput-object v0, p0, Lcom/sonymobile/wallpaper/liquid/VideoPlayer$VideoHandler;->mHandler:Landroid/os/Handler;

    .line 564
    :cond_0
    iget-object v0, p0, Lcom/sonymobile/wallpaper/liquid/VideoPlayer$VideoHandler;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method private rewindStream()V
    .locals 1

    .line 509
    iget-object v0, p0, Lcom/sonymobile/wallpaper/liquid/VideoPlayer$VideoHandler;->this$0:Lcom/sonymobile/wallpaper/liquid/VideoPlayer;

    invoke-static {v0}, Lcom/sonymobile/wallpaper/liquid/VideoPlayer;->access$000(Lcom/sonymobile/wallpaper/liquid/VideoPlayer;)Lcom/sonymobile/wallpaper/liquid/VideoStream;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sonymobile/wallpaper/liquid/VideoStream;->rewind()V

    return-void
.end method


# virtual methods
.method public dispose()V
    .locals 2

    .line 436
    :try_start_0
    iget-object v0, p0, Lcom/sonymobile/wallpaper/liquid/VideoPlayer$VideoHandler;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 437
    iget-object v0, p0, Lcom/sonymobile/wallpaper/liquid/VideoPlayer$VideoHandler;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Looper;->quit()V

    .line 438
    iget-object v0, p0, Lcom/sonymobile/wallpaper/liquid/VideoPlayer$VideoHandler;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Looper;->getThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->join()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method

.method protected getCurrentHandler()Landroid/os/Handler;
    .locals 1

    .line 550
    iget-object v0, p0, Lcom/sonymobile/wallpaper/liquid/VideoPlayer$VideoHandler;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method public handleMessage(Landroid/os/Message;)Z
    .locals 3

    .line 451
    iget p1, p1, Landroid/os/Message;->what:I

    const/4 v0, 0x1

    const/4 v1, 0x2

    if-eqz p1, :cond_6

    if-eq p1, v0, :cond_5

    if-eq p1, v1, :cond_3

    const/4 v1, 0x3

    const/4 v2, 0x4

    if-eq p1, v1, :cond_2

    if-eq p1, v2, :cond_0

    goto/16 :goto_0

    .line 487
    :cond_0
    iget-object p1, p0, Lcom/sonymobile/wallpaper/liquid/VideoPlayer$VideoHandler;->mStreamState:Lcom/sonymobile/wallpaper/liquid/VideoPlayer$StreamState;

    sget-object v1, Lcom/sonymobile/wallpaper/liquid/VideoPlayer$StreamState;->REWINDING:Lcom/sonymobile/wallpaper/liquid/VideoPlayer$StreamState;

    if-ne p1, v1, :cond_7

    .line 488
    iget-object p1, p0, Lcom/sonymobile/wallpaper/liquid/VideoPlayer$VideoHandler;->this$0:Lcom/sonymobile/wallpaper/liquid/VideoPlayer;

    invoke-static {p1}, Lcom/sonymobile/wallpaper/liquid/VideoPlayer;->access$000(Lcom/sonymobile/wallpaper/liquid/VideoPlayer;)Lcom/sonymobile/wallpaper/liquid/VideoStream;

    move-result-object p1

    invoke-virtual {p1}, Lcom/sonymobile/wallpaper/liquid/VideoStream;->advance()Z

    move-result p1

    if-nez p1, :cond_1

    .line 489
    invoke-direct {p0}, Lcom/sonymobile/wallpaper/liquid/VideoPlayer$VideoHandler;->getValidHandler()Landroid/os/Handler;

    move-result-object p1

    invoke-virtual {p1, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto/16 :goto_0

    .line 491
    :cond_1
    invoke-direct {p0}, Lcom/sonymobile/wallpaper/liquid/VideoPlayer$VideoHandler;->rewindStream()V

    .line 492
    sget-object p1, Lcom/sonymobile/wallpaper/liquid/VideoPlayer$StreamState;->STOPPED:Lcom/sonymobile/wallpaper/liquid/VideoPlayer$StreamState;

    invoke-direct {p0, p1}, Lcom/sonymobile/wallpaper/liquid/VideoPlayer$VideoHandler;->changeState(Lcom/sonymobile/wallpaper/liquid/VideoPlayer$StreamState;)V

    goto/16 :goto_0

    .line 480
    :cond_2
    invoke-direct {p0}, Lcom/sonymobile/wallpaper/liquid/VideoPlayer$VideoHandler;->rewindStream()V

    .line 481
    sget-object p1, Lcom/sonymobile/wallpaper/liquid/VideoPlayer$StreamState;->REWINDING:Lcom/sonymobile/wallpaper/liquid/VideoPlayer$StreamState;

    invoke-direct {p0, p1}, Lcom/sonymobile/wallpaper/liquid/VideoPlayer$VideoHandler;->changeState(Lcom/sonymobile/wallpaper/liquid/VideoPlayer$StreamState;)V

    .line 482
    invoke-direct {p0}, Lcom/sonymobile/wallpaper/liquid/VideoPlayer$VideoHandler;->getValidHandler()Landroid/os/Handler;

    move-result-object p1

    invoke-virtual {p1, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_0

    .line 467
    :cond_3
    iget-object p1, p0, Lcom/sonymobile/wallpaper/liquid/VideoPlayer$VideoHandler;->mStreamState:Lcom/sonymobile/wallpaper/liquid/VideoPlayer$StreamState;

    sget-object v2, Lcom/sonymobile/wallpaper/liquid/VideoPlayer$StreamState;->PLAYING:Lcom/sonymobile/wallpaper/liquid/VideoPlayer$StreamState;

    if-ne p1, v2, :cond_7

    .line 468
    iget-object p1, p0, Lcom/sonymobile/wallpaper/liquid/VideoPlayer$VideoHandler;->this$0:Lcom/sonymobile/wallpaper/liquid/VideoPlayer;

    invoke-static {p1}, Lcom/sonymobile/wallpaper/liquid/VideoPlayer;->access$000(Lcom/sonymobile/wallpaper/liquid/VideoPlayer;)Lcom/sonymobile/wallpaper/liquid/VideoStream;

    move-result-object p1

    invoke-virtual {p1}, Lcom/sonymobile/wallpaper/liquid/VideoStream;->advance()Z

    .line 470
    iget-object p1, p0, Lcom/sonymobile/wallpaper/liquid/VideoPlayer$VideoHandler;->this$0:Lcom/sonymobile/wallpaper/liquid/VideoPlayer;

    invoke-static {p1}, Lcom/sonymobile/wallpaper/liquid/VideoPlayer;->access$000(Lcom/sonymobile/wallpaper/liquid/VideoPlayer;)Lcom/sonymobile/wallpaper/liquid/VideoStream;

    move-result-object p1

    invoke-virtual {p1}, Lcom/sonymobile/wallpaper/liquid/VideoStream;->reachedEndOfStream()Z

    move-result p1

    if-nez p1, :cond_4

    .line 471
    invoke-direct {p0}, Lcom/sonymobile/wallpaper/liquid/VideoPlayer$VideoHandler;->getValidHandler()Landroid/os/Handler;

    move-result-object p1

    invoke-virtual {p1, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_0

    .line 472
    :cond_4
    iget-boolean p1, p0, Lcom/sonymobile/wallpaper/liquid/VideoPlayer$VideoHandler;->mResourcesLost:Z

    if-nez p1, :cond_7

    .line 473
    iget-object p1, p0, Lcom/sonymobile/wallpaper/liquid/VideoPlayer$VideoHandler;->this$0:Lcom/sonymobile/wallpaper/liquid/VideoPlayer;

    invoke-static {p1}, Lcom/sonymobile/wallpaper/liquid/VideoPlayer;->access$100(Lcom/sonymobile/wallpaper/liquid/VideoPlayer;)V

    .line 474
    sget-object p1, Lcom/sonymobile/wallpaper/liquid/VideoPlayer$StreamState;->STOPPED:Lcom/sonymobile/wallpaper/liquid/VideoPlayer$StreamState;

    invoke-direct {p0, p1}, Lcom/sonymobile/wallpaper/liquid/VideoPlayer$VideoHandler;->changeState(Lcom/sonymobile/wallpaper/liquid/VideoPlayer$StreamState;)V

    .line 475
    iget-object p1, p0, Lcom/sonymobile/wallpaper/liquid/VideoPlayer$VideoHandler;->this$0:Lcom/sonymobile/wallpaper/liquid/VideoPlayer;

    invoke-static {p1}, Lcom/sonymobile/wallpaper/liquid/VideoPlayer;->access$000(Lcom/sonymobile/wallpaper/liquid/VideoPlayer;)Lcom/sonymobile/wallpaper/liquid/VideoStream;

    move-result-object p1

    invoke-virtual {p1}, Lcom/sonymobile/wallpaper/liquid/VideoStream;->stop()V

    goto :goto_0

    .line 461
    :cond_5
    iget-object p1, p0, Lcom/sonymobile/wallpaper/liquid/VideoPlayer$VideoHandler;->this$0:Lcom/sonymobile/wallpaper/liquid/VideoPlayer;

    invoke-static {p1}, Lcom/sonymobile/wallpaper/liquid/VideoPlayer;->access$000(Lcom/sonymobile/wallpaper/liquid/VideoPlayer;)Lcom/sonymobile/wallpaper/liquid/VideoStream;

    move-result-object p1

    invoke-virtual {p1}, Lcom/sonymobile/wallpaper/liquid/VideoStream;->stop()V

    .line 462
    sget-object p1, Lcom/sonymobile/wallpaper/liquid/VideoPlayer$StreamState;->STOPPED:Lcom/sonymobile/wallpaper/liquid/VideoPlayer$StreamState;

    invoke-direct {p0, p1}, Lcom/sonymobile/wallpaper/liquid/VideoPlayer$VideoHandler;->changeState(Lcom/sonymobile/wallpaper/liquid/VideoPlayer$StreamState;)V

    goto :goto_0

    .line 454
    :cond_6
    iget-object p1, p0, Lcom/sonymobile/wallpaper/liquid/VideoPlayer$VideoHandler;->mStreamState:Lcom/sonymobile/wallpaper/liquid/VideoPlayer$StreamState;

    sget-object v2, Lcom/sonymobile/wallpaper/liquid/VideoPlayer$StreamState;->PLAYING:Lcom/sonymobile/wallpaper/liquid/VideoPlayer$StreamState;

    if-eq p1, v2, :cond_7

    .line 455
    iget-object p1, p0, Lcom/sonymobile/wallpaper/liquid/VideoPlayer$VideoHandler;->this$0:Lcom/sonymobile/wallpaper/liquid/VideoPlayer;

    invoke-static {p1}, Lcom/sonymobile/wallpaper/liquid/VideoPlayer;->access$000(Lcom/sonymobile/wallpaper/liquid/VideoPlayer;)Lcom/sonymobile/wallpaper/liquid/VideoStream;

    move-result-object p1

    invoke-virtual {p1}, Lcom/sonymobile/wallpaper/liquid/VideoStream;->start()V

    .line 456
    sget-object p1, Lcom/sonymobile/wallpaper/liquid/VideoPlayer$StreamState;->PLAYING:Lcom/sonymobile/wallpaper/liquid/VideoPlayer$StreamState;

    invoke-direct {p0, p1}, Lcom/sonymobile/wallpaper/liquid/VideoPlayer$VideoHandler;->changeState(Lcom/sonymobile/wallpaper/liquid/VideoPlayer$StreamState;)V

    .line 457
    invoke-direct {p0}, Lcom/sonymobile/wallpaper/liquid/VideoPlayer$VideoHandler;->getValidHandler()Landroid/os/Handler;

    move-result-object p1

    invoke-virtual {p1, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    :cond_7
    :goto_0
    return v0
.end method

.method public onStreamResourcesLost()V
    .locals 4

    .line 529
    iget-boolean v0, p0, Lcom/sonymobile/wallpaper/liquid/VideoPlayer$VideoHandler;->mResourcesLost:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    .line 536
    iput-boolean v0, p0, Lcom/sonymobile/wallpaper/liquid/VideoPlayer$VideoHandler;->mResourcesLost:Z

    .line 537
    iget-object v1, p0, Lcom/sonymobile/wallpaper/liquid/VideoPlayer$VideoHandler;->this$0:Lcom/sonymobile/wallpaper/liquid/VideoPlayer;

    invoke-static {v1}, Lcom/sonymobile/wallpaper/liquid/VideoPlayer;->access$000(Lcom/sonymobile/wallpaper/liquid/VideoPlayer;)Lcom/sonymobile/wallpaper/liquid/VideoStream;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sonymobile/wallpaper/liquid/VideoStream;->hasRenderedOneFrame()Z

    move-result v2

    if-nez v2, :cond_2

    iget-object v2, p0, Lcom/sonymobile/wallpaper/liquid/VideoPlayer$VideoHandler;->mStreamState:Lcom/sonymobile/wallpaper/liquid/VideoPlayer$StreamState;

    sget-object v3, Lcom/sonymobile/wallpaper/liquid/VideoPlayer$StreamState;->REWINDING:Lcom/sonymobile/wallpaper/liquid/VideoPlayer$StreamState;

    if-ne v2, v3, :cond_1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :cond_2
    :goto_0
    invoke-static {v1, v0}, Lcom/sonymobile/wallpaper/liquid/VideoPlayer;->access$200(Lcom/sonymobile/wallpaper/liquid/VideoPlayer;Z)V

    .line 539
    invoke-direct {p0}, Lcom/sonymobile/wallpaper/liquid/VideoPlayer$VideoHandler;->getValidHandler()Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 540
    sget-object v0, Lcom/sonymobile/wallpaper/liquid/VideoPlayer$StreamState;->STOPPED:Lcom/sonymobile/wallpaper/liquid/VideoPlayer$StreamState;

    invoke-direct {p0, v0}, Lcom/sonymobile/wallpaper/liquid/VideoPlayer$VideoHandler;->changeState(Lcom/sonymobile/wallpaper/liquid/VideoPlayer$StreamState;)V

    return-void
.end method

.method public play()V
    .locals 2

    .line 413
    invoke-direct {p0}, Lcom/sonymobile/wallpaper/liquid/VideoPlayer$VideoHandler;->getValidHandler()Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    return-void
.end method

.method public rewind()V
    .locals 2

    .line 428
    invoke-direct {p0}, Lcom/sonymobile/wallpaper/liquid/VideoPlayer$VideoHandler;->getValidHandler()Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    return-void
.end method

.method public stop()V
    .locals 2

    .line 421
    invoke-direct {p0}, Lcom/sonymobile/wallpaper/liquid/VideoPlayer$VideoHandler;->getValidHandler()Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    return-void
.end method
