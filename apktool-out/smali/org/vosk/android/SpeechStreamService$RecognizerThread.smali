.class final Lorg/vosk/android/SpeechStreamService$RecognizerThread;
.super Ljava/lang/Thread;
.source "SpeechStreamService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/vosk/android/SpeechStreamService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "RecognizerThread"
.end annotation


# static fields
.field private static final NO_TIMEOUT:I = -0x1


# instance fields
.field listener:Lorg/vosk/android/RecognitionListener;

.field private remainingSamples:I

.field final synthetic this$0:Lorg/vosk/android/SpeechStreamService;

.field private final timeoutSamples:I


# direct methods
.method public constructor <init>(Lorg/vosk/android/SpeechStreamService;Lorg/vosk/android/RecognitionListener;)V
    .locals 1
    .param p2, "listener"    # Lorg/vosk/android/RecognitionListener;

    .line 122
    const/4 v0, -0x1

    invoke-direct {p0, p1, p2, v0}, Lorg/vosk/android/SpeechStreamService$RecognizerThread;-><init>(Lorg/vosk/android/SpeechStreamService;Lorg/vosk/android/RecognitionListener;I)V

    .line 123
    return-void
.end method

.method public constructor <init>(Lorg/vosk/android/SpeechStreamService;Lorg/vosk/android/RecognitionListener;I)V
    .locals 1
    .param p2, "listener"    # Lorg/vosk/android/RecognitionListener;
    .param p3, "timeout"    # I

    .line 112
    iput-object p1, p0, Lorg/vosk/android/SpeechStreamService$RecognizerThread;->this$0:Lorg/vosk/android/SpeechStreamService;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 113
    iput-object p2, p0, Lorg/vosk/android/SpeechStreamService$RecognizerThread;->listener:Lorg/vosk/android/RecognitionListener;

    .line 114
    const/4 v0, -0x1

    if-eq p3, v0, :cond_0

    .line 115
    invoke-static {p1}, Lorg/vosk/android/SpeechStreamService;->access$000(Lorg/vosk/android/SpeechStreamService;)I

    move-result p1

    mul-int/2addr p1, p3

    div-int/lit16 p1, p1, 0x3e8

    iput p1, p0, Lorg/vosk/android/SpeechStreamService$RecognizerThread;->timeoutSamples:I

    goto :goto_0

    .line 117
    :cond_0
    iput v0, p0, Lorg/vosk/android/SpeechStreamService$RecognizerThread;->timeoutSamples:I

    .line 118
    :goto_0
    iget p1, p0, Lorg/vosk/android/SpeechStreamService$RecognizerThread;->timeoutSamples:I

    iput p1, p0, Lorg/vosk/android/SpeechStreamService$RecognizerThread;->remainingSamples:I

    .line 119
    return-void
.end method


# virtual methods
.method synthetic lambda$run$0$org-vosk-android-SpeechStreamService$RecognizerThread(Ljava/lang/String;)V
    .locals 1
    .param p1, "result"    # Ljava/lang/String;

    .line 140
    iget-object v0, p0, Lorg/vosk/android/SpeechStreamService$RecognizerThread;->listener:Lorg/vosk/android/RecognitionListener;

    invoke-interface {v0, p1}, Lorg/vosk/android/RecognitionListener;->onResult(Ljava/lang/String;)V

    return-void
.end method

.method synthetic lambda$run$1$org-vosk-android-SpeechStreamService$RecognizerThread(Ljava/lang/String;)V
    .locals 1
    .param p1, "partialResult"    # Ljava/lang/String;

    .line 143
    iget-object v0, p0, Lorg/vosk/android/SpeechStreamService$RecognizerThread;->listener:Lorg/vosk/android/RecognitionListener;

    invoke-interface {v0, p1}, Lorg/vosk/android/RecognitionListener;->onPartialResult(Ljava/lang/String;)V

    return-void
.end method

.method synthetic lambda$run$2$org-vosk-android-SpeechStreamService$RecognizerThread(Ljava/io/IOException;)V
    .locals 1
    .param p1, "e"    # Ljava/io/IOException;

    .line 152
    iget-object v0, p0, Lorg/vosk/android/SpeechStreamService$RecognizerThread;->listener:Lorg/vosk/android/RecognitionListener;

    invoke-interface {v0, p1}, Lorg/vosk/android/RecognitionListener;->onError(Ljava/lang/Exception;)V

    return-void
.end method

.method synthetic lambda$run$3$org-vosk-android-SpeechStreamService$RecognizerThread()V
    .locals 1

    .line 158
    iget-object v0, p0, Lorg/vosk/android/SpeechStreamService$RecognizerThread;->listener:Lorg/vosk/android/RecognitionListener;

    invoke-interface {v0}, Lorg/vosk/android/RecognitionListener;->onTimeout()V

    return-void
.end method

