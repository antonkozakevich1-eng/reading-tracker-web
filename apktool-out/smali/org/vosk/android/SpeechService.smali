.class public Lorg/vosk/android/SpeechService;
.super Ljava/lang/Object;
.source "SpeechService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/vosk/android/SpeechService$RecognizerThread;
    }
.end annotation


# static fields
.field private static final BUFFER_SIZE_SECONDS:F = 0.2f


# instance fields
.field private final bufferSize:I

.field private final mainHandler:Landroid/os/Handler;

.field private final recognizer:Lorg/vosk/Recognizer;

.field private recognizerThread:Lorg/vosk/android/SpeechService$RecognizerThread;

.field private final recorder:Landroid/media/AudioRecord;

.field private final sampleRate:I


# direct methods
.method public constructor <init>(Lorg/vosk/Recognizer;F)V
    .locals 7
    .param p1, "recognizer"    # Lorg/vosk/Recognizer;
    .param p2, "sampleRate"    # F
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lorg/vosk/android/SpeechService;->mainHandler:Landroid/os/Handler;

    .line 53
    iput-object p1, p0, Lorg/vosk/android/SpeechService;->recognizer:Lorg/vosk/Recognizer;

    .line 54
    float-to-int v0, p2

    iput v0, p0, Lorg/vosk/android/SpeechService;->sampleRate:I

    .line 56
    iget v0, p0, Lorg/vosk/android/SpeechService;->sampleRate:I

    int-to-float v0, v0

    const v1, 0x3e4ccccd    # 0.2f

    mul-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    iput v0, p0, Lorg/vosk/android/SpeechService;->bufferSize:I

    .line 57
    new-instance v0, Landroid/media/AudioRecord;

    iget v3, p0, Lorg/vosk/android/SpeechService;->sampleRate:I

    iget v1, p0, Lorg/vosk/android/SpeechService;->bufferSize:I

    mul-int/lit8 v6, v1, 0x2

    const/4 v2, 0x6

    const/16 v4, 0x10

    const/4 v5, 0x2

    move-object v1, v0

    invoke-direct/range {v1 .. v6}, Landroid/media/AudioRecord;-><init>(IIIII)V

    iput-object v0, p0, Lorg/vosk/android/SpeechService;->recorder:Landroid/media/AudioRecord;

    .line 62
    iget-object v0, p0, Lorg/vosk/android/SpeechService;->recorder:Landroid/media/AudioRecord;

    invoke-virtual {v0}, Landroid/media/AudioRecord;->getState()I

    move-result v0

    if-eqz v0, :cond_0

    .line 67
    return-void

    .line 63
    :cond_0
    iget-object v0, p0, Lorg/vosk/android/SpeechService;->recorder:Landroid/media/AudioRecord;

    invoke-virtual {v0}, Landroid/media/AudioRecord;->release()V

    .line 64
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Failed to initialize recorder. Microphone might be already in use."

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method static synthetic access$000(Lorg/vosk/android/SpeechService;)I
    .locals 1
    .param p0, "x0"    # Lorg/vosk/android/SpeechService;

    .line 32
    iget v0, p0, Lorg/vosk/android/SpeechService;->sampleRate:I

    return v0
.end method

.method static synthetic access$100(Lorg/vosk/android/SpeechService;)Landroid/media/AudioRecord;
    .locals 1
    .param p0, "x0"    # Lorg/vosk/android/SpeechService;

    .line 32
    iget-object v0, p0, Lorg/vosk/android/SpeechService;->recorder:Landroid/media/AudioRecord;

    return-object v0
.end method

