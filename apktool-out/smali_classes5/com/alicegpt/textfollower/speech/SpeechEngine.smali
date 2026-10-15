.class public interface abstract Lcom/alicegpt/textfollower/speech/SpeechEngine;
.super Ljava/lang/Object;
.source "SpeechEngine.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alicegpt/textfollower/speech/SpeechEngine$Listener;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000B\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u000b\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0002\u0008\u0005\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010 \n\u0002\u0010\u000e\n\u0002\u0008\u0006\u0008f\u0018\u00002\u00020\u0001:\u0001\u001eJ \u0010\u0013\u001a\u00020\u00142\u0006\u0010\u0015\u001a\u00020\u00162\u000e\u0010\u0017\u001a\n\u0012\u0004\u0012\u00020\u0019\u0018\u00010\u0018H&J\u0018\u0010\u001a\u001a\u00020\u00142\u000e\u0010\u001b\u001a\n\u0012\u0004\u0012\u00020\u0019\u0018\u00010\u0018H&J\u0008\u0010\u001c\u001a\u00020\u0014H&J\u0008\u0010\u001d\u001a\u00020\u0014H&R\u0012\u0010\u0002\u001a\u00020\u0003X\u00a6\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\u0004\u0010\u0005R\u0012\u0010\u0006\u001a\u00020\u0007X\u00a6\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\u0008\u0010\tR\u0012\u0010\n\u001a\u00020\u000bX\u00a6\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\n\u0010\u000cR\u0012\u0010\r\u001a\u00020\u000eX\u00a6\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\u000f\u0010\u0010R\u0012\u0010\u0011\u001a\u00020\u000eX\u00a6\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\u0012\u0010\u0010\u00a8\u0006\u001f"
    }
    d2 = {
        "Lcom/alicegpt/textfollower/speech/SpeechEngine;",
        "",
        "kind",
        "Lcom/alicegpt/textfollower/speech/EngineKind;",
        "getKind",
        "()Lcom/alicegpt/textfollower/speech/EngineKind;",
        "gain",
        "Lcom/alicegpt/textfollower/speech/AutoGain;",
        "getGain",
        "()Lcom/alicegpt/textfollower/speech/AutoGain;",
        "isRunning",
        "",
        "()Z",
        "contextBack",
        "",
        "getContextBack",
        "()I",
        "contextAhead",
        "getContextAhead",
        "start",
        "",
        "modelDir",
        "Ljava/io/File;",
        "context",
        "",
        "",
        "setContext",
        "words",
        "stop",
        "release",
        "Listener",
        "app_debug"
    }
    k = 0x1
    mv = {
        0x2,
        0x0,
        0x0
    }
    xi = 0x30
.end annotation


# virtual methods
.method public abstract getContextAhead()I
.end method

.method public abstract getContextBack()I
.end method

.method public abstract getGain()Lcom/alicegpt/textfollower/speech/AutoGain;
.end method

.method public abstract getKind()Lcom/alicegpt/textfollower/speech/EngineKind;
.end method

.method public abstract isRunning()Z
.end method

.method public abstract release()V
.end method

.method public abstract setContext(Ljava/util/List;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract start(Ljava/io/File;Ljava/util/List;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/File;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract stop()V
.end method
