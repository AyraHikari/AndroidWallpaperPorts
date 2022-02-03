.class final enum Lcom/sonymobile/wallpaper/liquid/VideoPlayer$StreamState;
.super Ljava/lang/Enum;
.source "VideoPlayer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonymobile/wallpaper/liquid/VideoPlayer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "StreamState"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/sonymobile/wallpaper/liquid/VideoPlayer$StreamState;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/sonymobile/wallpaper/liquid/VideoPlayer$StreamState;

.field public static final enum PLAYING:Lcom/sonymobile/wallpaper/liquid/VideoPlayer$StreamState;

.field public static final enum REWINDING:Lcom/sonymobile/wallpaper/liquid/VideoPlayer$StreamState;

.field public static final enum STOPPED:Lcom/sonymobile/wallpaper/liquid/VideoPlayer$StreamState;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .line 42
    new-instance v0, Lcom/sonymobile/wallpaper/liquid/VideoPlayer$StreamState;

    const-string v1, "PLAYING"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/sonymobile/wallpaper/liquid/VideoPlayer$StreamState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sonymobile/wallpaper/liquid/VideoPlayer$StreamState;->PLAYING:Lcom/sonymobile/wallpaper/liquid/VideoPlayer$StreamState;

    .line 47
    new-instance v0, Lcom/sonymobile/wallpaper/liquid/VideoPlayer$StreamState;

    const-string v1, "STOPPED"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3}, Lcom/sonymobile/wallpaper/liquid/VideoPlayer$StreamState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sonymobile/wallpaper/liquid/VideoPlayer$StreamState;->STOPPED:Lcom/sonymobile/wallpaper/liquid/VideoPlayer$StreamState;

    .line 53
    new-instance v0, Lcom/sonymobile/wallpaper/liquid/VideoPlayer$StreamState;

    const-string v1, "REWINDING"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v4}, Lcom/sonymobile/wallpaper/liquid/VideoPlayer$StreamState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sonymobile/wallpaper/liquid/VideoPlayer$StreamState;->REWINDING:Lcom/sonymobile/wallpaper/liquid/VideoPlayer$StreamState;

    const/4 v1, 0x3

    new-array v1, v1, [Lcom/sonymobile/wallpaper/liquid/VideoPlayer$StreamState;

    .line 37
    sget-object v5, Lcom/sonymobile/wallpaper/liquid/VideoPlayer$StreamState;->PLAYING:Lcom/sonymobile/wallpaper/liquid/VideoPlayer$StreamState;

    aput-object v5, v1, v2

    sget-object v2, Lcom/sonymobile/wallpaper/liquid/VideoPlayer$StreamState;->STOPPED:Lcom/sonymobile/wallpaper/liquid/VideoPlayer$StreamState;

    aput-object v2, v1, v3

    aput-object v0, v1, v4

    sput-object v1, Lcom/sonymobile/wallpaper/liquid/VideoPlayer$StreamState;->$VALUES:[Lcom/sonymobile/wallpaper/liquid/VideoPlayer$StreamState;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 37
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/sonymobile/wallpaper/liquid/VideoPlayer$StreamState;
    .locals 1

    .line 37
    const-class v0, Lcom/sonymobile/wallpaper/liquid/VideoPlayer$StreamState;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/sonymobile/wallpaper/liquid/VideoPlayer$StreamState;

    return-object p0
.end method

.method public static values()[Lcom/sonymobile/wallpaper/liquid/VideoPlayer$StreamState;
    .locals 1

    .line 37
    sget-object v0, Lcom/sonymobile/wallpaper/liquid/VideoPlayer$StreamState;->$VALUES:[Lcom/sonymobile/wallpaper/liquid/VideoPlayer$StreamState;

    invoke-virtual {v0}, [Lcom/sonymobile/wallpaper/liquid/VideoPlayer$StreamState;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/sonymobile/wallpaper/liquid/VideoPlayer$StreamState;

    return-object v0
.end method
