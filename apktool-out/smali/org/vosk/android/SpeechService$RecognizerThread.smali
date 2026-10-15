.class final Lorg/vosk/android/SpeechService$RecognizerThread;
.super Ljava/lang/Thread;
.source "SpeechService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/vosk/android/SpeechService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "RecognizerThread"
.end annotation


# static fields
.field private static final NO_TIMEOUT:I = -0x1


# instance fields
.field listener:Lorg/vosk/android/RecognitionListener;

.field private volatile paused:Z

.field private remainingSamples:I

.field private volatile reset:Z

.field final synthetic this$0:Lorg/vosk/android/SpeechService;

.field private final timeoutSamples:I


# direct methods
.method public constructor <init>(Lorg/vosk/android/SpeechService;Lorg/vosk/android/RecognitionListener;)V
    .locals 1
    .param p2, "listener"    # Lorg/vosk/android/RecognitionListener;

    .line 182
    const/4 v0, -0x1

    invoke-direct {p0, p1, p2, v0}, Lorg/vosk/android/SpeechService$RecognizerThread;-><init>(Lorg/vosk/android/SpeechService;Lorg/vosk/android/RecognitionListener;I)V

    .line 183
    return-void
.end method

.method public constructor <init>(Lorg/vosk/android/SpeechService;Lorg/vosk/android/RecognitionListener;I)V
    .locals 1
    .param p2, "listener"    # Lorg/vosk/android/RecognitionListener;
    .param p3, "timeout"    # I

    .line 172
    iput-object p1, p0, Lorg/vosk/android/SpeechService$RecognizerThread;->this$0:Lorg/vosk/android/SpeechService;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 167
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/vosk/android/SpeechService$RecognizerThread;->paused:Z

    .line 168
    iput-boolean v0, p0, Lorg/vosk/android/SpeechService$RecognizerThread;->reset:Z

    .line 173
    iput-object p2, p0, Lorg/vosk/android/SpeechService$RecognizerThread;->listener:Lorg/vosk/android/RecognitionListener;

    .line 174
    const/4 v0, -0x1

    if-eq p3, v0, :cond_0

    .line 175
    invoke-static {p1}, Lorg/vosk/android/SpeechService;->access$000(Lorg/vosk/android/SpeechService;)I

    move-result p1

    mul-int/2addr p1, p3

    div-int/lit16 p1, p1, 0x3e8

    iput p1, p0, Lorg/vosk/android/SpeechService$RecognizerThread;->timeoutSamples:I

    goto :goto_0

    .line 177
    :cond_0
    iput v0, p0, Lorg/vosk/android/SpeechService$RecognizerThread;->timeoutSamples:I

    .line 178
    :goto_0
    iget p1, p0, Lorg/vosk/android/SpeechService$RecognizerThread;->timeoutSamples:I

    iput p1, p0, Lorg/vosk/android/SpeechService$RecognizerThread;->remainingSamples:I

    .line 179
    return-void
.end method


# virtual methods
.method synthetic lambda$run$0$org-vosk-android-SpeechService$RecognizerThread(Ljava/io/IOException;)V
    .locals 1
    .param p1, "ioe"    # Ljava/io/IOException;

    .line 210
    iget-object v0, p0, Lorg/vosk/android/SpeechService$RecognizerThread;->listener:Lorg/vosk/android/RecognitionListener;

    invoke-interface {v0, p1}, Lorg/vosk/android/RecognitionListener;->onError(Ljava/lang/Exception;)V

    return-void
.end method

.method synthetic lambda$run$1$org-vosk-android-SpeechService$RecognizerThread(Ljava/lang/String;)V
    .locals 1
    .param p1, "result"    # Ljava/lang/String;

    .line 233
    iget-object v0, p0, Lorg/vosk/android/SpeechService$RecognizerThread;->listener:Lorg/vosk/android/RecognitionListener;

    invoke-interface {v0, p1}, Lorg/vosk/android/RecognitionListener;->onResult(Ljava/lang/String;)V

    return-void
.end method

.method synthetic lambda$run$2$org-vosk-android-SpeechService$RecognizerThread(Ljava/lang/String;)V
    .locals 1
    .param p1, "partialResult"    # Ljava/lang/String;

    .line 236
    iget-object v0, p0, Lorg/vosk/android/SpeechService$RecognizerThread;->listener:Lorg/vosk/android/RecognitionListener;

    invoke-interface {v0, p1}, Lorg/vosk/android/RecognitionListener;->onPartialResult(Ljava/lang/String;)V

    return-void
