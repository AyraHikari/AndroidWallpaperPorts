.class final enum Lcom/sonymobile/wallpaper/liquid/VideoPlayer$StreamCondition;
.super Ljava/lang/Enum;
.source "VideoPlayer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonymobile/wallpaper/liquid/VideoPlayer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "StreamCondition"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/sonymobile/wallpaper/liquid/VideoPlayer$StreamCondition;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/sonymobile/wallpaper/liquid/VideoPlayer$StreamCondition;

.field public static final enum FINE:Lcom/sonymobile/wallpaper/liquid/VideoPlayer$StreamCondition;

.field public static final enum NEEDS_LAZY_RESTART:Lcom/sonymobile/wallpaper/liquid/VideoPlayer$StreamCondition;

.field public static final enum NEEDS_RESTART:Lcom/sonymobile/wallpaper/liquid/VideoPlayer$StreamCondition;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .line 64
    new-instance v0, Lcom/sonymobile/wallpaper/liquid/VideoPlayer$StreamCondition;

    const-string v1, "FINE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/sonymobile/wallpaper/liquid/VideoPlayer$StreamCondition;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sonymobile/wallpaper/liquid/VideoPlayer$StreamCondition;->FINE:Lcom/sonymobile/wallpaper/liquid/VideoPlayer$StreamCondition;

    .line 69
    new-instance v0, Lcom/sonymobile/wallpaper/liquid/VideoPlayer$StreamCondition;

    const-string v1, "NEEDS_RESTART"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3}, Lcom/sonymobile/wallpaper/liquid/VideoPlayer$StreamCondition;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sonymobile/wallpaper/liquid/VideoPlayer$StreamCondition;->NEEDS_RESTART:Lcom/sonymobile/wallpaper/liquid/VideoPlayer$StreamCondition;

    .line 75
    new-instance v0, Lcom/sonymobile/wallpaper/liquid/VideoPlayer$StreamCondition;

    const-string v1, "NEEDS_LAZY_RESTART"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v4}, Lcom/sonymobile/wallpaper/liquid/VideoPlayer$StreamCondition;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sonymobile/wallpaper/liquid/VideoPlayer$StreamCondition;->NEEDS_LAZY_RESTART:Lcom/sonymobile/wallpaper/liquid/VideoPlayer$StreamCondition;

    const/4 v1, 0x3

    new-array v1, v1, [Lcom/sonymobile/wallpaper/liquid/VideoPlayer$StreamCondition;

    .line 59
    sget-object v5, Lcom/sonymobile/wallpaper/liquid/VideoPlayer$StreamCondition;->FINE:Lcom/sonymobile/wallpaper/liquid/VideoPlayer$StreamCondition;

    aput-object v5, v1, v2

    sget-object v2, Lcom/sonymobile/wallpaper/liquid/VideoPlayer$StreamCondition;->NEEDS_RESTART:Lcom/sonymobile/wallpaper/liquid/VideoPlayer$StreamCondition;

    aput-object v2, v1, v3

    aput-object v0, v1, v4

    sput-object v1, Lcom/sonymobile/wallpaper/liquid/VideoPlayer$StreamCondition;->$VALUES:[Lcom/sonymobile/wallpaper/liquid/VideoPlayer$StreamCondition;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 59
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/sonymobile/wallpaper/liquid/VideoPlayer$StreamCondition;
    .locals 1

    .line 59
    const-class v0, Lcom/sonymobile/wallpaper/liquid/VideoPlayer$StreamCondition;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/sonymobile/wallpaper/liquid/VideoPlayer$StreamCondition;

    return-object p0
.end method

.method public static values()[Lcom/sonymobile/wallpaper/liquid/VideoPlayer$StreamCondition;
    .locals 1

    .line 59
    sget-object v0, Lcom/sonymobile/wallpaper/liquid/VideoPlayer$StreamCondition;->$VALUES:[Lcom/sonymobile/wallpaper/liquid/VideoPlayer$StreamCondition;

    invoke-virtual {v0}, [Lcom/sonymobile/wallpaper/liquid/VideoPlayer$StreamCondition;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/sonymobile/wallpaper/liquid/VideoPlayer$StreamCondition;

    return-object v0
.end method
