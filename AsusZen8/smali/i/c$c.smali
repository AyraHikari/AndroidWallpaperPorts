.class public Li/c$c;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Li/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4
    name = "c"
.end annotation


# instance fields
.field public a:[F

.field final synthetic b:Li/c;


# direct methods
.method protected constructor <init>(Li/c;)V
    .locals 0

    iput-object p1, p0, Li/c$c;->b:Li/c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
