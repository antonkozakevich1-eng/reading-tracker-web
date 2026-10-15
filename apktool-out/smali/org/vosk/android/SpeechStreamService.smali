.class public Lorg/vosk/android/SpeechStreamService;
.super Ljava/lang/Object;
.source "SpeechStreamService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/vosk/android/SpeechStreamService$RecognizerThread;
    }
.end annotation


# static fields
.field private static final BUFFER_SIZE_SECONDS:F = 0.2f


# instance fields
.field private final bufferSize:I

.field private final inputStream:Ljava/io/InputStream;

.field private final mainHandler:Landroid/os/Handler;

.field private final recognizer:Lorg/vosk/Recognizer;

.field private recognizerThread:Ljava/lang/Thread;

.field private final sampleRate:I


# direct methods
.method public constructor <init>(Lorg/vosk/Recognizer;Ljava/io/InputStream;F)V
    .locals 2
    .param p1, "recognizer"    # Lorg/vosk/Recognizer;
    .param p2, "inputStream"    # Ljava/io/InputStream;
    .param p3, "sampleRate"    # F

    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lorg/vosk/android/SpeechStreamService;->mainHandler:Landroid/os/Handler;

    .line 46
    iput-object p1, p0, Lorg/vosk/android/SpeechStreamService;->recognizer:Lorg/vosk/Recognizer;

    .line 47
    float-to-int v0, p3

    iput v0, p0, Lorg/vosk/android/SpeechStreamService;->sampleRate:I

    .line 48
    iput-object p2, p0, Lorg/vosk/android/SpeechStreamService;->inputStream:Ljava/io/InputStream;

    .line 49
    iget v0, p0, Lorg/vosk/android/SpeechStreamService;->sampleRate:I

    int-to-float v0, v0

    const v1, 0x3e4ccccd    # 0.2f

    mul-float/2addr v0, v1

    const/high16 v1, 0x40000000    # 2.0f

    mul-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    iput v0, p0, Lorg/vosk/android/SpeechStreamService;->bufferSize:I

    .line 50
    return-void
.end method

.method static synthetic access$000(Lorg/vosk/android/SpeechStreamService;)I
    .locals 1
    .param p0, "x0"    # Lorg/vosk/android/SpeechStreamService;

    .line 30
    iget v0, p0, Lorg/vosk/android/SpeechStreamService;->sampleRate:I

    return v0
.end method

.method static synthetic access$100(Lorg/vosk/android/SpeechStreamService;)I
    .locals 1
    .param p0, "x0"    # Lorg/vosk/android/SpeechStreamService;

    .line 30
    iget v0, p0, Lorg/vosk/android/SpeechStreamService;->bufferSize:I

    return v0
.end method

.method static synthetic access$200(Lorg/vosk/android/SpeechStreamService;)Ljava/io/InputStream;
    .locals 1
    .param p0, "x0"    # Lorg/vosk/android/SpeechStreamService;

    .line 30
    iget-object v0, p0, Lorg/vosk/android/SpeechStreamService;->inputStream:Ljava/io/InputStream;

    return-object v0
.end method

.method static synthetic access$300(Lorg/vosk/android/SpeechStreamService;)Lorg/vosk/Recognizer;
    .locals 1
    .param p0, "x0"    # Lorg/vosk/android/SpeechStreamService;

    .line 30
    iget-object v0, p0, Lorg/vosk/android/SpeechStreamService;->recognizer:Lorg/vosk/Recognizer;

    return-object v0
.end method

.method static synthetic access$400(Lorg/vosk/android/SpeechStreamService;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lorg/vosk/android/SpeechStreamService;

    .line 30
    iget-object v0, p0, Lorg/vosk/android/SpeechStreamService;->mainHandler:Landroid/os/Handler;

    return-object v0
.end method


# virtual methods
.method public start(Lorg/vosk/android/RecognitionListener;)Z
    .locals 1
    .param p1, "listener"    # Lorg/vosk/android/RecognitionListener;

    .line 58
    iget-object v0, p0, Lorg/vosk/android/SpeechStreamService;->recognizerThread:Ljava/lang/Thread;

    if-eqz v0, :cond_0

    .line 59
    const/4 v0, 0x0

    return v0

    .line 61
    :cond_0
    new-instance v0, Lorg/vosk/android/SpeechStreamService$RecognizerThread;

    invoke-direct {v0, p0, p1}, Lorg/vosk/android/SpeechStreamService$RecognizerThread;-><init>(Lorg/vosk/android/SpeechStreamService;Lorg/vosk/android/RecognitionListener;)V

    iput-object v0, p0, Lorg/vosk/android/SpeechStreamService;->recognizerThread:Ljava/lang/Thread;

    .line 62
    iget-object v0, p0, Lorg/vosk/android/SpeechStreamService;->recognizerThread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 63
    const/4 v0, 0x1

    return v0
.end method

.method public start(Lorg/vosk/android/RecognitionListener;I)Z
    .locals 1
    .param p1, "listener"    # Lorg/vosk/android/RecognitionListener;
    .param p2, "timeout"    # I

    .line 75
    iget-object v0, p0, Lorg/vosk/android/SpeechStreamService;->recognizerThread:Ljava/lang/Thread;

    if-eqz v0, :cond_0

    .line 76
    const/4 v0, 0x0

    return v0

    .line 78
    :cond_0
    new-instance v0, Lorg/vosk/android/SpeechStreamService$RecognizerThread;

    invoke-direct {v0, p0, p1, p2}, Lorg/vosk/android/SpeechStreamService$RecognizerThread;-><init>(Lorg/vosk/android/SpeechStreamService;Lorg/vosk/android/RecognitionListener;I)V

    iput-object v0, p0, Lorg/vosk/android/SpeechStreamService;->recognizerThread:Ljava/lang/Thread;

    .line 79
    iget-object v0, p0, Lorg/vosk/android/SpeechStreamService;->recognizerThread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 80
    const/4 v0, 0x1

    return v0
.end method

.method public stop()Z
    .locals 2

    .line 90
    iget-object v0, p0, Lorg/vosk/android/SpeechStreamService;->recognizerThread:Ljava/lang/Thread;

    if-nez v0, :cond_0

    .line 91
    const/4 v0, 0x0

    return v0

    .line 94
    :cond_0
    :try_start_0
    iget-object v0, p0, Lorg/vosk/android/SpeechStreamService;->recognizerThread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    .line 95
    iget-object v0, p0, Lorg/vosk/android/SpeechStreamService;->recognizerThread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->join()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 99
    goto :goto_0

    .line 96
    :catch_0
    move-exception v0

    .line 98
    .local v0, "e":Ljava/lang/InterruptedException;
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->interrupt()V

    .line 101
    .end local v0    # "e":Ljava/lang/InterruptedException;
    :goto_0
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/vosk/android/SpeechStreamService;->recognizerThread:Ljava/lang/Thread;

    .line 102
    const/4 v0, 0x1

    return v0
.end method
