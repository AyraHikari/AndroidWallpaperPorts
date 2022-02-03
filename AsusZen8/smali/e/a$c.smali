.class public final enum Le/a$c;
.super Ljava/lang/Enum;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Le/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "c"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Le/a$c;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Le/a$c;

.field public static final enum b:Le/a$c;

.field public static final enum c:Le/a$c;

.field public static final enum d:Le/a$c;

.field private static final synthetic e:[Le/a$c;


# direct methods
.method static constructor <clinit>()V
    .locals 9

    new-instance v0, Le/a$c;

    const-string v1, "FIT"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Le/a$c;-><init>(Ljava/lang/String;I)V

    sput-object v0, Le/a$c;->a:Le/a$c;

    new-instance v1, Le/a$c;

    const-string v3, "INSIDE"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Le/a$c;-><init>(Ljava/lang/String;I)V

    sput-object v1, Le/a$c;->b:Le/a$c;

    new-instance v3, Le/a$c;

    const-string v5, "CROP"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Le/a$c;-><init>(Ljava/lang/String;I)V

    sput-object v3, Le/a$c;->c:Le/a$c;

    new-instance v5, Le/a$c;

    const-string v7, "NONE"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8}, Le/a$c;-><init>(Ljava/lang/String;I)V

    sput-object v5, Le/a$c;->d:Le/a$c;

    const/4 v7, 0x4

    new-array v7, v7, [Le/a$c;

    aput-object v0, v7, v2

    aput-object v1, v7, v4

    aput-object v3, v7, v6

    aput-object v5, v7, v8

    sput-object v7, Le/a$c;->e:[Le/a$c;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Le/a$c;
    .locals 1

    const-class v0, Le/a$c;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Le/a$c;

    return-object p0
.end method

.method public static values()[Le/a$c;
    .locals 1

    sget-object v0, Le/a$c;->e:[Le/a$c;

    invoke-virtual {v0}, [Le/a$c;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Le/a$c;

    return-object v0
.end method