.end method

.method synthetic lambda$run$3$org-vosk-android-SpeechService$RecognizerThread()V
    .locals 1

    .line 249
    iget-object v0, p0, Lorg/vosk/android/SpeechService$RecognizerThread;->listener:Lorg/vosk/android/RecognitionListener;

    invoke-interface {v0}, Lorg/vosk/android/RecognitionListener;->onTimeout()V

    return-void
.end method

.method synthetic lambda$run$4$org-vosk-android-SpeechService$RecognizerThread(Ljava/lang/String;)V
    .locals 1
    .param p1, "finalResult"    # Ljava/lang/String;

    .line 252
    iget-object v0, p0, Lorg/vosk/android/SpeechService$RecognizerThread;->listener:Lorg/vosk/android/RecognitionListener;

    invoke-interface {v0, p1}, Lorg/vosk/android/RecognitionListener;->onFinalResult(Ljava/lang/String;)V

    return-void
.end method

.method public reset()V
    .locals 1

    .line 199
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/vosk/android/SpeechService$RecognizerThread;->reset:Z

    .line 200
    return-void
.end method

.method public run()V
    .locals 6

    .line 205
    iget-object v0, p0, Lorg/vosk/android/SpeechService$RecognizerThread;->this$0:Lorg/vosk/android/SpeechService;

    invoke-static {v0}, Lorg/vosk/android/SpeechService;->access$100(Lorg/vosk/android/SpeechService;)Landroid/media/AudioRecord;

    move-result-object v0

    invoke-virtual {v0}, Landroid/media/AudioRecord;->startRecording()V

    .line 206
    iget-object v0, p0, Lorg/vosk/android/SpeechService$RecognizerThread;->this$0:Lorg/vosk/android/SpeechService;

    invoke-static {v0}, Lorg/vosk/android/SpeechService;->access$100(Lorg/vosk/android/SpeechService;)Landroid/media/AudioRecord;

    move-result-object v0

    invoke-virtual {v0}, Landroid/media/AudioRecord;->getRecordingState()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 207
    iget-object v0, p0, Lorg/vosk/android/SpeechService$RecognizerThread;->this$0:Lorg/vosk/android/SpeechService;

    invoke-static {v0}, Lorg/vosk/android/SpeechService;->access$100(Lorg/vosk/android/SpeechService;)Landroid/media/AudioRecord;

    move-result-object v0

    invoke-virtual {v0}, Landroid/media/AudioRecord;->stop()V

    .line 208
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Failed to start recording. Microphone might be already in use."

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 210
    .local v0, "ioe":Ljava/io/IOException;
    iget-object v1, p0, Lorg/vosk/android/SpeechService$RecognizerThread;->this$0:Lorg/vosk/android/SpeechService;

    invoke-static {v1}, Lorg/vosk/android/SpeechService;->access$200(Lorg/vosk/android/SpeechService;)Landroid/os/Handler;

    move-result-object v1

    new-instance v2, Lorg/vosk/android/SpeechService$RecognizerThread$$ExternalSyntheticLambda0;

    invoke-direct {v2, p0, v0}, Lorg/vosk/android/SpeechService$RecognizerThread$$ExternalSyntheticLambda0;-><init>(Lorg/vosk/android/SpeechService$RecognizerThread;Ljava/io/IOException;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 213
    .end local v0    # "ioe":Ljava/io/IOException;
    :cond_0
    iget-object v0, p0, Lorg/vosk/android/SpeechService$RecognizerThread;->this$0:Lorg/vosk/android/SpeechService;

    invoke-static {v0}, Lorg/vosk/android/SpeechService;->access$300(Lorg/vosk/android/SpeechService;)I

    move-result v0

    new-array v0, v0, [S

    .line 215
    .local v0, "buffer":[S
    :goto_0
    invoke-static {}, Lorg/vosk/android/SpeechService$RecognizerThread;->interrupted()Z

    move-result v1

    const/4 v2, -0x1

    if-nez v1, :cond_7

    iget v1, p0, Lorg/vosk/android/SpeechService$RecognizerThread;->timeoutSamples:I

    if-eq v1, v2, :cond_1

    iget v1, p0, Lorg/vosk/android/SpeechService$RecognizerThread;->remainingSamples:I

    if-lez v1, :cond_7

    .line 217
    :cond_1
    iget-object v1, p0, Lorg/vosk/android/SpeechService$RecognizerThread;->this$0:Lorg/vosk/android/SpeechService;

    invoke-static {v1}, Lorg/vosk/android/SpeechService;->access$100(Lorg/vosk/android/SpeechService;)Landroid/media/AudioRecord;

    move-result-object v1

    array-length v3, v0

    const/4 v4, 0x0

    invoke-virtual {v1, v0, v4, v3}, Landroid/media/AudioRecord;->read([SII)I

    move-result v1

    .line 219
    .local v1, "nread":I
    iget-boolean v3, p0, Lorg/vosk/android/SpeechService$RecognizerThread;->paused:Z

    if-eqz v3, :cond_2

    .line 220
    goto :goto_0

    .line 223
    :cond_2
    iget-boolean v3, p0, Lorg/vosk/android/SpeechService$RecognizerThread;->reset:Z

    if-eqz v3, :cond_3

    .line 224
    iget-object v3, p0, Lorg/vosk/android/SpeechService$RecognizerThread;->this$0:Lorg/vosk/android/SpeechService;

    invoke-static {v3}, Lorg/vosk/android/SpeechService;->access$400(Lorg/vosk/android/SpeechService;)Lorg/vosk/Recognizer;

    move-result-object v3

    invoke-virtual {v3}, Lorg/vosk/Recognizer;->reset()V

    .line 225
    iput-boolean v4, p0, Lorg/vosk/android/SpeechService$RecognizerThread;->reset:Z

    .line 228
    :cond_3
    if-ltz v1, :cond_6

    .line 231
    iget-object v3, p0, Lorg/vosk/android/SpeechService$RecognizerThread;->this$0:Lorg/vosk/android/SpeechService;

    invoke-static {v3}, Lorg/vosk/android/SpeechService;->access$400(Lorg/vosk/android/SpeechService;)Lorg/vosk/Recognizer;

    move-result-object v3

    invoke-virtual {v3, v0, v1}, Lorg/vosk/Recognizer;->acceptWaveForm([SI)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 232
    iget-object v3, p0, Lorg/vosk/android/SpeechService$RecognizerThread;->this$0:Lorg/vosk/android/SpeechService;

    invoke-static {v3}, Lorg/vosk/android/SpeechService;->access$400(Lorg/vosk/android/SpeechService;)Lorg/vosk/Recognizer;

    move-result-object v3

    invoke-virtual {v3}, Lorg/vosk/Recognizer;->getResult()Ljava/lang/String;

    move-result-object v3

    .line 233
    .local v3, "result":Ljava/lang/String;
    iget-object v4, p0, Lorg/vosk/android/SpeechService$RecognizerThread;->this$0:Lorg/vosk/android/SpeechService;

    invoke-static {v4}, Lorg/vosk/android/SpeechService;->access$200(Lorg/vosk/android/SpeechService;)Landroid/os/Handler;

    move-result-object v4

    new-instance v5, Lorg/vosk/android/SpeechService$RecognizerThread$$ExternalSyntheticLambda1;

    invoke-direct {v5, p0, v3}, Lorg/vosk/android/SpeechService$RecognizerThread$$ExternalSyntheticLambda1;-><init>(Lorg/vosk/android/SpeechService$RecognizerThread;Ljava/lang/String;)V

    invoke-virtual {v4, v5}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 234
    .end local v3    # "result":Ljava/lang/String;
    goto :goto_1

    .line 235
    :cond_4
    iget-object v3, p0, Lorg/vosk/android/SpeechService$RecognizerThread;->this$0:Lorg/vosk/android/SpeechService;

    invoke-static {v3}, Lorg/vosk/android/SpeechService;->access$400(Lorg/vosk/android/SpeechService;)Lorg/vosk/Recognizer;

    move-result-object v3

    invoke-virtual {v3}, Lorg/vosk/Recognizer;->getPartialResult()Ljava/lang/String;

    move-result-object v3

    .line 236
    .local v3, "partialResult":Ljava/lang/String;
    iget-object v4, p0, Lorg/vosk/android/SpeechService$RecognizerThread;->this$0:Lorg/vosk/android/SpeechService;

    invoke-static {v4}, Lorg/vosk/android/SpeechService;->access$200(Lorg/vosk/android/SpeechService;)Landroid/os/Handler;

    move-result-object v4

    new-instance v5, Lorg/vosk/android/SpeechService$RecognizerThread$$ExternalSyntheticLambda2;

    invoke-direct {v5, p0, v3}, Lorg/vosk/android/SpeechService$RecognizerThread$$ExternalSyntheticLambda2;-><init>(Lorg/vosk/android/SpeechService$RecognizerThread;Ljava/lang/String;)V

    invoke-virtual {v4, v5}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 239
    .end local v3    # "partialResult":Ljava/lang/String;
    :goto_1
    iget v3, p0, Lorg/vosk/android/SpeechService$RecognizerThread;->timeoutSamples:I

    if-eq v3, v2, :cond_5

    .line 240
    iget v2, p0, Lorg/vosk/android/SpeechService$RecognizerThread;->remainingSamples:I

    sub-int/2addr v2, v1

    iput v2, p0, Lorg/vosk/android/SpeechService$RecognizerThread;->remainingSamples:I

    .line 242
    .end local v1    # "nread":I
    :cond_5
    goto :goto_0

    .line 229
    .restart local v1    # "nread":I
    :cond_6
    new-instance v2, Ljava/lang/RuntimeException;

    const-string v3, "error reading audio buffer"

    invoke-direct {v2, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 244
    .end local v1    # "nread":I
    :cond_7
    iget-object v1, p0, Lorg/vosk/android/SpeechService$RecognizerThread;->this$0:Lorg/vosk/android/SpeechService;

    invoke-static {v1}, Lorg/vosk/android/SpeechService;->access$100(Lorg/vosk/android/SpeechService;)Landroid/media/AudioRecord;

    move-result-object v1

    invoke-virtual {v1}, Landroid/media/AudioRecord;->stop()V

    .line 246
    iget-boolean v1, p0, Lorg/vosk/android/SpeechService$RecognizerThread;->paused:Z

    if-nez v1, :cond_9

    .line 248
    iget v1, p0, Lorg/vosk/android/SpeechService$RecognizerThread;->timeoutSamples:I

    if-eq v1, v2, :cond_8

    iget v1, p0, Lorg/vosk/android/SpeechService$RecognizerThread;->remainingSamples:I

    if-gtz v1, :cond_8

    .line 249
    iget-object v1, p0, Lorg/vosk/android/SpeechService$RecognizerThread;->this$0:Lorg/vosk/android/SpeechService;

    invoke-static {v1}, Lorg/vosk/android/SpeechService;->access$200(Lorg/vosk/android/SpeechService;)Landroid/os/Handler;

    move-result-object v1

    new-instance v2, Lorg/vosk/android/SpeechService$RecognizerThread$$ExternalSyntheticLambda3;

    invoke-direct {v2, p0}, Lorg/vosk/android/SpeechService$RecognizerThread$$ExternalSyntheticLambda3;-><init>(Lorg/vosk/android/SpeechService$RecognizerThread;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_2

    .line 251
    :cond_8
    iget-object v1, p0, Lorg/vosk/android/SpeechService$RecognizerThread;->this$0:Lorg/vosk/android/SpeechService;

    invoke-static {v1}, Lorg/vosk/android/SpeechService;->access$400(Lorg/vosk/android/SpeechService;)Lorg/vosk/Recognizer;

    move-result-object v1

    invoke-virtual {v1}, Lorg/vosk/Recognizer;->getFinalResult()Ljava/lang/String;

    move-result-object v1

    .line 252
    .local v1, "finalResult":Ljava/lang/String;
    iget-object v2, p0, Lorg/vosk/android/SpeechService$RecognizerThread;->this$0:Lorg/vosk/android/SpeechService;

    invoke-static {v2}, Lorg/vosk/android/SpeechService;->access$200(Lorg/vosk/android/SpeechService;)Landroid/os/Handler;

    move-result-object v2

    new-instance v3, Lorg/vosk/android/SpeechService$RecognizerThread$$ExternalSyntheticLambda4;

    invoke-direct {v3, p0, v1}, Lorg/vosk/android/SpeechService$RecognizerThread$$ExternalSyntheticLambda4;-><init>(Lorg/vosk/android/SpeechService$RecognizerThread;Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 256
    .end local v1    # "finalResult":Ljava/lang/String;
    :cond_9
    :goto_2
    return-void
.end method

.method public setPause(Z)V
    .locals 0
    .param p1, "paused"    # Z

    .line 192
    iput-boolean p1, p0, Lorg/vosk/android/SpeechService$RecognizerThread;->paused:Z

    .line 193
    return-void
.end method