.method synthetic lambda$run$4$org-vosk-android-SpeechStreamService$RecognizerThread(Ljava/lang/String;)V
    .locals 1
    .param p1, "finalResult"    # Ljava/lang/String;

    .line 161
    iget-object v0, p0, Lorg/vosk/android/SpeechStreamService$RecognizerThread;->listener:Lorg/vosk/android/RecognitionListener;

    invoke-interface {v0, p1}, Lorg/vosk/android/RecognitionListener;->onFinalResult(Ljava/lang/String;)V

    return-void
.end method

.method public run()V
    .locals 7

    .line 128
    iget-object v0, p0, Lorg/vosk/android/SpeechStreamService$RecognizerThread;->this$0:Lorg/vosk/android/SpeechStreamService;

    invoke-static {v0}, Lorg/vosk/android/SpeechStreamService;->access$100(Lorg/vosk/android/SpeechStreamService;)I

    move-result v0

    new-array v0, v0, [B

    .line 130
    .local v0, "buffer":[B
    :goto_0
    invoke-static {}, Lorg/vosk/android/SpeechStreamService$RecognizerThread;->interrupted()Z

    move-result v1

    const/4 v2, -0x1

    if-nez v1, :cond_4

    iget v1, p0, Lorg/vosk/android/SpeechStreamService$RecognizerThread;->timeoutSamples:I

    if-eq v1, v2, :cond_0

    iget v1, p0, Lorg/vosk/android/SpeechStreamService$RecognizerThread;->remainingSamples:I

    if-lez v1, :cond_4

    .line 133
    :cond_0
    :try_start_0
    iget-object v1, p0, Lorg/vosk/android/SpeechStreamService$RecognizerThread;->this$0:Lorg/vosk/android/SpeechStreamService;

    invoke-static {v1}, Lorg/vosk/android/SpeechStreamService;->access$200(Lorg/vosk/android/SpeechStreamService;)Ljava/io/InputStream;

    move-result-object v1

    array-length v3, v0

    const/4 v4, 0x0

    invoke-virtual {v1, v0, v4, v3}, Ljava/io/InputStream;->read([BII)I

    move-result v1

    .line 134
    .local v1, "nread":I
    if-gez v1, :cond_1

    .line 135
    goto :goto_3

    .line 137
    :cond_1
    iget-object v3, p0, Lorg/vosk/android/SpeechStreamService$RecognizerThread;->this$0:Lorg/vosk/android/SpeechStreamService;

    invoke-static {v3}, Lorg/vosk/android/SpeechStreamService;->access$300(Lorg/vosk/android/SpeechStreamService;)Lorg/vosk/Recognizer;

    move-result-object v3

    invoke-virtual {v3, v0, v1}, Lorg/vosk/Recognizer;->acceptWaveForm([BI)Z

    move-result v3

    .line 138
    .local v3, "isSilence":Z
    if-eqz v3, :cond_2

    .line 139
    iget-object v4, p0, Lorg/vosk/android/SpeechStreamService$RecognizerThread;->this$0:Lorg/vosk/android/SpeechStreamService;

    invoke-static {v4}, Lorg/vosk/android/SpeechStreamService;->access$300(Lorg/vosk/android/SpeechStreamService;)Lorg/vosk/Recognizer;

    move-result-object v4

    invoke-virtual {v4}, Lorg/vosk/Recognizer;->getResult()Ljava/lang/String;

    move-result-object v4

    .line 140
    .local v4, "result":Ljava/lang/String;
    iget-object v5, p0, Lorg/vosk/android/SpeechStreamService$RecognizerThread;->this$0:Lorg/vosk/android/SpeechStreamService;

    invoke-static {v5}, Lorg/vosk/android/SpeechStreamService;->access$400(Lorg/vosk/android/SpeechStreamService;)Landroid/os/Handler;

    move-result-object v5

    new-instance v6, Lorg/vosk/android/SpeechStreamService$RecognizerThread$$ExternalSyntheticLambda0;

    invoke-direct {v6, p0, v4}, Lorg/vosk/android/SpeechStreamService$RecognizerThread$$ExternalSyntheticLambda0;-><init>(Lorg/vosk/android/SpeechStreamService$RecognizerThread;Ljava/lang/String;)V

    invoke-virtual {v5, v6}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 141
    nop

    .end local v4    # "result":Ljava/lang/String;
    goto :goto_1

    .line 142
    :cond_2
    iget-object v4, p0, Lorg/vosk/android/SpeechStreamService$RecognizerThread;->this$0:Lorg/vosk/android/SpeechStreamService;

    invoke-static {v4}, Lorg/vosk/android/SpeechStreamService;->access$300(Lorg/vosk/android/SpeechStreamService;)Lorg/vosk/Recognizer;

    move-result-object v4

    invoke-virtual {v4}, Lorg/vosk/Recognizer;->getPartialResult()Ljava/lang/String;

    move-result-object v4

    .line 143
    .local v4, "partialResult":Ljava/lang/String;
    iget-object v5, p0, Lorg/vosk/android/SpeechStreamService$RecognizerThread;->this$0:Lorg/vosk/android/SpeechStreamService;

    invoke-static {v5}, Lorg/vosk/android/SpeechStreamService;->access$400(Lorg/vosk/android/SpeechStreamService;)Landroid/os/Handler;

    move-result-object v5

    new-instance v6, Lorg/vosk/android/SpeechStreamService$RecognizerThread$$ExternalSyntheticLambda1;

    invoke-direct {v6, p0, v4}, Lorg/vosk/android/SpeechStreamService$RecognizerThread$$ExternalSyntheticLambda1;-><init>(Lorg/vosk/android/SpeechStreamService$RecognizerThread;Ljava/lang/String;)V

    invoke-virtual {v5, v6}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 147
    .end local v3    # "isSilence":Z
    .end local v4    # "partialResult":Ljava/lang/String;
    :goto_1
    iget v3, p0, Lorg/vosk/android/SpeechStreamService$RecognizerThread;->timeoutSamples:I

    if-eq v3, v2, :cond_3

    .line 148
    iget v2, p0, Lorg/vosk/android/SpeechStreamService$RecognizerThread;->remainingSamples:I

    sub-int/2addr v2, v1

    iput v2, p0, Lorg/vosk/android/SpeechStreamService$RecognizerThread;->remainingSamples:I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    .line 151
    .end local v1    # "nread":I
    :catch_0
    move-exception v1

    .line 152
    .local v1, "e":Ljava/io/IOException;
    iget-object v2, p0, Lorg/vosk/android/SpeechStreamService$RecognizerThread;->this$0:Lorg/vosk/android/SpeechStreamService;

    invoke-static {v2}, Lorg/vosk/android/SpeechStreamService;->access$400(Lorg/vosk/android/SpeechStreamService;)Landroid/os/Handler;

    move-result-object v2

    new-instance v3, Lorg/vosk/android/SpeechStreamService$RecognizerThread$$ExternalSyntheticLambda2;

    invoke-direct {v3, p0, v1}, Lorg/vosk/android/SpeechStreamService$RecognizerThread$$ExternalSyntheticLambda2;-><init>(Lorg/vosk/android/SpeechStreamService$RecognizerThread;Ljava/io/IOException;)V

    invoke-virtual {v2, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 153
    .end local v1    # "e":Ljava/io/IOException;
    :cond_3
    :goto_2
    goto :goto_0

    .line 157
    :cond_4
    :goto_3
    iget v1, p0, Lorg/vosk/android/SpeechStreamService$RecognizerThread;->timeoutSamples:I

    if-eq v1, v2, :cond_5

    iget v1, p0, Lorg/vosk/android/SpeechStreamService$RecognizerThread;->remainingSamples:I

    if-gtz v1, :cond_5

    .line 158
    iget-object v1, p0, Lorg/vosk/android/SpeechStreamService$RecognizerThread;->this$0:Lorg/vosk/android/SpeechStreamService;

    invoke-static {v1}, Lorg/vosk/android/SpeechStreamService;->access$400(Lorg/vosk/android/SpeechStreamService;)Landroid/os/Handler;

    move-result-object v1

    new-instance v2, Lorg/vosk/android/SpeechStreamService$RecognizerThread$$ExternalSyntheticLambda3;

    invoke-direct {v2, p0}, Lorg/vosk/android/SpeechStreamService$RecognizerThread$$ExternalSyntheticLambda3;-><init>(Lorg/vosk/android/SpeechStreamService$RecognizerThread;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_4

    .line 160
    :cond_5
    iget-object v1, p0, Lorg/vosk/android/SpeechStreamService$RecognizerThread;->this$0:Lorg/vosk/android/SpeechStreamService;

    invoke-static {v1}, Lorg/vosk/android/SpeechStreamService;->access$300(Lorg/vosk/android/SpeechStreamService;)Lorg/vosk/Recognizer;

    move-result-object v1

    invoke-virtual {v1}, Lorg/vosk/Recognizer;->getFinalResult()Ljava/lang/String;

    move-result-object v1

    .line 161
    .local v1, "finalResult":Ljava/lang/String;
    iget-object v2, p0, Lorg/vosk/android/SpeechStreamService$RecognizerThread;->this$0:Lorg/vosk/android/SpeechStreamService;

    invoke-static {v2}, Lorg/vosk/android/SpeechStreamService;->access$400(Lorg/vosk/android/SpeechStreamService;)Landroid/os/Handler;

    move-result-object v2

    new-instance v3, Lorg/vosk/android/SpeechStreamService$RecognizerThread$$ExternalSyntheticLambda4;

    invoke-direct {v3, p0, v1}, Lorg/vosk/android/SpeechStreamService$RecognizerThread$$ExternalSyntheticLambda4;-><init>(Lorg/vosk/android/SpeechStreamService$RecognizerThread;Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 163
    .end local v1    # "finalResult":Ljava/lang/String;
    :goto_4
    return-void
.end method
