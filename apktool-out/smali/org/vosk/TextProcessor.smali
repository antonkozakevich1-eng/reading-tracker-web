.class public Lorg/vosk/TextProcessor;
.super Lcom/sun/jna/PointerType;
.source "TextProcessor.java"

# interfaces
.implements Ljava/lang/AutoCloseable;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 6
    invoke-direct {p0}, Lcom/sun/jna/PointerType;-><init>()V

    .line 7
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "verbalizer"    # Ljava/lang/String;
    .param p2, "tagger"    # Ljava/lang/String;

    .line 10
    invoke-static {p1, p2}, Lorg/vosk/LibVosk;->vosk_text_processor_new(Ljava/lang/String;Ljava/lang/String;)Lcom/sun/jna/Pointer;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/sun/jna/PointerType;-><init>(Lcom/sun/jna/Pointer;)V

    .line 11
    return-void
.end method


# virtual methods
.method public close()V
    .locals 1

    .line 15
    invoke-virtual {p0}, Lorg/vosk/TextProcessor;->getPointer()Lcom/sun/jna/Pointer;

    move-result-object v0

    invoke-static {v0}, Lorg/vosk/LibVosk;->vosk_text_processor_free(Lcom/sun/jna/Pointer;)V

    .line 16
    return-void
.end method

.method public itn(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "input"    # Ljava/lang/String;

    .line 19
    invoke-virtual {p0}, Lorg/vosk/TextProcessor;->getPointer()Lcom/sun/jna/Pointer;

    move-result-object v0

    invoke-static {v0, p1}, Lorg/vosk/LibVosk;->vosk_text_processor_itn(Lcom/sun/jna/Pointer;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
