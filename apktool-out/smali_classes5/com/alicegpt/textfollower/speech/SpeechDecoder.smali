.class public interface abstract Lcom/alicegpt/textfollower/speech/SpeechDecoder;
.super Ljava/lang/Object;
.source "StreamingEngine.kt"

# interfaces
.implements Ljava/lang/AutoCloseable;


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000(\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0017\n\u0000\n\u0002\u0010\u0008\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0002\u0008f\u0018\u00002\u00060\u0001j\u0002`\u0002J\u0018\u0010\u0003\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u00062\u0006\u0010\u0007\u001a\u00020\u0008H&J\u0008\u0010\t\u001a\u00020\nH&J\u0008\u0010\u000b\u001a\u00020\nH&\u00a8\u0006\u000c"
    }
    d2 = {
        "Lcom/alicegpt/textfollower/speech/SpeechDecoder;",
        "Ljava/lang/AutoCloseable;",
        "Lkotlin/AutoCloseable;",
        "accept",
        "",
        "buf",
        "",
        "n",
        "",
        "finalText",
        "",
        "partialText",
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
.method public abstract accept([SI)Z
.end method

.method public abstract finalText()Ljava/lang/String;
.end method

.method public abstract partialText()Ljava/lang/String;
.end method
