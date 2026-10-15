.class public Lorg/vosk/Model;
.super Lcom/sun/jna/PointerType;
.source "Model.java"

# interfaces
.implements Ljava/lang/AutoCloseable;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 7
    invoke-direct {p0}, Lcom/sun/jna/PointerType;-><init>()V

    .line 8
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 2
    .param p1, "path"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 11
    invoke-static {p1}, Lorg/vosk/LibVosk;->vosk_model_new(Ljava/lang/String;)Lcom/sun/jna/Pointer;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/sun/jna/PointerType;-><init>(Lcom/sun/jna/Pointer;)V

    .line 13
    invoke-virtual {p0}, Lorg/vosk/Model;->getPointer()Lcom/sun/jna/Pointer;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 16
    return-void

    .line 14
    :cond_0
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Failed to create a model"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public close()V
    .locals 1

    .line 20
    invoke-virtual {p0}, Lorg/vosk/Model;->getPointer()Lcom/sun/jna/Pointer;

    move-result-object v0

    invoke-static {v0}, Lorg/vosk/LibVosk;->vosk_model_free(Lcom/sun/jna/Pointer;)V

    .line 21
    return-void
.end method