.method static synthetic access$200(Lorg/vosk/android/SpeechService;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lorg/vosk/android/SpeechService;

    .line 32
    iget-object v0, p0, Lorg/vosk/android/SpeechService;->mainHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$300(Lorg/vosk/android/SpeechService;)I
    .locals 1
    .param p0, "x0"    # Lorg/vosk/android/SpeechService;

    .line 32
    iget v0, p0, Lorg/vosk/android/SpeechService;->bufferSize:I

    return v0
.end method

.method static synthetic access$400(Lorg/vosk/android/SpeechService;)Lorg/vosk/Recognizer;
    .locals 1
    .param p0, "x0"    # Lorg/vosk/android/SpeechService;

    .line 32
    iget-object v0, p0, Lorg/vosk/android/SpeechService;->recognizer:Lorg/vosk/Recognizer;

    return-object v0
.end method

.method private stopRecognizerThread()Z
    .locals 2

    .line 102
    iget-object v0, p0, Lorg/vosk/android/SpeechService;->recognizerThread:Lorg/vosk/android/SpeechService$RecognizerThread;

    if-nez v0, :cond_0

    .line 103
    const/4 v0, 0x0

    return v0

    .line 106
    :cond_0
    :try_start_0
    iget-object v0, p0, Lorg/vosk/android/SpeechService;->recognizerThread:Lorg/vosk/android/SpeechService$RecognizerThread;

    invoke-virtual {v0}, Lorg/vosk/android/SpeechService$RecognizerThread;->interrupt()V

    .line 107
    iget-object v0, p0, Lorg/vosk/android/SpeechService;->recognizerThread:Lorg/vosk/android/SpeechService$RecognizerThread;

    invoke-virtual {v0}, Lorg/vosk/android/SpeechService$RecognizerThread;->join()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 111
    goto :goto_0

    .line 108
    :catch_0
    move-exception v0

    .line 110
    .local v0, "e":Ljava/lang/InterruptedException;
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->interrupt()V

    .line 113
    .end local v0    # "e":Ljava/lang/InterruptedException;
    :goto_0
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/vosk/android/SpeechService;->recognizerThread:Lorg/vosk/android/SpeechService$RecognizerThread;

    .line 114
    const/4 v0, 0x1

    return v0
.end method


# virtual methods
.method public cancel()Z
    .locals 2

    .line 134
    iget-object v0, p0, Lorg/vosk/android/SpeechService;->recognizerThread:Lorg/vosk/android/SpeechService$RecognizerThread;

    if-eqz v0, :cond_0

    .line 135
    iget-object v0, p0, Lorg/vosk/android/SpeechService;->recognizerThread:Lorg/vosk/android/SpeechService$RecognizerThread;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lorg/vosk/android/SpeechService$RecognizerThread;->setPause(Z)V

    .line 137
    :cond_0
    invoke-direct {p0}, Lorg/vosk/android/SpeechService;->stopRecognizerThread()Z

    move-result v0

    return v0
.end method

.method public reset()V
    .locals 1

    .line 157
    iget-object v0, p0, Lorg/vosk/android/SpeechService;->recognizerThread:Lorg/vosk/android/SpeechService$RecognizerThread;

    if-eqz v0, :cond_0

    .line 158
    iget-object v0, p0, Lorg/vosk/android/SpeechService;->recognizerThread:Lorg/vosk/android/SpeechService$RecognizerThread;

    invoke-virtual {v0}, Lorg/vosk/android/SpeechService$RecognizerThread;->reset()V

    .line 160
    :cond_0
    return-void
.end method

.method public setPause(Z)V
    .locals 1
    .param p1, "paused"    # Z

    .line 148
    iget-object v0, p0, Lorg/vosk/android/SpeechService;->recognizerThread:Lorg/vosk/android/SpeechService$RecognizerThread;

    if-eqz v0, :cond_0

    .line 149
    iget-object v0, p0, Lorg/vosk/android/SpeechService;->recognizerThread:Lorg/vosk/android/SpeechService$RecognizerThread;

    invoke-virtual {v0, p1}, Lorg/vosk/android/SpeechService$RecognizerThread;->setPause(Z)V

    .line 151
    :cond_0
    return-void
.end method

.method public shutdown()V
    .locals 1

    .line 144
    iget-object v0, p0, Lorg/vosk/android/SpeechService;->recorder:Landroid/media/AudioRecord;

    invoke-virtual {v0}, Landroid/media/AudioRecord;->release()V

    .line 145
    return-void
.end method

.method public startListening(Lorg/vosk/android/RecognitionListener;)Z
    .locals 1
    .param p1, "listener"    # Lorg/vosk/android/RecognitionListener;

    .line 76
    iget-object v0, p0, Lorg/vosk/android/SpeechService;->recognizerThread:Lorg/vosk/android/SpeechService$RecognizerThread;

    if-eqz v0, :cond_0

    .line 77
    const/4 v0, 0x0

    return v0

    .line 79
    :cond_0
    new-instance v0, Lorg/vosk/android/SpeechService$RecognizerThread;

    invoke-direct {v0, p0, p1}, Lorg/vosk/android/SpeechService$RecognizerThread;-><init>(Lorg/vosk/android/SpeechService;Lorg/vosk/android/RecognitionListener;)V

    iput-object v0, p0, Lorg/vosk/android/SpeechService;->recognizerThread:Lorg/vosk/android/SpeechService$RecognizerThread;

    .line 80
    iget-object v0, p0, Lorg/vosk/android/SpeechService;->recognizerThread:Lorg/vosk/android/SpeechService$RecognizerThread;

    invoke-virtual {v0}, Lorg/vosk/android/SpeechService$RecognizerThread;->start()V

    .line 81
    const/4 v0, 0x1

    return v0
.end method

.method public startListening(Lorg/vosk/android/RecognitionListener;I)Z
    .locals 1
    .param p1, "listener"    # Lorg/vosk/android/RecognitionListener;
    .param p2, "timeout"    # I

    .line 93
    iget-object v0, p0, Lorg/vosk/android/SpeechService;->recognizerThread:Lorg/vosk/android/SpeechService$RecognizerThread;

    if-eqz v0, :cond_0

    .line 94
    const/4 v0, 0x0

    return v0

    .line 96
    :cond_0
    new-instance v0, Lorg/vosk/android/SpeechService$RecognizerThread;

    invoke-direct {v0, p0, p1, p2}, Lorg/vosk/android/SpeechService$RecognizerThread;-><init>(Lorg/vosk/android/SpeechService;Lorg/vosk/android/RecognitionListener;I)V

    iput-object v0, p0, Lorg/vosk/android/SpeechService;->recognizerThread:Lorg/vosk/android/SpeechService$RecognizerThread;

    .line 97
    iget-object v0, p0, Lorg/vosk/android/SpeechService;->recognizerThread:Lorg/vosk/android/SpeechService$RecognizerThread;

    invoke-virtual {v0}, Lorg/vosk/android/SpeechService$RecognizerThread;->start()V

    .line 98
    const/4 v0, 0x1

    return v0
.end method

.method public stop()Z
    .locals 1

    .line 124
    invoke-direct {p0}, Lorg/vosk/android/SpeechService;->stopRecognizerThread()Z

    move-result v0

    return v0
.end method
