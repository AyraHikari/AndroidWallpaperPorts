.class public Lcom/sonymobile/wallpaper/liquid/Shader;
.super Ljava/lang/Object;
.source "Shader.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sonymobile/wallpaper/liquid/Shader$ShaderCompilationException;
    }
.end annotation


# instance fields
.field private final mFragmentShaderCode:Ljava/lang/String;

.field protected mProgram:I

.field private mVao:I

.field private final mVertexShaderCode:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    .line 35
    iput v0, p0, Lcom/sonymobile/wallpaper/liquid/Shader;->mProgram:I

    .line 41
    iput v0, p0, Lcom/sonymobile/wallpaper/liquid/Shader;->mVao:I

    .line 51
    iput-object p1, p0, Lcom/sonymobile/wallpaper/liquid/Shader;->mVertexShaderCode:Ljava/lang/String;

    .line 52
    iput-object p2, p0, Lcom/sonymobile/wallpaper/liquid/Shader;->mFragmentShaderCode:Ljava/lang/String;

    return-void
.end method

.method private compileShader(ILjava/lang/String;)I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sonymobile/wallpaper/liquid/Utils$InvalidHandleException;,
            Lcom/sonymobile/wallpaper/liquid/Shader$ShaderCompilationException;
        }
    .end annotation

    .line 153
    invoke-static {p1}, Landroid/opengl/GLES30;->glCreateShader(I)I

    move-result p1

    invoke-static {p1, p2}, Lcom/sonymobile/wallpaper/liquid/Utils;->verifyHandle(ILjava/lang/String;)I

    move-result p1

    .line 154
    invoke-static {p1, p2}, Landroid/opengl/GLES30;->glShaderSource(ILjava/lang/String;)V

    .line 155
    invoke-static {p1}, Landroid/opengl/GLES30;->glCompileShader(I)V

    const/4 p2, 0x1

    new-array p2, p2, [I

    const/4 v0, -0x1

    const/4 v1, 0x0

    aput v0, p2, v1

    const v0, 0x8b81

    .line 158
    invoke-static {p1, v0, p2, v1}, Landroid/opengl/GLES30;->glGetShaderiv(II[II)V

    .line 159
    aget p2, p2, v1

    if-eqz p2, :cond_0

    return p1

    .line 160
    :cond_0
    invoke-static {p1}, Landroid/opengl/GLES30;->glGetShaderInfoLog(I)Ljava/lang/String;

    move-result-object p2

    .line 161
    invoke-static {p1}, Landroid/opengl/GLES30;->glDeleteShader(I)V

    .line 162
    new-instance p1, Lcom/sonymobile/wallpaper/liquid/Shader$ShaderCompilationException;

    invoke-direct {p1, p2}, Lcom/sonymobile/wallpaper/liquid/Shader$ShaderCompilationException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public bind([F)V
    .locals 0

    .line 129
    iget p1, p0, Lcom/sonymobile/wallpaper/liquid/Shader;->mProgram:I

    invoke-static {p1}, Landroid/opengl/GLES30;->glUseProgram(I)V

    .line 130
    iget p1, p0, Lcom/sonymobile/wallpaper/liquid/Shader;->mVao:I

    invoke-static {p1}, Landroid/opengl/GLES30;->glBindVertexArray(I)V

    return-void
.end method

.method public clean()V
    .locals 5

    .line 111
    iget v0, p0, Lcom/sonymobile/wallpaper/liquid/Shader;->mProgram:I

    const/4 v1, -0x1

    if-lez v0, :cond_0

    .line 112
    invoke-static {v0}, Landroid/opengl/GLES30;->glDeleteProgram(I)V

    .line 113
    iput v1, p0, Lcom/sonymobile/wallpaper/liquid/Shader;->mProgram:I

    .line 116
    :cond_0
    iget v0, p0, Lcom/sonymobile/wallpaper/liquid/Shader;->mVao:I

    if-lez v0, :cond_1

    const/4 v2, 0x1

    new-array v3, v2, [I

    const/4 v4, 0x0

    aput v0, v3, v4

    .line 118
    invoke-static {v2, v3, v4}, Landroid/opengl/GLES30;->glDeleteVertexArrays(I[II)V

    .line 119
    iput v1, p0, Lcom/sonymobile/wallpaper/liquid/Shader;->mVao:I

    :cond_1
    return-void
.end method

.method public init(Lcom/sonymobile/wallpaper/liquid/IndexedQuad;)V
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sonymobile/wallpaper/liquid/Utils$InvalidHandleException;,
            Lcom/sonymobile/wallpaper/liquid/Shader$ShaderCompilationException;
        }
    .end annotation

    .line 65
    invoke-virtual {p0}, Lcom/sonymobile/wallpaper/liquid/Shader;->clean()V

    .line 67
    iget-object v0, p0, Lcom/sonymobile/wallpaper/liquid/Shader;->mVertexShaderCode:Ljava/lang/String;

    const v1, 0x8b31

    invoke-direct {p0, v1, v0}, Lcom/sonymobile/wallpaper/liquid/Shader;->compileShader(ILjava/lang/String;)I

    move-result v0

    .line 68
    iget-object v1, p0, Lcom/sonymobile/wallpaper/liquid/Shader;->mFragmentShaderCode:Ljava/lang/String;

    const v2, 0x8b30

    invoke-direct {p0, v2, v1}, Lcom/sonymobile/wallpaper/liquid/Shader;->compileShader(ILjava/lang/String;)I

    move-result v1

    .line 70
    invoke-static {}, Landroid/opengl/GLES30;->glCreateProgram()I

    move-result v2

    const-string v3, "Program"

    invoke-static {v2, v3}, Lcom/sonymobile/wallpaper/liquid/Utils;->verifyHandle(ILjava/lang/String;)I

    move-result v2

    iput v2, p0, Lcom/sonymobile/wallpaper/liquid/Shader;->mProgram:I

    .line 71
    invoke-static {v2, v0}, Landroid/opengl/GLES30;->glAttachShader(II)V

    .line 72
    iget v2, p0, Lcom/sonymobile/wallpaper/liquid/Shader;->mProgram:I

    invoke-static {v2, v1}, Landroid/opengl/GLES30;->glAttachShader(II)V

    .line 73
    iget v2, p0, Lcom/sonymobile/wallpaper/liquid/Shader;->mProgram:I

    invoke-static {v2}, Landroid/opengl/GLES30;->glLinkProgram(I)V

    .line 76
    iget v2, p0, Lcom/sonymobile/wallpaper/liquid/Shader;->mProgram:I

    invoke-static {v2, v0}, Landroid/opengl/GLES30;->glDetachShader(II)V

    .line 77
    iget v2, p0, Lcom/sonymobile/wallpaper/liquid/Shader;->mProgram:I

    invoke-static {v2, v1}, Landroid/opengl/GLES30;->glDetachShader(II)V

    .line 79
    invoke-static {v0}, Landroid/opengl/GLES30;->glDeleteShader(I)V

    .line 80
    invoke-static {v1}, Landroid/opengl/GLES30;->glDeleteShader(I)V

    .line 83
    iget v0, p0, Lcom/sonymobile/wallpaper/liquid/Shader;->mProgram:I

    invoke-static {v0}, Landroid/opengl/GLES30;->glUseProgram(I)V

    const/4 v0, 0x1

    new-array v1, v0, [I

    const/4 v2, -0x1

    const/4 v3, 0x0

    aput v2, v1, v3

    .line 86
    invoke-static {v0, v1, v3}, Landroid/opengl/GLES30;->glGenVertexArrays(I[II)V

    .line 87
    aget v0, v1, v3

    const-string v1, "VAO"

    invoke-static {v0, v1}, Lcom/sonymobile/wallpaper/liquid/Utils;->verifyHandle(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/sonymobile/wallpaper/liquid/Shader;->mVao:I

    .line 90
    invoke-static {v0}, Landroid/opengl/GLES30;->glBindVertexArray(I)V

    .line 91
    invoke-virtual {p1}, Lcom/sonymobile/wallpaper/liquid/IndexedQuad;->getVertexBufferHandle()I

    move-result v0

    const v1, 0x8892

    invoke-static {v1, v0}, Landroid/opengl/GLES30;->glBindBuffer(II)V

    .line 92
    invoke-virtual {p1}, Lcom/sonymobile/wallpaper/liquid/IndexedQuad;->getIndexBufferHandle()I

    move-result p1

    const v0, 0x8893

    invoke-static {v0, p1}, Landroid/opengl/GLES30;->glBindBuffer(II)V

    .line 94
    iget p1, p0, Lcom/sonymobile/wallpaper/liquid/Shader;->mProgram:I

    const-string v0, "inPosition"

    .line 95
    invoke-static {p1, v0}, Landroid/opengl/GLES30;->glGetAttribLocation(ILjava/lang/String;)I

    move-result p1

    .line 94
    invoke-static {p1, v0}, Lcom/sonymobile/wallpaper/liquid/Utils;->verifyHandle(ILjava/lang/String;)I

    move-result v4

    .line 96
    invoke-static {v4}, Landroid/opengl/GLES30;->glEnableVertexAttribArray(I)V

    const/4 v5, 0x3

    const/16 v6, 0x1406

    const/4 v7, 0x0

    const/16 v8, 0x14

    const/4 v9, 0x0

    .line 97
    invoke-static/range {v4 .. v9}, Landroid/opengl/GLES30;->glVertexAttribPointer(IIIZII)V

    .line 99
    iget p1, p0, Lcom/sonymobile/wallpaper/liquid/Shader;->mProgram:I

    const-string v0, "inUV"

    invoke-static {p1, v0}, Landroid/opengl/GLES30;->glGetAttribLocation(ILjava/lang/String;)I

    move-result p1

    invoke-static {p1, v0}, Lcom/sonymobile/wallpaper/liquid/Utils;->verifyHandle(ILjava/lang/String;)I

    move-result v4

    .line 100
    invoke-static {v4}, Landroid/opengl/GLES30;->glEnableVertexAttribArray(I)V

    const/4 v5, 0x2

    const/16 v9, 0xc

    .line 101
    invoke-static/range {v4 .. v9}, Landroid/opengl/GLES30;->glVertexAttribPointer(IIIZII)V

    .line 103
    invoke-static {v1, v3}, Landroid/opengl/GLES30;->glBindBuffer(II)V

    .line 104
    invoke-static {v3}, Landroid/opengl/GLES30;->glBindVertexArray(I)V

    return-void
.end method

.method public unbind()V
    .locals 1

    const/4 v0, 0x0

    .line 138
    invoke-static {v0}, Landroid/opengl/GLES30;->glBindVertexArray(I)V

    return-void
.end method
