.class public abstract Lcom/sonymobile/wallpaper/liquid/Renderable;
.super Ljava/lang/Object;
.source "Renderable.java"


# instance fields
.field protected final mQuad:Lcom/sonymobile/wallpaper/liquid/IndexedQuad;

.field protected final mShader:Lcom/sonymobile/wallpaper/liquid/Shader;


# direct methods
.method public constructor <init>(Lcom/sonymobile/wallpaper/liquid/Shader;Lcom/sonymobile/wallpaper/liquid/IndexedQuad;)V
    .locals 0

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    iput-object p1, p0, Lcom/sonymobile/wallpaper/liquid/Renderable;->mShader:Lcom/sonymobile/wallpaper/liquid/Shader;

    .line 33
    iput-object p2, p0, Lcom/sonymobile/wallpaper/liquid/Renderable;->mQuad:Lcom/sonymobile/wallpaper/liquid/IndexedQuad;

    return-void
.end method


# virtual methods
.method protected bind([F)V
    .locals 1

    .line 42
    iget-object v0, p0, Lcom/sonymobile/wallpaper/liquid/Renderable;->mShader:Lcom/sonymobile/wallpaper/liquid/Shader;

    invoke-virtual {v0, p1}, Lcom/sonymobile/wallpaper/liquid/Shader;->bind([F)V

    return-void
.end method

.method public render([F)V
    .locals 0

    .line 51
    invoke-virtual {p0, p1}, Lcom/sonymobile/wallpaper/liquid/Renderable;->bind([F)V

    .line 52
    iget-object p1, p0, Lcom/sonymobile/wallpaper/liquid/Renderable;->mQuad:Lcom/sonymobile/wallpaper/liquid/IndexedQuad;

    invoke-virtual {p1}, Lcom/sonymobile/wallpaper/liquid/IndexedQuad;->render()V

    .line 53
    iget-object p1, p0, Lcom/sonymobile/wallpaper/liquid/Renderable;->mShader:Lcom/sonymobile/wallpaper/liquid/Shader;

    invoke-virtual {p1}, Lcom/sonymobile/wallpaper/liquid/Shader;->unbind()V

    return-void
.end method
