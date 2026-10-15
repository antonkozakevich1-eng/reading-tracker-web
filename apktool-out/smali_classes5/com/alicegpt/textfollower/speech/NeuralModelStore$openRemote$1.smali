.class public final Lcom/alicegpt/textfollower/speech/NeuralModelStore$openRemote$1;
.super Ljava/io/FilterInputStream;
.source "NeuralModelStore.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alicegpt/textfollower/speech/NeuralModelStore;->openRemote$app_debug(Lcom/alicegpt/textfollower/speech/NeuralModelStore$RemoteFile;)Ljava/io/InputStream;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0011\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000*\u0001\u0000\u0008\n\u0018\u00002\u00020\u0001J\u0008\u0010\u0002\u001a\u00020\u0003H\u0016\u00a8\u0006\u0004"
    }
    d2 = {
        "com/alicegpt/textfollower/speech/NeuralModelStore$openRemote$1",
        "Ljava/io/FilterInputStream;",
        "close",
        "",
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


# instance fields
.field final synthetic $conn:Ljava/net/HttpURLConnection;


# direct methods
.method constructor <init>(Ljava/net/HttpURLConnection;Ljava/io/InputStream;)V
    .locals 0
    .param p1, "$conn"    # Ljava/net/HttpURLConnection;
    .param p2, "$super_call_param$1"    # Ljava/io/InputStream;

    iput-object p1, p0, Lcom/alicegpt/textfollower/speech/NeuralModelStore$openRemote$1;->$conn:Ljava/net/HttpURLConnection;

    .line 107
    invoke-direct {p0, p2}, Ljava/io/FilterInputStream;-><init>(Ljava/io/InputStream;)V

    return-void
.end method


# virtual methods
.method public close()V
    .locals 2

    .line 109
    nop

    .line 110
    :try_start_0
    invoke-super {p0}, Ljava/io/FilterInputStream;->close()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 112
    iget-object v0, p0, Lcom/alicegpt/textfollower/speech/NeuralModelStore$openRemote$1;->$conn:Ljava/net/HttpURLConnection;

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 113
    nop

    .line 114
    return-void

    .line 112
    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/alicegpt/textfollower/speech/NeuralModelStore$openRemote$1;->$conn:Ljava/net/HttpURLConnection;

    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->disconnect()V

    throw v0
.end method
